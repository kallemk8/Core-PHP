<?php 
include('functions.php');
	$more = $_POST['more'];
	$servername = "166.62.27.148";
	$username = "kallemvideos";
	$password = "";
	$dbname = "kallemvideos";
	$conn = new mysqli($servername, $username, "sreekanth", $dbname);
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	$sql = "SELECT * FROM DailyPost ORDER BY PostID DESC"; 
	$res = $conn->query($sql);

  if ($res->num_rows != 0) {
  	while($r = mysqli_fetch_array($res,MYSQLI_ASSOC)) {
		$contentpart = $r['PostContent'];
		$url = home_base_url().$r['PostUrl']."/".$r['PostID'];
		$imageurl = home_base_url()."/admin/".$r['ImageUrl'];
		echo "<div class='item'><div class='item-header'><a href='".$url."'><img src='".$imageurl."' /></a></div><div class='item-content'><h2><a href='".$url."'>".$r['PostTitle']."</a></h2><p>".substr($contentpart,'0','170')."...</p></div></div>";
	}
  }else {
    echo "0";
  }
?>