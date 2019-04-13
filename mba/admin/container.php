<?php session_start()?>
</head>
<body class="">
<div role="navigation" class="navbar navbar-default navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button> 
	<img src="../logo.jpg" width="100px">
          <!--<a href="#" class="navbar-brand">Present Sir</a>-->
		 
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="inactive"><a href="#">Home</a></li>
			  <li class="inactive"><a href="../register/emp_register.php?id=<?=$_SESSION['id']?>">RegisterEmployee</a></li>
			  <li class="inactive"><a href="../register/logout.php">Logout</a></li>
           
          </ul>
         
        </div><!--/.nav-collapse -->
		 
      </div>
    </div>
	<!--<center><h1><?//=$_SESSION['companyName']?></h1></center>-->
	<div class="container" style="min-height:500px;">
	<div class=''>
	</div>