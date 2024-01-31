<?php

session_start();
require_once "../database.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $json = file_get_contents('php://input');

    // Décoder le JSON en un objet PHP
    $data = json_decode($json);

    $commentaire = $data->comment;
    // $classement = $data->classement;
    $dateRemise = $data->date;
    $leDessin = $data->path; // Path
    $numCompetiteur = $data->user_id;
    $numConcours = $data->contest_id;
    // $numJury = $data->numJury;

    global $connexion;

    $stmt = $connexion->prepare("INSERT INTO Dessin (commentaire, classement, dateRemise, leDessin, numCompetiteur, numConcours, numJury)
VALUES
  (?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("sssssss", $commentaire, null, $dateRemise, $leDessin, $numCompetiteur, $numConcours, null);
    if ($stmt->execute()) {
        echo json_encode(array('status' => 'success', 'message' => 'Le dessin a été ajouté avec succès.'));
        http_response_code(200);
    } else {
        $error = $connexion->error;
        echo json_encode(array('status' => 'error', 'message' => 'Erreur, le dessin n\'a pas pu être ajouté.', 'error' => $error));
        http_response_code(200);
    }
    $stmt->close();
    mysqli_close($connexion);
    exit;
}

?>