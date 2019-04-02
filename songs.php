<?php 
	include('functions.php');
	if(isset($_GET['postid'])) {
	   $postid = $_GET['postid'];
	   $single_audio = $app->get_single_audios($postid);
	   echo json_encode($single_audio);
	} else {
	   	$audio_list = $app->get_audios();
		echo json_encode($audio_list);
	}
	
?>