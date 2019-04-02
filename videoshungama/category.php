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
		<h1 class="page_title"> <?php echo single_cat_title(); ?></h1>	
		<div class="category-desc"><?php echo category_description(); ?> </div>
	</div>
	<div class="page_layout clearfix">
				<div class="row">
					<div class="column column_2_3">
					<div class="row">
					<div class="only-mobile">
					<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- livecricket mobile 300 -->
					<ins class="adsbygoogle"
					     style="display:inline-block;width:300px;height:250px"
					     data-ad-client="ca-pub-1518250080154239"
					     data-ad-slot="7903685933"></ins>
					<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
					</script>
					</div>
					<ul class="blog big">
						<?php 
	                    
							if(have_posts()):
						$count=1;
							while ( have_posts() ) : the_post();
						?>
						<?php if($count==2): ?>
								<div class="only-mobile">
								<li class="post"><div data-WRID="WRID-147362269823180101" data-widgetType="bestSellers"  data-class="affiliateAdsByFlipkart" height="250" width="300"></div><script async src="//affiliate.flipkart.com/affiliate/widgets/FKAffiliateWidgets.js"></script></li>
								</div>
						<?php endif; ?>
						<?php if($count==4): ?>
								<div class="only-mobile">
								<li class="post"><div data-WRID="WRID-147362269823180101" data-widgetType="bestSellers"  data-class="affiliateAdsByFlipkart" height="250" width="300"></div><script async src="//affiliate.flipkart.com/affiliate/widgets/FKAffiliateWidgets.js"></script></li>
								</div>
						<?php endif; ?>
						<li class="post" style="border-bottom:1px solid #ccc; padding-bottom:5px;">
							<a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>">
								<?php  $feat_image = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID),'medium' );?>
								<?php if( $feat_image): ?>
								<img src='<?php echo $feat_image[0]; ?>' title='<?php echo get_the_title(); ?>' alt='<?php echo get_the_title(); ?>'>
								<?php endif; ?>
							</a>
							<div class="post_content">
								<h2 class="with_number">
									<a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php echo get_the_title(); ?></a>
									<!-- <a class="comments_number" href="?page=post#comments_list" title="2 comments">2<span class="arrow_comments"></span></a> -->
								</h2>
								<ul class="post_details">
									<li class="category">
										<?php $posttags = get_the_tags();?>
										<?php 
											if ($posttags) {
												$tagcount3=1;
											foreach($posttags as $tag) {
												if($tagcount3==1){
										?>
											<a href="<?php echo get_tag_link($tag->term_id); ?>" title='<?php echo get_the_title(); ?>'>
												<?php echo $tag->name; ?>
											</a>
										<?php 
											} $tagcount3++;}
											}
										?>
									</li>
									<li class="date">
										<?php echo get_the_date('g:i F j, Y' ); ?>
									</li>
								</ul>
								<p><?php echo get_the_excerpt(); ?></p>
								<a class="read_more" href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><span class="arrow"></span><span>READ MORE</span></a>
							</div>
						</li>
						<?php 
							$count++; endwhile;
							
							endif;
						?>

						
					</ul>
					<div class="only-mobile">
					<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- livecricket mobile 300 -->
					<ins class="adsbygoogle"
					     style="display:inline-block;width:300px;height:250px"
					     data-ad-client="ca-pub-1518250080154239"
					     data-ad-slot="7903685933"></ins>
					<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
					</script>
					</div>
				</div>
				<ul class="pagination clearfix page_margin_top_section">
					<?php twentyfourteen_paging_nav(); ?>
				</ul>
			</div>
			<div class="column column_1_3 page_margin_top">
				<?php echo get_sidebar(); ?>
			</div>
		</div>
	</div>
</div>			
		</div>
<?php get_footer(); ?>