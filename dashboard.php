<?php

    include 'config.php';
    session_start();
    $idmpp = $_SESSION['idmpp'];

    $cmdQuery = "SELECT * FROM user_acc WHERE mpp_id = '$idmpp'";
    $queryData = mysqli_query($connect,$cmdQuery);
    $dataR = mysqli_fetch_array($queryData);

    date_default_timezone_set("Asia/Kuala_Lumpur");
    $currentDateTime = date('d-m-Y');
    
	



?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?=$dataR['name'];?> DASHBOARD</title>
	<link rel="icon" href="images/favicon.png">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body bgcolor="#f2f2f2">

<div class="container-fluid padding" style="margin-top: 20px;">

  		<div class="row mx-auto justify-content-center">
  			<div class="col-xs-3 col-sm-2 col-md-3 col-lg-3 col-xl-3 padding">
  				<img src="images/LOGO MPP.png" class="img-fluid" width="850">
  			</div>
  			<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 col-xl-2 padding">
  				<p class="lead padding" style="text-align: center;">WELCOME BACK<p><?=$dataR['name'];?></p></p>
                <p>Today is <?=$currentDateTime?></p>
                <p><button type="button" class="btn btn-info" onclick="location.href='logout.php';"><b>LOGOUT</b></button></p>
  				<hr>
  			</div>
  		</div>

  		<br><br><br><br>
  		

          <div class="container-fluid padding justify-content-center">
			<div class="row text-center padding">
               
				<div class="col-xs-6 col-sm-6 col-md-4">
                    <a style="text-decoration:none;color:black;" href="new_form.php">
					<img src="images/add.png" class="img-fluid" width="200">
					<br><br>
					<h3>ADD ON / NEW PARCEL</h3>
					<p>Add new parcel or item into the system</p></a>
				</div>
                
				<div class="col-xs-6 col-sm-6 col-md-4">
                    <a style="text-decoration:none;color:black;" href="search.php">
					<img src="images/search.png" class="img-fluid" width="100">
					<br><br><br>
					<h3>SEARCH PARCEL</h3>
					<p>Search parcel by consignment note or registered name</p>
                    </a>
				</div>
				<div class="col-sm-6 col-md-4">
                    <a style="text-decoration:none;color:black;" href="parcel_listing.php">
					<img src="images/parcel.png" class="img-fluid" width="100">
					<br><br><br>
					<h3>VIEW PARCEL</h3>
					<p>View on hold or generate new list of unretrieved parcel</p>
                    </a>
				</div>
				

			</div>
		</div>

		<br><br><br><br><br>
<footer>
	<p><i>System Version 1.0.3</i></p>
</footer>

</body>

<link rel="stylesheet" href="js/bootstrap.min.js">
</html>