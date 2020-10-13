<?php require('config.php');
session_start();

if (isset($_POST['inputEmail'])){
	$inputEmail = stripslashes($_REQUEST['inputEmail']);
	$inputEmail = mysqli_real_escape_string($conn, $inputEmail);
	$inputPassword = stripslashes($_REQUEST['inputPassword']);
	$inputPassword = mysqli_real_escape_string($conn, $inputPassword);
  $query = "SELECT * FROM `inscriptions` WHERE email='$inputEmail' and pass='".hash('sha256', $inputPassword)."'";
	$result = mysqli_query($conn,$query) or die(mysql_error());
	$rows = mysqli_num_rows($result);
	if($rows==1){
    $_SESSION['email'] = $inputEmail;
    $query = "SELECT * FROM acteurs WHERE email='$inputEmail'";
    $result = mysqli_query($conn, $query) or die(mysql_error());
    $row = $result->fetch_assoc();
    $_SESSION['nom'] = $row['nom'];
    $_SESSION['prenoms'] = $row['prenoms'];
	  header("Location: index.php");
	}else{
		$message = "Le nom d'utilisateur ou le mot de passe est incorrect.";
	}
}
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
   
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="../css/signin.css" rel="stylesheet">
  </head>
  <body class="text-center">    
    <div></div>
    <form class="form-signin" method="POST" action="">
  <!--<img class="mb-4" src="../assets/brand/bootstrap-solid.svg" alt="" width="72" height="72"> -->
  <h1 class="h3 mb-3 font-weight-normal">Connectez-vous</h1>
  <h6 class="mb-4">ou <a href="inscription.php">créez un compte</a></h6>
  <?php if (! empty($message)) { ?>
    <div class="alert alert-danger" role="alert"><?php echo $message; ?></div>
  <?php } ?>
  <label for="inputEmail" class="sr-only">Adresse email</label>
  <input type="email" id="inputEmail" name="inputEmail" class="form-control mb-3" placeholder="Adresse email" required autofocus>
  <label for="inputPassword" class="sr-only">Mot de passe</label>
  <input type="password" id="inputPassword" name="inputPassword" class="form-control" placeholder="Mot de passe" required>
  <div class="checkbox mb-3">
    <label>
      <input type="checkbox" value="remember-me" name="remember-me"> Rester connecté
    </label>
  </div>
  <button class="btn btn-lg btn-primary btn-block" type="submit">Connexion</button>
  <p class="mt-5 mb-3 text-muted">&copy; 2020</p>
</form>

</body>
</html>
