<?php
//Données d'entête
header("Access-Control-Allow-Credentials:	true");
header("Access-Control-Allow-Headers:	X-API-KEY, X-FIELDS, CONTENT-TYPE, ACCEPT, ACCEPT-CHARSET, ACCEPT-LANGUAGE, CACHE-CONTROL, CONTENT-ENCODING, CONTENT-LENGTH, CONTENT-SECURITY-POLICY, CONTENT-TYPE, COOKIE, ETAG, HOST, IF-MODIFIED-SINCE, KEEP-ALIVE, LAST-MODIFIED, ORIGIN, REFERER, USER-AGENT, X-FORWARDED-FOR, X-FORWARDED-PORT, X-FORWARDED-PROTO");
header("Access-Control-Allow-Methods:	PUT, HEAD, GET, OPTIONS, DELETE");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Max-Age:	21600");
header("Content-Type: application/json; charset=UTF-8");
header("Cache-Control: public");
header("Pragma: public");
header("X-XSS-Protection:	1; mode=block");

require "config.php";

$annees = stripslashes($_REQUEST["annees"]);
$annees = mysqli_real_escape_string($conn, $annees);

//requete liste acteurs
switch ($annees) {
  case "2018-2019":
    $sql = "SELECT * FROM `activites_2018_2019` LEFT JOIN acteurs ON activites_2018_2019.id_acteur = acteurs.id_acteur ORDER BY nom, prenoms";
  case "2019-2020":
    $sql = "SELECT * FROM `activites_2019_2020` LEFT JOIN acteurs ON activites_2019_2020.id_acteur = acteurs.id_acteur ORDER BY nom, prenoms";
    break;
  case "2021-2022":
    $sql = "SELECT * FROM `activites_2021_2022` LEFT JOIN acteurs ON activites_2021_2022.id_acteur = acteurs.id_acteur ORDER BY nom, prenoms";
    break;
  default:
    $sql = "SELECT * FROM `activites_2020_2021` LEFT JOIN acteurs ON activites_2020_2021.id_acteur = acteurs.id_acteur ORDER BY nom, prenoms";
  }

$result = $conn->query($sql);
$impressions = array();
if ($result->num_rows > 0) {
    $impressions = array();
    $compteur = 1;
  // output data of each row
    while($row = $result->fetch_assoc()) {
      $impressions[$compteur] = array("nom"=>$row["nom"], "prenoms"=>$row["prenoms"], "matricule"=>$row["matricule"], "filiere"=>$row["filiere"], "genre"=>$row["genre"], "fonction"=>$row["fonction"], "lieu_intervention"=>$row["lieu_intervention"], "contact"=>$row["contact"]);
      $compteur++;
    }
    $impressions["nombre"] = $compteur - 1;
    
    echo json_encode($impressions);
  }
  else {
    $impressions["nombre"] = 0;
    echo json_encode($impressions);
}

$conn->close();
?>