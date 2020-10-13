<?php
session_start();

if (isset($_REQUEST['nom'], $_REQUEST['prenoms'], $_REQUEST['matricule'])){
//Connection à la base de données
require 'config_2.php';

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
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <link href="../css/registration.css" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container register">
    <div class="row">
    <div class="col-md-1 register-left">
        <!--<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
        <h3>Welcome</h3>
        <p>You are 30 seconds away from earning your own money!</p>
        <input type="submit" name="" value="Login"/><br/>-->
    </div>
    <div class="col-md-11 register-right">
        <!--<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Employee</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Hirer</a>
            </li>
        </ul>-->
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                <div class="register-heading">
                    <!-- // Affiche un message -->
                <h3><?php if (! empty($message)) {echo $message;} ?></h3>
                </div>

                 

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
                            <input type="text" name="filiere" class="form-control"  placeholder="Filière " value="" />
                        </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                            <input type="email" class="form-control" value="<?php echo $_SESSION['email']; ?>" name="email" disabled />
                        </div>                       
                        <div class="form-group">
                            <input type="text" minlength="8" maxlength="13" name="contact" class="form-control" placeholder="Contact " value="" />
                        </div>
                        <!--<div class="form-group">
                            <select class="form-control" name="fonction">
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
                            <input type="text" name="commune" class="form-control" placeholder="Commune " value="" />
                        </div>
                        <!--<div class="form-group">
                            <input type="text" name="lieu_intervention" class="form-control" placeholder="Lieu d'intervention " value="" />
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
                        <input type="submit" class="btnRegister"  value="Mettre à jour"/>
                    </div>
                </div>
            </form>
            </div>
            
        </div>
    </div>
    </div>

</div>