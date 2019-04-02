<?php
	function connection(){
		$conn = new PDO("mysql:host=localhost;dbname=srikanth_liveaudiohub","srikanth_audio","K@sreekanth8");

	return $conn; 
	}
	$song_id = $_GET['song_id'];
	if(isset($_POST['deditpost'])){
		$post_title = $_POST['post_title'];
		$post_content = $_POST['post_content'];
		$download320 = $_POST['download320'];
		$download128 = $_POST['download128'];
		$conn = connection();
		if ($conn->connect_error) {
		    die("Connection failed: " . $conn->connect_error); 
		} 
		$sql = "UPDATE audio_posts SET song_name ='$post_title', song_desc='$post_content', download320='$meta_title', download128='$meta_description' WHERE song_id = '$song_id'";
		if ($conn->query($sql)) {
		    header('location:posts.php?pagenumber=1');
		}
	}
?>
<?php include('header.php'); ?>
<?php 
	$conn = connection();
	$sql = "SELECT * FROM songs WHERE song_id = $song_id";
	$res = $conn->query($sql); 
	$data = new ArrayObject();
  	while($r = $res->fetch()) :
?>

	<div class="container">
		<div class="col-md-12">
			<form action="edit-songs.php?song_id=<?php echo $postid; ?>" method="post" enctype="multipart/form-data">
			<div class="form-group">
			    <label for="exampleInputEmail1">Song Title</label>
			    <input type="text" VALUE="<?php echo $r['song_name'] ?>" class="form-control" name="post_title" >
			</div>
			<div class="form-group">
			    <label for="exampleInputPassword1">Song Content</label>
			    <textarea class="form-control" rows="3" name="post_content"><?php echo $r['song_desc'] ?></textarea> 
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">download320</label>
			    <input type="text" VALUE="<?php echo $r['download320'] ?>" class="form-control" name="meta_title"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">download128</label>
			    <input type="text" VALUE="<?php echo $r['download128'] ?>" class="form-control" name="meta_keywords"  >
			</div>
			<div class="form-group">
				<input type="hidden" VALUE="<?php echo $r['song_id'] ?>" class="form-control" name="postid"  >
				<input type="submit" name="deditpost" class="btn btn-primary btn-lg">
			</div>
			</form>
		</div>
	</div>


<?php endwhile; include('footer.php'); ?>
			
