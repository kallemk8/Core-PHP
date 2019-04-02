<?php
	if(isset($_POST['addnewmenu'])){
		$MenuName = $_POST['MenuName'];
		$MenuLink = $_POST['MenuLink'];
		$HaveSubMenu = $_POST['HaveSubMenu'];
		$servername = "166.62.27.148";
		$username = "kallemvideos";
		$password = "";
		$dbname = "kallemvideos";
		$conn = new mysqli($servername, $username, "sreekanth", $dbname);
		if ($conn->connect_error) {
		    die("Connection failed: " . $conn->connect_error);
		} 
		$sql = "INSERT INTO Menus (MenuName, MenuLink, HaveSubMenu)
		VALUES ('$MenuName', '$MenuLink', '$HaveSubMenu')";
		if ($conn->query($sql) === TRUE) {
		    echo "<h1>New record created successfully</h1>";

		} else {
		    echo "Error: " . $sql . "<br>" . $conn->error;
		}
		
	}
?>

<?php include('header.php'); ?>
	<div class="container">
		<div class="col-md-12">
			<form action="addmenuitem.php" method="post" enctype="multipart/form-data">
			<div class="form-group">
			    <label for="exampleInputEmail1">Menu Title</label>
			    <input type="text" class="form-control" name="MenuName" >
			</div>
			<div class="form-group">
			    <label for="exampleInputPassword1">Menu Link</label>

			    <input type="text" class="form-control" name="MenuLink" >
			</div>
			<div class="form-group">
			    <label for="exampleInputEmail1">Have Sub Menu</label>
			    <input type="text" class="form-control" name="HaveSubMenu" >
			</div>
			
			
			<div class="form-group">
				<input type="submit" name="addnewmenu" class="btn btn-primary btn-lg">
			</div>
		</div>
	</div>
<?php include('footer.php'); ?>
			
