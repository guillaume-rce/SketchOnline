<?php
console.log("test");

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
    console.log($userId);

    if ($userId == null) {
        echo json_encode(["status" => "failure", "message" => "userId non fourni"]);
        die();
    }

    // Exécuter la requête
    $requete = $connexion->prepare("SELECT c.numConcours, c.titre FROM Utilisateurs u JOIN Compétiteur comp ON u.numUtilisateur = comp.numCompetiteur JOIN ParticipeComp pc ON comp.numCompetiteur = pc.numCompetiteur JOIN Concours c ON pc.numConcours = c.numConcours WHERE u.numUtilsateur = ?");
    $requete->bind_param("s", $userId);

    $requete->execute();

    $result = $requete->get_result();
    $competitionList = [];
    console.log($result);

    while ($row = $result->fetch_assoc()) {
        console.log($row);

        $competitionList[] = [
            "numConcours" => $row['numConcours'],
            "titre" => $row['titre']
        ];

        console.log($competitionList);
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