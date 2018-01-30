-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  Dim 28 jan. 2018 à 19:21
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pandatrip`
--

-- --------------------------------------------------------

--
-- Structure de la table `guide`
--

CREATE TABLE `guide` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `billfold` double NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `region` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` int(5) UNSIGNED ZEROFILL DEFAULT NULL,
  `phone_number` int(10) UNSIGNED ZEROFILL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `guide_reviews`
--

CREATE TABLE `guide_reviews` (
  `guide_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id`, `url`, `description`) VALUES
(1, 'theme/parc-animalier.jpg', 'Photo parc animalier'),
(2, 'theme/histoire.jpg', 'Photo histoire'),
(3, 'theme/chateau.jpg', 'Photo château'),
(4, 'theme/guerre.jpg', 'Photo guerre'),
(5, 'theme/culte.jpg', 'Photo lieu de culte'),
(6, 'theme/musee.jpg', 'Photo musée'),
(7, 'theme/lac.jpg', 'Photo lac'),
(8, 'theme/foret.jpg', 'Photo forêt'),
(9, 'zoo/parc_animalier_auvergne-01.jpg', 'Photo parc animalier d\'Auvergne'),
(10, 'zoo/parc_animalier_auvergne-02.jpg', 'Photo parc animalier d\'Auvergne'),
(11, 'zoo/parc_animalier_auvergne-03.jpg', 'Photo parc animalier d\'Auvergne'),
(12, 'zoo/parc_animalier_auvergne-04.jpg', 'Photo parc animalier d\'Auvergne'),
(13, 'zoo/parc_animalier_auvergne-05.jpg', 'Photo parc animalier d\'Auvergne'),
(14, 'zoo/le_pal-01.jpg', 'Photo le PAL'),
(15, 'zoo/le_pal-02.jpg', 'Photo le PAL'),
(16, 'zoo/le_pal-03.jpg', 'Photo le PAL'),
(17, 'zoo/le_pal-04.jpg', 'Photo le PAL'),
(18, 'zoo/le_pal-05.jpg', 'Photo le PAL'),
(19, 'zoo/le_pal-06.jpg', 'Photo le PAL'),
(20, 'zoo/le_domaine_des_fauves-01.jpg', 'Photo le domaine des fauves'),
(21, 'zoo/le_domaine_des_fauves-02.jpg', 'Photo le domaine des fauves'),
(22, 'zoo/le_domaine_des_fauves-03.jpg', 'Photo le domaine des fauves'),
(23, 'zoo/le_domaine_des_fauves-04.jpg', 'Photo le domaine des fauves'),
(24, 'zoo/le_domaine_des_fauves-05.jpg', 'Photo le domaine des fauves'),
(25, 'zoo/jardin_zoologique_de_la_ville_de_lyon-01.jpg', 'Photo jardin zoologique de la ville de Lyon'),
(26, 'zoo/jardin_zoologique_de_la_ville_de_lyon-02.jpg', 'Photo jardin zoologique de la ville de Lyon'),
(27, 'zoo/jardin_zoologique_de_la_ville_de_lyon-03.jpg', 'Photo jardin zoologique de la ville de Lyon'),
(28, 'zoo/jardin_zoologique_de_la_ville_de_lyon-04.jpg', 'Photo jardin zoologique de la ville de Lyon'),
(29, 'zoo/espace_zoologique_de_st_martin_la_plaine-01.jpg', 'Photo espace zoologique de St-Martin la plaine'),
(30, 'zoo/espace_zoologique_de_st_martin_la_plaine-02.jpg', 'Photo espace zoologique de St-Martin la plaine'),
(31, 'zoo/espace_zoologique_de_st_martin_la_plaine-03.jpg', 'Photo espace zoologique de St-Martin la plaine'),
(32, 'zoo/espace_zoologique_de_st_martin_la_plaine-04.jpg', 'Photo espace zoologique de St-Martin la plaine'),
(33, 'zoo/espace_zoologique_de_st_martin_la_plaine-05.jpg', 'Photo espace zoologique de St-Martin la plaine'),
(34, 'zoo/espace_zoologique_de_st_martin_la_plaine-06.jpg', 'Photo espace zoologique de St-Martin la plaine'),
(35, 'zoo/la_citadelle_de_besancon-01.jpg', 'Photo la citadelle de Besançon'),
(36, 'zoo/la_citadelle_de_besancon-02.jpg', 'Photo la citadelle de Besançon'),
(37, 'zoo/la_citadelle_de_besancon-03.jpg', 'Photo la citadelle de Besançon'),
(38, 'zoo/touroparc-01.jpg', 'Photo touroparc'),
(39, 'zoo/touroparc-02.jpg', 'Photo touroparc'),
(40, 'zoo/touroparc-03.jpg', 'Photo touroparc'),
(41, 'zoo/touroparc-04.jpg', 'Photo touroparc'),
(42, 'zoo/touroparc-05.jpg', 'Photo touroparc'),
(43, 'zoo/touroparc-06.jpg', 'Photo touroparc'),
(44, 'zoo/touroparc-07.jpg', 'Photo touroparc'),
(45, 'zoo/touroparc-08.jpg', 'Photo touroparc'),
(46, 'zoo/parc_animalier_et botanique_de_branfere-01.jpg', 'Photo parc animalier et botanique de Branféré'),
(47, 'zoo/parc_animalier_et botanique_de_branfere-02.jpg', 'Photo parc animalier et botanique de Branféré'),
(48, 'zoo/parc_animalier_et botanique_de_branfere-03.jpg', 'Photo parc animalier et botanique de Branféré'),
(49, 'zoo/parc_animalier_et botanique_de_branfere-04.jpg', 'Photo parc animalier et botanique de Branféré'),
(50, 'zoo/parc_animalier_et botanique_de_branfere-05.jpg', 'Photo parc animalier et botanique de Branféré'),
(51, 'zoo/parc_animalier_et botanique_de_branfere-06.jpg', 'Photo parc animalier et botanique de Branféré'),
(52, 'zoo/domaine_de_la_bourbansais-01.jpg', 'Photo domaine de la Bourbansais'),
(53, 'zoo/domaine_de_la_bourbansais-02.jpg', 'Photo domaine de la Bourbansais'),
(54, 'zoo/domaine_de_la_bourbansais-03.jpg', 'Photo domaine de la Bourbansais'),
(55, 'zoo/domaine_de_la_bourbansais-04.jpg', 'Photo domaine de la Bourbansais'),
(56, 'zoo/domaine_de_la_bourbansais-05.jpg', 'Photo domaine de la Bourbansais'),
(57, 'zoo/domaine_de_la_bourbansais-06.jpg', 'Photo domaine de la Bourbansais'),
(58, 'zoo/domaine_de_la_bourbansais-07.jpg', 'Photo domaine de la Bourbansais'),
(59, 'zoo/domaine_de_la_bourbansais-08.jpg', 'Photo domaine de la Bourbansais'),
(60, 'zoo/domaine_de_la_bourbansais-09.jpg', 'Photo domaine de la Bourbansais'),
(61, 'zoo/zoo_de_pont-scorff-01.jpg', 'Photo zoo de Pont-Scorff'),
(62, 'zoo/zoo_de_pont-scorff-02.jpg', 'Photo zoo de Pont-Scorff'),
(63, 'zoo/zoo_de_pont-scorff-03.jpg', 'Photo zoo de Pont-Scorff'),
(64, 'zoo/zooparc_de_tregomeur-01.jpg', 'Photo zooparc de Trégomeur'),
(65, 'zoo/zooparc_de_tregomeur-02.jpg', 'Photo zooparc de Trégomeur'),
(66, 'zoo/zooparc_de_tregomeur-03.jpg', 'Photo zooparc de Trégomeur'),
(67, 'zoo/zooparc_de_tregomeur-04.jpg', 'Photo zooparc de Trégomeur'),
(68, 'zoo/zooparc_de_tregomeur-05.jpg', 'Photo zooparc de Trégomeur'),
(69, 'zoo/zooparc_de_tregomeur-06.jpg', 'Photo zooparc de Trégomeur'),
(70, 'zoo/zooparc_de_tregomeur-07.jpg', 'Photo zooparc de Trégomeur'),
(71, 'zoo/zooparc_de_tregomeur-08.jpg', 'Photo zooparc de Trégomeur'),
(72, 'zoo/reserve_de_la_haute_touche-01.jpg', 'Photo réserve de la Haute-Touche'),
(73, 'zoo/reserve_de_la_haute_touche-02.jpg', 'Photo réserve de la Haute-Touche'),
(74, 'zoo/reserve_de_la_haute_touche-03.jpg', 'Photo réserve de la Haute-Touche'),
(75, 'zoo/reserve_de_la_haute_touche-04.jpg', 'Photo réserve de la Haute-Touche'),
(76, 'zoo/reserve_de_la_haute_touche-05.jpg', 'Photo réserve de la Haute-Touche'),
(77, 'zoo/reserve_de_la_haute_touche-06.jpg', 'Photo réserve de la Haute-Touche'),
(78, 'zoo/zooparc_de_beauval-01.jpg', 'Photo zooparc de Beauval'),
(79, 'zoo/zooparc_de_beauval-02.jpg', 'Photo zooparc de Beauval'),
(80, 'zoo/zooparc_de_beauval-03.jpg', 'Photo zooparc de Beauval'),
(81, 'zoo/zooparc_de_beauval-04.jpg', 'Photo zooparc de Beauval'),
(82, 'zoo/zooparc_de_beauval-05.jpg', 'Photo zooparc de Beauval'),
(83, 'zoo/zooparc_de_beauval-06.jpg', 'Photo zooparc de Beauval'),
(84, 'zoo/zooparc_de_beauval-07.jpg', 'Photo zooparc de Beauval'),
(85, 'zoo/zooparc_de_beauval-08.jpg', 'Photo zooparc de Beauval'),
(86, 'zoo/zooparc_de_beauval-09.jpg', 'Photo zooparc de Beauval'),
(87, 'zoo/zooparc_de_beauval-10.jpg', 'Photo zooparc de Beauval'),
(88, 'zoo/zooparc_de_beauval-11.jpg', 'Photo zooparc de Beauval'),
(89, 'zoo/zooparc_de_beauval-12.jpg', 'Photo zooparc de Beauval'),
(90, 'zoo/zoo_d_amneville-01.jpg', 'Photo zoo d\'Amnéville'),
(91, 'zoo/zoo_d_amneville-02.jpg', 'Photo zoo d\'Amnéville'),
(92, 'zoo/zoo_d_amneville-03.jpg', 'Photo zoo d\'Amnéville'),
(93, 'zoo/zoo_d_amneville-04.jpg', 'Photo zoo d\'Amnéville'),
(94, 'zoo/zoo_d_amneville-05.jpg', 'Photo zoo d\'Amnéville'),
(95, 'zoo/zoo_d_amneville-06.jpg', 'Photo zoo d\'Amnéville'),
(96, 'zoo/zoo_d_amneville-07.jpg', 'Photo zoo d\'Amnéville'),
(97, 'zoo/zoo_d_amneville-08.jpg', 'Photo zoo d\'Amnéville'),
(98, 'zoo/parc_zoologique_et_botanique_de_mulhouse-01.jpg', 'Photo parc zoologique et botanique de Mulhouse'),
(99, 'zoo/parc_zoologique_et_botanique_de_mulhouse-02.jpg', 'Photo parc zoologique et botanique de Mulhouse'),
(100, 'zoo/parc_zoologique_et_botanique_de_mulhouse-03.jpg', 'Photo parc zoologique et botanique de Mulhouse'),
(101, 'zoo/parc_zoologique_et_botanique_de_mulhouse-04.jpg', 'Photo parc zoologique et botanique de Mulhouse'),
(102, 'zoo/zoo_de_l_orangerie-01.jpg', 'Photo zoo de l\'Orangerie'),
(103, 'zoo/zoo_de_l_orangerie-02.jpg', 'Photo zoo de l\'Orangerie'),
(104, 'zoo/zoo_d_amiens-01.jpg', 'Photo zoo d\'Amiens'),
(105, 'zoo/zoo_d_amiens-02.jpg', 'Photo zoo d\'Amiens'),
(106, 'zoo/parc_zoologique_fort_mardyck_dunkerque_grand_littoral-01.jpg', 'Photo parc zoologique Fort Mardyck Dunkerque Grand Littoral'),
(107, 'zoo/parc_zoologique_fort_mardyck_dunkerque_grand_littoral-02.jpg', 'Photo parc zoologique Fort Mardyck Dunkerque Grand Littoral'),
(108, 'zoo/parc_zoologique_fort_mardyck_dunkerque_grand_littoral-03.jpg', 'Photo parc zoologique Fort Mardyck Dunkerque Grand Littoral'),
(109, 'zoo/parc_zoologique_fort_mardyck_dunkerque_grand_littoral-04.jpg', 'Photo parc zoologique Fort Mardyck Dunkerque Grand Littoral'),
(110, 'zoo/parc_zoologique_fort_mardyck_dunkerque_grand_littoral-05.jpg', 'Photo parc zoologique Fort Mardyck Dunkerque Grand Littoral'),
(111, 'zoo/parc_zoologique_de_lille-01.jpg', 'Parc zoologique de Lille'),
(112, 'zoo/parc_zoologique_de_lille-02.jpg', 'Parc zoologique de Lille'),
(113, 'zoo/zoo_de_maubeuge-01.jpg', 'Photo zoo de Maubeuge'),
(114, 'zoo/zoo_de_maubeuge-02.jpg', 'Photo zoo de Maubeuge'),
(115, 'zoo/zoo_de_maubeuge-03.jpg', 'Photo zoo de Maubeuge'),
(116, 'zoo/zoo_de_maubeuge-04.jpg', 'Photo zoo de Maubeuge'),
(117, 'zoo/zoo_de_maubeuge-05.jpg', 'Photo zoo de Maubeuge'),
(118, 'zoo/parc_zoologique_du_bois_d_attilly-01.jpg', 'Photo parc zoologique du Bois d\'Attilly'),
(119, 'zoo/parc_zoologique_du_bois_d_attilly-02.jpg', 'Photo parc zoologique du Bois d\'Attilly'),
(120, 'zoo/parc_zoologique_du_bois_d_attilly-03.jpg', 'Photo parc zoologique du Bois d\'Attilly'),
(121, 'zoo/menagerie_du_jardin_des_plantes-01.jpg', 'Photo ménagerie du jardin des plantes'),
(122, 'zoo/menagerie_du_jardin_des_plantes-02.jpg', 'Photo ménagerie du jardin des plantes'),
(123, 'zoo/menagerie_du_jardin_des_plantes-03.jpg', 'Photo ménagerie du jardin des plantes'),
(124, 'zoo/menagerie_du_jardin_des_plantes-04.jpg', 'Photo ménagerie du jardin des plantes'),
(125, 'zoo/menagerie_du_jardin_des_plantes-05.jpg', 'Photo ménagerie du jardin des plantes'),
(126, 'zoo/menagerie_du_jardin_des_plantes-06.jpg', 'Photo ménagerie du jardin des plantes'),
(127, 'zoo/menagerie_du_jardin_des_plantes-07.jpg', 'Photo ménagerie du jardin des plantes'),
(128, 'zoo/menagerie_du_jardin_des_plantes-08.jpg', 'Photo ménagerie du jardin des plantes'),
(129, 'zoo/parc_zoologique_de_paris-01.jpg', 'Photo parc zoologique de Paris'),
(130, 'zoo/parc_zoologique_de_paris-02.jpg', 'Photo parc zoologique de Paris'),
(131, 'zoo/parc_zoologique_de_paris-03.jpg', 'Photo parc zoologique de Paris'),
(132, 'zoo/parc_zoologique_de_paris-04.jpg', 'Photo parc zoologique de Paris'),
(133, 'zoo/parc_zoologique_de_paris-05.jpg', 'Photo parc zoologique de Paris'),
(134, 'zoo/cerza-01.jpg', 'Photo CERZA'),
(135, 'zoo/cerza-02.jpg', 'Photo CERZA'),
(136, 'zoo/cerza-03.jpg', 'Photo CERZA'),
(137, 'zoo/cerza-04.jpg', 'Photo CERZA'),
(138, 'zoo/cerza-05.jpg', 'Photo CERZA'),
(139, 'zoo/cerza-06.jpg', 'Photo CERZA'),
(140, 'zoo/cerza-07.jpg', 'Photo CERZA'),
(141, 'zoo/zoo_de_jurques-01.jpg', 'Photo zoo de Jurques'),
(142, 'zoo/zoo_de_jurques-02.jpg', 'Photo zoo de Jurques'),
(143, 'zoo/zoo_de_jurques-03.jpg', 'Photo zoo de Jurques'),
(144, 'zoo/zoo_de_jurques-04.jpg', 'Photo zoo de Jurques'),
(145, 'zoo/zoo_de_jurques-05.jpg', 'Photo zoo de Jurques'),
(146, 'zoo/zoo_de_jurques-06.jpg', 'Photo zoo de Jurques'),
(147, 'zoo/parc_zoologique_de_champrepus-01.jpg', 'Photo parc zoologique de Champrépus'),
(148, 'zoo/parc_zoologique_de_champrepus-02.jpg', 'Photo parc zoologique de Champrépus'),
(149, 'zoo/parc_zoologique_de_champrepus-03.jpg', 'Photo parc zoologique de Champrépus'),
(150, 'zoo/parc_zoologique_de_champrepus-04.jpg', 'Photo parc zoologique de Champrépus'),
(151, 'zoo/zoo_d_asson-01.jpg', 'Photo zoo d\'Asson'),
(152, 'zoo/zoo_d_asson-02.jpg', 'Photo zoo d\'Asson'),
(153, 'zoo/zoo_d_asson-03.jpg', 'Photo zoo d\'Asson'),
(154, 'zoo/zoo_d_asson-04.jpg', 'Photo zoo d\'Asson'),
(155, 'zoo/zoo_d_asson-05.jpg', 'Photo zoo d\'Asson'),
(156, 'zoo/zoo_d_asson-06.jpg', 'Photo zoo d\'Asson'),
(157, 'zoo/zoo_d_asson-07.jpg', 'Photo zoo d\'Asson'),
(158, 'zoo/zoo_d_asson-08.jpg', 'Photo zoo d\'Asson'),
(159, 'zoo/zoo_d_asson-09.jpg', 'Photo zoo d\'Asson'),
(160, 'zoo/zoo_d_asson-10.jpg', 'Photo zoo d\'Asson'),
(161, 'zoo/zoo_d_asson-11.jpg', 'Photo zoo d\'Asson'),
(162, 'zoo/zoo_du_bassin_d_arcachon-01.jpg', 'Photo zoo du bassin d\'Arcachon'),
(163, 'zoo/zoo_du_bassin_d_arcachon-02.jpg', 'Photo zoo du bassin d\'Arcachon'),
(164, 'zoo/zoo_du_bassin_d_arcachon-03.jpg', 'Photo zoo du bassin d\'Arcachon'),
(165, 'zoo/zoo_du_bassin_d_arcachon-04.jpg', 'Photo zoo du bassin d\'Arcachon'),
(166, 'zoo/zoo_du_bassin_d_arcachon-05.jpg', 'Photo zoo du bassin d\'Arcachon'),
(167, 'zoo/zoo_du_bassin_d_arcachon-06.jpg', 'Photo zoo du bassin d\'Arcachon'),
(168, 'zoo/zoo_du_bassin_d_arcachon-07.jpg', 'Photo zoo du bassin d\'Arcachon'),
(169, 'zoo/parc_du_reynou-01.jpg', 'Photo parc du Reynou'),
(170, 'zoo/parc_du_reynou-02.jpg', 'Photo parc du Reynou'),
(171, 'zoo/parc_du_reynou-03.jpg', 'Photo parc du Reynou'),
(172, 'zoo/zoo_de_la_palmyre-01.jpg', 'Photo zoo de la Palmyre'),
(173, 'zoo/zoo_de_la_palmyre-02.jpg', 'Photo zoo de la Palmyre'),
(174, 'zoo/zoo_de_la_palmyre-03.jpg', 'Photo zoo de la Palmyre'),
(175, 'zoo/zoo_de_la_palmyre-04.jpg', 'Photo zoo de la Palmyre'),
(176, 'zoo/zoo_de_la_palmyre-05.jpg', 'Photo zoo de la Palmyre'),
(177, 'zoo/zoo_de_la_palmyre-06.jpg', 'Photo zoo de la Palmyre'),
(178, 'zoo/zoo_de_la_palmyre-07.jpg', 'Photo zoo de la Palmyre'),
(179, 'zoo/zoo_de_la_palmyre-08.jpg', 'Photo zoo de la Palmyre'),
(180, 'zoo/zoo_de_bordeaux_pessac-01.jpg', 'Photo zoo de Bordeaux-Pessac'),
(181, 'zoo/zoo_de_bordeaux_pessac-02.jpg', 'Photo zoo de Bordeaux-Pessac'),
(182, 'zoo/zoo_de_bordeaux_pessac-03.jpg', 'Photo zoo de Bordeaux-Pessac'),
(183, 'zoo/zoo_de_bordeaux_pessac-04.jpg', 'Photo zoo de Bordeaux-Pessac'),
(184, 'zoo/zoo_de_bordeaux_pessac-05.jpg', 'Photo zoo de Bordeaux-Pessac'),
(185, 'zoo/zoo_de_bordeaux_pessac-06.jpg', 'Photo zoo de Bordeaux-Pessac'),
(186, 'zoo/zoo_de_bordeaux_pessac-07.jpg', 'Photo zoo de Bordeaux-Pessac'),
(187, 'zoo/zoo_de_bordeaux_pessac-08.jpg', 'Photo zoo de Bordeaux-Pessac'),
(188, 'zoo/zoo_de_bordeaux_pessac-09.jpg', 'Photo zoo de Bordeaux-Pessac'),
(189, 'zoo/zoo_de_bordeaux_pessac-10.jpg', 'Photo zoo de Bordeaux-Pessac'),
(190, 'zoo/la_vallee_des_singes-01.jpg', 'Photo la vallée des singes'),
(191, 'zoo/la_vallee_des_singes-02.jpg', 'Photo la vallée des singes'),
(192, 'zoo/la_vallee_des_singes-03.jpg', 'Photo la vallée des singes'),
(193, 'zoo/la_vallee_des_singes-04.jpg', 'Photo la vallée des singes'),
(194, 'zoo/la_vallee_des_singes-05.jpg', 'Photo la vallée des singes'),
(195, 'zoo/la_vallee_des_singes-06.jpg', 'Photo la vallée des singes'),
(196, 'zoo/parc_animalier_de_casteil-01.jpg', 'Photo parc animalier de Casteil'),
(197, 'zoo/parc_animalier_de_casteil-02.jpg', 'Photo parc animalier de Casteil'),
(198, 'zoo/parc_animalier_de_casteil-03.jpg', 'Photo parc animalier de Casteil'),
(199, 'zoo/parc_animalier_de_casteil-04.jpg', 'Photo parc animalier de Casteil'),
(200, 'zoo/parc_animalier_de_casteil-05.jpg', 'Photo parc animalier de Casteil'),
(201, 'zoo/parc_zoologique_de_montpellier-01.jpg', 'Photo parc zoologique de Montpellier'),
(202, 'zoo/parc_zoologique_de_montpellier-02.jpg', 'Photo parc zoologique de Montpellier'),
(203, 'zoo/parc_zoologique_de_montpellier-03.jpg', 'Photo parc zoologique de Montpellier'),
(204, 'zoo/parc_zoologique_de_montpellier-04.jpg', 'Photo parc zoologique de Montpellier'),
(205, 'zoo/parc_zoologique_de_montpellier-05.jpg', 'Photo parc zoologique de Montpellier'),
(206, 'zoo/parc_zoologique_de_montpellier-06.jpg', 'Photo parc zoologique de Montpellier'),
(207, 'zoo/parc_zoologique_de_montpellier-07.jpg', 'Photo parc zoologique de Montpellier'),
(208, 'zoo/parc_zoologique_de_montpellier-08.jpg', 'Photo parc zoologique de Montpellier'),
(209, 'zoo/parc_zoologique_de_montpellier-09.jpg', 'Photo parc zoologique de Montpellier'),
(211, 'zoo/african safari-01.jpg', 'Photo african safari'),
(212, 'zoo/african safari-02.jpg', 'Photo african safari'),
(213, 'zoo/african safari-03.jpg', 'Photo african safari'),
(214, 'zoo/african safari-04.jpg', 'Photo african safari'),
(215, 'zoo/african safari-05.jpg', 'Photo african safari'),
(216, 'zoo/african safari-06.jpg', 'Photo african safari'),
(217, 'zoo/african safari-07.jpg', 'Photo african safari'),
(218, 'zoo/african safari-08.jpg', 'Photo african safari'),
(219, 'zoo/african safari-09.jpg', 'Photo african safari'),
(220, 'zoo/bioparc_de_doue_la_fontaine-01.jpg', 'Photo bioparc de Doué la Fontaine'),
(221, 'zoo/bioparc_de_doue_la_fontaine-02.jpg', 'Photo bioparc de Doué la Fontaine'),
(222, 'zoo/bioparc_de_doue_la_fontaine-03.jpg', 'Photo bioparc de Doué la Fontaine'),
(223, 'zoo/bioparc_de_doue_la_fontaine-04.jpg', 'Photo bioparc de Doué la Fontaine'),
(224, 'zoo/bioparc_de_doue_la_fontaine-05.jpg', 'Photo bioparc de Doué la Fontaine'),
(225, 'zoo/bioparc_de_doue_la_fontaine-06.jpg', 'Photo bioparc de Doué la Fontaine'),
(226, 'zoo/zoo_de_la_boissiere_du_dore-01.jpg', 'Photo zoo de La Boissière du Doré'),
(227, 'zoo/zoo_de_la_boissiere_du_dore-02.jpg', 'Photo zoo de la Boissière du Doré'),
(228, 'zoo/zoo_de_la_boissiere_du_dore-03.jpg', 'Photo zoo de la Boissière du Doré'),
(229, 'zoo/zoo_de_la_boissiere_du_dore-04.jpg', 'Photo zoo de la Boissière du Doré'),
(230, 'zoo/zoo_de_la_boissiere_du_dore-05.jpg', 'Photo zoo de la Boissière du Doré'),
(231, 'zoo/zoo_de_la_boissiere_du_dore-06.jpg', 'Photo zoo de la Boissière du Doré'),
(232, 'zoo/zoo_de_la_boissiere_du_dore-07.jpg', 'Photo zoo de la Boissière du Doré'),
(233, 'zoo/zoo_de_la_boissiere_du_dore-08.jpg', 'Photo zoo de la Boissière du Doré'),
(234, 'zoo/zoo_de_la_boissiere_du_dore-09.jpg', 'Photo zoo de la Boissière du Doré'),
(235, 'zoo/zoo_de_la_boissiere_du_dore-10.jpg', 'Photo zoo de la Boissière du Doré'),
(236, 'zoo/zoo_de_la_boissiere_du_dore-11.jpg', 'Photo zoo de la Boissière du Doré'),
(237, 'zoo/zoo_de_la_boissiere_du_dore-12.jpg', 'Photo zoo de la Boissière du Doré'),
(238, 'zoo/zoo_de_la_boissiere_du_dore-13.jpg', 'Photo zoo de la Boissière du Doré'),
(239, 'zoo/zoo_de_la_boissiere_du_dore-14.jpg', 'Photo zoo de la Boissière du Doré'),
(240, 'zoo/zoo_de_la_fleche-01.jpg', 'Photo zoo de la Flèche'),
(241, 'zoo/zoo_de_la_fleche-02.jpg', 'Photo zoo de la Flèche'),
(242, 'zoo/zoo_de_la_fleche-03.jpg', 'Photo zoo de la Flèche'),
(243, 'zoo/zoo_de_la_fleche-04.jpg', 'Photo zoo de la Flèche'),
(244, 'zoo/zoo_de_la_fleche-05.jpg', 'Photo zoo de la Flèche'),
(245, 'zoo/zoo_de_la_fleche-06.jpg', 'Photo zoo de la Flèche'),
(246, 'zoo/zoo_de_la_fleche-07.jpg', 'Photo zoo de la Flèche'),
(247, 'zoo/zoo_de_la_fleche-08.jpg', 'Photo zoo de la Flèche'),
(248, 'zoo/zoo_de_la_fleche-09.jpg', 'Photo zoo de la Flèche'),
(249, 'zoo/zoo_de_la_fleche-10.jpg', 'Photo zoo de la Flèche'),
(250, 'zoo/zoo_de_la_fleche-11.jpg', 'Photo zoo de la Flèche'),
(251, 'zoo/domaine_zoologique_de_pescheray-01.jpg', 'Photo domaine zoologique de Pescheray'),
(252, 'zoo/domaine_zoologique_de_pescheray-02.jpg', 'Photo domaine zoologique de Pescheray'),
(253, 'zoo/domaine_zoologique_de_pescheray-03.jpg', 'Photo domaine zoologique de Pescheray'),
(254, 'zoo/domaine_zoologique_de_pescheray-04.jpg', 'Photo domaine zoologique de Pescheray'),
(255, 'zoo/domaine_zoologique_de_pescheray-05.jpg', 'Photo domaine zoologique de Pescheray'),
(256, 'zoo/domaine_zoologique_de_pescheray-06.jpg', 'Photo domaine zoologique de Pescheray'),
(257, 'zoo/domaine_zoologique_de_pescheray-07.jpg', 'Photo domaine zoologique de Pescheray'),
(258, 'zoo/domaine_zoologique_de_pescheray-08.jpg', 'Photo domaine zoologique de Pescheray'),
(259, 'zoo/route_du_tour_de_france-01.jpg', 'Photo route du tour de France'),
(260, 'zoo/route_du_tour_de_france-02.jpg', 'Photo route du tour de France'),
(261, 'zoo/route_du_tour_de_france-03.jpg', 'Photo route du tour de France'),
(262, 'zoo/route_du_tour_de_france-04.jpg', 'Photo route du tour de France'),
(263, 'zoo/route_du_tour_de_france-05.jpg', 'Photo route du tour de France'),
(264, 'zoo/route_du_tour_de_france-06.jpg', 'Photo route du tour de France'),
(265, 'zoo/route_du_tour_de_france-07.jpg', 'Photo route du tour de France'),
(266, 'zoo/natur_zoo_de_mervent-01.jpg', 'Photo natur\'zoo de Mervent'),
(267, 'zoo/natur_zoo_de_mervent-02.jpg', 'Photo natur\'zoo de Mervent'),
(268, 'zoo/natur_zoo_de_mervent-03.jpg', 'Photo natur\'zoo de Mervent'),
(269, 'zoo/natur_zoo_de_mervent-04.jpg', 'Photo natur\'zoo de Mervent'),
(270, 'zoo/natur_zoo_de_mervent-05.jpg', 'Photo natur\'zoo de Mervent'),
(271, 'zoo/natur_zoo_de_mervent-06.jpg', 'Photo natur\'zoo de Mervent'),
(272, 'zoo/natur_zoo_de_mervent-07.jpg', 'Photo natur\'zoo de Mervent'),
(273, 'zoo/spaycific_zoo-01.jpg', 'Photo spaycific\'zoo'),
(274, 'zoo/spaycific_zoo-02.jpg', 'Photo spaycific\'zoo'),
(275, 'zoo/spaycific_zoo-03.jpg', 'Photo spaycific\'zoo'),
(276, 'zoo/spaycific_zoo-04.jpg', 'Photo spaycific\'zoo'),
(277, 'zoo/spaycific_zoo-05.jpg', 'Photo spaycific\'zoo'),
(278, 'zoo/spaycific_zoo-06.jpg', 'Photo spaycific\'zoo'),
(279, 'zoo/zoologique_de_frejus-01.jpg', 'Photo parc zoologique de Fréjus'),
(280, 'zoo/zoologique_de_frejus-02.jpg', 'Photo parc zoologique de Fréjus'),
(281, 'zoo/zoologique_de_frejus-03.jpg', 'Photo parc zoologique de Fréjus'),
(282, 'zoo/zoologique_de_frejus-04.jpg', 'Photo parc zoologique de Fréjus'),
(283, 'zoo/zoologique_de_frejus-05.jpg', 'Photo parc zoologique de Fréjus'),
(284, 'zoo/zoologique_de_frejus-06.jpg', 'Photo parc zoologique de Fréjus'),
(285, 'zoo/zoo_de_la_barben-01.jpg', 'Photo zoo de la Barben'),
(286, 'zoo/zoo_de_la_barben-02.jpg', 'Photo zoo de la Barben'),
(287, 'zoo/zoo_de_la_barben-03.jpg', 'Photo zoo de la Barben'),
(288, 'zoo/zoo_de_la_barben-04.jpg', 'Photo zoo de la Barben'),
(289, 'zoo/zoo_de_la_barben-05.jpg', 'Photo zoo de la Barben'),
(290, 'zoo/zoo_de_la_barben-06.jpg', 'Photo zoo de la Barben'),
(291, 'zoo/jardin_exotique_de_sanary-01.jpg', 'Photo jardin exotique de Sanary'),
(292, 'zoo/jardin_exotique_de_sanary-02.jpg', 'Photo jardin exotique de Sanary'),
(293, 'zoo/jardin_exotique_de_sanary-03.jpg', 'Photo jardin exotique de Sanary'),
(294, 'zoo/jardin_exotique_de_sanary-04.jpg', 'Photo jardin exotique de Sanary'),
(295, 'zoo/jardin_exotique_de_sanary-05.jpg', 'Photo jardin exotique de Sanary'),
(296, 'zoo/zoo_du_faron-01.jpg', 'Photo zoo du Faron'),
(297, 'zoo/zoo_du_faron-02.jpg', 'Photo zoo du Faron'),
(298, 'zoo/zoo_du_faron-03.jpg', 'Photo zoo du Faron'),
(299, 'zoo/zoo_du_faron-04.jpg', 'Photo zoo du Faron'),
(300, 'zoo/zoo_du_faron-05.jpg', 'Photo zoo du Faron'),
(301, 'zoo/zoo_du_faron-06.jpg', 'Photo zoo du Faron'),
(302, 'zoo/zoo_du_faron-07.jpg', 'Photo zoo du Faron'),
(303, 'zoo/zoo_de_pont-scorff-04.jpg', 'Photo zoo de Pont-Scorff'),
(304, 'chateau/chateau_de_versailles-01.jpg', 'Photo château de Versailles'),
(305, 'chateau/chateau_de_versailles-02.jpg', 'Photo château de Versailles'),
(306, 'chateau/chateau_de_versailles-03.jpg', 'Photo château de Versailles'),
(307, 'chateau/chateau_de_versailles-04.jpg', 'Photo château de Versailles'),
(308, 'chateau/chateau_de_versailles-05.jpg', 'Photo château de Versailles'),
(309, 'chateau/chateau_de_versailles-06.jpg', 'Photo château de Versailles'),
(310, 'chateau/chateau_de_versailles-07.jpg', 'Photo château de Versailles'),
(311, 'chateau/chateau_de_versailles-08.jpg', 'Photo château de Versailles'),
(312, 'chateau/chateau_de_chambord-01.jpg', 'Photo château de Chambord'),
(313, 'chateau/chateau_de_chambord-02.jpg', 'Photo château de Chambord'),
(314, 'chateau/chateau_de_chambord-03.jpg', 'Photo château de Chambord'),
(315, 'chateau/chateau_de_chambord-04.jpg', 'Photo château de Chambord'),
(316, 'chateau/chateau_de_chambord-05.jpg', 'Photo château de Chambord'),
(317, 'chateau/chateau_de_chambord-06.jpg', 'Photo château de Chambord'),
(318, 'chateau/chateau_de_chambord-07.jpg', 'Photo château de Chambord'),
(319, 'chateau/chateau_de_chambord-08.jpg', 'Photo château de Chambord'),
(320, 'chateau/chateau_de_chambord-09.jpg', 'Photo château de Chambord'),
(321, 'chateau/chateau_de_chambord-10.jpg', 'Photo château de Chambord'),
(322, 'chateau/chateau_de_chenonceau-01.jpg', 'Photo château de Chenonceau'),
(323, 'chateau/chateau_de_chenonceau-02.jpg', 'Photo château de Chenonceau'),
(324, 'chateau/chateau_de_chenonceau-03.jpg', 'Photo château de Chenonceau'),
(325, 'chateau/chateau_de_chenonceau-04.jpg', 'Photo château de Chenonceau'),
(326, 'chateau/chateau_de_chenonceau-05.jpg', 'Photo château de Chenonceau'),
(327, 'chateau/chateau_de_chenonceau-06.jpg', 'Photo château de Chenonceau'),
(328, 'chateau/chateau_de_chenonceau-07.jpg', 'Photo château de Chenonceau'),
(329, 'chateau/chateau_de_chenonceau-08.jpg', 'Photo château de Chenonceau'),
(330, 'chateau/chateau_de_villandry-01.jpg', 'Photo château de Villandry'),
(331, 'chateau/chateau_de_villandry-02.jpg', 'Photo château de Villandry'),
(332, 'chateau/chateau_de_villandry-03.jpg', 'Photo château de Villandry'),
(333, 'chateau/chateau_de_villandry-04.jpg', 'Photo château de Villandry'),
(334, 'chateau/chateau_de_villandry-05.jpg', 'Photo château de Villandry'),
(335, 'chateau/chateau_de_villandry-06.jpg', 'Photo château de Villandry'),
(336, 'chateau/chateau_de_castelnaud-01.jpg', 'Photo château de Castelnaud'),
(337, 'chateau/chateau_de_castelnaud-02.jpg', 'Photo château de Castelnaud'),
(338, 'chateau/chateau_de_castelnaud-03.jpg', 'Photo château de Castelnaud'),
(339, 'chateau/chateau_de_castelnaud-04.jpg', 'Photo château de Castelnaud'),
(342, 'chateau/chateau_de_cheverny-01.jpg', 'Photo château de Cheverny'),
(343, 'chateau/chateau_de_cheverny-02.jpg', 'Photo château de Cheverny'),
(344, 'chateau/chateau_de_cheverny-03.jpg', 'Photo château de Cheverny'),
(345, 'chateau/chateau_de_cheverny-04.jpg', 'Photo château de Cheverny'),
(346, 'chateau/chateau_de_cheverny-05.jpg', 'Photo château de Cheverny'),
(347, 'chateau/chateau_de_vaux_le_vicomte-01.jpg', 'Photo château de Vaux-le-Vicomte'),
(348, 'chateau/chateau_de_vaux_le_vicomte-02.jpg', 'Photo château de Vaux-le-Vicomte'),
(349, 'chateau/chateau_de_vaux_le_vicomte-03.jpg', 'Photo château de Vaux-le-Vicomte'),
(350, 'chateau/chateau_de_vaux_le_vicomte-04.jpg', 'Photo château de Vaux-le-Vicomte'),
(351, 'chateau/chateau_de_vaux_le_vicomte-05.jpg', 'Photo château de Vaux-le-Vicomte'),
(352, 'chateau/chateau_de_vaux_le_vicomte-06.jpg', 'Photo château de Vaux-le-Vicomte'),
(353, 'chateau/chateau_de_fontainebleau-01.jpg', 'Photo château de Fontainebleau'),
(354, 'chateau/chateau_de_fontainebleau-02.jpg', 'Photo château de Fontainebleau'),
(355, 'chateau/chateau_de_fontainebleau-03.jpg', 'Photo château de Fontainebleau'),
(356, 'chateau/chateau_de_fontainebleau-04.jpg', 'Photo château de Fontainebleau'),
(357, 'chateau/chateau_de_fontainebleau-05.jpg', 'Photo château de Fontainebleau'),
(358, 'chateau/chateau_de_fontainebleau-06.jpg', 'Photo château de Fontainebleau'),
(359, 'chateau/chateau_de_fontainebleau-07.jpg', 'Photo château de Fontainebleau'),
(360, 'chateau/chateau_de_fontainebleau-08.jpg', 'Photo château de Fontainebleau'),
(361, 'chateau/chateau_de_haut_koenigsbourg-01.jpg', 'Photo château de Haut-Koenigsbourg'),
(362, 'chateau/chateau_de_haut_koenigsbourg-02.jpg', 'Photo château de Haut-Koenigsbourg'),
(363, 'chateau/chateau_de_haut_koenigsbourg-03.jpg', 'Photo château de Haut-Koenigsbourg'),
(364, 'chateau/chateau_de_haut_koenigsbourg-04.jpg', 'Photo château de Haut-Koenigsbourg'),
(365, 'chateau/chateau_de_haut_koenigsbourg-05.jpg', 'Photo château de Haut-Koenigsbourg'),
(366, 'chateau/chateau_de_haut_koenigsbourg-06.jpg', 'Photo château de Haut-Koenigsbourg'),
(367, 'chateau/chateau_de_haut_koenigsbourg-07.jpg', 'Photo château de Haut-Koenigsbourg'),
(368, 'chateau/chateau_de_peyrepertuse-01.jpg', 'Photo château de Peyrepertuse'),
(369, 'chateau/chateau_de_peyrepertuse-02.jpg', 'Photo château de Peyrepertuse'),
(370, 'chateau/chateau_de_peyrepertuse-03.jpg', 'Photo château de Peyrepertuse'),
(371, 'chateau/chateau_de_peyrepertuse-04.jpg', 'Photo château de Peyrepertuse'),
(372, 'chateau/chateau_d_usse-01.jpg', 'Photo château d\'Ussé'),
(373, 'chateau/chateau_d_usse-02.jpg', 'Photo château d\'Ussé'),
(374, 'chateau/chateau_d_usse-03.jpg', 'Photo château d\'Ussé'),
(375, 'chateau/chateau_d_usse-04.jpg', 'Photo château d\'Ussé'),
(376, 'chateau/chateau_d_usse-05.jpg', 'Photo château d\'Ussé'),
(377, 'chateau/chateau_d_usse-06.jpg', 'Photo château d\'Ussé'),
(378, 'chateau/chateau_d_amboise-01.jpg', 'Photo château d\'Amboise'),
(379, 'chateau/chateau_d_amboise-02.jpg', 'Photo château d\'Amboise'),
(380, 'chateau/chateau_d_amboise-03.jpg', 'Photo château d\'Amboise'),
(381, 'chateau/chateau_des_ducs_de_bretagne-01.jpg', 'Photo château des Ducs de Bretagne'),
(382, 'chateau/chateau_de_valencay-01.jpg', 'Photo château de Valençay'),
(383, 'chateau/chateau_de_valencay-02.jpg', 'Photo château de Valençay'),
(384, 'chateau/chateau_de_valencay-03.jpg', 'Photo château de Valençay'),
(385, 'chateau/chateau_de_valencay-04.jpg', 'Photo château de Valençay'),
(386, 'chateau/chateau_de_valencay-05.jpg', 'Photo château de Valençay'),
(387, 'chateau/chateau_de_valencay-06.jpg', 'Photo château de Valençay'),
(388, 'chateau/chateau_de_valencay-07.jpg', 'Photo château de Valençay'),
(389, 'chateau/chateau_de_valencay-08.jpg', 'Photo château de Valençay'),
(390, 'chateau/chateau_de_chantilly-01.jpg', 'Photo château de Chantilly'),
(391, 'chateau/chateau_de_chantilly-02.jpg', 'Photo château de Chantilly'),
(392, 'chateau/chateau_de_chantilly-03.jpg', 'Photo château de Chantilly'),
(393, 'chateau/chateau_de_chantilly-04.jpg', 'Photo château de Chantilly'),
(394, 'chateau/chateau_de_chantilly-05.jpg', 'Photo château de Chantilly'),
(395, 'chateau/chateau_de_chantilly-06.jpg', 'Photo château de Chantilly'),
(396, 'chateau/chateau_de_chantilly-07.jpg', 'Photo château de Chantilly'),
(397, 'chateau/chateau_de_chantilly-08.jpg', 'Photo château de Chantilly'),
(398, 'chateau/chateau_de_chantilly-09.jpg', 'Photo château de Chantilly'),
(399, 'chateau/le_logis_royal_de_loches-01.jpg', 'Photo le logis royal de Loches'),
(400, 'chateau/le_logis_royal_de_loches-02.jpg', 'Photo le logis royal de Loches'),
(401, 'chateau/le_logis_royal_de_loches-03.jpg', 'Photo le logis royal de Loches'),
(402, 'chateau/le_logis_royal_de_loches-04.jpg', 'Photo le logis royal de Loches'),
(403, 'chateau/le_logis_royal_de_loches-05.jpg', 'Photo le logis royal de Loches'),
(404, 'chateau/chateau_de_blois-01.jpg', 'Photo château de Blois'),
(405, 'chateau/chateau_de_blois-02.jpg', 'Photo château de Blois'),
(406, 'chateau/chateau_de_blois-03.jpg', 'Photo château de Blois'),
(407, 'chateau/chateau_de_blois-04.jpg', 'Photo château de Blois'),
(408, 'chateau/chateau_de_blois-05.jpg', 'Photo château de Blois'),
(409, 'chateau/chateau_de_blois-06.jpg', 'Photo château de Blois'),
(410, 'chateau/chateau_de_blois-07.jpg', 'Photo château de Blois'),
(411, 'chateau/chateau_de_blois-08.jpg', 'Photo château de Blois'),
(412, 'chateau/chateau_de_saumur-01.jpg', 'Photo château de Saumur'),
(413, 'chateau/chateau_de_saumur-02.jpg', 'Photo château de Saumur'),
(414, 'chateau/chateau_de_saumur-03.jpg', 'Photo château de Saumur'),
(415, 'chateau/chateau_de_bonaguil-01.jpg', 'Photo château de Bonaguil'),
(416, 'chateau/chateau_de_bonaguil-02.jpg', 'Photo château de Bonaguil'),
(417, 'chateau/chateau_de_bonaguil-03.jpg', 'Photo château de Bonaguil'),
(418, 'chateau/chateau_de_bonaguil-04.jpg', 'Photo château de Bonaguil'),
(419, 'chateau/chateau_de_bonaguil-05.jpg', 'Photo château de Bonaguil'),
(420, 'chateau/chateau_de_langeais-01.jpg', 'Photo château de Langeais'),
(421, 'chateau/chateau_de_langeais-02.jpg', 'Photo château de Langeais'),
(422, 'chateau/chateau_de_langeais-03.jpg', 'Photo château de Langeais'),
(423, 'chateau/chateau_de_langeais-04.jpg', 'Photo château de Langeais'),
(424, 'chateau/chateau_de_compiegne-01.jpg', 'Photo château de Compiègne'),
(425, 'chateau/chateau_de_compiegne-02.jpg', 'Photo château de Compiègne'),
(426, 'chateau/chateau_de_compiegne-03.jpg', 'Photo château de Compiègne'),
(427, 'chateau/chateau_de_compiegne-04.jpg', 'Photo château de Compiègne'),
(428, 'chateau/chateau_de_compiegne-05.jpg', 'Photo château de Compiègne'),
(429, 'chateau/chateau_de_compiegne-06.jpg', 'Photo château de Compiègne'),
(430, 'chateau/chateau_de_pierrefonds-01.jpg', 'Photo château de Pierrefonds'),
(431, 'chateau/chateau_de_pierrefonds-02.jpg', 'Photo château de Pierrefonds'),
(432, 'chateau/chateau_de_pierrefonds-03.jpg', 'Photo château de Pierrefonds'),
(433, 'chateau/chateau_de_pierrefonds-04.jpg', 'Photo château de Pierrefonds'),
(434, 'chateau/chateau_de_pierrefonds-05.jpg', 'Photo château de Pierrefonds'),
(435, 'chateau/chateau_de_conde-01.jpg', 'Photo château de Condé'),
(436, 'chateau/chateau_de_conde-02.jpg', 'Photo château de Condé'),
(437, 'chateau/chateau_de_conde-03.jpg', 'Photo château de Condé'),
(438, 'chateau/chateau_de_comtal-01.jpg', 'Photo château de Comtal'),
(439, 'chateau/chateau_de_courances-01.jpg', 'Photo château de Courances'),
(440, 'chateau/chateau_de_courances-02.jpg', 'Photo château de Courances'),
(441, 'chateau/chateau_de_courances-03.jpg', 'Photo château de Courances'),
(442, 'chateau/chateau_de_courances-04.jpg', 'Photo château de Courances'),
(443, 'chateau/chateau_de_courances-05.jpg', 'Photo château de Courances'),
(444, 'chateau/chateau_de_courances-06.jpg', 'Photo château de Courances'),
(445, 'chateau/chateau_de_malmaison-01.jpg', 'Photo château de Malmaison'),
(446, 'chateau/chateau_de_malmaison-02.jpg', 'Photo château de Malmaison'),
(447, 'chateau/chateau_de_malmaison-03.jpg', 'Photo château de Malmaison'),
(448, 'chateau/chateau_de_malmaison-04.jpg', 'Photo château de Malmaison'),
(449, 'chateau/chateau_de_saint_germain_en_laye-01.jpg', 'Photo château de Saint-Germain-en-Laye'),
(450, 'chateau/chateau_de_saint_germain_en_laye-02.jpg', 'Photo château de Saint-Germain-en-Laye'),
(451, 'chateau/chateau_de_saint_germain_en_laye-03.jpg', 'Photo château de Saint-Germain-en-Laye'),
(452, 'chateau/chateau_de_saint_germain_en_laye-04.jpg', 'Photo château de Saint-Germain-en-Laye'),
(453, 'chateau/chateau_d_ecouen-01.jpg', 'Photo château d\'Ecouen'),
(454, 'chateau/chateau_de_rambouillet-01.jpg', 'Photo château de Rambouillet'),
(455, 'chateau/chateau_de_rambouillet-02.jpg', 'Photo château de Rambouillet'),
(456, 'chateau/chateau_de_rambouillet-03.jpg', 'Photo château de Rambouillet'),
(457, 'chateau/chateau_de_rambouillet-04.jpg', 'Photo château de Rambouillet'),
(458, 'chateau/chateau_de_rambouillet-05.jpg', 'Photo château de Rambouillet'),
(459, 'chateau/chateau_de_rambouillet-06.jpg', 'Photo château de Rambouillet'),
(460, 'chateau/chateau_de_rambouillet-07.jpg', 'Photo château de Rambouillet'),
(461, 'chateau/chateau_de_rambouillet-08.jpg', 'Photo château de Rambouillet'),
(462, 'chateau/chateau_de_breteuil-01.jpg', 'Photo château de Breteuil'),
(463, 'chateau/chateau_de_breteuil-02.jpg', 'Photo château de Breteuil'),
(464, 'chateau/chateau_de_breteuil-03.jpg', 'Photo château de Breteuil'),
(465, 'chateau/chateau_de_breteuil-04.jpg', 'Photo château de Breteuil'),
(466, 'chateau/chateau_de_breteuil-05.jpg', 'Photo château de Breteuil'),
(467, 'chateau/chateau_de_breteuil-06.jpg', 'Photo château de Breteuil'),
(468, 'chateau/chateau_de_champs_sur_marne-01.jpg', 'Photo château de Champs-sur-Marne'),
(469, 'chateau/chateau_de_champs_sur_marne-02.jpg', 'Photo château de Champs-sur-Marne'),
(470, 'chateau/chateau_de_champs_sur_marne-03.jpg', 'Photo château de Champs-sur-Marne'),
(471, 'chateau/chateau_de_champs_sur_marne-04.jpg', 'Photo château de Champs-sur-Marne'),
(472, 'chateau/chateau_de_champs_sur_marne-05.jpg', 'Photo château de Champs-sur-Marne'),
(473, 'chateau/chateau_de_maisons_laffitte-01.jpg', 'Photo château de Maisons-Laffitte'),
(474, 'chateau/chateau_de_maisons_laffitte-02.jpg', 'Photo château de Maisons-Laffitte'),
(475, 'chateau/chateau_de_maisons_laffitte-03.jpg', 'Photo château de Maisons-Laffitte'),
(476, 'chateau/chateau_de_monte_cristo-01.jpg', 'Photo château de Monte-Cristo'),
(477, 'chateau/chateau_de_monte_cristo-02.jpg', 'Photo château de Monte-Cristo'),
(478, 'chateau/chateau_de_monte_cristo-03.jpg', 'Photo château de Monte-Cristo'),
(479, 'guerre/musee_guerre_et_paix-01.jpg', 'Photo musée guerre et paix en Ardennes'),
(480, 'guerre/musee_guerre_et_paix-02.jpg', 'Photo musée guerre et paix en Ardennes'),
(481, 'guerre/musee_guerre_et_paix-03.jpg', 'Photo musée guerre et paix en Ardennes'),
(482, 'guerre/centre_historique_medieval_azincourt-01.jpg', 'Photo centre historique médiéval d\'Azincourt'),
(483, 'guerre/centre_historique_medieval_azincourt-02.jpg', 'Photo centre historique médiéval d\'Azincourt'),
(484, 'guerre/musee_grande_guerre_pays_de_meaux-01.jpg', 'Photo musée de la Grande Guerre du pays de Meaux'),
(485, 'guerre/musee_grande_guerre_pays_de_meaux-02.jpg', 'Photo musée de la Grande Guerre du pays de Meaux'),
(486, 'guerre/historial-01.jpg', 'Photo historial de la Grande Guerre'),
(487, 'guerre/historial-02.jpg', 'Photo historial de la Grande Guerre'),
(488, 'guerre/historial-03.jpg', 'Photo historial de la Grande Guerre'),
(489, 'guerre/musee_somme_1916-01.jpg', 'Photo musée Somme 1916'),
(490, 'guerre/musee_somme_1916-02.jpg', 'Photo musée Somme 1916'),
(491, 'guerre/lens_14_18-01.jpg', 'Photo lens’ 14-18, Centre d’Histoire guerre et paix'),
(492, 'guerre/lens_14_18-02.jpg', 'Photo lens’ 14-18, Centre d’Histoire guerre et paix'),
(493, 'guerre/lens_14_18-03.jpg', 'Photo lens’ 14-18, Centre d’Histoire guerre et paix'),
(494, 'guerre/caverne_du_dragon-01.jpg', 'Photo caverne du Dragon'),
(495, 'guerre/caverne_du_dragon-02.jpg', 'Photo caverne du Dragon'),
(496, 'guerre/caverne_du_dragon-03.jpg', 'Photo caverne du Dragon'),
(497, 'guerre/musee_memorial_du_linge-01.jpg', 'Photo musée-mémorial du Linge'),
(498, 'guerre/musee_memorial_du_linge-02.jpg', 'Photo musée-mémorial du Linge'),
(499, 'guerre/musee_jean_denise_letaille-01.jpg', 'Photo Bullecourt 1917 - Musée Jean et Denise Letaille'),
(500, 'guerre/musee_jean_denise_letaille-02.jpg', 'Photo Bullecourt 1917 - Musée Jean et Denise Letaille'),
(501, 'guerre/musee_jean_denise_letaille-03.jpg', 'Photo Bullecourt 1917 - Musée Jean et Denise Letaille'),
(502, 'guerre/musee_francoamericain_chateau_de_blerancourt-01.jpg', 'Photo musée franco-américain du château de Blérancourt'),
(503, 'guerre/musee_francoamericain_chateau_de_blerancourt-02.jpg', 'Photo musée franco-américain du château de Blérancourt'),
(504, 'guerre/memorial_de_verdun-01.jpg', 'Photo mémorial de Verdun'),
(505, 'guerre/memorial_de_verdun-02.jpg', 'Photo mémorial de Verdun'),
(506, 'guerre/coupole_d_helfaut-01.jpg', 'Photo coupole d\'Helfaut'),
(507, 'guerre/coupole_d_helfaut-02.jpg', 'Photo coupole d\'Helfaut'),
(508, 'guerre/mm_park_france-01.jpg', 'Photo MM Park France'),
(509, 'guerre/mm_park_france-02.jpg', 'Photo MM Park France'),
(510, 'guerre/memorial_civils_dans_la_guerre-01.jpg', 'Photo mémorial des civils dans la guerre'),
(511, 'guerre/memorial_civils_dans_la_guerre-02.jpg', 'Photo mémorial des civils dans la guerre'),
(512, 'guerre/memorial_shoah-01.jpg', 'Photo mémorial de la Shoah'),
(513, 'guerre/memorial_shoah-02.jpg', 'Photo mémorial de la Shoah'),
(514, 'guerre/musee_5_juin_1944-01.jpg', 'Photo musée du 5 juin 1944'),
(515, 'guerre/musee_de_la_reddition-01.jpg', 'Photo musée de la reddition'),
(516, 'guerre/musee_de_la_reddition-02.jpg', 'Photo musée de la reddition'),
(517, 'guerre/centre_d_histoire_de_la_resistance_et_de_la_deportation-01.jpg', 'Photo centre d\'histoire de la résistance et de la déportation'),
(518, 'guerre/centre_d_histoire_de_la_resistance_et_de_la_deportation-02.jpg', 'Photo centre d\'histoire de la résistance et de la déportation'),
(519, 'guerre/memorial_de_caen-01.jpg', 'Photo mémorial de Caen'),
(520, 'guerre/memorial_de_caen-02.jpg', 'Photo mémorial de Caen'),
(521, 'guerre/musee_memorial_de_la_bataille_de_normandie-01.jpg', 'Photo musée mémorial de la bataille de Normandie'),
(522, 'guerre/musee_memorial_de_la_bataille_de_normandie-02.jpg', 'Photo musée mémorial de la bataille de Normandie'),
(523, 'guerre/musee_memorial_de_la_bataille_de_normandie-03.jpg', 'Photo musée mémorial de la bataille de Normandie'),
(524, 'guerre/utah_beach_musee_du_debarquement-01.jpg', 'Photo Utah Beach, musée du débarquement'),
(525, 'guerre/utah_beach_musee_du_debarquement-02.jpg', 'Photo Utah Beach, musée du débarquement'),
(526, 'guerre/musee_de_la_guerre_de_1870_et_de_l_annexion-01.jpg', 'Photo musée de la guerre de 1870 et de l\'Annexion'),
(527, 'guerre/musee_de_la_guerre_de_1870_et_de_l_annexion-02.jpg', 'Photo musée de la guerre de 1870 et de l\'Annexion'),
(528, 'guerre/musee_de_la_guerre_de_1870_et_de_l_annexion-03.jpg', 'Photo musée de la guerre de 1870 et de l\'Annexion'),
(529, 'musee/musee_du_louvre-01.jpg', 'Photo musée du Louvre'),
(530, 'musee/musee_du_louvre-02.jpg', 'Photo musée du Louvre'),
(531, 'musee/musee_du_louvre-03.jpg', 'Photo musée du Louvre'),
(532, 'musee/louvre_lens-01.jpg', 'Photo Louvre-Lens'),
(533, 'musee/louvre_lens-02.jpg', 'Photo Louvre-Lens'),
(534, 'musee/louvre_lens-03.jpg', 'Photo Louvre-Lens'),
(535, 'musee/musee_d_orsay-01.jpg', 'Photo musée d\'Orsay'),
(536, 'musee/musee_d_orsay-02.jpg', 'Photo musée d\'Orsay'),
(537, 'musee/musee_national_fernand_leger-01.jpg', 'Photo musée national Fernand-Léger'),
(538, 'musee/musee_national_fernand_leger-02.jpg', 'Photo musée national Fernand-Léger'),
(539, 'musee/musee_national_fernand_leger-03.jpg', 'Photo musée national Fernand-Léger'),
(540, 'musee/musee_picasso-01.jpg', 'Photo musée Picasso'),
(541, 'musee/musee_picasso-02.jpg', 'Photo musée Picasso'),
(542, 'musee/musee_de_picardie-01.jpg', 'Photo musée de Picardie'),
(543, 'musee/musee_de_picardie-02.jpg', 'Photo musée de Picardie'),
(544, 'musee/musee_de_picardie-03.jpg', 'Photo musée de Picardie'),
(545, 'musee/musee_rimbaud-01.jpg', 'Photo musée Rimbaud'),
(546, 'musee/musee_rimbaud-02.jpg', 'Photo musée Rimbaud'),
(547, 'musee/musee_de_l_armee-01.jpg', 'Photo musée de l\'Armée'),
(548, 'musee/musee_de_l_armee-02.jpg', 'Photo musée de l\'Armée'),
(549, 'musee/musee_de_la_tapisserie_de_bayeux-01.jpg', 'Photo musée de la tapisserie de Bayeux'),
(550, 'musee/musee_de_la_tapisserie_de_bayeux-02.jpg', 'Photo musée de la tapisserie de Bayeux'),
(551, 'musee/musee_miniature_et_cinema-01.jpg', 'Photo musée Miniature et Cinéma'),
(552, 'musee/musee_miniature_et_cinema-02.jpg', 'Photo musée Miniature et Cinéma'),
(553, 'musee/musee_miniature_et_cinema-03.jpg', 'Photo musée Miniature et Cinéma'),
(554, 'musee/musee_miniature_et_cinema-04.jpg', 'Photo musée Miniature et Cinéma'),
(555, 'musee/musee_des_beaux_arts_de_lyon-01.jpg', 'Photo musée des Beaux-Arts de Lyon'),
(556, 'musee/musee_des_beaux_arts_de_lyon-02.jpg', 'Photo musée des Beaux-Arts de Lyon'),
(557, 'musee/musee_des_beaux_arts_de_lyon-03.jpg', 'Photo musée des Beaux-Arts de Lyon'),
(558, 'musee/musee_du_quai_branly-01.jpg', 'Photo musée du quai Branly'),
(559, 'musee/musee_du_quai_branly-02.jpg', 'Photo musée du quai Branly'),
(560, 'musee/musee_du_quai_branly-03.jpg', 'Photo musée du quai Branly'),
(561, 'musee/petit_palais-01.jpg', 'Photo petit palais'),
(562, 'musee/petit_palais-02.jpg', 'Photo petit palais'),
(563, 'musee/musee_de_l_orangerie-01.jpg', 'Photo musée de l’Orangerie'),
(564, 'musee/musee_de_l_orangerie-02.jpg', 'Photo musée de l’Orangerie'),
(565, 'musee/musee_de_l_orangerie-03.jpg', 'Photo musée de l’Orangerie'),
(566, 'musee/musee_de_l_orangerie-04.jpg', 'Photo musée de l’Orangerie'),
(567, 'musee/musee_carnavalet-01.jpg', 'Photo musée Carnavalet'),
(568, 'musee/musee_carnavalet-02.jpg', 'Photo musée Carnavalet'),
(569, 'musee/musee_carnavalet-03.jpg', 'Photo musée Carnavalet'),
(570, 'musee/musee_marmottan_monet-01.jpg', 'Photo musée Marmottan Monet'),
(571, 'musee/musee_marmottan_monet-02.jpg', 'Photo musée Marmottan Monet'),
(572, 'musee/musee_marmottan_monet-03.jpg', 'Photo musée Marmottan Monet'),
(573, 'musee/mucem-01.jpg', 'Photo muCEM – Musée des civilisations de l’Europe et de la Méditerranée'),
(574, 'musee/mucem-02.jpg', 'Photo muCEM – Musée des civilisations de l’Europe et de la Méditerranée'),
(575, 'musee/mucem-03.jpg', 'Photo muCEM – Musée des civilisations de l’Europe et de la Méditerranée'),
(576, 'musee/mucem-04.jpg', 'Photo muCEM – Musée des civilisations de l’Europe et de la Méditerranée'),
(577, 'musee/musee_rodin_01.jpg', 'Photo musée Rodin'),
(578, 'musee/musee_rodin_02.jpg', 'Photo musée Rodin'),
(579, 'musee/musee_national_d_histoire_naturelle-01.jpg', 'Photo muséum national d’histoire naturelle'),
(580, 'musee/musee_national_d_histoire_naturelle-02.jpg', 'Photo muséum national d’histoire naturelle'),
(581, 'musee/musee_national_d_histoire_naturelle-03.jpg', 'Photo muséum national d’histoire naturelle'),
(582, 'musee/palais_des_beaux_arts_de_lille-01.jpg', 'Photo palais des Beaux-Arts de Lille'),
(583, 'musee/palais_des_beaux_arts_de_lille-02.jpg', 'Photo palais des Beaux-Arts de Lille'),
(584, 'musee/musee_d_art_moderne_de_la_ville_de_paris-01.jpg', 'Photo musée d’art moderne de la ville de Paris'),
(585, 'musee/musee_d_art_moderne_de_la_ville_de_paris-02.jpg', 'Photo musée d’art moderne de la ville de Paris'),
(586, 'musee/musee_jacquemart_andre-01.jpg', 'Photo musée Jacquemart-André'),
(587, 'musee/musee_jacquemart_andre-02.jpg', 'Photo musée Jacquemart-André'),
(588, 'musee/musee_jacquemart_andre-03.jpg', 'Photo musée Jacquemart-André'),
(589, 'musee/musee_d_art_et_d_histoire_de_narbonne-01.jpg', 'Photo musée d\'art et d\'histoire de Narbonne, palais des Archevêques'),
(590, 'musee/musee_d_art_et_d_histoire_de_narbonne-02.jpg', 'Photo musée d\'art et d\'histoire de Narbonne, palais des Archevêques'),
(591, 'musee/musee_de_l_arles_antique-01.jpg', 'Photo musée de l\'Arles antique'),
(592, 'musee/musee_des_beaux_arts_de_rouen-01.jpg', 'Photo musée des Beaux-Arts de Rouen'),
(593, 'musee/musee_des_beaux_arts_de_rouen-02.jpg', 'Photo musée des Beaux-Arts de Rouen'),
(594, 'musee/musee_fabre-01.jpg', 'Photo musée Fabre'),
(595, 'musee/musee_fabre-02.jpg', 'Photo musée Fabre');

-- --------------------------------------------------------

--
-- Structure de la table `parcours`
--

CREATE TABLE `parcours` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guide_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `prix` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `parcours_visits`
--

CREATE TABLE `parcours_visits` (
  `parcours_id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `note` smallint(6) NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `review`
--

INSERT INTO `review` (`id`, `note`, `text`, `date`, `user_id`, `title`) VALUES
(1, 5, 'C\'était super sympa !', '2018-01-23 16:07:49', 1, 'Superbe zoo'),
(2, 2, 'En famille ça doit être cool mais quand on est tout seul c\'est l\'ennuie !', '2018-01-23 16:07:49', 2, 'Boff');

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

CREATE TABLE `theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `theme`
--

INSERT INTO `theme` (`id`, `name`, `image_id`) VALUES
(1, 'Parc animalier', 1),
(2, 'Histoire', 2),
(3, 'Château', 3),
(4, 'Guerre', 4),
(5, 'Lieu de culte', 5),
(6, 'Musée', 6),
(7, 'Lac', 7),
(8, 'Forêt', 8),
(10, 'Parc', 10);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `registration_date` datetime NOT NULL,
  `connexion_date` datetime NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sexe` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `image_id`, `first_name`, `last_name`, `registration_date`, `connexion_date`, `username`, `password`, `mail`, `sexe`) VALUES
(1, 1, 'Mickaël', 'Matuchak', '2018-01-16 14:06:18', '2018-01-16 14:06:18', 'Bidou', '$2a$08$jHZj/wJfcVKlIwr5AvR78euJxYK7Ku5kURNhNx.7.CSIJ3Pq6LEPC', 'mickael.matuchak@gmail.com', 'male'),
(2, NULL, 'Benjamin', 'Bermont', '2018-01-16 15:06:42', '2018-01-16 15:06:42', 'Benji', '$2y$10$OF2isnx5y8kmPFbV47hsxOFYlrIeUUobvc8WbqHlvT1oN63EGWp9i', 'benjamin.bermont@gmail.com', 'male'),
(3, NULL, 'Loic', 'Fabre', '2018-01-16 20:14:25', '2018-01-16 20:14:25', 'Loic', '$2y$10$ar1kFiiweSeTSLFtE.9.oeMPnXVdV4PufGfWyfrELLxWTuSMAxbd.', 'loic.fabre.fr@gmail.com', 'male');

-- --------------------------------------------------------

--
-- Structure de la table `visit`
--

CREATE TABLE `visit` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `region` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` int(5) UNSIGNED ZEROFILL DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` int(11) DEFAULT NULL,
  `nb_notes` int(11) NOT NULL,
  `site` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `visit`
--

INSERT INTO `visit` (`id`, `name`, `latitude`, `longitude`, `address`, `country`, `region`, `city`, `postal_code`, `description`, `note`, `nb_notes`, `site`) VALUES
(1, 'Parc Animalier d\'Auvergne', 45.3936622, 3.1135351, 'Route d\'Anzat-le-Luguet', 'France', 'Auvergne-Rhône-Alpes', 'Ardes-sur-Couze', 63420, '', 0, 0, 'http://www.parcanimalierdauvergne.fr/'),
(2, 'Le PAL', 46.5090297, 3.6231993, 'Saint-Pourçain-sur-Besbre', 'France', 'Auvergne-Rhône-Alpes', 'Dompierre-sur-Besbre', 03290, '', 0, 0, 'http://www.lepal.com'),
(3, 'Le Domaine des Fauves', 45.5489546, 5.5735472, 'RD 1075', 'France', 'Auvergne-Rhône-Alpes', 'Les Abrets en Dauphiné', 38490, '', 0, 0, 'http://domainedesfauves.com/'),
(4, 'Jardin Zoologique de la Ville de Lyon', 45.7784452, 4.8545258, 'Parc de la Tête d\'Or, Allée de l\'Orangerie', 'France', 'Auvergne-Rhône-Alpes', 'Lyon', 69006, '', 0, 0, 'http://www.zoo.lyon.fr/zoo/'),
(5, 'Espace Zoologique de St-Martin la plaine', 45.5495597, 4.5821553, 'Combe Plotton', 'France', 'Auvergne-Rhône-Alpes', 'Saint-Martin-la-Plaine', 42800, '', 0, 0, 'http://www.espace-zoologique.com/'),
(6, 'La Citadelle de Besançon', 47.2290894, 6.0319254, '99 Rue des Fusillés de la Résistance', 'France', 'Bourgogne-Franche-Comté', 'Besançon', 25000, '', 0, 0, 'http://www.citadelle.com/fr/'),
(7, 'Touroparc', 46.1818302, 4.7503286, '400 Boulevard du Parc', 'France', 'Bourgogne-Franche-Comté', 'Romanèche-Thorins', 71570, '', 0, 0, 'https://www.touroparc.com/'),
(8, 'Parc Animalier et Botanique de Branféré', 47.5932621, -2.4033139, 'Parc animalier et botanique & Parcabout de Branféré', 'France', 'Bretagne', 'Le Guerno', 56190, '', 0, 0, 'http://www.branfere.com/visite-parc-animalier-botanique-2-146.html'),
(9, 'Domaine de la Bourbansais', 48.403284, -1.9007581, 'La Bourbansais', 'France', 'Bretagne', 'Pleugueneuc', 35720, '', 0, 0, 'https://www.labourbansais.com/'),
(10, 'Zoo de Pont-Scorff', 47.8120406, -3.4090267, 'Keruisseau', 'France', 'Bretagne', 'Pont-Scorff', 56620, '', 3, 1, 'https://www.zoo-pont-scorff.com/'),
(11, 'Zooparc de Trégomeur', 48.582683, -2.8883529, '1 Moulin de Richard', 'France', 'Bretagne', 'Trégomeur', 22590, '', 0, 0, 'https://www.zoo-tregomeur.com/'),
(12, 'Réserve de la Haute-Touche', 46.8850436, 1.0739993, 'Route Départementale 975', 'France', 'Centre-Val de Loire', 'Obterre', 36290, '', 0, 0, 'http://www.zoodelahautetouche.fr/'),
(13, 'ZooParc de Beauval', 47.2464181, 1.3392812, 'Route du Blanc', 'France', 'Centre-Val de Loire', 'Saint-Aignan', 41110, '', 0, 0, 'https://www.zoobeauval.com/'),
(14, 'Zoo d\'Amnéville', 49.2464352, 6.1361476, '1 Rue du Tigre', 'France', 'Grand Est', 'Amnéville', 57360, '', 0, 0, 'http://www.zoo-amneville.com/'),
(15, 'Parc Zoologique et Botanique de Mulhouse', 47.7316747, 7.3453689, '111 Avenue de la 1ère Division Blindée', 'France', 'Grand Est', 'Mulhouse', 68100, '', 0, 0, 'http://www.zoo-mulhouse.com/'),
(16, 'Zoo de l\'Orangerie', 48.5909316, 7.7717509, 'Parc de l\'orangerie, Boulevard de l\'Orangerie', 'France', 'Grand Est', 'Strasbourg', 67000, '', 0, 0, 'http://zoorangerie.free.fr/zoo/'),
(17, 'Zoo d\'Amiens', 49.8997244, 2.275747, 'Rue de la Hotoie', 'France', 'Hauts-de-France', 'Amiens', 80000, '', 0, 0, 'http://www.amiens.fr/vie-pratique/culture/zoo-amiens/zoo-amiens.html'),
(18, 'Parc Zoologique Fort Mardyck Dunkerque Grand Littoral', 51.0304175, 2.3073733, 'Rue des Droits de l\'Homme', 'France', 'Hauts-de-France', 'Fort Mardyck', 59430, '', 0, 0, 'https://www.parc-zoologique.fr/'),
(19, 'Parc Zoologique de Lille', 50.6382914, 3.0433673, ' Avenue Mathias Delobel', 'France', 'Hauts-de-France', 'Lille', 59000, '', 0, 0, 'https://www.lille.fr/Nos-equipements/Le-Zoo-de-Lille'),
(20, 'Zoo de Maubeuge', 50.2789288, 3.9655631, ' Avenue du Parc', 'France', 'Hauts-de-France', 'Maubeuge', 59600, '', 0, 0, 'http://www.zoodemaubeuge.fr/'),
(21, 'Parc Zoologique du Bois d\'Attilly', 48.7459617, 2.6640575, 'Route de Chevry', 'France', 'Île-de-France', 'Ozoir la Ferrière', 77150, '', 0, 0, 'http://www.zoo-attilly.fr/'),
(22, 'Ménagerie du Jardin des Plantes', 48.8453382, 2.3554294, '57 Rue Cuvier', 'France', 'Île-de-France', 'Paris', 75005, '', 0, 0, 'http://www.zoodujardindesplantes.fr/'),
(23, 'Parc Zoologique de Paris', 48.8393613, 2.3698657, 'Avenue Daumesnil', 'France', 'Île-de-France', 'Paris', 75012, '', 0, 0, 'https://www.parczoologiquedeparis.fr/'),
(24, 'CERZA', 49.1825427, 0.3095215, '143 D143', 'France', 'Normandie', 'Hermival les Vaux', 14100, '', 0, 0, 'https://www.cerza.com/'),
(25, 'Zoo de Jurques', 49.0029935, -0.7552487, 'La Butte', 'France', 'Normandie', 'Jurques', 14260, '', 0, 0, 'http://www.zoodejurques.fr/fr/'),
(26, 'Parc Zoologique de Champrépus', 48.8336746, -1.3260717, '493 rue Saint Gaud', 'France', 'Normandie', 'Villedieu-les-Poêles', 50800, '', 0, 0, 'http://www.zoo-champrepus.com/'),
(27, 'Zoo d\'Asson', 43.1287694, -0.2706655, '6 Chemin de Brouquet', 'France', 'Nouvelle-Aquitaine', 'Asson', 64800, '', 0, 0, 'http://www.zoo-asson.org/'),
(28, 'Zoo du Bassin d\'Arcachon', 44.5859268, -1.1387667, 'Route de Cazaux', 'France', 'Nouvelle-Aquitaine', 'La Teste de Buch', 33260, '', 0, 0, 'http://www.zoodubassindarcachon.com/'),
(29, 'Parc du Reynou', 45.7591807, 1.2975453, 'Domaine du Reynou', 'France', 'Nouvelle-Aquitaine', 'Le Vigen', 87110, '', 0, 0, 'http://www.parczooreynou.com/'),
(30, 'Zoo de la Palmyre', 45.6884069, -1.1706352, '6 Avenue de Royan', 'France', 'Nouvelle-Aquitaine', 'Les Mathes', 17570, '', 0, 0, 'http://www.zoo-palmyre.fr/fr'),
(31, 'Zoo de Bordeaux-Pessac', 44.803171, -0.6978249, '3 Chemin du Transvaal', 'France', 'Nouvelle-Aquitaine', 'Pessac', 33600, '', 0, 0, 'http://www.zoo-bordeaux-pessac.com/'),
(32, 'La Vallée des Singes', 46.2425627, 0.2875673, 'Le Gureau', 'France', 'Nouvelle-Aquitaine', 'Romagne', 86700, '', 0, 0, 'http://www.la-vallee-des-singes.fr/'),
(33, 'Parc Animalier de Casteil', 42.5294456, 2.3895157, 'Rue du Cady', 'France', 'Occitanie', 'Casteil', 66820, '', 0, 0, 'http://www.parcanimaliercasteil.com/'),
(34, 'Parc Zoologique de Montpellier', 43.6394397, 3.8717795, '50 Avenue Agropolis', 'France', 'Occitanie', 'Montpellier', 34090, '', 0, 0, 'http://zoo.montpellier.fr/'),
(35, 'African Safari', 43.5605887, 1.2640849, '41 Rue des Landes', 'France', 'Occitanie', 'Plaisance-du-Touch', 31830, '', 0, 0, 'http://www.zoo-africansafari.com/'),
(36, 'Bioparc de Doué la Fontaine', 47.1905466, -0.3016647, '103 Rue de Cholet', 'France', 'Pays de la Loire', 'Doué-la-Fontaine', 49700, '', 0, 0, 'http://www.bioparc-zoo.fr/fr/'),
(37, 'Zoo de La Boissière du Doré', 47.2435206, -1.2004877, 'Lieu-dit La Châtaigneraie', 'France', 'Pays de la Loire', 'La Boissière du Doré', 44430, '', 0, 0, 'http://www.zoo-boissiere.com/'),
(38, 'Zoo de La Flèche', 47.6773104, -0.051769, 'Le Tertre Rouge', 'France', 'Pays de la Loire', 'La Flèche', 72200, '', 0, 0, 'http://www.zoo-la-fleche.com/'),
(39, 'Domaine Zoologique de Pescheray', 47.9923271, 0.5002857, 'Domaine de Pescheray', 'France', 'Pays de la Loire', 'Le Breil-sur-Mérize', 72370, '', 0, 0, 'http://www.pescheray.com/'),
(40, 'Zoo des Sables', 46.4841467, -1.7580157, 'Route du Tour de France', 'France', 'Pays de la Loire', 'Les Sables-d\'Olonne', 85100, '', 0, 0, 'http://www.zoodessables.fr/'),
(41, 'Natur\'Zoo de Mervent', 46.5109277, -0.7469487, 'Le Gros Roc', 'France', 'Pays de la Loire', 'Mervent', 85200, '', 0, 0, 'http://naturzoomervent.com/'),
(42, 'Spaycific\'Zoo', 47.9219242, 0.1376925, 'La Martinière', 'France', 'Pays de la Loire', 'Spay', 72700, '', 0, 0, 'http://www.spaycificzoo.com/'),
(43, 'Parc Zoologique de Fréjus', 43.4755695, 6.7344181, 'Le Capitou, 240 Rue Hubert Masquefa', 'France', 'Provence-Alpes-Côte d\'Azur', 'Fréjus', 83600, '', 0, 0, 'http://zoo-frejus.com/'),
(44, 'Zoo de La Barben', 43.6239579, 5.2068633, 'Route du Château', 'France', 'Provence-Alpes-Côte d\'Azur', 'La Barben', 13330, '', 0, 0, 'http://www.zoolabarben.com/'),
(45, 'Jardin Exotique de Sanary', 43.1471224, 5.7721847, '131 Avenue du Pont d\'Aran', 'France', 'Provence-Alpes-Côte d\'Azur', 'Sanary-sur-Mer', 83110, '', 0, 0, 'http://www.zoaparc.com/'),
(46, 'Zoo du Faron', 43.1524874, 5.9375544, 'Route du Faron', 'France', 'Provence-Alpes-Côte d\'Azur', 'Toulon', 83200, '', 0, 0, 'http://zoo-toulon.fr/'),
(47, 'Château de Versailles', 48.8030784, 2.1251975, 'Place d\'Armes', 'Versailles', 'Île-de-France', 'France', 78000, '', 0, 0, 'http://www.chateauversailles.fr/'),
(48, 'Château de Chambord', 47.616126, 1.5150293, 'Château', 'France', 'Centre-Val de Loire', 'Chambord', 41250, '', 0, 0, 'https://www.chambord.org/fr/'),
(49, 'Château de Chenonceau', 47.3436242, 1.0350577, '', 'France', 'Centre-Val de Loire', 'Chenonceaux', 37150, '', 0, 0, 'https://www.chenonceau.com/'),
(50, 'Château de Villandry', 47.3398534, 0.5121265, '3 Rue Principale', 'France', 'Centre-Val de Loire', 'Villandry', 37510, '', 0, 0, 'http://www.chateauvillandry.fr/'),
(51, 'Château de Castelnaud', 44.8020582, 1.0941956, '', 'France', 'Nouvelle-Aquitaine', 'Castelnaud-la-Chapelle', 24250, '', 0, 0, 'http://castelnaud.com/'),
(52, 'Château de Chevergny', 47.5002097, 1.4558162, '', 'France', 'Centre-Val de Loire', 'Cheverny', 41700, '', 0, 0, 'http://www.chateau-cheverny.fr/'),
(53, 'Château de Vaux-le-Vicomte', 48.565812, 2.7119463, '', 'France', 'Île-de-France', 'Maincy', 77950, '', 0, 0, 'http://www.vaux-le-vicomte.com/'),
(54, 'Château de Fontainebleau', 48.4020962, 2.6973071, '', 'France', 'Île-de-France', 'Fontainebleau', 77300, '', 0, 0, 'http://www.musee-chateau-fontainebleau.fr/'),
(55, 'Château de Haut-Koenigsbourg', 48.2494853, 7.3422944, '', 'France', 'Grand Est', 'Orschwiller', 67600, '', 0, 0, 'http://www.haut-koenigsbourg.fr/fr/'),
(56, 'Château de Peyrepertuse', 42.8708297, 2.5532295, '', 'France', 'Occitanie', 'Duilhac-sous-Peyrepertuse', 11350, '', 0, 0, 'https://www.peyrepertuse.com/'),
(57, 'Château d\'Ussé', 47.2500053, 0.2891332, '', 'France', 'Centre-Val de Loire', 'Rigny-Ussé', 37420, '', 0, 0, 'https://www.chateaudusse.fr/'),
(58, 'Château d\'Amboise', 47.4133609, 0.9848303, 'Montée de l\'Emir Abd el Kader', 'France', 'Centre-Val de Loire', 'Amboise', 37400, '', 0, 0, 'http://www.chateau-amboise.com/'),
(59, 'Château des Ducs de Bretagne', 47.2162749, -1.5509595, '4 Place Marc Elder', 'France', 'Loire-Atlantique', 'Nantes', 44000, '', 0, 0, 'http://www.chateaunantes.fr/fr'),
(60, 'Château de Valençay', 47.156846, 1.556963, '2 Rue de Blois', 'France', 'Centre-Val de Loire', 'Valençay', 36600, '', 0, 0, 'http://www.chateau-valencay.fr/'),
(61, 'Château de Chantilly', 49.1938467, 2.4830147, '', 'France', 'Hauts-de-France', 'Chantilly', 60500, '', 0, 0, 'http://www.domainedechantilly.com/fr/'),
(62, 'Le logis royal de Loches', 47.1248641, 0.9946121, '7 Mail du Donjon', 'France', 'Centre-Val de Loire', 'Loches', 37600, '', 0, 0, 'http://www.chateau-loches.fr/le-logis-royal'),
(63, 'Château de Blois', 47.5853918, 1.3283942, '6 Place du Château', 'France', 'Centre-Val de Loire', 'Blois', 41000, '', 0, 0, 'http://www.chateaudeblois.fr/'),
(64, 'Château de Saumur', 47.2570175, -0.0745928, 'adresse', 'France', 'Pays de la Loire', 'Saumur', 49400, '', 0, 0, 'http://www.chateau-saumur.fr/'),
(65, 'Château de Bonaguil', 44.5382385, 1.0120861, 'Bonaguil', 'France', 'Nouvelle-Aquitaine', 'Fumel', 47500, '', 0, 0, 'http://www.chateau-bonaguil.com/'),
(66, 'Château de Langeais', 47.3247194, 0.4039933, 'Place Pierre de Brosse', 'France', 'Centre-Val de Loire', 'Langeais', 37130, '', 0, 0, 'http://chateau-de-langeais.com/'),
(67, 'Château de Compiègne', 49.4192921, 2.8289911, 'Place du Général de Gaulle', 'France', 'Hauts-de-France', 'Compiègne', 60200, '', 0, 0, 'http://palaisdecompiegne.fr/'),
(68, 'Château de Pierrefonds', 49.346975, 2.9779944, 'Rue Viollet le Duc', 'France', 'Hauts-de-France', 'Pierrefonds', 60350, '', 0, 0, 'http://www.chateau-pierrefonds.fr/'),
(69, 'Château de Condé', 49.0047839, 3.5568049, '4 Rue du Château', 'France', 'Hauts-de-France', 'Condé-en-Brie', 02330, '', 0, 0, 'https://www.chateaudeconde.fr/'),
(70, 'Château de Comtal', 43.2070519, 2.36092, '', 'France', 'Occitanie', 'Carcassonne', 11000, '', 0, 0, 'http://courances.net/'),
(71, 'Château de Courances', 48.441593, 2.4677613, 'Domaine de Courances, 15 Rue du Château', 'France', 'Île-de-France', 'Courances', 91490, '', 0, 0, 'http://courances.net/'),
(72, 'Château de Malmaison', 48.8708001, 2.1646593, 'Avenue du Château de la Malmaison', 'France', 'Île-de-France', 'Rueil-Malmaison', 92500, '', 0, 0, 'http://musee-archeologienationale.fr/evenement/historique-du-chateau-0'),
(73, 'Château de Saint-Germain-en-Laye', 48.8978725, 2.0939347, 'Place Charles de Gaulle', 'France', 'Île-de-France', 'Saint-Germain-en-Laye', 78100, '', 0, 0, 'http://musee-archeologienationale.fr/'),
(74, 'Château d\'Ecouen', 49.017291, 2.3763653, 'Rue Jean Bullant', 'France', 'Île-de-France', 'Écouen', 95440, '', 0, 0, 'http://musee-renaissance.fr/'),
(75, 'Château de Rambouillet', 48.6439216, 1.8067985, '', 'France', 'Île-de-France', 'Rambouillet', 78120, '', 0, 0, 'http://www.chateau-rambouillet.fr/'),
(76, 'Château de Breteuil', 48.6801277, 2.0206234, '', 'France', 'Île-de-France', 'Choisel', 78460, '', 0, 0, 'http://www.breteuil.fr/'),
(77, 'Château de Champs-sur-Marne', 48.8536107, 2.6019006, '31 Rue de Paris', 'France', 'Île-de-France', 'Champs-sur-Marne', 77420, '', 0, 0, 'http://www.chateau-champs-sur-marne.fr'),
(78, 'Château de Maisons-Laffitte', 48.9471619, 2.1516735, '2 Avenue Carnot', 'France', 'Île-de-France', 'Maisons-Laffitte', 78600, '', 0, 0, 'http://www.chateau-maisons.fr/'),
(79, 'Château de Monte-Cristo', 48.8859605, 2.1010685, 'Chemin du Haut des Ormes', 'France', 'Île-de-France', 'Le Port-Marly', 78560, '', 0, 0, 'https://www.chateau-monte-cristo.com/'),
(80, 'Musée Guerre et Paix en Ardennes', 49.6002791, 4.4136232, 'Impasse du Musée', 'France', 'Grand Est', 'Novion-Porcien', 08270, '', 0, 0, 'https://www.guerreetpaix.fr/ '),
(81, 'Centre Historique médiéval d\'Azincourt', 50.4633454, 2.1259483, '24 Rue Charles VI', 'France', 'Hauts-de-France', 'Azincourt', 62310, '', 0, 0, ' '),
(82, 'Musée de la Grande Guerre du pays de Meaux', 48.9721375, 2.9020153, 'Rue Lazare Ponticelli', 'France', '', 'Meaux', 77100, '', 0, 0, 'http://www.museedelagrandeguerre.eu/ '),
(83, 'Historial de la Grande Guerre', 49.9291251, 2.9284629, 'Place André Audinot', 'France', 'Hauts-de-France', 'Péronne', 80200, '', 0, 0, 'http://www.historial.fr/ '),
(84, 'Musée Somme 1916', 50.0038914, 2.6462223, 'Rue Anicet Godin', 'France', 'Hauts-de-France', 'Albert', 80300, '', 0, 0, 'http://www.musee-somme-1916.eu/ '),
(85, 'Lens’ 14-18, Centre d’Histoire Guerre et Paix', 50.4010444, 2.7373213, '102 Rue Pasteur', 'France', 'Hauts-de-France', 'Souchez', 62153, '', 0, 0, 'https://www.lens14-18.com/ '),
(86, 'Caverne du Dragon', 49.441458, 3.7302446, 'Chemin des Dames', 'France', 'Hauts-de-France', 'Oulches-la-Vallée-Foulon', 02160, '', 0, 0, 'https://www.chemindesdames.fr/fr '),
(87, 'Musée-Mémorial du Linge', 48.0835296, 7.1381393, 'Collet du Linge', 'France', 'Grand Est', 'Orbey', 68370, '', 0, 0, 'http://www.linge1915.com/fr/accueil/ '),
(88, 'Bullecourt 1917 - Musée Jean et Denise Letaille', 50.1916855, 2.925421, 'Rue d\'Arras', 'France', 'Hauts-de-France', 'Bullecourt', 62128, '', 0, 0, 'http://www.cheminsdememoire.gouv.fr/fr/musee-jean-denise-letaille-bullecourt-1917 '),
(89, 'Musée franco-américain du Château de Blérancourt', 49.5177317, 3.1515956, '33 Place du Général Leclerc', 'France', 'Hauts-de-France', 'Blérancourt', 02300, '', 0, 0, 'http://museefrancoamericain.fr/ '),
(90, 'Mémorial de Verdun', 49.1949054, 5.4315486, '1 Avenue du Corps Européen', 'France', 'Grand Est', 'Fleury-devant-Douaumont', 55100, '', 0, 0, 'http://memorial-verdun.fr/ '),
(91, 'Coupole d\'Helfaut', 50.7058521, 2.2393441, 'Rue André Clabaux', 'France', 'Hauts-de-France', 'Wizernes', 62570, '', 0, 0, 'https://www.lacoupole-france.com/ '),
(92, 'MM Park France', 48.6656126, 7.8066476, '4 Rue Gutenberg', 'France', 'Grand Est', 'La Wantzenau', 67610, '', 0, 0, 'http://www.mmpark.fr/ '),
(93, 'Mémorial des Civils dans la Guerre', 48.8941418, -0.2044969, '12 Place Guillaume le Conquérant', 'France', 'Normandie', 'Falaise', 14700, '', 0, 0, 'http://www.memorial-falaise.fr/ '),
(94, 'Mémorial de la Shoah', 48.854918, 2.35387, '17 Rue Geoffroy l\'Asnier', 'France', 'Île-de-France', 'Paris', 75004, '', 0, 0, 'http://www.memorialdelashoah.org/ '),
(95, 'Musée du 5 juin 1944', 50.7118931, 3.1529636, '4 Avenue de la Marne', 'France', 'Hauts-de-France', 'Tourcoing', 59200, '', 0, 0, 'http://www.museedu5juin1944.asso.fr/ '),
(96, 'Musée de la Reddition', 49.2621655, 4.0239572, '12 Rue du Président Franklin Roosevelt', 'France', 'Grand Est', 'Reims', 51100, '', 0, 0, 'http://musees-reims.fr/fr/musees/musee-de-la-reddition/ '),
(97, 'Centre d\'histoire de la résistance et de la déportation', 45.7470768, 4.8333549, '14 Avenue Berthelot', 'France', 'Auvergne-Rhône-Alpes', 'Lyon', 69007, '', 0, 0, 'http://www.chrd.lyon.fr/chrd/ '),
(98, 'Mémorial de Caen', 49.1973466, -0.3861682, 'Esplanade Général Eisenhower', 'France', 'Normandie', 'Caen', 14050, '', 0, 0, ' http://www.memorial-caen.fr/ '),
(99, 'Musée mémorial de la Bataille de Normandie', 49.2734282, -0.7135953, 'Boulevard Fabian Ware', 'France', 'Normandie', 'Bayeux', 14400, '', 0, 0, ' '),
(100, 'Utah Beach, Musée du débarquement', 49.4153001, -1.1770788, 'Plage de la Madeleine', 'France', 'Normandie', 'Sainte-Marie-du-Mont', 50480, '', 0, 0, 'http://www.utah-beach.com/ '),
(101, 'Musée de la Guerre de 1870 et de l\'Annexion', 49.1139559, 6.0276881, '11 Rue de Metz', 'France', 'Grand Est', 'Gravelotte', 57130, '', 0, 0, 'http://www.mosellepassion.fr/index.php/les-sites-moselle-passion/musee-de-la-guerre-de-1870'),
(102, 'Musée du Louvre', 48.8606111, 2.3354553, 'Rue de Rivoli', 'France', 'Île-de-France', 'Paris', 75001, '', 0, 0, 'https://www.louvre.fr/ '),
(103, 'Louvre-Lens', 50.430714, 2.8020609, '99 Rue Paul Bert', 'France', 'Hauts-de-France', 'Lens', 62300, '', 0, 0, 'https://www.louvrelens.fr/ '),
(104, 'Musée d\'Orsay', 48.8599614, 2.3243727, '1 Rue de la Légion d\'Honneur', 'France', 'Île-de-France', 'Paris', 75007, '', 0, 0, 'http://www.musee-orsay.fr/ '),
(105, 'Musée national Fernand-Léger', 43.622494, 7.1102823, '255 Chemin du Val de Pôme', 'France', 'Provence-Alpes-Côte d\'Azur', 'Biot', 06410, '', 0, 0, 'http://musees-nationaux-alpesmaritimes.fr/fleger/ '),
(106, 'Musée Picasso', 43.6224726, 7.042431, '5 Rue de Thorigny', 'France', 'Île-de-France', 'Paris', 75003, '', 0, 0, 'http://www.museepicassoparis.fr/ '),
(107, 'Musée de Picardie', 49.890513, 2.2932943, '48 Rue de la République', 'France', 'Hauts-de-France', 'Amiens', 80000, '', 0, 0, 'http://www.amiens.fr/vie-pratique/culture/musees/musees-amiens/musee-picardie/musee-picardie.html '),
(108, 'Musée Rimbaud', 49.775653, 4.7195871, 'Quai Arthur Rimbaud', 'France', 'Grand Est', 'Charleville-Mézières', 08000, '', 0, 0, ' '),
(109, 'Musée de l\'Armée', 48.8557933, 2.3104047, '129 Rue de Grenelle', 'France', 'Île-de-France', 'Paris', 75007, '', 0, 0, 'http://www.musee-armee.fr/accueil.html '),
(110, 'Musée de la Tapisserie de Bayeux', 49.2747832, -0.7100741, '13 Bis Rue de Nesmond', 'France', 'Normandie', 'Bayeux', 14400, '', 0, 0, 'http://www.bayeuxmuseum.com/ '),
(111, 'Musée Miniature et Cinéma', 45.761876, 4.8251587, '60 Rue Saint-Jean', 'France', 'Auvergne-Rhône-Alpes ', 'Lyon', 69005, '', 0, 0, 'https://www.museeminiatureetcinema.fr/ '),
(112, 'Musée des Beaux-Arts de Lyon', 45.7671087, 4.8314287, '20 Place des Terreaux', 'France', 'Auvergne-Rhône-Alpes ', 'Lyon', 69001, '', 0, 0, 'http://www.mba-lyon.fr/mba/ '),
(113, 'Musée du quai Branly', 48.8608889, 2.2957053, '37 Quai Branly', 'France', 'Île-de-France', 'Paris', 75007, '', 0, 0, 'http://www.quaibranly.fr/fr/ '),
(114, 'Petit Palais', 48.8660479, 2.3124009, 'Avenue Winston Churchill', 'France', 'Île-de-France', 'Paris', 75008, '', 0, 0, 'http://www.petitpalais.paris.fr/ '),
(115, 'Musée de l’Orangerie', 48.8637884, 2.3204837, 'Jardin Tuileries', 'France', 'Île-de-France', 'Paris', 75001, '', 0, 0, 'http://www.musee-orangerie.fr/ '),
(116, 'Musée Carnavalet', 48.8573137, 2.3603543, '16 Rue des Francs Bourgeois', 'France', 'Île-de-France', 'Paris', 75003, '', 0, 0, 'http://www.carnavalet.paris.fr/ '),
(117, 'Musée Marmottan Monet', 48.8592657, 2.2650424, '2 Rue Louis Boilly', 'France', 'Île-de-France', 'Paris', 75016, '', 0, 0, 'http://www.marmottan.fr/ '),
(118, 'MuCEM – Musée des civilisations de l’Europe et de la Méditerranée', 43.296776, 5.3589083, '7 Prom. Robert Laffont', 'France', 'Provence-Alpes-Côte d\'Azur', 'Marseille', 13002, '', 0, 0, 'http://www.mucem.org/ '),
(119, 'Le musée Rodin', 48.8553072, 2.3136467, '77 Rue de Varenne', 'France', 'Île-de-France', 'Paris', 75007, '', 0, 0, 'http://www.musee-rodin.fr/ '),
(120, 'Muséum national d’histoire naturelle', 48.8443425, 2.3540214, '57 Rue Cuvier', 'France', 'Île-de-France', 'Paris', 75005, '', 0, 0, 'http://www.mnhn.fr/ '),
(121, 'Palais des Beaux-Arts de Lille', 50.6306335, 3.0602798, '18 Bis Rue de Valmy', 'France', 'Hauts-de-France', 'Lille', 59000, '', 0, 0, 'http://www.pba-lille.fr/ '),
(122, 'Musée d’Art Moderne de la Ville de Paris', 48.8643421, 2.2956321, '11 Avenue du Président Wilson', 'France', 'Île-de-France', 'Paris', 75116, '', 0, 0, 'http://www.mam.paris.fr/ '),
(123, 'Musée Jacquemart-André', 48.8754479, 2.3083428, '158 Boulevard Haussmann', 'France', 'Île-de-France', 'Paris', 75008, '', 0, 0, 'http://www.musee-jacquemart-andre.com/ '),
(124, 'Musée d\'art et d\'histoire de Narbonne, Palais des Archevêques', 43.1839423, 3.0014111, 'Place de l’Hôtel de Ville', 'France', 'Occitanie', 'Narbonne', 11100, '', 0, 0, 'http://www.narbonne.fr/musee-art-histoire '),
(125, 'Musée de l\'Arles antique', 43.672497, 4.6142683, 'Avenue 1ère division de la France libre - Avenue Jean Monnet', 'France', 'Provence-Alpes-Côte d’Azur', 'Arles', 13635, '', 0, 0, 'http://www.arles-antique.cg13.fr/mdaa_cg13/root/index.htm '),
(126, 'Musée des Beaux-Arts de Rouen', 49.4447718, 1.0923794, 'Esplanade Marcel Duchamp', 'France', 'Normandie', 'Rouen', 76000, '', 0, 0, 'http://mbarouen.fr/fr '),
(127, 'Musée Fabre', 43.611724, 3.8780194, '39 Boulevard Bonne Nouvelle', 'France', 'Occitanie', 'Montpellier', 34000, '', 0, 0, 'http://museefabre.montpellier3m.fr/');

-- --------------------------------------------------------

--
-- Structure de la table `visits_guides`
--

CREATE TABLE `visits_guides` (
  `id` int(11) NOT NULL,
  `visit_id` int(11) DEFAULT NULL,
  `guide_id` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `visits_images`
--

CREATE TABLE `visits_images` (
  `visit_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `visits_images`
--

INSERT INTO `visits_images` (`visit_id`, `image_id`) VALUES
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(4, 25),
(4, 26),
(4, 27),
(4, 28),
(5, 29),
(5, 30),
(5, 31),
(5, 32),
(5, 33),
(5, 34),
(6, 35),
(6, 36),
(6, 37),
(7, 38),
(7, 39),
(7, 40),
(7, 41),
(7, 42),
(7, 43),
(7, 44),
(7, 45),
(8, 46),
(8, 47),
(8, 48),
(8, 49),
(8, 50),
(8, 51),
(9, 52),
(9, 53),
(9, 54),
(9, 55),
(9, 56),
(9, 57),
(9, 58),
(9, 59),
(9, 60),
(10, 61),
(10, 62),
(10, 63),
(11, 64),
(11, 65),
(11, 66),
(11, 67),
(11, 68),
(11, 69),
(11, 70),
(11, 71),
(12, 72),
(12, 73),
(12, 74),
(12, 75),
(12, 76),
(12, 77),
(13, 78),
(13, 79),
(13, 80),
(13, 81),
(13, 82),
(13, 83),
(13, 84),
(13, 85),
(13, 86),
(13, 87),
(13, 88),
(13, 89),
(14, 90),
(14, 91),
(14, 92),
(14, 93),
(14, 94),
(14, 95),
(14, 96),
(14, 97),
(15, 98),
(15, 99),
(15, 100),
(15, 101),
(16, 102),
(16, 103),
(17, 104),
(17, 105),
(18, 106),
(18, 107),
(18, 108),
(18, 109),
(18, 110),
(19, 111),
(19, 112),
(20, 113),
(20, 114),
(20, 115),
(20, 116),
(20, 117),
(21, 118),
(21, 119),
(21, 120),
(22, 121),
(22, 122),
(22, 123),
(22, 124),
(22, 125),
(22, 126),
(22, 127),
(22, 128),
(23, 129),
(23, 130),
(23, 131),
(23, 132),
(23, 133),
(24, 134),
(24, 135),
(24, 136),
(24, 137),
(24, 138),
(24, 139),
(24, 140),
(25, 141),
(25, 142),
(25, 143),
(25, 144),
(25, 145),
(25, 146),
(26, 147),
(26, 148),
(26, 149),
(26, 150),
(27, 151),
(27, 152),
(27, 153),
(27, 154),
(27, 155),
(27, 156),
(27, 157),
(27, 158),
(27, 159),
(27, 160),
(27, 161),
(28, 162),
(28, 163),
(28, 164),
(28, 165),
(28, 166),
(28, 167),
(28, 168),
(29, 169),
(29, 170),
(29, 171),
(30, 172),
(30, 173),
(30, 174),
(30, 175),
(30, 176),
(30, 177),
(30, 178),
(30, 179),
(31, 180),
(31, 181),
(31, 182),
(31, 183),
(31, 184),
(31, 185),
(31, 186),
(31, 187),
(31, 188),
(31, 189),
(32, 190),
(32, 191),
(32, 192),
(32, 193),
(32, 194),
(32, 195),
(33, 196),
(33, 197),
(33, 198),
(33, 199),
(33, 200),
(34, 201),
(34, 202),
(34, 203),
(34, 204),
(34, 205),
(34, 206),
(34, 207),
(34, 208),
(34, 209),
(35, 211),
(35, 212),
(35, 213),
(35, 214),
(35, 215),
(35, 216),
(35, 217),
(35, 218),
(35, 219),
(36, 220),
(36, 221),
(36, 222),
(36, 223),
(36, 224),
(36, 225),
(37, 226),
(37, 227),
(37, 228),
(37, 229),
(37, 230),
(37, 231),
(37, 232),
(37, 233),
(37, 234),
(37, 235),
(37, 236),
(37, 237),
(37, 238),
(37, 239),
(38, 240),
(38, 241),
(38, 242),
(38, 243),
(38, 244),
(38, 245),
(38, 246),
(38, 247),
(38, 248),
(38, 249),
(38, 250),
(39, 251),
(39, 252),
(39, 253),
(39, 254),
(39, 255),
(39, 256),
(39, 257),
(39, 258),
(40, 259),
(40, 260),
(40, 261),
(40, 262),
(40, 263),
(40, 264),
(40, 265),
(41, 266),
(41, 267),
(41, 268),
(41, 269),
(41, 270),
(41, 271),
(41, 272),
(42, 273),
(42, 274),
(42, 275),
(42, 276),
(42, 277),
(42, 278),
(43, 279),
(43, 280),
(43, 281),
(43, 282),
(43, 283),
(43, 284),
(44, 285),
(44, 286),
(44, 287),
(44, 288),
(44, 289),
(44, 290),
(45, 291),
(45, 292),
(45, 293),
(45, 294),
(45, 295),
(46, 296),
(46, 297),
(46, 298),
(46, 299),
(46, 300),
(46, 301),
(46, 302),
(10, 303),
(47, 304),
(47, 305),
(47, 306),
(47, 307),
(47, 308),
(47, 309),
(47, 310),
(47, 311),
(48, 312),
(48, 313),
(48, 314),
(48, 315),
(48, 316),
(48, 317),
(48, 318),
(48, 319),
(48, 320),
(48, 321),
(49, 322),
(49, 323),
(49, 324),
(49, 325),
(49, 326),
(49, 327),
(49, 328),
(49, 329),
(50, 330),
(50, 331),
(50, 332),
(50, 333),
(50, 334),
(50, 335),
(51, 336),
(51, 337),
(51, 338),
(51, 339),
(52, 342),
(52, 343),
(52, 344),
(52, 345),
(52, 346),
(53, 347),
(53, 348),
(53, 349),
(53, 350),
(53, 351),
(53, 352),
(54, 353),
(54, 354),
(54, 355),
(54, 356),
(54, 357),
(54, 358),
(54, 359),
(54, 360),
(55, 361),
(55, 362),
(55, 363),
(55, 364),
(55, 365),
(55, 366),
(55, 367),
(56, 368),
(56, 369),
(56, 370),
(56, 371),
(57, 372),
(57, 373),
(57, 374),
(57, 375),
(57, 376),
(57, 377),
(58, 378),
(58, 379),
(58, 380),
(59, 381),
(60, 382),
(60, 383),
(60, 384),
(60, 385),
(60, 386),
(60, 387),
(60, 388),
(60, 389),
(61, 390),
(61, 391),
(61, 392),
(61, 393),
(61, 394),
(61, 395),
(61, 396),
(61, 397),
(61, 398),
(62, 399),
(62, 400),
(62, 401),
(62, 402),
(62, 403),
(63, 404),
(63, 405),
(63, 406),
(63, 407),
(63, 408),
(63, 409),
(63, 410),
(63, 411),
(64, 412),
(64, 413),
(64, 414),
(65, 415),
(65, 416),
(65, 417),
(65, 418),
(65, 419),
(66, 420),
(66, 421),
(66, 422),
(66, 423),
(67, 424),
(67, 425),
(67, 426),
(67, 427),
(67, 428),
(67, 429),
(68, 430),
(68, 431),
(68, 432),
(68, 433),
(68, 434),
(69, 435),
(69, 436),
(69, 437),
(70, 438),
(71, 439),
(71, 440),
(71, 441),
(71, 442),
(71, 443),
(71, 444),
(72, 445),
(72, 446),
(72, 447),
(72, 448),
(73, 449),
(73, 450),
(73, 451),
(73, 452),
(74, 453),
(75, 454),
(75, 455),
(75, 456),
(75, 457),
(75, 458),
(75, 459),
(75, 460),
(75, 461),
(76, 462),
(76, 463),
(76, 464),
(76, 465),
(76, 466),
(76, 467),
(77, 468),
(77, 469),
(77, 470),
(77, 471),
(77, 472),
(78, 473),
(78, 474),
(78, 475),
(79, 476),
(79, 477),
(79, 478),
(80, 479),
(80, 480),
(80, 481),
(81, 482),
(81, 483),
(82, 484),
(82, 485),
(83, 486),
(83, 487),
(83, 488),
(84, 489),
(84, 490),
(85, 491),
(85, 492),
(85, 493),
(86, 494),
(86, 495),
(86, 496),
(87, 497),
(87, 498),
(88, 499),
(88, 500),
(88, 501),
(89, 502),
(89, 503),
(90, 504),
(90, 505),
(91, 506),
(91, 507),
(92, 508),
(92, 509),
(93, 510),
(93, 511),
(94, 512),
(94, 513),
(95, 514),
(96, 515),
(96, 516),
(97, 517),
(97, 518),
(98, 519),
(98, 520),
(99, 521),
(99, 522),
(99, 523),
(100, 524),
(100, 525),
(101, 526),
(101, 527),
(101, 528),
(102, 529),
(102, 530),
(102, 531),
(103, 532),
(103, 533),
(103, 534),
(104, 535),
(104, 536),
(105, 537),
(105, 538),
(105, 539),
(106, 540),
(106, 541),
(107, 542),
(107, 543),
(107, 544),
(108, 545),
(108, 546),
(109, 547),
(109, 548),
(110, 549),
(110, 550),
(111, 551),
(111, 552),
(111, 553),
(111, 554),
(112, 555),
(112, 556),
(112, 557),
(113, 558),
(113, 559),
(113, 560),
(114, 561),
(114, 562),
(115, 563),
(115, 564),
(115, 565),
(115, 566),
(116, 567),
(116, 568),
(116, 569),
(117, 570),
(117, 571),
(117, 572),
(118, 573),
(118, 574),
(118, 575),
(118, 576),
(119, 577),
(119, 578),
(120, 579),
(120, 580),
(120, 581),
(121, 582),
(121, 583),
(122, 584),
(122, 585),
(123, 586),
(123, 587),
(123, 588),
(124, 589),
(124, 590),
(125, 591),
(126, 592),
(126, 593),
(127, 594),
(127, 595);

-- --------------------------------------------------------

--
-- Structure de la table `visits_reviews`
--

CREATE TABLE `visits_reviews` (
  `visit_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `visits_reviews`
--

INSERT INTO `visits_reviews` (`visit_id`, `review_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `visits_themes`
--

CREATE TABLE `visits_themes` (
  `visit_id` int(11) NOT NULL,
  `theme_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `visits_themes`
--

INSERT INTO `visits_themes` (`visit_id`, `theme_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(71, 3),
(72, 3),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(78, 3),
(79, 3),
(80, 4),
(81, 4),
(82, 4),
(83, 4),
(84, 4),
(85, 4),
(86, 4),
(87, 4),
(88, 4),
(89, 4),
(90, 4),
(91, 4),
(92, 4),
(93, 4),
(94, 4),
(95, 4),
(96, 4),
(97, 4),
(98, 4),
(99, 4),
(100, 4),
(101, 4),
(102, 6),
(103, 6),
(104, 6),
(105, 6),
(106, 6),
(107, 6),
(108, 6),
(109, 6),
(110, 6),
(111, 6),
(112, 6),
(113, 6),
(114, 6),
(115, 6),
(116, 6),
(117, 6),
(118, 6),
(119, 6),
(120, 6),
(121, 6),
(122, 6),
(123, 6),
(124, 6),
(125, 6),
(126, 6),
(127, 6);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CA9EC735A76ED395` (`user_id`);

--
-- Index pour la table `guide_reviews`
--
ALTER TABLE `guide_reviews`
  ADD PRIMARY KEY (`guide_id`,`review_id`),
  ADD UNIQUE KEY `UNIQ_5D6671273E2E969B` (`review_id`),
  ADD KEY `IDX_5D667127D7ED1D4B` (`guide_id`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `parcours`
--
ALTER TABLE `parcours`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_99B1DEE3A76ED395` (`user_id`),
  ADD UNIQUE KEY `UNIQ_99B1DEE3D7ED1D4B` (`guide_id`);

--
-- Index pour la table `parcours_visits`
--
ALTER TABLE `parcours_visits`
  ADD PRIMARY KEY (`parcours_id`,`visit_id`),
  ADD UNIQUE KEY `UNIQ_4AE8903675FA0FF2` (`visit_id`),
  ADD KEY `IDX_4AE890366E38C0DB` (`parcours_id`);

--
-- Index pour la table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_794381C6A76ED395` (`user_id`);

--
-- Index pour la table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9775E7083DA5256D` (`image_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D6493DA5256D` (`image_id`);

--
-- Index pour la table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visits_guides`
--
ALTER TABLE `visits_guides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4C1401B275FA0FF2` (`visit_id`),
  ADD KEY `IDX_4C1401B2D7ED1D4B` (`guide_id`);

--
-- Index pour la table `visits_images`
--
ALTER TABLE `visits_images`
  ADD PRIMARY KEY (`visit_id`,`image_id`),
  ADD UNIQUE KEY `UNIQ_E17C2A373DA5256D` (`image_id`),
  ADD KEY `IDX_E17C2A3775FA0FF2` (`visit_id`);

--
-- Index pour la table `visits_reviews`
--
ALTER TABLE `visits_reviews`
  ADD PRIMARY KEY (`visit_id`,`review_id`),
  ADD UNIQUE KEY `UNIQ_7CABA5D23E2E969B` (`review_id`),
  ADD KEY `IDX_7CABA5D275FA0FF2` (`visit_id`);

--
-- Index pour la table `visits_themes`
--
ALTER TABLE `visits_themes`
  ADD PRIMARY KEY (`visit_id`,`theme_id`),
  ADD KEY `IDX_1421A68375FA0FF2` (`visit_id`),
  ADD KEY `IDX_1421A68359027487` (`theme_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `guide`
--
ALTER TABLE `guide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `parcours`
--
ALTER TABLE `parcours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `theme`
--
ALTER TABLE `theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `visit`
--
ALTER TABLE `visit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `visits_guides`
--
ALTER TABLE `visits_guides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `guide`
--
ALTER TABLE `guide`
  ADD CONSTRAINT `FK_CA9EC735A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `guide_reviews`
--
ALTER TABLE `guide_reviews`
  ADD CONSTRAINT `FK_5D6671273E2E969B` FOREIGN KEY (`review_id`) REFERENCES `review` (`id`),
  ADD CONSTRAINT `FK_5D667127D7ED1D4B` FOREIGN KEY (`guide_id`) REFERENCES `guide` (`id`);

--
-- Contraintes pour la table `parcours`
--
ALTER TABLE `parcours`
  ADD CONSTRAINT `FK_99B1DEE3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_99B1DEE3D7ED1D4B` FOREIGN KEY (`guide_id`) REFERENCES `guide` (`id`);

--
-- Contraintes pour la table `parcours_visits`
--
ALTER TABLE `parcours_visits`
  ADD CONSTRAINT `FK_4AE890366E38C0DB` FOREIGN KEY (`parcours_id`) REFERENCES `parcours` (`id`),
  ADD CONSTRAINT `FK_4AE8903675FA0FF2` FOREIGN KEY (`visit_id`) REFERENCES `visit` (`id`);

--
-- Contraintes pour la table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_794381C6A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `theme`
--
ALTER TABLE `theme`
  ADD CONSTRAINT `FK_9775E7083DA5256D` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D6493DA5256D` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`);

--
-- Contraintes pour la table `visits_guides`
--
ALTER TABLE `visits_guides`
  ADD CONSTRAINT `FK_4C1401B275FA0FF2` FOREIGN KEY (`visit_id`) REFERENCES `visit` (`id`),
  ADD CONSTRAINT `FK_4C1401B2D7ED1D4B` FOREIGN KEY (`guide_id`) REFERENCES `guide` (`id`);

--
-- Contraintes pour la table `visits_images`
--
ALTER TABLE `visits_images`
  ADD CONSTRAINT `FK_E17C2A373DA5256D` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`),
  ADD CONSTRAINT `FK_E17C2A3775FA0FF2` FOREIGN KEY (`visit_id`) REFERENCES `visit` (`id`);

--
-- Contraintes pour la table `visits_reviews`
--
ALTER TABLE `visits_reviews`
  ADD CONSTRAINT `FK_7CABA5D23E2E969B` FOREIGN KEY (`review_id`) REFERENCES `review` (`id`),
  ADD CONSTRAINT `FK_7CABA5D275FA0FF2` FOREIGN KEY (`visit_id`) REFERENCES `visit` (`id`);

--
-- Contraintes pour la table `visits_themes`
--
ALTER TABLE `visits_themes`
  ADD CONSTRAINT `FK_1421A68359027487` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1421A68375FA0FF2` FOREIGN KEY (`visit_id`) REFERENCES `visit` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
