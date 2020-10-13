<?php
	// Initialiser la session
	session_start();
	// Vérifiez si l'utilisateur est connecté, sinon redirigez-le vers la page de connexion
	if(!isset($_SESSION["email"])){
		header("Location: connexion.php");//redirection pour connexion.
		exit(); 
	} else if(!isset($_SESSION['nom'], $_SESSION['prenoms'])) {
    header("Location: update.php");//redirection pour mise à jour
  } else {
    require('config.php');
    $email = $_SESSION["email"];
    $query = "SELECT * FROM acteurs WHERE email='$email'";

    $result = mysqli_query($conn, $query) or die(mysql_error());
    $row = $result->fetch_assoc();
    $_SESSION['nom'] = $row['nom'];
    $_SESSION['prenoms'] = $row['prenoms'];

  }
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="css/index.css">


    <title>Bienvenue - <?php echo $_SESSION['prenoms'];?></title>
  </head>
  <body>
    <div class="container text-center">
      <div class="row">
        <!-- Marge droite -->
        <div class="col-10 mt-2 px-0" id="droite">
          <div class="mb-2" style="background-color: #F79F1F;">
          <!--Titre de la page-->
          <button type="button" class="btn btn-lg btn-block" >GESTION DES ACTEURS DE L'INSPECTION GENERALE</button>
        </div>

          <?php
            include 'navigation.php';

            $_SESSION["page"] = @$_GET["page"];

          $sessionPage = "scolaire.html";

          switch ($_SESSION["page"]) {
            case "examens":
              include "annee_exam.html";
              break;
            case "concours":
              include "annee_concour.html";
              break;
              case "exam1718":
                include 'acteurs-exam.html';
              break;
            case "exam1819":
              include 'acteurs-exam.html';
              break;
            case "exam1920":
              include 'acteurs-exam.html';
              break;
            case "exam2021":
              include 'acteurs-exam.html';
              break;
            case "conc1718":
              include 'acteurs-concour.html';
              break;
            case "conc1819":
              include 'acteurs-concour.html';
              break;
            case "conc1920":
              include 'acteurs-concour.html';
              break;
            case "conc2021":
              include 'acteurs-concour.html';
              break;
            case "acteurs":
              include 'liste_acteurs.html';
              break;
            case "affecter":
              include 'affecter.php';
              break;
            case "register":
              include 'register.php';
              break;
            case "update":
              include 'updater.php';
              break;
            default:
            include $sessionPage;
          }
                

        ?>
        </div>
      
        <!-- Marge gauche -->
        <div class="col-2 mt-2 px-0" id="gauche">
          <div class="card text-center" style="width: 15rem;">
          <div class="card-body px-0">
          <h5 class="card-title"><?php echo $_SESSION['prenoms']; ?></h5>
          <h5 class="card-title"><?php echo $_SESSION['nom']; ?></h5>
          <p class="card-text"><?php echo $_SESSION['email']; ?></p>
          <a href="/?page=register" class="btn btn-info mb-2">Ajouter acteur</a><br>
          <a href="/?page=affecter" class="btn btn-success mb-2">Affecter acteurs</a><br>
          <a href="logout.php" class="btn btn-danger">Déconnexion</a>
        </div>
      </div>
        </div>
		</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="jQuery/jquery.js"></script>
    <script src="popper/popper.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <!-- Mon JS-->
    <script src="js/index.js"></script>
  </body>
</html>