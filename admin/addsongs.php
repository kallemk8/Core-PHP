<?php include('header.php'); ?>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<div class="container">
		<div class="col-md-12">
			<form action="newpost.php" method="post" enctype="multipart/form-data">
			<div class="form-group">
			    <label for="exampleInputEmail1">Song Name</label>
			    <input type="text" class="form-control" name="meta_description"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Song Description</label>
			    <input type="text" class="form-control" name="meta_description"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Song Download 320 size</label>
			    <input type="text" class="form-control" name="meta_description"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Song Download 128 size</label>
			    <input type="text" class="form-control" name="meta_description"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Song Status</label>
			    <input type="text" class="form-control" name="meta_description"  >
			</div>
			<div class="form-group">
				<input type="hidden" name="post_type" value="Song">
				<input type="hidden" name="post_status" value="Open">
				<input type="submit" name="addnewpost" class="btn btn-primary btn-lg add-aduio">
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function(){
			$('input[name="post_title"]').keyup(function(event){
				var title = $(this).val();
				var content = $('textarea[name="post_content"]').val();
				var categorie = $('select[name="post_categorie"]').val();
				var tag = $('input[name="post_tags"]').val();
				var image = "";
				var meta_title = $('input[name="meta_title"]').val();
				var meta_keywords = $('input[name="meta_keywords"]').val();
				var meta_description = $('input[name="meta_description"]').val();
				var post_type = $('input[name="post_type"]').val();
				var post_status = "c";
				$.post("http://localhost/audio/action.php",
				{	
					action:"add-audio",
					title:title,
					content:content,
					categorie:categorie,
					tag:tag,
					image:image,
					meta_title:meta_title,
					meta_keywords:meta_keywords,
					post_type:post_type,
					post_status:post_status,
					meta_description:meta_description
				},
				function(data,status){
					alert(data);
				});
			});
			$('.add-aduio').click(function(event){
				event.preventDefault();
				var title = $('input[name="post_title"]').val();
				var content = $('textarea[name="post_content"]').val();
				var categorie = $('select[name="post_categorie"]').val();
				var tag = $('input[name="post_tags"]').val();
				var image = "";
				var meta_title = $('input[name="meta_title"]').val();
				var meta_keywords = $('input[name="meta_keywords"]').val();
				var meta_description = $('input[name="meta_description"]').val();
				var post_type = $('input[name="post_type"]').val();
				var post_status = $('input[name="post_status"]').val();
				$.post("http://localhost/audio/action.php",
				{	
					action:"add-audio",
					title:title,
					content:content,
					categorie:categorie,
					tag:tag,
					image:image,
					meta_title:meta_title,
					meta_keywords:meta_keywords,
					post_type:post_type,
					post_status:post_status,
					meta_description:meta_description
				},
				function(data,status){
					alert(data);
				});

			});

		});

	</script>
<?php include('footer.php'); ?>
			
