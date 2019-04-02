<?php 
	include('functions.php');
	if(isset($_GET['movieid'])) {
	    $movieid = $_GET['movieid'];
	   $moviesongs = $app->get_movie_songs($movieid);
	   echo json_encode($moviesongs);
	} else {
	   	$audio_list = $app->get_audios();
		echo json_encode($audio_list);
	}
	
?>