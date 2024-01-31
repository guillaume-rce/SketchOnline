<?php

session_start();
require_once "../database.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $json = file_get_contents('php://input');

    // Décoder le JSON en un objet PHP
    $data = json_decode($json);

    $nomClub = $data->nomClub;
    $adresseClub = $data->adresseClub;
    $numTelephone = $data->numTelephone;
    $nombreAdherents = $data->nombreAdherents;
    $ville = $data->ville;
    $departement = $data->departement;
    $region = $data->region;

    global $connexion;

    $stmt = $connexion->prepare("INSERT INTO Club (nomClub, adresseClub, numTelephone, nombreAdherents, ville, departement, region)
VALUES
  (?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("sssssss", $nomClub, $adresseClub, $numTelephone, $nombreAdherents, $ville, $departement, $region);
    if ($stmt->execute()) {
        echo json_encode(array('status' => 'success', 'message' => 'Le club a été ajouté avec succès.'));
        http_response_code(200);
    } else {
        $error = $connexion->error;
        echo json_encode(array('status' => 'error', 'message' => 'Erreur, le club n\'a pas pu être ajouté.', 'error' => $error));
        http_response_code(200);
    }
    $stmt->close();
    mysqli_close($connexion);
    exit;
}
?>