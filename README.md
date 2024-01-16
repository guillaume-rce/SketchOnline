[//]: <> (Version du readme: 2.1)
# SketchOnline

![Logo](doc/readme/logo.png)


## Spécifications du projet 

### Vue d'ensemble
- **Objectif :** Développer un système d'information pour la gestion de concours de dessins.
- **Cible :** Clubs de dessin.

### Clubs
- Identifiés par plusieurs informations dont le nombre de membres et la localisation.

### Concours
- **Fréquence :** 4 par an.
- **Identification :** Numéro unique, thème, description, dates.
- **Soumissions :** Limitées à la durée du concours.
- **Classement :** Post-concours.

### Rôles des Utilisateurs
- **Administrateur :** Crée les concours.
- **Président :** Supervise le concours.
- **Membres :** Peuvent être compétiteurs ou évaluateurs.
- **Directeurs de club :** Accèdent à toutes les informations.

### États du Concours
1. Non commencé.
2. En cours.
3. En attente de résultats.
4. Évalué.

### Fonctionnalités de la Plateforme
- Mises à jour automatiques.
- Les utilisateurs authentifiés peuvent voir tous les résultats.
- Inscription de nouveaux membres non gérée par la plateforme.
- Participation des clubs sous conditions.

### Gestion des Données
- **Dessins :** ID unique, commentaires, classement.
- **Évaluations :** Commentaires, note.
- **Utilisateurs :** ID unique, informations personnelles.
- **Fonctionnalités supplémentaires :** Suggestions bienvenues.

### Diagramme conceptuel

![Alt text](doc/readme/diagramme.png)