<?php

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

session_start();
require_once "../database.php";

if ($_SERVER['REQUEST_METHOD'] === 'GET') {

    global $connexion;

    $stmt = $connexion->prepare("SELECT id, nom FROM Utilisateur WHERE role = 'utilisateur'"); // TODO: Verify if he already have a contest
    $stmt->execute();
    $result = $stmt->get_result();
    $stmt->close();
    mysqli_close($connexion);

    $data = {
        status: 'success',
        presidents: []
    }

    while ($row = $result->fetch_assoc()) {
        $data['presidents'][] = $row;
    }

    echo json_encode($data);
    http_response_code(200);
    exit;
}
?>