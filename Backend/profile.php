<?php

require_once 'role.php';

function getConnexionInfoByEmail($email, $data, $connexion) {
    $query = "SELECT numUtilisateur, prenom, adresse, photo, numClub, email FROM Utilisateurs WHERE email = ?";
    $requete = $connexion->prepare($query);
    if ($requete === FALSE) {
        die("Erreur lors de la préparation de la requête : " . $connexion->error);
    }
    $requete->bind_param("s", $email);
    $requete->execute();
    $requete->bind_result($numUtilisateur, $prenom, $adresse, $photo, $numClub, $email);
    $requete->fetch();
    $requete->close();

    $rank = getRole($numUtilisateur, $connexion);
    $connexion->close();

    return [
        'numUtilisateur' => $numUtilisateur,
        'prenom' => $prenom,
        'adresse' => $adresse,
        'photo' => $photo,
        'numClub' => $numClub,
        'email' => $email,
        'rank' => $rank
    ];
}

$response = array();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $data = json_decode(file_get_contents("php://input"));
    $email = $data->email;

    // Assuming $connexion is defined somewhere here
    // $connexion = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME, DB_PORT);

    if (empty($email)) {
        $response['error'] = "Veuillez fournir votre email.";
    } else {
        $result = getConnexionInfoByEmail($email, $data, $connexion);
        echo json_encode($result);
    }
} else {
    $response['error'] = "Méthode non autorisée";
}

header('Content-Type: application/json');
echo json_encode($response);

?>