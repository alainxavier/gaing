<?php
    //requete pour acteur type
    $acteurId = $_REQUEST['acteur'];
    $query = "SELECT * FROM fonctions WHERE id_fonction=$acteurId";
    $result = mysqli_query($conn, $query) or die(mysql_error());
    $row = $result->fetch_assoc();
    $acteur = $row['libelle'];
    //Navigation page
    if($_SESSION["scolaire"] == "examen") {
      $scolaire = "EXAMENS SCOLAIRES";
  } else {
      $scolaire = "CONCOURS SCOLAIRES";
  }
  //echo $_SESSION["scolaire"]." et ".$_SESSION["annees"];
  ?>
  <!--Navigation -->
  <nav class="navbar navbar-light">
      <form class="form-inline">
        <a class="btn btn-sm btn-outline-secondary" type="button" href="/">ACCUEIL</a>
        <a class="btn btn-sm btn-outline-secondary" type="button" href="/"><?php echo $scolaire; ?></a>
        <a class="btn btn-sm btn-outline-secondary" type="button" href="/?page=annees"><?php echo $_SESSION["annees"]; ?></a>
        <a class="btn btn-sm btn-outline-secondary" type="button" href="/?page=<?php echo $_SESSION["scolaire"]; ?>"><?php echo $acteur; ?></a>
      </form>
  </nav>
<?php
    //requete liste acteurs
    switch ($_SESSION["annees"]) {
      case "2018-2019":
        $query = "SELECT acteurs.id_acteur, nom, prenoms, matricule FROM activites_2018_2019 LEFT JOIN acteurs ON activites_2018_2019.id_acteur=acteurs.id_acteur WHERE fonction='$acteur' ORDER BY nom, prenoms";
        break;
      case "2019-2020":
        $query = "SELECT acteurs.id_acteur, nom, prenoms, matricule FROM activites_2019_2020 LEFT JOIN acteurs ON activites_2019_2020.id_acteur=acteurs.id_acteur WHERE fonction='$acteur' ORDER BY nom, prenoms";
        break;
      case "2020-2021":
        $query = "SELECT acteurs.id_acteur, nom, prenoms, matricule FROM activites_2020_2021 LEFT JOIN acteurs ON activites_2020_2021.id_acteur=acteurs.id_acteur WHERE fonction='$acteur' ORDER BY nom, prenoms";
        break;
      default:
        $query = "SELECT acteurs.id_acteur, nom, prenoms, matricule FROM activites_2021_2022 LEFT JOIN acteurs ON activites_2021_2022.id_acteur=acteurs.id_acteur WHERE fonction='$acteur' ORDER BY nom, prenoms";
      }
    
    $result = mysqli_query($conn, $query) or die(mysql_error());
?>
<!-- Titre de la page -->
<h5 class="list-group-item text-white text-center text-uppercase mb-5" style="background-color: #16a085;"><?php echo $acteur; ?></h5>

<div class="container row">
    <!-- Gauche - Tableau -->
    <div class="list-group text-left col-6" id="liste-acteur"  style="overflow: scroll; overflow-x: hidden; height: 400px;">
    <?php 
    while($row = $result->fetch_assoc()) {?>
      <button class="list-group-item list-group-item-action" data-toggle="list" href="#list-profile-<?php echo $row['id_acteur'];?>" role="tab" aria-controls="profile" title="Cliquez pour les détails">
      <?php echo $row['nom']." ".$row['prenoms']." (".$row['matricule'].")"; ?><a> Supprimer</a></button>
      <?php }; ?>
    </div>
    
    <?php
    //requete détails
    if($_SESSION["annees"] == "2020-2021") {
      $query = "SELECT acteurs.id_acteur, nom, prenoms, matricule, genre, filiere, commune, contact, email FROM activites_2020_2021 LEFT JOIN acteurs ON activites_2020_2021.id_acteur=acteurs.id_acteur WHERE fonction='$acteur' ORDER BY nom, prenoms";
    } else {
      $query = "SELECT acteurs.id_acteur, nom, prenoms, matricule, genre, filiere, commune, contact, email FROM activites_2021_2022 LEFT JOIN acteurs ON activites_2021_2022.id_acteur=acteurs.id_acteur WHERE fonction='$acteur' ORDER BY nom, prenoms";
      }
    //requete liste acteurs détails
    switch ($_SESSION["annees"]) {
      case "2018-2019":
        $query = "SELECT acteurs.id_acteur, nom, prenoms, matricule, genre, filiere, commune, contact, email FROM activites_2018_2019 LEFT JOIN acteurs ON activites_2018_2019.id_acteur=acteurs.id_acteur WHERE fonction='$acteur' ORDER BY nom, prenoms";
        break;
      case "2019-2020":
        $query = "SELECT acteurs.id_acteur, nom, prenoms, matricule, genre, filiere, commune, contact, email FROM activites_2019_2020 LEFT JOIN acteurs ON activites_2019_2020.id_acteur=acteurs.id_acteur WHERE fonction='$acteur' ORDER BY nom, prenoms";
        break;
      case "2020-2021":
        $query = "SELECT acteurs.id_acteur, nom, prenoms, matricule, genre, filiere, commune, contact, email FROM activites_2020_2021 LEFT JOIN acteurs ON activites_2020_2021.id_acteur=acteurs.id_acteur WHERE fonction='$acteur' ORDER BY nom, prenoms";
        break;
      default:
        $query = "SELECT acteurs.id_acteur, nom, prenoms, matricule, genre, filiere, commune, contact, email FROM activites_2021_2022 LEFT JOIN acteurs ON activites_2021_2022.id_acteur=acteurs.id_acteur WHERE fonction='$acteur' ORDER BY nom, prenoms";
      }

    $result = mysqli_query($conn, $query) or die(mysql_error());
    ?>
    <!-- Droite - détails -->
    <div class="tab-content text-left col-6" id="nav-tabContent">
     <?php
    while($row = $result->fetch_assoc()) {?>
      <div class="tab-pane fade shadow-lg p-3 mb-5 rounded"  id="list-profile-<?php echo $row['id_acteur'];?>" role="tabpanel" aria-labelledby="list-profile-list" style="background-color:#F6FFD9;"><?php echo "Nom : ".$row['nom']."<br>Prénoms : ".$row['prenoms']."<br>Matricule : ".$row['matricule']."<br>Genre : ".$row['genre']."<br>Filière : ".$row['filiere']."<br>Commune : ".$row['commune']."<br>Contact : ".$row['contact']."<br>Email : ".$row['email'].""; ?></div>
      <?php }; ?>
    </div>
    
</div>