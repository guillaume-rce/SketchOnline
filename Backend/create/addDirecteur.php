<?php

session_start();
require_once "../database.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $json = file_get_contents('php://input');

    // Décoder le JSON en un objet PHP
    $data = json_decode($json);

    $numDirecteur = $data->numDirecteur;
    $dateDebut = $data->dateDebut;
    $numClub = $data->numClub;

    global $connexion;

    $stmt = $connexion->prepare("INSERT INTO Directeur (numDirecteur, dateDebut, numClub)
VALUES
  (?, ?, ?)");
    $stmt->bind_param("sss", $numDirecteur, $dateDebut, $numClub);
    if ($stmt->execute()) {
        echo json_encode(array('status' => 'success', 'message' => 'Le directeur a été ajouté avec succès.'));
        http_response_code(200);
    } else {
        $error = $connexion->error;
        echo json_encode(array('status' => 'error', 'message' => 'Erreur, le directeur n\'a pas pu être ajouté.', 'error' => $error));
        http_response_code(200);
    }
    $stmt->close();
    mysqli_close($connexion);
    exit;
}
?>