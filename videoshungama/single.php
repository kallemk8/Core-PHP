<?php get_header(); ?>
<?php if (!has_post_format('aside')): ?>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="page"><div class="page_layout page_margin_top clearfix"><!-- <div class="row page_margin_top"><div class="column column_1_1"><div class="horizontal_carousel_container small"><ul class="blog horizontal_carousel autoplay-1 scroll-1 visible-3 navigation-1 easing-easeInOutQuint duration-750"><?php $cat = get_field('cat'); $args = array ('cat'=>$cat,'posts_per_page'=> "8");$the_query = new WP_Query( $args ); if($the_query->have_posts()): $count=1;while ( $the_query->have_posts() ) : $the_query->the_post(); $post->ID; ?><li class="post"><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php  $feat_image = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID),'medium' );?><?php if( $feat_image): ?><img src='<?php echo $feat_image[0]; ?>' title='<?php echo get_the_title($post->ID); ?>' alt='<?php echo get_the_title($post->ID); ?>'><?php endif; ?></a><h5><a href="<?php echo get_permalink($post->ID); ?>" title="<?php echo get_the_title($post->ID); ?>"><?php echo get_the_title($post->ID); ?></a></h5><ul class="post_details simple"><li class="category"><?php $posttags = get_the_tags(); if ($posttags) { $tagsnumber1=1; foreach($posttags as $tag) { if($tagsnumber1 == 1){ ?><a href="<?php echo get_tag_link($tag->term_id); ?>" title='<?php echo get_the_title(); ?>'><?php echo $tag->name; ?></a><?php } $tagsnumber1++;} }?></li><li class="date"><?php echo get_the_date(); ?></li></ul></li><?php  $count++; endwhile; endif; $post->ID = $postba; wp_reset_postdata(); ?></ul></div></div></div><hr class="divider page_margin_top"> -->
<div class="row page_margin_top"><div class="column column_2_3"><div class="row"><div class="post single"><h1 class="post_title"><?php echo get_the_title(); ?></h1><ul class="post_details clearfix"><li class="detail category">In <?php $posttags1 = get_the_tags(); if ($posttags1) { $tagsnumber2=1; foreach($posttags1 as $tag) { if($tagsnumber2==1){ ?><a href="<?php echo get_tag_link($tag->term_id); ?>" title='<?php echo get_the_title(); ?>'><?php echo $tag->name; ?></a><?php } $tagsnumber2++;} } ?></li><li class="detail date"><?php echo get_the_date('F j Y' ); ?></li><?php if(!get_field('youtube_video_id')): ?><li class="detail category"><a href="<?php echo get_field('youtube_download'); ?>" target='_blank'>Download</a></li><?php endif; if(get_field('youtube_video_id')): ?> <li class="detail category"><a href="https://www.ssyoutube.com/watch?v=<?php echo get_field('youtube_video_id'); ?>" target='_blank'>Download</a></li><?php endif; ?><li><div class="fb-like" data-href="https://www.facebook.com/livevideoshub/" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div></li></ul><?php if(get_field('newslink')): ?><a href="<?php echo get_field('newslink'); ?>" class="anthorlink" title="<?php echo get_the_title(); ?>" target='_blank' >If Below Video Not Playing Click This Link For Full show </a><?php endif; ?>
<!--<div class="width150"><script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script><ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-1518250080154239" data-ad-slot="8723242738" data-ad-format="link"></ins><script>(adsbygoogle = window.adsbygoogle || []).push({});</script></div>-->
<?php if(get_field('youtube_video_id')): ?><div class="post_content clearfix"><iframe width="100%"  src="https://www.youtube.com/embed/<?php echo get_field('youtube_video_id'); ?><?php if(!is_user_logged_in()){echo '?autoplay=1';} ?>" frameborder="0" allowfullscreen rel="nofollow" class="livevideoshub_video_height"></iframe></div><?php endif; ?><?php if(get_field('custom_video_url')): ?><video id="my-video" class="video-js livevideoshub_video_height" controls preload="auto" width="100%" poster="<?php  $feat_image = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID),'medium' );?><?php if( $feat_image): ?><?php echo $feat_image[0]; ?><?php endif; ?>" data-setup="{}" ><source src="<?php echo get_field("custom_video_url"); ?>" type='video/mp4'><source src="MY_VIDEO.webm" type='video/webm'></video><?php endif; ?>

<?php if(get_field('full_episode_id',$post->ID)): ?>
<?php $full_episode_id = get_field('full_episode_id', $post->ID); ?>
<video id="my-video" class="video-js livevideoshub_video_height" controls preload="auto" width="100%" poster="<?php  $feat_image = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID),'medium' );?><?php if( $feat_image): ?><?php echo $feat_image[0]; ?><?php endif; ?>" data-setup="{}" ><source src="<?php echo get_field('custom_video_url', $full_episode_id); ?>" type='video/mp4'><source src="MY_VIDEO.webm" type='video/webm'></video><?php endif; ?>
<div class="positionset1">
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- mturk -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-1518250080154239"
     data-ad-slot="9404697537"
     data-ad-format="auto"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script></div>
<?php if(get_field('newslink')): ?><a href="<?php echo get_field('newslink'); ?>" style="padding:0px;" class="anthorlink" title="<?php echo get_the_title(); ?>">If Above Video Not Playing Click This Link For Full show </a><?php endif; ?><div class="post_content clearfix"><div><h2 class="excerpt" style="margin-top:0px;"><?php echo get_field('subtitle'); ?></h2><div class="text"><?php echo apply_filters('the_content',$post->post_content); ?><?php if(get_field('jabardasth_download')): ?><h3 ><a style='color:#000; font-size:20px;' target="_blank" href='https://www.ssyoutube.com/watch?v=<?php echo get_field('jabardasth_download'); ?>'>Download This Video</a></h3><?php endif; ?><script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- contact -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-1518250080154239"
     data-ad-slot="2550265139"
     data-ad-format="auto"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script></div></div></div><?php  $feat_image = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID),'medium' );?><?php if( $feat_image): ?><a href="<?php echo $feat_image[0]; ?>" class="post_image page_margin_top prettyPhoto" title="<?php echo get_the_title(); ?>"><img src='<?php echo $feat_image[0]; ?>' title='<?php echo get_the_title(); ?>' alt='<?php echo get_the_title(); ?>'></a><?php endif; ?></div></div><div class="row page_margin_top"><div class="share_box clearfix"><label>Share:</label><ul class="social_icons clearfix"><li><a target="_blank" title="<?php echo get_the_title(); ?>" href="http://www.facebook.com/sharer.php?u=<?php echo get_permalink(); ?>" class="social_icon facebook">&nbsp;</a></li><li><a target="_blank" title="<?php echo get_the_title(); ?>" href="http://twitter.com/share?url=<?php echo get_permalink(); ?>" class="social_icon twitter">&nbsp;</a></li><li><a title="<?php echo get_the_title(); ?>" target="_blank" href="http://www.digg.com/submit?url=<?php echo get_permalink(); ?>" class="social_icon digg">&nbsp;</a></li><li><a  title="<?php echo get_the_title(); ?>" target="_blank" href="https://plus.google.com/share?url=<?php echo get_permalink(); ?>" class="social_icon googleplus">&nbsp;</a></li><li><a title="<?php echo get_the_title(); ?>" target="_blank" href="javascript:void((function()%7Bvar%20e=document.createElement('script');e.setAttribute('type','text/javascript');e.setAttribute('charset','UTF-8');e.setAttribute('src','http://assets.pinterest.com/js/pinmarklet.js?r='+Math.random()*99999999);document.body.appendChild(e)%7D)());" class="social_icon pinterest">&nbsp;</a></li><li><a title="<?php echo get_the_title(); ?>" target="_blank"  href="http://reddit.com/submit?url=<?php echo get_permalink(); ?>&amp;title=<?php echo get_the_title(); ?>" class="social_icon reddit">&nbsp;</a></li><li><a title="<?php echo get_the_title(); ?>" target="_blank"  href="http://www.stumbleupon.com/submit?url=<?php echo get_permalink(); ?>&amp;title=<?php echo get_the_title(); ?>" class="social_icon stumbleupon">&nbsp;</a></li><li><a title="<?php echo get_the_title(); ?>" target="_blank"  href="http://www.tumblr.com/share/link?url=<?php echo get_permalink(); ?>" class="social_icon tumblr">&nbsp;</a></li><li><a title="<?php echo get_the_title(); ?>" text="<?php echo get_the_title(); ?>" target="_blank"  href="https://www.blogger.com/blog-this.g?u=<?php echo get_permalink(); ?>&n=<?php echo get_the_title(); ?>&t=<?php echo get_the_excerpt(); ?>" class="social_icon blogger">&nbsp;</a></li></ul></div></div><div class="row page_margin_top"><ul class="taxonomies tags left clearfix"><?php $posttags = get_the_tags();?><?php if ($posttags) { foreach($posttags as $tag) {?><li><a href="<?php echo get_tag_link($tag->term_id); ?>" title='<?php echo get_the_title(); ?>'><?php echo $tag->name; ?></a></li><?php } } ?></ul><ul class="taxonomies categories right clearfix"><?php 	$categories = get_the_category(); if ( ! empty( $categories ) ) { foreach( $categories as $category ) { echo '<li><a href="' . esc_url( get_category_link( $category->term_id ) ) . '" alt="' .get_the_title(). '">' . esc_html( $category->name ) . '</a></li>'; } } ?></ul></div><!-- <div class="row page_margin_top_section"><h4 class="box_header">Most Views</h4><div class="horizontal_carousel_container page_margin_top"><ul class="blog horizontal_carousel autoplay-1 scroll-1 navigation-1 easing-easeInOutQuint duration-750"><?php if(get_field('category2')){ $cat2 = get_field('category2'); }else{ $cat = get_field('cat'); $cat2 = $cat; } $args = array ( 'cat'=>$cat2, "posts_per_page"=>"8" ); $the_query = new WP_Query( $args ); if($the_query->have_posts()): while ( $the_query->have_posts() ) : $the_query->the_post(); $post->ID; ?><li class="post"><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php  $feat_image = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID),'medium' );?><?php if( $feat_image): ?><img src='<?php echo $feat_image[0]; ?>' title='<?php echo get_the_title($post->ID); ?>' alt='<?php echo get_the_title($post->ID); ?>'><?php endif; ?></a><h5><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php echo get_the_title(); ?></a></h5><ul class="post_details simple"><li class="category"><?php $posttags = get_the_tags();?><?php if ($posttags) { $tagcount22=1; foreach($posttags as $tag) { if($tagcount22==1){ ?> <a href="<?php echo get_tag_link($tag->term_id); ?>" title='<?php echo get_the_title(); ?>'> <?php echo $tag->name; ?></a><?php } $tagcount22++;} } ?> </li> <li class="date"> <?php echo get_the_date(); ?> </li> </ul></li> <?php endwhile; endif; $post->ID = $postba;  wp_reset_postdata(); ?> </ul> </div></div> --><div class="row page_margin_top_section"><?php echo comments_template();?></div><div data-WRID="WRID-149814004305079250" data-widgetType="featuredDeals" data-responsive="yes" data-class="affiliateAdsByFlipkart" height="250" width="300"></div><script async src="//affiliate.flipkart.com/affiliate/widgets/FKAffiliateWidgets.js"></script><!-- <iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ac&ref=tf_til&ad_type=product_link&tracking_id=livevideoshub-21&marketplace=amazon&region=IN&placement=B01DDP7UYC&asins=B01DDP7UYC&linkId=0458db9f37eb4342a6270c136ad65fde&show_border=true&link_opens_in_new_window=true&price_color=333333&title_color=0066c0&bg_color=ffffff">
    </iframe><iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ac&ref=tf_til&ad_type=product_link&tracking_id=livevideoshub-21&marketplace=amazon&region=IN&placement=B01FM7GIR4&asins=B01FM7GIR4&linkId=01b557949e844d4792771e3f9a8a525f&show_border=true&link_opens_in_new_window=true&price_color=333333&title_color=0066c0&bg_color=ffffff">
    </iframe> --></div><div class="column column_1_3"><?php echo get_sidebar(); ?></div></div></div></div>
<?php endif; ?>

<?php get_footer(); ?> 