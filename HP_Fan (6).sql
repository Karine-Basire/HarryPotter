-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mer 06 Février 2019 à 16:27
-- Version du serveur :  5.7.25-0ubuntu0.18.04.2
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `HP_Fan`
--

-- --------------------------------------------------------

--
-- Structure de la table `LesFilms`
--

CREATE TABLE `LesFilms` (
  `idFilm` int(11) NOT NULL,
  `Nom_du_film` varchar(150) NOT NULL,
  `idPersonnages` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `LesFilms`
--

INSERT INTO `LesFilms` (`idFilm`, `Nom_du_film`, `idPersonnages`) VALUES
(1, 'Harry Potter à l’école des sorciers de Chris Columbus (2001)\r\n', 1),
(2, 'Harry Potter et la Chambre des secrets de Chris Columbus (2002)\r\n', 1),
(3, 'Harry Potter et le Prisonnier d’Azkaban de Alfonso Cuarón (2004)\r\n', 2),
(4, 'Harry Potter et la Coupe de feu de Mike Newell (2005)\r\n', 1),
(5, 'Harry Potter et l’Ordre du phénix de David Yates (2007)\r\n', 1),
(6, 'Harry Potter et le Prince de sang-mêlé de David Yates (2009)\r\n', 1),
(7, 'Harry Potter et les Reliques de la Mort, première partie de David Yates (2010)\r\n', 1),
(8, 'Harry Potter et les Reliques de la Mort, deuxième partie de David Yates (2011)\r\n', 2);

-- --------------------------------------------------------

--
-- Structure de la table `LesMaisons`
--

CREATE TABLE `LesMaisons` (
  `idMaison` int(11) NOT NULL,
  `Nom_des_maisons` varchar(70) NOT NULL,
  `Fondateur_des_maisons` varchar(70) NOT NULL,
  `owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `LesMaisons`
--

INSERT INTO `LesMaisons` (`idMaison`, `Nom_des_maisons`, `Fondateur_des_maisons`, `owner`) VALUES
(1, 'Griffondor', 'Godric Gryffondor', 1),
(2, 'Poufsouffle', 'Helga Hufflepuff', 2),
(3, 'Serdaigle', 'Rowena Ravenclaw', 3),
(4, ' Serpentard', 'Salazar Slytherin', 0);

-- --------------------------------------------------------

--
-- Structure de la table `LesSorts`
--

CREATE TABLE `LesSorts` (
  `idSort` int(11) NOT NULL,
  `Sort` varchar(80) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Interdiction` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `LesSorts`
--

INSERT INTO `LesSorts` (`idSort`, `Sort`, `Description`, `Interdiction`) VALUES
(1, 'Dissedium', 'Ouvrir un passage secret\r\n\r\n', 'non'),
(2, 'Imperium', 'Se faire obéir par quelqu\'un (sort interdit;dit impardonable)', 'oui');

-- --------------------------------------------------------

--
-- Structure de la table `Personnages`
--

CREATE TABLE `Personnages` (
  `idPersonnages` int(11) NOT NULL,
  `Nom_personnages` varchar(30) NOT NULL,
  `Prénom_personnages` varchar(30) NOT NULL,
  `Âge_personnages` int(11) NOT NULL,
  `1er_film_d’apparition` varchar(150) NOT NULL,
  `Maison` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Personnages`
--

INSERT INTO `Personnages` (`idPersonnages`, `Nom_personnages`, `Prénom_personnages`, `Âge_personnages`, `1er_film_d’apparition`, `Maison`) VALUES
(1, 'Granger', 'Hermione', 39, 'Harry Potter à l\'école des sorciers, ', 'Griffondor'),
(2, 'Chang', 'Cho ', 39, 'Harry Potter et le prisonnier d\'Azkaban, ', 'Serdaigle,'),
(3, 'Abbot', 'Hannah', 38, 'Harry Potter à l\'école des sorciers, ', 'Poufsouffle');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `LesFilms`
--
ALTER TABLE `LesFilms`
  ADD PRIMARY KEY (`idFilm`);

--
-- Index pour la table `LesMaisons`
--
ALTER TABLE `LesMaisons`
  ADD PRIMARY KEY (`idMaison`);

--
-- Index pour la table `LesSorts`
--
ALTER TABLE `LesSorts`
  ADD PRIMARY KEY (`idSort`);

--
-- Index pour la table `Personnages`
--
ALTER TABLE `Personnages`
  ADD PRIMARY KEY (`idPersonnages`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `LesFilms`
--
ALTER TABLE `LesFilms`
  MODIFY `idFilm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `LesMaisons`
--
ALTER TABLE `LesMaisons`
  MODIFY `idMaison` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `LesSorts`
--
ALTER TABLE `LesSorts`
  MODIFY `idSort` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `Personnages`
--
ALTER TABLE `Personnages`
  MODIFY `idPersonnages` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
