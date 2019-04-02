<?php
	include('../functions.php');
	if($_GET['delete']){
		$delete = $_GET['delete'];
		$conn = connection();
		$sql2 = "DELETE FROM audio_posts WHERE ID='$delete'";
		
		if ($conn->query($sql2) == TRUE) {
			$sql = "DELETE FROM movies WHERE movie_id='$delete'";
		    header('location:posts.php');
		} else {
		    echo "Error: " . $sql . "<br>" . $conn->error;
		}
	}
	if($_GET['deletesong']){
		$deletesong = $_GET['deletesong'];
		$conn = connection();
		$sql2 = "DELETE FROM songs WHERE song_id ='$deletesong'";
		if ($conn->query($sql2) == TRUE) {
		    header('location:posts.php');
		} else {
		    echo "Error: " . $sql . "<br>" . $conn->error;
		}
	}
	if($_GET['catdelete']){
		$delete = $_GET['catdelete'];
		$conn = connection();
		$sql = "DELETE FROM category WHERE CatID='$delete'";
		if ($conn->query($sql) == TRUE) {
		    header('location:posts.php');
		} else {
		    echo "Error: " . $sql . "<br>" . $conn->error;
		}
	}
	if($_GET['tagdelete']){
		$delete = $_GET['tagdelete'];
		$conn = connection();
		$sql = "DELETE FROM tags WHERE TagID='$delete'";
		if ($conn->query($sql) == TRUE) {
		    header('location:posts.php');
		} else {
		    echo "Error: " . $sql . "<br>" . $conn->error;
		}
	}
?>


			
