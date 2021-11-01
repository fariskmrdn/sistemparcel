<?php

include 'config.php';
session_start();
$consignment = $_GET['consignment'];

$mppID = $_SESSION['idmpp'];
$getMPP = mysqli_query($connect,"SELECT * FROM user_acc WHERE mpp_id = '$mppID'");
$fetchMPP = mysqli_fetch_array($getMPP);

$fetchParcelCons = mysqli_query($connect,"SELECT * FROM inventory WHERE consignment = '$consignment'");
$showData = mysqli_fetch_array($fetchParcelCons);

if (isset($_POST['submit'])) {
    $receiver = $_POST['receiver'];
    $tel = $_POST['tel'];
    $tracking = $_POST['tracking'];
    $courier = $_POST['courier'];
    $time = $_POST['time'];
    $handler = $_POST['handler'];
    $pmethod = $_POST['pmethod'];

    //first command
    $addData = "INSERT INTO `settlements` (`receiver`, `tel`, `consignment`, `courier`, `time`, `handler`, `pmethod`) VALUES ('$receiver', '$tel', '$tracking', '$courier', '$time', '$handler', '$pmethod')";
    $addQuery = mysqli_query($connect,$addData);

    //sec cmd
    $deleteNorm = "DELETE FROM inventory WHERE consignment = '$consignment'";
    $deleteQuery = mysqli_query($connect,$deleteNorm);

    if (!$addQuery || !$deleteQuery) {
        echo "
        <script>
            window.alert('Checkout process unsuccesfully!');
        </script>
        
        ";
    } else {
        echo "
        <script>
            window.alert('Checkout Successfully!');
            window.location = 'dashboard.php';
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
	<title>CHECKOUT PARCEL <?=$consignment?></title>
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
  				<p class="lead padding" style="text-align: center;">CHECKOUT PARCEL</p></p>
                <p><button type="button" class="btn btn-info" onclick="location.href='dashboard.php';"><b>RETURN TO DASBOARD</b></button></p>
  				<hr>
  			</div>
  		</div>

  		<br><br><br><br>
  		
          

            <div class="row mx-auto justify-content-center padding">
			<div class="col-xs-3 col-sm-2 col-md-3 col-lg-3 col-xl-10 padding">
               <table class="table table-responsive table-striped" cellpadding="25">
                   <form method="post">
                   <tr>
                       <td colspan='3' style="text-align:center; font-size: 50px; color:green;"><b><?=$consignment?></b></td>
                   </tr>
                   <tr>
                       <td>Receiver</td>
                       <td>:</td>
                       <td ><input style="width:100%;" readonly type="text" name="receiver" value="<?=$showData['receiver'];?>"></td>
                   </tr>
                   <tr>
                       <td>Tel No</td>
                       <td>:</td>
                       <td><input style="width:100%;" readonly type="text" name="tel" value="<?=$showData['tel'];?>"></td>
                   </tr>
                   <tr>
                       <td>Tracking</td>
                       <td>:</td>
                       <td><input style="width:100%;" readonly type="text" name="tracking" value="<?=$showData['consignment'];?>"></td>
                   </tr>
                   <tr>
                       <td>Courier</td>
                       <td>:</td>
                       <td><input style="width:100%;" readonly type="text" name="courier" value="<?=$showData['courier'];?>"></td>
                   </tr>
                   <tr>
                       <td>Checkout Time</td>
                       <td>:</td>
                       <td><input style="width:100%;"  type="datetime-local" name="time"></td>
                   </tr>
                   <tr>
                       <td>Checked Out by</td>
                       <td>:</td>
                       <td><input style="width:100%;" readonly type="text" name="handler" value="<?=$fetchMPP['name'];?>"></td>
                   </tr>
                   <tr>
                       <td>Payment</td>
                       <td>:</td>
                       <td>
                           <select name="pmethod">
                               <option value="cash">Cash (Pay at Counter)</option>
                               <option value="online">Online Transfer</option>
                           </select>
                       </td>
                   </tr>
                   <tr>
                       <td colspan="3" style="text-align:center; padding: 12px 12px 12px 12px;"><button type="submit" name="submit" class="btn btn-warning" onclick="return confirm('Are you sure to checkout this parcel ?');">CHECKOUT NOW</button></td>
                       
                   </tr>
</form>
               </table>
            </div>
            </div>

</body>

<link rel="stylesheet" href="js/bootstrap.min.js">
</html>
