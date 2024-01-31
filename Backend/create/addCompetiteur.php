<?php

session_start();
require_once "../database.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $json = file_get_contents('php://input');

    // Décoder le JSON en un objet PHP
    $data = json_decode($json);

    $numCompetiteur = $data->numCompetiteur;
    $datePremiereParticipation = $data->datePremiereParticipation;

    global $connexion;

    $stmt = $connexion->prepare("INSERT INTO Competiteur (numCompetiteur, datePremiereParticipation)
VALUES
  (?, ?)");
    $stmt->bind_param("ss", $numCompetiteur, $datePremiereParticipation);
    if ($stmt->execute()) {
        echo json_encode(array('status' => 'success', 'message' => 'Le compétiteur a été ajouté avec succès.'));
        http_response_code(200);
    } else {
        $error = $connexion->error;
        echo json_encode(array('status' => 'error', 'message' => 'Erreur, le compétiteur n\'a pas pu être ajouté.', 'error' => $error));
        http_response_code(200);
    }
    $stmt->close();
    mysqli_close($connexion);
    exit;
}
?>