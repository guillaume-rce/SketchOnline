<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type, X-Requested-With");
header("Access-Control-Allow-Methods: GET, POST, DELETE, PUT");

session_start();
require_once('./Database/configdb.php');

$response = array(); // Tableau pour stocker la réponse

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    $mysqli = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
    if ($mysqli->connect_error) {
        $response['error'] = "La connexion à la base de données a échoué : " . $mysqli->connect_error;
    } else {
        $query = "SELECT * FROM Utilisateurs WHERE nom = ?";
        $stmt = $mysqli->prepare($query);

        if ($stmt === FALSE) {
            $response['error'] = "Erreur lors de la préparation de la requête : " . $mysqli->error;
        } else {
            $stmt->bind_param("s", $username);

            if ($stmt->execute() === TRUE) {
                $result = $stmt->get_result();
                if ($result->num_rows > 0) {
                    $user = $result->fetch_assoc();
                    if (password_verify($password, $user['password'])) {
                        $token = password_hash(time(), PASSWORD_DEFAULT);
                        $response['token'] = $token;
                    } else {
                        $response['error'] = "Mot de passe incorrect";
                    }
                } else {
                    $response['error'] = "Nom d'utilisateur incorrect";
                }
            } else {
                $response['error'] = "Erreur lors de l'exécution de la requête : " . $stmt->error;
            }

            $stmt->close();
        }

        $mysqli->close();
    }
}

// Retournez la réponse en format JSON
header('Content-Type: application/json');
echo json_encode($response);
?>
