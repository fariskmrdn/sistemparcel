<?php
include 'config.php';
$get_consignment = $_GET['consignment'];
$delete = mysqli_query($connect, "DELETE FROM inventory_hep WHERE consignment='$get_consignment'");
header("Location: parcelheplisting.php");
exit;
?>