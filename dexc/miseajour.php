<?php
    //Connection à la base de données
    require 'config.php';

    if (isset($_REQUEST['nom'], $_REQUEST['prenoms'], $_REQUEST['matricule'])){

        $id_acteur = stripslashes($_REQUEST['id_acteur']);
        $id_acteur = mysqli_real_escape_string($conn, $id_acteur);

        $nom = stripslashes($_REQUEST['nom']);
        $nom = mysqli_real_escape_string($conn, $nom);

        $prenoms = stripslashes($_REQUEST['prenoms']);
        $prenoms = mysqli_real_escape_string($conn, $prenoms);
        $genre = stripslashes($_REQUEST['genre']);
        $genre = mysqli_real_escape_string($conn, $genre);

        $matricule = stripslashes($_REQUEST['matricule']);
        $matricule = mysqli_real_escape_string($conn, $matricule);

        $filiere = stripslashes($_REQUEST['filiere']);
        $filiere = mysqli_real_escape_string($conn, $filiere);

        $commune = stripslashes($_REQUEST['commune']);
        $commune = mysqli_real_escape_string($conn, $commune);

        $contact = stripslashes($_REQUEST['contact']);
        $contact = mysqli_real_escape_string($conn, $contact);

        $email = stripslashes($_REQUEST['email']);
        $email = mysqli_real_escape_string($conn, $email);

        $sql = "UPDATE acteurs SET date_modif=NOW(), nom='$nom', prenoms='$prenoms', genre='$genre', matricule='$matricule', filiere='$filiere', commune='$commune', contact='$contact', email='$email 'WHERE id_acteur='$id_acteur'";

        if (mysqli_query($conn, $sql)) {
            header("Location: /?page=tous");
        } else {
        echo "Error updating record: " . mysqli_error($conn);
        }

        mysqli_close($conn);
    }
?>