<?php
session_start();
include_once("db_connect.php");
// initilize all variables
$params = $columns = $totalRecords = $data = array();
$params = $_REQUEST;
//define index of columns
//$columns = array( 
	0 =>'emp_id',
	1 =>'location_near' ,
	2 => '<a href=\"#\">Print</a>'	
);
$f=$_SESSION['filter'];
$m=$_SESSION['month'];
$where = $sqlTot = $sqlRec = "";
// getting total number records from table without any search
if ($f == 0  AND $m =='00')
{
	$sql = "SELECT id,emp_id,ip,timestamp,month FROM `attend` ORDER BY emp_id DESC";
}
else{
$sql = "SELECT id,emp_id,ip,timestamp,month FROM `attend` WHERE emp_id =". $f ." AND month= " . $m ;
}
$sqlTot .= $sql;
$sqlRec .= $sql;

//if ($f >= 1)
//{
//$sqlRec .=  "WHERE emp_id=".$f ." AND month= ".$m ;	
//}
//else
//{
//$sqlRec .=  " ORDER BY emp_id DESC";
//}
$queryTot = mysqli_query($conn, $sqlTot) or die("database error:". mysqli_error($conn));
$totalRecords = mysqli_num_rows($queryTot);
$queryRecords = mysqli_query($conn, $sqlRec) or die("error to fetch employees data");
// iterate on results row and create new index array of data
while( $row = mysqli_fetch_row($queryRecords) ) { 
	$data[] = $row;
}	
$json_data = array(
		"draw"            => 1,   
		"recordsTotal"    => intval( $totalRecords ),  
		"recordsFiltered" => intval($totalRecords),
		"data"            => $data
		);
// send data as json format
echo json_encode($json_data);  
?>