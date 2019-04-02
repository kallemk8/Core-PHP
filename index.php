<?php include('functions.php'); ?>
<!DOCTYPE HTML>
<html lang = "en">
	<head>
		<title>Latest Telugu Mp3 Songs Download 2016 | 2016 Hindi audio Songs Download | Download English Pop albums Songs -  Livesongshub</title>
		<meta name="description" content="New Telugu Movie Audio Songs 2016, Listen Telugu Movie Mp3 Song, Download Hindi Movie Audio songs 2016, Free to Download English Pop Songs 2016 - Livesongshub"/>
		<meta name="robots" content="noodp"/>
		<meta name="keywords" content="Latest Telugu Mp3 Songs Download 2016, 2016 Hindi Mp3 Songs Download, Download English Mp3 Songs, Latest audio songs 2016, New Movie mp3 songs 2016- Livesongshub"/>
		<meta name="author" content="Livevideoshub">
		<?php include('styles.php'); ?>
	</head>
	<body ng-app='Drinkle'>
	<div class="site_container">
	<?php include('menu.php'); ?>
	<div class="page">
		<div class="page_layout page_margin_top clearfix">
		<div class="row">
			<div class="text-center tags-search">SEARCH BY ALPHABET </div>
			<ul id="breadcrumb" class="clear alphabet-list">
				<li> <a href="A">A</a></li>
				<li><a href="B">B</a></li>
				<li><a href="C">C</a></li>
				<li><a href="D">D</a></li>
				<li><a href="E">E</a></li>
				<li><a href="F">F</a></li>
				<li><a href="G">G</a> </li>
				<li><a href="H">H</a> </li>
				<li><a href="I">I</a> </li>
				<li><a href="j">J</a> </li>
				<li><a href="K">K</a> </li>
				<li><a href="L">L</a> </li>
				<li><a href="M">M</a> </li>
				<li><a href="N">N</a> </li>
				<li><a href="O">O</a> </li>
				<li><a href="P">P</a> </li>
				<li><a href="Q">Q</a> </li>
				<li><a href="R">R</a> </li>
				<li><a href="S">S</a> </li>
				<li><a href="T">T</a> </li>
				<li><a href="U">U</a> </li>
				<li><a href="V">V</a> </li>
				<li><a href="W">W</a> </li>
				<li><a href="X">X</a> </li>
				<li><a href="Y">Y</a> </li>
				<li><a href="Z">Z</a></li>
				<li><a href="1-9">1-9</a></li>
	    	</ul>
		</div>
		<div class="row">
			<div class="column column_2_3">
				<div class="row ">
					<div class="column column_1_2" style="text-align:center;">
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
					<div class="column column_1_2" ng-controller='Dashboarddisplay as store'>
						
						<h4 class="box_header">LATEST SONGS</h4>
						<ul class="blog small clearfix">
							<li class="post" ng-repeat="tasks in store.tasks ">
							<h6>
								<span style="color:red;">*</span> <a href="<?php home_base_url(); ?>{{tasks.post_url}}/{{tasks.ID}}">{{tasks.movie_name}}</a>
							</h6>
							</li>
						</ul>
						<a class="more page_margin_top" href="http://news.livevideoshub.com/category/political-news/1">READ MORE</a>
					</div>
				</div>
			</div>
			<div class="column column_1_3">
				<h4 class="box_header">MUST DOWNLOAD ALBUMS</h4>
				<ul class="most-downloads" ng-controller='Dashboarddisplay as store'>
					
					<li ng-repeat="tasks in store.tasks">
						<a href="<?php home_base_url(); ?>{{tasks.post_url}}/{{tasks.ID}}">
							<img src="<?php echo home_base_url(); ?>admin/{{tasks.postimage}}" width="100" height="100" />
						</a>
					</li>
					
				</ul>
				<a class="more page_margin_top" href="http://news.livevideoshub.com/category/reviews/1">READ MORE</a>
			</div>
		</div> 
		<div class="row">
			<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- Leaderboard -->
<ins class="adsbygoogle"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-1518250080154239"
     data-ad-slot="7761197939"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
		</div>
	</div>
	
</div>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script type="text/javascript">
	$('.composs-pager-button').click(function(){
		var more = $(this).attr('data-id');
		
		$.post("loadmore.php",{
	        more:more
	        
	      },function(data,status){
	      	
	        if(data!=0){
	          $('.append').html(data);
	          $('.no-results').html('');
	        }
	        else{
	          $('.append').html("");
	          $('.no-results').html('<h2>No Results Found..</h2>');
	        }
	      
	      });
		
});
</script>
<?php include('footer.php'); ?>