<?php

require_once('configdb.php');
$mysqli = new mysqli(DB_HOST, DB_USER, DB_PASSWORD);
if ($mysqli->connect_error) {
    die("La connexion à la base de données a échoué : " . $mysqli->connect_error);
}

$queryCreateDB = "CREATE DATABASE IF NOT EXISTS " . DB_NAME;
if ($mysqli->query($queryCreateDB) === TRUE) {
    echo "Base de données créée avec succès\n";
} else {
    die("Erreur lors de la création de la base de données : " . $mysqli->error);
}

$mysqli->select_db(DB_NAME);

/
$sqlScript = file_get_contents('../../Database/SQL_Scripts/create_tables.sql');

// Vérifier si le script SQL a été chargé correctement
if ($sqlScript === FALSE) {
    die("Erreur lors du chargement du script SQL");
}

$queries = explode(';', $sqlScript);

foreach ($queries as $query) {
    // Éliminer les espaces vides et les retours à la ligne
    $query = trim($query);

    // Exécuter la requête si elle n'est pas vide
    if (!empty($query)) {
        if ($mysqli->query($query) === FALSE) {
            die("Erreur lors de l'exécution de la requête : " . $query . "\nErreur : " . $mysqli->error);
        }
    }
}

echo "Base de données et tables créées avec succès\n";
$mysqli->close();

?>
