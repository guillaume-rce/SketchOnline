<?php
function getRole($userID, $connexion) {
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
    LEFT JOIN Compétiteur C ON U.numUtilisateur = C.numCompetiteur
    LEFT JOIN Directeur D ON U.numUtilisateur = D.numDirecteur
    LEFT JOIN Président P ON U.numUtilisateur = P.numPres
    WHERE U.numUtilisateur = ?;";

    $stmt = $connexion->prepare($queryRole);
    $stmt->bind_param("s", $userID);
    $stmt->execute();
    $result = $stmt->get_result();
    $stmt->close();
    if ($result->num_rows > 0){
        $role = $result->fetch_assoc();
    }
    return $role['Role'];
}
?>
