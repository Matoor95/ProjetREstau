-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mer. 01 avr. 2020 à 04:25
-- Version du serveur :  10.1.34-MariaDB
-- Version de PHP :  7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `restau`

CREATE DATABASE IF NOT EXISTS `restau` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `restau`;
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `ID_client` int(11) NOT NULL,
  `name_client` varchar(100) NOT NULL,
  `password_client` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`ID_client`, `name_client`, `password_client`) VALUES
(2, 'client', 'client'),
(3, 'mido', 'mido');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `ID_commandes` int(11) NOT NULL,
  `nom_client` varchar(200) NOT NULL,
  `nom_plat` varchar(200) NOT NULL,
  `quantite` int(11) NOT NULL DEFAULT '0',
  `etat` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commandesencours`
--

CREATE TABLE `commandesencours` (
  `ID_commandes` int(11) NOT NULL,
  `TimePreparationinMiliSecond` double NOT NULL,
  `ProgressValue` int(11) NOT NULL,
  `TempsEcoule` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cuisinier`
--

CREATE TABLE `cuisinier` (
  `ID_cuisinier` int(11) NOT NULL,
  `name_cuisinier` varchar(100) NOT NULL,
  `password_cuisinier` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cuisinier`
--

INSERT INTO `cuisinier` (`ID_cuisinier`, `name_cuisinier`, `password_cuisinier`) VALUES
(3, 'cuisinier', 'cuisinier'),
(4, 'cuisinier2', 'cuisinier2');

-- --------------------------------------------------------

--
-- Structure de la table `plat`
--

CREATE TABLE `plat` (
  `ID` int(11) NOT NULL,
  `categorie` varchar(200) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `prix` double NOT NULL,
  `duree` int(11) NOT NULL,
  `nom_image` varchar(200) DEFAULT NULL,
  `image` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID_client`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`ID_commandes`);

--
-- Index pour la table `commandesencours`
--
ALTER TABLE `commandesencours`
  ADD PRIMARY KEY (`ID_commandes`);

--
-- Index pour la table `cuisinier`
--
ALTER TABLE `cuisinier`
  ADD PRIMARY KEY (`ID_cuisinier`);

--
-- Index pour la table `plat`
--
ALTER TABLE `plat`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `ID_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `ID_commandes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT pour la table `commandesencours`
--
ALTER TABLE `commandesencours`
  MODIFY `ID_commandes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cuisinier`
--
ALTER TABLE `cuisinier`
  MODIFY `ID_cuisinier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `plat`
--
ALTER TABLE `plat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
