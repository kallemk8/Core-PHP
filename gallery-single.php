<?php include('functions.php'); 
 $gallery = $_GET['gallery']; 
	$gallery2 = $app->get_the_gallery_title($gallery);
	$gallerydate = $app->get_the_gallery_date($gallery);
 ?>
<!DOCTYPE HTML>
<html lang = "en">
	<head>
		<title><?php echo $gallery2['GalleryName']; ?> - Live News</title>
		<meta name="description" content="<?php echo $gallery2['GalleryName']; ?>"/>
		<meta name="robots" content="noodp"/>
		<meta name="keywords" content="<?php echo $gallery2['GalleryName']; ?>"/>
		<meta name="author" content="Livevideoshub">
		<?php include('styles.php'); ?>
	</head>
	<style type="text/css">
		ul.blog li.post{
			margin-top: 15px !important;
			border-bottom: 1px solid #ccc;
		}
		ul.blog li.post a:hover {
			text-decoration: none;
		}
		.more, .more[type="submit"]{
			margin-bottom: 15px;
		}
		h1.post_title{
			font-size: 30px;
		}
		.post_content .text{
			color: #000;
		}h2.excerpt{
			margin-bottom: 10px;
		}
		.gallery-images{
			width: 33%;
			float: left;
		}
	</style>
	<body >
	<div class="site_container">

		<?php include('menu.php'); ?>
<div class="page">
	<div class="row page_margin_top">
		<div class="column column_2_3">
			<div class="row">
				<div class="post single">
					<h1 class="post_title">
						<?php echo $gallery2['GalleryName']; ?>
					</h1>
					<ul class="post_details clearfix">
						<li class="detail category">In <a href="" title="HEALTH">Gallery</a></li>
						<li class="detail date"><?php echo $gallerydate['GalleryDate']; ?></li>
						
					</ul>
					<div class="horizontal_carousel_container thin page_margin_top gallery_control">
							<ul class="horizontal_carousel control-for-post-gallery visible-5 autoplay-0 scroll-1 navigation-1 easing-easeInOutQuint duration-750">
								<?php 
									$directory = "admin/uploads/".$gallery."/";
									$images = glob($directory . "*.jpg");
									$count=1;
									foreach($images as $image):
								?>
								<li>
									<a href="<?php echo home_base_url(); ?><?php echo $image; ?>" title="<?php echo $gallery2['GalleryName']; ?>">
									<img src='<?php echo home_base_url(); ?><?php echo $image; ?>' alt='<?php echo $gallery2['GalleryName']; ?>' title="<?php echo $gallery2['GalleryName']; ?>">
									</a>
								</li>
								<?php
									$count++;
									endforeach;
								?>
							</ul>
						</div>
					<div id="control-by-post-gallery" class="horizontal_carousel_container big margin_top_10">
						<ul class="horizontal_carousel control-for-post-gallery visible-5 autoplay-0 scroll-1 navigation-1 easing-easeInOutQuint duration-750">
							<?php 
								$directory = "admin/uploads/".$gallery."/";
								$images = glob($directory . "*.jpg");
								$count=1;
								foreach($images as $image):
							?>
							<li >
								<!--class="prettyPhoto" rel="prettyPhoto[gallery]"-->
								<a href="<?php echo home_base_url(); ?><?php echo $image; ?>" title="<?php echo $gallery2['GalleryName']; ?>">
									<span class="icon fullscreen animated"></span>
									<img src='<?php echo home_base_url(); ?><?php echo $image; ?>' alt='<?php echo $gallery2['GalleryName']; ?>' title="<?php echo $gallery2['GalleryName']; ?>">
								</a>
							</li>
							<?php
								$count++;
								endforeach;
							?>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="column column_1_3">
		<?php include("sidebar.php"); ?>
		</div>
	</div>
</div>
<?php include('footer.php'); ?>