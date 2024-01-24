<?php

// Fonction pour récupérer la liste des concours
function getEventList() {
    // Connexion à la base de données
    $connexion = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME, DB_PORT);

    // Vérification de la connexion
    if ($connexion->connect_error) {
        die("Échec de la connexion à la base de données : " . $connexion->connect_error);
    }

    // Requête pour récupérer tous les concours
    $requete = $connexion->prepare("SELECT numConcours, titre, theme, affiche, etat FROM Concours");
    $requete->execute();

    // Récupérer le résultat de la requête
    $result = $requete->get_result();

    // Récupérer tous les résultats sous forme de tableau associatif
    $eventList = $result->fetch_all(MYSQLI_ASSOC);

    // Fermeture de la requête et de la connexion
    $requete->close();
    $connexion->close();

    // Retourner la liste des concours
    return $eventList;
}

// Récupération des données du corps de la requête
$data = json_decode(file_get_contents('php://input'), true);

// Récupération de la liste des concours
$eventList = getEventList();
echo json_encode($eventList);

?>
