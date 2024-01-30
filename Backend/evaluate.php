<?php

require_once('./configdb.php');
$connexion = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME, DB_PORT);

// Vérification de la connexion
if ($connexion->connect_error) {
    // Retourner un message d'erreur avec un status 'failure'
    echo json_encode(["status" => "failure", "message" => "Échec de la connexion à la base de données"]);
    die();
}

// Exécuter la requête pour insérer une nouvelle evaluation
/*
{
    note: note,
    commentaire: commentaire,
    numDessin: idDessin,
    numEvaluateur: id
}
*/
$requete = $connexion->prepare(
    "INSERT INTO Evaluation (note, commentaire, numDessin, numEvaluateur) VALUES (?, ?, ?, ?)"
);
$requete->bind_param("aaaa", $_POST["note"], $_POST["commentaire"], $_POST["numDessin"], $_POST["numEvaluateur"]);
$requete->execute();
$result = $requete->get_result();

$data = [
    "status" => "success", // Ajouter le champ 'status'
];

// Fermeture de la requête et de la connexion
$requete->close();
$connexion->close();

// Retourner la réponse
echo json_encode($data);

?>
