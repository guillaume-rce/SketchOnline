<?php

// Fonction pour récupérer des informations de connexion à partir d'un token
function getConnexionInfoByEmail($email, $data) {
    $query = "SELECT ";
    if (empty($data)) {
        $query .= "* ";
    } else {
        $query .= implode(", ", $data->infos);
    }
    $query .= "FROM Utilisateurs WHERE email = ?";
    $requete = $connexion->prepare($query);
    if ($requete === FALSE) {
        die("Erreur lors de la préparation de la requête : " . $connexion->error);
    }
    $requete->bind_param("s", $email);
    $requete->execute();
    $requete->bind_result($numUtilisateur, $prenom, $adresse, $photo, $numClub, $email);
    $requete->fetch();
    $requete->close();
    $connexion->close();

    $rank = getRank($numUtilisateur);
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

function getRank($userId) {
    $mysqli = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME, DB_PORT);

    // Vérifier la connexion à la base de données
    if ($mysqli->connect_error) {
        die("La connexion à la base de données a échoué : " . $mysqli->connect_error);
    }
    $rank = 'user';

    // Requête SQL pour récupérer le poste d'un utilisateur
    $query = "SELECT * FROM Utilisateurs 
              LEFT JOIN Président ON Utilisateurs.numUtilisateur = Président.numPres
              LEFT JOIN Directeur ON Utilisateurs.numUtilisateur = Directeur.numDirecteur
              LEFT JOIN Competiteur ON Utilisateurs.numUtilisateur = Competiteur.numCompetiteur
              LEFT JOIN Administrateur ON Utilisateurs.numUtilisateur = Administrateur.numAdmin
              WHERE Utilisateurs.numUtilisateur = ?";

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
                $rank = 'Director';
            } elseif (!empty($row['numAdmin'])) {
                $rank = 'admin';
            }
        }
    } else {
        die("Erreur lors de l'exécution de la requête : " . $stmt->error);
    }

    $stmt->close();
    $mysqli->close();

    return $rank;
}

$response = array(); // Initialiser le tableau de réponse

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $data = json_decode(file_get_contents("php://input"));
    $email = $data->email;

    if (empty($email)) {
        $response['error'] = "Veuillez fournir votre email.";
    } else {
        $result = getConnexionInfoByEmail($email, $data);
        echo json_encode($result);
        // renvoyer les infos de l'utilisateur
    }
} else {
    $response['error'] = "Méthode non autorisée";
}

header('Content-Type: application/json');
echo json_encode($response);

?>
