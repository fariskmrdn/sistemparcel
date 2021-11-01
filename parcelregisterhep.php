<?php

    include 'config.php';
    session_start();
    $idhep = $_SESSION['idhep'];

    $cmdQuery = "SELECT * FROM hep_acc WHERE hep_id = '$idhep'";
    $queryData = mysqli_query($connect,$cmdQuery);
    $dataR = mysqli_fetch_array($queryData);

    date_default_timezone_set("Asia/Kuala_Lumpur");
    $currentDateTime = date('d-m-Y');
    
	if (isset($_POST['add'])) {

		$receiver = $_POST['rName'];
		$telno = $_POST['tel'];
		$consignment = $_POST['cons'];
		$courier = $_POST['courier'];
		$arrival = $_POST['arrival'];
		$hepincharge = $_POST['hep'];

		$insertCmd = "INSERT INTO `inventory_hep` (`receiver`, `tel`, `consignment`, `courier`, `arrival`, `assigned`) VALUES ('$receiver', '$telno', '$consignment', '$courier', '$arrival', '$hepincharge')";
		$insertDB = mysqli_query($connect,$insertCmd);

		if (!$insertDB) {
			echo "
			<script>
			window.alert('There's error occured on adding parcel! Try again...');
			window.location = 'parcelregisterhep.php';
			</script>
			";
		} else {
			echo "
			<script>
			window.alert('Parcel added to system successfully!');
			window.location = 'dashboard_hep.php';
			</script>
			";
			
		}
	}



?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>REGISTER NEW PARCEL</title>
	<link rel="icon" href="images/kvks.png">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body style="backgrounf-color:#f2f2f2;">

<div class="container-fluid padding" style="margin-top: 20px;">

  		<div class="row mx-auto justify-content-center">
  			<div class="col-xs-3 col-sm-2 col-md-3 col-lg-3 col-xl-3 padding">
  				<img src="images/UHEP.png" class="img-fluid" width="850">
  			</div>
  			<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 col-xl-2 padding">
  				<p class="lead padding" style="text-align: center;">REGISTER NEW PARCEL</p></p>
                <p><button type="button" class="btn btn-info" onclick="location.href='dashboard_hep.php';"><b>RETURN TO DASHBOARD</b></button></p>
  				<hr>
  			</div>
  		</div>

  		<br><br><br><br>
  		
          <div class="row mx-auto justify-content-center padding">
			<div class="col-xs-3 col-sm-2 col-md-3 col-lg-3 col-xl-4 padding">
				<form method="POST">
				<table style="" cellpadding="10"  class="table-responsive p-auto justify-content-center">
  					<thead>
  						<tr>
  							<th class="table-primary" scope="col" colspan="3">PARCEL REGISTRATION FORM</th>
  						</tr>
    					<tr>
      						<th scope="col">Receiver Name</th>
      						<th>:</th>
      						<td><input type="text" name="rName" class="form-control" required></td>
      						<td></td>
    					</tr>
    					<tr>
      						<th scope="col">Tel. No</th>
      						<th>:</th>
      						<td><input type="text" name="tel" class="form-control"></td>
    					</tr>
    					<tr>
      						<th scope="col">Tracking No</th>
      						<th>:</th>
      						<td><input type="text" name="cons" class="form-control" required></td>
    					</tr>
    					<tr>
      						<th scope="col">Courier</th>
      						<th>:</th>
      						<td><select name="courier" class="form-control" required>
                                  <option>Select Courier</option>
                                  <option value="J&T Express">J&T Express</option>
                                  <option value="Shopee Express">Shopee Express</option>
                                  <option value="PosLaju">PosLaju</option>
                                  <option value="NinjaVan">NinjaVan</option>
                                  <option value="DHL Commerce">DHL Commerce</option>
                                  <option value="CityLink Express">CityLink Express</option>
                                  <option value="SkyNet Express">SkyNet Express</option>
                                  <option value="GDex">GDex</option>
                                  <option value="Others">Others</option>
                              </select></td>
    					</tr>
    					<tr>
      						<th scope="col">Date of Arrival</th>
      						<th>:</th>
      						<td>
                              <input type="datetime-local" name="arrival" class="form-control">
                            </td>
    					</tr>
						<tr>
      						<th scope="col">Assigned by</th>
      						<th>:</th>
      						<td><input type="text" name="hep" class="form-control" value="<?=$dataR['name'];?>"></td>
    					</tr>
                        <tr>
                            <td>
                                <input type="submit" name="add" class="form-control" value="ADD PARCEL">
                            </td>
                        </tr>
  					</thead>
					</table>
					
			</div>
  					
					</table>
					</form>
			</div>

</body>

<link rel="stylesheet" href="js/bootstrap.min.js">
</html>