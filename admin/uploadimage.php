<?php 
include('../functions.php');
include('header.php'); 
$postid = $_GET['postid'];
?>

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<div class="container">
		<div class="col-md-12">
			<form action="#" id="uploadForm"  method="post" enctype="multipart/form-data">
			<div class="form-group">
			    <label for="exampleInputEmail1">Post Image</label>
			    <input type="file" class="form-control" name="post_image" >
			</div>
			
			<div class="form-group">
				<input type="hidden" name="post_type" value="posts">
				<input type="hidden" name="post_status" value="Open">
				<input type="submit" name="updateimage" class="btn btn-primary btn-lg add-aduio">
			</div>
			</form>
		</div>
	</div>
<?php 
	if(isset($_POST['updateimage'])){
		$filename = $_FILES["post_image"]["name"];
		$file_basename = substr($filename, 0, strripos($filename, '.')); // get file extention
		$file_ext = substr($filename, strripos($filename, '.')); // get file name
		$filesize = $_FILES["post_image"]["size"];
		$allowed_file_types = array('.jpeg','.png','.jpg','.gif');	

		if (in_array($file_ext,$allowed_file_types) )
		{	
			// Rename file	
			$random= date("d_m_Y"); 
			$rand= rand(100,999);
			$newfilename = str_replace(" ", "-", $file_basename).$random."-".$rand.$file_ext;
			$newfilename2 = "post_images/".$newfilename;
			if (file_exists("post_images/" . $newfilename))
			{
				// file already exists error
				echo "You have already uploaded this file.";
			}
			else
			{		
				move_uploaded_file($_FILES["post_image"]["tmp_name"], "post_images/" . $newfilename);
				$app->update_postimage($postid,$newfilename2);
			}
		}
		elseif (empty($file_basename))
		{	
			// file selection error
			echo "Please select a file to upload.";
		} 
		elseif ($filesize > 200000)
		{	
			// file size error
			echo "The file you are trying to upload is too large.";
		}
		else
		{
			// file type error
			echo "Only these file typs are allowed for upload: " . implode(', ',$allowed_file_types);
			unlink($_FILES["file"]["tmp_name"]);
		}
	}
?>
<?php include('footer.php'); ?>
			
