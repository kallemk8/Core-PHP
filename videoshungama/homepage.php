<?php get_header(); /* Template Name: Home page */ ?> 
<style type="text/css"> .clearfix{ clear: both; } .tvshowclass .tvshowsimageclass{ min-height: 170px; } .only-mobile{ display: none; } @media (max-width: 500px){ .only-mobile{ display: block; } } </style>
<ul class="slider"><?php query_posts('cat=9'); if(have_posts()): while ( have_posts() ) : the_post(); ?><li class="slide"><?php  $feat_image = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID) ,'full');?><?php if( $feat_image): ?><img src='<?php echo $feat_image[0]; ?>' title='<?php echo get_the_title(); ?>' alt='<?php echo get_the_title(); ?>'><?php endif; ?><div class="slider_content_box"><ul class="post_details simple"><a href="<?php echo get_permalink(); ?>"><li class="category"><?php $posttags = get_the_tags();?><?php  if ($posttags) { $tagcount12=1; foreach($posttags as $tag) { if($tagcount12==1){ ?> <a href="<?php echo get_tag_link($tag->term_id); ?>" title='<?php echo get_the_title(); ?>'> <?php echo $tag->name; ?> </a><?php } $tagcount12++; } } ?> </li> </a> <li class="date"> <?php echo get_the_date('g:i A, F j' ); ?> </li> </ul> <h2><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php echo substr(get_the_title(),0,75); ?></a></h2><p class="clearfix"><?php echo substr(get_the_excerpt(),0,150); ?>...</p></div></li><?php endwhile; endif; ?></ul>

<div class="page">
<div class='slider_posts_list_container'></div>
<div class="page_layout page_margin_top clearfix"><div class="row"><div class="column"><h4 class="box_header">Popular Shows <a class="more homepagemore page_margin_top" href="http://www.videoshungama.com/video-songs/telugu-video-songs/">MORE </a></h4><div class="row"><ul class="tvshowclass homepage"><?php query_posts('cat=9&posts_per_page=4'); if(have_posts()): $count=1; while ( have_posts() ) : the_post(); ?><li><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php  $feat_image = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID),'medium' );?><?php if( $feat_image): ?><img src='<?php echo $feat_image[0]; ?>' title='<?php echo get_the_title(); ?>' alt='<?php echo get_the_title(); ?>'><?php endif; ?><span class="post-image-play-button" ></span><?php if(get_field('video_length')): ?><span class="timier" ><?php echo get_field('video_length'); ?></span><?php endif; ?></a><div class="post-title"><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php echo get_the_title(); ?></a><div class="post-date"><span></span><?php echo get_the_date(); ?></div></div></li><?php if($count==1||$count==3): ?><li class="only-mobile"><script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script><ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-1518250080154239" data-ad-slot="2550265139" data-ad-format="auto"></ins><script>(adsbygoogle = window.adsbygoogle || []).push({});</script></li><?php endif; ?><?php if($count==2): ?><li class="only-mobile"><script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script><ins class="adsbygoogle" style="display:inline-block;width:300px;height:600px" data-ad-client="ca-pub-1518250080154239" data-ad-slot="5431288735"></ins> <script> (adsbygoogle = window.adsbygoogle || []).push({}); </script> </li><?php endif; $count++; endwhile; endif; ?></ul></div>
<div class="row "><h4 class="box_header">Telugu Video Songs <a class="more homepagemore page_margin_top" href="http://www.videoshungama.com/video-songs/telugu-video-songs/">MORE </a></h4><ul class="tvshowclass homepage"><?php query_posts('cat=10&posts_per_page=4'); if(have_posts()): $count=1; while ( have_posts() ) : the_post(); ?><li><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php  $feat_image = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID),'medium' );?><?php if( $feat_image): ?><img src='<?php echo $feat_image[0]; ?>' title='<?php echo get_the_title(); ?>' alt='<?php echo get_the_title(); ?>'><?php endif; ?><span class="post-image-play-button" ></span><?php if(get_field('video_length')): ?><span class="timier" ><?php echo get_field('video_length'); ?></span><?php endif; ?></a><div class="post-title"><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php echo get_the_title(); ?></a><div class="post-date"><span></span><?php echo get_the_date(); ?></div></div></li><?php endwhile; endif; ?></ul></div>
<div class="row "><h4 class="box_header">Latest Telugu Movies <a class="more homepagemore page_margin_top" href="http://www.videoshungama.com/movies/telugu-movies/">MORE </a></h4><ul class="tvshowclass homepage"><?php query_posts('cat=11&posts_per_page=4'); if(have_posts()): $count=1; while ( have_posts() ) : the_post(); ?><li><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php  $feat_image = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID),'medium' );?><?php if( $feat_image): ?><img src='<?php echo $feat_image[0]; ?>' title='<?php echo get_the_title(); ?>' alt='<?php echo get_the_title(); ?>'><?php endif; ?><span class="post-image-play-button" ></span><?php if(get_field('video_length')): ?><span class="timier" ><?php echo get_field('video_length'); ?></span><?php endif; ?></a><div class="post-title"><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php echo get_the_title(); ?></a><div class="post-date"><span></span><?php echo get_the_date(); ?></div></div></li><?php endwhile; endif; ?></ul></div>
<div class="row "><h4 class="box_header">Latest Hindi Movies <a class="more homepagemore page_margin_top" href="http://www.videoshungama.com/movies/hindi-movies/">MORE </a></h4><ul class="tvshowclass homepage"><?php query_posts('cat=18&posts_per_page=4'); if(have_posts()): $count=1; while ( have_posts() ) : the_post(); ?><li><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php  $feat_image = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID),'medium' );?><?php if( $feat_image): ?><img src='<?php echo $feat_image[0]; ?>' title='<?php echo get_the_title(); ?>' alt='<?php echo get_the_title(); ?>'><?php endif; ?><span class="post-image-play-button" ></span><?php if(get_field('video_length')): ?><span class="timier" ><?php echo get_field('video_length'); ?></span><?php endif; ?></a><div class="post-title"><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php echo get_the_title(); ?></a><div class="post-date"><span></span><?php echo get_the_date(); ?></div></div></li><?php endwhile; endif; ?></ul></div>
<div class="row "><h4 class="box_header">Hindi Video Songs <a class="more homepagemore page_margin_top" href="http://www.videoshungama.com/video-songs/hindi-video-songs/">MORE </a></h4><ul class="tvshowclass homepage"><?php query_posts('cat=12&posts_per_page=4'); if(have_posts()): $count=1; while ( have_posts() ) : the_post(); ?><li><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php  $feat_image = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID),'medium' );?><?php if( $feat_image): ?><img src='<?php echo $feat_image[0]; ?>' title='<?php echo get_the_title(); ?>' alt='<?php echo get_the_title(); ?>'><?php endif; ?><span class="post-image-play-button" ></span><?php if(get_field('video_length')): ?><span class="timier" ><?php echo get_field('video_length'); ?></span><?php endif; ?></a><div class="post-title"><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php echo get_the_title(); ?></a><div class="post-date"><span></span><?php echo get_the_date(); ?></div></div></li><?php endwhile; endif; ?></ul></div>

<div class="row "><h4 class="box_header">Punjabi Video Songs <a class="more homepagemore page_margin_top" href="http://www.videoshungama.com/category/punjabi/">MORE </a></h4><ul class="tvshowclass homepage"><?php query_posts('cat=13&posts_per_page=4'); if(have_posts()): $count=1; while ( have_posts() ) : the_post(); ?><li><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php  $feat_image = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID),'medium' );?><?php if( $feat_image): ?><img src='<?php echo $feat_image[0]; ?>' title='<?php echo get_the_title(); ?>' alt='<?php echo get_the_title(); ?>'><?php endif; ?><span class="post-image-play-button" ></span><?php if(get_field('video_length')): ?><span class="timier" ><?php echo get_field('video_length'); ?></span><?php endif; ?></a><div class="post-title"><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php echo get_the_title(); ?></a><div class="post-date"><span></span><?php echo get_the_date(); ?></div></div></li><?php endwhile; endif; ?></ul></div>

<div class="row"><h4 class="box_header">Hindi Movie Trailers <a class="more homepagemore page_margin_top" href="http://www.videoshungama.com/trailers/hindi-movie-trailers/">MORE </a></h4><ul class="tvshowclass homepage"><?php query_posts('cat=17&posts_per_page=4'); if(have_posts()): $count=1; while ( have_posts() ) : the_post(); ?><li><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php  $feat_image = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID),'medium' );?><?php if( $feat_image): ?><img src='<?php echo $feat_image[0]; ?>' title='<?php echo get_the_title(); ?>' alt='<?php echo get_the_title(); ?>'><?php endif; ?><span class="post-image-play-button" ></span><?php if(get_field('video_length')): ?><span class="timier" ><?php echo get_field('video_length'); ?></span><?php endif; ?></a><div class="post-title"><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php echo get_the_title(); ?></a><div class="post-date"><span></span><?php echo get_the_date(); ?></div></div></li><?php endwhile; endif; ?> </ul></div>
<div class="row"><h4 class="box_header">Telugu Movie Trailers <a class="more homepagemore page_margin_top" href="http://www.videoshungama.com/trailers/telugu-movie-trailers/">MORE </a></h4><ul class="tvshowclass homepage"><?php query_posts('cat=16&posts_per_page=4'); if(have_posts()): $count=1; while ( have_posts() ) : the_post(); ?><li><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php  $feat_image = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID),'medium' );?><?php if( $feat_image): ?><img src='<?php echo $feat_image[0]; ?>' title='<?php echo get_the_title(); ?>' alt='<?php echo get_the_title(); ?>'><?php endif; ?><span class="post-image-play-button" ></span><?php if(get_field('video_length')): ?><span class="timier" ><?php echo get_field('video_length'); ?></span><?php endif; ?></a><div class="post-title"><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php echo get_the_title(); ?></a><div class="post-date"><span></span><?php echo get_the_date(); ?></div></div></li><?php endwhile; endif; ?></ul></div>
<div class="row"><h4 class="box_header">Comedy Videos <a class="more homepagemore page_margin_top" href="http://www.videoshungama.com/comedy-videos/">MORE </a></h4><ul class="tvshowclass homepage"><?php query_posts('cat=19&posts_per_page=8'); if(have_posts()): $count=1; while ( have_posts() ) : the_post(); ?><li><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php  $feat_image = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID),'medium' );?><?php if( $feat_image): ?><img src='<?php echo $feat_image[0]; ?>' title='<?php echo get_the_title(); ?>' alt='<?php echo get_the_title(); ?>'><?php endif; ?><span class="post-image-play-button" ></span><?php if(get_field('video_length')): ?><span class="timier" ><?php echo get_field('video_length'); ?></span><?php endif; ?></a><div class="post-title"><a href="<?php echo get_permalink(); ?>" title="<?php echo get_the_title(); ?>"><?php echo get_the_title(); ?></a><div class="post-date"><span></span><?php echo get_the_date(); ?></div></div></li><?php endwhile; endif; ?></ul></div>
</div></div></div></div><?php get_footer(); ?>