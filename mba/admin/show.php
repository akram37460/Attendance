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
      <img src="../logo.jpg">
      <h1 class="text-center text-info"> All Employee Attendance here</h1>
  <!--
  <form method="POST" action="">
    <h1 class="form-signin-heading"> Admin Login</h1>
    <img src="../logo.jpg">
        <table class="table table-striped table-hover">
        <tr>
          <td>Search By Date</td>
          <td><input class="form-control" id="uname" type="search" name="search" required="" placeholder="Search" ></td>
        </tr>
        <tr>
          <td></td>
          <td><input class="btn btn-primary" type="submit" name="search" value="search"></td>
        </tr>
      </table>
      </form>
  --->
  <?php
  if(isset($_POST['search']))
  {
                $date=$_POST['search'];
                ?>
                  <table class="table">
              <tr>
                <th>Emp_Name</th>
                <th>Emp_Desgition</th>
                <th>Time</th>
                <th>Date</th>
                <th>ip</th>
              </tr>
                <?php
                $result=mysqli_query($conn,"SELECT * FROM `attend` WHERE year='$date'");
                if($result)
                {
                  while($row=mysqli_fetch_assoc($result))
                      {
                        ?>
                        <tr>
                          <td><?php echo $row['emp_name']; ?></td>
                          <td><?php echo $row['emp_desg']; ?></td>
                          <td><?php echo $row['time']; ?></td>
                          <td><?php echo $row['year']; ?></td>
                          <td><?php echo $row['ip']; ?></td>
                        </tr>
                        <?php
                      }

                }
                else
                {
                  echo "<p class='bg-info' text-center>Please enter the currect formate of date</p>";
                }
             
  ?>
</table>
<?php
  }
  else
  {
                ?>
                  <table class="table">
              <tr>
                <th>Emp_Name</th>
                <th>Emp_Desgition</th>
                <th>Time</th>
                <th>Date</th>
                <th>ip</th>
              </tr>

                <?php
                 $result=mysqli_query($conn,"SELECT * FROM `attend`");
  while($row=mysqli_fetch_assoc($result))
  {
              ?>
              <tr>
                <td><?php echo $row['emp_name']; ?></td>
                <td><?php echo $row['emp_desg']; ?></td>
                <td><?php echo $row['time']; ?></td>
                <td><?php echo $row['year']; ?></td>
                <td><?php echo $row['ip']; ?></td>
              </tr>
              <?php
  }

  ?>
</table>  
<?php
  }
 ?>
</body>
</html>
