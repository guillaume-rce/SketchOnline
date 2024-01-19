[//]: <> (Version du readme: 3.0)
# SketchOnline

![Logo](Documentation/readme/logo.png)


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

## Diagramme conceptuel

![Alt text](Documentation/readme/diagramme.png)

### Arborescence du projet

SketchOnline/
├── Backend
├── Database
│   ├── diagramme.png
│   └── SQL_Scripts
├── Documentation
│   ├── CahierDesCharges.pdf
│   └── README.md
├── Frontend
│   ├── assets
│   │   ├── home_bg.png
│   │   ├── login_register_bg.png
│   │   └── logo.png
│   ├── Pages
│   │   ├── 404.html
│   │   ├── competition.html
│   │   ├── event.html
│   │   ├── gallery.html
│   │   ├── index.html
│   │   ├── login.html
│   │   └── register.html
│   ├── Scripts
│   └── Styles
│       ├── 404.css
│       ├── competition.css
│       ├── event.css
│       ├── gallery.css
│       ├── index.css
│       ├── login.css
│       ├── register.css
│       └── style.css
└── package.json
