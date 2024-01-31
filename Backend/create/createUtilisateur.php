<?php

session_start();
require_once "../database.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $json = file_get_contents('php://input');

    // Décoder le JSON en un objet PHP
    $data = json_decode($json);

    $nom = $data->nom;
    $prenom = $data->prenom;
    $adresseUtilisateur = $data->adresseUtilisateur;
    $login = $data->login;
    $motDePasse = $data->motDePasse;
    $dateAdhesion = $data->dateAdhesion;
    $numClub = $data->numClub;

    global $connexion;

    $stmt = $connexion->prepare("INSERT INTO Utilisateur (nom, prenom, adresseUtilisateur, login, motDePasse, dateAdhesion, numClub)
VALUES
  (?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("sssssss", $nom, $prenom, $adresseUtilisateur, $login, $motDePasse, $dateAdhesion, $numClub);
    if ($stmt->execute()) {
        echo json_encode(array('status' => 'success', 'message' => 'L\'utilisateur a été ajouté avec succès.'));
        http_response_code(200);
    } else {
        $error = $connexion->error;
        echo json_encode(array('status' => 'error', 'message' => 'Erreur, l\'utilisateur n\'a pas pu être ajouté.', 'error' => $error));
        http_response_code(200);
    }
    $stmt->close();
    mysqli_close($connexion);
    exit;
}

?>