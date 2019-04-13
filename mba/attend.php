<?php 
session_start();
include "./connect.php";
$id= $_SESSION['id'];
error_reporting(0);
include "connect.php";
$time=date_default_timezone_set('asia/kolkata');
 // echo date("Y-m-d H:i:s");


 
 $sql="SELECT * FROM `emp_master` WHERE id='$id'";
 $result=mysqli_query($connection,$sql);
 //print_r($result);
 if(mysqli_num_rows($result)>0)
 {
 	$row=mysqli_fetch_assoc($result);

 	$emp_name=$row['emp_name'];

 	$emp_desg=$row['emp_desg'];

 	$ip=$row['ip'];

 	$time=date("h:i:s a");
 	
 	$mnth=date('d-m-y');
 	$qur=mysqli_query($connection,"INSERT INTO `attend`( `emp_name`, `emp_desg`, `time`, `date`, `ip`) VALUES ('$emp_name','$emp_desg','$time','$mnth','$id')");

 	
 }
 header('location:register/index.php');

?>
