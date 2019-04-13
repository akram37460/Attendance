<?php
session_start();
if(isset($_SESSION['id']))
{
	?>
	<!DOCTYPE html>
	<html>
	<head>
		<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	</head>
	
	<body class="container ">
		<?php include('admin/header.php'); ?>
		
  		<form class="form" method="post" action="attend.php">
  			<div class="row">
  				<br><br><br><br><br><br><br><br>
    <div style="text-align:center">  
    <button class="btn btn-primary"  onclick="fun()" >PresentSir</button>
</div>
    
  </div>
  		</form>
	</body>
	<script type="text/javascript">
		function fun()
		{
			alert('Your attendance mark successfully')
			
		}
	</script>

	</html>
	<?php
}
else
{
 	header('location:register/index.php');
}
include('admin/footer.php');
?>