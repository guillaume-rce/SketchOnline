<?php

session_start();
require_once "../database.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $json = file_get_contents('php://input');

    // Décoder le JSON en un objet PHP
    $data = json_decode($json);

    $theme = $data->theme;
    $dateDebut = $data->dateDebut;
    $dateFin = $data->dateFin;
    $etat = $data->etat;

    global $connexion;

    $stmt = $connexion->prepare("INSERT INTO Concours (theme, dateDebut, dateFin, etat)
VALUES
  (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $theme, $dateDebut, $dateFin, $etat);
    if ($stmt->execute()) {
        echo json_encode(array('status' => 'success', 'message' => 'Le concours a été ajouté avec succès.'));
        http_response_code(200);
    } else {
        $error = $connexion->error;
        echo json_encode(array('status' => 'error', 'message' => 'Erreur, le concours n\'a pas pu être ajouté.', 'error' => $error));
        http_response_code(200);
    }
    $stmt->close();
    mysqli_close($connexion);
    exit;
}
?>