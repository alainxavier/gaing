<?php
if (isset($_REQUEST['nom'], $_REQUEST['prenoms'], $_REQUEST['matricule'])){
    //Connection à la base de données
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gaing";
$charset = "utf8";

try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname;charset=$charset", $username, $password);
// set the PDO error mode to exception
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

// prepare sql and bind parameters
$stmt = $conn->prepare("INSERT INTO acteurs (nom, prenoms, genre, matricule, filiere, commune, contact, email, date_ajout) VALUE (:nom, :prenoms, :genre, :matricule, :filiere, :commune, :contact, :email, NOW())");

$stmt->bindParam(':nom', $nom);
$stmt->bindParam(':prenoms', $prenoms);
$stmt->bindParam(':genre', $genre);
$stmt->bindParam(':matricule', $matricule);
$stmt->bindParam(':filiere', $filiere);
//$stmt->bindParam(':fonction', $fonction);
$stmt->bindParam(':commune', $commune);
$stmt->bindParam(':contact', $contact);
$stmt->bindParam(':email', $_SESSION["email"]);
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
//$lieu_intervention = $_POST['lieu_intervention'];

$stmt->execute();

$message = "Votre profil a été mise à jour.<br><a href='index.php'>Cliquer ici pour continuer.</a>";
//chargeons les infos utilisateur
$_SESSION['nom'] = $nom;
$_SESSION['prenoms'] = $prenoms;

} catch(PDOException $e) {
echo "Error: " . $e->getMessage();
}
$conn = null;
} else {
    $message = "Compléter vos informations";
}
?>
<div class="container register">
    <div class="my-4" style="background-color: #a1c2ee;"><button type="button" class="btn btn-lg btn-block font-weight-bold" ><?php if (! empty($message)) {echo $message;} ?></button></div>
    
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
                            <input type="email" class="form-control" value="<?php echo $_SESSION['email']; ?>" name="email" disabled />
                        </div>                   
                        <div class="form-group">
                            <input type="text" minlength="8" maxlength="13" name="contact" class="form-control" placeholder="Contact " required />
                        </div>
                        <!--<div class="form-group">
                            <select class="form-control" name="fonction" required>
                                <option class="hidden"  selected disabled>Veuillez sélectionner votre Fonction</option>
                                <option>Président de Jurys de Correction et de Délibération</option>
                                <option>Présidents de jurys de délibération</option>
                                <option>Vice Président de Jurys de Correction et de Délibération</option>
                                <option>Commissaires de Correction</option>
                                <option>Commissaires de Centres de Composition</option>
                                <option>Commissaires de Composition</option>
                            </select>
                        </div>-->
                        <div class="form-group">
                            <input type="text" name="commune" class="form-control" placeholder="Commune " required />
                        </div>
                        <!--<div class="form-group">
                            <input type="text" name="lieu_intervention" class="form-control" placeholder="Lieu d'intervention " required />
                        </div>-->
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