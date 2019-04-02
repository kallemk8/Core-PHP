<?php
	function connection(){
		$conn = new PDO("mysql:host=localhost;dbname=srikanth_liveaudiohub","srikanth_audio","K@sreekanth8");

	return $conn; 
	}
	$postid = $_GET['editpost'];
	if(isset($_POST['deditpost'])){
		$post_title = $_POST['post_title'];
		$post_content = $_POST['post_content'];
		$post_categorie = $_POST['post_categorie'];
		$meta_title = $_POST['meta_title'];
		$meta_keywords = $_POST['meta_keywords'];
		$meta_description = $_POST['meta_description'];
		$conn = connection();
		if ($conn->connect_error) {
		    die("Connection failed: " . $conn->connect_error); 
		} 
		$sql = "UPDATE audio_posts SET post_title ='$post_title', post_content='$post_content', meta_title='$meta_title', meta_description='$meta_description', meta_keywords='$meta_keywords' WHERE ID = '$postid'";
		if ($conn->query($sql)) {
		    header('location:posts.php?pagenumber=1');
		}
	}
?>
<?php include('header.php'); ?>
<?php 
	$conn = connection();
	$sql = "SELECT * FROM audio_posts WHERE ID = $postid";
	$res = $conn->query($sql); 
	$data = new ArrayObject();
  	while($r = $res->fetch()) :
?>

	<div class="container">
		<div class="col-md-12">
			<form action="edit.php?editpost=<?php echo $postid; ?>" method="post" enctype="multipart/form-data">
			<div class="form-group">
			    <label for="exampleInputEmail1">Post Title</label>
			    <input type="text" VALUE="<?php echo $r['post_title'] ?>" class="form-control" name="post_title" >
			</div>
			<div class="form-group">
			    <label for="exampleInputPassword1">Post Content</label>
			    <textarea class="form-control" rows="10" name="post_content"><?php echo $r['post_content'] ?></textarea> 
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Meta Title</label>
			    <input type="text" VALUE="<?php echo $r['meta_title'] ?>" class="form-control" name="meta_title"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Meta Keywords</label>
			    <input type="text" VALUE="<?php echo $r['meta_keywords'] ?>" class="form-control" name="meta_keywords"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Meta Description</label>
			    <input type="text" VALUE="<?php echo $r['meta_description'] ?>" class="form-control" name="meta_description"  >
			</div>
			<div class="form-group">
				<input type="hidden" VALUE="<?php echo $r['PostID'] ?>" class="form-control" name="postid"  >
				<input type="submit" name="deditpost" class="btn btn-primary btn-lg">
			</div>
			</form>
		</div>
	</div>


<?php endwhile; include('footer.php'); ?>
			
