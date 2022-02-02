-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 17 fév. 2021 à 15:46
-- Version du serveur :  5.7.24
-- Version de PHP : 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE tetete;
use tetete;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `videogames`
--

-- --------------------------------------------------------

--
-- Structure de la table `games`
--

CREATE TABLE `games` (
  `g_id` int(11) NOT NULL,
  `g_name` varchar(255) NOT NULL,
  `g_mode` varchar(100) NOT NULL,
  `g_published_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `g_pegi` int(11) NOT NULL,
  `s_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `games`
--

INSERT INTO `games` (`g_id`, `g_name`, `g_mode`, `g_published_at`, `g_pegi`, `s_id`) VALUES
(1, 'Halo : Combat Evolved - Anniversary', 'Solo / Multijoueur', '2010-12-31 23:00:00', 16, 1),
(2, 'Halo : The Master Chief Collection', 'Solo / Multijoueur', '2013-12-31 23:00:00', 16, 1),
(3, 'Halo Wars', 'Solo / Multijoueur', '2008-12-31 23:00:00', 16, 18),
(4, 'Halo 4', 'Solo / Multijoueur', '2011-12-31 23:00:00', 16, 1),
(5, 'Alien : Isolation', 'Solo', '2013-12-31 23:00:00', 18, 14),
(6, 'The Witcher : Enhanced Edition', 'Solo', '2007-12-31 23:00:00', 18, 7),
(7, 'The Witcher 2 : Assassins of Kings', 'Solo', '2010-12-31 23:00:00', 18, 7),
(8, 'The Witcher 3 : Wild Hunt - Blood and Wine', 'Solo', '2015-12-31 23:00:00', 18, 7),
(9, 'Overwatch', 'Multijoueur', '2015-12-31 23:00:00', 12, 2),
(10, 'Doom Eternal', 'Solo / Multijoueur', '2019-12-31 23:00:00', 16, 13),
(11, 'Star Wars : Battlefront', 'Solo / Multijoueur', '2003-12-31 23:00:00', 16, 16),
(12, 'The Witcher 3 : Wild Hunt - Hearts of Stone', 'Solo', '2014-12-31 23:00:00', 18, 7),
(13, 'Rocket League', 'Solo / Multijoueur', '2014-12-31 23:00:00', 3, 19),
(14, 'Heroes of the Storm', 'Multijoueur', '2014-12-31 23:00:00', 12, 2),
(15, 'The Witcher 3 : Wild Hunt', 'Multijoueur', '2014-12-31 23:00:00', 18, 7),
(16, 'Assassin\'s Creed : Unity - Dead Kings', 'Solo / Multijoueur', '2013-12-31 23:00:00', 18, 6),
(17, 'Lara Croft and the Temple of Osiris', 'Solo / Multijoueur', '2013-12-31 23:00:00', 12, 9),
(18, 'Assassin\'s Creed : Unity', 'Solo / Multijoueur', '2013-12-31 23:00:00', 16, 6),
(19, 'Watch Dogs', 'Solo / Multijoueur', '2013-12-31 23:00:00', 18, 6),
(20, 'Assassin\'s Creed IV : Black Flag', 'Solo / Multijoueur', '2012-12-31 23:00:00', 18, 6),
(21, 'Battlefield 4', 'Solo / Multijoueur', '2012-12-31 23:00:00', 18, 16),
(22, 'Tomb Raider', 'Solo / Multijoueur', '2014-12-31 23:00:00', 18, 17),
(23, 'Assassin\'s Creed III', 'Solo / Multijoueur', '2011-12-31 23:00:00', 18, 6),
(24, 'Counter-Strike : Global Offensive', 'Solo / Multijoueur', '2011-12-31 23:00:00', 18, 20),
(25, 'Diablo III', 'Solo / Multijoueur', '2011-12-31 23:00:00', 16, 2),
(26, 'Battlefield 3', 'Solo / Multijoueur', '2010-12-31 23:00:00', 18, 16),
(27, 'Portal 2', 'Solo / Coopératif', '2010-12-31 23:00:00', 12, 20),
(28, 'Beyond Good & Evil HD', 'Solo', '2010-12-31 23:00:00', 7, 6),
(29, 'Assassin\'s Creed : Brotherhood', 'Solo / Multijoueur', '2009-12-31 23:00:00', 18, 6),
(30, 'Naruto Shippuden Ultimate Ninja Storm 2', 'Solo / Multijoueur', '2009-12-31 23:00:00', 12, 6),
(31, 'Red Dead Redemption', 'Solo / Multijoueur', '2009-12-31 23:00:00', 18, 5),
(32, 'Grand Theft Auto : Episodes from Liberty City', 'Solo / Multijoueur', '2008-12-31 23:00:00', 18, 5),
(33, 'League of Legends', 'Multijoueur', '2008-12-31 23:00:00', 12, 4),
(34, 'Naruto : The Broken Bond', '1 à 4 joueurs', '2007-12-31 23:00:00', 12, 6),
(35, 'Battlefield 3', 'Solo / Multijoueur', '2010-12-31 23:00:00', 18, 16),
(36, 'Portal 2', 'Solo / Coopératif', '2010-12-31 23:00:00', 12, 20),
(37, 'Beyond Good & Evil HD', 'Solo', '2010-12-31 23:00:00', 7, 6),
(38, 'Assassin\'s Creed : Brotherhood', 'Solo / Multijoueur', '2009-12-31 23:00:00', 18, 6),
(39, 'Naruto Shippuden Ultimate Ninja Storm 2', 'Solo / Multijoueur', '2009-12-31 23:00:00', 12, 6),
(40, 'Red Dead Redemption', 'Solo / Multijoueur', '2009-12-31 23:00:00', 18, 5),
(41, 'Grand Theft Auto : Episodes from Liberty City', 'Solo / Multijoueur', '2008-12-31 23:00:00', 18, 5),
(42, 'League of Legends', 'Multijoueur', '2008-12-31 23:00:00', 12, 4),
(43, 'Naruto : The Broken Bond', 'Solo / Multijoueur', '2007-12-31 23:00:00', 18, 6),
(44, 'Gears of War 2', 'Solo / Multijoueur', '2007-12-31 23:00:00', 18, 12),
(45, 'Assassin\'s Creed', 'Solo / Multijoueur', '2007-12-31 23:00:00', 16, 6),
(46, 'Portal', 'Solo', '2006-12-31 23:00:00', 12, 20),
(47, 'Age of Empires III', 'Solo / Multijoueur', '2004-12-31 23:00:00', 12, 18),
(48, 'Need For Speed Underground 2', 'Solo / Multijoueur', '2003-12-31 23:00:00', 3, 11),
(49, 'Cyberpunk 2077', 'Solo / Multijoueur', '2020-09-30 22:00:00', 18, 7);

-- --------------------------------------------------------

--
-- Structure de la table `games_genres`
--

CREATE TABLE `games_genres` (
  `genre_id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `games_genres`
--

INSERT INTO `games_genres` (`genre_id`, `g_id`) VALUES
(1, 1),
(1, 2),
(3, 3),
(1, 4),
(1, 5),
(2, 5),
(2, 6),
(5, 6),
(2, 7),
(5, 7),
(2, 8),
(5, 8),
(1, 9),
(1, 10),
(1, 11),
(2, 12),
(5, 12),
(10, 13),
(14, 13),
(11, 14),
(2, 15),
(5, 15),
(2, 16),
(6, 16),
(7, 16),
(2, 17),
(6, 17),
(2, 18),
(6, 18),
(7, 18),
(2, 19),
(6, 19),
(7, 19),
(2, 20),
(6, 20),
(7, 20),
(1, 21),
(2, 22),
(6, 22),
(2, 23),
(6, 23),
(7, 23),
(1, 24),
(4, 25),
(1, 26),
(12, 27),
(2, 28),
(6, 28),
(2, 29),
(6, 29),
(7, 29),
(13, 30),
(2, 31),
(6, 31),
(8, 31),
(9, 31),
(2, 32),
(6, 32),
(8, 32),
(14, 32),
(11, 33),
(2, 34),
(6, 34),
(1, 35),
(2, 36),
(6, 36),
(7, 36),
(2, 37),
(12, 37),
(3, 38),
(14, 39),
(2, 40),
(5, 40);

-- --------------------------------------------------------

--
-- Structure de la table `games_platforms`
--

CREATE TABLE `games_platforms` (
  `p_id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `games_platforms`
--

INSERT INTO `games_platforms` (`p_id`, `g_id`) VALUES
(4, 1),
(13, 1),
(14, 1),
(4, 2),
(13, 2),
(14, 2),
(15, 2),
(10, 3),
(13, 3),
(14, 3),
(4, 4),
(13, 4),
(14, 4),
(15, 4),
(2, 5),
(3, 5),
(4, 5),
(6, 5),
(7, 5),
(13, 5),
(14, 5),
(2, 6),
(4, 6),
(4, 7),
(7, 7),
(13, 7),
(14, 7),
(3, 8),
(4, 8),
(7, 8),
(8, 8),
(14, 8),
(15, 8),
(3, 9),
(4, 9),
(7, 9),
(14, 9),
(2, 10),
(3, 10),
(4, 10),
(7, 10),
(9, 10),
(14, 10),
(2, 11),
(4, 11),
(5, 11),
(16, 11),
(4, 12),
(7, 12),
(14, 12),
(2, 13),
(3, 13),
(4, 13),
(7, 13),
(14, 13),
(2, 14),
(4, 14),
(3, 15),
(4, 15),
(14, 15),
(4, 16),
(7, 16),
(14, 16),
(4, 17),
(7, 17),
(14, 17),
(4, 18),
(7, 18),
(14, 18),
(4, 19),
(6, 19),
(7, 19),
(12, 19),
(13, 19),
(14, 19),
(3, 20),
(4, 20),
(6, 20),
(7, 20),
(12, 20),
(13, 20),
(14, 20),
(4, 21),
(6, 21),
(7, 21),
(13, 21),
(14, 21),
(2, 22),
(4, 22),
(7, 22),
(13, 22),
(4, 23),
(7, 23),
(12, 23),
(13, 23),
(2, 24),
(4, 24),
(6, 24),
(13, 24),
(14, 24),
(2, 25),
(3, 25),
(4, 25),
(6, 25),
(7, 25),
(13, 25),
(14, 25),
(4, 26),
(7, 26),
(13, 26),
(2, 27),
(4, 27),
(7, 27),
(13, 27),
(4, 28),
(6, 28),
(13, 28),
(14, 28),
(2, 29),
(4, 29),
(6, 29),
(7, 29),
(13, 29),
(14, 29),
(4, 30),
(6, 30),
(13, 30),
(14, 30),
(6, 31),
(13, 31),
(4, 32),
(6, 32),
(13, 32),
(2, 33),
(4, 33),
(13, 34),
(13, 44),
(14, 44),
(2, 46),
(4, 46),
(6, 46),
(13, 46),
(14, 46),
(2, 47),
(4, 47),
(1, 48),
(4, 48),
(5, 48),
(16, 48),
(4, 49),
(7, 49),
(8, 49),
(14, 49),
(15, 49);

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

CREATE TABLE `genres` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genres`
--

INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES
(1, 'FPS'),
(2, 'Action'),
(3, 'RTS'),
(4, 'Hack \'n\' slash'),
(5, 'RPG'),
(6, 'Aventure'),
(7, 'Infiltration'),
(8, 'TPS'),
(9, 'GTA'),
(10, 'Football'),
(11, 'MOBA'),
(12, 'Réflexion'),
(13, 'Combat'),
(14, 'Course');

-- --------------------------------------------------------

--
-- Structure de la table `platforms`
--

CREATE TABLE `platforms` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `platforms`
--

INSERT INTO `platforms` (`p_id`, `p_name`) VALUES
(1, 'GameCube'),
(2, 'MAC'),
(3, 'Nintendo Switch'),
(4, 'PC'),
(5, 'PlayStation 2'),
(6, 'PlayStation 3'),
(7, 'PlayStation 4'),
(8, 'PlayStation 5'),
(9, 'Stadia'),
(10, 'Steam'),
(11, 'Wii'),
(12, 'Wii U'),
(13, ' Xbox 360'),
(14, 'Xbox One'),
(15, 'Xbox Series X/S'),
(16, 'Xbox');

-- --------------------------------------------------------

--
-- Structure de la table `studios`
--

CREATE TABLE `studios` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `s_nationality` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `studios`
--

INSERT INTO `studios` (`s_id`, `s_name`, `s_nationality`) VALUES
(1, '343 Industries', 'USA'),
(2, 'Blizzard Entertainment', 'USA'),
(3, 'DICE', 'USA'),
(4, 'Riot Games', 'USA'),
(5, 'Rockstar', 'USA'),
(6, 'Ubisoft', 'France'),
(7, 'CD Projekt', 'Polonais'),
(8, 'Core Design', 'USA'),
(9, 'Crystal Dynamics', 'Japon'),
(10, 'DICE', 'USA'),
(11, 'EA Black Box', 'USA'),
(12, 'Epic Games', 'USA'),
(13, 'id Software', 'USA'),
(14, 'Creative Assembly et Feral Interactive', 'Corée'),
(16, 'DICE', 'USA'),
(17, 'Eidos', 'USA'),
(18, 'Ensemble Studios', 'USA'),
(19, 'Psyonix', 'USA'),
(20, 'Valve Corporation', 'USA'),
(21, 'CD Projekt', 'Pologne');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`g_id`),
  ADD KEY `FK_games_s_id` (`s_id`);

--
-- Index pour la table `games_genres`
--
ALTER TABLE `games_genres`
  ADD PRIMARY KEY (`genre_id`,`g_id`),
  ADD KEY `FK_games_genres_g_id` (`g_id`);

--
-- Index pour la table `games_platforms`
--
ALTER TABLE `games_platforms`
  ADD PRIMARY KEY (`p_id`,`g_id`),
  ADD KEY `FK_games_platforms_g_id` (`g_id`);

--
-- Index pour la table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Index pour la table `platforms`
--
ALTER TABLE `platforms`
  ADD PRIMARY KEY (`p_id`);

--
-- Index pour la table `studios`
--
ALTER TABLE `studios`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `games`
--
ALTER TABLE `games`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT pour la table `genres`
--
ALTER TABLE `genres`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `platforms`
--
ALTER TABLE `platforms`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `studios`
--
ALTER TABLE `studios`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `FK_games_s_id` FOREIGN KEY (`s_id`) REFERENCES `studios` (`s_id`);

--
-- Contraintes pour la table `games_genres`
--
ALTER TABLE `games_genres`
  ADD CONSTRAINT `FK_games_genres_g_id` FOREIGN KEY (`g_id`) REFERENCES `games` (`g_id`),
  ADD CONSTRAINT `FK_games_platforms_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`);

--
-- Contraintes pour la table `games_platforms`
--
ALTER TABLE `games_platforms`
  ADD CONSTRAINT `FK_games_platforms_g_id` FOREIGN KEY (`g_id`) REFERENCES `games` (`g_id`),
  ADD CONSTRAINT `FK_games_platforms_p_id` FOREIGN KEY (`p_id`) REFERENCES `platforms` (`p_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
