SELECT c.numConcours, c.titre
FROM Utilisateurs u
JOIN Competiteur comp ON u.numUtilisateur = comp.numCompetiteur
JOIN ParticipeComp pc ON comp.numCompetiteur = pc.numCompetiteur
JOIN Concours c ON pc.numConcours = c.numConcours
WHERE u.email = 'email_du_competiteur';
