<?php
if (isset ($_REQUEST["id_acteur"])) {
    $id_acteur = $_REQUEST["id_acteur"];

    $sql = "SELECT * FROM acteurs WHERE id_acteur='$id_acteur'";

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
    // output data of each row
    $row = $result->fetch_assoc();

    } else {
    echo "0 results";
    }

    $conn->close();

} else {
    header ("Location: /?page=tous");
}

?>
<div class="d-flex flex-column flex-md-row justify-content-center">
    <!-- Titre de la page -->
    <h5 class="list-group-item list-group-item-action text-white text-center mb-5 bg-danger" >MODIFIER UN ACTEUR</h5>
</div>

    <!-- Contenu page -->
    <div class="d-flex flex-column flex-md-row justify-content-center">
    <!-- // Affiche un message -->
        <h3><?php if (! empty($message)) {echo $message;} ?></h3>
    </div>
    <form  method="POST" action="miseajour.php">
        <div class="d-flex flex-column flex-md-row justify-content-center">
        <!-- coté droit -->
        <div class="col-md-4">
            <div class="form-group">
                <label for="prenoms">Prénoms :</label>
                <input type="text" name="prenoms" class="form-control" value="<?php echo $row["prenoms"]; ?>" required />
                <small id="aideprenoms" class="form-text text-muted"></small>
            </div>
            <div class="form-group">
                <label for="nom">Nom :</label>
                <input type="text" name="nom" class="form-control" value="<?php echo $row["nom"]; ?>" required />
                <small id="aidenom" class="form-text text-muted"></small>
            </div>
            <div class="form-group">
                <label for="matricule">Matricule</label>
                <input type="text" name="matricule" class="form-control" value="<?php echo $row["matricule"]; ?>" required />
                <small id="aidematricule" class="form-text text-muted"></small>
            </div>
            <div class="form-group">
                <label for="filiere">Filière</label>
                <input type="text" name="filiere" class="form-control" value="<?php echo $row["filiere"]; ?>" required />
                <small id="aidefiliere" class="form-text text-muted"></small>
            </div> 
            <div class="form-group invisible">
                <label for="id_acteur">Id acteur :</label>
                <input type="text" name="id_acteur" class="form-control" value="<?php echo $row["id_acteur"]; ?>" required />
                <small id="aideid_acteur" class="form-text text-muted"></small>
            </div>           
        </div>

        <!-- coté gauche -->
        <div class="col-md-4">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" class="form-control" value="<?php echo $row["email"]; ?>" required />
                <small id="aideemail" class="form-text text-muted"></small>
            </div>
            <div class="form-group">
                <label for="contact">Contact :</label>
                <input type="text" name="contact" class="form-control" minlength="8" maxlength="13" value="<?php echo $row["contact"]; ?>" required />
                <small id="aidecontact" class="form-text text-muted"></small>
            </div>
            <div class="form-group">
                <label for="commune">Commune :</label>
                <input type="text" name="commune" class="form-control" value="<?php echo $row["commune"]; ?>" required />
                <small id="aidecommune" class="form-text text-muted"></small>
            </div>
            <?php 
            if ($row["genre"] == "Homme") {
            ?>
            <div class="form-group">
                <div class="maxl">
                    <label class="radio inline"> 
                        <input type="radio" name="genre" value="Homme" id="homme" checked>
                        <span> Homme </span> 
                    </label>
                    <label class="radio inline"> 
                        <input type="radio" name="genre" value="Femme" id="femme">
                        <span>Femme </span> 
                    </label>
                </div>
            </div>
            <?php
            ; } else { ?>
                <div class="form-group">
                <div class="maxl">
                    <label class="radio inline"> 
                        <input type="radio" name="genre" value="Homme" id="homme">
                        <span> Homme </span> 
                    </label>
                    <label class="radio inline"> 
                        <input type="radio" name="genre" value="Femme" id="femme" checked>
                        <span>Femme </span> 
                    </label>
                </div>
                </div>
            <?php ;} ?>
            <input type="submit"  class="btn btn-primary" value="Modifier"/>
        </div>
    </div>
    
    </form>
</div>
