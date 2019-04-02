<?php
	include('../functions.php');
	if(isset($_POST['addtag'])){
		$tag_title = $_POST['tag_title'];
		$tagurl = str_replace(" ", "-", $_POST['tag_title']);
		$tagurl = strtolower($tagurl);
		$tag_content = $_POST['tag_content'];
		$meta_title = $_POST['meta_title'];
		$meta_keywords = $_POST['meta_keywords'];
		$meta_description = $_POST['meta_description'];
		$conn = connection();
		$sql = "INSERT INTO tags (TagTitle, Tagdescription, MetaTitle, MetaDescription, MetaKeywords, Tagurl)
		VALUES ('$tag_title', '$tag_content','$meta_title','$meta_description','$meta_keywords','$tagurl')";
		if ($conn->query($sql) === TRUE) {
		    header('location:posts.php#tags');
		} else {
		    echo "Error: " . $sql . "<br>" . $conn->error;
		}
	}
?>

<?php include('header.php'); ?>
	<div class="container">
		<div class="col-md-12">
			<form action="addtags.php" method="post" enctype="multipart/form-data">
			<div class="form-group">
			    <label for="exampleInputEmail1">Tag Title</label>
			    <input type="text" class="form-control" name="tag_title" >
			</div>
			<div class="form-group">
			    <label for="exampleInputPassword1">Tag Content</label>
			    <textarea class="form-control" rows="10" name="tag_content"></textarea>
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Meta Title</label>
			    <input type="text" class="form-control" name="meta_title"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Meta Keywords</label>
			    <input type="text" class="form-control" name="meta_keywords"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Meta Description</label>
			    <input type="text" class="form-control" name="meta_description"  >
			</div>
			<div class="form-group">
				<input type="submit" name="addtag" class="btn btn-primary btn-lg">
			</div>
		</div>
	</div>
<?php include('footer.php'); ?>
			
