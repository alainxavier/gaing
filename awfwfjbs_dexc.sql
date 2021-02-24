-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 24 fév. 2021 à 18:57
-- Version du serveur :  10.3.27-MariaDB
-- Version de PHP : 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `awfwfjbs_dexc`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteurs`
--

CREATE TABLE `acteurs` (
  `id_acteur` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenoms` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `matricule` varchar(255) NOT NULL,
  `filiere` varchar(255) NOT NULL,
  `commune` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  `date_modif` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `acteurs`
--

INSERT INTO `acteurs` (`id_acteur`, `nom`, `prenoms`, `genre`, `matricule`, `filiere`, `commune`, `contact`, `email`, `date_ajout`, `date_modif`) VALUES
(41, 'KOUAME', 'Yao Alain', 'Homme', '20674159L', 'Informatique ', 'Abidjan', '08310068', 'mekkaddish@yahoo.com', '2020-12-23 12:09:46', '0000-00-00 00:00:00'),
(2, 'YAO', 'KOUAME HERVE THIERRY', 'Homme', '453412M', 'INFORMATICIEN', 'ABIDJAN', '57574994', 'amanindayao@gmail.com', '2020-11-07 15:48:17', '0000-00-00 00:00:00'),
(3, 'ACKAH', 'OHOBA VENANCE THÉODULE', 'Homme', '145536L', 'ELECTROTECH', 'DABOU', '07038117', 'ackahvenance@yahoo.fr', '2020-12-21 09:30:47', '2020-12-21 09:30:47'),
(4, 'DIBI', 'KOUASSI', 'Homme', '128621Y', 'OUVRAGES METALLIQUE', 'YOPOUGON', '07678440', 'dibi.alphonse@yahoo.fr', '2020-12-21 09:33:31', '2020-12-21 09:33:31'),
(5, 'DOSSOGUI', 'TRAORE', 'Homme', '201667Q', 'GÉNIE ÉLECTRIQUE', 'ABOBO', '05748007', 'dossoguitraore@gmail.com', '2020-12-21 09:36:10', '2020-12-21 09:36:10'),
(6, 'SAINY', 'KOUAKOU KOUAME VICTOR', 'Homme', '229334D', 'GENIE MECANIQUE', 'YOPOUGON', '09277525', 'sainykouakou@gmail.com', '2020-12-22 05:50:30', '2020-12-22 05:50:30'),
(7, 'SIAKA', 'COULIBALY', 'Homme', '160356J', 'TOURISME HOTELLERIE', 'YOPOUGON', '07628670', 'siakacoul90@gmail.com', '2020-12-22 05:53:52', '2020-12-22 05:53:52'),
(8, 'TOURE', 'MARIAME YELLY', 'Femme', '145590X', 'TAB', 'ABOBO', '07989721', 'mtoure@gmailcom', '2020-12-22 05:56:32', '2020-12-22 05:56:32'),
(9, 'YAO', 'BROU DENIS', 'Homme', '201642P', 'STA', 'ABOISSO', '07697894', 'yaodenis05@gmailcom', '2020-12-22 05:58:01', '2020-12-22 05:58:01'),
(10, 'AKODJOUA', 'N\'ZOU LOUKOU', 'Homme', '205288R', 'TAB', 'BASSAM', '07846626', 'takodjoua@yahoo.fr', '2020-12-22 06:03:04', '2020-12-22 06:03:04'),
(11, 'ALI', 'FOFANA', 'Homme', '234399C', 'GENIE MECANIQUE', 'ABOBO', '49561508', 'alfofm@yahoo.fr', '2020-12-22 06:04:57', '2020-12-22 06:04:57'),
(12, 'AMON', 'LEBESSY', 'Homme', '201657N', 'OUVRAGES METALLIQUE', 'PORT-BOUËT', '07614523', 'lebessyamon@yahoo.fr', '2020-12-22 06:07:31', '2020-12-22 06:07:31'),
(13, 'ANEM', 'DOUKOUA ADOLPHE', 'Homme', '229346R', 'GÉNIE ÉLECTRIQUE', 'PORT-BOUËT', '09866325', 'doukisanem2017@gmail.com', '2020-12-22 06:12:54', '2020-12-22 06:12:54'),
(14, 'ATTA', 'KOFFI ADJOUMANI', 'Homme', '166606G', 'GENIE CIVIL', 'GRAND-BASSAM', '07791358', 'adjoum@gmail.com', '2020-12-22 06:15:43', '2020-12-22 06:15:43'),
(15, 'BAFEMORY', 'SAKANOKO', 'Homme', '231406Z', 'EPS', 'GRAND-BASSAM', '05814787', 'sakanokobs@yahoo.fr', '2020-12-22 06:18:59', '2020-12-22 06:18:59'),
(16, 'CISSE', 'ALMANY', 'Homme', '234870G', 'ELECTROTECH', 'ANYAMA', '07414533', 'cissebamamy@yahoo.fr', '2020-12-22 06:21:34', '2020-12-22 06:21:34'),
(17, 'COULIBALY', 'MISSA', 'Homme', '126335P', 'MATHEMATIQUES', 'COCODY', '05848296', 'coziemissa@yahoo.fr', '2020-12-22 06:26:33', '2020-12-22 06:26:33'),
(18, 'DAGO', 'BOTI AUGUSTIN', 'Homme', '205529A', 'GENIE CIVIL', 'COCODY ANGRES', '06002846', 'dagobotiaugustin@yahoo.fr', '2020-12-22 06:29:29', '2020-12-22 06:29:29'),
(19, 'DIAITH', 'KADJO MALO', 'Homme', '155446U', 'ELECTROTECH', 'COCODY PALMERAIE', '07080567', 'diaithmalo@yahoo.fr', '2020-12-22 06:34:42', '2020-12-22 06:34:42'),
(20, 'DJEKOURY', 'ADIMY MARTHE', 'Femme', '205862G', 'TAB', 'BINGERVILLE', '49591508', 'tantiemath@yahoo.fr', '2020-12-22 06:37:28', '2020-12-22 06:37:28'),
(21, 'GAH', 'SIMPLICE HONORE', 'Homme', '267914Z', 'ELECTROTECH', 'KOUMASSI', '48964272', 'simplicegah@yahoo.fr', '2020-12-22 06:41:40', '2020-12-22 06:41:40'),
(22, 'IBRAHIMA', 'KONE', 'Homme', '201673N', 'INDUSTRIE DU BOIS', 'GRAND-BASSAM', '05923012', 'ikone67@yahoo.fr', '2020-12-22 06:47:26', '2020-12-22 06:47:26'),
(23, 'KAKOU', 'OI KAKOU', 'Homme', '229362R', 'GENIE ELECTRIQUE', 'ANYAMA', '07743949', 'kakouoikakou@gmail.com', '2020-12-22 06:50:10', '2020-12-22 06:50:10'),
(24, 'KONAN', 'KOUASSI CELESTIN', 'Homme', '242999E', 'TECH-D\'EXPRESSION', 'YOPOUGON', '07658068', 'kouassicelestinkonan@yahoo.fr', '2020-12-22 06:58:51', '2020-12-22 06:58:51'),
(25, 'KOUADIO', 'AKISSI JOSAPHINE', 'Femme', '205298K', 'TAB', 'COCODY ANGRE', '07934206', 'kjosephine.5.2006@gmail.com', '2020-12-22 07:01:03', '2020-12-22 07:01:03'),
(26, 'KOUADIO', 'KOUADIO', 'Homme', '205298K', 'GENIE MECANIQUE', 'YOPOUGON', '08001137', 'kouadiotostao@yahoo.fr', '2020-12-22 07:03:52', '2020-12-22 07:03:52'),
(27, 'KOUAME', 'KONAN', 'Homme', '156094Q', 'GENIE MECANIQUE', 'YOPOUGON', '05992277', 'kouamek2011@gmail.com', '2020-12-22 07:06:18', '2020-12-22 07:06:18'),
(28, 'KOUASSI', 'YAO MESCHAC', 'Homme', '205280M', 'GENIE MECANIQUE', 'WILLIAMSVILLE', '07912342', 'meschakoissi@gmail.com', '2020-12-22 07:09:58', '2020-12-22 07:09:58'),
(29, 'KOUASSI', 'KOUAME VICTOR', 'Homme', '201647L', 'CONSTRUCTION MECANIQUE', 'BINGERVILLE', '05944327', 'kwacivictor@yahoo.fr', '2020-12-22 07:12:05', '2020-12-22 07:12:05'),
(30, 'KPLE', 'KACOU', 'Homme', '277973E', 'STA', 'YOPOUGON', '07912342', 'kplekacou@yahoo.fr', '2020-12-22 07:13:49', '2020-12-22 07:13:49'),
(31, 'MAMADOUI', 'KOUYATE', 'Homme', '248943K', 'TECH-D\'EXPRESSION', 'ANYAMA', '08447219', 'madoukoy@yahoo.fr', '2020-12-22 07:15:55', '2020-12-22 07:15:55'),
(32, 'N\'DRI', 'NEE N\'GUESSAN AMELAN', 'Femme', '202610L', 'ECO. DROIT', 'WILLIAMSVILLE', '07986098', 'ndriamelan@yahoo.fr', '2020-12-22 08:06:14', '2020-12-22 08:06:14'),
(33, 'N\'GUESSAN', 'KOUAME FRANCIS', 'Homme', '242941B', 'GENIE MECANIQUE', 'YOPOUGON', '07805021', 'francismalian63@gmail.com', '2020-12-22 08:08:14', '2020-12-22 08:08:14'),
(34, 'NOUHOUM', 'DOUMBIA', 'Homme', '201711C', 'GENIE MECANIQUE', 'ABOBO', '05757765', 'nouhoumissiak@gmail.com', '2020-12-22 08:10:00', '2020-12-22 08:10:00'),
(35, 'OUSMANE', 'GUIRA', 'Homme', '139125J', 'TECH-D\'EXPRESSION', 'BINGERVILLE', '05891999', 'guyrha55@yahoo.fr', '2020-12-22 08:25:48', '2020-12-22 08:25:48'),
(36, 'SIALOU', 'KOFFI EDMOND', 'Homme', '242934U', 'ELECTROTECHNIQUE', 'YOPOUGON', '07649942', 'siakoffed@gmail.com', '2020-12-22 08:28:27', '2020-12-22 08:28:27'),
(37, 'SORO', 'BAMARA', 'Homme', '242944E', 'GENIE MECANIQUE', 'BINGERVILLE', '05890958', 'nandinbamara@yahoo.fr', '2020-12-22 08:30:46', '2020-12-22 08:30:46'),
(38, 'SOULEYMANE', 'KONE ', 'Homme', '229347J', 'GENIE ELECTRIQUE', 'YOPOUGON', '57988310', 'sienkone@yahoo.fr', '2020-12-22 08:32:26', '2020-12-22 08:32:26'),
(39, 'TAPE', 'YOFFO ALAIN', 'Homme', '255889D', 'GENIE MECANIQUE', 'YOPOUGON', '58087538', 'yoffoalain@yahoo.fr', '2020-12-22 08:33:57', '2020-12-22 08:33:57'),
(40, 'VE', 'EPSE KOUADIO LYDIE', 'Femme', '120334U', 'ANGLAIS', 'COCODY', '07648964', 'vekouadio@yahoo.fr', '2020-12-22 08:35:39', '2020-12-22 08:35:39'),
(42, 'ADAMA', 'YALIKE', 'Homme', '205278W', 'MAINTENANCE MECANIQUE', 'ADJAME', '07483346', 'yalikeadam@yahoo.fr', '2020-12-24 06:53:30', '2020-12-24 06:53:30'),
(43, 'ANDJU', 'OI ANDJU JACQUES', 'Homme', '234401X', 'ELECTROTECH', 'COCODY', '09421395', 'jacandju@yahoo.fr', '2020-12-24 06:56:43', '2020-12-24 06:56:43'),
(44, 'BAHI', 'ANNIE MARIE GENEVIEVE', 'Femme', '149597W', 'TAB', 'COCODY', '77314305', 'anniebahi@yahoo.fr', '2020-12-24 07:00:02', '2020-12-24 07:00:02'),
(45, 'BAKAYOKO', 'SOUALIO', 'Homme', '201659Y', 'FABRICATION MECANIQUE', 'YOPOUGON', '08635594', 'bakosoualiho@yahoo.fr', '2020-12-24 07:02:08', '2020-12-24 07:02:08'),
(46, 'BAMBA', 'NATOGOMA', 'Femme', '287509H', 'TECH-D\'EXPRESSION', 'KOUMASSI', '02131350', 'manybamba@yahoo.fr', '2020-12-24 07:03:58', '2020-12-24 07:03:58'),
(47, 'BLE', 'BEDA N\'DA BAH ODILE', 'Femme', '125539K', 'VSF', 'YOPOUGON', '59763256', 'nguessanericblaiseble@yahoo.fr', '2020-12-24 07:06:37', '2020-12-24 07:06:37'),
(48, 'COULIBALY', 'DAOUDA', 'Homme', '267912X', 'STA', 'YOPOUGON', '05632444', 'cool_daouda67@yahoo.fr', '2020-12-24 07:08:32', '2020-12-24 07:08:32'),
(49, 'DRAME', 'AHMADOU', 'Homme', '237132K', 'CMC', 'ABOBO', '47266479', 'drameahmeid@gmail.com', '2020-12-24 07:10:28', '2020-12-24 07:10:28'),
(50, 'KONE', 'SOUROUNA', 'Homme', '149593S', 'ELECTROTECHNIQUE', 'YOPOUGON', '07075873', 'sourouna@yahoo.fr', '2020-12-24 07:11:53', '2020-12-24 07:11:53'),
(51, 'SOUARE', 'BAKARY SIDIKI', 'Homme', '244851B', 'MATHEMATIQUES', 'YOPOUGON', '07068117', 'souarebak@yahoo.fr', '2020-12-24 07:15:52', '2020-12-24 07:15:52'),
(52, 'TONTE', 'PHILIPPE', 'Homme', '237142V', 'STA', 'YOPOUGON', '05632744', 'phtnte@gmail.com', '2020-12-24 07:18:24', '2020-12-24 07:18:24'),
(53, 'TRAORE', 'SEYDOU MOUSSA', 'Homme', '239232H', 'CONSTRUCTION MECANIQUE', 'COCODY', '07907246', 'ajkhdh@gmail.com', '2020-12-24 07:20:15', '2020-12-24 07:20:15'),
(54, 'YAPO', 'OUANDA LEONTINE', 'Femme', '255268V', 'MECANIQUE AUTO', 'COCODY', '05993288', 'leontineouanda@yahoo.fr', '2020-12-24 07:22:16', '2020-12-24 07:22:16'),
(55, 'KOUADIO', 'ESSUI EMMANUEL', 'Homme', '201039C', 'LETTRES MODERNES', 'ADJAME', '02064202', 'essui_e@yahoo.fr', '2020-12-28 04:33:25', '2020-12-28 04:33:25'),
(56, 'KOUAME', 'KOUADIO NORBERT', 'Homme', '282217W', 'TECH-D\'EXPRESSION', 'YOPOUGON', '07274359', 'ho@gmail.com', '2020-12-28 04:37:08', '2020-12-28 04:37:08'),
(57, 'KOUASSI', 'KOUAME', 'Homme', '242921X', 'FABRICATION MECANIQUE', 'ABOBO', '57495808', 'ykhtamanithierry@gmail.com', '2020-12-28 04:38:48', '2020-12-28 04:38:48'),
(58, 'EPSE DEMBELE', 'N\'GUESSAN AMANA LUCIE', 'Femme', '205440M', 'COUPE COUTURE', 'YOPOUGON', '05808050', 'nguessanldemba@yahoo.fr', '2020-12-28 04:41:23', '2020-12-28 04:41:23'),
(59, 'N\'TA', 'KODIA', 'Homme', '149609S', 'ELECTROTECH', 'COCODY', '06306603', 'ntamanfo@yahoo.fr', '2020-12-28 04:45:36', '2020-12-28 04:45:36'),
(60, 'ASSOHOU', 'ALICE', 'Femme', '258300U', 'COMMERCE / TRANSIT', 'COCODY', '07244273', 'ossohoualice@yahoo.fr', '2020-12-28 04:48:00', '2020-12-28 04:48:00'),
(61, 'TANOH', 'N\'DA JULIEN', 'Homme', '149615F', 'ELECTROTECHNIQUE', 'COCODY', '07942020', 'ndakapole@gmail.com', '2020-12-28 04:53:53', '2020-12-28 04:53:53'),
(62, 'ADAMA', 'KONE', 'Homme', '229379S', 'CONSTRUCTION MECANIQUE', 'ABOBO', '59523160', 'adama.tour@gmail.com', '2020-12-28 04:56:12', '2020-12-28 04:56:12'),
(63, 'AMANI', 'KOFFI AUGUSTIN', 'Homme', '204477D', 'GENIE CIVIL TOPO', 'YOPOUGON', '07462039', 'augustkoima@yahoo.fr', '2020-12-28 05:01:46', '2020-12-28 05:01:46'),
(64, 'ASSAHI', 'KOFFI', 'Homme', '253117A', 'MATHEMATIQUES', 'COCODY ABATTA', '06065596', 'askoffi@yahoo.fr', '2020-12-28 05:04:44', '2020-12-28 05:04:44'),
(65, 'ATTE', 'OFFOUMOU DONATIEN', 'Homme', '277976H', 'STA', 'YOPOUGON', '48738750', 'donetienatte@yahoo.fr', '2020-12-28 05:08:35', '2020-12-28 05:08:35'),
(66, 'BOHOUE', 'PLI FIDEL', 'Homme', '201666P', 'CONSTRUCTION MECANIQUE', 'YOPOUGON', '51927977', 'fidel_bohui@yahoo.fr', '2020-12-28 05:10:31', '2020-12-28 05:10:31'),
(67, 'EBOHI', 'ABY ETCHI OMER', 'Homme', '245013X', 'MECANIQUE AUTO ENGINS', 'COCODY', '05769497', 'ykhtamanithierry@gmail.com', '2020-12-28 05:12:39', '2020-12-28 05:12:39'),
(68, 'EGIN', 'AVI AKADJE THEODULE SYLVAIN', 'Homme', '242973B', 'ELECTRONIQUE', 'BINGERVILLE', '01681621', 'sylvainegni@yahoo.fr', '2020-12-28 05:15:05', '2020-12-28 05:15:05'),
(69, 'FOFANA', 'MAMADOU', 'Homme', '229460Q', 'PHYSIQUE CHIMIE', 'YOPOUGON', '57140183', 'mfofana53@yahoo.fr', '2020-12-28 06:39:19', '2020-12-28 06:39:19'),
(70, 'EPSE BAOU', 'GLAHOUROU CHRISTINE', 'Femme', '156095R', 'TAB', 'KOUMASSI', '07996895', 'dbaou@yahoo.fr ', '2020-12-28 06:41:28', '2020-12-28 06:42:31'),
(71, 'GUE', 'YAO', 'Homme', '149034U', 'GENIE CIVIL', 'KOUMASSI', '02824623', 'nestorgue@yahoo.fr', '2020-12-28 06:44:12', '2020-12-28 06:44:12'),
(72, 'GUIDY', 'GEORGETTE ELEONORE', 'Femme', '205286F', 'TAB', 'COCODY ABATTA', '09179895', 'georgetteguidy@gmail.com ', '2020-12-28 06:46:58', '2020-12-28 07:12:51'),
(73, 'KOFFI', 'KOUAKOU RENE', 'Homme', '275376M', 'MECANIQUE AUTO', 'YOPOUGON', '09281603', 'rekouakou@yahoo.fr', '2020-12-28 06:49:06', '2020-12-28 06:49:06'),
(74, 'KOUADIO', 'KRA SERGE', 'Homme', '229358V', 'GEOMETRE TOPOGRAPHE', 'BINGERVILLE', '05487235', 'ykhtamanithierry@gmail.com', '2020-12-28 06:51:09', '2020-12-28 06:51:09'),
(75, 'KOUAKOU', 'KANGA RENE', 'Homme', '155852T', 'FABRICATION MECANIQUE', 'ABOBO', '59787156', 'kangahrene@yahoo.fr', '2020-12-28 06:53:15', '2020-12-28 06:53:15'),
(76, 'KOUAKOU', 'KOUAME DENIS', 'Homme', '201648V', 'FABRICATION MECANIQUE', 'YOPOUGON', '05150198', 'ykhtamanithierry@gmail.com', '2020-12-28 06:55:55', '2020-12-28 06:55:55'),
(77, 'KOUASSI', 'N\'DRI', 'Homme', '234179Q', 'ELECTRONIQUE', 'YOPOUGON', '05150198', 'daniel.ndri@yahoo.fr', '2020-12-28 06:57:30', '2020-12-28 06:57:30'),
(78, 'KOUYA', 'WOTTO GERMAIN', 'Homme', '243009J', 'MATHEMATIQUES', 'COCODY', '40497567', 'kwottog@yahoo.fr', '2020-12-28 06:59:18', '2020-12-28 06:59:18'),
(79, 'EPSE BASSA', 'N\'GUESSAN DICK SOLANGE', 'Femme', '203509M', 'CMC', 'COCODY', '08379092', 'solang.edouard@gmail.com', '2020-12-28 07:01:28', '2020-12-28 07:01:28'),
(80, 'SEKONGO', 'DOLARGA', 'Homme', '242933T', 'ELECTROTECHNIQUE', 'YOPOUGON', '07350653', 'sekdol@hotmail.fr', '2020-12-28 07:03:26', '2020-12-28 07:03:26'),
(81, 'SORO', 'KIYALI', 'Homme', '237177Y', 'CONSTRUCTION MECANIQUE', 'BOUAFLE', '05825525', 'soro.kiyali@yahoo.fr', '2020-12-28 07:04:58', '2020-12-28 07:04:58'),
(82, 'ADAMA', 'TOURE', 'Homme', '275422U', 'GENIE CIVIL', 'YOPOUGON', '07907234', 'adamakaune07@gmailcom', '2021-01-06 06:11:45', '2021-01-06 06:11:45'),
(83, 'BARRO', 'KARAMOKO', 'Homme', '239280N', 'ELECTROTECHNIQUE', 'ADJAME', '03805309', 'barro_ka@yahoo.fr', '2021-01-06 06:13:21', '2021-01-06 06:13:21'),
(84, 'GLAÏ', 'MONOLOLAMON JACQUES', 'Homme', '229357L', 'ELECTRONIQUE', 'COCODY', '05810042', 'ykhtamanithierry@gmail.com', '2021-01-06 06:15:03', '2021-01-06 06:15:03'),
(85, 'GNAKOUA', 'GNALY NICOLAS', 'Homme', '205304R', 'MECANIQUE AUTO ENGINS', 'YOPOUGON', '41643059', 'gbeulili@gmail.com', '2021-01-06 06:17:31', '2021-01-06 06:17:31'),
(86, 'KOUASSI', 'EPSE YOHOU AMANAN ODILE', 'Femme', '237146Z', 'STA', 'SONGON', '08373656', 'odileamenan@gmail.com', '2021-01-06 06:20:22', '2021-01-06 06:20:22'),
(87, 'SEREPAHI', 'BRIKA EUGENE', 'Homme', '267922Z', 'HORLOGERIE', 'YOPOUGON', '07034035', 'emmasnte2@gmail.com', '2021-01-06 06:22:32', '2021-01-06 06:22:32'),
(88, 'ADOH', 'MICHEL', 'Homme', '267948K', 'MECANIQUE AUTO', 'YOPOUGON', '40420011', 'micheladohn@yahoo.fr', '2021-01-06 06:24:13', '2021-01-06 06:24:13'),
(89, 'ANOH', 'ASSOUMOU FRANCOIS', 'Homme', '278364U', 'TECH-D\'EXPRESSION', 'YOPOUGON', '02162566', 'Francoisanoh55@yahoo.fr', '2021-01-06 06:31:52', '2021-01-06 06:31:52'),
(90, 'AVO', 'JEAN LOUIS', 'Homme', '251770U', 'SCIENCES PHYSIQUES', 'COCODY', '40379836', 'noryvanne@yaoo.fr', '2021-01-06 06:33:55', '2021-01-06 06:33:55'),
(91, 'AYA', 'AIMEE RACHELLE AOULOU', 'Femme', '275360Z', 'COUPE COUTURE', 'YOPOUGON', '08378715', 'ykhtamanithierry@gmail.com', '2021-01-06 06:35:39', '2021-01-06 06:35:39'),
(92, 'BAHOU', 'MARIE THERESE EPSE OURA', 'Femme', '205307L', 'TAB', 'YOPOUGON', '07857282', 'ykhtamanithierry@gmail.com', '2021-01-06 06:37:23', '2021-01-06 06:37:23'),
(93, 'BAMBA', 'LUCIE NAKANTJE', 'Femme', '275354P', 'COUPE COUTURE', 'ABOBO', '07805981', 'nakanatjelucie@gmail.com', '2021-01-06 06:39:32', '2021-01-06 06:39:32'),
(94, 'BAMBA', 'SAKARIDJA', 'Homme', '287560F', 'INFORMATIQUE', 'YOPOUGON', '02230807', 'bambazaharia5@gmail.com', '2021-01-06 06:41:42', '2021-01-06 06:41:42'),
(95, 'CHERIF', 'DIAHOU', 'Homme', '278007K', 'OUVRAGES METALLIQUE', 'YOPOUGON', '07636786', 'cheridiahou2006@yahoo.fr', '2021-01-06 06:43:21', '2021-01-06 06:43:21'),
(96, 'COULIBALY', 'FOUNGATRIGUE AMED', 'Homme', '293473S', 'EPS', 'ABOBO', '07621350', 'cfacoulibaly@gmail.com', '2021-01-06 06:45:05', '2021-01-06 06:45:05'),
(97, 'COULIBALY', 'LANCINA', 'Homme', '2575005E', 'SCIENCES PHYSIQUES', 'COCODY', '03625738', 'coulibalylancina68@yahoo.com', '2021-01-06 06:48:54', '2021-01-06 06:48:54'),
(98, 'DIAN', 'YAO SIMON', 'Homme', '278230S', 'SCIENCES PHYSIQUES', 'COCODY', '02330833', 'dylev@yahoofr', '2021-01-06 06:50:28', '2021-01-06 06:50:28'),
(99, 'DOUAHI', 'MONPEHO JEROME', 'Homme', '287559A', 'GENIE CIVIL', 'YOPOUGON', '08366819', 'dmompehj@yahoo.fr', '2021-01-06 06:52:40', '2021-01-06 06:52:40'),
(100, 'EBRIN', 'N\'GORAN ERNEST', 'Homme', '299130C', 'ANGLAIS', 'YOPOUGON', '09053043', 'n_nebrin@yahoofr', '2021-01-06 06:54:25', '2021-01-06 06:54:25'),
(101, 'FOFANA', 'ADAMA', 'Homme', '275399M', 'CONSTRUCTION MECANIQUE', 'YOPOUGON', '09974161', 'fofanaadama78@gmail.com', '2021-01-06 06:55:55', '2021-01-06 06:55:55'),
(102, 'GBOGBOU', 'MARC', 'Homme', '258345V', 'COMMERCE TRANSIT', 'YOPOUGON', '05741978', 'mgbogbou001@gmail.com', '2021-01-06 06:57:47', '2021-01-06 06:57:47'),
(103, 'KPLAO', 'GUEI ANDRE', 'Homme', '275384E', 'TECH-D\'EXPRESSION', 'YOPOUGON', '47478077', 'kplaogueiandre@yahoo.fr', '2021-01-06 06:59:48', '2021-01-06 06:59:48'),
(104, 'MANOUAN', 'ANIEDOU', 'Homme', '275384E', 'CONSTRUCTION MECANIQUE', 'BINGERVILLE', '59836350', 'aniedoueunice@yahoo.fr', '2021-01-06 07:01:31', '2021-01-06 07:01:31'),
(105, 'N\'GUESSAN', 'KOUAKOU ARTHUR', 'Homme', '306217F', 'TECH-D\'EXPRESSION', 'BINGERVILLE', '47012494', 'ngkarthur@yahoo.fr', '2021-01-06 07:03:20', '2021-01-06 07:03:20'),
(106, 'SIKA', 'SIKA BERNADIN', 'Homme', '287707F', 'REVETEMENT SOL et MUR', 'YOPOUGON', '59237190', 'sikabedel@gmail.com', '2021-01-06 07:05:16', '2021-01-06 07:05:16'),
(107, 'ZRAN', 'GBAHOU', 'Homme', '234386X', 'MENUISERIE EBENISTERIE', 'GRAND-BASSAM', '40731805', 'zrangbabazin@gmail.com', '2021-01-06 07:07:15', '2021-01-06 07:07:15'),
(108, 'IROGBO', 'DJERE VALENTIN', 'Homme', '242925T', 'ECONOMIQUES ET SOCIALES', 'YOPOUGON', '07695458', 'irogbodjerevalentin@yahoo.fr', '2021-01-06 07:12:49', '2021-01-06 07:12:49'),
(109, 'ISSA', 'TRAORE', 'Homme', '248841M', 'ECONOMIQUES ET SOCIALES', 'COCODY', '07087364', 'ykhtamanithierry@gmail.com', '2021-01-06 07:14:14', '2021-01-06 07:14:14'),
(110, 'KEITA', 'DJIBA KAVALE', 'Homme', '275470Q', 'ECONOMIQUES ET SOCIALES', 'KOUMASSI', '01212610', 'keitakavale@gmail.com', '2021-01-06 07:16:26', '2021-01-06 07:16:26'),
(111, 'KHADIO', 'RAYMOND BERNARD', 'Homme', '285569A', 'ANGLAIS', 'YOPOUGON', '02369016', 'raymondkhadio1@gmail.com', '2021-01-06 07:18:19', '2021-01-06 07:18:19'),
(112, 'KOFFI', 'KOUAKOU JEAN-YVES', 'Homme', '306643R', 'CONSTRUCTION MECANIQUE', 'TREICHVILLE', '57327940', 'mongroupe225@gmail.com', '2021-01-06 07:20:38', '2021-01-06 07:20:38'),
(113, 'KOFFI', 'DIASSIE GEORGES', 'Homme', '280404D', 'FRANCAIS', 'YOPOUGON', '07758417', 'diassie66@gmailcom', '2021-01-06 07:22:26', '2021-01-06 07:22:26'),
(114, 'KOFFI', 'YAO GREGOIRE', 'Homme', '267916T', 'CONSTRUCTION MECANIQUE', 'YOPOUGON', '58281557', 'koffygreg@gmail.com', '2021-01-06 07:24:11', '2021-01-06 07:24:11'),
(115, 'KOKON', 'KOUAKOU NORBERT', 'Homme', '282306G', 'VST', 'AGBOVILLE', '07643499', 'fasseu3@gmail.com', '2021-01-06 07:25:39', '2021-01-06 07:25:39'),
(116, 'KOLY', 'KONAN LUCAS', 'Homme', '287852Y', 'GENIE CIVIL', 'SAN PEDRO', '40731242', 'kolylucas@gmail.com', '2021-01-06 07:27:24', '2021-01-06 07:27:24'),
(117, 'KOMENAN', 'KOUASSI OSCAR', 'Homme', '282283Z', 'VSF', 'AGBOVILLE', '07069103', 'oscarkomenan@yahoo.fr', '2021-01-06 07:28:56', '2021-01-06 07:28:56'),
(118, 'KONAN', 'AYA CLARICE EPSE ABONGA', 'Femme', '275364R', 'COUPE COUTURE', 'YOPOUGON', '07583929', 'abongaclarise@yahoo.com', '2021-01-06 07:30:47', '2021-01-06 07:30:47'),
(119, 'KONE', 'N\'GOUNOUROU DOSSONGUI', 'Homme', '306618Q', 'ENTREPRENEURIAT', 'ANYAMA', '48482586', 'konedoss@yahoo.fr', '2021-01-06 07:33:38', '2021-01-06 07:33:38'),
(120, 'KOUADIO', 'CATHERINE', 'Homme', '306905H', 'DROIT', 'YOPOUGON', '08880327', 'kouassiclaverie1@gmailcom', '2021-01-06 07:48:39', '2021-01-06 07:48:39'),
(121, 'KOUADIO', 'MODESTE', 'Homme', '306877C', 'FABRICATION MECANIQUE', 'YOPOUGON', '07631053', 'kouadioomodo@gmailcom', '2021-01-06 07:50:34', '2021-01-06 07:50:34'),
(122, 'KOUADIO', 'MANZAN ANRIEN', 'Homme', '282208N', 'FRANCAIS', 'COCODY', '08824609', 'kouadjonda@gmail.com', '2021-01-06 07:52:46', '2021-01-06 07:52:46'),
(123, 'KOUAKOU', 'BENE RICHARD', 'Homme', '258271T', 'CMC', 'YOPOUGON', '08009133', 'benerichard68@yahoocom', '2021-01-06 08:12:55', '2021-01-06 08:12:55'),
(124, 'KOUAKOU', 'KONAN MOÏSE', 'Homme', '314966U', 'INDUSTRIE DU BOIS', 'YOPOUGON', '07904629', 'konamoise1@yahoo.fr', '2021-01-06 08:14:24', '2021-01-06 08:14:24'),
(125, 'KOUAKOU', 'KOUAME BENJAMIN', 'Homme', '293466T', 'EPS', 'BINGERVILLE', '47296161', 'kouakoubenjamindpdp@gmail.com', '2021-01-06 08:16:34', '2021-01-06 08:16:34'),
(126, 'KOUAKOU', 'RIGOBERT', 'Homme', '287501Z', 'CMC', 'YOPOUGON', '05937009', 'bertgori8@gmail.com', '2021-01-06 08:18:16', '2021-01-06 08:18:16'),
(127, 'KOUAME', 'APPOH', 'Homme', '287537L', 'TECHNIQUE HOTELIERE', 'YOPOUGON', '02484347', 'ykhtamanithierry@gmail.com', '2021-01-06 08:20:29', '2021-01-06 08:20:29'),
(128, 'KOUAO', 'MICHEL', 'Homme', '314960A', 'INDUSTRIE DU BOIS', 'YOPOUGON', '48493359', 'kouaomichel5@gmail.com', '2021-01-06 08:22:24', '2021-01-06 08:22:24'),
(129, 'KOUASSI', 'AKISSI KANH HELENE', 'Femme', '356121X', 'DROIT', 'PLATEAU', '05844870', 'tehekouassi@yahoo.fr', '2021-01-06 08:24:49', '2021-01-06 08:24:49'),
(130, 'KRAIDY', 'OHOLLY AUGUSTIN', 'Homme', '282348R', 'CUISINE', 'COCODY', '01107465', 'ykhtamanithierry@gmail.com', '2021-01-06 08:26:24', '2021-01-06 08:26:24'),
(131, 'LATTE', 'GNAGNE BASILE', 'Homme', '278035E', 'IMPRIMERIE', 'YOPOUGON', '07739688', 'gnagnebasile@gmail.com', '2021-01-06 08:28:18', '2021-01-06 08:28:18'),
(132, 'LEBO', 'AMRAN DESIREE', 'Femme', '243013V', 'GESTION COMPTABILITE', 'COCODY', '05789556', 'angora1856@yahoo.fr', '2021-01-06 08:30:40', '2021-01-06 08:30:40'),
(133, 'M\'BOBIE', 'FATTO NEE MELEDJE HENRI-SOLANGE', 'Femme', '204870K', 'TAB', 'COCODY', '07448383', 'someleye@yahoo.fr', '2021-01-06 08:33:10', '2021-01-06 08:33:10'),
(134, 'NIAMIEN', 'KOUAKOU PASCAL', 'Homme', '287627W', 'INFORMATIQUE', 'BINGERVILLE', '07507330', 'niamienkp@gmail.com', '2021-01-06 08:35:34', '2021-01-06 08:35:34'),
(135, 'NIAMKEY', 'DANGNI PATRICE', 'Homme', '253527X', 'EPS', 'PORT-BOUËT', '07989847', 'niamkey-patrice@yahoo.fr', '2021-01-06 08:38:04', '2021-01-06 08:38:04'),
(136, 'OBITE', 'KADJI', 'Homme', '155667H', 'GENIE CIVIL', 'YOPOUGON', '05718454', 'ykhtamanithierry@gmail.com', '2021-01-06 08:39:28', '2021-01-06 08:39:28'),
(137, 'OBROU', 'EPSE NASSIE OUATOU ELISABETH', 'Femme', '149392G', 'CMC', 'COCODY', '48688994', 'mamannasie@gmail.com', '2021-01-06 08:41:30', '2021-01-06 08:41:30'),
(138, 'OUATTARA', 'ABDOUL KARIM', 'Homme', 'FABRICATION MECANIQUE', 'APR', 'ABOBO', '07835210', 'ouatabdo@yahoo.fr', '2021-01-06 08:55:00', '2021-01-06 08:55:00'),
(139, 'SILUE', 'ALY', 'Homme', '251946H', 'GENIE ELECTRIQUE', 'YOPOUGON', '07958592', 'siluealy@gmail.com', '2021-01-06 08:57:11', '2021-01-06 08:57:11'),
(140, 'SILUE', 'DRAMANE', 'Homme', '287840G', 'GENIE CIVIL', 'YOPOUGON', '05061500', 'gustavesilue08@gmail.com', '2021-01-06 08:58:55', '2021-01-06 08:58:55'),
(141, 'SOPPI-MEL', 'STEPHANE NOELLE', 'Femme', '293263F', 'SCIENCE DE BUREAU (ESTHETIQUE)', 'YOPOUGON', '08190975', 'stephaniesoppimel@gmail.com', '2021-01-06 09:02:04', '2021-01-06 09:02:04'),
(142, 'TOURE', 'KATY CLOTILDE EPSE NAHOUNOU', 'Femme', '306829C', 'SCIENCE DE BUREAU (ESTHETIQUE)', 'ADJAME', '09182864', 'tourekaty1@gmail.com', '2021-01-06 09:04:40', '2021-01-06 09:04:40'),
(143, 'YAKE', 'SOUMAHORO', 'Homme', '227288E', 'VSF', 'YOPOUGON', '07975812', 'yakesoumahoro@yahoo.fr', '2021-01-06 09:06:28', '2021-01-06 09:06:28'),
(144, 'YAO', 'KOUASSI', 'Homme', '237141U', 'GESTION COMPTABILITE', 'YOPOUGON', '03639776', 'yao1963@yahoo.fr', '2021-01-06 09:08:33', '2021-01-06 09:08:33'),
(145, 'ZIAO', 'PAAFOLO', 'Homme', '324006Y', 'CMC', 'YOPOUGON', '07048200', 'paafoloziao@gmail.com', '2021-01-06 09:10:24', '2021-01-06 09:10:24'),
(146, 'ZOGBO', 'LYDIE DENISE', 'Femme', '300620U', 'GENIE CIVIL', 'RIVIERA/ABATTA', '05480708', 'lyde.zo@gmail.com', '2021-01-06 09:12:40', '2021-01-06 09:12:40'),
(147, 'AHUI', 'HILLAIRE', 'Homme', '324969H', 'DECORATION TEXTILE', 'COCODY', '05333848', 'h.ahuimacy@gmail.com', '2021-01-06 09:14:53', '2021-01-06 09:14:53'),
(148, 'AKA', 'ALEXANDRE', 'Homme', '278043N', 'MENUISERIE EBENISTERIE', 'GRAND-BASSAM', '78134648', 'nananaka1er@gmail.com', '2021-01-06 09:16:54', '2021-01-06 09:16:54'),
(149, 'ALLAVO', 'OSWALD GAETAN R.', 'Homme', '306857G', 'CERAMIQUE', 'GRAND-BASSAM', '40480659', 'oswaldrodriqueallavo@yahoo.fr', '2021-01-06 09:19:31', '2021-01-06 09:19:31'),
(150, 'KOFFI', 'KOUAME ALAIN', 'Homme', '282345E', 'GENIE CIVIL', 'YOPOUGON', '03381543', 'kofalain66@gamil.com', '2021-01-06 09:22:20', '2021-01-06 09:22:20'),
(151, 'KOUAME', 'N\'GUESSAN BERNARD', 'Homme', '275433X', 'GENIE CIVIL', 'PORT-BOUËT', '47221838', 'kouamebernus@gmail.com', '2021-01-06 09:24:13', '2021-01-06 09:24:13');

-- --------------------------------------------------------

--
-- Structure de la table `activites`
--

CREATE TABLE `activites` (
  `id` int(11) NOT NULL,
  `id_acteur` int(11) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `lieu_intervention` varchar(255) NOT NULL,
  `annees` varchar(255) NOT NULL,
  `date_modification` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `activites_2017_2018`
--

CREATE TABLE `activites_2017_2018` (
  `id` int(11) NOT NULL,
  `id_acteur` int(11) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `lieu_intervention` varchar(255) NOT NULL,
  `annees` varchar(255) NOT NULL,
  `date_modification` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `activites_2018_2019`
--

CREATE TABLE `activites_2018_2019` (
  `id` int(11) NOT NULL,
  `id_acteur` int(11) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `lieu_intervention` varchar(255) NOT NULL,
  `annees` varchar(255) NOT NULL,
  `date_modification` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `activites_2019_2020`
--

CREATE TABLE `activites_2019_2020` (
  `id` int(11) NOT NULL,
  `id_acteur` int(11) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `lieu_intervention` varchar(255) NOT NULL,
  `annees` varchar(255) NOT NULL,
  `date_modification` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `activites_2019_2020`
--

INSERT INTO `activites_2019_2020` (`id`, `id_acteur`, `fonction`, `lieu_intervention`, `annees`, `date_modification`) VALUES
(3, 3, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:05:11'),
(4, 15, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:06:18'),
(5, 14, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:06:20'),
(6, 13, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:06:22'),
(7, 12, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:06:25'),
(8, 11, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:06:27'),
(9, 10, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:06:31'),
(10, 16, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:07:06'),
(11, 18, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:07:07'),
(12, 17, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:07:09'),
(13, 4, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:07:11'),
(14, 19, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:07:12'),
(15, 20, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:07:16'),
(16, 25, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:07:59'),
(17, 24, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:08:00'),
(18, 23, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:08:02'),
(19, 22, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:08:04'),
(20, 21, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:08:06'),
(21, 5, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:08:07'),
(22, 9, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:11:23'),
(23, 40, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:11:25'),
(24, 8, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:11:27'),
(25, 39, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:11:29'),
(26, 38, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:11:31'),
(27, 37, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:11:33'),
(28, 36, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:11:36'),
(29, 7, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:11:38'),
(30, 6, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:11:39'),
(31, 35, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:11:42'),
(32, 34, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:11:44'),
(33, 32, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:11:46'),
(34, 33, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:11:48'),
(35, 31, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:11:50'),
(36, 30, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:36:15'),
(37, 29, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:36:17'),
(38, 28, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:36:19'),
(39, 27, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:36:21'),
(40, 26, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:36:23'),
(41, 1, 'Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-22 12:36:26'),
(42, 62, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:36:45'),
(43, 42, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:38:16'),
(44, 63, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:39:16'),
(45, 43, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:39:38'),
(46, 64, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:41:03'),
(47, 60, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:42:09'),
(48, 46, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:43:20'),
(49, 45, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:43:22'),
(50, 44, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:43:24'),
(51, 65, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:43:27'),
(52, 47, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:44:14'),
(53, 66, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:44:30'),
(54, 48, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:44:39'),
(55, 49, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:44:49'),
(56, 67, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:45:57'),
(57, 68, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:46:03'),
(58, 58, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:46:12'),
(59, 50, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:46:32'),
(60, 55, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:46:44'),
(61, 56, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:46:51'),
(62, 57, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:52:34'),
(63, 59, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:52:39'),
(64, 51, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:53:33'),
(65, 61, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:53:40'),
(66, 52, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:54:02'),
(67, 53, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:55:15'),
(68, 54, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 05:55:29'),
(69, 70, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 07:08:46'),
(70, 79, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 07:08:56'),
(71, 69, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 07:09:01'),
(72, 71, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 07:09:05'),
(73, 73, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 07:09:23'),
(74, 74, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 07:09:31'),
(75, 75, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 07:09:39'),
(76, 76, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 07:09:56'),
(77, 77, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 07:10:05'),
(78, 78, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 07:10:14'),
(79, 80, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 07:10:26'),
(80, 81, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 07:10:35'),
(81, 72, 'Vice Président de Jurys de Correction et de Délibération', 'CBCG COCODY', '2019-2020', '2020-12-28 07:14:27'),
(82, 82, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:27:03'),
(83, 88, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:28:35'),
(84, 147, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:29:05'),
(85, 148, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:29:23'),
(86, 149, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:29:46'),
(87, 89, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:30:23'),
(88, 90, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:30:38'),
(89, 91, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:30:54'),
(90, 92, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:31:32'),
(91, 93, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:31:50'),
(92, 94, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:32:03'),
(93, 83, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:32:44'),
(94, 95, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:33:06'),
(95, 96, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:33:27'),
(96, 97, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:33:53'),
(97, 98, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:34:08'),
(98, 99, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:35:09'),
(99, 100, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:35:10'),
(100, 102, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:35:12'),
(101, 101, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:35:14'),
(102, 84, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:36:05'),
(103, 85, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:36:09'),
(104, 116, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:42:02'),
(105, 111, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:42:06'),
(106, 113, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:42:07'),
(107, 112, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:42:09'),
(108, 150, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:42:11'),
(109, 114, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:42:13'),
(110, 115, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:42:15'),
(111, 108, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:42:21'),
(112, 109, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:42:23'),
(113, 110, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:42:25'),
(114, 121, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:45:38'),
(115, 122, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:45:39'),
(116, 119, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:45:41'),
(117, 118, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:45:42'),
(118, 117, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:45:43'),
(119, 120, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:45:46'),
(120, 86, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:49:41'),
(121, 103, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:49:43'),
(122, 130, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:49:45'),
(123, 131, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:49:46'),
(124, 132, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:49:48'),
(125, 133, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:49:51'),
(126, 123, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:51:33'),
(127, 124, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:51:35'),
(128, 125, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:51:37'),
(129, 126, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:51:38'),
(130, 127, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:51:41'),
(131, 128, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:52:46'),
(132, 129, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:53:06'),
(133, 134, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:55:15'),
(134, 135, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:55:16'),
(135, 136, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:55:18'),
(136, 137, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:55:20'),
(137, 138, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:55:21'),
(138, 105, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:56:19'),
(139, 139, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:56:55'),
(140, 140, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:56:57'),
(141, 106, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:57:20'),
(142, 107, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:58:23'),
(143, 104, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 09:58:48'),
(144, 141, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 10:00:43'),
(145, 142, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 10:01:25'),
(146, 143, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 10:01:28'),
(147, 144, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 10:02:52'),
(148, 145, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 10:03:40'),
(149, 146, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 10:04:01'),
(150, 151, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 10:04:25'),
(151, 87, 'Commissaires de Centres de Composition', 'CBCG COCODY', '2019-2020', '2021-01-06 10:05:08');

-- --------------------------------------------------------

--
-- Structure de la table `activites_2020_2021`
--

CREATE TABLE `activites_2020_2021` (
  `id` int(11) NOT NULL,
  `id_acteur` int(11) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `lieu_intervention` varchar(255) NOT NULL,
  `annees` varchar(255) NOT NULL,
  `date_modification` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `activites_2021_2022`
--

CREATE TABLE `activites_2021_2022` (
  `id` int(11) NOT NULL,
  `id_acteur` int(11) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `lieu_intervention` varchar(255) NOT NULL,
  `annees` varchar(255) NOT NULL,
  `date_modification` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fonctions`
--

CREATE TABLE `fonctions` (
  `id_fonction` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fonctions`
--

INSERT INTO `fonctions` (`id_fonction`, `libelle`, `date_create`) VALUES
(1, 'Président de Jurys de Correction et de Délibération', '2020-11-02 00:00:00'),
(2, 'Présidents de Jurys de Délibération', '2020-11-02 00:00:00'),
(3, 'Vice Président de Jurys de Correction et de Délibération', '2020-11-02 00:00:00'),
(4, 'Commissaires de Correction', '2020-11-02 00:00:00'),
(5, 'Commissaires de Centres de Composition', '2020-11-02 00:00:00'),
(6, 'Commissaires de Composition', '2020-11-02 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `inscriptions`
--

CREATE TABLE `inscriptions` (
  `id_inscription` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `date_inscription` datetime NOT NULL,
  `etats` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `inscriptions`
--

INSERT INTO `inscriptions` (`id_inscription`, `email`, `pass`, `date_inscription`, `etats`) VALUES
(1, 'mekkaddish@yahoo.com', 'a95dc4e899ac156e6e0b6666dd970c9959e0e4fd948177c263543b23492768ec', '2020-11-07 14:37:05', 'En attente'),
(2, 'amanindayao@gmail.com', '3bf0a8628b6cb9d3af64c6d8fcfba09ceb59eeb45bdd97a38fd828c6cd1b26d6', '2020-11-07 15:45:36', 'En attente');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_connexion` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteurs`
--
ALTER TABLE `acteurs`
  ADD PRIMARY KEY (`id_acteur`);

--
-- Index pour la table `activites`
--
ALTER TABLE `activites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `activites_2017_2018`
--
ALTER TABLE `activites_2017_2018`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `activites_2018_2019`
--
ALTER TABLE `activites_2018_2019`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `activites_2019_2020`
--
ALTER TABLE `activites_2019_2020`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `activites_2020_2021`
--
ALTER TABLE `activites_2020_2021`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `activites_2021_2022`
--
ALTER TABLE `activites_2021_2022`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fonctions`
--
ALTER TABLE `fonctions`
  ADD PRIMARY KEY (`id_fonction`);

--
-- Index pour la table `inscriptions`
--
ALTER TABLE `inscriptions`
  ADD PRIMARY KEY (`id_inscription`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteurs`
--
ALTER TABLE `acteurs`
  MODIFY `id_acteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT pour la table `activites`
--
ALTER TABLE `activites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `activites_2017_2018`
--
ALTER TABLE `activites_2017_2018`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `activites_2018_2019`
--
ALTER TABLE `activites_2018_2019`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `activites_2019_2020`
--
ALTER TABLE `activites_2019_2020`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT pour la table `activites_2020_2021`
--
ALTER TABLE `activites_2020_2021`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `activites_2021_2022`
--
ALTER TABLE `activites_2021_2022`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `fonctions`
--
ALTER TABLE `fonctions`
  MODIFY `id_fonction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `inscriptions`
--
ALTER TABLE `inscriptions`
  MODIFY `id_inscription` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
