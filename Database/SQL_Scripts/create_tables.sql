-- Création de la base de données
CREATE DATABASE IF NOT EXISTS SketchBd;
-- Utilisation de la base de données
USE SketchBd;

-- Suppression des tables si elles existent déjà
DROP TABLE IF EXISTS Jury;
DROP TABLE IF EXISTS ParticipeClub;
DROP TABLE IF EXISTS ParticipeComp;
DROP TABLE IF EXISTS Dirige;
DROP TABLE IF EXISTS Evaluation;
DROP TABLE IF EXISTS Dessin;
DROP TABLE IF EXISTS Competiteur;
DROP TABLE IF EXISTS Evaluateur;
DROP TABLE IF EXISTS Utilisateurs;
DROP TABLE IF EXISTS Administrateur;
DROP TABLE IF EXISTS Directeur;
DROP TABLE IF EXISTS Président;
DROP TABLE IF EXISTS Concours;
DROP TABLE IF EXISTS Club;

-- Création des tables

-- Table des clubs
CREATE TABLE Club (
    numClub INT PRIMARY KEY,
    nomClub VARCHAR(255),
    adresse VARCHAR(255),
    numTelephone VARCHAR(20),
    nombreAdherants INT,
    ville VARCHAR(255),
    departement VARCHAR(255),
    region VARCHAR(255)
);

-- Table des compétiteurs
CREATE TABLE Competiteur (
    numCompetiteur INT,
    datePremiereParticipation DATE,
    PRIMARY KEY (numCompetiteur)
);

-- Table des concours
CREATE TABLE Concours (
    numConcours INT,
    numPres INT,
    theme VARCHAR(255),
    dateDebut DATE,
    dateFin DATE,
    etat ENUM('pas commencé', 'en cours', 'attente', 'résultats', 'évalué'),
    PRIMARY KEY(numConcours)
);

-- Table des évaluateurs
CREATE TABLE Evaluateur (
    numEvaluateur INT,
    specialite VARCHAR(255),
    PRIMARY KEY (numEvaluateur)
);

-- Table des utilisateurs
CREATE TABLE Utilisateurs (
    numUtilisateur INT PRIMARY KEY AUTO_INCREMENT,
    numClub INT,
    pseudo VARCHAR(255),
    nom VARCHAR(255),
    prenom VARCHAR(255),
    adresse VARCHAR(255),
    photo VARCHAR(255),
    login VARCHAR(255),
    password VARCHAR(255),
    FOREIGN KEY (numClub) REFERENCES Club(numClub)
);

-- Table des directeurs
CREATE TABLE Directeur (
    numDirecteur INT PRIMARY KEY,
    dateDebut DATE,
    FOREIGN KEY (numDirecteur) REFERENCES Utilisateurs(numUtilisateur)
);

-- Table des administrateurs
CREATE TABLE Administrateur (
    numAdmin INT PRIMARY KEY,
    dateDebut DATE,
    FOREIGN KEY (numAdmin) REFERENCES Utilisateurs(numUtilisateur)
);

-- Table des présidents
CREATE TABLE President (
    numPres INT PRIMARY KEY,
    prime VARCHAR(255),
    FOREIGN KEY (numPres) REFERENCES Utilisateurs(numUtilisateur)
);

-- Table des dessins
CREATE TABLE Dessin (
    numDessin INT,
    numCompetiteur INT,
    numConcours INT,
    numEvaluateur INT,
    commentaire TEXT,
    classement INT,
    dateRemise DATE,
    leDessin BLOB,
    PRIMARY KEY (numDessin),
    FOREIGN KEY (numCompetiteur) REFERENCES Competiteur(numCompetiteur),
    FOREIGN KEY (numConcours) REFERENCES Concours(numConcours),
    FOREIGN KEY (numEvaluateur) REFERENCES Evaluateur(numEvaluateur)
);

-- Table des évaluations
CREATE TABLE Evaluation (
    numEval INT,
    numEvaluateur INT,
    numDessin INT,
    dateEvaluation DATE,
    note INT,
    commentaire TEXT,
    PRIMARY KEY (numEval),
    FOREIGN KEY (numEvaluateur) REFERENCES Evaluateur(numEvaluateur),
    FOREIGN KEY (numDessin) REFERENCES Dessin(numDessin)
);

-- Table associant un club à son directeur
CREATE TABLE Dirige (
    numClub INT,
    numDirecteur INT,
    PRIMARY KEY (numClub, numDirecteur),
    FOREIGN KEY (numClub) REFERENCES Club(numClub),
    FOREIGN KEY (numDirecteur) REFERENCES Directeur(numDirecteur)
);

-- Table associant un concours à un compétiteur
CREATE TABLE ParticipeComp (
    numConcours INT,
    numCompetiteur INT,
    PRIMARY KEY (numConcours, numCompetiteur),
    FOREIGN KEY (numConcours) REFERENCES Concours(numConcours),
    FOREIGN KEY (numCompetiteur) REFERENCES Competiteur(numCompetiteur)
);

-- Table associant un concours à un club
CREATE TABLE ParticipeClub (
    numConcours INT,
    numClub INT,
    PRIMARY KEY (numConcours, numClub),
    FOREIGN KEY (numConcours) REFERENCES Concours(numConcours),
    FOREIGN KEY (numClub) REFERENCES Club(numClub)
);

-- Table associant un concours à un évaluateur (jury)
CREATE TABLE Jury (
    numConcours INT,
    numEvaluateur INT,
    PRIMARY KEY (numConcours, numEvaluateur),
    FOREIGN KEY (numConcours) REFERENCES Concours(numConcours),
    FOREIGN KEY (numEvaluateur) REFERENCES Evaluateur(numEvaluateur)
);
