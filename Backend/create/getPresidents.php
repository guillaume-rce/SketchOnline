<?php

require_once('../getRole.php');
require_once('./configdb.php');
$connexion = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME, DB_PORT);

// Vérification de la connexion
if ($connexion->connect_error) {
    // Retourner un message d'erreur avec un status 'failure'
    echo json_encode(["status" => "failure", "message" => "Échec de la connexion à la base de données"]);
    die();
}
// Exécuter la requête
$requete = $connexion->prepare("SELECT * FROM Utilisateurs U 
    WHERE U.numUtilisateur NOT IN ( 
    SELECT E.numEvaluateur FROM Evaluateur E 
    UNION SELECT A.numAdmin FROM Administrateur A 
    UNION SELECT C.numCompetiteur FROM Compétiteur C 
    UNION SELECT D.numDirecteur FROM Directeur D 
    UNION SELECT P.numPres FROM Président P ) "
);
$requete->execute();
$result = $requete->get_result();


/*
The goal is to return the list of user allowed to be a president
Like that :
data = {
    presidents: [
        {
            id: 'xxxx',
            name: 'xxxx'
        },
        ...
    ]
};
*/
$presidents = [];
// Récupérer les résultats avec une boucle
while ($row = $result->fetch_assoc()) {

    $presidents[] = [
        "id" => $row["numUtilisateur"],
        "name" => $row["nomUtilisateur"]
    ];
  
}

$data = [
    "status" => "success", 
    "presidents" => $presidents
];

// Fermeture de la requête et de la connexion
$requete->close();
$connexion->close();

// Retourner la réponse
echo json_encode($data);

?>
