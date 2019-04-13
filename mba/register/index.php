<?php  //Start the Session
session_start();
 require('../connect.php');

 
//3.2 When the user visits the page first time, simple login form will be displayed.

?>
<html>
<head>
	<title>PRESENT PLEASE</title>
	
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
      
        <img src="../logo.jpg">
	  <h2 class="form-signin-heading">Employee Login</h2><br>
        <div class="input-group">
	  <span class="input-group-addon" id="basic-addon1">@</span>
	  <input type="text" name="email" class="form-control" placeholder="Useremail@presentsir.in" required>
	</div><br>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required><br>
        <button class="btn btn-primary" type="submit" value="submit" name="submit">Login</button>
        <a href="emp_register.php" class="btn btn-primary">Registration</a>

        <a href="../admin/index.php" class="btn btn-primary">Admin Login</a>
        
      <!--  <a class="btn btn-lg btn-primary btn-block" href="emp_register.php">Register</a>-->
      </form>
<?php

if(isset($_POST['submit']))

 {
  
  $email=$_POST['email'];
 
  $password=$_POST['password'];
 
  $result=mysqli_query($connection,"SELECT * FROM `emp_master` WHERE email='$email' AND password='$password'");
  //print_r($result);

      if(mysqli_num_rows($result)>0)
      {
        $row=mysqli_fetch_assoc($result);
        $_SESSION['id']=$row['id'];
        header('location:../aview.php');
      }
      else
      {
        ?>
        <script type="text/javascript">
          alert( " Your email or password is wrong please try again ");
        </script>
        <?php
      }

  

 
}

?>
</div>

</body>

</html>
