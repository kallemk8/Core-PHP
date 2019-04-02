<?php 
function home_base_url(){   
	$base_url = (isset($_SERVER['HTTPS']) &&
	$_SERVER['HTTPS']!='off') ? 'https://' : 'http://';
	$tmpURL = dirname(__FILE__);
	$tmpURL = str_replace(chr(92),'/',$tmpURL);
	$tmpURL = str_replace($_SERVER['DOCUMENT_ROOT'],'',$tmpURL);
	$tmpURL = ltrim($tmpURL,'/');
	$tmpURL = rtrim($tmpURL, '/');
    if (strpos($tmpURL,'/')){
       $tmpURL = explode('/',$tmpURL);
       $tmpURL = $tmpURL[0];
    }
   	if ($tmpURL !== $_SERVER['HTTP_HOST'])
      	$base_url .= $_SERVER['HTTP_HOST'].'/'.$tmpURL;
    else
      	$base_url .= $tmpURL;
		return $base_url; 
}
function connection(){
	$conn = new PDO("mysql:host=localhost;dbname=srikanth_liveaudiohub","kallemaudio",'K@sreekanth8' );
	return $conn; 
}
	class drinkle {
		public $conn;
		function connectdb(){
			$this->conn = new PDO("mysql:host=localhost;dbname=srikanth_liveaudiohub","srikanth_audio","K@sreekanth8");
		}
		function add_audio($title,$content,$categorie,$tag,$meta_title,$meta_keywords,$post_type,$post_status,$meta_description,$posturl,$movie_desc,$movie_name,$download128,$download320,$movie_status,$movie_url){
			$sql = "INSERT INTO audio_posts (post_author,post_content,post_title,post_excerpt,post_status,postimage,post_type,menu_order,meta_title,meta_keywords, meta_description, post_url,movie_id) VALUES ('1','$content','$title','','$post_status','','$post_type','1','$meta_title','$meta_keywords','$meta_description','$posturl','2')";
            if($this->conn->exec($sql)){
            	$audio_id = $this->conn->lastInsertId();
            	$movie = "INSERT INTO movies (movie_name,movie_desc,movie_slug,download320,download128,movie_image,movie_status,audio_id,movie_date) VALUES ('$movie_name','$movie_desc','$movie_url','$download320','$download128','','$movie_status','$audio_id','$movie_status')";
            	$this->conn->exec($movie);
            	$term_relationships = "INSERT INTO term_relationships (postid,term_id,term_order) VALUES ('$audio_id','$categorie','0')";
            	$this->conn->exec($term_relationships);
            	echo $audio_id;
            }else{
            	echo "Please Enter Correct Value";
            }
		}
		function add_song($song_name,$about_song,$song_link_320,$song_link_128,$movieid,$audioid){
			$sql = "INSERT INTO songs (song_name,song_desc,movie_id,audio_id,download320,download128) VALUES ('$song_name','$about_song','$movieid','$audioid','$song_link_320','$song_link_128')";
			if($this->conn->exec($sql)){
				$song_id = $this->conn->lastInsertId();
				$song = "SELECT * FROM songs WHERE song_id = $song_id ";
				$res = $this->conn->prepare($song);
				$res->execute();
				while($row = $res->fetch()){
					echo "<tr><td>".$row['song_name']."</td></tr>";
				}
			}
		}
		function get_single_audios($postid){
			$sql = "SELECT * FROM audio_posts a LEFT JOIN movies b ON a.ID = b.audio_id Where ID = '$postid'"; 
			$res = $this->conn->prepare($sql);
			$res->execute();
			$data = new ArrayObject();
			while($row = $res->fetch()){
				$data = $row;
			}
			return $data;
		}
		function add_category($cat_title,$caturl, $cat_content, $meta_title,$meta_keywords,$meta_description,$post_type){
			$sql = "INSERT INTO terms (name, slug, term_group,meta_title,meta_keywords,meta_description) VALUES ('$cat_title', '$caturl','1','$meta_title','$meta_keywords','$meta_description')";
			if($this->conn->exec($sql)){
				$term_id = $this->conn->lastInsertId();
				$taxonomy = "INSERT INTO term_taxonomy (term_id,taxonomy,description,parent,count) VALUES ('$term_id', '$post_type','$cat_content','1','1')";
				$this->conn->exec($taxonomy);
				header('location:posts.php?pagenumber=1');
			}else{
            	echo "Please Enter Correct Value";
            }
		}
		function update_postimage($postid,$newfilename2){
			$sql = "UPDATE audio_posts SET postimage='$newfilename2' WHERE ID='$postid'";
			if($this->conn->exec($sql)){
				header('location:posts.php?pagenumber=1');
			}
			else{
				echo "2";
			}
		}
		function get_audios(){
			$sql = "SELECT * FROM audio_posts a LEFT JOIN movies b ON a.ID = b.audio_id ORDER BY ID DESC"; 
			$res = $this->conn->prepare($sql);
			$res->execute();
			$data = new ArrayObject();
			while($row = $res->fetch()){
				$data[] = $row;
			}
			return $data;
		}
		function get_category_list(){
			$sql = "SELECT * FROM terms a INNER JOIN term_taxonomy b ON a.term_id = b.term_id"; 
			$res = $this->conn->prepare($sql);
			$res->execute();
			$data = new ArrayObject();
			while($row = $res->fetch()){
				$data[] = $row;
			}
			return $data;
		}
		function get_song_list($movieid, $audioid){
			
			$sql = "SELECT * FROM songs  WHERE movie_id = $movieid and audio_id = $audioid  ORDER BY song_id DESC"; 
			$res = $this->conn->prepare($sql);
			$res->execute();
			$data = new ArrayObject();
			while($row = $res->fetch()){
				$data[] = $row;
			}
			return $data;
		}
		function get_movie_id($postid){
			$sql = "SELECT movie_id FROM movies WHERE audio_id = '$postid'";
			$res = $this->conn->prepare($sql);
			$res->execute();
			
			while($row = $res->fetch()){
				$data = $row;
			}
			return $data;
		}
		function get_movie_songs($postid){
			$sql = "SELECT * FROM  songs WHERE audio_id = $postid ORDER BY song_id ASC"; 
			$res = $this->conn->prepare($sql);
			$res->execute();
			$data = new ArrayObject();
			while($row = $res->fetch()){
				$data[] = $row;
			}
			return $data;
		}
		function get_the_title($postid){
			$sql = "SELECT post_title FROM audio_posts WHERE ID = $postid";
			$res = $this->conn->prepare($sql);
			$res->execute();
			
			while($row = $res->fetch()){
				$data = $row;
			}
			return $data;
		}
		
		function get_cat_post_pagination($cattype,$start,$number){
			$sql2 = "SELECT b.term_id, a.post_url, a.post_title, a.ID FROM audio_posts a LEFT JOIN term_relationships b ON a.ID = b.postid"; 
			$res2 = $this->conn->prepare($sql2);
			$res2->execute();
			$data2 = new ArrayObject();
			while($row = $res2->fetch()){
				$data2[] = $row;
			}
			return $data2;
		}
		function get_single_cat_name($catid){
			$sql = "SELECT	name FROM terms WHERE term_id = '$catid'"; 
			$res = $this->conn->prepare($sql);
			$res->execute();
			while($row = $res->fetch()){
				return $row;
			}
		}
		function get_single_cat_url($catid){
			$sql = "SELECT	slug FROM terms WHERE term_id = $catid"; 
			$res = $this->conn->prepare($sql);
			$res->execute();
			while($row = $res->fetch()){
				return $row;
			}
		}
		function get_single_cat_id($catid){
			$sql = "SELECT	term_id FROM terms WHERE slug = '$catid'"; 
			$res = $this->conn->prepare($sql);
			$res->execute();
			while($row = $res->fetch()){
				$data = $row;
			}
			return $data;
		}
		function get_single_cat_title($catid){
			$sql = "SELECT	name FROM terms WHERE slug = '$catid'"; 
			$res = $this->conn->prepare($sql);
			$res->execute();
			while($row = $res->fetch()){
				$data = $row;
			}
			return $data;
		}
		function get_single_cat_meta_keywords($catid){
			$sql = "SELECT	meta_keywords FROM terms WHERE slug = '$catid'";
			$res = $this->conn->prepare($sql);
			$res->execute();
			while($row = $res->fetch()){
				$data = $row;
			}
			return $data;
		}
		function get_single_cat_meta_title($catid){
			$sql = "SELECT	meta_title FROM terms WHERE slug = '$catid'";
			$res = $this->conn->prepare($sql);
			$res->execute();
			while($row = $res->fetch()){
				$data = $row;
			}
			return $data;
		}
		function get_single_cat_meta_desc($catid){
			$sql = "SELECT	meta_description FROM terms WHERE slug = '$catid'";
			$res = $this->conn->prepare($sql);
			$res->execute();
			while($row = $res->fetch()){
				$data = $row;
			}
			return $data;
		}
		function get_the_contant($postid){
			$sql = "SELECT post_content FROM audio_posts WHERE ID = $postid";
			$res = $this->conn->prepare($sql);
			$res->execute();
			while($row = $res->fetch()){
				$data = $row;
			}
			return $data;
		}
		function get_the_meta_title($postid){
			$sql = "SELECT meta_title FROM audio_posts WHERE ID = $postid";
			$res = $this->conn->prepare($sql);
			$res->execute();
			
			while($row = $res->fetch()){
				$data = $row;
			}
			return $data;
		}
		function get_the_movie_name($postid){
			$sql = "SELECT movie_name FROM movies WHERE audio_id = $postid";
			$res = $this->conn->prepare($sql);
			$res->execute();
			
			while($row = $res->fetch()){
				$data = $row;
			}
			return $data;
		}
		function get_the_meta_content($postid){
			$sql = "SELECT meta_description FROM audio_posts WHERE ID = $postid";
			$res = $this->conn->prepare($sql);
			$res->execute();
			while($row = $res->fetch()){
				$data = $row;
			}
			return $data;
		}
		function get_the_meta_keywords($postid){
			$sql = "SELECT meta_keywords FROM audio_posts WHERE ID = $postid";
			$res = $this->conn->prepare($sql);
			$res->execute();
			while($row = $res->fetch()){
				$data = $row;
			}
			return $data;
		}
		function get_the_date($postid){
			$sql = "SELECT post_date FROM audio_posts WHERE ID = $postid";
			$res = $this->conn->prepare($sql);
			$res->execute();
			while($row = $res->fetch()){
				$data = $row;
			}
			return $data;
		}
		
		function get_the_image_url($postid){
			$sql = "SELECT postimage FROM audio_posts WHERE ID = $postid";
			$res = $this->conn->prepare($sql);
			$res->execute();
			
			while($row = $res->fetch()){
				$data = $row;
			}
			return $data;
		}
		function get_the_movie_download_link320($postid){
			$sql = "SELECT download320 FROM movies WHERE movie_id = $postid";
			$res = $this->conn->prepare($sql);
			$res->execute();
			
			while($row = $res->fetch()){
				$data = $row;
			}
			return $data;
		}
		function get_the_movie_download_link128($postid){
			$sql = "SELECT download128 FROM movies WHERE movie_id = $postid";
			$res = $this->conn->prepare($sql);
			$res->execute();
			
			while($row = $res->fetch()){
				$data = $row;
			}
			return $data;
		}
		function get_the_complete_url($postid){
			$sql = "SELECT post_url FROM audio_posts WHERE ID = $postid";
			$res = $this->conn->prepare($sql);
			$res->execute();
			while($row = $res->fetch()){
				$data = $row;
			}
			return $data;
		}
		function send_mail(){
			$headers = 'From: kallemdesign@gmail.com' . "\r\n" .
			    'Reply-To: kallemk8@gmaill.com' . "\r\n" .
			    'X-Mailer: PHP/' . phpversion();
			mail("kallemk8@gmail.com", "Welcome", $message, $headers);
		}
	}
	$app = new drinkle();
	$init = $app->connectdb();
?>