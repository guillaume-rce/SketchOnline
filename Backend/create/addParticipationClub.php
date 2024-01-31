<?php

session_start();
require_once "../database.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $json = file_get_contents('php://input');

    // Décoder le JSON en un objet PHP
    $data = json_decode($json);

    $numConcours = $data->numConcours;
    $numClub = $data->numClub;

    global $connexion;

    $stmt = $connexion->prepare("INSERT INTO ParticipationClub (numConcours, numClub)
VALUES
  (?, ?)");
    $stmt->bind_param("ss", $numConcours, $numClub);
    if ($stmt->execute()) {
        echo json_encode(array('status' => 'success', 'message' => 'Le club a été ajouté au concours avec succès.'));
        http_response_code(200);
    } else {
        $error = $connexion->error;
        echo json_encode(array('status' => 'error', 'message' => 'Erreur, le club n\'a pas pu être ajouté au concours.', 'error' => $error));
        http_response_code(200);
    }
    $stmt->close();
    mysqli_close($connexion);
    exit;
}

?>