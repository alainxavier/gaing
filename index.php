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
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Alain Xavier KOUAME">
    <title>DEXC-Bienvenue <?php echo $_SESSION['prenoms'];?></title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Boxicons CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@2.0.7/css/boxicons.min.css" integrity="sha256-H8c0yAkzdmZ1/anJofhnKJ3ljR5t3IViHho361BqIro=" crossorigin="anonymous">
    <!-- bootstrap-icons CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
    <!-- Custom styles for this template -->
    <link href="css/index.css" rel="stylesheet">

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery.js"></script>
    <!--<script src="popper/popper.js"></script>-->
    <script src="js/bootstrap.bundle.min.js"></script>
    <!-- Mon JS -->
    <script src="js/index.js"></script>
    
    <!-- Boxicons -->
    <script src="https://cdn.jsdelivr.net/npm/boxicons@2.0.7/dist/boxicons.min.js"></script>
  </head>
  <body onload="myFunction()" id="corps">
  <script>
  //gestion chargement page
    function myFunction() {
      document.getElementById("contenu").innerHTML="";
      }
  </script>
  <section>
    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
    <img class="my-n1" src="images/logodexc.png" alt="Logo DEXC">
    <h5 class="my-0 mr-md-auto font-weight-normal"></h5>
    <nav class="my-2 my-md-0 mr-md-3">
      <a class="btn btn-outline-primary mb-1" href="/">Accueil</a>
      <a class="btn btn-success mb-1" href="/?page=activites">Activités</a>
      <a class="btn btn-outline-dark mb-1" href="/?page=register">Ajouter acteur</a>
      <a class="btn btn-outline-dark mb-1" href="/?page=tous">Liste acteurs</a>
      <button type="button" class="btn btn-outline-dark mb-1" data-toggle="modal" data-target="#exampleModal">Affecter acteurs</button>
      <a class="btn btn-primary mb-1" href="#"><?php echo $_SESSION['prenoms']; ?></a>
      <a class="btn btn-outline-danger mb-1" href="logout.php">Déconnexion</a>
    </nav>
    </div>

  <div id="#liste-acteur" class="container-fluid">
  <div class="mx-auto text-center">
    <h3 class="">LOGICIEL DE GESTION DES ACTEURS DE L'INSPECTION GENERALE</h3>
  </div>
  <aside>
    <?php
        $_SESSION["page"] = @$_GET["page"];
        //gestion info pour requete...
        if(isset($_REQUEST["annees"])) {
          $_SESSION["annees"] = $_REQUEST["annees"];
        }
        if(isset($_REQUEST["scolaire"])) {
          $_SESSION["scolaire"] = $_REQUEST["scolaire"];
        }
        if(isset($_REQUEST["acteur"])) {
          $_SESSION["acteur"] = $_REQUEST["acteur"];
        } 

        switch ($_SESSION["page"]) {
          case "annees":
            include "annees.php";
            break;
          case "acteurs":
            include 'acteurs.php';
            break;
          case "examen":
            include 'acteurs-exam.php';
            break;
          case "concour":
            include 'acteurs-concour.php';
            break;
          case "tous":
            include 'liste_acteurs.php';
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
          case "modifier":
            include 'modifier.php';
            break;
          case "activites":
            include 'activites.php';
            break;
            
          default:  
          include "scolaire.php";
        }          
      ?>
  </aside>
  <!-- Modal -->
  <form method="POST" action="?page=affecter">
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-sm">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Choisissez l'année scolaire</h5>
          </div>
          <div class="modal-body">
          <select class="form-control" name="annees" id="annees" required>
          <option>2018-2019</option>
          <option>2019-2020</option>
          <option selected>2020-2021</option>
          <option>2021-2022</option>
          </select>
          </div>
          <div class="modal-footer">
            <input type="submit" class="btn btn-primary" value="Valider">
          </div>
        </div>
      </div>
    </div>
    </form>
    
    <!-- Footer -->
    
<footer class="my-md-5 pt-md-5 border-top" id="footer">            
  <div class="container d-md-flex py-4">            
    <div class="mr-md-auto text-center text-md-left">
      <div class="copyright">
        &copy; Copyright <strong><span>Direction des Examens et Concours</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        Designed by <a href="mailto:mekkaddish@gmail.com">Xavier KOUAME</a>
      </div>
    </div>
    <div class="social-links text-center text-md-right pt-3 pt-md-0">
      <a href="https://www.youtube.com/channel/UCezj5sTiuPQGLkUIOZcVD_Q?view_as=subscriber" class="youtube"><i class='bx bxl-youtube'></i></a>
      <a href="http://mediascoreci.000webhostapp.com/" class="web"><i class='bx bx-world'></i></a>
      <a href="https://www.facebook.com/kalainxavier" class="facebook"><i class="bx bxl-facebook"></i></a>
      <a href="https://www.instagram.com/kalainxavier/?hl=fr" class="instagram"><i class="bx bxl-instagram"></i></a>
      <a href="volcanxavier" class="skype"><i class="bx bxl-skype"></i></a>
      <a href="https://www.linkedin.com/in/alain-xavier-kouame-69b08a152/" class="linkedin"><i class="bx bxl-linkedin"></i></a>
    </div>
  </div>
</footer>
<!-- End Footer -->
</div>

<!-- Chargement animation -->
<div id=contenu>
    <div class="container-fluid d-flex justify-content-center mt-5" id="chargement">
      <div class="spinner-grow text-primary" role="status" style="width: 3rem; height: 3rem;" id=spinner>
        <span class="sr-only">Chargement...</span>
      </div>
    </div>
    <div>
</section>

</body>
</html>