<?php

    include 'config.php';
    session_start();

    if (isset($_POST['login'])) {
	$idmpp = $_POST['idmpp'];
	$pswd = $_POST['pswd'];

	$SQL = "SELECT * FROM user_acc WHERE mpp_id ='$idmpp' AND password ='$pswd'";
	$querySQL = mysqli_query($connect,$SQL);
	$Auth = mysqli_num_rows($querySQL);

	if ($Auth==1) {
		$_SESSION['idmpp'] = $idmpp;
		header("Location: dashboard.php");
	} else {
		echo "<script>window.alert('ID MPP or Password Wrong!');</script>";
	}

}
	



?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>LOG MASUK SISTEM</title>
    <link rel="icon" href="images/favicon.png">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<link href="signin.css" rel="stylesheet">

<body class="text-center">

<main class="form-signin">
  <form method=post>
    <img class="mb-4" src="images/LOGO MPP.png" alt="" width="350px">
    <h1 class="h3 mb-3 fw-normal">SISTEM PARCEL MPP</h1>

    <div class="form-floating">
      <input name="idmpp" type="text" class="form-control" id="floatingInput" placeholder="Masukkan ID MPP">
      <label for="floatingInput">Masukkan ID MPP</label>
    </div>
    <div class="form-floating">
      <input  name="pswd" type="password" class="form-control" id="floatingPassword" placeholder="Masukkan Katalaluan">
      <label for="floatingPassword">Katalaluan</label>
    </div>

   
    <button class="w-100 btn btn-lg btn-primary" type="submit" name="login">Sign in</button>
    <p class="mt-5 mb-3 text-muted">&copy; Majlis Perwakilan Pelajar Kolej Vokasional Kuala Selangor Sesi 2021 - 2022</p>
  </form>
</main>

</body>
<link rel="stylesheet" href="js/bootstrap.min.js">
</html>