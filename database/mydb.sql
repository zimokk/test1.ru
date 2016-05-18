SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT=0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


CREATE TABLE IF NOT EXISTS `cars` (
  `idCars` int(11) NOT NULL AUTO_INCREMENT,
  `mark` int(11) NOT NULL,
  `model` int(11) NOT NULL,
  `cost` varchar(45) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `fuel` varchar(45) DEFAULT NULL,
  `body` varchar(45) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`idCars`),
  KEY `fk_Cars_Users_idx` (`user_id`),
  KEY `fk_Cars_Marks_idx` (`mark`),
  KEY `fk_Cars_Models_idx` (`model`),
  KEY `fk_Cars_Cities_idx` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_Cities_Regions_idx` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `comments` (
  `idnews` int(11) NOT NULL,
  `text` longtext,
  `Users_idUsers` int(11) NOT NULL,
  PRIMARY KEY (`idnews`,`Users_idUsers`),
  KEY `fk_comments_Users1_idx` (`Users_idUsers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'Беларусь'),
(2, 'Украина');

CREATE TABLE IF NOT EXISTS `marks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=111 ;

INSERT INTO `marks` (`id`, `name`) VALUES
(1, 'Acura'),
(2, 'Alfa Romeo'),
(3, 'Audi'),
(80, 'Avia'),
(81, 'Barkas'),
(82, 'BAW'),
(4, 'Bentley'),
(5, 'BMW'),
(83, 'Brilliance'),
(6, 'Buick'),
(7, 'Cadillac'),
(84, 'Changan'),
(8, 'Chery'),
(9, 'Chevrolet'),
(10, 'Chrysler'),
(11, 'Citroen'),
(12, 'Dacia'),
(13, 'Daewoo'),
(14, 'DAF'),
(15, 'Daihatsu'),
(85, 'Datsun'),
(86, 'Derways'),
(16, 'Dodge'),
(87, 'FAW'),
(17, 'Fiat'),
(18, 'Ford'),
(88, 'Foton'),
(89, 'Freightliner'),
(19, 'Geely'),
(20, 'GMC'),
(21, 'Great Wall'),
(90, 'Hafei'),
(91, 'Haima'),
(22, 'Honda'),
(23, 'Hummer'),
(24, 'Hyundai'),
(92, 'IFA'),
(25, 'Infiniti'),
(93, 'Iran Khodro'),
(26, 'Isuzu'),
(27, 'Iveco'),
(94, 'JAC'),
(28, 'Jaguar'),
(29, 'Jeep'),
(30, 'KIA'),
(31, 'Lancia'),
(32, 'Land Rover'),
(33, 'Lexus'),
(95, 'LIAZ'),
(34, 'Lifan'),
(35, 'Lincoln'),
(36, 'MAN'),
(37, 'Maserati'),
(38, 'Mazda'),
(39, 'MCC Smart'),
(40, 'Mercedes'),
(41, 'Mercury'),
(42, 'MG'),
(43, 'MINI'),
(44, 'Mitsubishi'),
(96, 'Mudan'),
(45, 'Nissan'),
(46, 'Opel'),
(47, 'Peugeot'),
(48, 'Plymouth'),
(49, 'Pontiac'),
(50, 'Porsche'),
(51, 'Proton'),
(52, 'Renault'),
(53, 'Rover'),
(54, 'SAAB'),
(79, 'Samand'),
(55, 'Saturn'),
(56, 'Scania'),
(57, 'Scion'),
(58, 'SEAT'),
(59, 'Skoda'),
(60, 'Smart'),
(61, 'SsangYong'),
(62, 'Subaru'),
(63, 'Suzuki'),
(97, 'Tatra'),
(64, 'Toyota'),
(98, 'Trabant'),
(65, 'Volkswagen'),
(66, 'Volvo'),
(99, 'Wartburg'),
(100, 'Zuk'),
(101, 'ZX'),
(105, 'Автобусы'),
(67, 'ВАЗ'),
(107, 'Водный транспорт'),
(68, 'ГАЗ'),
(69, 'ЗАЗ'),
(70, 'ЗИЛ'),
(71, 'ИЖ'),
(72, 'Камаз'),
(73, 'Краз'),
(74, 'ЛУАЗ'),
(102, 'Люблин'),
(75, 'МАЗ'),
(103, 'МАЗ-МАN'),
(76, 'Москвич'),
(104, 'Мотоциклы'),
(109, 'Прицепы'),
(108, 'Спец. Техника'),
(106, 'Стройтехника'),
(77, 'УАЗ'),
(78, 'Урал');

CREATE TABLE IF NOT EXISTS `models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mark_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_Models_Marks_idx` (`mark_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1498 ;

INSERT INTO `models` (`id`, `mark_id`, `name`) VALUES
(1, 1, 'CL'),
(2, 1, 'CSX'),
(3, 1, 'ILX'),
(4, 1, 'MDX'),
(5, 1, 'RDX'),
(6, 1, 'RL'),
(7, 1, 'RSX'),
(8, 1, 'TL'),
(9, 1, 'TSX'),
(10, 1, 'ZDX'),
(11, 2, '145'),
(12, 2, '146'),
(13, 2, '147'),
(14, 2, '155'),
(15, 2, '156'),
(16, 2, '159'),
(17, 2, '159 SW'),
(18, 2, '164'),
(19, 2, '166'),
(20, 2, '33'),
(21, 2, '75'),
(22, 2, '90'),
(23, 2, 'Brera'),
(24, 2, 'Giulietta'),
(25, 2, 'GT'),
(26, 2, 'GTV'),
(27, 2, 'MiTo'),
(28, 2, 'Spider'),
(29, 3, '100'),
(30, 3, '200'),
(31, 3, '5000'),
(32, 3, '80'),
(33, 3, '90'),
(34, 3, 'A1'),
(35, 3, 'A2'),
(36, 3, 'A3'),
(37, 3, 'A4 (B5)'),
(38, 3, 'A4 (B6)'),
(39, 3, 'A4 (B7)'),
(40, 3, 'A4 (B8)'),
(41, 3, 'A4 (B9)'),
(42, 3, 'A5'),
(43, 3, 'A6 (C4)'),
(44, 3, 'A6 (C5)'),
(45, 3, 'A6 (C6)'),
(46, 3, 'A6 (C7)'),
(47, 3, 'A7'),
(48, 3, 'A8 (D2)'),
(49, 3, 'A8 (D3)'),
(50, 3, 'A8 (D4)'),
(51, 3, 'Allroad'),
(52, 3, 'Cabriolet'),
(53, 3, 'Coupe'),
(54, 3, 'Q3'),
(55, 3, 'Q5'),
(56, 3, 'Q7'),
(57, 3, 'R8'),
(58, 3, 'RS4'),
(59, 3, 'RS6'),
(60, 3, 'RS7'),
(61, 3, 'S3'),
(62, 3, 'S4'),
(63, 3, 'S5'),
(64, 3, 'S6'),
(65, 3, 'S7'),
(66, 3, 'S8'),
(67, 3, 'TT'),
(68, 3, 'V8'),
(69, 4, 'Continental'),
(70, 4, 'Continental GT'),
(71, 4, 'Mulsanne'),
(72, 4, 'Turbo R'),
(73, 5, '1-reihe (E87)'),
(74, 5, '1-reihe (F20)'),
(75, 5, '2-reihe'),
(76, 5, '3-reihe (E21)'),
(77, 5, '3-reihe (E30)'),
(78, 5, '3-reihe (E36)'),
(79, 5, '3-reihe (E46)'),
(80, 5, '3-reihe (E90)'),
(81, 5, '3-reihe (F30)'),
(82, 5, '4-reihe'),
(83, 5, '5-reihe (E12)'),
(84, 5, '5-reihe (E28)'),
(85, 5, '5-reihe (E34)'),
(86, 5, '5-reihe (E39)'),
(87, 5, '5-reihe (E60)'),
(88, 5, '5-reihe (F10)'),
(89, 5, '5-reihe (F11 Touring)'),
(90, 5, '6-reihe'),
(91, 5, '7-reihe (E23)'),
(92, 5, '7-reihe (E32)'),
(93, 5, '7-reihe (E38)'),
(94, 5, '7-reihe (E65)'),
(95, 5, '7-reihe (E66)'),
(96, 5, '7-reihe (E67)'),
(97, 5, '7-reihe (F01)'),
(98, 5, '7-reihe (F02)'),
(99, 5, '7-Series 2016 (G11)'),
(100, 5, '7-Series 2016 (G12)'),
(101, 5, '8-reihe (E31)'),
(102, 5, 'GT (F07)'),
(103, 5, 'i8'),
(104, 5, 'M1'),
(105, 5, 'M3'),
(106, 5, 'M5'),
(107, 5, 'M6'),
(108, 5, 'X1'),
(109, 5, 'X3'),
(110, 5, 'X4'),
(111, 5, 'X5'),
(112, 5, 'X6'),
(113, 5, 'Z-reihe'),
(114, 6, 'Enclave'),
(115, 6, 'Encore'),
(116, 6, 'Park Avenue'),
(117, 6, 'Regal'),
(118, 6, 'RendezVous'),
(119, 7, 'ATS'),
(120, 7, 'Brogham'),
(121, 7, 'BLS'),
(122, 7, 'Catera'),
(123, 7, 'CTS'),
(124, 7, 'De Ville'),
(125, 7, 'Eldorado'),
(126, 7, 'Escalade'),
(127, 7, 'Seville'),
(128, 7, 'SRX'),
(129, 7, 'STS'),
(130, 8, 'A1'),
(131, 8, 'A13'),
(132, 8, 'A19'),
(133, 8, 'A5'),
(134, 8, 'Arrizo7'),
(135, 8, 'Cowin'),
(136, 8, 'CrossEastar'),
(137, 8, 'Indis'),
(138, 8, 'QQ'),
(139, 8, 'QQ6'),
(140, 8, 'Tiggo'),
(141, 9, 'Alero'),
(142, 9, 'Astro Van'),
(143, 9, 'Avalanche'),
(144, 9, 'Aveo'),
(145, 9, 'Blazer'),
(146, 9, 'Camaro'),
(147, 9, 'Caprice'),
(148, 9, 'Captiva'),
(149, 9, 'Cavalier'),
(150, 9, 'Cobalt'),
(151, 9, 'Colorado'),
(152, 9, 'Corsica'),
(153, 9, 'Corvette'),
(154, 9, 'Cruze'),
(155, 9, 'Epica'),
(156, 9, 'Equinox'),
(157, 9, 'Express'),
(158, 9, 'HHR'),
(159, 9, 'Impala'),
(160, 9, 'Lacetti'),
(161, 9, 'Lanos'),
(162, 9, 'Lumina'),
(163, 9, 'Matiz'),
(164, 9, 'Niva'),
(165, 9, 'Nubira'),
(166, 9, 'Orlando'),
(167, 9, 'Rezzo'),
(168, 9, 'Silver'),
(169, 9, 'Spark'),
(170, 9, 'Suburban'),
(171, 9, 'Tacuma'),
(172, 9, 'Tahoe'),
(173, 9, 'Tracker'),
(174, 9, 'TrailBlazer'),
(175, 9, 'TransSport'),
(176, 9, 'Van'),
(177, 9, 'Venture'),
(178, 9, 'Volt'),
(179, 10, '200'),
(180, 10, '300'),
(181, 10, 'Aspen'),
(182, 10, 'Cirrus'),
(183, 10, 'Concorde'),
(184, 10, 'Crossfire'),
(185, 10, 'Grand Voyager'),
(186, 10, 'Intrepid'),
(187, 10, 'LHS'),
(188, 10, 'Neon'),
(189, 10, 'Pacifica'),
(190, 10, 'PT Cruiser'),
(191, 10, 'Saratoga'),
(192, 10, 'Sebring'),
(193, 10, 'Stratus'),
(194, 10, 'Town&Country'),
(195, 10, 'Vision'),
(196, 10, 'Voyager'),
(197, 11, 'AX'),
(198, 11, 'Berlingo'),
(199, 11, 'BX'),
(200, 11, 'C-Crosser'),
(201, 11, 'C-Elysee'),
(202, 11, 'C1'),
(203, 11, 'C2'),
(204, 11, 'C25'),
(205, 11, 'C3'),
(206, 11, 'C3 Picasso'),
(207, 11, 'C4'),
(208, 11, 'C4 GRAND Picasso'),
(209, 11, 'C4 Picasso'),
(210, 11, 'C5'),
(211, 11, 'C5 (II)'),
(212, 11, 'C6'),
(213, 11, 'C8'),
(214, 11, 'CX'),
(215, 11, 'DS3'),
(216, 11, 'DS4'),
(217, 11, 'DS5'),
(218, 11, 'Evasion'),
(219, 11, 'Jumper'),
(220, 11, 'Jumpy'),
(221, 11, 'Nemo'),
(222, 11, 'Saxo'),
(223, 11, 'Xantia'),
(224, 11, 'XM'),
(225, 11, 'Xsara'),
(226, 11, 'Xsara Picasso'),
(227, 11, 'ZX'),
(228, 12, 'Duster'),
(229, 12, 'Lodgy'),
(230, 12, 'Logan'),
(231, 12, 'Logan MCV'),
(232, 12, 'Sandero'),
(233, 13, 'Espero'),
(234, 13, 'Evanda'),
(235, 13, 'Gentra'),
(236, 13, 'Kalos'),
(237, 13, 'Korando'),
(238, 13, 'Lanos'),
(239, 13, 'Leganza'),
(240, 13, 'Magnus'),
(241, 13, 'Matiz'),
(242, 13, 'Matiz II'),
(243, 13, 'Nexia'),
(244, 13, 'Nubira'),
(245, 13, 'Prince'),
(246, 13, 'Rezzo'),
(247, 13, 'Tacuma'),
(248, 14, '105'),
(249, 14, '200'),
(250, 14, '400'),
(251, 14, '45'),
(252, 14, '55'),
(253, 14, '65'),
(254, 14, '75'),
(255, 14, '85'),
(256, 14, '95'),
(257, 14, 'F1900'),
(258, 14, 'F2100'),
(259, 14, 'F2500'),
(260, 14, 'F2700'),
(261, 14, 'F2800'),
(262, 14, 'F3600'),
(263, 14, 'FT'),
(264, 14, 'LF'),
(265, 14, 'XF'),
(266, 15, 'Applause'),
(267, 15, 'Charade'),
(268, 15, 'Copen'),
(269, 15, 'Cuore'),
(270, 15, 'Feroza'),
(271, 15, 'Gran Move'),
(272, 15, 'Materia'),
(273, 15, 'Move'),
(274, 15, 'Sirion'),
(275, 15, 'Terios'),
(276, 15, 'YRV'),
(277, 16, '1500'),
(278, 16, '3500'),
(279, 16, 'Avenger'),
(280, 16, 'Caliber'),
(281, 16, 'Caravan'),
(282, 16, 'Charger'),
(283, 16, 'Dakota'),
(284, 16, 'Dart'),
(285, 16, 'Durango'),
(286, 16, 'Grand Caravan'),
(287, 16, 'Intrepid'),
(288, 16, 'Journey'),
(289, 16, 'Magnum'),
(290, 16, 'Monaco'),
(291, 16, 'Neon'),
(292, 16, 'Nitro'),
(293, 16, 'Ram'),
(294, 16, 'Stealth'),
(295, 16, 'Stratus'),
(296, 17, '128'),
(297, 17, '500'),
(298, 17, 'Albea'),
(299, 17, 'Barchetta'),
(300, 17, 'Brava'),
(301, 17, 'Bravo'),
(302, 17, 'Cinquecento'),
(303, 17, 'Coupe'),
(304, 17, 'Croma'),
(305, 17, 'Doblo'),
(306, 17, 'Ducato'),
(307, 17, 'Fiorino'),
(308, 17, 'Freemont'),
(309, 17, 'Grande Punto'),
(310, 17, 'Idea'),
(311, 17, 'Linea'),
(312, 17, 'Marea'),
(313, 17, 'Multipla'),
(314, 17, 'Palio'),
(315, 17, 'Panda'),
(316, 17, 'Punto'),
(317, 17, 'Qubo'),
(318, 17, 'Regata'),
(319, 17, 'Ritmo'),
(320, 17, 'Scudo'),
(321, 17, 'Seicento'),
(322, 17, 'Stilo'),
(323, 17, 'Talento'),
(324, 17, 'Tempra'),
(325, 17, 'Tipo'),
(326, 17, 'Ulysse'),
(327, 17, 'Uno'),
(328, 18, 'Aerostar'),
(329, 18, 'C-MAX'),
(330, 18, 'Capri'),
(331, 18, 'Contur'),
(332, 18, 'Cougar'),
(333, 18, 'Courier'),
(334, 18, 'Crown Victoria'),
(335, 18, 'E350'),
(336, 18, 'Econoline'),
(337, 18, 'Econovan'),
(338, 18, 'EcoSport'),
(339, 18, 'Edge'),
(340, 18, 'Escape'),
(341, 18, 'Escort'),
(342, 18, 'Excursion'),
(343, 18, 'Expedition'),
(344, 18, 'Explorer'),
(345, 18, 'F150'),
(346, 18, 'F250'),
(347, 18, 'F350'),
(348, 18, 'Fiesta'),
(349, 18, 'Flex'),
(350, 18, 'Focus'),
(351, 18, 'Freestyle'),
(352, 18, 'Fusion'),
(353, 18, 'Galaxy'),
(354, 18, 'Granada'),
(355, 18, 'Ka'),
(356, 18, 'Kuga'),
(357, 18, 'Maverick'),
(358, 18, 'Mondeo'),
(359, 18, 'Mustang'),
(360, 18, 'Orion'),
(361, 18, 'Probe'),
(362, 18, 'Puma'),
(363, 18, 'Ranger'),
(364, 18, 'S-MAX'),
(365, 18, 'Scorpio'),
(366, 18, 'Sierra'),
(367, 18, 'Taunus'),
(368, 18, 'Taurus'),
(369, 18, 'Tourneo'),
(370, 18, 'Tourneo Connect'),
(371, 18, 'Transit'),
(372, 18, 'Transit Connect'),
(373, 18, 'Windstar'),
(374, 19, 'CK'),
(375, 19, 'Emgrand'),
(376, 19, 'Emgrand X7'),
(377, 19, 'FC'),
(378, 19, 'LC Cross'),
(379, 19, 'MK'),
(380, 19, 'MK Cross'),
(381, 19, 'SC7'),
(382, 20, 'Acadia'),
(383, 20, 'Envoy'),
(384, 20, 'Safary'),
(385, 20, 'Savana'),
(386, 20, 'Terrain'),
(387, 20, 'Yukon'),
(388, 21, 'Deer'),
(389, 21, 'Hover'),
(390, 21, 'Hover H3'),
(391, 21, 'Hover H5'),
(392, 21, 'Hover M2'),
(393, 21, 'Hover M4'),
(394, 21, 'Pegasus'),
(395, 21, 'Peri'),
(396, 21, 'Safe'),
(397, 21, 'Wingle'),
(398, 22, 'Accord'),
(399, 22, 'City'),
(400, 22, 'Civic'),
(401, 22, 'Concerto'),
(402, 22, 'CR-V'),
(403, 22, 'CR-Z'),
(404, 22, 'Crosstour'),
(405, 22, 'CRX'),
(406, 22, 'Element'),
(407, 22, 'Fit'),
(408, 22, 'FR-V'),
(409, 22, 'HR-V'),
(410, 22, 'Insight'),
(411, 22, 'Integra'),
(412, 22, 'Jazz'),
(413, 22, 'Legend'),
(414, 22, 'Logo'),
(415, 22, 'Odyssey'),
(416, 22, 'Pilot'),
(417, 22, 'Prelude'),
(418, 22, 'Ridgeline'),
(419, 22, 'S2000'),
(420, 22, 'Shuttle'),
(421, 22, 'Strea M'),
(422, 23, 'H1'),
(423, 23, 'H2'),
(424, 23, 'H3'),
(425, 24, 'Accent'),
(426, 24, 'Atos'),
(427, 24, 'Coupe GK'),
(428, 24, 'Elantra'),
(429, 24, 'Equus'),
(430, 24, 'Galloper'),
(431, 24, 'Genesis'),
(432, 24, 'Getz'),
(433, 24, 'Grace'),
(434, 24, 'Grandeur'),
(435, 24, 'H-1'),
(436, 24, 'H100'),
(437, 24, 'H200'),
(438, 24, 'HD65'),
(439, 24, 'HD72'),
(440, 24, 'HD78'),
(441, 24, 'i10'),
(442, 24, 'i20'),
(443, 24, 'i30'),
(444, 24, 'i40'),
(445, 24, 'ix20'),
(446, 24, 'ix35'),
(447, 24, 'ix55'),
(448, 24, 'Lantra'),
(449, 24, 'Matrix'),
(450, 24, 'Pony'),
(451, 24, 'Porter'),
(452, 24, 'S Coupe'),
(453, 24, 'Santa Fe'),
(454, 24, 'Santamo'),
(455, 24, 'Solaris'),
(456, 24, 'Sonata'),
(457, 24, 'Starex'),
(458, 24, 'Terracan'),
(459, 24, 'Tiburon'),
(460, 24, 'Trajet'),
(461, 24, 'Tucson'),
(462, 24, 'Veloster'),
(463, 24, 'Verna'),
(464, 24, 'XG'),
(465, 25, 'EX30'),
(466, 25, 'EX35'),
(467, 25, 'FX30'),
(468, 25, 'FX35'),
(469, 25, 'FX37'),
(470, 25, 'FX45'),
(471, 25, 'FX50'),
(472, 25, 'G25'),
(473, 25, 'G35'),
(474, 25, 'G37'),
(475, 25, 'I30'),
(476, 25, 'I35'),
(477, 25, 'J30'),
(478, 25, 'JX'),
(479, 25, 'M35'),
(480, 25, 'M37'),
(481, 25, 'M45'),
(482, 25, 'Q50'),
(483, 25, 'Q60'),
(484, 25, 'Q70'),
(485, 25, 'QX4'),
(486, 25, 'QX50'),
(487, 25, 'QX56'),
(488, 25, 'QX60'),
(489, 25, 'QX70'),
(490, 25, 'QX80'),
(491, 26, 'Amigo'),
(492, 26, 'Axiom'),
(493, 26, 'Elf'),
(494, 26, 'Gemini'),
(495, 26, 'Midi'),
(496, 26, 'NPR'),
(497, 26, 'NQR'),
(498, 26, 'Rodeo'),
(499, 26, 'Trooper'),
(500, 26, 'Vehi Cross'),
(501, 27, '190-Serie'),
(502, 27, '300-Serie'),
(503, 27, '35-10'),
(504, 27, '35-11'),
(505, 27, '35-12'),
(506, 27, '35-14'),
(507, 27, '380-Serie'),
(508, 27, '400-Serie'),
(509, 27, '410-Serie'),
(510, 27, '440-Serie'),
(511, 27, '4910'),
(512, 27, '580-Serie'),
(513, 27, '59-12'),
(514, 27, '700-Serie'),
(515, 27, '80-Serie'),
(516, 27, 'Cargo'),
(517, 27, 'Daily'),
(518, 27, 'Ducato'),
(519, 27, 'E440'),
(520, 28, 'Daimler'),
(521, 28, 'F-Type'),
(522, 28, 'S-Type'),
(523, 28, 'X-Type'),
(524, 28, 'XE'),
(525, 28, 'XF'),
(526, 28, 'XJ'),
(527, 28, 'XJ8'),
(528, 28, 'XJR'),
(529, 28, 'XK8'),
(530, 28, 'XKR'),
(531, 29, 'Cherokee'),
(532, 29, 'Commander'),
(533, 29, 'Compass'),
(534, 29, 'Grand Cherokee'),
(535, 29, 'Liberty'),
(536, 29, 'Patriot'),
(537, 29, 'Wrangler'),
(538, 30, 'Besta'),
(539, 30, 'Bongo'),
(540, 30, 'Capital'),
(541, 30, 'Carens'),
(542, 30, 'Carnival'),
(543, 30, 'Cee`d'),
(544, 30, 'Cerato'),
(545, 30, 'Clarus'),
(546, 30, 'Joice'),
(547, 30, 'K2500'),
(548, 30, 'Magentis'),
(549, 30, 'Mohave'),
(550, 30, 'Opirus'),
(551, 30, 'Optima'),
(552, 30, 'Picanto'),
(553, 30, 'Pregio'),
(554, 30, 'Pride'),
(555, 30, 'Quoris'),
(556, 30, 'Retona'),
(557, 30, 'Rio'),
(558, 30, 'Rocsta'),
(559, 30, 'Sedona'),
(560, 30, 'Sephia'),
(561, 30, 'Shuma'),
(562, 30, 'Soul'),
(563, 30, 'Sorento'),
(564, 30, 'Spectra'),
(565, 30, 'Sportage'),
(566, 30, 'Traget'),
(567, 30, 'Venga'),
(568, 31, 'Dedra'),
(569, 31, 'Delta'),
(570, 31, 'Kappa'),
(571, 31, 'Lybra'),
(572, 31, 'Musa'),
(573, 31, 'Phedra'),
(574, 31, 'Thema'),
(575, 31, 'Thesis'),
(576, 31, 'Y'),
(577, 31, 'Z'),
(578, 32, 'Defender'),
(579, 32, 'Discovery'),
(580, 32, 'Discovery III'),
(581, 32, 'Discovery IV'),
(582, 32, 'Freelander'),
(583, 32, 'Freelander II'),
(584, 32, 'Range Rover'),
(585, 32, 'Range Rover Evoque'),
(586, 32, 'Range Rover Sport'),
(587, 33, 'CT'),
(588, 33, 'ES'),
(589, 33, 'GS'),
(590, 33, 'GX'),
(591, 33, 'HS'),
(592, 33, 'IS'),
(593, 33, 'LS'),
(594, 33, 'LX'),
(595, 33, 'NX'),
(596, 33, 'RX'),
(597, 33, 'SC'),
(598, 34, 'Breez'),
(599, 34, 'Cebrium'),
(600, 34, 'Celliya'),
(601, 34, 'Smily'),
(602, 34, 'Solano'),
(603, 34, 'X50'),
(604, 34, 'X60'),
(605, 35, 'Aviator'),
(606, 35, 'Continental'),
(607, 35, 'LS'),
(608, 35, 'Mark 8(римскими)'),
(609, 35, 'MKX'),
(610, 35, 'Navigator'),
(611, 35, 'Town Car'),
(612, 36, '10'),
(613, 36, '12'),
(614, 36, '13'),
(615, 36, '14'),
(616, 36, '15'),
(617, 36, '16'),
(618, 36, '17'),
(619, 36, '18'),
(620, 36, '19'),
(621, 36, '22'),
(622, 36, '23'),
(623, 36, '24'),
(624, 36, '25'),
(625, 36, '26'),
(626, 36, '33'),
(627, 36, '36'),
(628, 36, '8'),
(629, 36, '9'),
(630, 36, 'F2000'),
(631, 37, 'Gran Turismo'),
(632, 37, 'Quattroporte'),
(633, 38, '121'),
(634, 38, '2'),
(635, 38, '3'),
(636, 38, '323'),
(637, 38, '5'),
(638, 38, '6'),
(639, 38, '626'),
(640, 38, '636'),
(641, 38, '929'),
(642, 38, 'B2000'),
(643, 38, 'BT-50'),
(644, 38, 'Capella'),
(645, 38, 'Cosmo'),
(646, 38, 'CX-5'),
(647, 38, 'CX-7'),
(648, 38, 'CX-9'),
(649, 38, 'Demio'),
(650, 38, 'E2200'),
(651, 38, 'Millenia'),
(652, 38, 'MPV'),
(653, 38, 'MX3'),
(654, 38, 'MX5'),
(655, 38, 'MX6'),
(656, 38, 'Premacy'),
(657, 38, 'Protege'),
(658, 38, 'RX-8'),
(659, 38, 'RX7'),
(660, 38, 'Tribute'),
(661, 38, 'Xedos 6'),
(662, 38, 'Xedos 9'),
(663, 39, 'Forfour'),
(664, 39, 'Fortwo'),
(665, 39, 'Roadster'),
(666, 40, '190 (W201)'),
(667, 40, 'A-klasse'),
(668, 40, 'Actros'),
(669, 40, 'Atego'),
(670, 40, 'Axor'),
(671, 40, 'B-klasse'),
(672, 40, 'C-klasse (C220)'),
(673, 40, 'C-klasse (W202)'),
(674, 40, 'C-klasse (W203)'),
(675, 40, 'C-klasse (W203) Sportcoupe'),
(676, 40, 'C-klasse (W203Т)'),
(677, 40, 'C-klasse (W204)'),
(678, 40, 'C-klasse (W205)'),
(679, 40, 'Citan'),
(680, 40, 'CL'),
(681, 40, 'CLA'),
(682, 40, 'CLC'),
(683, 40, 'CLK'),
(684, 40, 'CLS'),
(685, 40, 'E-klasse (C207)'),
(686, 40, 'E-klasse (T210)'),
(687, 40, 'E-klasse (W115)'),
(688, 40, 'E-klasse (W123)'),
(689, 40, 'E-klasse (W124)'),
(690, 40, 'E-klasse (W210)'),
(691, 40, 'E-klasse (W211)'),
(692, 40, 'E-klasse (W212)'),
(693, 40, 'E-klasse (W213)'),
(694, 40, 'G-klasse'),
(695, 40, 'GL-klasse'),
(696, 40, 'GLA'),
(697, 40, 'GLC'),
(698, 40, 'GLE'),
(699, 40, 'GLK-klasse'),
(700, 40, 'MB100'),
(701, 40, 'ML-klasse'),
(702, 40, 'R-klasse'),
(703, 40, 'S-klasse (W116)'),
(704, 40, 'S-klasse (W126)'),
(705, 40, 'S-klasse (W140)'),
(706, 40, 'S-klasse (W220)'),
(707, 40, 'S-klasse (W221)'),
(708, 40, 'S-klasse (W222)'),
(709, 40, 'SL'),
(710, 40, 'SLK'),
(711, 40, 'SLR'),
(712, 40, 'Sprinter'),
(713, 40, 'V-klasse'),
(714, 40, 'Vaneo'),
(715, 40, 'Vario'),
(716, 40, 'Viano'),
(717, 40, 'Vito'),
(718, 40, 'W123'),
(719, 40, 'грузовой свыше 7,5 т.'),
(720, 40, 'Т1 207D - 410D'),
(721, 40, 'Т2 507D - 814D'),
(722, 41, 'Cougar'),
(723, 41, 'Mariner'),
(724, 41, 'Milan'),
(725, 41, 'Mountaineer'),
(726, 41, 'Sable'),
(727, 41, 'Villager'),
(728, 42, '3'),
(729, 42, '550'),
(730, 42, '6'),
(731, 42, 'MGF'),
(732, 42, 'ZS'),
(733, 43, 'Clubman'),
(734, 43, 'Cooper'),
(735, 43, 'Countryman'),
(736, 43, 'One'),
(737, 44, '3000'),
(738, 44, 'ASX'),
(739, 44, 'Canter'),
(740, 44, 'Carisma'),
(741, 44, 'Colt'),
(742, 44, 'Diamante'),
(743, 44, 'Eclipse'),
(744, 44, 'Endeavor'),
(745, 44, 'Fuso'),
(746, 44, 'Galant'),
(747, 44, 'Grandis'),
(748, 44, 'i-MiEV'),
(749, 44, 'Jeep'),
(750, 44, 'L200'),
(751, 44, 'L300'),
(752, 44, 'L400'),
(753, 44, 'Lancer'),
(754, 44, 'Lancer Evolution'),
(755, 44, 'Libero'),
(756, 44, 'Mirage'),
(757, 44, 'Montero'),
(758, 44, 'Outlander'),
(759, 44, 'Pajero'),
(760, 44, 'Pajero Pinin'),
(761, 44, 'Pajero Sport'),
(762, 44, 'Sigma'),
(763, 44, 'Space Gear'),
(764, 44, 'Space Runner'),
(765, 44, 'Space Star'),
(766, 44, 'Space Wagon'),
(767, 45, '100'),
(768, 45, '200'),
(769, 45, '240'),
(770, 45, '300'),
(771, 45, '350Z'),
(772, 45, '370Z'),
(773, 45, 'Almera'),
(774, 45, 'Almera Tino'),
(775, 45, 'Altima'),
(776, 45, 'Armada'),
(777, 45, 'Atleon'),
(778, 45, 'Avenir'),
(779, 45, 'Bluebird'),
(780, 45, 'CabStar'),
(781, 45, 'Cherry'),
(782, 45, 'Cube'),
(783, 45, 'GT-R'),
(784, 45, 'Interstar'),
(785, 45, 'Juke'),
(786, 45, 'L50'),
(787, 45, 'Laurel'),
(788, 45, 'Leaf'),
(789, 45, 'Maxima'),
(790, 45, 'Micra'),
(791, 45, 'Murano'),
(792, 45, 'Navara'),
(793, 45, 'Note'),
(794, 45, 'NP300'),
(795, 45, 'NV200'),
(796, 45, 'Pathfinder'),
(797, 45, 'Patrol'),
(798, 45, 'Pickup'),
(799, 45, 'Pixo'),
(800, 45, 'Prairie'),
(801, 45, 'Primastar'),
(802, 45, 'Primera'),
(803, 45, 'Primera Wagon'),
(804, 45, 'Qashqai'),
(805, 45, 'Qashqai+2'),
(806, 45, 'Quest'),
(807, 45, 'Rogue'),
(808, 45, 'Sentra'),
(809, 45, 'Serena'),
(810, 45, 'Silvia'),
(811, 45, 'Skyline'),
(812, 45, 'Sunny'),
(813, 45, 'Teana'),
(814, 45, 'Terrano'),
(815, 45, 'Terrano II'),
(816, 45, 'Tiida'),
(817, 45, 'Titan'),
(818, 45, 'Trade'),
(819, 45, 'Urvan'),
(820, 45, 'Vanette'),
(821, 45, 'Versa'),
(822, 45, 'X-Terra'),
(823, 45, 'X-Trail'),
(824, 46, 'Adam'),
(825, 46, 'Agila'),
(826, 46, 'Ampera'),
(827, 46, 'Antara'),
(828, 46, 'Arena'),
(829, 46, 'Ascona'),
(830, 46, 'Astra F'),
(831, 46, 'Astra G'),
(832, 46, 'Astra H'),
(833, 46, 'Astra J'),
(834, 46, 'Calibra'),
(835, 46, 'Campo'),
(836, 46, 'Combo'),
(837, 46, 'Commodore'),
(838, 46, 'Corsa 3'),
(839, 46, 'Frontera'),
(840, 46, 'GT'),
(841, 46, 'Insignia'),
(842, 46, 'Kadett'),
(843, 46, 'Manta'),
(844, 46, 'Meriva'),
(845, 46, 'Mokka'),
(846, 46, 'Monterey'),
(847, 46, 'Movano'),
(848, 46, 'Omega'),
(849, 46, 'Record'),
(850, 46, 'Senator'),
(851, 46, 'Signum'),
(852, 46, 'Sintra'),
(853, 46, 'Tigra'),
(854, 46, 'Vectra'),
(855, 46, 'Vivaro'),
(856, 46, 'Zafira'),
(857, 47, '1007'),
(858, 47, '106'),
(859, 47, '107'),
(860, 47, '2008'),
(861, 47, '205'),
(862, 47, '206'),
(863, 47, '207'),
(864, 47, '208'),
(865, 47, '3008'),
(866, 47, '301'),
(867, 47, '305'),
(868, 47, '306'),
(869, 47, '307'),
(870, 47, '308'),
(871, 47, '309'),
(872, 47, '4007'),
(873, 47, '4008'),
(874, 47, '405'),
(875, 47, '406'),
(876, 47, '407'),
(877, 47, '407 Coupe'),
(878, 47, '407 SW'),
(879, 47, '408'),
(880, 47, '5008'),
(881, 47, '505'),
(882, 47, '508'),
(883, 47, '605'),
(884, 47, '607'),
(885, 47, '806'),
(886, 47, '807'),
(887, 47, 'Bipper'),
(888, 47, 'Boxer'),
(889, 47, 'Expert'),
(890, 47, 'J5'),
(891, 47, 'Partner'),
(892, 47, 'RCZ'),
(893, 48, 'Breeze'),
(894, 48, 'Grand Voyager'),
(895, 48, 'Voyager'),
(896, 49, 'Aztec'),
(897, 49, 'Firebird'),
(898, 49, 'Grand AM'),
(899, 49, 'Trans Sport'),
(900, 50, '911'),
(901, 50, 'Boxster'),
(902, 50, 'Cayenne'),
(903, 50, 'Cayman'),
(904, 50, 'Macan'),
(905, 50, 'Panamera'),
(906, 51, '313'),
(907, 51, '315'),
(908, 51, '413'),
(909, 51, '415'),
(910, 51, '416'),
(911, 51, '418'),
(912, 51, '420'),
(913, 52, '11'),
(914, 52, '19'),
(915, 52, '21'),
(916, 52, '25'),
(917, 52, '5'),
(918, 52, '9'),
(919, 52, 'Avantime'),
(920, 52, 'B120'),
(921, 52, 'Clio'),
(922, 52, 'Clio II'),
(923, 52, 'Clio III'),
(924, 52, 'Dokker'),
(925, 52, 'Duster'),
(926, 52, 'Espace'),
(927, 52, 'Express'),
(928, 52, 'Fluence'),
(929, 52, 'Fuego'),
(930, 52, 'Kangoo'),
(931, 52, 'Kerax'),
(932, 52, 'Koleos'),
(933, 52, 'Laguna'),
(934, 52, 'Laguna II'),
(935, 52, 'Laguna III'),
(936, 52, 'Latitude'),
(937, 52, 'Lodgy'),
(938, 52, 'Logan'),
(939, 52, 'Magnum'),
(940, 52, 'Major'),
(941, 52, 'Mascott'),
(942, 52, 'Master'),
(943, 52, 'Maxity'),
(944, 52, 'Megane'),
(945, 52, 'Megane II Coupe'),
(946, 52, 'Megane II Estate'),
(947, 52, 'Megane II Hatchback'),
(948, 52, 'Megane II Sedan'),
(949, 52, 'Megane III'),
(950, 52, 'Megane Sedan'),
(951, 52, 'Midliner'),
(952, 52, 'Midlum'),
(953, 52, 'Modus'),
(954, 52, 'Premium'),
(955, 52, 'Rapid'),
(956, 52, 'Safrane'),
(957, 52, 'Sandero'),
(958, 52, 'Scenic'),
(959, 52, 'Scenic II'),
(960, 52, 'Scenic III'),
(961, 52, 'Symbol'),
(962, 52, 'Trafic'),
(963, 52, 'Twingo'),
(964, 52, 'Vel Satis'),
(965, 52, 'Wind'),
(966, 53, '111'),
(967, 53, '200-serie'),
(968, 53, '25'),
(969, 53, '400-serie'),
(970, 53, '45'),
(971, 53, '600-serie'),
(972, 53, '75'),
(973, 53, '800-serie'),
(974, 53, 'Montego'),
(975, 54, '9-3'),
(976, 54, '9-5'),
(977, 54, '9-7X'),
(978, 54, '900'),
(979, 54, '9000'),
(980, 54, '99'),
(981, 55, 'SL'),
(982, 55, 'VUE'),
(983, 56, '112'),
(984, 56, '113'),
(985, 56, '142'),
(986, 56, '143'),
(987, 56, '80'),
(988, 56, '92'),
(989, 56, '93'),
(990, 56, 'G400'),
(991, 56, 'P114'),
(992, 56, 'P124'),
(993, 56, 'P380'),
(994, 56, 'P94'),
(995, 56, 'R114'),
(996, 56, 'R124'),
(997, 56, 'R144'),
(998, 56, 'R164'),
(999, 56, 'R420'),
(1000, 56, 'R480'),
(1001, 56, 'ST400'),
(1002, 57, 'FR-S'),
(1003, 57, 'tC'),
(1004, 57, 'xA'),
(1005, 57, 'xB'),
(1006, 58, 'Alhambra'),
(1007, 58, 'Altea'),
(1008, 58, 'Arosa'),
(1009, 58, 'Cordoba'),
(1010, 58, 'Exeo'),
(1011, 58, 'Ibiza'),
(1012, 58, 'Inca'),
(1013, 58, 'Leon'),
(1014, 58, 'Malaga'),
(1015, 58, 'Marbella'),
(1016, 58, 'Terra'),
(1017, 58, 'Toledo'),
(1018, 58, 'Vario'),
(1019, 59, 'Fabia'),
(1020, 59, 'Favorit'),
(1021, 59, 'Felicia'),
(1022, 59, 'Forman'),
(1023, 59, 'Octavia'),
(1024, 59, 'Praktik'),
(1025, 59, 'Rapid'),
(1026, 59, 'Roomster'),
(1027, 59, 'Superb'),
(1028, 59, 'Yeti'),
(1029, 60, 'City'),
(1030, 60, 'Forfour'),
(1031, 60, 'Fortwo'),
(1032, 60, 'Roadster'),
(1033, 61, 'Actyon'),
(1034, 61, 'Family'),
(1035, 61, 'Istana'),
(1036, 61, 'Korando'),
(1037, 61, 'Kyron'),
(1038, 61, 'Musso'),
(1039, 61, 'Rexton'),
(1040, 61, 'Rexton 2(римские)'),
(1041, 61, 'Rodius'),
(1042, 62, 'B9 Tribeca'),
(1043, 62, 'Baja'),
(1044, 62, 'Forester'),
(1045, 62, 'Impreza'),
(1046, 62, 'Justy'),
(1047, 62, 'Legacy'),
(1048, 62, 'Libero'),
(1049, 62, 'Outback'),
(1050, 62, 'Trezia'),
(1051, 62, 'Vivio'),
(1052, 62, 'XV'),
(1053, 63, 'Aerio'),
(1054, 63, 'Alto'),
(1055, 63, 'Baleno'),
(1056, 63, 'Carry'),
(1057, 63, 'Equator'),
(1058, 63, 'Grand Vitara'),
(1059, 63, 'Ignis 1'),
(1060, 63, 'Jimny'),
(1061, 63, 'Kizashi'),
(1062, 63, 'Liana'),
(1063, 63, 'Samurai'),
(1064, 63, 'Splash'),
(1065, 63, 'Swift'),
(1066, 63, 'SX-4'),
(1067, 63, 'Verona'),
(1068, 63, 'Vitara'),
(1069, 63, 'New Vitara'),
(1070, 63, 'Wagon R+'),
(1071, 63, 'XL-7'),
(1072, 64, '4 Runner'),
(1073, 64, 'Alphard'),
(1074, 64, 'Auris'),
(1075, 64, 'Avalon'),
(1076, 64, 'Avensis'),
(1077, 64, 'Avensis Verso'),
(1078, 64, 'Aygo'),
(1079, 64, 'Camry'),
(1080, 64, 'Carina'),
(1081, 64, 'Celica'),
(1082, 64, 'Corolla'),
(1083, 64, 'Corolla Verso'),
(1084, 64, 'Crown'),
(1085, 64, 'Echo'),
(1086, 64, 'FJ Cruiser'),
(1087, 64, 'Fortuner'),
(1088, 64, 'GT 86'),
(1089, 64, 'Hi Ace'),
(1090, 64, 'Highlander'),
(1091, 64, 'Hilux'),
(1092, 64, 'iQ'),
(1093, 64, 'Land Cruiser'),
(1094, 64, 'Matrix'),
(1095, 64, 'MR-2'),
(1096, 64, 'Paseo'),
(1097, 64, 'Picnic'),
(1098, 64, 'Previa'),
(1099, 64, 'Prius'),
(1100, 64, 'ProAce'),
(1101, 64, 'RAV4'),
(1102, 64, 'Scion'),
(1103, 64, 'Sequoia'),
(1104, 64, 'Sienna'),
(1105, 64, 'Solara'),
(1106, 64, 'Starlet'),
(1107, 64, 'Supra'),
(1108, 64, 'Tundra'),
(1109, 64, 'Urban Cruiser'),
(1110, 64, 'Venza'),
(1111, 64, 'Verso'),
(1112, 64, 'Yaris'),
(1113, 65, 'Amarok'),
(1114, 65, 'Beetle'),
(1115, 65, 'Bora'),
(1116, 65, 'Caddy'),
(1117, 65, 'Crafter'),
(1118, 65, 'EOS'),
(1119, 65, 'Fox'),
(1120, 65, 'Gol'),
(1121, 65, 'Golf 1'),
(1122, 65, 'Golf 2'),
(1123, 65, 'Golf 3'),
(1124, 65, 'Golf 4'),
(1125, 65, 'Golf 5'),
(1126, 65, 'Golf 6'),
(1127, 65, 'Golf 7'),
(1128, 65, 'Golf Plus'),
(1129, 65, 'Jetta'),
(1130, 65, 'Kaefer'),
(1131, 65, 'LT'),
(1132, 65, 'Lupo'),
(1133, 65, 'Passat B2'),
(1134, 65, 'Passat B3'),
(1135, 65, 'Passat B4'),
(1136, 65, 'Passat B5'),
(1137, 65, 'Passat B6'),
(1138, 65, 'Passat B7'),
(1139, 65, 'Passat B8'),
(1140, 65, 'Passat CC'),
(1141, 65, 'Phaeton'),
(1142, 65, 'Polo'),
(1143, 65, 'Routan'),
(1144, 65, 'Santana'),
(1145, 65, 'Scirocco'),
(1146, 65, 'Sharan'),
(1147, 65, 'T2'),
(1148, 65, 'T3'),
(1149, 65, 'T4'),
(1150, 65, 'T4 Caravelle'),
(1151, 65, 'T4 Multivan'),
(1152, 65, 'T5'),
(1153, 65, 'T5 Caravelle'),
(1154, 65, 'T5 Multivan'),
(1155, 65, 'T5 Shuttle'),
(1156, 65, 'Tiguan'),
(1157, 65, 'Touareg'),
(1158, 65, 'Touran'),
(1159, 65, 'Vento'),
(1160, 66, '24'),
(1161, 66, '340'),
(1162, 66, '360'),
(1163, 66, '440'),
(1164, 66, '460'),
(1165, 66, '480'),
(1166, 66, '740'),
(1167, 66, '760'),
(1168, 66, '850'),
(1169, 66, '940'),
(1170, 66, '960'),
(1171, 66, 'B'),
(1172, 66, 'C30'),
(1173, 66, 'C70'),
(1174, 66, 'F'),
(1175, 66, 'FH'),
(1176, 66, 'FL'),
(1177, 66, 'FM'),
(1178, 66, 'S40'),
(1179, 66, 'S60'),
(1180, 66, 'S70'),
(1181, 66, 'S80'),
(1182, 66, 'S90'),
(1183, 66, 'V40'),
(1184, 66, 'V50'),
(1185, 66, 'V60'),
(1186, 66, 'V70'),
(1187, 66, 'V90'),
(1188, 66, 'VNL'),
(1189, 66, 'XC60'),
(1190, 66, 'XC70'),
(1191, 66, 'XC90'),
(1192, 67, '1111'),
(1193, 67, '2101'),
(1194, 67, '2102'),
(1195, 67, '2103'),
(1196, 67, '2104'),
(1197, 67, '2105'),
(1198, 67, '2106'),
(1199, 67, '2107'),
(1200, 67, '2108'),
(1201, 67, '2109'),
(1202, 67, '21099'),
(1203, 67, '2110'),
(1204, 67, '2111'),
(1205, 67, '2112'),
(1206, 67, '2114'),
(1207, 67, '2115'),
(1208, 67, '2121 ''Нива'''),
(1209, 67, '21213'),
(1210, 67, '21215'),
(1211, 67, '2123'),
(1212, 67, '2129'),
(1213, 67, '2131 ''Нива'''),
(1214, 67, '2329'),
(1215, 67, 'Granta'),
(1216, 67, 'Largus'),
(1217, 67, 'Priora'),
(1218, 67, 'Vesta'),
(1219, 67, 'XRAY'),
(1220, 67, 'Калина'),
(1221, 68, '14'),
(1222, 68, '20'),
(1223, 68, '21'),
(1224, 68, '22'),
(1225, 68, '23'),
(1226, 68, '24'),
(1227, 68, '27'),
(1228, 68, '31'),
(1229, 68, '33'),
(1230, 68, '35'),
(1231, 68, '51'),
(1232, 68, '52'),
(1233, 68, '53'),
(1234, 68, '66'),
(1235, 68, '67'),
(1236, 68, '69'),
(1237, 68, 'Next'),
(1238, 69, '965'),
(1239, 69, '968'),
(1240, 69, 'Chance'),
(1241, 69, 'Forza'),
(1242, 69, 'Lanos PickUp'),
(1243, 69, 'Sens'),
(1244, 69, 'Vida'),
(1245, 69, 'Таврия'),
(1246, 69, 'Шанс'),
(1247, 70, '114'),
(1248, 70, '130'),
(1249, 70, '131'),
(1250, 70, '133'),
(1251, 70, '157'),
(1252, 70, '4331'),
(1253, 70, '45065'),
(1254, 70, '5301'),
(1255, 71, '2125'),
(1256, 71, '2715'),
(1257, 71, '2717'),
(1258, 72, '42'),
(1259, 72, '43'),
(1260, 72, '53'),
(1261, 72, '54'),
(1262, 72, '55'),
(1263, 72, '65'),
(1264, 73, '250'),
(1265, 73, '255'),
(1266, 73, '260'),
(1267, 74, '969'),
(1268, 75, '200'),
(1269, 75, '238'),
(1270, 75, '4370'),
(1271, 75, '437040'),
(1272, 75, '4371'),
(1273, 75, '437130-332'),
(1274, 75, '437141-272'),
(1275, 75, '500'),
(1276, 75, '504В'),
(1277, 75, '509А'),
(1278, 75, '5334'),
(1279, 75, '5335'),
(1280, 75, '5336'),
(1281, 75, '5337'),
(1282, 75, '5340'),
(1283, 75, '543205'),
(1284, 75, '54323'),
(1285, 75, '543268'),
(1286, 75, '54329'),
(1287, 75, '54331'),
(1288, 75, '5434'),
(1289, 75, '5440'),
(1290, 75, '544008'),
(1291, 75, '544069'),
(1292, 75, '544А08'),
(1293, 75, '5516'),
(1294, 75, '5549'),
(1295, 75, '5550'),
(1296, 75, '5551'),
(1297, 75, '6303'),
(1298, 75, '6317'),
(1299, 75, '6422'),
(1300, 75, '6425'),
(1301, 75, '6430'),
(1302, 75, '643008'),
(1303, 75, '6501'),
(1304, 75, '65108'),
(1305, 75, '6516'),
(1306, 75, '6517'),
(1307, 75, '837300'),
(1308, 75, '84329'),
(1309, 75, '93802'),
(1310, 75, '9397'),
(1311, 75, '9506'),
(1312, 75, '9758'),
(1313, 75, '975830'),
(1314, 75, 'Купава'),
(1315, 76, '2136 KOMBI'),
(1316, 76, '2137 KOMBI'),
(1317, 76, '2140'),
(1318, 76, '2141'),
(1319, 76, '400'),
(1320, 76, '401'),
(1321, 76, '402'),
(1322, 76, '403'),
(1323, 76, '406'),
(1324, 76, '407'),
(1325, 76, '408'),
(1326, 76, '412'),
(1327, 76, '423 KOMBI'),
(1328, 76, '426'),
(1329, 77, '22'),
(1330, 77, '23'),
(1331, 77, '31'),
(1332, 77, '32'),
(1333, 77, '33'),
(1334, 77, '36'),
(1335, 77, '37'),
(1336, 77, '39'),
(1337, 77, '451'),
(1338, 77, '452'),
(1339, 77, '459'),
(1340, 77, '460'),
(1341, 77, '462'),
(1342, 77, '469'),
(1343, 77, '482'),
(1344, 77, 'Hunter'),
(1345, 77, 'Патриот'),
(1346, 78, '3255'),
(1347, 78, '375'),
(1348, 78, '4320'),
(1349, 78, '5557'),
(1350, 78, '6902'),
(1351, 78, 'Другие марки авто'),
(1352, 79, 'LX'),
(1353, 80, 'A31'),
(1354, 80, 'A21'),
(1355, 81, 'B1000'),
(1356, 82, 'B40'),
(1357, 82, 'B50'),
(1358, 82, 'Fenix'),
(1359, 83, 'BS6'),
(1360, 83, 'H230'),
(1361, 84, 'CS35'),
(1362, 85, 'mi-DO'),
(1363, 85, 'on-DO'),
(1364, 86, 'Cowboy'),
(1365, 87, '1041'),
(1366, 87, 'V2'),
(1367, 88, 'Auman TL'),
(1368, 88, 'Aumark C'),
(1369, 88, 'View L'),
(1370, 89, 'C-120'),
(1371, 89, 'Columbia C-120'),
(1372, 90, 'Brio'),
(1373, 91, '3'),
(1374, 92, 'W50'),
(1375, 92, 'Multicar25'),
(1376, 93, 'Samand'),
(1377, 94, 'Refine'),
(1378, 94, 'SRV'),
(1379, 94, 'Jiangling'),
(1380, 94, 'Landwind X6'),
(1381, 95, '100'),
(1382, 95, '110'),
(1383, 96, 'MD 1042'),
(1384, 96, 'MD 1043'),
(1385, 96, 'Nysa'),
(1386, 96, '522'),
(1387, 97, 'T 815-7'),
(1388, 98, 'P601'),
(1389, 99, '353'),
(1390, 99, 'Tourist'),
(1391, 100, 'A09'),
(1392, 100, 'AH'),
(1393, 101, 'Landmark'),
(1394, 102, '2'),
(1395, 102, '3'),
(1396, 103, '642539'),
(1397, 103, 'FE 19410'),
(1398, 104, 'Aprilia'),
(1399, 104, 'BMW'),
(1400, 104, 'Ducati'),
(1401, 104, 'Harley-Davidson'),
(1402, 104, 'Honda'),
(1403, 104, 'Hors'),
(1404, 104, 'Jawa'),
(1405, 104, 'Kawasaki'),
(1406, 104, 'KTM'),
(1407, 104, 'KXD'),
(1408, 104, 'Racer'),
(1409, 104, 'Suzuki'),
(1410, 104, 'Triumph'),
(1411, 104, 'Yamaha'),
(1412, 104, 'Днепр'),
(1413, 104, 'ИЖ'),
(1414, 104, 'Минск'),
(1415, 104, 'Урал'),
(1416, 105, 'Autosan'),
(1417, 105, 'Bova'),
(1418, 105, 'DAF'),
(1419, 105, 'Hyundai'),
(1420, 105, 'Ikarus'),
(1421, 105, 'Irisbus'),
(1422, 105, 'Iveco'),
(1423, 105, 'King Long'),
(1424, 105, 'MAN'),
(1425, 105, 'Mercedes'),
(1426, 105, 'Neoplan'),
(1427, 105, 'Renault'),
(1428, 105, 'Scania'),
(1429, 105, 'Setra'),
(1430, 105, 'Toyota'),
(1431, 105, 'Van Hool'),
(1432, 105, 'Volvo'),
(1433, 105, 'Yutong'),
(1434, 105, 'ГАЗ'),
(1435, 105, 'МАЗ'),
(1436, 105, 'Неман'),
(1437, 105, 'ПАЗ'),
(1438, 105, 'Радзимич'),
(1439, 106, 'Автокран'),
(1440, 106, 'Асфальтомешалка'),
(1441, 106, 'Асфальтоукладчик'),
(1442, 106, 'Башенный кран'),
(1443, 106, 'Бетономешалка'),
(1444, 106, 'Бетононасос'),
(1445, 106, 'Бульдозер'),
(1446, 106, 'Бурильная машина'),
(1447, 106, 'Грейдер'),
(1448, 106, 'Гусеничный кран'),
(1449, 106, 'Дорожно-строительная машина'),
(1450, 106, 'Каток'),
(1451, 106, 'Компрессор'),
(1452, 106, 'Мини-экскаватор'),
(1453, 106, 'Ножничный подъёмник'),
(1454, 106, 'Самосвал'),
(1455, 106, 'Экскаватор'),
(1456, 106, 'Экскаватор-погрузчик'),
(1457, 107, 'Байдарка'),
(1458, 107, 'Катер'),
(1459, 107, 'Лодка'),
(1460, 107, 'Яхта'),
(1461, 107, 'Водный мотоцикл'),
(1462, 107, 'Двигателя'),
(1463, 108, 'Автовышка'),
(1464, 108, 'Бензовоз'),
(1465, 108, 'Вилочный погрузчик'),
(1466, 108, 'Коммунальная техника'),
(1467, 108, 'Кран-манипулятор'),
(1468, 108, 'Лесная техника'),
(1469, 108, 'Мини-погрузчик'),
(1470, 108, 'Телескопический погрузчик'),
(1471, 108, 'Фронтальный погрузчик'),
(1472, 108, 'Эвакуатор'),
(1473, 108, 'Электрогенератор'),
(1474, 109, 'автовоз'),
(1475, 109, 'автомобильный прицеп'),
(1476, 109, 'автомобильный трал'),
(1477, 109, 'бортовой'),
(1478, 109, 'бортовой с тентом'),
(1479, 109, 'грузовой'),
(1480, 109, 'дача'),
(1481, 109, 'для гидроцикла'),
(1482, 109, 'для минитехники'),
(1483, 109, 'изотерма'),
(1484, 109, 'кабельный'),
(1485, 109, 'лесовоз'),
(1486, 109, 'лодочный'),
(1487, 109, 'платформа'),
(1488, 109, 'самосвал'),
(1489, 109, 'скотовоз'),
(1490, 109, 'сменный кузов'),
(1491, 109, 'специальный'),
(1492, 109, 'строительный вагончик'),
(1493, 109, 'торговый'),
(1494, 109, 'тракторный'),
(1495, 109, 'фургон'),
(1496, 109, 'холодильник'),
(1497, 109, 'цистерна');

CREATE TABLE IF NOT EXISTS `parts` (
  `idParts` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `Users_idUsers` int(11) NOT NULL,
  PRIMARY KEY (`idParts`,`Users_idUsers`),
  KEY `fk_Parts_Users1_idx` (`Users_idUsers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `recall` (
  `idrecall` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext,
  `Users_idUsers` int(11) NOT NULL,
  PRIMARY KEY (`idrecall`,`Users_idUsers`),
  KEY `fk_recall_Users1_idx` (`Users_idUsers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `regions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `fk_Regions_Countries_idx` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `users` (
  `idUsers` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `mail` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`idUsers`),
  UNIQUE KEY `login_UNIQUE` (`login`),
  UNIQUE KEY `mail_UNIQUE` (`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


ALTER TABLE `cars`
  ADD CONSTRAINT `fk_Cars_Cities` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Cars_Marks` FOREIGN KEY (`mark`) REFERENCES `marks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Cars_Models` FOREIGN KEY (`model`) REFERENCES `models` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Cars_Users` FOREIGN KEY (`user_id`) REFERENCES `users` (`idUsers`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `cities`
  ADD CONSTRAINT `fk_Cities_Regions` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`);

ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comments_Users1` FOREIGN KEY (`Users_idUsers`) REFERENCES `users` (`idUsers`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `models`
  ADD CONSTRAINT `fk_Models_Marks` FOREIGN KEY (`mark_id`) REFERENCES `marks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `parts`
  ADD CONSTRAINT `fk_Parts_Users1` FOREIGN KEY (`Users_idUsers`) REFERENCES `users` (`idUsers`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `recall`
  ADD CONSTRAINT `fk_recall_Users1` FOREIGN KEY (`Users_idUsers`) REFERENCES `users` (`idUsers`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `regions`
  ADD CONSTRAINT `fk_Regions_Countries` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
