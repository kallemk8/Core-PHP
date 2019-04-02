<?php include('header.php'); ?>
<?php include('../functions.php'); ?>

<?php $audios = $app->get_audios(); ?>

	<div class="container">
		<div class="col-md-12">
			<h2>List Of Posts</h2>
			<table class="table" id='posts'>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Category</th>
					<th>PostDate</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
				<?php foreach($audios as $post): ?>
				<tr>
					<td><?php echo $post['ID']; ?></td>
					<td><?php echo $post['post_title']; ?></td>
					<td><a href="http://audio.livevideoshub.com/admin/edit.php?editpost=<?php echo $post['ID']; ?>">Edit</a></td>
					<td><a href="http://www.audio.livevideoshub.com/admin/newpost2.php?movie=<?php echo $post['movie_id']; ?>&audio=<?php echo $post['ID']; ?>">Add Songs</td>
					<td><a href="http://audio.livevideoshub.com/admin/delete.php?delete=<?php echo $post['ID']; ?>">Delete</a></td>
				</tr>
				<?php endforeach; ?>
			</table>
			
		</div>
	</div>
<?php include('footer.php'); ?>