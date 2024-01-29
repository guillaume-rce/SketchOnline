<?php

define('DB_HOST', 'localhost');
define('DB_PORT','3306');
define('DB_USER', 'etudiant');
define('DB_PASSWORD', 'N3twork!');
define('DB_NAME', 'SketchBd'); 

$connexion = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME, DB_PORT);
if ($connexion->connect_error) {
    die("Échec de la connexion à la base de données : " . $connexion->connect_error);
}
?>