<?php
if(is_array($_FILES)) {
if(is_uploaded_file($_FILES['post_image']['tmp_name'])) {
$sourcePath = $_FILES['post_image']['tmp_name'];
$targetPath = "images/".$_FILES['post_image']['name'];
if(move_uploaded_file($sourcePath,$targetPath)) {
?>
<img src="<?php echo $targetPath; ?>" width="100px" height="100px" />
<?php
}
}
}
?>