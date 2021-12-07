-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 07 Décembre 2021 à 17:35
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

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

CREATE TABLE IF NOT EXISTS `artiste` (
  `id_artiste` varchar(20) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `annee_naissance` varchar(20) NOT NULL,
  PRIMARY KEY (`id_artiste`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `artiste`
--


-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE IF NOT EXISTS `film` (
  `id_film` varchar(20) NOT NULL,
  `Titre` varchar(20) NOT NULL,
  `Annee` varchar(20) NOT NULL,
  `Genre` varchar(20) NOT NULL,
  `Resume` varchar(20) NOT NULL,
  `id_realisateur` varchar(20) NOT NULL,
  `Code_pays` varchar(20) NOT NULL,
  PRIMARY KEY (`id_film`),
  KEY `Code_pays` (`Code_pays`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `film`
--

INSERT INTO `film` (`id_film`, `Titre`, `Annee`, `Genre`, `Resume`, `id_realisateur`, `Code_pays`) VALUES
('103', 'Taxi Driver', '1976', 'Crime', 'VÃ©tÃ©ran de la Guer', '1032', 'US'),
('11', 'La Guerre des Ã©toil', '1977', 'Aventure', 'Il y a bien longtemp', '1', 'US'),
('116', 'Match point', '2005', 'Drame', 'Jeune professeur de ', '1243', 'US'),
('142', 'Le Secret de Brokeba', '2005', 'Drame', 'EtÃ© 1963, Wyoming.D', '1614', 'CA'),
('145', 'Breaking the Waves', '1996', 'Drame', 'Au dÃ©but des annÃ©e', '42', 'DK'),
('146', 'Tigre et Dragon', '2000', 'Aventure', 'Dans la Chine ancien', '1614', 'CN'),
('147', 'Les Quatre Cents Cou', '1959', 'Drame', 'Antoine a une adoles', '1650', 'FR'),
('153', 'Lost in Translation', '2003', 'Drame', 'Bob Harris, acteur s', '1769', 'JP'),
('155', 'The Dark Knight : Le', '2008', 'Drame', 'Dans ce nouveau vole', '525', 'GB'),
('180', 'Minority Report', '2002', 'Action', 'Ã€ Washington, en 20', '488', 'US'),
('184', 'Jackie Brown', '1997', 'Crime', 'HÃ´tesse de l''air, J', '138', 'US'),
('192', 'Le Nom de la rose', '1986', 'Drame', 'En l''an 1327, dans u', '2352', 'FR'),
('213', 'La Mort aux trousses', '1959', 'MystÃ¨re', 'Le publiciste Roger ', '2636', 'US'),
('218', 'Terminator', '1984', 'Action', 'Ã€ Los Angeles en 19', '2710', 'GB'),
('223', 'Rebecca', '1940', 'Drame', 'Mrs. Edythe Van Hopp', '2636', 'US'),
('238', 'Le Parrain', '1972', 'Drame', 'En 1945, Ã  New York', '1776', 'US'),
('239', 'Certains l''aiment ch', '1959', 'ComÃ©die', 'Deux musiciens de ja', '3146', 'US'),
('24', 'Kill Bill : Volume 1', '2003', 'Action', 'Au cours d''une cÃ©rÃ', '138', 'US'),
('240', 'Le Parrain, 2Ã¨me pa', '1974', 'Drame', 'Depuis la mort de Do', '1776', 'US'),
('242', 'Le Parrain, 3Ã¨me pa', '1990', 'Crime', 'A l''Ã¢ge du bilan, M', '1776', 'IT'),
('247', 'L''Ultime Razzia', '1956', 'Crime', 'Une bande de gangste', '240', 'US'),
('266', 'Le MÃ©pris', '1963', 'Drame', 'Paul Javal, scÃ©nari', '3776', 'FR'),
('269', 'Ã€ bout de souffle', '1960', 'Drame', 'L''itinÃ©raire d''un j', '3776', 'FR'),
('272', 'Batman Begins', '2005', 'Action', 'Comment un homme seu', '525', 'GB'),
('274', 'Le Silence des Agnea', '1991', 'Crime', 'Un psychopathe connu', '16294', 'US'),
('275', 'Fargo', '1996', 'Crime', 'Quelque part dans le', '1223', 'GB'),
('28', 'Apocalypse Now', '1979', 'Drame', 'L''Ã©tat-major amÃ©ri', '1776', 'US'),
('289', 'Casablanca', '1942', 'Drame', 'Ã€ Casablanca, penda', '4109', 'US'),
('303', 'Les EnchaÃ®nÃ©s', '1946', 'Thriller', 'Alicia, fille d''un e', '2636', 'US'),
('329', 'Jurassic Park', '1993', 'Aventure', 'Ne pas rÃ©veiller le', '488', 'US'),
('33', 'Impitoyable', '1992', 'Western', 'AprÃ¨s avoir Ã©tÃ© u', '190', 'US'),
('330', 'Le monde perdu : Jur', '1997', 'Aventure', 'Quatre ans aprÃ¨s le', '488', 'US'),
('345', 'Eyes Wide Shut', '1999', 'MystÃ¨re', 'ConviÃ©s Ã  une soir', '240', 'GB'),
('346', 'Les sept samouraÃ¯s', '1954', 'Action', 'Au XVIÃ¨ siÃ¨cle, au', '5026', 'JP'),
('348', 'Alien, le huitiÃ¨me ', '1979', 'Horreur', 'En 2122. Le Nostromo', '578', 'US'),
('38', 'Eternal Sunshine of ', '2004', 'Science-Fiction', 'JoÃ«l et ClÃ©mentine', '201', 'US'),
('387', 'Le Bateau', '1981', 'Drame', 'Pendant la deuxiÃ¨me', '5231', 'DE'),
('393', 'Kill Bill : Volume 2', '2004', 'Action', 'AprÃ¨s s''Ãªtre dÃ©ba', '138', 'US'),
('423', 'Le Pianiste', '2002', 'Drame', 'Varsovie, au mois d''', '3556', 'FR'),
('424', 'La liste de Schindle', '1993', 'Drame', 'Ã‰vocation des annÃ©', '488', 'US'),
('426', 'Sueurs froides', '1958', 'MystÃ¨re', 'Scottie est sujet au', '2636', 'US'),
('429', 'Le Bon, la Brute et ', '1966', 'Western', 'Pendant la Guerre de', '4385', 'US'),
('439', 'La Dolce vita', '1960', 'ComÃ©die', 'Le chroniqueur Marce', '4415', 'FR'),
('500', 'Reservoir Dogs', '1992', 'Crime', 'AprÃ¨s un hold-up ma', '138', 'US'),
('510', 'Vol au dessus d''un n', '1975', 'Drame', 'Randle P. McMurphy s', '3974', 'US'),
('512', 'Scoop', '2006', 'ComÃ©die', 'L''enquÃªte du cÃ©lÃ¨', '1243', 'GB'),
('524', 'Casino', '1995', 'Crime', 'Dans les annees soix', '1032', 'FR'),
('539', 'Psychose', '1960', 'Horreur', 'Marion Crane en a as', '2636', 'US'),
('548', 'RashÃ´mon', '1950', 'Crime', 'Kyoto, au XIe siÃ¨cl', '5026', 'JP'),
('550', 'Fight Club', '1999', 'Drame', 'Le narrateur, sans i', '7467', 'DE'),
('557', 'Spider-Man', '2002', 'Fantastique', 'Orphelin, Peter Park', '7623', 'US'),
('558', 'Spider-Man 2', '2004', 'Action', '2 ans aprÃ¨s avoir c', '7623', 'US'),
('559', 'Spider-Man 3', '2007', 'Fantastique', 'Peter Parker a retro', '7623', 'US'),
('562', 'PiÃ¨ge de cristal', '1988', 'Action', 'John McClane, polici', '1090', 'US'),
('563', 'Starship Troopers', '1997', 'Aventure', 'Au XXIVe siÃ¨cle, un', '10491', 'US'),
('567', 'FenÃªtre sur cour', '1954', 'Drame', 'Ã€ cause d''une jambe', '2636', 'US'),
('571', 'Les Oiseaux', '1963', 'Horreur', 'MÃ©lanie, jeune femm', '2636', 'US'),
('574', 'L''homme qui en savai', '1956', 'Aventure', 'En vacances au Maroc', '2636', 'US'),
('578', 'Les Dents de la mer', '1975', 'Horreur', 'Ã€ quelques jours du', '488', 'US'),
('59', 'A History of Violenc', '2005', 'Drame', 'Tom Stall, un pÃ¨re ', '224', 'US'),
('592', 'Conversation secrÃ¨t', '1974', 'Crime', 'SpÃ©cialiste de la f', '1776', 'US'),
('593', 'Solaris', '1972', 'Drame', 'Un ingenieur est env', '8452', 'RU'),
('597', 'Titanic', '1997', 'Drame', 'Southampton, 10 avri', '2710', 'US'),
('599', 'Boulevard du CrÃ©pus', '1950', 'Drame', 'Norma Desmond, ancie', '3146', 'US'),
('601', 'E.T. l''extra-terrest', '1982', 'Science-Fiction', 'Une soucoupe volante', '488', 'US'),
('603', 'Matrix', '1999', 'Action', 'Programmeur anonyme ', '9339', 'AU'),
('604', 'Matrix Reloaded', '2003', 'Aventure', 'Neo apprend Ã  mieux', '9340', 'AU'),
('606', 'Out of Africa : Souv', '1985', 'Histoire', 'AprÃ¨s une dÃ©ceptio', '2226', 'US'),
('62', '2001 l''OdyssÃ©e de l', '1968', 'Science-Fiction', 'Aux temps prÃ©histor', '240', 'GB'),
('629', 'Usual Suspects', '1995', 'Drame', 'Une lÃ©gende du crim', '9032', 'US'),
('649', 'Belle de jour', '1967', 'Drame', 'SÃ©verine Serizy est', '793', 'FR'),
('665', 'Ben-Hur', '1959', 'Aventure', 'Judas Ben-Hur, princ', '10001', 'IT'),
('680', 'Pulp Fiction', '1994', 'Thriller', 'L''odyssÃ©e sanglante', '138', 'US'),
('694', 'Shining', '1980', 'Horreur', 'Jack Torrance, gardi', '240', 'GB'),
('696', 'Manhattan', '1979', 'ComÃ©die', 'Isaac Davis est un a', '1243', 'US'),
('703', 'Annie Hall', '1977', 'ComÃ©die', 'Ã€ l''aube de ses qua', '1243', 'US'),
('74', 'La Guerre des Mondes', '2005', 'Aventure', 'Ray Ferrier est un d', '488', 'US'),
('754', 'Volte/Face', '1997', 'Action', 'Castor Troy, dangere', '11401', 'US'),
('769', 'Les Affranchis', '1990', 'Drame', 'Brooklyn, dans les a', '1032', 'US'),
('77', 'Memento', '2000', 'MystÃ¨re', 'Leonard Shelby ne po', '525', 'US'),
('773', 'Little Miss Sunshine', '2006', 'ComÃ©die', 'L''histoire des Hoove', '16960', 'US'),
('777', 'La Grande Illusion', '1937', 'Drame', 'Pendant la PremiÃ¨re', '11528', 'FR'),
('78', 'Blade Runner', '1982', 'Science-Fiction', 'Dans les derniÃ¨res ', '578', 'US'),
('797', 'Persona', '1966', 'Drame', 'Elizabeth Vogler, cÃ', '6648', 'SE'),
('805', 'Rosemary''s Baby', '1968', 'Horreur', 'MalgrÃ© les conseils', '3556', 'US'),
('807', 'Seven', '1995', 'Crime', 'Pour conclure sa car', '7467', 'US'),
('829', 'Chinatown', '1974', 'Crime', 'Gittes, dÃ©tective p', '3556', 'US'),
('832', 'M le maudit', '1931', 'Drame', 'Un sadique assassine', '68', 'DE'),
('838', 'American Graffiti', '1973', 'ComÃ©die', 'En 1962, les destins', '1', 'US'),
('839', 'Duel', '1971', 'Action', 'En Californie. David', '488', 'US'),
('85', 'Les Aventuriers de l', '1981', 'Aventure', '1936. Parti Ã  la re', '488', 'US'),
('87', 'Indiana Jones et le ', '1984', 'Aventure', 'L''archÃ©ologue India', '488', 'US'),
('89', 'Indiana Jones et la ', '1989', 'Aventure', 'Indiana Jones se lan', '488', 'US'),
('98', 'Gladiator', '2000', 'Action', 'Le gÃ©nÃ©ral romain ', '578', 'GB');

-- --------------------------------------------------------

--
-- Structure de la table `inertnaute`
--

CREATE TABLE IF NOT EXISTS `inertnaute` (
  `email` varchar(20) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `region` varchar(20) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `inertnaute`
--


-- --------------------------------------------------------

--
-- Structure de la table `notation`
--

CREATE TABLE IF NOT EXISTS `notation` (
  `id_notation` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `id_film` varchar(20) NOT NULL,
  `note` varchar(20) NOT NULL,
  PRIMARY KEY (`id_notation`),
  KEY `email` (`email`),
  KEY `id_film` (`id_film`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `notation`
--


-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE IF NOT EXISTS `pays` (
  `code_pays` varchar(20) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `langue` varchar(20) NOT NULL,
  PRIMARY KEY (`code_pays`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pays`
--

INSERT INTO `pays` (`code_pays`, `nom`, `langue`) VALUES
('AU', 'Australia', ''),
('BE', 'Belgium', ''),
('BS', 'Bahamas', ''),
('CA', 'Canada', ''),
('CN', 'China', ''),
('CZ', 'Czech Republic', ''),
('DE', 'Allemagne', 'allemand'),
('DK', 'Denmark', ''),
('ES', 'Espagne', 'espagnol'),
('FR', 'France', 'francais'),
('GB', 'Royaume-Uni', 'anglais'),
('HK', 'Hong Kong', ''),
('IE', 'Irlande', 'anglais'),
('IT', 'Italie', 'italien'),
('JO', 'Jordan', ''),
('JP', 'Japan', 'japonais'),
('KR', 'South Korea', ''),
('NL', 'Netherlands', ''),
('NO', 'Norway', ''),
('RU', 'Russie', 'russe'),
('SE', 'SuÃ¨de', 'suÃ©dois'),
('SU', 'Soviet Union', ''),
('US', 'Etats-Unis', 'anglais');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id_film` varchar(20) NOT NULL,
  `id_artiste` varchar(20) NOT NULL,
  `nom_role` varchar(20) NOT NULL,
  PRIMARY KEY (`id_film`,`id_artiste`),
  KEY `id_artiste` (`id_artiste`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `role`
--


--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`Code_pays`) REFERENCES `pays` (`code_pays`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `notation`
--
ALTER TABLE `notation`
  ADD CONSTRAINT `notation_ibfk_1` FOREIGN KEY (`email`) REFERENCES `inertnaute` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notation_ibfk_2` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `role_ibfk_1` FOREIGN KEY (`id_artiste`) REFERENCES `artiste` (`id_artiste`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_ibfk_2` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`) ON DELETE CASCADE ON UPDATE CASCADE;
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
