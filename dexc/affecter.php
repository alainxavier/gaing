<?php
  $annees = $_REQUEST["annees"];
  switch ($annees) {
    case "2018-2019":
      $query = "SELECT acteurs.id_acteur, nom, prenoms FROM acteurs LEFT JOIN activites_2018_2019 ON acteurs.id_acteur=activites_2018_2019.id_acteur WHERE annees IS NULL ORDER BY nom, prenoms";
      break;
      case "2019-2020":
      $query = "SELECT acteurs.id_acteur, nom, prenoms FROM acteurs LEFT JOIN activites_2019_2020 ON acteurs.id_acteur=activites_2019_2020.id_acteur WHERE annees IS NULL ORDER BY nom, prenoms";
      break;
      case "2021-2022":
      $query = "SELECT acteurs.id_acteur, nom, prenoms FROM acteurs LEFT JOIN activites_2021_2022 ON acteurs.id_acteur=activites_2021_2022.id_acteur WHERE annees IS NULL ORDER BY nom, prenoms";
      break;
    default:
      $query = "SELECT acteurs.id_acteur, nom, prenoms FROM acteurs LEFT JOIN activites_2020_2021 ON acteurs.id_acteur=activites_2020_2021.id_acteur WHERE annees IS NULL ORDER BY nom, prenoms";
    }
  
  $result = mysqli_query($conn, $query) or die(mysql_error());
?>
<form method="POST" action="">
  <div class="my-4" style="background-color: #a1eea5;">
  <button type="button" class="btn btn-lg btn-block font-weight-bold" >Affectation des acteurs</button>
  </div>
  <div class="form-row align-items-center my-3">
    <div class="col-7 "></div>
    <div class="font-weight-bold col-2 text-danger">Année scolaire</div>
    <div class="col-2">
      <input type="text" class="form-control font-weight-bold text-danger" name="annees" id="annees" value="<?php echo $annees; ?>" readonly>
    </div>
    </div>
    <div id="table_affecter">
    <table class="table table-striped table-bordered">
      <thead>
        <tr>
          <th scope="col">Nom</th>
          <th scope="col">Prénoms</th>
          <th scope="col">Fonction</th>
          <th scope="col">Lieu d'intervention</th>
          <th scope="col">Affecter</th>
        </tr>
      </thead>
      <tbody>
        <?php 
        while($row = $result->fetch_assoc()) {  
          echo "<tr class='align-middle' id=ligne_".$row['id_acteur'].">
          <td>".$row['nom']."</td>
          <td>".$row['prenoms']."</td>";?>          
          <td>
          <select class="form-control" name="fonction" id="fonction_<?php echo $row['id_acteur'];?>">
            <option class="hidden"  selected disabled>Sélectionner la fonction</option>
            <option>Président de Jurys de Correction et de Délibération</option>
            <option>Présidents de jurys de délibération</option>
            <option>Vice Président de Jurys de Correction et de Délibération</option>
            <option>Commissaires de Correction</option>
            <option>Commissaires de Centres de Composition</option>
            <option>Commissaires de Composition</option>
          </select></td>
            <td><input type="text" class="form-control" id="lieu_intervention_<?php echo $row['id_acteur']; ?>" name="lieu_intervention"></td>
            <td><button type="submit" class="btn btn-primary" id="<?php echo $row['id_acteur']; ?>">Valider</button></td>
          </tr><?php };?>
        </tbody>
      </table></div>
  </form>