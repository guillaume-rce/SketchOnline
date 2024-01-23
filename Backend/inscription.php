<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $pseudo = $_POST["pseudo"];
    $name = $_POST["name"];
    $firstname = $_POST["firstname"];
    $password = $_POST["password"];

    // Exemple simple : Insérer les données dans la base de données (assurez-vous d'avoir un fichier de configuration de la base de données)
    require_once('../Database/configdb.php');

    $mysqli = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
    if ($mysqli->connect_error) {
        die("La connexion à la base de données a échoué : " . $mysqli->connect_error);
    }
    $query = "INSERT INTO Utilisateurs (pseudo, nom, prenom, password) VALUES (?, ?, ?, ?)";
    $stmt = $mysqli->prepare($query);

    if ($stmt === FALSE) {
        die("Erreur lors de la préparation de la requête : " . $mysqli->error);
    }
    $stmt->bind_param("ssss", $pseudo, $name, $firstname, $password);

    if ($stmt->execute() === TRUE) {
        echo "Inscription réussie !";
    } else {
        echo "Erreur lors de l'inscription : " . $stmt->error;
    }

    $stmt->close();
    $mysqli->close();
}

?>