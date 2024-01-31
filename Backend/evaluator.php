<?php

require_once('./configdb.php');

   function getevaluation ($numEvaluateur){
    $connexion = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME, DB_PORT);

    // Vérification de la connexion
    if ($connexion->connect_error) {
        die("Échec de la connexion à la base de données : " . $connexion->connect_error);
    }
    // Exécuter la requête
    $requete = $connexion->prepare("SELECT * FROM Evaluation WHERE numEvaluateur = ?");
    $binding = $requete->bind_param("i", $numEvaluateur);
    $requete->execute();
    $result = $requete->get_result();
    // Récupérer les résultats avec une boucle
    while ($row = $result->fetch_assoc()) {
        $evaluationList[] = $row;
    }
    $data = [
        "events" => $evaluationList
    ];

    // Fermeture de la requête et de la connexion
    $requete->close();
    $connexion->close();

    // Retourner la liste des evaluations
    echo json_encode($data);
   }

?>
