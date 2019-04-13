<?php 
session_start();
error_reporting(0);
include "connect.php";
date_default_timezone_set('asia/kolkata');
 // echo date("Y-m-d H:i:s");
$filename="newfile.txt";
$array = explode(";", file_get_contents($filename));
?>
		<!--<div id="geo" class="geolocation_data"></div>
		<script type="text/JavaScript" src="geo.js"></script>-->
<?php

//print_r($array);

//echo $_REQUEST['ip'];
    // $ip = $_SERVER['REMOTE_ADDR'];
	 $ip="10.0.0.5";
//print "<pre>";
//print_r($_SESSION);
//session_destroy();

//if (isset($_REQUEST['ip'])) {
 //$connection = new mysqli("localhost", "adisolut_attenu", "vpQO92y0P8ys", "adisolut_attendence");
// $connection = new mysqli("localhost", "root", "", "presentsir");
// check connection 
//if (mysqli_connect_errno()) {
//    printf("Connection failed: %s", mysqli_connect_error());
//   exit();
//	}
	//echo "Connected ...";
$eid =	$_SESSION['emp_id'];
$mnth=date('m');
 $query="INSERT INTO  `attend` (`emp_id` ,`lat_long`,`loaction_near`,`ip`,`timestamp`,`month`) VALUES ('$eid','$array[0],$array[1]','$array[2]','$ip',NOW(),'$mnth')";
mysqli_query($connection, $query ) ;
 //close DB-connection 
mysqli_close($connection) ;
print ("<center><h2>Your attendance for the day has been marked </h2>");
if ($eid != ''){
print ("<a href='./register/logout.php'>Logout</a></center>");
}
else
{
	print ("<a href='index.php?filter=$eid'>Redo it</a></center>");
	
}
//}
?>
