<?php 
require('config.php');
session_start();

$id_acteur = $_REQUEST["id_acteur"];

// sql to delete a record

$sql = "DELETE FROM acteurs WHERE id_acteur=$id_acteur";

if ($conn->query($sql) === TRUE) {
  echo "L'acteur a été supprimé!";
} else {
  echo "Une erreur s'est produite : " . $conn->error;
}

$conn->close();
?>