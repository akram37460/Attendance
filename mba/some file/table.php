echo "<tr><td>" . $row["id"]. "</td><td>" . $row["lat_long"]. "</td><td> " . $row["ip"]. "</td><td> " . $location. "</td><td>" . $row["timestamp"]. "</td><td>".$row["month"]."</td></tr>";
							echo "<tr><td>" . $row["id"]. "</td><td>"  . $row["timestamp"]. "</td><td>".$row["month"]."</td></tr>";



							$result=mysqli_query($connection,$sql);
$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
$sql1="SELECT company_master.id,company_master.companyName, emp_master.company_id FROM company_master , emp_master WHERE emp_master.company_id=company_master.company_id";
$result1=mysqli_query($connection,$sql1);
$result=mysqli_query($connection,$sql);
$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
$row=mysqli_fetch_array($result,MYSQLI_ASSOC);


<span class="input-group-addon" id="basic-addon1"><h3><?=$_SESSION['companyName'];?><br>Register</h3></span>

<label for="inputcompanyId" class="sr-only">Company id</label>
   <input type="hidden" name="companyId" value="<?=$_SESSION['id']?>" class="form-control" placeholder="<?=$_SESSION['companyName'];?>" disabled>




   //3. If the form is submitted or not.
//3.1 If the form is submitted
if (isset($_POST['emali']) and isset($_POST['password'])){
//3.1.1 Assigning posted values to variables.
$username = $_POST['email'];
$password = $_POST['password'];
//3.1.2 Checking the values are existing in the database or not
$query = "SELECT * FROM `emp_master` WHERE emailid='$u' and passWord='$password'";
 
$result = mysqli_query($connection, $query) or die(mysqli_error($connection));
$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
$count = mysqli_num_rows($result);
//3.1.2 If the posted values are equal to the database values, then session will be created for the user.
if ($count == 1){
$_SESSION['username'] = $username;
}else{
//3.1.3 If the login credentials doesn't match, he will be shown with an error message.
$fmsg = "Invalid Login Credentials.";
}
}
//3.1.4 if the user is logged in Greets the user with message
if (isset($_SESSION['username'])){
$username = $_SESSION['username'];
//echo "Hai " . $username . "";
$id=$row["emp_id"];


include "./connect.php";
$sql="SELECT id,emp_name,emp_desg,company_id FROM emp_master WHERE emp_id='".$_SESSION['emp_id']."'";
$result=mysqli_query($connection,$sql);
$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
$sql1="SELECT company_master.id,company_master.companyName, emp_master.company_id FROM company_master , emp_master WHERE emp_master.company_id=company_master.company_id";
$result1=mysqli_query($connection,$sql1);
$result=mysqli_query($connection,$sql);
$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
//printf ("%s (%s)\n",$row["emp_name"],$row["emp_desg"]);
?>
		