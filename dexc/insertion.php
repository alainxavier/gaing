<?php
//Connection à la base de données
require 'config_2.php';
        
try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname;charset=$charset", $username, $password);
// set the PDO error mode to exception
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

//requête conditionnée
$annees = $_POST['annees'];
switch ($annees) {
    case "2018-2019":
      // prepare sql and bind parameters
      $stmt = $conn->prepare("INSERT INTO activites_2018_2019 (id_acteur, fonction, lieu_intervention, annees, date_modification) VALUE (:id_acteur, :fonction, :lieu_intervention, :annees, NOW())");
      break;
      case "2019-2020":
      // prepare sql and bind parameters
      $stmt = $conn->prepare("INSERT INTO activites_2019_2020 (id_acteur, fonction, lieu_intervention, annees, date_modification) VALUE (:id_acteur, :fonction, :lieu_intervention, :annees, NOW())");
      break;
      case "2021-2022":
      // prepare sql and bind parameters
      $stmt = $conn->prepare("INSERT INTO activites_2021_2022 (id_acteur, fonction, lieu_intervention, annees, date_modification) VALUE (:id_acteur, :fonction, :lieu_intervention, :annees, NOW())");
      break;
    default:
      // prepare sql and bind parameters
      $stmt = $conn->prepare("INSERT INTO activites_2020_2021 (id_acteur, fonction, lieu_intervention, annees, date_modification) VALUE (:id_acteur, :fonction, :lieu_intervention, :annees, NOW())");
    }

$stmt->bindParam(':id_acteur', $id_acteur);
$stmt->bindParam(':fonction', $fonction);
$stmt->bindParam(':lieu_intervention', $lieu_intervention);
$stmt->bindParam(':annees', $annees);

// insert a row
$id_acteur = $_POST['id_acteur'];
$fonction = $_POST['fonction'];
$lieu_intervention = $_POST['lieu_intervention'];
$annees = $_POST['annees'];

$stmt->execute();
echo TRUE;
} catch(PDOException $e) {
echo "Error: " . $e->getMessage();
}
$conn = null;
?>