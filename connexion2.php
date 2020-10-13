<?php
session_start();
require "config.php";
if($_POST['inputEmail'] !== NULL && $_POST['inputPassword'] !== NULL) {
  try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname;charset=$charset", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  
    // prepare sql and bind parameters
    $stmt = $conn->prepare("SELECT id_inscription FROM inscriptions WHERE email=:email AND pass=:pass");

    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':pass', $pass);
  
    // insert a row
    $email = $_POST['inputEmail'];
    $pass = password_hash($_POST['inputPassword'], PASSWORD_DEFAULT);
    $stmt->execute();
  
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
    print $result;
  
    
  } catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
  }
} else {
  header("Location: register/login.php");
}

$conn = null;

?>