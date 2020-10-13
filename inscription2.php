<?php

require "config.php";

try {
  $conn = new PDO("mysql:host=$servername;dbname=$dbname;charset=$charset", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  // prepare sql and bind parameters
  $stmt = $conn->prepare("INSERT INTO inscriptions (email, pass, date_inscription, etats) VALUE (:email, :pass, NOW(), :etats)");
  $stmt->bindParam(':email', $email);
  $stmt->bindParam(':pass', $hash);
  $stmt->bindParam(':etats', $etats);

  // insert a row
  $email = $_POST['email'];
  $pass = $_POST['password'];
  $confirmPassword = $_POST['confirmPassword'];
  $etats = "En attente";
  if($confirmPassword == $pass) {
    $hash = password_hash($pass, PASSWORD_DEFAULT);
    $stmt->execute();
    echo "Votre compte à bien été crée.";
  } else {
    echo "Les mots de passes saisis sont différents";
  }
  
} catch(PDOException $e) {
  echo "Error: " . $e->getMessage();
}
$conn = null;
?>