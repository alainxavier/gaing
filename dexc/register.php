<?php
if (isset($_REQUEST['nom'], $_REQUEST['prenoms'], $_REQUEST['matricule'])) {
    //vérification des entrées
    $inputEmail = stripslashes($_REQUEST['email']);
    $inputEmail = mysqli_real_escape_string($conn, $inputEmail);
    $inputMatricule = stripslashes($_REQUEST['matricule']);
    $inputMatricule = mysqli_real_escape_string($conn, $inputMatricule);
    
    $query = "SELECT * FROM `acteurs` WHERE email='$inputEmail' and matricule='$inputMatricule'";

	$result = mysqli_query($conn, $query) or die(mysql_error());
    $rows = mysqli_num_rows($result);
	if($rows>=1){
	    $message = "<div class='alert alert-danger' role='alert'>Cet acteur est déja enregistré!</div>";
	} else{
        //Connection à la base de données
        require 'config_2.php';
        try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname;charset=$charset", $username, $password);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // prepare sql and bind parameters
        $stmt = $conn->prepare("INSERT INTO acteurs (nom, prenoms, genre, matricule, filiere, commune, contact, email, date_ajout, date_modif) VALUE (:nom, :prenoms, :genre, :matricule, :filiere,  :commune, :contact, :email, NOW(), NOW())");

        $stmt->bindParam(':nom', $nom);
        $stmt->bindParam(':prenoms', $prenoms);
        $stmt->bindParam(':genre', $genre);
        $stmt->bindParam(':matricule', $matricule);
        $stmt->bindParam(':filiere', $filiere);
        //$stmt->bindParam(':fonction', $fonction);
        $stmt->bindParam(':commune', $commune);
        $stmt->bindParam(':contact', $contact);
        $stmt->bindParam(':email', $email);
       //$stmt->bindParam(':lieu_intervention', $lieu_intervention);

        // insert a row
        $nom = $_POST['nom'];
        $prenoms = $_POST['prenoms'];
        $genre = $_POST['genre'];
        $matricule = $_POST['matricule'];
        $filiere = $_POST['filiere'];
        //$fonction = $_POST['fonction'];
        $commune = $_POST['commune'];
        $contact = $_POST['contact'];
        $email = $_POST['email'];
        //$lieu_intervention = $_POST['lieu_intervention'];

        $stmt->execute();

        $message = "<div class='alert alert-success' role='alert'>Un acteur a été ajouté avec succès. Vous pouvez en ajouter un autre.</div>";
        } catch(PDOException $e) {
        echo "Error: " . $e->getMessage();
        }
        $conn = null;
	}
        
}

?>
<div class="container register">
    <div class="my-4" style="background-color: #a1c2ee;"><button type="button" class="btn btn-lg btn-block font-weight-bold" >Ajouter un acteur</button></div>
    <div class="my-4 text-center">
        <h6>Remplissez le formulaire</h6>
        <!-- // Affiche un message -->
    <?php if (! empty($message)) {echo $message;} ?>
    </div>
    <div class="row">
    <div class="col-1 register-left"><br/>
    </div>
    <div class="col-md-11 register-right">
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                
                <form  method="POST" action="">
                <div class="row register-form">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="prenoms" class="form-control" placeholder="Prénoms *" required />
                        </div>
                        <div class="form-group">
                            <input type="text" name="nom" class="form-control" placeholder="Nom *" required />
                        </div>
                        <div class="form-group">
                            <input type="text" name="matricule" class="form-control" placeholder="Matricule *" required />
                        </div>
                        <div class="form-group">
                            <input type="text" name="filiere" class="form-control"  placeholder="Filière " required />
                        </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                            <input type="email" class="form-control" placeholder="Email " name="email" required />
                        </div>                        
                        <div class="form-group">
                            <input type="text" minlength="8" maxlength="13" name="contact" class="form-control" placeholder="Contact " required />
                        </div>
                        
                        <div class="form-group">
                            <input type="text" name="commune" class="form-control" placeholder="Commune " required />
                        </div>
                        <div class="form-group">
                            <div class="maxl">
                                <label class="radio inline"> 
                                    <input type="radio" name="genre" value="Homme" checked>
                                    <span> Homme </span> 
                                </label>
                                <label class="radio inline"> 
                                    <input type="radio" name="genre" value="Femme">
                                    <span>Femme </span> 
                                </label>
                            </div>
                        </div>
                        <input type="submit" class="btn btn-primary"  value="Ajouter un acteur"/>
                    </div>
                </div>
            </form>
            </div>
            
        </div>
    </div>
    </div>

</div>