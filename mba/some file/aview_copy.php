<?php 
session_start();
error_reporting(0);
include "./connect.php";
if ($_REQUEST['filter']==''){
	header ('Location: ./register/index.php');
}
$_SESSION['emp_id']=$_REQUEST['filter'];
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
		<center>
<div class="container">

  <center> <img src="./logo.jpg"><h2> <?php print ($row1["companyName"]);?></h2></center> 
<!--<center><h2> <?php //print ($row1["companyAddress"]);?></h2></center> -->  
 <center><h2> <?php printf ("%s (%s)\n",$row["emp_name"],$row["emp_desg"]);?></h2></center>
 <?php date_default_timezone_set('asia/kolkata'); $ip = $_SERVER['REMOTE_ADDR'] ;?>
  <p><?//=date("Y-m-d H:i:s")?></p>
  <form class="form-inline" action="attend.php">
    <div class="form-group">
      <!--   <label class="sr-only" for="date">Location IP : <?//=$ip?></label>-->
      <button type="submit" name='ip' value='<?=$ip?>' class="btn btn-default">PresentSir</button></br>
	<br>  <label class="sr-only" for="date">ATTENDANCE REGISTER</label>
  </form>
</div>


</center>

<style>
table {
    border-collapse: collapse;
    width: 70%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {background-color: #f2f2f2;}
</style>
	<center> <a href="./register/logout.php">LogOut</a></center>
<table border='1' align='center' >
        <thead>
            <tr>
                <th>Id</th>
                <th>LatLong</th>
				<th>IP</th>
				<th>location_near</th>
				<th>timeStamp</th>
				<th>Month</th>
            </tr>
        </thead>
        <tbody>
        <?php
		$filter=$_REQUEST['filter'];
	
      $sql = "SELECT * FROM attend WHERE emp_id = '" . $filter ."' order by timestamp DESC";
	
				$result = $connection->query($sql);
			
				if ($result->num_rows > 0) {
					// output data of each row
					while($row = $result->fetch_assoc()) {
						$location="<a href ='https://maps.google.com/?q=".$row["lat_long"]."'><img src='map.png' width=50 height=50></a>";
						?>

						<tr>
							<td><?php echo $row['id']; ?></td>

							<td><?php echo $row["lat_long"]; ?></td>

							<td><?php echo $row["ip"]; ?></td>

							<td><?php echo $location ?></td>

							<td><?php echo"Date  ". $row["timestamp"] ?></td>

							<td><?php echo $row["month"]; ?></td>
						</tr>

						<?php
					}
				} else {
					echo "0 results";
				}
				$connection->close();
            ?>
			
            </tbody>
            </table>

		