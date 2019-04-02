i<?php include('functions.php'); ?>
<!DOCTYPE HTML>
<html lang = "en">
	<head>
		<title>Latest Actress Gallerys | Hot Heroines Photos Download - Live News</title>
		<meta name="description" content="Watch Latest Actress Gallerys and Audio Function pics and Hot Heroines Photos Download from our website livevideoshub.com Telugu Heroines Images download"/>
		<meta name="robots" content="noodp"/>
		<meta name="keywords" content="Latest Actress Gallery, Latest Heroines Gallerys, Watch and Download Latest Pics, Telugu Heroines Images download "/>
		<meta name="author" content="Livevideoshub">
		<?php include('styles.php'); ?>
	</head>
	<style type="text/css">
		.noscroll{
			overflow-y: hidden !important;
			height: auto !important;
			list-style: none;
		}
		.noscroll a{
			line-height: 35px;
		}
		.list-style-none{
			list-style: none;
		}
		.width125{
			width: 200px;
			min-height: 1px;
		}
		.post{
			margin-top: 15px !important;
		}
		.gallery_post{
			width: 33%;
			float: left;
			
		}
		@media (max-width: 400px){
			.gallery_post{
				width: 100%;
				float: none;
				
			}
		}
		@media (max-width: 770px){
			.gallery_post{
				width: 50%;
				float: left;
				
			}
		}
		.gallery_post a{
			display: block;
			overflow: hidden;
			padding: 10px;
		}
		.gallery_post a img{
			width: 100% !important;
			text-align: center;
			margin: auto;
		}
		.gallery_title{
			display: block;
			min-height: 77px;
		}

	</style>
	<?php $menus = $app->get_Menus(); ?>
	<body class="">
	<div class="site_container">
<?php include('menu.php'); ?>
<div class="page">
	<div class="row page_margin_top">
		<div class="column column_2_3">
			<h4 class="box_header">Latest News</h4>
			<ul class="blog small clearfix">
				<?php $count=1;  foreach($gallery_list as $gallery): ?>
				<li class="gallery_post">
				<a href="<?php echo home_base_url(); ?>gallery/<?php echo $gallery['GalleryUrl']; ?>" ><?php 
				$search_dir = "admin/uploads/".$gallery['GalleryUrl']."/";
				$images = glob("$search_dir/*.jpg");
				sort($images);
				//display one image:
				echo "<img src='".current($images)."' height='200px' class='current-images-for-gallery' /> ";
				?></a>
				<h6 class="gallery_title">
				<a href="<?php echo home_base_url(); ?>gallery/<?php echo $gallery['GalleryUrl']; ?>"><?php echo $gallery['GalleryName']; ?></a>
				</h6>
				</li>
				<?php $count++; endforeach; ?>
			</ul>
			<a class="more page_margin_top" href="">READ MORE</a>
		</div>

		<div class="column column_1_3">
		<?php include("sidebar.php"); ?>
		</div>
	</div>
</div>
<?php include('footer.php'); ?>