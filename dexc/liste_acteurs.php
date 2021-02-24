<?php
  //requete liste acteurs
  $query = "SELECT * FROM acteurs ORDER BY nom, prenoms";

  $result = mysqli_query($conn, $query) or die(mysql_error());
?>
<!-- Titre de la page -->
<h5 class="list-group-item text-white text-center mb-5" style="background-color: #16a085;">LISTE DES ACTEURS</h5>
<div id="liste-acteur"  style="overflow: scroll; overflow-x: hidden; height: 400px;">
<table class="table table-striped table-bordered table-hover text-center table-sm">
  <thead>
    <tr>
      <th scope="col">N°</th>
      <th scope="col">Nom</th>
      <th scope="col">Prénoms</th>
      <th scope="col">Matricule</th>
      <th scope="col">Filière</th>
      <th scope="col">Contact</th>
    </tr>
  </thead>
  <tbody>
  <?php
    $compteur = 1;
    while($row = $result->fetch_assoc()) {?>
    <tr data-container="body" data-toggle="popover" data-placement="top" tabindex="0" data-trigger="focus" data-content="Email : <?php echo $row['email'];?> Genre : <?php echo $row['genre'];?>">
      <td><?php echo $compteur;?></td>
      <td><?php echo $row['nom'];?></td>
      <td><?php echo $row['prenoms'];?></td>
      <td><?php echo $row['matricule'];?></td>
      <td><?php echo $row['filiere'];?></td>
      <td><?php echo $row['contact'];?></td>
      <td><a id="<?php echo $row['id_acteur'];?>" class="text-primary" href="#">Modifier</a></td>
      <td><a id="<?php echo $row['id_acteur'];?>" class="text-danger" href="#">Supprimer</a></td>
    </tr>
    <?php $compteur++; }; ?>
    </tbody>
  </table>
    </div>