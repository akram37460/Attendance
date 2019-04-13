<!DOCTYPE html>
<html>
<head>
   <title>PHP - Jquery Datatables Example</title>
   <script type="text/javascript" src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
   <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
   <script type="text/javascript" charset="utf8" src="https://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
</head>
<body>


<div class="container">
  <h2>PHP - Jquery Datatables Example</h2>
  <table id="my-example">
    <thead>
      <tr>
          <th>id</th>
          <th>emp_id</th>
          <th>ip</th>
      </tr>
    </thead>
  </table>
</div>


</body>


<script type="text/javascript">
  $(document).ready(function() {
      $('#my-example').dataTable({
        "bProcessing": true,
        "sAjaxSource": "d1.php",
        "aoColumns": [
              { mData: 'id' } ,
              { mData: 'emp_id' },
              { mData: 'ip' }
            ]
      });  
  });
</script>
</html>