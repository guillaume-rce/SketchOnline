<?php

require_once('./Database/configdb.php');

function getEventList($infos) {
    $connexion = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME, DB_PORT);

    // Vérification de la connexion
    if ($connexion->connect_error) {
        die("Échec de la connexion à la base de données : " . $connexion->connect_error);
    }

    // Préparer la requête SQL en fonction des informations demandées
    if (!empty($infos)) {
        $query = "SELECT " . implode(", ", $infos) . " FROM Concours";
    } else {
        $query = "SELECT * FROM Concours";
    }

    // Exécuter la requête
    $requete = $connexion->prepare($query);
    $requete->execute();
    $result = $requete->get_result();
    $eventList = $result->fetch_all(MYSQLI_ASSOC);

    // Fermeture de la requête et de la connexion
    $requete->close();
    $connexion->close();

    // Retourner la liste des concours
    return $eventList;
}

// Récupération des données du corps de la requête
$data = json_decode(file_get_contents('php://input'), true);

$min = $data['minEvents'];
$max = $data['maxEvents'];

// Appel de la fonction getEventList
$eventList = getEventList($data['events']);

// Vérifier si les indices $min et $max existent dans la liste avant de les utiliser
if (isset($eventList[$min]) && isset($eventList[$max])) {
    // Extraire la sous-liste des concours spécifiés
    $resultList = array_slice($eventList, $min, $max - $min);
    // Renvoyer la liste résultante en format JSON
    echo json_encode($resultList);
} else {
    // Gérer l'erreur si les indices ne sont pas valides
    echo json_encode(['error' => 'Indices de liste non valides']);
}

?>
