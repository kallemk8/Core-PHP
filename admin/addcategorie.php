<?php
	include('../functions.php');
	if(isset($_POST['addcategorie'])){
		$cat_title = $_POST['cat_title'];
		$caturl = str_replace(" ", "-", $_POST['cat_title']);
		$caturl = strtolower($caturl);
		$cat_content = $_POST['cat_content'];
		$meta_title = $_POST['meta_title'];
		$post_type = $_POST['post_type'];
		$meta_keywords = $_POST['meta_keywords'];
		$meta_description = $_POST['meta_description'];
		$app->add_category($cat_title,$caturl, $cat_content, $meta_title,$meta_keywords,$meta_description,$post_type);
	}
?>

<?php include('header.php'); ?>
	<div class="container">
		<div class="col-md-12">
			<form action="addcategorie.php" method="post" enctype="multipart/form-data">
			<div class="form-group">
			    <label for="exampleInputEmail1">Cat Title</label>
			    <input type="text" class="form-control" name="cat_title" >
			</div>
			<div class="form-group">
			    <label for="exampleInputPassword1">Cat Content</label>
			    <textarea class="form-control" rows="10" name="cat_content"></textarea>
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
				<input type="hidden" name="post_type" value="category">
				<input type="submit" name="addcategorie" class="btn btn-primary btn-lg">
			</div>
		</div>
	</div>
<?php include('footer.php'); ?>
			
