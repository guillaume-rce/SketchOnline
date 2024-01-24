<?php

// Fonction pour récupérer des informations de connexion à partir d'un token
function getConnexionInfoByToken($token) {
    $connexion = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME, DB_PORT);
    if ($connexion->connect_error) {
        die("Échec de la connexion à la base de données : " . $connexion->connect_error);
    }

    $requete = $connexion->prepare("SELECT numUtilisateur, pseudo, prenom, adresse, photo, numClub, email, poste FROM Utilisateurs JOIN Club ON Utilisateurs.numClub = Club.numClub WHERE Utilisateurs.token = ?");
    $requete->bind_param("s", $token);
    $requete->execute();
    $requete->bind_result($numUtilisateur, $pseudo, $prenom, $adresse, $photo, $numClub, $email, $poste);
    $requete->fetch();
    $requete->close();
    $connexion->close();

    return [
        'numUtilisateur' => $numUtilisateur,
        'pseudo' => $pseudo,
        'prenom' => $prenom,
        'adresse' => $adresse,
        'photo' => $photo,
        'numClub' => $numClub,
        'email' => $email,
        'poste' => $poste
    ];
}

$data = json_decode(file_get_contents('php://input'), true);
if (isset($data['token'])) {
    $token = $data['token'];
    $profileInfo = getConnexionInfoByToken($token);

    echo json_encode($profileInfo);
} else {
    echo json_encode(['error' => 'Token non fourni']);
}

?>
