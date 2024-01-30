<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
session_start();

require_once('./configdb.php');
$response = array();

$connexion = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME, DB_PORT);
if ($connexion->connect_error) {
    $response['error'] = "La connexion à la base de données a échoué : " . $connexion->connect_error;
    header('Content-Type: application/json');
    echo json_encode($response);
    $connexion->close();
    exit(); // Arrête le script en cas d'échec de la connexion
}

$data = json_decode(file_get_contents("php://input"));

$email = $_GET['email'];
$role = "user";
$queryRole = "SELECT U.numUtilisateur,
CASE
    WHEN E.numEvaluateur IS NOT NULL THEN 'Evaluateur'
    WHEN A.numAdmin IS NOT NULL THEN 'Administrateur'
    WHEN C.numCompetiteur IS NOT NULL THEN 'Compétiteur'
    WHEN D.numDirecteur IS NOT NULL THEN 'Directeur'
    WHEN P.numPres IS NOT NULL THEN 'Président'
    ELSE 'Aucun role'
END AS Role
FROM Utilisateurs U
LEFT JOIN Evaluateur E ON U.numUtilisateur = E.numEvaluateur
LEFT JOIN Administrateur A ON U.numUtilisateur = A.numAdmin
LEFT JOIN Competiteur C ON U.numUtilisateur = C.numCompetiteur
LEFT JOIN Directeur D ON U.numUtilisateur = D.numDirecteur
LEFT JOIN President P ON U.numUtilisateur = P.numPres
WHERE U.email = ?;";

$stmt = $connexion->prepare($queryRole);
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();
$stmt->close();

if ($result->num_rows > 0) {
    $roleData = $result->fetch_assoc();
    $role = $roleData['Role'];
}

echo json_encode(['role' => $role]);

$connexion->close();
?>
