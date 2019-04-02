var app=angular.module('Drinkle',[]);
app.controller('Dashboarddisplay', ["$http", function($http){
	var store = this;
	$http.get('../songs.php').success(function(data){
		store.tasks=data;
		//alert(data);
	});
}]);
app.controller('Singlepost', ["$http", function($http){
	var store = this;
	$http.get('http://www.audio.livevideoshub.com/songs.php?postid=<?php echo $postid; ?>').success(function(data){
		store.tasks=data;
		
	});
}]);
app.controller('Singlesongs', ["$http", function($http){
	var store = this;
	$http.get('http://www.audio.livevideoshub.com/singlesongs.php?movieid=<?php echo $postid; ?>').success(function(data){
		store.tasks=data;
		
	});
}]);

