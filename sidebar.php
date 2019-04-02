<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- Sidebar -->
<ins class="adsbygoogle"
     style="display:inline-block;width:336px;height:280px"
     data-ad-client="ca-pub-1518250080154239"
     data-ad-slot="7259666331"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>

<h4 class="box_header">Photo Albums</h4>
<ul class="blog small clearfix">
	<?php $gallery_list_number = $app->get_gallery_list_number(6); foreach($gallery_list_number as $gallery): ?>

	<li class="post"><a href="<?php echo home_base_url(); ?>gallery/<?php echo $gallery['GalleryUrl']; ?>"><h6><?php echo $gallery['GalleryName']; ?></h6></a></li>
	<?php endforeach; ?>
	
</ul>
<a class="more page_margin_top" href="http://news.livevideoshub.com/gallerys">READ MORE</a>
<h4 class="box_header">Category</h4>
<ul class="blog small clearfix">
	<?php foreach($cats as $cat): ?>
	<li class="post">
	<H6>
	<a href="<?php echo home_base_url(); ?>category/<?php echo $cat['Caturl'] ?>/1"><?php echo $cat['CatTitle'] ?></a>
	</H6>
	</li>
	<?php endforeach; ?>
	
</ul>

<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- Main sidebar large -->
<ins class="adsbygoogle"
     style="display:inline-block;width:300px;height:600px"
     data-ad-client="ca-pub-1518250080154239"
     data-ad-slot="5431288735"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
<h4 class="box_header">Latest News</h4>
<ul class="blog small clearfix">
	<?php $cattype = $app->get_number_posts(0,10);  foreach($cattype as $post): ?>
	<li class="post">
	<h6>
	<a href="<?php echo home_base_url(); ?><?php echo $post['PostUrl']; ?>/<?php echo $post['PostID']; ?>"><?php echo $post['PostTitle']; ?></a>
	</h6>
	</li>
	<?php endforeach; ?>
	
</ul>
<a class="more page_margin_top" href="">READ MORE</a>
			
			