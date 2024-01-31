<?php

session_start();
require_once "../database.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $json = file_get_contents('php://input');

    // Décoder le JSON en un objet PHP
    $data = json_decode($json);

    $numAdministrateur = $data->numAdministrateur;
    $dateDebut = $data->dateDebut;

    global $connexion;

    $stmt = $connexion->prepare("INSERT INTO Administrateur (numAdministrateur, dateDebut)
VALUES
  (?, ?)");
    $stmt->bind_param("ss", $numAdministrateur, $dateDebut);
    if ($stmt->execute()) {
        echo json_encode(array('status' => 'success', 'message' => 'L\'administrateur a été ajouté avec succès.'));
        http_response_code(200);
    } else {
        $error = $connexion->error;
        echo json_encode(array('status' => 'error', 'message' => 'Erreur, l\'administrateur n\'a pas pu être ajouté.', 'error' => $error));
        http_response_code(200);
    }
    $stmt->close();
    mysqli_close($connexion);
    exit;
}
?>