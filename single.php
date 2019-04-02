<?php include('functions.php'); 
$postid = $_GET['postid'];  
$meta_title = $app->get_the_meta_title($postid);
$MetaDescription = $app->get_the_meta_content($postid);
$MetaKeywords = $app->get_the_meta_keywords($postid);
?>
<!DOCTYPE HTML>
<html lang = "en">
	<head>
		<title><?php echo $meta_title['meta_title']; ?> - audiosongs</title>
		<meta name="description" content="<?php echo $MetaDescription['meta_description']; ?>"/>
		<meta name="robots" content="noodp"/>
		<meta name="keywords" content="<?php  echo $MetaKeywords['meta_keywords']; ?>"/>
		<meta name="author" content="Livevideoshub">
		<?php include('styles.php'); ?>
	</head>
	<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-71758218-1', 'auto');
  ga('send', 'pageview');
</script>
	<style type="text/css">
		.only-desktop{
		display: block;
	}
	.only-mobile {
		display: none;
	}
	@media (max-width: 768px){
		.only-mobile {
		display:block; 
	}
	.only-desktop{
		display: none;
	}
	}	
	</style>
	<body >
<div class="site_container">
		<?php
			$audio_list = $app->get_audios();
			$title = $app->get_the_title($postid);
			$contant = $app->get_the_contant($postid);
			$date = $app->get_the_date($postid);
			$image_url = $app->get_the_image_url($postid);
			$url = $app->get_the_complete_url($postid);
			$download320 = $app->get_the_movie_download_link320($postid);
			$download128 = $app->get_the_movie_download_link128($postid);
			$moviesongs = $app->get_movie_songs($postid);
			$moviename = $app->get_the_movie_name($postid)

		?>
		<?php include('menu.php'); ?>
	<div class="page">

		<div class="row page_margin_top">
			<div class="column column_2_3">
				<div class="row">
					<div class="post single" style="float:none;">
						<h2 class="post_title">
							<?php echo $moviename['movie_name']; ?>
						</h2>
						<!-- <ul class="post_details clearfix">
							<li class="detail date"><?php echo $date['post_date']; ?></li>
							<li class="detail category"><a href="" target='_blank'>Print</a></li>
						</ul> -->
						<?php if($image_url['postimage']): ?>
						<a href="<?php echo home_base_url(); ?>admin/<?php echo $image_url['postimage']; ?>" class="post_image page_margin_top prettyPhoto" title="<?php echo $title['PostTitle']; ?>">
							<img src="<?php echo home_base_url(); ?>admin/<?php echo $image_url['postimage']; ?>" title='<?php echo $title['PostTitle']; ?>' alt="<?php echo $title['PostTitle']; ?>" />
						</a>
						<?php endif; ?>
						
						<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
						<!-- Leaderboard -->
						<ins class="adsbygoogle"
						     style="display:inline-block;width:728px;height:90px"
						     data-ad-client="ca-pub-1518250080154239"
						     data-ad-slot="7761197939"></ins>
						<script>
						(adsbygoogle = window.adsbygoogle || []).push({});
						</script>
						
						
					<div class="post_content page_margin_top_section clearfix">
						<div class="">
							<div class="text " style="text-align:center;">
								<h1 class="post_title"><?php echo $title['post_title']; ?></h1>
								<?php echo $contant['post_content']; ?>
							</div>
							<br/><br/>
							<ul class="text-center movie_download">
								<li class="">
								<div class='download_text'>Click Below To Download All Songs [320KBPS]</div>
								<a href="<?php echo $download320['download320'];  ?>"  rel="nofollow" >[DirectLink] </a>
								</li>
								<li class="">
								<div class='download_text'>Click Below To Download All Songs [128KBPS]</div>
								<a href="<?php echo $download128['download128'];  ?>"  rel="nofollow" >[DirectLink] </a>
								</li>
							</ul>
							<div class="individual-songs">
								Click Below To Download Individual Songs
							</div>
							<ul class="text-center movie_download">
								<?php foreach($moviesongs as $song): ?>
								<li class="">
								<div class='download_text'><?php echo $song['song_name']; ?></div>
								<div class=''><?php echo $song['song_desc']; ?></div>
								<a href="<?php echo $song['download320'];  ?>"  rel="nofollow" >[DirectLink 320] </a><br/><br/>
								<a href="<?php echo $song['download128'];  ?>"  rel="nofollow">[DirectLink 128] </a><br/><br/>
								<?php if($song['download320']): ?>
								<audio controls src="<?php echo $song['download320'];  ?>" preload="none">
								</audio>
								<?php endif; ?>
								<?php if(!$song['download320']): ?>
								<audio controls src="<?php echo $song['download128'];  ?>" preload="none">
								</audio>
								<?php endif; ?>
								</li>
								<?php endforeach; ?>
								
							</ul>
							<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
							<!-- Sidebar -->
							<ins class="adsbygoogle"
							     style="display:inline-block;width:336px;height:280px"
							     data-ad-client="ca-pub-1518250080154239"
							     data-ad-slot="7259666331"></ins>
							<script>
							(adsbygoogle = window.adsbygoogle || []).push({});
							</script>
						</div>
					</div>
					</div>
					<div class="row page_margin_top">
					<div class="share_box clearfix">
						<label>Share:</label>
						<ul class="social_icons clearfix">
							<li>
								<a target="_blank" title="<?php echo $title['post_title']; ?>" href="http://www.facebook.com/sharer.php?u=<?php echo home_base_url(); ?><?php echo $url['post_url']; ?>/<?php echo $postid; ?>" class="social_icon facebook">
									&nbsp;
								</a>
							</li>
							<li>
								<a target="_blank" title="<?php echo $title['post_title']; ?>" href="http://twitter.com/share?url=<?php echo home_base_url(); ?><?php echo $url['post_url']; ?>/<?php echo $postid; ?>" class="social_icon twitter">
									&nbsp;
								</a>
							</li>
							<li>
								<a title="<?php echo $title['post_title']; ?>" target="_blank" href="http://www.digg.com/submit?url=<?php echo home_base_url(); ?><?php echo $url['post_url']; ?>/<?php echo $postid; ?>" class="social_icon digg">
									&nbsp;
								</a>
							</li>
							<li>
								<a  title="<?php echo $title['post_title']; ?>" target="_blank" href="https://plus.google.com/share?url=<?php echo home_base_url(); ?><?php echo $url['post_url']; ?>/<?php echo $postid; ?>" class="social_icon googleplus">
									&nbsp;
								</a>
							</li>
							
							<li>
								<a title="<?php echo $title['post_title']; ?>" target="_blank"  href="http://reddit.com/submit?url=<?php echo home_base_url(); ?><?php echo $url['post_url']; ?>/<?php echo $postid; ?>&amp;title=<?php echo $title['post_title']; ?>" class="social_icon reddit">
									&nbsp;
								</a>
							</li>
							<li>
								<a title="<?php echo $title['post_title']; ?>" target="_blank"  href="http://www.stumbleupon.com/submit?url=<?php echo home_base_url(); ?><?php echo $url['post_url']; ?>/<?php echo $postid; ?>&amp;title=<?php echo $title['post_title']; ?>" class="social_icon stumbleupon">
									&nbsp;
								</a>
							</li>
							<li>
								<a title="<?php echo $title['post_title']; ?>" target="_blank"  href="http://www.tumblr.com/share/link?url=<?php echo home_base_url(); ?><?php echo $url['post_url']; ?>/<?php echo $postid; ?>" class="social_icon tumblr">
									&nbsp;
								</a>
							</li>
							<li>
								<a title="<?php echo $title['post_title']; ?>" text="<?php echo $title['post_title']; ?>" target="_blank"  href="https://www.blogger.com/blog-this.g?u=<?php echo home_base_url(); ?><?php echo $url['PostUrl']; ?>/<?php echo $postid; ?>&n=<?php echo $title['post_title']; ?>&t=<?php echo $title['post_title']; ?>" class="social_icon blogger">
									&nbsp;
								</a>
							</li>
						</ul>
					</div>
				</div>
				</div>

			</div>

		<div class="column column_1_3">

			<ul class="most-downloads">
			<?php foreach($audio_list as $post): ?>
			<li>
				<a href="<?php echo home_base_url(); ?><?php echo $post['post_url']; ?>/<?php echo $post['ID']; ?>">
					<img src="<?php echo home_base_url(); ?>admin/<?php echo $post['postimage']; ?>" width="100" height="100" />
				</a>
			</li>
			<?php endforeach; ?>
			
		</ul>
		</div>
	</div>
</div>
		
<?php include('footer.php'); ?>