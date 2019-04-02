<?php get_header(); ?>
<style type="text/css">
	.video-title-page{
		font-weight: normal;
		min-height: 70px;
	}
	.video-site li a{
		padding: 0px 10px !important;
		font-size: 14px;
	}
	.only-mobile{
		display: none;
		min-height: 1px !important;
	}
	ul.tvshowclass li img{
	width: 100%;
	height: 170px;
	
}
	@media (max-width: 500px){
		.only-mobile{
			display: block;
		}
		.video-site li a{
			padding: 0px !important;
		}
		.video-title-page{
			margin: 0px 0px 15px 0px;
			min-height: 30px;
			padding: 5px 0px;
		}
	}
</style>
<div class="page">
	<div class="page_header clearfix page_margin_top">
		<h1 class="page_title"> <?php echo single_tag_title(); ?></h1>
		<div class="category-desc"><?php echo tag_description(); ?> </div>
	</div>
	<div class="page_layout clearfix">
				<div class="row">
					<ul class="tvshowclass homepage">
						<?php 
	                    
							if(have_posts()):
						$count=1;
							while ( have_posts() ) : the_post();
						?>
						<?php if($count==1||$count==3||$count==4): ?>
						<li class="only-mobile">
							<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
							<!-- livecricket mobile 300 -->
							<ins class="adsbygoogle"
							     style="display:inline-block;width:300px;height:250px"
							     data-ad-client="ca-pub-1518250080154239"
							     data-ad-slot="7903685933"></ins>
							<script>
							(adsbygoogle = window.adsbygoogle || []).push({});
							</script>
						</li>

						<?php endif; ?>
						<?php if($count==2): ?>
							<li class="only-mobile">
								<div data-WRID="WRID-149814004305079250" data-widgetType="featuredDeals" data-responsive="yes" data-class="affiliateAdsByFlipkart" height="250" width="300"></div><script async src="//affiliate.flipkart.com/affiliate/widgets/FKAffiliateWidgets.js"></script>
							</li>
						<?php endif; ?>
						<li>
							<a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>">
								<?php  $feat_image = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID),'medium' );?>
								<?php if( $feat_image): ?>
								<img src='<?php echo $feat_image[0]; ?>' title='<?php echo get_the_title(); ?>' alt='<?php echo get_the_title(); ?>'>
								<?php endif; ?>
								<span class="post-image-play-button" ></span>
								<?php if(get_field('video_length')): ?>
								<span class="timier" ><?php echo get_field('video_length'); ?></span>
								<?php endif; ?>
							</a>
							
							<div class="post-title">
								<a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>">
								<?php echo get_the_title(); ?>
								</a>
								<!-- <div class="" style="font-size: 12px; color: #000;">
									<?php echo substr(get_the_excerpt(),0,100); ?>
								</div> -->
								<div class="post-date">
									<span></span><?php echo get_the_date(); ?>
								</div>
							</div>
						</li>
						
						<?php 
							$count++; endwhile;
							
							endif;
						?>

						
					</ul>
				</div>
				<ul class="pagination clearfix page_margin_top_section">
					<?php twentyfourteen_paging_nav(); ?>
				</ul>
			</div>
		</div>
<?php get_footer(); ?>