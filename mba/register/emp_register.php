<?php
session_start();
error_reporting(0);

require('../connect.php');
    // If the values are posted, insert them into the database.
	
    if (isset($_POST['submit']))
    {
       		
		    $emp_name = $_POST['emp_name'];		
		    $emp_desg = $_POST['emp_desg'];
		    $emp_mobile = $_POST['emp_mobile'];
        $email=$_POST['email'];
		    $password= $_POST['password'];
		    $password = $_POST['password'];
        $ip=$_SERVER['REMOTE_ADDR'];
        
       
        $query = "INSERT INTO `emp_master`( `emp_name`, `emp_desg`, `emp_mobile`, `email`, `password`, `ip`) VALUES ('$emp_name','$emp_desg','$emp_mobile','$email','$password','$ip')";
        $result = mysqli_query($connection, $query);
        if($result){
            ?>
              <script type="text/javascript">
                alert("account Created Successfully ! Please login");
                location.replace("index.php");
              </script>
            <?php
        }else{
            
            ?>
              <script type="text/javascript">
                alert("account  Registration Failed");
                location.replace("emp_register.php");
              </script>
            <?php
        }
    }
    ?>
<html>
<head>
<title>PresentSir</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="../css/bootstrap.min.css" > 
<!-- Optional theme -->
<link rel="stylesheet" href="../css/bootstrap-theme.min.css" >
<link rel="stylesheet" href="styles.css" > 
<!-- Latest compiled and minified JavaScript -->
<script src="../js/bootstrap.min.js"></script>
</head>
<body>
 
<div class="container">
      <form class="form-signin" method="POST">
      
      <!--<?php if(isset($smsg)){ ?><div class="alert alert-success" role="alert"> <?php echo $smsg; ?> </div><?php } ?>
      <?php if(isset($fmsg)){ ?><div class="alert alert-danger" role="alert"> <?php echo $fmsg; ?> </div><?php } ?>--?>
     <h2 class="form-signin-heading">Please Register</h2>-->
		
        <div class="input-group">
		<div class="col-xs-6 col-md-offset-4 my-5">
  <!-- spam tag--->
  <h1 class="text-center text-primary" >Employee Registration</h1>
  <input type="text" name="emp_name" class="form-control" placeholder="Employee Name" required autofocus >
</div>
<div class="col-xs-6 col-md-offset-4">
  
  <!-- Company id -->
  <label for="inputcompanyId" class="sr-only">Company id</label>
   <input type="hidden" name="companyId" value="<?=$_SESSION['id']?>" class="form-control" placeholder="<?=$_SESSION['companyName'];?>" disabled>
 
		<label for="inputemp_code" class="sr-only">Employee Designation</label>
        <input type="text" name="emp_desg" id="inputcompanyAddress" class="form-control" placeholder="Employee Designation" required autofocus>
		
		<label for="inputemp_name" class="sr-only">Email Id</label>
        <input type="email" name="email" id="inputemp_name" class="form-control" placeholder="Email id" required autofocus>
		
		<label for="inputemp_desg" class="sr-only">Passowrd</label>
        <input type="Password" name="password" id="inputdesg" class="form-control" placeholder="Password" required autofocus>
       
		     
	   <label for="inputPassword" class="sr-only">Mobile Number</label>
        <input type="number" name="emp_mobile" id="inputPassword" class="form-control" placeholder="Mobile Number" required>
     
        <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit" value="submit" >Register</button>
      
      </form>
</div>
 
</body>
 
</html>