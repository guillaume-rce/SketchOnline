<?php

define('DB_HOST', '20.39.244.13'); 
define('DB_USER', 'etudiant');
define('DB_PASSWORD', 'N3twork!');
define('DB_NAME', 'SketchBd'); 

// Connexion à la base de données
$mysqli = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

// Vérification de la connexion
if ($mysqli->connect_error) {
    die("la connexion à la base donnée à échouée : " . $mysqli->connect_error);
}

?>
