<?php
session_start();
require_once('../Database/configdb.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    $mysqli = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
    if ($mysqli->connect_error) {
        die("La connexion à la base de données a échoué : " . $mysqli->connect_error);
    }

    $query = "SELECT * FROM Utilisateurs WHERE pseudo = ?";
    $stmt = $mysqli->prepare($query);

    if ($stmt === FALSE) {
        die("Erreur lors de la préparation de la requête : " . $mysqli->error);
    }

    $stmt->bind_param("s", $username);

    if ($stmt->execute() === TRUE) {
        $result = $stmt->get_result();
        if ($result->num_rows > 0) {
            $user = $result->fetch_assoc();
            if (password_verify($password, $user['password'])) {
                $token = password_hash(time(), PASSWORD_DEFAULT);
                echo json_encode(['status' => 'success', 'message' => 'Connexion réussie !', 'token' => $token]);
            } else {
                echo json_encode(['status' => 'error', 'message' => 'Mot de passe incorrect']);
            }
        } else {
            echo json_encode(['status' => 'error', 'message' => 'Nom d\'utilisateur incorrect']);
        }
    } else {
        echo json_encode(['status' => 'error', 'message' => 'Erreur lors de la connexion : ' . $stmt->error]);
    }

    $stmt->close();
    $mysqli->close();
}
?>