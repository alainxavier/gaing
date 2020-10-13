<?php
$message = "<h6 class='mb-4'>ou <a href='connexion.php'>cliquer pour vous connecter</a></h6>";
require('config.php');
if (isset($_REQUEST['email'], $_REQUEST['password'], $_REQUEST['confirmPassword'])){
  // récupérer l'email et supprimer les antislashes ajoutés par le formulaire
  $email = stripslashes($_REQUEST['email']);
  $email = mysqli_real_escape_string($conn, $email);

  $query = "SELECT * FROM inscriptions WHERE email='$email'";

  $result = mysqli_query($conn, $query) or die(mysql_error());
  $rows = mysqli_num_rows($result);
  if($rows>=1){
    $message = "<div class='alert alert-danger' role='alert'>Vous êtes déja inscrit!<br><a href='connexion.php'>Cliquer ici pour vous connectez.</a></div>";
  } else {
    if($_REQUEST['password'] !== $_REQUEST['confirmPassword']) {
        $message = "<div class='alert alert-danger' role='alert'>Les mots de passe saisis sont différents</div>";
    } else {      
      // récupérer le mot de passe et supprimer les antislashes ajoutés par le formulaire
      $pass = stripslashes($_REQUEST['password']);
      $pass = mysqli_real_escape_string($conn, $pass);
      // récupérer le mot de passe et supprimer les antislashes ajoutés par le formulaire
      $confirmPassword = stripslashes($_REQUEST['confirmPassword']);
      $confirmPassword = mysqli_real_escape_string($conn, $pass);
      
      //requéte SQL + mot de passe crypté
      $query = "INSERT into `inscriptions` (email, pass, date_inscription, etats)
                VALUES ('$email', '".hash('sha256', $pass)."', NOW(), 'En attente')";
    // Exécute la requête sur la base de données
      $res = mysqli_query($conn, $query);
      if($res){
        $message = "<div class='alert alert-success' role='alert'>Vous êtes inscrit avec succès.<br><a href='connexion.php'>Cliquer ici pour vous connectez.</a></div>";
      } else{}
      }
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
  <h1 class="h3 mb-3 font-weight-normal">Inscrivez-vous</h1>
  
  <?php // Affiche un message
  if (! empty($message)) {echo $message;} ?>
  <label for="email" class="sr-only">Adresse email</label>
  <input type="email" id="email" name="email" class="form-control mb-3" placeholder="Adresse email" required autofocus>
  <label for="password" class="sr-only">Mot de passe</label>
  <input type="password" id="password" name="password" class="form-control" placeholder="Mot de passe" required>
  <label for="confirmPassword" class="sr-only">Retaper le mot de passe</label>
  <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" placeholder="Confirmer mot de passe" required>
  
  <button class="btn btn-lg btn-primary btn-block" type="submit">S'inscrire</button>
  <p class="mt-5 mb-3 text-muted">&copy; 2020</p>
</form>

</body>
</html>