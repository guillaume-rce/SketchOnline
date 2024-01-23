<?php

require_once('configdb.php');

// Connexion à la base de données MySQL
$mysqli = new mysqli(DB_HOST, DB_USER, DB_PASSWORD);
if ($mysqli->connect_error) {
    die("La connexion à la base de données a échoué : " . $mysqli->connect_error);
}

// Création de la base de données si elle n'existe pas
$queryCreateDB = "CREATE DATABASE IF NOT EXISTS " . DB_NAME;
if ($mysqli->query($queryCreateDB) === TRUE) {
    echo "Base de données créée avec succès\n";
} else {
    die("Erreur lors de la création de la base de données : " . $mysqli->error);
}

// Sélection de la base de données
$mysqli->select_db(DB_NAME);

// Chargement du script SQL
$sqlScript = file_get_contents('../../Database/SQL_Scripts/create_tables.sql');

// Vérification du chargement du script SQL
if ($sqlScript === FALSE) {
    die("Erreur lors du chargement du script SQL");
}

// Séparation des requêtes du script
$queries = explode(';', $sqlScript);

// Exécution des requêtes
foreach ($queries as $query) {
    // Élimination des espaces vides et des retours à la ligne
    $query = trim($query);

    // Exécution de la requête si elle n'est pas vide
    if (!empty($query)) {
        if ($mysqli->query($query) === FALSE) {
            die("Erreur lors de l'exécution de la requête : " . $query . "\nErreur : " . $mysqli->error);
        }
    }
}

echo "Base de données et tables créées avec succès\n";

// Fermeture de la connexion à la base de données
$mysqli->close();
?>
