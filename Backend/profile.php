<?php

// Fonction pour récupérer des informations de connexion à partir d'un token
function getConnexionInfoByToken($token) {
    $connexion = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME, DB_PORT);
    if ($connexion->connect_error) {
        die("Échec de la connexion à la base de données : " . $connexion->connect_error);
    }
    
    $requete = $connexion->prepare("SELECT numUtilisateur, prenom, adresse, photo, numClub, email FROM Utilisateurs JOIN Club ON Utilisateurs.numClub = Club.numClub WHERE Utilisateurs.token = ?");
    $requete->bind_param("s", $token);
    $requete->execute();
    $requete->bind_result($numUtilisateur, $prenom, $adresse, $photo, $numClub, $email);
    $requete->fetch();
    $requete->close();
    $connexion->close();

    $rank= getRank($numUtilisateur);
    return [
        'numUtilisateur' => $numUtilisateur,
        'prenom' => $prenom,
        'adresse' => $adresse,
        'photo' => $photo,
        'numClub' => $numClub,
        'email' => $email,
        $rank 
    ];
}

// Fonction pour récupérer le poste (rank) d'un utilisateur
function getRank($userId) {
    // Établir une connexion à la base de données
    $mysqli = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

    // Vérifier la connexion à la base de données
    if ($mysqli->connect_error) {
        die("La connexion à la base de données a échoué : " . $mysqli->connect_error);
    }

    // Initialiser le poste à vide
    $rank = 'Utilisateur';

    // Requête SQL pour récupérer le poste d'un utilisateur
    $query = "SELECT * FROM Utilisateurs 
              INNER JOIN President ON Utilisateurs.numUtilisateur = President.numPres
              INNER JOIN Directeur ON Utilisateurs.numUtilisateur = Directeur.numDirecteur
              INNER JOIN Administrateur ON Utilisateurs.numUtilisateur = Administrateur.numAdmin
              WHERE Utilisateurs.numUtilisateur = ?";

    // Préparer la requête SQL
    $stmt = $mysqli->prepare($query);

    // Vérifier si la préparation de la requête a réussi
    if ($stmt === FALSE) {
        die("Erreur lors de la préparation de la requête : " . $mysqli->error);
    }

    // Lier le paramètre à la requête
    $stmt->bind_param("i", $userId);

    // Exécuter la requête
    if ($stmt->execute() === TRUE) {
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            if (!empty($row['numPres'])) {
                $rank = 'President';
            } elseif (!empty($row['numDirecteur'])) {
                $rank = 'Directeur';
            } elseif (!empty($row['numAdmin'])) {
                $rank = 'Administrateur';
            }
        }
    } else {
        die("Erreur lors de l'exécution de la requête : " . $stmt->error);
    }

    $stmt->close();
    $mysqli->close();

    return $rank;
}

$data = json_decode(file_get_contents('php://input'), true);
if (isset($data['token'])) {
    $token = $data['token'];
    $profileInfo = getConnexionInfoByToken($token);

    if(empty($data['infos'])){
        echo json_encode($profileInfo);
    }
    else
    {
        $pagesInfo = $profileInfo['poste', $rank] ;
    } 
   
} else {
    echo json_encode(['error' => 'Token non fourni']);
}

?>
