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

    // Vérification de la présence de l'userId dans $_GET
    if ($userId == null) {
        echo json_encode(["status" => "failure", "message" => "userId non fourni"]);
        die();
    }

    // Exécuter la requête
    $requete = $connexion->prepare("SELECT c.numConcours, c.titre FROM Utilisateurs u JOIN Compétiteur comp ON u.numUtilisateur = comp.numCompetiteur JOIN ParticipeComp pc ON comp.numCompetiteur = pc.numCompetiteur JOIN Concours c ON pc.numConcours = c.numConcours WHERE u.numUtilsateur = ?");

    if (!$requete) {
        echo json_encode(["status" => "failure", "message" => "Erreur de préparation de la requête"]);
        $connexion->close();
        die();
    }

    $requete->bind_param("s", $userId);
    if (!$requete->execute()) {
        echo json_encode(["status" => "failure", "message" => "Erreur d'exécution de la requête"]);
        $requete->close();
        $connexion->close();
        die();
    }

    $result = $requete->get_result();
    $competitionList = [];

    while ($row = $result->fetch_assoc()) {
        $competitionList[] = [
            "numConcours" => $row['numConcours'],
            "titre" => $row['titre']
        ];
    }

    $data = [
        "status" => "success",
        "events" => $competitionList
    ];

    $requete->close();
    $connexion->close();

    echo json_encode($data);
} else {
    $response['error'] = "Méthode non autorisée";
}

?>