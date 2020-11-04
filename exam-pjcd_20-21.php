<!--Navigation -->
<nav class="navbar navbar-light mb-3" >
    <div class="form-inline">
      <a href="/" class="btn btn-sm btn-outline-secondary" type="button">ACCUEIL</a>
      <a href="/?page=examens" class="btn btn-sm btn-outline-secondary" type="button">EXAMENS SCOLAIRES</a>
      <a href="/?page=exam2021" class="btn btn-sm btn-outline-secondary" type="button">2020-2021</a>
      <a href="#" class="btn btn-sm btn-outline-secondary" type="button">Président de Jurys de Correction et de Délibération</a>
    </div>
  </nav>
<?php
  echo $_REQUEST["annee"];
  echo $_REQUEST["type"];
  $query = "SELECT acteurs.id_acteur, nom, prenoms, matricule FROM acteurs LEFT JOIN activites_2021 ON acteurs.id_acteur=activites_2021.id_acteur WHERE annees='2020-2021' ORDER BY nom, prenoms";
  
  $result = mysqli_query($conn, $query) or die(mysql_error());
?>
<!-- Titre de la page -->
<a class="list-group-item text-white disabled text-uppercase mb-5" style="background-color: #16a085;">Président(s) de Jurys de Correction et de Délibération</a>

<div class="container row">
    <!-- Gauche - Tableau -->
    <div class="list-group text-left col-6" id="liste-acteur">
    <?php 
    while($row = $result->fetch_assoc()) {?>
      <button class="list-group-item list-group-item-action" data-toggle="list" href="#list-profile-<?php echo $row['id_acteur'];?>" role="tab" aria-controls="profile" title="Cliquez pour les détails">
      <?php echo $row['nom']." ".$row['prenoms']." (".$row['matricule'].")"; ?></button>
      <?php }; ?>
    </div>
    
    <?php
    $query = "SELECT acteurs.id_acteur, nom, prenoms, matricule, genre, filiere, commune, contact, email FROM acteurs LEFT JOIN activites_2021 ON acteurs.id_acteur=activites_2021.id_acteur WHERE annees IS NULL ORDER BY nom, prenoms";

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