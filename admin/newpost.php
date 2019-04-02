<?php 
include('../functions.php');
include('header.php'); 
?>
<?php $category = $app->get_category_list(); ?>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<div class="container">
		<div class="col-md-12">
			<form action="newpost.php" id="uploadForm"  method="post" enctype="multipart/form-data">
			<div class="form-group">
			    <label for="exampleInputEmail1">Post Title</label>
			    <input type="text" class="form-control" name="post_title" >
			</div>
			<div class="form-group">
			    <label for="exampleInputPassword1">Post Content</label>
			    <textarea class="form-control" rows="10" name="post_content"></textarea>
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Post Categorie</label>
			    <select class="form-control" name='post_categorie'>
			    	<?php foreach($category as $c): ?>
			    		<?php if($c['taxonomy']=="category"): ?>
				    		<option value="<?php echo $c['term_id'] ?>"><?php echo $c['name'] ?></option>
				    	<?Php endif; ?>
			    	<?php endforeach; ?>
			    </select>
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Post Tags</label>
			    <input type="text" class="form-control" name="post_tags" >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Meta Title</label>
			    <input type="text" class="form-control" name="meta_title"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Meta Keywords</label>
			    <input type="text" class="form-control" name="meta_keywords"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Meta Description</label>
			    <input type="text" class="form-control" name="meta_description"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Movie Name</label>
			    <input type="text" class="form-control" name="movie_name"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Movie Description</label>
			    <input type="text" class="form-control" name="movie_desc"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">All Songs Download 320 size</label>
			    <input type="text" class="form-control" name="download320"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">All Songs Download 128 size</label>
			    <input type="text" class="form-control" name="download128"  >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Movie Date</label>
			    <select class="form-control" name="movie_status"  >
			    	<?php for($year=1980;$year<=2017;$year++): ?>
			    		<option value="<?php echo $year; ?>"><?php echo $year; ?></option>
			    	<?php endfor; ?>
			    </select>
			</div>
			<div class="form-group">
				<input type="hidden" name="post_type" value="posts">
				<input type="hidden" name="post_status" value="Open">
				<input type="submit" name="addnewpost" class="btn btn-primary btn-lg add-aduio">
			</div>
		</div>
	</div>

<script type="text/javascript">
	$(document).ready(function(){
		$('.add-aduio').click(function(event){
			event.preventDefault();
			var title = $('input[name="post_title"]').val();
			var content = $('textarea[name="post_content"]').val();
			var categorie = $('select[name="post_categorie"]').val();
			var tag = $('input[name="post_tags"]').val();
			var meta_title = $('input[name="meta_title"]').val();
			var meta_keywords = $('input[name="meta_keywords"]').val();
			var meta_description = $('input[name="meta_description"]').val();
			var post_type = $('input[name="post_type"]').val();
			var post_status = $('input[name="post_status"]').val();
			var movie_name = $('input[name="movie_name"]').val();
			var movie_desc = $('input[name="movie_desc"]').val();
			var download320 = $('input[name="download320"]').val();
			var download128 = $('input[name="download128"]').val();
			var movie_status = $('select[name="movie_status"]').val();
			$.post("http://www.audio.livevideoshub.com/action.php",
			{	
				action:"add-audio",
				title:title,
				content:content,
				categorie:categorie,
				tag:tag,
				meta_title:meta_title,
				meta_keywords:meta_keywords,
				post_type:post_type,
				post_status:post_status,
				meta_description:meta_description,
				movie_name:movie_name,
				movie_desc:movie_desc,
				download320:download320,
				download128:download128,
				movie_status:movie_status
			},
			function(data,status){
				var url = 'http://www.audio.livevideoshub.com/admin/uploadimage.php?postid='+ data
				$(location).attr('href', url)
			});
		});
	});
</script>
<?php include('footer.php'); ?>
			
