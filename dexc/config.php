<?php
// Informations d'identification
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'awfwfjbs_xavier');
define('DB_PASSWORD', 'evENXq6Fq9.12.');
define('DB_NAME', 'awfwfjbs_dexc');
//define( 'DB_CHARSET', 'utf8' );
 
// Connexion à la base de données MySQL 
$conn = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);
 
// Vérifier la connexion
if($conn === false){
    die("ERREUR : Impossible de se connecter. " . mysqli_connect_error());
}

// Change character set to utf8
mysqli_set_charset($conn,"utf8");

?>