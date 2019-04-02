

	<script src="https://code.jquery.com/jquery-1.11.3.js"></script>

<script type="text/javascript">
	var video_id='WasaUj0sjto';

$.getJSON('http://gdata.youtube.com/feeds/api/videos/'+video_id+'?v=2&alt=jsonc',function(data,status,xhr){
    alert(data.data.title);
});

</script>