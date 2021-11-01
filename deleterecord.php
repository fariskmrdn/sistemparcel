<?php
include 'config.php';
$get_consignment = $_GET['consignment'];
$delete = mysqli_query($connect, "DELETE FROM inventory WHERE consignment='$get_consignment'");
header("Location: parcel_listing.php");
exit;
?>