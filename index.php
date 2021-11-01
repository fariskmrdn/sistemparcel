<?php

    // include 'config.php';
    // session_start();
    // $idmpp = $_SESSION['idmpp'];

    // $cmdQuery = "SELECT * FROM user_acc WHERE mpp_id = '$idmpp'";
    // $queryData = mysqli_query($connect,$cmdQuery);
    // $dataR = mysqli_fetch_array($queryData);

    // date_default_timezone_set("Asia/Kuala_Lumpur");
    // $currentDateTime = date('d-m-Y');
    
	



?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>e-PARCEL KVKS</title>
	<link rel="icon" href="images/kvks.png">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body bgcolor="#f2f2f2">

<div class="container-fluid padding" style="margin-top: 20px;">

  		<div class="row mx-auto justify-content-center">
  			<div class="col-xs-3 col-sm-2 col-md-3 col-lg-3 col-xl-5 padding">
  				<a href="login_dashboard.php"><img src="images/UHEP.png" class="img-fluid" width="950"></a>
				  <hr>
				  <h2 style="text-align:center;">Sistem e-Parcel KVKS</h2>
				  <hr>
				  <p style="text-align:center;">Sila pilih kategori pengguna</p>
  			</div>
  			
  		</div>

  		<br><br><br><br>
  		

          <div class="container-fluid padding justify-content-center">
			<div class="row text-center padding">
               
				<div class="col-xs-6 col-sm-6 col-md-7">
                    <a style="text-decoration:none;color:black;" href="std_parcel.php">
					<img src="images/btnpelajar.png" class="img-fluid" width="300">
					<br><br>
					<h3></h3>
					<p></p></a>
				</div>
                
				<div class="col-xs-6 col-sm-6 col-md-3">
                    <a style="text-decoration:none;color:black;" href="hep_parcel.php">
					<img src="images/btnpensyarah.png" class="img-fluid" width="300">
					<br><br><br>
					<h3></h3>
					<!-- <p>Search parcel by consignment note or registered name</p> -->
                    </a>
				</div>
				
				

			</div>
		</div>

		<br><br>
<footer style="text-align:center;">
	<p><i>&copy;Hakcipta Unit Hal Ehwal Pelajar, Kolej Vokasional Kuala Selangor</i></p>
	<p><i>System Version 1.0.3</i></p>
</footer>

</body>

<link rel="stylesheet" href="js/bootstrap.min.js">
</html>