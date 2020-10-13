-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 02 oct. 2020 à 16:15
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `acteurs`
--

INSERT INTO `acteurs` (`id_acteur`, `nom`, `prenoms`, `genre`, `matricule`, `filiere`, `commune`, `contact`, `email`, `date_ajout`) VALUES
(3, 'KOUAME', 'Yao Xavier', 'Homme', '12099358V', 'Informatique ', 'Abidjan', '08310068', 'mekkaddish@yahoo.com', '2020-10-02 08:48:39'),
(4, 'KOKOLA', 'Ornella', 'Femme', '20080632J', 'Littérature ', 'Cocody', '04528581', 'kaporel@yahoo.fr', '2020-10-02 14:52:33'),
(5, 'KOUAME', 'Yao Xavier', 'Homme', '13024766A', 'Informatique ', 'Abidjan', '55688832', 'mekkaddish@yahoo.com', '2020-10-02 14:54:20'),
(6, 'KOUAME', 'Xavier', 'Homme', '13024766A', 'Informatique ', 'Abidjan', '55688832', 'alainxavier2007@hotmail.com', '2020-10-02 15:49:15');

-- --------------------------------------------------------

--
-- Structure de la table `activites`
--

DROP TABLE IF EXISTS `activites`;
CREATE TABLE IF NOT EXISTS `activites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_acteurs` int(11) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `lieu_intervention` varchar(255) NOT NULL,
  `annees` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `inscriptions`
--

INSERT INTO `inscriptions` (`id_inscription`, `email`, `pass`, `date_inscription`, `etats`) VALUES
(4, 'alainxavier2007@hotmail.com', 'a95dc4e899ac156e6e0b6666dd970c9959e0e4fd948177c263543b23492768ec', '2020-10-02 15:14:49', 'En attente'),
(3, 'mekkaddish@yahoo.com', 'a95dc4e899ac156e6e0b6666dd970c9959e0e4fd948177c263543b23492768ec', '2020-10-01 17:27:45', 'En attente');

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
