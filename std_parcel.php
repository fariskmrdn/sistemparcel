<?php

    include 'config.php';

    date_default_timezone_set("Asia/Kuala_Lumpur");
    $currentDateTime = date('d-m-Y');
   
       

            
        
    



?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>SEARCH STUDENT PARCEL</title>
    <link rel="icon" href="images/favicon.png">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body style="backgrounf-color:#f2f2f2;">

<div class="container-fluid padding" style="margin-top: 20px;">

  		<div class="row mx-auto justify-content-center">
  			<div class="col-xs-3 col-sm-2 col-md-3 col-lg-3 col-xl-3 padding">
  				<img src="images/LOGO MPP.png" class="img-fluid" width="850">
  			</div>
  			<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 col-xl-2 padding">
  				<p class="lead padding" style="text-align: center;">SEARCH STUDENT PARCEL</p></p>
                <p><button type="button" class="btn btn-info" onclick="location.href='index.php';"><b>RETURN TO MAIN MENU</b></button></p>
  				<hr>
  			</div>
  		</div>

  		<br><br><br><br>
  		
          <div class="row mx-auto justify-content-center padding">
			<div class="col-xs-3 col-sm-2 col-md-3 col-lg-3 col-xl-3 padding">
				<form method="GET" action="find_parcel.php" >
                    <input type="text" class="form-control" name="searchbar" placeholder="Enter Tracking Number or Search By Name">
                    <input type="submit"  class="btn btn-warning" value="Search Parcel" name="search">
                </form>
                <p style="text-align:center;"><br><br>System can only search one parcel at a time!</p>
			</div>


</body>

<link rel="stylesheet" href="js/bootstrap.min.js">
</html>
