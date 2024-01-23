<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type, X-Requested-With");
header("Access-Control-Allow-Methods: GET, POST, DELETE, PUT");

require_once('./Database/configdb.php');

$response = array(); // Tableau pour stocker la réponse

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $data = json_decode(file_get_contents("php://input"));

    if (empty($data->username) || empty($data->name) || empty($data->firstname) || empty($data->email) || empty($data->password)) {
        $response['error'] = "Veuillez remplir tous les champs";
    } else {
        $username = $data->username;
        $name = $data->name;
        $firstname = $data->firstname;
        $email = $data->email;
        $password = $data->password;

        $mysqli = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
        if ($mysqli->connect_error) {
            $response['error'] = "La connexion à la base de données a échoué : " . $mysqli->connect_error;
        } else {
            $query = "INSERT INTO Utilisateurs (pseudo, nom, prenom, email, password) VALUES (?, ?, ?, ?, ?)";
            $stmt = $mysqli->prepare($query);

            if ($stmt === FALSE) {
                $response['error'] = "Erreur lors de la préparation de la requête : " . $mysqli->error;
            } else {
                // Utilisation de bind_param avec les types appropriés pour éviter des erreurs potentielles
                $stmt->bind_param("sssss", $username, $name, $firstname, $email, $password);

                if ($stmt->execute()) {
                    $response['success'] = "Inscription réussie !";
                } else {
                    $response['error'] = "Erreur lors de l'inscription : " . $stmt->error;
                }

                $stmt->close();
            }

            $mysqli->close();
        }
    }
}

// Retournez la réponse en format JSON
header('Content-Type: application/json');
echo json_encode($response);
?>
