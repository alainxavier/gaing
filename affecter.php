<?php
  $query = "SELECT * FROM acteurs ORDER BY nom ASC, prenoms ASC";

  $result = mysqli_query($conn, $query) or die(mysql_error());
  
?>
<form method="POST" action="">
    <div class="my-4" style="background-color: #a1eea5;"><button type="button" class="btn btn-lg btn-block font-weight-bold" >Affectation des acteurs</button></div>
    <div class="form-row align-items-center my-3">
        <div class="col-7 ">           
        </div>
        <div class="col-2 ">Année scolaire            
        </div>
        <div class="col-2">
          <select class="form-control" name="fonction" required>
        <option>2017-2018</option>
        <option>2018-2019</option>
        <option>2019-2020</option>
        <option selected>2020-2021</option>
        <option>2021-2022</option>
        <option>2022-2023</option>
        </select>
        </div>
    </div>
    <table class="table table-striped table-bordered">
        <thead>
          <tr>
            <th scope="col">N°</th>
            <th scope="col">Nom</th>
            <th scope="col">Prénoms</th>
            <th scope="col">Fonction</th>
            <th scope="col">Lieu d'intervention</th>
            <th scope="col">Affecter</th>
          </tr>
        </thead>
        <tbody>
        <?php 
        $compteur = 1;
        while($row = $result->fetch_assoc()) {
          echo "<tr class='align-middle'>
          <th scope='row'>".$compteur."</th>
          <td>".$row['nom']."</td>
          <td>".$row['prenoms']."</td>
          ";?>          
            <td><select class="form-control" name="fonction" id="fonction<?php echo $row['id_acteur']; ?>">
                <option class="hidden"  selected disabled>Sélectionner la fonction</option>
                <option>Président de Jurys de Correction et de Délibération</option>
                <option>Présidents de jurys de délibération</option>
                <option>Vice Président de Jurys de Correction et de Délibération</option>
                <option>Commissaires de Correction</option>
                <option>Commissaires de Centres de Composition</option>
                <option>Commissaires de Composition</option>
            </select></td>
            <td><input type="text" class="form-control" id="lieu_intervention<?php echo $row['id_acteur']; ?>" name="lieu_intervention"></td>
            <td><button type="submit" class="btn btn-primary" id="<?php echo $row['id_acteur']; ?>">Valider</button></td>
          </tr><?php $compteur++; }
           ?>
        </tbody>
      </table>
  </form>