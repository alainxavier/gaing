<?php
//Données d'entête
header("Access-Control-Allow-Credentials:	true");
header("Access-Control-Allow-Headers:	X-API-KEY, X-FIELDS, CONTENT-TYPE, ACCEPT, ACCEPT-CHARSET, ACCEPT-LANGUAGE, CACHE-CONTROL, CONTENT-ENCODING, CONTENT-LENGTH, CONTENT-SECURITY-POLICY, CONTENT-TYPE, COOKIE, ETAG, HOST, IF-MODIFIED-SINCE, KEEP-ALIVE, LAST-MODIFIED, ORIGIN, REFERER, USER-AGENT, X-FORWARDED-FOR, X-FORWARDED-PORT, X-FORWARDED-PROTO");
header("Access-Control-Allow-Methods:	PUT, HEAD, GET, OPTIONS, DELETE");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Max-Age:	21600");
//header("Content-Type: application/json; charset=UTF-8");
header("Cache-Control: public");
header("Pragma: public");
header("X-XSS-Protection: 1; mode=block");

//Connection à la base de données
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "evp";
$charset = "utf8";

try {
  $conn = new PDO("mysql:host=$servername;dbname=$dbname;charset=$charset", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  // prepare sql and bind parameters
  $stmt = $conn->prepare("INSERT INTO inscriptions (ins_nom, ins_pass, ins_family, ins_date, ins_status) VALUE (:ins_nom, :ins_pass, :ins_family, NOW(), :ins_status)");
  $stmt->bindParam(':ins_nom', $pseudo);
  $stmt->bindParam(':ins_pass', $hash);
  $stmt->bindParam(':ins_family', $family);
  $stmt->bindParam(':ins_status', $status);

  // insert a row
  $pseudo = $_POST['pseudo'];
  $password = $_POST['password'];
  $family = $_POST['family'];
  $status = "En attente";
  $hash = password_hash($password, PASSWORD_DEFAULT);
  $stmt->execute();

  echo "Votre inscription a bien été prise en compte.<br>Vous serez informé de la validation de votre inscription par le responsable de votre famille.";
} catch(PDOException $e) {
  echo "Error: " . $e->getMessage();
}
$conn = null;
?>