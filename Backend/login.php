<?php
// Définir les en-têtes CORS (Cross-Origin Resource Sharing) pour autoriser les requêtes depuis n'importe quelle origine
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type, X-Requested-With");
header("Access-Control-Allow-Methods: GET, POST, DELETE, PUT");

// Démarrer une session PHP (utile si vous avez besoin de gérer des sessions utilisateur)
session_start();

// Inclure le fichier de configuration de la base de données
require_once('./Database/configdb.php');

// Tableau pour stocker la réponse JSON
$response = array();

// Vérifier si la requête est une requête POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupérer les données JSON de la requête
    $data = json_decode(file_get_contents("php://input"));

    // Vérifier si le nom d'utilisateur et le mot de passe ont été fournis
    if (empty($data->email) || empty($data->password)) {
        $response['error'] = "Veuillez fournir un nom d'utilisateur et un mot de passe";
    } else {
        // Récupérer le nom d'utilisateur et le mot de passe
        $email = $data->email;
        $password = $data->password;
        
        // Établir une connexion à la base de données
        $mysqli = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME,DB_PORT);
        if ($mysqli->connect_error) {
            $response['error'] = "La connexion à la base de données a échoué : " . $mysqli->connect_error;
        } else {
            // Préparer la requête SQL pour sélectionner l'utilisateur avec le nom d'utilisateur fourni
            $query = "SELECT * FROM Utilisateurs WHERE email = ?";
            $stmt = $mysqli->prepare($query);

            // Vérifier si la préparation de la requête a réussi
            if ($stmt === FALSE) {
                $response['error'] = "Erreur lors de la préparation de la requête : " . $mysqli->error;
            } else {
                // Lier le nom d'utilisateur comme paramètre à la requête
                $stmt->bind_param("s", $email);

                // Exécuter la requête
                if ($stmt->execute() === TRUE) {
                    // Récupérer le résultat de la requête
                    $result = $stmt->get_result();

                    // Vérifier si l'utilisateur existe
                    if ($result->num_rows > 0) {
                        // Récupérer les données de l'utilisateur
                        $user = $result->fetch_assoc();

                        // Comparer les mots de passe
                        if ($password === $user['password']) {
                            $token = password_hash(time(), PASSWORD_DEFAULT);
                            $response['token'] = $token;
                        } else {
                            error_log("Mot de passe incorrect. Données reçues : " . json_encode($data));
                            $response['error'] = "Mot de passe incorrect";
                        }
                    } else {
                        $response['error'] = "Nom d'utilisateur incorrect";
                    }
                } else {
                    $response['error'] = "Erreur lors de l'exécution de la requête : " . $stmt->error;
                }

                // Fermer la requête préparée
                $stmt->close();
            }

            // Fermer la connexion à la base de données
            $mysqli->close();
        }
    }
}

// Retourner la réponse au format JSON
header('Content-Type: application/json');
echo json_encode($response);
?>
