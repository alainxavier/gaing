-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 07 nov. 2020 à 19:24
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gaing`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteurs`
--

DROP TABLE IF EXISTS `acteurs`;
CREATE TABLE IF NOT EXISTS `acteurs` (
  `id_acteur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenoms` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `matricule` varchar(255) NOT NULL,
  `filiere` varchar(255) NOT NULL,
  `commune` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  PRIMARY KEY (`id_acteur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `activites`
--

DROP TABLE IF EXISTS `activites`;
CREATE TABLE IF NOT EXISTS `activites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_acteur` int(11) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `lieu_intervention` varchar(255) NOT NULL,
  `annees` varchar(255) NOT NULL,
  `date_modification` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `activites_2017_2018`
--

DROP TABLE IF EXISTS `activites_2017_2018`;
CREATE TABLE IF NOT EXISTS `activites_2017_2018` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_acteur` int(11) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `lieu_intervention` varchar(255) NOT NULL,
  `annees` varchar(255) NOT NULL,
  `date_modification` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `activites_2018_2019`
--

DROP TABLE IF EXISTS `activites_2018_2019`;
CREATE TABLE IF NOT EXISTS `activites_2018_2019` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_acteur` int(11) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `lieu_intervention` varchar(255) NOT NULL,
  `annees` varchar(255) NOT NULL,
  `date_modification` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `activites_2019_2020`
--

DROP TABLE IF EXISTS `activites_2019_2020`;
CREATE TABLE IF NOT EXISTS `activites_2019_2020` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_acteur` int(11) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `lieu_intervention` varchar(255) NOT NULL,
  `annees` varchar(255) NOT NULL,
  `date_modification` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `activites_2020_2021`
--

DROP TABLE IF EXISTS `activites_2020_2021`;
CREATE TABLE IF NOT EXISTS `activites_2020_2021` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_acteur` int(11) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `lieu_intervention` varchar(255) NOT NULL,
  `annees` varchar(255) NOT NULL,
  `date_modification` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `activites_2021_2022`
--

DROP TABLE IF EXISTS `activites_2021_2022`;
CREATE TABLE IF NOT EXISTS `activites_2021_2022` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_acteur` int(11) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `lieu_intervention` varchar(255) NOT NULL,
  `annees` varchar(255) NOT NULL,
  `date_modification` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fonctions`
--

DROP TABLE IF EXISTS `fonctions`;
CREATE TABLE IF NOT EXISTS `fonctions` (
  `id_fonction` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) NOT NULL,
  `date_create` datetime NOT NULL,
  PRIMARY KEY (`id_fonction`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `inscriptions`
--

DROP TABLE IF EXISTS `inscriptions`;
CREATE TABLE IF NOT EXISTS `inscriptions` (
  `id_inscription` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `date_inscription` datetime NOT NULL,
  `etats` varchar(255) NOT NULL,
  PRIMARY KEY (`id_inscription`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_connexion` datetime NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
