<?php

session_start();
require_once "../database.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $json = file_get_contents('php://input');

    // Décoder le JSON en un objet PHP
    $data = json_decode($json);

    $numConcours = $data->numConcours;
    $numEvaluateur1 = $data->numEvaluateur1;
    $numEvaluateur2 = $data->numEvaluateur2;

    global $connexion;

    $stmt = $connexion->prepare("INSERT INTO Jury (numConcours, numEvaluateur1, numEvaluateur2)
VALUES
  (?, ?, ?)");
    $stmt->bind_param("sss",  $numConcours, $numEvaluateur1, $numEvaluateur2);
    if ($stmt->execute()) {
        echo json_encode(array('status' => 'success', 'message' => 'Le jury a été ajouté avec succès.'));
        http_response_code(200);
    } else {
        $error = $connexion->error;
        echo json_encode(array('status' => 'error', 'message' => 'Erreur, le jury n\'a pas pu être ajouté.', 'error' => $error));
        http_response_code(200);
    }
    $stmt->close();
    mysqli_close($connexion);
    exit;
}
?>