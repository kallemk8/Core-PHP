<?php 
	function connection(){
		$conn = new PDO("mysql:host=localhost;dbname=kallemvideos","kallemvideos",'K@sreekanth8' );
		return $conn;
	}
	include('header.php'); 
	if(isset($_POST['gallery-upload'])){
		$gallery_title = $_POST['gallery_title'];
		$foldername = str_replace(" ", "-", $_POST['gallery_title']);
		$foldername = strtolower($foldername);
		$foldername = preg_replace('/[^A-Za-z0-9\-]/', '', $foldername);
		$gallery_type = $_POST['gallery_type'];
		$GalleryMode = "";
		$total = count($_FILES['gallery_images']['name']);
		$filelocation = "uploads/".$foldername;
		mkdir($filelocation, 0777, true);
		for($i=0; $i<$total; $i++) {
		  $tmpFilePath = $_FILES['gallery_images']['tmp_name'][$i];
		  	if ($tmpFilePath != ""){
			   	$newFilePath = $filelocation.'/' . $_FILES['gallery_images']['name'][$i];
			    if(move_uploaded_file($tmpFilePath, $newFilePath)) {
			    	move_uploaded_file($_FILES["gallery_images"]["tmp_name"][$i], $filelocation.'/'.$tmpFilePath);
			    }
		  	}
		}

		$conn = connection();
		$sql = "INSERT INTO gallery (GalleryName, GalleryType, GalleryMode,	GalleryUrl,	GalleryPath, NumberImages)
		VALUES ('$gallery_title', '$gallery_type', '$GalleryMode','$foldername','$foldername', '$total')";
		if ($conn->query($sql)) {
		    header('location:posts.php');
		} 
		}
	?>
	<div class="container">
		<div class="col-md-12">
			<form action="gallery.php" method="post" enctype="multipart/form-data">
				<div class="form-group">
				    <label for="exampleInputEmail1">Gallery Title</label>
				    <input type="text" class="form-control" name="gallery_title" >
				</div>
				<div class="form-group">
				    <label for="exampleInputEmail1">Gallery Type</label>
				    <select class="form-control" name="gallery_type">
				    	<option value="actress">Actress</option>
				    	<option value="actor">Actors</option>
				    	<option value="audio-functions">Audio Functions</option>
				    	<option value="movies">Movies</option>
				    	<option value="celebrity">Celebrations</option>
				    	<option value="other">Other</option>
				    </select>
				    
				</div>
				<div class="form-group">
				    <label for="exampleInputEmail1">Select Images for Gallery</label>
				    <input type="file" class="form-control" name="gallery_images[]" multiple="multiple" >
				</div>
				<div class="form-group">
					<input type="submit" name="gallery-upload" class="btn btn-primary btn-lg">
				</div>
			</form>
		</div>
	</div>

<?php include('footer.php'); ?>