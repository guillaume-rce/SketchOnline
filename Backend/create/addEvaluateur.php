<?php

session_start();
require_once "../database.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $json = file_get_contents('php://input');

    // Décoder le JSON en un objet PHP
    $data = json_decode($json);

    $numEvaluateur = $data->numEvaluateur;
    $specialite = $data->specialite;

    global $connexion;

    $stmt = $connexion->prepare("INSERT INTO Evaluateur (numEvaluateur, specialite)
VALUES
  (?, ?)");
    $stmt->bind_param("ss", $numEvaluateur, $specialite);
    if ($stmt->execute()) {
        echo json_encode(array('status' => 'success', 'message' => 'L\'évaluateur a été ajouté avec succès.'));
        http_response_code(200);
    } else {
        $error = $connexion->error;
        echo json_encode(array('status' => 'error', 'message' => 'Erreur, l\'évaluateur n\'a pas pu être ajouté.', 'error' => $error));
        http_response_code(200);
    }
    $stmt->close();
    mysqli_close($connexion);
    exit;
}
?>