<?php
/*
The goal is to return this :
evaluations = [
    {
        contestName: "Concours 1",
        image: "",
        numDessin: xx
    },
    ...
}
From this :
data = {
    userId: id
}
*/
require_once('./configdb.php');
$connexion = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME, DB_PORT);

// Vérification de la connexion
if ($connexion->connect_error) {
    echo json_encode(["status" => "failure", "message" => "Échec de la connexion à la base de données"]);
    die();
}

if ($_SERVER["REQUEST_METHOD"] == "GET") {
    $data = json_decode(file_get_contents("php://input"));
    $userId = $data->userId;

    if ($userId == null) {
        echo json_encode(["status" => "failure", "message" => "userId non fourni"]);
        die();
    }

    $sql = ""; // TODO: SQL request to get the evaluations of the user
    $requete = $connexion->prepare($sql);
    $requete->bind_param("i", $userId);
    $requete->execute();

    $result = $requete->get_result();
    $evaluations = [];

    while ($row = $result->fetch_assoc()) {
        $evaluations[] = [
            "contestName" => $row["nomConcours"],
            "image" => $row["image"],
            "numDessin" => $row["numDessin"]
        ];
    }

    echo json_encode(["status" => "success", "evaluations" => $evaluations]);
    die();
} else {
    echo json_encode(["status" => "failure", "message" => "Mauvaise méthode"]);
    die();
}
?>