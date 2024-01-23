<?php

// Fonction pour récupérer des informations de connexion à partir d'un token
function getConnexionInfoByToken($token) {
    // Connexion à la base de données
    $connexion = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME, DB_PORT);

    // Vérification de la connexion
    if ($connexion->connect_error) {
        die("Échec de la connexion à la base de données : " . $connexion->connect_error);
    }

    // Requête préparée pour récupérer les informations de connexion
    $requete = $connexion->prepare("SELECT pseudo, prenom, adresse, photo, numClub, email FROM Utilisateurs JOIN Club ON Utilisateurs.numClub = Club.numClub WHERE Utilisateurs.token = ?");
    $requete->bind_param("s", $token);
    $requete->execute();

    // Liaison des résultats de la requête à des variables
    $requete->bind_result($pseudo, $prenom, $adresse, $photo, $numClub, $email);

    // Récupération des résultats
    $requete->fetch();

    // Fermeture de la requête et de la connexion
    $requete->close();
    $connexion->close();

    // Retourne un tableau associatif avec les informations de connexion
    return [
        'pseudo' => $pseudo,
        'prenom' => $prenom,
        'adresse' => $adresse,
        'photo' => $photo,
        'numClub' => $numClub,
        'email' => $email
    ];
}
// Récupération des données du corps de la requête
$data = json_decode(file_get_contents('php://input'), true);

// Vérifiez si le token est présent dans les données
if (isset($data['token'])) {
    $token = $data['token'];
    $profileInfo = getConnexionInfoByToken($token);

    // Renvoyer les informations au format JSON
    echo json_encode($profileInfo);
} else {
    // Gestion d'une requête invalide
    echo json_encode(['error' => 'Token non fourni']);
}

?>
