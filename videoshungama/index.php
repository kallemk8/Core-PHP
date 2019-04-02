<?php get_header(); ?>
<div class="page">
	<div class="page_header clearfix page_margin_top">
		<div class="page_header_left">
			<h1 class="page_title">Search <?php echo get_search_query(); ?></h1>
		</div>
		<div class="page_header_right">
			<ul class="bread_crumb">
				<li>
					<a title="Home" href="<?php echo home_url(); ?>">
						Home
					</a>
				</li>
				<li class="separator icon_small_arrow right_gray">
					&nbsp;
				</li>
				<li>
					Search <?php echo get_search_query(); ?>
				</li>
			</ul>
		</div>
	</div>
	<div class="page_layout clearfix">
		<div class="divider_block clearfix">
			<hr class="divider first">
			<hr class="divider subheader_arrow">
			<hr class="divider last">
		</div>
		<div class="row">
			<div class="column column_2_3">
				<div class="row">
					<ul class="blog big">
						<?php 
							if(have_posts()):  
							$count=1;
							while ( have_posts() ) : the_post();
						?>
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
									<a class="comments_number" href="?page=post#comments_list" title="2 comments">2<span class="arrow_comments"></span></a>
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
							endwhile;
							endif;
						?>
					</ul>
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
<?php get_footer(); ?>