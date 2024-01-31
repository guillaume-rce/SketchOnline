<?php

session_start();
require_once "../database.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $json = file_get_contents('php://input');

    // Décoder le JSON en un objet PHP
    $data = json_decode($json);

    $dateEvaluation = $data->dateEvaluation;
    $note = $data->note;
    $commentaire = $data->commentaire;
    $numEvaluateur = $data->numEvaluateur;
    $numDessin = $data->numDessin;

    global $connexion;

    $stmt = $connexion->prepare("INSERT INTO Evaluation (dateEvaluation, note, commentaire, numEvaluateur, numDessin)
VALUES
  (?, ?, ?, ?, ?)");
    $stmt->bind_param("sssss", $dateEvaluation, $note, $commentaire, $numEvaluateur, $numDessin);
    if ($stmt->execute()) {
        echo json_encode(array('status' => 'success', 'message' => 'L\'evaluation a été ajouté avec succès.'));
        http_response_code(200);
    } else {
        $error = $connexion->error;
        echo json_encode(array('status' => 'error', 'message' => 'Erreur, l\'evaluation n\'a pas pu être ajouté.', 'error' => $error));
        http_response_code(200);
    }
    $stmt->close();
    mysqli_close($connexion);
    exit;
}
?>