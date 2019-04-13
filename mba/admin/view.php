<?php 
session_start();
error_reporting(0);
include('header.php');
include('../connect.php');
$filter=0;
$filter=$_REQUEST['filter'];
$_SESSION['filter']=$filter;
$_SESSION['month']=$_REQUEST['month'];
//print_r($_SESSION);
?>
<title>PresentSir</title>
<link rel="stylesheet" type="text/css" href="../js/datatables.min.css"/>
 
<script type="text/javascript" src="../js/datatables.min.js"></script>
<script type="text/javascript" src="script/script.js"></script>
<?php include('container.php');?>
<style>
 .dataTables_length {
  	margin-top:20px;
  }
  div.dt-buttons {
    position: relative;
    float: left;
    margin-left: 20px;
	margin-top:12px;
	font-size:16px;
	font-weight:bold;
 }
 .dataTables_filter {
	 margin-top:20px;
 }
</style>
<div class="container">
<center><h1><?=$_SESSION['companyName']?></h1>
	<!--<h2>Present Sir</h2>--></center>
	<div class="row">
		<div class="col-xs-2 col-md-offset-3">
	 <form action ="" Method = "GET">
<?php 

$query = mysqli_query($connection,"SELECT `emp_id` ,`emp_name` FROM `emp_master` ");
//$query_display = mysqli_query($connection,"SELECT `id` ,`emp_name` FROM `emp_master`");
echo '<select name="month" id="inputid" class="form-control" placeholder="month" required autofocus>';
echo count($query);
$month=array("00","01","02","03","04","05","06","07","08","09","10","11","12");
$month_name=array("All Months","Jan","Feb","MAR","APR","MAY","JUN","JUL","AUG","SEP","OCT","NOV","DEC");
// echo "<option value='". "0"."'>"."All Month"
// .'</option>';
//while($row=mysqli_fetch_array($query))
	for ($i=0;$i<=12;$i++)
{
    echo "<option value='". $month[$i]."'>".$month_name[$i]
 .'</option>';
}
echo '</select>';
echo '</div>';
echo '<div class="col-xs-2 ">';
echo '<select name="filter" id="inputid" class="form-control" placeholder="Employee ID" required autofocus>';

    echo "<option value='". "0"."'>"."All"
 .'</option>';
while($row=mysqli_fetch_array($query))
{
    echo "<option value='". $row['emp_id']."'>".$row['emp_name']
 .'</option>';
}
echo '</select>';
?>
</div><div class="col-xs-2">
<input class="form-control"  type="submit" value="submit"></div>
		<table id="example" class="display" width="100%" cellspacing="0">
        <thead>
            <tr>
                 <th data-column-id="id" data-type="numeric">id</th>
                <th data-column-id="emp_id">Emp_id</th>
				<th data-column-id="ip">IP</th>
				<th data-column-id="timestamp">TimeStamp</th>
                <th data-column-id="month">Month</th>
				<!--<th data-column-id="timestamp">TimeStamp</th>
                <th data-column-id="month">Month</th>-->
            </tr>
        </thead>
 
        
    </table>
    </div>
      </div>

    </div>

<script type="text/javascript">
$( document ).ready(function() {
	$("#employee_grid").bootgrid({
		ajax: true,
		post: function ()
		{
			/* To accumulate custom parameter with the request object */
			return {
				id: "b0df282a-0d67-40e5-8558-c9e93b7befed"
			};
		},
		url: "response.php",
		formatters: {
			
		}
   });
});
</script>

<?php include('footer.php');?>

