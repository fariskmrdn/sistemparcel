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
	<title>ON HOLD PARCEL</title>
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
  				<p class="lead padding" style="text-align: center;">PARCEL LISTING</p></p>
                <p><button type="button" class="btn btn-info" onclick="location.href='dashboard.php';"><b>RETURN TO DASHBOARD</b></button></p>
                <p><button type="button" class="btn btn-success" onclick="location.href='delivered_parcel.php';"><b>PARCEL DELIVERED</b></button></p>
  				<hr>
  			</div>
  		</div>

  		<br><br><br><br>
  		
          <div class="row mx-auto justify-content-center padding">
			<div class="col-xs-3 col-sm-2 col-md-3 col-lg-3 col-xl-10 padding">
            <table class="table table-striped" cellpadding="25">
                   <tr>
                   <th>No</td>
                        <th>Receiver</td>
                       <th>Tel No.</td>
                       <th>Consignment</td>
                       <th>Courier</td>
                       <th>Time Of Arrival</td>
                       <th>Assigned by</td>
                       <th colspan="2">Admin Action</th>
                   </tr>
                   <?php 
                   
                   $listParcel = "SELECT * FROM inventory ORDER BY arrival DESC";
                   $findList = mysqli_query($connect,$listParcel);
                    $bil =1;

                    while ($list = mysqli_fetch_array($findList)) {
                        echo "
                        <tr>
                            <td>".$bil++."</td>
                            <td>".$list['receiver']."</td>
                            <td>".$list['tel']."</td>
                            <td>".$list['consignment']."</td>
                            <td>".$list['courier']."</td>
                            <td>".$list['arrival']."</td>
                            <td>".$list['assigned']."</td>
                            <td><a class='btn btn-success' href='checkout.php?consignment=".$list['consignment']."'>CHECKOUT</a></td>
                            <td><a class='btn btn-danger' onclick=\"return confirm('Are you sure to delete this parcel? Be advised this parcel will be deleted permanently!');\" href='deleterecord.php?consignment=".$list['consignment']."'>DELETE</a></td>
                        </tr>
                        ";
                    }
                   
                   ?>
                
               </table>
			</div>

           

</body>

<link rel="stylesheet" href="js/bootstrap.min.js">
</html>
