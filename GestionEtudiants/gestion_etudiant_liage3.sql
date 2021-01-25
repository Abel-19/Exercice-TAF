-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 25 jan. 2021 à 00:49
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_etudiant_liage3`
--

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `nbre_etudiant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`id`, `libelle`, `nbre_etudiant`) VALUES
(1, 'LIAGE3', 32),
(2, 'GLRS3', 20),
(3, 'IDC3', 20),
(4, 'LIAGE2', 40),
(5, 'GLRS2', 30),
(6, 'IDC2', 25);

-- --------------------------------------------------------

--
-- Structure de la table `detail`
--

CREATE TABLE `detail` (
  `classe_id` int(11) NOT NULL,
  `professeur_id` int(11) NOT NULL,
  `annee` varchar(25) NOT NULL,
  `module` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `detail`
--

INSERT INTO `detail` (`classe_id`, `professeur_id`, `annee`, `module`) VALUES
(1, 2, '2020-2021', 'Java;C#');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id` int(11) NOT NULL,
  `nom_complet` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `tuteur` varchar(255) DEFAULT NULL,
  `modules` text DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `classe_id` int(11) DEFAULT NULL,
  `matricule` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom_complet`, `type`, `tuteur`, `modules`, `grade`, `classe_id`, `matricule`, `login`, `pwd`) VALUES
(1, 'Baïla Birane Wane', 'Professeur', NULL, 'WebMastering;Java;C#;UML;', 'Ingénieur Informaticien', NULL, 'MAT20212', NULL, NULL),
(2, 'Abel Patrick Assagba', 'Etudiant', 'Jean Assagba', NULL, NULL, 1, NULL, NULL, NULL),
(4, 'Amar', 'Admin', NULL, NULL, NULL, NULL, NULL, 'admin', 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matricule` (`matricule`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
