-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le : ven. 13 nov. 2026 à 16:31
-- Version du serveur : 8.4.7
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `comics`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
CREATE TABLE IF NOT EXISTS `auteur` (
  `Num_Auteur` int NOT NULL AUTO_INCREMENT,
  `Nom_Auteur` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prenom_Auteur` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Num_Auteur`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`Num_Auteur`, `Nom_Auteur`, `Prenom_Auteur`) VALUES
(1, 'Whedon', 'Joss'),
(2, 'Cassaday', 'John'),
(3, 'Bendis', 'Brian Michael'),
(4, 'Aaron', 'Jason'),
(5, 'Remender', 'Rick'),
(6, 'Kyle', 'Craig'),
(7, 'Yost', 'Christopher'),
(8, 'Gillen', 'Kieron'),
(9, 'Duggan', 'Gerry'),
(10, 'Howard', 'Tini'),
(11, 'To', 'Marcus'),
(12, 'Hickman', 'Jonathan'),
(13, 'Morrison', 'Grant'),
(14, 'Claremont', 'Chris'),
(15, 'Chen', 'Sean'),
(16, 'Guggenheim', 'Marc'),
(17, 'Taylor', 'Tom'),
(18, 'Wells', 'Zeb'),
(19, 'Larraz', 'Pepe'),
(20, 'Silva', 'R.B.'),
(21, 'Lloyd-George', 'Kate'),
(22, 'Nicieza', 'Fabian'),
(23, 'Mackie', 'Howard'),
(24, 'Lobdell', 'Scott'),
(25, 'Waid', 'Mark'),
(26, 'Loeb', 'Jeph'),
(27, 'Townsend', 'Tim'),
(28, 'Conrad', 'Kevin'),
(29, 'Candelario', 'Harry'),
(30, 'LaRosa', 'Bud'),
(31, 'Green', 'Dan'),
(32, 'Ryan', 'Matt'),
(33, 'Hanna', 'Scott'),
(34, 'Neary', 'Paul'),
(35, 'McLeod', 'Bob'),
(36, 'Kesel', 'Karl'),
(37, 'Milgrom', 'Al'),
(38, 'Panosian', 'Dan'),
(39, 'Smith', 'Paul'),
(40, 'Pascoe', 'Jim'),
(41, 'Lee', 'Jae'),
(42, 'Janson', 'Klaus'),
(43, 'Grummett', 'Tom'),
(44, 'Hitch', 'Bryan'),
(45, 'Semeiks', 'Val'),
(46, 'Cruz', 'Roger'),
(47, 'Ennis', 'Garth'),
(48, 'Dodson', 'Terry'),
(49, 'Madureira', 'Joe'),
(50, 'Pacheco', 'Carlos'),
(51, 'Kubert', 'Andy'),
(52, 'Daniel', 'Tony S.'),
(53, 'Churchill', 'Ian');

-- --------------------------------------------------------

--
-- Structure de la table `ecrire`
--

DROP TABLE IF EXISTS `ecrire`;
CREATE TABLE IF NOT EXISTS `ecrire` (
  `Num_Auteur` int NOT NULL,
  `Num_Livre` int NOT NULL,
  PRIMARY KEY (`Num_Auteur`,`Num_Livre`),
  KEY `Num_Livre` (`Num_Livre`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecrire`
--

INSERT INTO `ecrire` (`Num_Auteur`, `Num_Livre`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(4, 8),
(4, 20),
(4, 21),
(4, 22),
(4, 23),
(4, 24),
(5, 25),
(5, 26),
(5, 27),
(5, 28),
(6, 29),
(7, 29),
(8, 30),
(8, 31),
(9, 32),
(9, 33),
(10, 40),
(10, 41),
(10, 42),
(10, 43),
(11, 40),
(11, 41),
(12, 42),
(12, 43),
(12, 60),
(12, 64),
(13, 45),
(13, 47),
(13, 48),
(14, 52),
(14, 53),
(15, 52),
(15, 53),
(16, 57),
(16, 58),
(16, 59),
(17, 62),
(18, 63),
(19, 64),
(20, 64),
(21, 109),
(22, 109),
(23, 109),
(24, 109),
(25, 109),
(26, 109),
(27, 109),
(28, 109),
(29, 109),
(30, 109),
(31, 109),
(32, 109),
(33, 109),
(34, 109),
(35, 109),
(36, 109),
(37, 109),
(38, 109),
(39, 109),
(40, 109),
(41, 109),
(42, 109),
(43, 109),
(44, 109),
(45, 109),
(46, 109),
(47, 109),
(48, 109),
(49, 109),
(50, 109),
(51, 109),
(52, 109),
(53, 109);

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

DROP TABLE IF EXISTS `livre`;
CREATE TABLE IF NOT EXISTS `livre` (
  `Num_Livre` int NOT NULL AUTO_INCREMENT,
  `Titre_Livre` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ISBN` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date_Publication` date DEFAULT NULL,
  `Type_Album` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Prix` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Num_Livre`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`Num_Livre`, `Titre_Livre`, `ISBN`, `Date_Publication`, `Type_Album`, `images`, `Prix`) VALUES
(1, 'Astonishing X-Men (Whedon / Cassaday) - Tome 1 : Surdoués', NULL, NULL, 'Marvel Deluxe', 'images/Astonishing X-Men Tome 1 Surdoués.jpg', 32.00),
(2, 'Astonishing X-Men (Whedon / Cassaday) - Tome 2 : Invincible', NULL, NULL, 'Marvel Deluxe', 'images/Astonishing-X-Men Tome 2.jpg', 32.00),
(3, 'Astonishing X-Men (Marvel Deluxe) - Tome 1 : La vie en X', NULL, NULL, 'Marvel Deluxe', 'images/Astonishing X-Men deluxe.jpg', 32.00),
(4, 'All-New X-Men (Bendis) - X-Men d\'hier', NULL, NULL, 'Marvel Deluxe', 'images/All-New-X-Men-T01-X-Men-d-hier.jpg', 32.00),
(5, 'All-New X-Men (Bendis) - Déménagement', NULL, NULL, 'Marvel Deluxe', 'images/All-New-X-Men-T02.jpg', 32.00),
(6, 'All-New X-Men (Bendis) - La bataille de l\'atome', NULL, NULL, 'Marvel Deluxe', 'images/6.jpg', 32.00),
(7, 'All-New X-Men (Bendis) - Le procès de Jean Grey', NULL, NULL, 'Marvel Deluxe', 'images/7.jpg', 32.00),
(8, 'Amazing X-Men - À la recherche de Diablo', NULL, NULL, 'Marvel Deluxe', 'images/8.jpeg', 32.00),
(9, 'Ultimate X-Men (Marvel Deluxe) - Tome 1 : Bienvenue chez les X-Men...', NULL, NULL, 'Marvel Deluxe', 'images/9.jpg', 32.00),
(10, 'Ultimate X-Men (Marvel Deluxe) - Tome 2 : Tournée mondiale', NULL, NULL, 'Marvel Deluxe', 'images/10.jpg', 32.00),
(11, 'Ultimate X-Men (Marvel Deluxe) - Tome 3 : Le retour du Roi', NULL, NULL, 'Marvel Deluxe', 'images/11.jpg', 32.00),
(12, 'Ultimate X-Men (Marvel Deluxe) - Tome 4 : Les nouveaux mutants', NULL, NULL, 'Marvel Deluxe', 'images/12.jpg', 32.00),
(13, 'Ultimate X-Men (Marvel Deluxe) - Tome 5 : Un jeu dangereux', NULL, NULL, 'Marvel Deluxe', 'images/13.jpg', 32.00),
(14, 'Ultimate X-Men (Marvel Deluxe) - Tome 6 : Nord magnétique', NULL, NULL, 'Marvel Deluxe', 'images/14.jpg', 32.00),
(15, 'Ultimate X-Men (Marvel Deluxe) - Tome 7 : Le diable au corps', NULL, NULL, 'Marvel Deluxe', 'images/15.jpg', 32.00),
(16, 'Ultimate X-Men (Marvel Deluxe) - Tome 8 : Sentinelles', NULL, NULL, 'Marvel Deluxe', 'images/16.jpg', 32.00),
(17, 'Ultimate X-Men (Marvel Deluxe) - Tome 9 : Apocalypse', NULL, NULL, 'Marvel Deluxe', 'images/17.jpg', 32.00),
(18, 'Ultimate X-Men (Marvel Deluxe) - Tome 10 : Requiem', NULL, NULL, 'Marvel Deluxe', 'images/18.jpg', 32.00),
(19, 'Ultimate X-Men (Peach Momoko) - Tome 1 : Les enfants de l\'atome', NULL, NULL, 'Marvel Deluxe', 'images/19.jpg', 32.00),
(20, 'Wolverine and the X-Men - Tome 1 : Bienvenue chez les X-Men !', NULL, NULL, 'Marvel Deluxe', 'images/20.jpg', 32.00),
(21, 'Wolverine and the X-Men - Tome 2 : Avengers vs X-Men', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(22, 'Wolverine and the X-Men - Tome 3 : Rentrée des classes', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(23, 'Wolverine and the X-Men - Tome 4 : La Saga des Damnés', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(24, 'Wolverine and the X-Men - Tome 5 : Demain comme hier', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(25, 'Uncanny X-Force - Tome 1 : La Solution Apocalypse', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(26, 'Uncanny X-Force - Tome 2 : La Saga de l\'Ange Noir', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(27, 'Uncanny X-Force - Tome 3 : Outremonde', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(28, 'Uncanny X-Force - Tome 4 : Exécution finale', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(29, 'X-Force (Kyle) - Tome 1 : Anges et démons', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(30, 'Immortal X-Men - Tome 1 : Haïs et craints', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(31, 'Immortal X-Men - Tome 2 : L\'île du docteur Xavier', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(32, 'Marauders - Tome 1 : Vivre et mourir à Krakoa', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(33, 'Marauders - Tome 2 : Conséquences', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(34, 'New Mutants (Marvel Deluxe) - Tome 1 : Le retour de la légion', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(35, 'New Mutants (Marvel Deluxe) - Tome 2 : La chute', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(36, 'New Mutants (Marvel Deluxe) - Tome 3 : Affaires inachevées', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(37, 'New Mutants (Hickman) - Tome 1 : Le sextant', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(38, 'New Mutants (Hickman) - Tome 2 : Bienvenue à la Chasse Sauvage', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(39, 'New Mutants (Hickman) - Tome 3 : Les travaux de magie', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(40, 'Excalibur (Howard / To) - Tome 1 : La distinction de Betsy Braddock', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(41, 'Excalibur (Howard / To) - Tome 2 : La fin d\'un rêve', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(42, 'X of Swords - Tome 1 : Vol. 1', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(43, 'X of Swords - Tome 2 : Vol. 2', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(44, 'X Lives / X Deaths of Wolverine', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(45, 'X-Men (Marvel Deluxe, 1re série) - Tome 1 : E comme extinction', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(46, 'X-Men (Marvel Deluxe, 1re série) - Tome 2 : L\'Arme Douze', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(47, 'X-Men (Marvel Deluxe, 1re série) - Tome 3 : Planète X', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(48, 'X-Men (Marvel Deluxe, 1re série) - Tome 4 : Déjà demain', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(49, 'X-Men - Trilogie du Messie - Tome 1 : Le Complexe du Messie', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(50, 'X-Men - Trilogie du Messie - Tome 2 : La Guerre du Messie', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(51, 'X-Men - Trilogie du Messie - Tome 3 : Le Retour du Messie', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(52, 'X-Men : La Fin - Tome 1 : Rêveurs et démons', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(53, 'X-Men : La Fin - Tome 2 : Humains et X-Men', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(54, 'X-Men : Blue - Tome 1 : Vous avez dit bizarre ?', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(55, 'X-Men : Blue - Tome 2 : Casse temporel', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(56, 'X-Men : Blue - Tome 3 : Hurlements', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(57, 'X-Men : Gold - Tome 1 : Retour à l\'essentiel', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(58, 'X-Men : Gold - Tome 2 : Mojo planétaire', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(59, 'X-Men : Gold - Tome 3 : Cruel et Dégradant', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(60, 'X-Men (Marvel Deluxe, Krakoa) - Tome 1 : Pax Krakoa', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(61, 'X-Men (Marvel Deluxe, Intrépides) - Tome 1 : Intrépides', NULL, '2024-06-01', 'Marvel Deluxe', NULL, 32.00),
(62, 'X-Men : Red (Marvel Deluxe) - Tome 1 : La terre brisée', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(63, 'Hellions - L\'intégrale', '9791039115872', NULL, 'Marvel Deluxe', NULL, 32.00),
(64, 'House of X - Powers of X - L\'intégrale', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(65, 'Sins of Sinister - L\'intégrale', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(66, 'Inhumans vs X-Men - L\'intégrale', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(67, 'NYX - Gestation', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(68, 'Les Gardiens de la Galaxie / All-New X-Men - Le Vortex Noir', NULL, NULL, 'Marvel Deluxe', NULL, 32.00),
(69, 'X-Men Intégrale - Tome 1 : 1975-1976', NULL, '2002-01-01', 'Intégrale', NULL, 36.00),
(70, 'X-Men Intégrale - Tome 2 : 1977-1978', NULL, '2003-01-01', 'Intégrale', NULL, 36.00),
(71, 'X-Men Intégrale - Tome 3 : 1979', NULL, '2003-01-01', 'Intégrale', NULL, 36.00),
(72, 'X-Men Intégrale - Tome 4 : 1980', NULL, '2003-01-01', 'Intégrale', NULL, 36.00),
(73, 'X-Men Intégrale - Tome 5 : 1981', NULL, '2004-01-01', 'Intégrale', NULL, 36.00),
(74, 'X-Men Intégrale - Tome 6 : 1982', NULL, '2004-01-01', 'Intégrale', NULL, 36.00),
(75, 'X-Men Intégrale - Tome 7 : 1983', NULL, '2005-01-01', 'Intégrale', NULL, 36.00),
(76, 'X-Men Intégrale - Tome 8 : 1984', NULL, '2005-01-01', 'Intégrale', NULL, 36.00),
(77, 'X-Men Intégrale - Tome 9 : 1985 (1)', NULL, '2006-01-01', 'Intégrale', NULL, 36.00),
(78, 'X-Men Intégrale - Tome 10 : 1963-1964', NULL, '2006-01-01', 'Intégrale', NULL, 36.00),
(79, 'X-Men Intégrale - Tome 11 : 1985 (2)', NULL, '2007-01-01', 'Intégrale', NULL, 36.00),
(80, 'X-Men Intégrale - Tome 12 : 1986 (1)', NULL, '2007-01-01', 'Intégrale', NULL, 36.00),
(81, 'X-Men Intégrale - Tome 13 : 1965', NULL, '2007-01-01', 'Intégrale', NULL, 36.00),
(82, 'X-Men Intégrale - Tome 14 : 1986 (2)', NULL, '2008-01-01', 'Intégrale', NULL, 36.00),
(83, 'X-Men Intégrale - Tome 15 : 1966', NULL, '2008-01-01', 'Intégrale', NULL, 36.00),
(84, 'X-Men Intégrale - Tome 16 : 1987 (I)', NULL, '2009-01-01', 'Intégrale', NULL, 36.00),
(85, 'X-Men Intégrale - Tome 17 : 1967', NULL, '2009-01-01', 'Intégrale', NULL, 36.00),
(86, 'X-Men Intégrale - Tome 18 : 1987 (II)', NULL, '2010-01-01', 'Intégrale', NULL, 36.00),
(87, 'X-Men Intégrale - Tome 19 : 1968', NULL, '2010-01-01', 'Intégrale', NULL, 36.00),
(88, 'X-Men Intégrale - Tome 20 : 1988 (I)', NULL, '2011-01-01', 'Intégrale', NULL, 36.00),
(89, 'X-Men Intégrale - Tome 21 : 1969-1970', NULL, '2011-01-01', 'Intégrale', NULL, 36.00),
(90, 'X-Men Intégrale - Tome 22 : 1988 (II)', NULL, '2012-01-01', 'Intégrale', NULL, 36.00),
(91, 'X-Men Intégrale - Tome 23 : 1972-1975', NULL, '2012-01-01', 'Intégrale', NULL, 36.00),
(92, 'X-Men Intégrale - Tome 24 : 1989 (1)', NULL, '2013-01-01', 'Intégrale', NULL, 36.00),
(93, 'X-Men Intégrale - Tome 25 : 1989 (2)', NULL, '2013-01-01', 'Intégrale', NULL, 36.00),
(94, 'X-Men Intégrale - Tome 26 : 1990 (1)', NULL, '2014-01-01', 'Intégrale', NULL, 36.00),
(95, 'X-Men Intégrale - Tome 27 : 1990 (2)', NULL, '2014-01-01', 'Intégrale', NULL, 36.00),
(96, 'X-Men Intégrale - Tome 28 : 1991 (1)', NULL, '2015-01-01', 'Intégrale', NULL, 36.00),
(97, 'X-Men Intégrale - Tome 29 : 1991 (2)', NULL, '2015-11-04', 'Intégrale', NULL, 36.00),
(98, 'X-Men Intégrale - Tome 30 : 1992 (1)', NULL, '2016-01-01', 'Intégrale', NULL, 36.00),
(99, 'X-Men Intégrale - Tome 31 : 1992 (2)', NULL, '2016-01-01', 'Intégrale', NULL, 36.00),
(100, 'X-Men Intégrale - Tome 32 : 1993 (1)', NULL, '2017-01-01', 'Intégrale', NULL, 36.00),
(101, 'X-Men Intégrale - Tome 33 : 1993 (2)', NULL, '2017-01-01', 'Intégrale', NULL, 36.00),
(102, 'X-Men Intégrale - Tome 34 : 1993 (3)', NULL, '2018-01-01', 'Intégrale', NULL, 36.00),
(103, 'X-Men Intégrale - Tome 35 : 1993 (4)', NULL, '2018-01-01', 'Intégrale', NULL, 36.00),
(104, 'X-Men Intégrale - Tome 36 : 1993 (5)', NULL, '2019-01-01', 'Intégrale', NULL, 36.00),
(105, 'X-Men Intégrale - Tome 37 : 1994 (1)', NULL, '2019-01-01', 'Intégrale', NULL, 36.00),
(106, 'X-Men Intégrale - Tome 38 : 1994 (2)', NULL, '2019-01-01', 'Intégrale', NULL, 36.00),
(107, 'X-Men Intégrale - Tome 39 : 1994 (3)', NULL, '2020-01-01', 'Intégrale', NULL, 36.00),
(108, 'X-Men Intégrale - Tome 40 : 1994 (4)', NULL, '2020-01-01', 'Intégrale', NULL, 36.00),
(109, 'X-Men Intégrale - Tome 41 : 1995 (I)', '9782809491470', '2020-11-25', 'Intégrale', NULL, 36.00),
(110, 'X-Men Intégrale - Tome 42 : 1995 (II)', NULL, '2021-01-01', 'Intégrale', NULL, 36.00),
(111, 'X-Men Intégrale - Tome 43 : 1995-1996', NULL, '2021-01-01', 'Intégrale', NULL, 36.00),
(112, 'X-Men Intégrale - Tome 44 : 1996', NULL, '2021-01-01', 'Intégrale', NULL, 36.00),
(113, 'X-Men Intégrale - Tome 45 : 1996 (II)', NULL, '2022-03-23', 'Intégrale', NULL, 36.00),
(114, 'X-Men Intégrale - Tome 46 : 1996 (III)', NULL, '2022-01-01', 'Intégrale', NULL, 36.00),
(115, 'X-Men Intégrale - Tome 47 : 1996-1997', NULL, '2022-09-28', 'Intégrale', NULL, 36.00),
(116, 'X-Men Intégrale - Tome 48 : 1997 (I)', NULL, '2023-01-01', 'Intégrale', NULL, 36.00),
(117, 'X-Men Intégrale - Tome 49 : 1997 (II)', NULL, '2023-01-01', 'Intégrale', NULL, 36.00),
(118, 'X-Men Intégrale - Tome 50 : 1984-1985', NULL, '2023-01-01', 'Intégrale', NULL, 36.00),
(119, 'X-Men Intégrale - Tome 51 : 1997 (III)', NULL, '2024-01-01', 'Intégrale', NULL, 36.00),
(120, 'X-Men Intégrale - Tome 52 : 1998 (1)', NULL, '2024-01-01', 'Intégrale', NULL, 36.00),
(121, 'X-Men Intégrale - Tome 53 : 1998 (2)', NULL, '2024-10-02', 'Intégrale', NULL, 36.00),
(122, 'X-Men Intégrale - Tome 54 : 1998-1999', NULL, '2025-01-01', 'Intégrale', NULL, 36.00),
(123, 'X-Men Intégrale - Tome 55 : 1999 (I)', NULL, '2025-01-01', 'Intégrale', NULL, 36.00),
(124, 'X-Men Intégrale - Tome 56 : 1999 (II)', NULL, '2025-01-01', 'Intégrale', NULL, 36.00),
(125, 'Marvel Omnibus : X-Men - Le complexe du messie', NULL, '2018-01-01', 'Omnibus', NULL, 90.00),
(126, 'Marvel Omnibus : X-Men - L\'Ère d\'Apocalypse', NULL, '2018-01-01', 'Omnibus', NULL, 90.00);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
