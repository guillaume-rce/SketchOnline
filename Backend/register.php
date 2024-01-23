<?php
require_once('../Database/configdb.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $name = $_POST["name"];
    $firstname = $_POST["firstname"];
    $email = $_POST["email"];
    $password = $_POST["password"];

    $mysqli = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
    if ($mysqli->connect_error) {
        die("La connexion à la base de données a échoué : " . $mysqli->connect_error);
    }

    $query = "INSERT INTO Utilisateurs (pseudo, nom, prenom, email, password) VALUES (?, ?, ?, ?, ?)";
    $stmt = $mysqli->prepare($query);

    if ($stmt === FALSE) {
        die("Erreur lors de la préparation de la requête : " . $mysqli->error);
    }

    $v=$stmt->execute(array( $username, $name, $firstname, $email, $password));

    if ($v) {
        echo "Inscription réussie !";
    } else {
        echo "Erreur lors de l'inscription : " . $stmt->error;
    }

    $stmt->close();
    $mysqli->close();
}
?>
