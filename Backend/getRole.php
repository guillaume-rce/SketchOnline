<?php

require_once('./configdb.php');
$connexion = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME, DB_PORT);

// Vérification de la connexion
if ($connexion->connect_error) {
    echo json_encode(["status" => "failure", "message" => "Échec de la connexion à la base de données"]);
    die();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $data = json_decode(file_get_contents("php://input"));
    $userId = $data->userId;

    if ($userId == null) {
        echo json_encode(["status" => "failure", "message" => "userId non fourni"]);
        die();
    }

    // Exécuter la requête
    $requete = $connexion->prepare("SELECT U.numUtilisateur,
    CASE
        WHEN E.numEvaluateur IS NOT NULL THEN 'evaluator'
        WHEN A.numAdmin IS NOT NULL THEN 'admin'
        WHEN C.numCompetiteur IS NOT NULL THEN 'competitor'
        WHEN D.numDirecteur IS NOT NULL THEN 'director'
        WHEN P.numPres IS NOT NULL THEN 'president'
        ELSE 'Aucun role'
    END AS Role
    FROM Utilisateurs U
    LEFT JOIN Evaluateur E ON U.numUtilisateur = E.numEvaluateur
    LEFT JOIN Administrateur A ON U.numUtilisateur = A.numAdmin
    LEFT JOIN Competiteur C ON U.numUtilisateur = C.numCompetiteur
    LEFT JOIN Directeur D ON U.numUtilisateur = D.numDirecteur
    LEFT JOIN President P ON U.numUtilisateur = P.numPres
    WHERE U.numUtilisateur = ?");
    $requete->bind_param("s", $userId);

    $requete->execute();

    $result = $requete->get_result();

    $data = [
        "status" => "success",
        "role" => $result->fetch_assoc()['Role']
    ];

    $requete->close();
    $connexion->close();

    echo json_encode($data);
} else {
    $response['error'] = "Méthode non autorisée";
}

?>
