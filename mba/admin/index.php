<?php include('db_connect.php'); ?>
<!DOCTYPE html>
<html>
<head>
  <title>Admin Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body class="container">
  <?php
        if(isset($_POST['login']))
        {
          $email=$_POST['email'];
          $password=$_POST['password'];
          $result=mysqli_query($conn,"SELECT * FROM `company_master` WHERE email='$email' AND password ='$password'");
          
          if(mysqli_num_rows($result))
          {
            header('location:show.php');
          }
          else
          {
            ?>
            <script type="text/javascript">
              alert('Your Password or Email is wrong');
            </script>
            <?php
          }
          
        }
      ?>
  <form method="POST" action="">
    <h1 class="form-signin-heading"> Admin Login</h1>
    <img src="../logo.jpg">
        <table class="table table-striped table-hover">
        <tr>
          <td>Email</td>
          <td><input class="form-control" id="uname" type="text" name="email" required="" placeholder="Useremail@presentsir.in" ></td>
        </tr>
        <tr>
          <td>Password</td>
          <td><input class="form-control" id="email" type="Password" name="password" required="" placeholder="Password" ></td>
        </tr>
        
        <tr>
          <td></td>
          <td><input class="btn btn-primary" type="submit" name="login" value="login"></td>
        </tr>
      </table>
      </form>

</body>
</html>