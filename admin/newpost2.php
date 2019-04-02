<?php include('header.php'); 
include('../functions.php');
	$movieid = $_GET['movie'];
	$audio = $_GET['audio'];
	$songs = $app->get_song_list($movieid, $audio);
?>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<div class="container">
		<div class="col-md-12">
			<div class="listofsongs">
				<table class="songs-list table">
					<tr>
						<td>Song Name</td>
						<td>Edit</td>
						<td>Delete</td>
					</tr>
					<?php foreach($songs as $s): ?>
					<tr>
						<td><?php echo $s['song_name']; ?></td>
						<td><a href="http://audio.livevideoshub.com/admin/edit-songs.php?song_id=<?php echo $s['song_id']; ?>">Edit Song</a></td>
						<td><a href="http://audio.livevideoshub.com/admin/delete.php?deletesong=<?php echo $s['song_id']; ?>">Delete</a></td>
					</tr>
					<?php endforeach; ?>
				</table>
			</div>
			<form action="#" method="post" enctype="multipart/form-data">
			<div class="form-group">
			    <label for="exampleInputEmail1">Song Name</label>
			    <input type="text" class="form-control" name="song_name"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">About Song</label>
			    <input type="text" class="form-control" name="about_song"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Song Download 320 size</label>
			    <input type="text" class="form-control" name="song_link_320"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Song Download 128 size</label>
			    <input type="text" class="form-control" name="song_link_128"  >
			</div>
			<div class="form-group">
				<input type="hidden" name="movieid" value="<?php echo $movieid; ?>">
				<input type="hidden" name="audioid" value="<?php echo $audio; ?>">
				<input type="submit" name="addsong" class="btn btn-primary btn-lg add-song">
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function(){
			$('.add-song').click(function(event){
				event.preventDefault();
				var song_name = $('input[name="song_name"]').val();
				var about_song = $('input[name="about_song"]').val();
				var song_link_320 = $('input[name="song_link_320"]').val();
				var song_link_128 = $('input[name="song_link_128"]').val();
				var movieid = $('input[name="movieid"]').val();
				var audioid = $('input[name="audioid"]').val();
				$.post("http://www.audio.livevideoshub.com/action.php",
				{	
					action:"add-song",
					song_name:song_name,
					about_song:about_song,
					song_link_320:song_link_320,
					song_link_128:song_link_128,
					movieid:movieid,
					audioid:audioid
				},
				function(data,status){
					$('.songs-list').append(data);
					$('input[name="song_name"]').val('');
					$('input[name="about_song"]').val('');
					$('input[name="song_link_320"]').val('');
					$('input[name="song_link_128"]').val('');
				

				});
			});
		});

	</script>
<?php include('footer.php'); ?>
			
