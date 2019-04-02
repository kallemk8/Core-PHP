<?php 
	include('functions.php');
	$action = $_POST['action'];
	if($action=="add-audio"){
		$title = $_POST['title'];
		$content = $_POST['content'];
		$categorie = $_POST['categorie'];
		$tag = $_POST['tag'];
		
		$meta_title = $_POST['meta_title'];
		$meta_keywords = $_POST['meta_keywords'];
		$post_type = $_POST['post_type'];
		$post_status = $_POST['post_status'];
		$meta_description = $_POST['meta_description'];
		$movie_status = $_POST['movie_status'];
		$download320 = $_POST['download320'];
		$download128 = $_POST['download128'];
		$movie_name = $_POST['movie_name'];
		$movie_desc = $_POST['movie_desc'];
		$posturl = str_replace(" ", "-", $_POST['title']);
		$posturl = strtolower($posturl);
		$posturl = preg_replace('/[^A-Za-z0-9\-]/', '', $posturl);
		$movie_url = str_replace(" ", "-", $_POST['movie_name']);
		$movie_url = strtolower($movie_url);
		$movie_url = preg_replace('/[^A-Za-z0-9\-]/', '', $movie_url);
		$app->add_audio($title,$content,$categorie,$tag,$meta_title,$meta_keywords,$post_type,$post_status,$meta_description,$posturl,$movie_desc,$movie_name,$download128,$download320,$movie_status,$movie_url);
			
	}
	if($action=="edit-audio"){
		$title = $_POST['title'];
		$content = $_POST['content'];
		$categorie = $_POST['categorie'];
		$tag = $_POST['tag'];
		
		$meta_title = $_POST['meta_title'];
		$meta_keywords = $_POST['meta_keywords'];
		$post_type = $_POST['post_type'];
		$post_status = $_POST['post_status'];
		$meta_description = $_POST['meta_description'];
		$movie_status = $_POST['movie_status'];
		$download320 = $_POST['download320'];
		$download128 = $_POST['download128'];
		$movie_name = $_POST['movie_name'];
		$movie_desc = $_POST['movie_desc'];
		$posturl = str_replace(" ", "-", $_POST['title']);
		$posturl = strtolower($posturl);
		$posturl = preg_replace('/[^A-Za-z0-9\-]/', '', $posturl);
		$movie_url = str_replace(" ", "-", $_POST['movie_name']);
		$movie_url = strtolower($movie_url);
		$movie_url = preg_replace('/[^A-Za-z0-9\-]/', '', $movie_url);
		$app->edit_audio($title,$content,$categorie,$tag,$meta_title,$meta_keywords,$post_type,$post_status,$meta_description,$posturl,$movie_desc,$movie_name,$download128,$download320,$movie_status,$movie_url);
			
	}
	if($action=="add-song"){
		$song_name = $_POST['song_name'];
		$about_song = $_POST['about_song'];
		$song_link_320 = $_POST['song_link_320'];
		$song_link_128 = $_POST['song_link_128'];
		$movieid = $_POST['movieid'];
		$audioid = $_POST['audioid'];
		$app->add_song($song_name,$about_song,$song_link_320,$song_link_128,$movieid,$audioid);
	}
?>