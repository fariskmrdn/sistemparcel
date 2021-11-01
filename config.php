<?php

    $SERVER_PORT = '127.0.0.1';
    $SERVER_USER = 'root';
    $SERVER_PASSWORD = '';
    $SYSTEMDB = 'parcel_system';

    $connect = mysqli_connect($SERVER_PORT,$SERVER_USER,$SERVER_PASSWORD,$SYSTEMDB);

    if (!$connect) {
        header("Location: occured_error.html");
    } 

?>