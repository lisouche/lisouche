-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 07 Décembre 2021 à 17:07
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `agence_voiture`
--
CREATE DATABASE `agence_voiture` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `agence_voiture`;

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `code_client` varchar(20) NOT NULL,
  `nom_prenom` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `profession` varchar(20) NOT NULL,
  `num_tel` int(11) NOT NULL,
  `adresse` varchar(20) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`code_client`, `nom_prenom`, `date_naissance`, `profession`, `num_tel`, `adresse`, `code_postal`, `ville`, `email`) VALUES
('1200', 'Remy B', '2000-11-24', 'pas d''info', 2147483647, '12 rue de paris', 94000, 'creteil', 'remy@gmail.com'),
('1201', 'yasmine', '1980-11-11', 'pas d''info', 2147483647, '21 avenue de strasbo', 75011, 'paris', 'yasmine@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id_location` varchar(20) NOT NULL,
  `duree_location` int(11) NOT NULL,
  `date_location` date NOT NULL,
  `prix_location` int(11) NOT NULL,
  `code_client` varchar(20) NOT NULL,
  `immatriculation` varchar(20) NOT NULL,
  PRIMARY KEY (`id_location`),
  KEY `code_client` (`code_client`),
  KEY `immatriculation` (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `locations`
--


-- --------------------------------------------------------

--
-- Structure de la table `reparation`
--

CREATE TABLE IF NOT EXISTS `reparation` (
  `num_reparation` int(11) NOT NULL,
  `date_reparation` varchar(100) DEFAULT NULL,
  `duree_reparation` varchar(100) DEFAULT NULL,
  `cout_reparation` varchar(100) DEFAULT NULL,
  `responsable_rep` varchar(100) DEFAULT NULL,
  `immatriculation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`num_reparation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `reparation`
--


-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE IF NOT EXISTS `voitures` (
  `immatriculisation` varchar(20) NOT NULL,
  `marque` varchar(20) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `carburant` varchar(20) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `modele` varchar(20) NOT NULL,
  `nbr_porte` int(11) NOT NULL,
  `nbr_place` int(11) NOT NULL,
  `etat` varchar(20) NOT NULL,
  `prix_achat` int(11) DEFAULT NULL,
  PRIMARY KEY (`immatriculisation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voitures`
--

INSERT INTO `voitures` (`immatriculisation`, `marque`, `kilometrage`, `carburant`, `couleur`, `modele`, `nbr_porte`, `nbr_place`, `etat`, `prix_achat`) VALUES
('22 TU 2000', 'mercedes', 10000, 'essence', 'blanche', 'AMG', 5, 5, 'bon', NULL),
('33 BR 3000', 'audi', 10000, 'essence', 'noire', 'A5', 3, 4, 'bon', NULL),
('44 CC 4000', 'tesla', 10000, 'electrique', 'blanche', 'modele 3', 5, 5, 'très bon', 48500),
('55 tt 2000', 'renault', 10000, 'diesel', 'noire', 'clio', 5, 5, 'mauvais', NULL),
('66 tu 2000', 'peugeot', 10000, 'essence', 'blanche', 'DS7', 5, 5, 'très bon', NULL);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `voitures` (`immatriculisation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `locations_ibfk_2` FOREIGN KEY (`code_client`) REFERENCES `clients` (`code_client`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de données: `bd4`
--
CREATE DATABASE `bd4` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd4`;

-- --------------------------------------------------------

--
-- Structure de la table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `Employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `First_name` varchar(50) DEFAULT NULL,
  `Last_name` varchar(50) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Joining_date` date DEFAULT NULL,
  `Departement` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `employee`
--

INSERT INTO `employee` (`Employee_id`, `First_name`, `Last_name`, `Salary`, `Joining_date`, `Departement`) VALUES
(1, 'Bob', 'Kinto', 1000000, '2019-01-20', 'Finance'),
(2, 'Jerry', 'Kansxo', 6000000, '2019-01-15', 'IT'),
(3, 'Philip', 'Jose', 8900000, '2019-02-05', 'Banking'),
(4, 'John', 'Abraham', 2000000, '2019-02-25', 'Insurance'),
(5, 'Michael', 'Mathew', 2200000, '2019-02-28', 'Finance'),
(6, 'Alex', 'chreketo', 4000000, '2019-05-10', 'IT'),
(7, 'Yohan', 'Soso', 1230000, '2019-06-20', 'Banking');

-- --------------------------------------------------------

--
-- Structure de la table `reward`
--

CREATE TABLE IF NOT EXISTS `reward` (
  `Employee_ref_id` int(11) DEFAULT NULL,
  `date_reward` date DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  KEY `Employee_ref_id` (`Employee_ref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `reward`
--

INSERT INTO `reward` (`Employee_ref_id`, `date_reward`, `amount`) VALUES
(1, '2019-05-11', 1000),
(2, '2019-02-15', 5000),
(3, '2019-04-22', 2000),
(1, '2019-06-20', 8000);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `reward`
--
ALTER TABLE `reward`
  ADD CONSTRAINT `reward_ibfk_1` FOREIGN KEY (`Employee_ref_id`) REFERENCES `employee` (`Employee_id`);
--
-- Base de données: `cinema_bd`
--
CREATE DATABASE `cinema_bd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cinema_bd`;
--
-- Base de données: `pays`
--
CREATE DATABASE `pays` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pays`;

-- --------------------------------------------------------

--
-- Structure de la table `communes`
--

CREATE TABLE IF NOT EXISTS `communes` (
  `code_commune` varchar(20) NOT NULL,
  `nom_commune` varchar(20) NOT NULL,
  `population_2010` varchar(20) NOT NULL,
  `population_1999` varchar(20) NOT NULL,
  `surface` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `num_departement` varchar(20) NOT NULL,
  PRIMARY KEY (`code_commune`),
  UNIQUE KEY `num_departement` (`num_departement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `communes`
--

INSERT INTO `communes` (`code_commune`, `nom_commune`, `population_2010`, `population_1999`, `surface`, `longitude`, `latitude`, `num_departement`) VALUES
('29790', 'pont croix', '1 766', '1 667', '8,09 km²', '-1.929772', '46.687089', '29'),
('57440', 'algrange', '6?544 ', '6?198 ', '6,96 km²', '6.0474800°', '49.3586300°', '57'),
('78380', 'bougival', '8?447', '8?432', '2,76 km²', '2.1414800°', '48.8622300°', '78');

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE IF NOT EXISTS `departement` (
  `num_departement` varchar(20) NOT NULL,
  `nom_departement` varchar(20) NOT NULL,
  `code_region` varchar(20) NOT NULL,
  PRIMARY KEY (`num_departement`),
  UNIQUE KEY `code_region` (`code_region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `departement`
--

INSERT INTO `departement` (`num_departement`, `nom_departement`, `code_region`) VALUES
('29', 'finistere', '53'),
('57', 'moselle', '44'),
('78', 'yvelines', '11');

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `code_region` varchar(20) NOT NULL,
  `nom_region` varchar(20) NOT NULL,
  PRIMARY KEY (`code_region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `region`
--

INSERT INTO `region` (`code_region`, `nom_region`) VALUES
('11', 'ile de france'),
('44', 'grand est'),
('53', 'bretagne');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `communes`
--
ALTER TABLE `communes`
  ADD CONSTRAINT `communes_ibfk_1` FOREIGN KEY (`num_departement`) REFERENCES `departement` (`num_departement`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `departement`
--
ALTER TABLE `departement`
  ADD CONSTRAINT `departement_ibfk_1` FOREIGN KEY (`code_region`) REFERENCES `region` (`code_region`) ON DELETE CASCADE ON UPDATE CASCADE;
