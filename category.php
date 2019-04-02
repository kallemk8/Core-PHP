<?php include('functions.php'); 
	$catnameg = $_GET['catname']; 
	$pagenumber = $_GET['postid'];
?>
<?php 
	 $desc = $app->get_single_cat_meta_desc($catnameg);
	 $title = $app->get_single_cat_meta_title($catnameg);
	 $keywords = $app->get_single_cat_meta_keywords($catnameg);
	$catsingletitle = $app->get_single_cat_title($catnameg);  
?>
<!DOCTYPE HTML>
<html lang = "en">
	<head>
		<title><?php echo $title['meta_title']; ?> - Live News</title>
		<meta name="description" content="<?php echo $desc['meta_description']; ?>"/>
		<meta name="robots" content="noodp"/>
		<meta name="keywords" content="<?php echo $keywords['meta_keywords']; ?>"/>
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
	</style>
	
	<body class=""> 
	<div class="site_container">
<?php include('menu.php'); ?>
	<div class="page">
		<div class="row page_margin_top">
			<div class="column column_2_3">
				<div class="row">
					<div class="column column_1_2">
						<h4 class="box_header"><?php echo $catsingletitle['name']; ?></h4>
						<ul class="blog small clearfix">
							<?php 
								/*$catname = $app->get_single_cat_id($catnameg); $catname['Caturl']; 
								$postsize = $pagenumber*20;
								if($pagenumber==1){
								 	$startnumber = 0;
								}else{
								 	$startnumber = $postsize-20;
								}*/
								$telugu = $app->get_cat_post_pagination($catnameg,'0','10');
								
								$catname = $app->get_single_cat_id($catnameg);
							?>

							 <?php $count=1;   foreach($telugu as $post): ?>

							 <?php if($post['term_id'] == $catname['term_id']): ?>
							<li class="post">
							<h6>
							<a href="<?php echo home_base_url(); ?><?php echo $post['post_url']; ?>/<?php echo $post['ID']; ?>"><?php echo $post['post_title']; ?></a>
							</h6>
							</li>
							<?php endif; ?>
							<?php $count++; endforeach; ?>
						</ul>
					</div>
					<div class="column column_1_2">
						<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
						<!-- Main sidebar large -->
						<ins class="adsbygoogle"
						     style="display:inline-block;width:300px;height:600px"
						     data-ad-client="ca-pub-1518250080154239"
						     data-ad-slot="5431288735"></ins>
						<script>
						(adsbygoogle = window.adsbygoogle || []).push({});
						</script>
					</div>
				</div>
				<ul class="pagination clearfix page_margin_top_section">
					<nav class="navigation paging-navigation" role="navigation">
						<div class="pagination loop-pagination">
							<?php if($pagenumber==1): ?>
								<span class="page-numbers current">1</span>
							
							<?php else: ?>
								<a class="page-numbers" href="1">1</a>
							<?php endif; ?>
							<?php if($pagenumber==2): ?>
								<span class="page-numbers current">2</span>
							
							<?php else: ?>
								<a class="page-numbers" href="2">2</a>
							<?php endif; ?>
							<?php if($pagenumber==3): ?>
								<span class="page-numbers current">3</span>
							
							<?php else: ?>
								<a class="page-numbers" href="3">3</a>
							<?php endif; ?>
						</div>
					</nav>
				</ul>
			</div>
			<div class="column column_1_3">
				<?php include('sidebar.php'); ?>
			</div>
		</div>
	</div>
<?php include('footer.php'); ?>