
<?php
require('../connect.php');
    // If the values are posted, insert them into the database.
	$email='';
    if (isset($_POST['email']) && isset($_POST['password'])){
        $username = $_POST['email'];
		$companyName = $_POST['companyName'];		
		$companyAddress = $_POST['companyAddress'];		
		$contact_person = $_POST['contact_person'];
		$mobile = $_POST['mobile'];
		$land_line = $_POST['land_line'];
		$password= $_POST['password'];
		
		
        $password = $_POST['password'];
        $query = "INSERT INTO `company_master` (companyName, companyAddress, Email,  contact_person, mobile, land_line,   passWord) VALUES ('$companyName','$companyAddress','$username','$contact_person','$mobile','$land_line',  '$password' )";
        $result = mysqli_query($connection, $query);
        if($result){
            $smsg = "Company account Created Successfully.";
        }else{
            $fmsg ="Company account  Registration Failed";
        }
    }
    ?>
<html>
<head>
<title>User Registeration</title>
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
      
      <?php if(isset($smsg)){ ?><div class="alert alert-success" role="alert"> <?php echo $smsg; ?> </div><?php } ?>
      <?php if(isset($fmsg)){ ?><div class="alert alert-danger" role="alert"> <?php echo $fmsg; ?> </div><?php } ?>
        <h2 class="form-signin-heading">Please Register</h2>
        <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">@</span>
  <input type="text" name="email" class="form-control" placeholder="Useremail" required>
</div>
        <label for="inputcompanyName" class="sr-only">Company Name</label>
        <input type="text" name="companyName" id="inputcompanyName" class="form-control" placeholder="companyName" required autofocus>
		<label for="inputcompanyAddress" class="sr-only">Company Address</label>
        <input type="text" name="companyAddress" id="inputcompanyAddress" class="form-control" placeholder="companyAddress" required autofocus>
		
		<label for="inputcontact_person" class="sr-only">contact_person</label>
        <input type="text" name="contact_person" id="inputcontact_person" class="form-control" placeholder="contact_person" required autofocus>
		
		<label for="inputmobile" class="sr-only">mobile</label>
        <input type="text" name="mobile" id="inputmobile" class="form-control" placeholder="Mobile" required autofocus>
		
		<label for="inputland_line" class="sr-only">Land Line</label>
        <input type="text" name="land_line" id="inputland_line" class="form-control" placeholder="Land Line" required autofocus>
       
	   <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
     
        <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
        <a class="btn btn-lg btn-primary btn-block" href="login.php">Login</a>
      </form>
</div>
 
</body>
 
</html>