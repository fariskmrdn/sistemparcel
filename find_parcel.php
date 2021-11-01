<?php

    include 'config.php';


    date_default_timezone_set("Asia/Kuala_Lumpur");
    $currentDateTime = date('d-m-Y');

    if (isset($_GET['search'])) {
        $find = $_GET['searchbar'];

        $searchQ = "SELECT * FROM inventory WHERE consignment LIKE '%$find%' OR receiver LIKE '%$find%'";
        $findP = mysqli_query($connect,$searchQ) or die ("Query Failed!");

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ADD NEW PARCEL</title>
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
			<div class="col-xs-3 col-sm-2 col-md-3 col-lg-3 col-xl-2 padding">
            <p><button type="button" class="btn btn-primary" onclick="location.href='std_parcel.php';"><b>Search Other Parcel</b></button></p>
			</div>

            <div class="row mx-auto justify-content-center padding">
			<div class="col-xs-3 col-sm-2 col-md-3 col-lg-3 col-xl-10 padding">
               <table class="table table-striped" cellpadding="25" style="margin-top:18px;">
                   <tr>
                       <td>Receiver</td>
                       <td>Tracking No</td>
                       <td>Courier</td>
                       <td>Time Of Arrival</td>
                       <td>Assigned by</td>
                       
                   </tr>
                   
                       <?php
                       
             if (mysqli_num_rows($findP) > 0 ) {
            while ($data = mysqli_fetch_array($findP)) {
                    echo "
                    <tr>
                    <td>".$data['receiver']."</td>
                       <td>".$data['consignment']."</td>
                       <td>".$data['courier']."</td>
                       <td>".$data['arrival']."</td>
                       <td>".$data['assigned']."</td>
                       </tr>
                    ";}
                    ?>
                       
               </table>
            </div>
            </div>

</body>

<link rel="stylesheet" href="js/bootstrap.min.js">
</html>
<?php     
        } else {
            echo "
            <script>
                window.alert('No Records Found!');
                window.location = 'std_parcel.php';
            </script>
            ";
        } 
        }?>