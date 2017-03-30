-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 30, 2017 at 06:02 PM
-- Server version: 5.6.33
-- PHP Version: 5.6.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `tiresias_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `submissions`;
DROP TABLE IF EXISTS `ar_internal_metadata`;
DROP TABLE IF EXISTS `authors`;
DROP TABLE IF EXISTS `collections`;
DROP TABLE IF EXISTS `languages`;
DROP TABLE IF EXISTS `media`;
DROP TABLE IF EXISTS `schema_migrations`;
DROP TABLE IF EXISTS `translators`;
DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `works`;




CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2017-02-09 21:56:20', '2017-02-09 21:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Publius Ovidius Naso', '2017-02-09 22:40:48', '2017-02-09 22:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Latin Gems', '2017-02-10 00:43:48', '2017-02-10 00:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'English', '2017-02-10 00:52:34', '2017-02-10 00:52:53'),
(2, 'French', '2017-02-10 00:52:41', '2017-02-10 00:52:41'),
(4, 'German', '2017-02-10 03:32:19', '2017-02-10 03:32:19'),
(5, 'Italian', '2017-02-10 03:32:24', '2017-02-10 03:32:24'),
(6, 'Spanish', '2017-02-10 03:32:35', '2017-02-10 03:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Computer File', '2017-02-10 03:32:54', '2017-02-10 03:32:54'),
(2, 'eBook', '2017-02-10 03:33:02', '2017-02-10 03:33:02'),
(3, 'eText', '2017-02-10 03:33:09', '2017-02-10 03:33:09'),
(4, 'Microfilm', '2017-02-10 03:33:19', '2017-02-10 03:33:19'),
(5, 'Print', '2017-02-10 01:02:51', '2017-02-10 03:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20170209215405'),
('20170210004107'),
('20170210004823'),
('20170210005411'),
('20170210010424'),
('20170210010947'),
('20170210014425'),
('20170220193151'),
('20170223184230'),
('20170225014242'),
('20170303193131'),
('20170303193757'),
('20170303203817'),
('20170321172855'),
('20170323163607');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `work_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `oclc` varchar(255) DEFAULT NULL,
  `edition` varchar(255) DEFAULT NULL,
  `translator_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `is_prose` tinyint(1) DEFAULT NULL,
  `is_poetry` tinyint(1) DEFAULT NULL,
  `publication_year` int(11) DEFAULT NULL,
  `collection_id` int(11) DEFAULT NULL,
  `notes` text,
  `medium_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `editor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `title`, `work_id`, `author_id`, `isbn`, `oclc`, `edition`, `translator_id`, `language_id`, `is_prose`, `is_poetry`, `publication_year`, `collection_id`, `notes`, `medium_id`, `created_at`, `updated_at`, `approved`, `entry_id`, `completed`, `editor_id`) VALUES
(1, 'Ovid\'s Metamorphoses ... Translated by Mr. Dryden. Mr. Addison ... and other eminent hands. Publish\'d by Sir Samuel Garth ... The fourth edition.', 1, 1, '', '562298492', '', 1, 1, 0, 1, 1794, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(2, 'Ovid\'s Metamorphoses', 1, 1, '', '652376391', '', 2, 1, 0, 1, 1972, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(3, 'The scourge of Venus (1614).', 1, 1, '', '7146626', '', 3, 1, 0, 1, 1876, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(4, 'Ovid\'s Metamorphoses, in fifteen books : with the arguments and notes of John Minellius translated into English to which is marginally added, a prose version ... for the life of the schools', 1, 1, '', '55741097', '', 4, 1, 0, 1, 1756, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(5, 'A New Translation of Ovid\'s Metamorphoses into English prose ... With the Latin text ... and ... notes ... The third edition, etc. [By Nathan Bailey. With an engraved frontispiece.].', 1, 1, '', '562295459', '', 4, 1, 0, 1, 1759, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(6, 'Ovid\'s Metamorphoses, in fifteen books: with the arguments and notes of John Minellius translated into English. To which is marginally added, a prose version; ... For the use of schools. By Nathan Bailey', 1, 1, '', '836744905', '', 4, 1, 1, 0, 1770, NULL, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(7, 'Ouids Metamorphosis translated grammatically, and also according to the propriety of our English tongue, so farre as grammar and the verse will well beare. Written chiefly for the good of schooles, to be vsed according to the directions in the preface to ', 1, 1, '', '216891387', '', 5, 1, 0, 1, 1618, NULL, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(8, 'Ovids Metamorphosis : translated grammatically and also according to the propriety of our English tongue, as far as grammar and the verse will well bear : written chiefly for the good of schools ...', 1, 1, '', '54292087', '', 5, 1, 0, 1, 1656, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(9, 'The Metamorphoses. Book VIII  ', 1, 1, '', '779533907', '', 6, 1, 1, 0, 1935, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(10, 'Ovid in English, Part 1, Metamorphoses', 1, 1, '', '877136332', '', 7, 1, 1, 0, 2013, NULL, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(11, 'Ovyde hys booke of Methamorphose: Books X-XV', 1, 1, '', '154151854', '', 8, 1, 0, 1, 1924, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(12, 'Ovyde of Methamorphoseos Pylemon & Bauchys', 1, 1, '', '70836287', '', 8, 1, 0, 1, 1999, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(13, 'Ten select books of Ovid\'s Metamorphoses', 1, 1, '', '62834292', '', 9, 1, 0, 1, 2010, NULL, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(14, '[Ovid\'s Metamorphoses ... Translated by Mr. Dryden. Mr. Addison ... and other eminent hands. Publish\'d by Sir Samuel Garth ... The fourth edition.]', 1, 1, '', '562298482', '', 10, 1, 0, 1, 1751, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(15, '[Ovid\'s Metamorphoses ... Translated by Mr. Dryden. Mr. Addison ... and other eminent hands. Publish\'d by Sir Samuel Garth ... The fourth edition.]', 1, 1, '', '562298501', '', 10, 1, 0, 1, 1807, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(16, '[Ovid\'s Metamorphoses. Translated by Dr. Garth and others.]', 1, 1, '', '562298552', '', 10, 1, 0, 1, 1812, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(17, '[Ovid\'s Metamorphoses. Translated by Dr. Garth and others.]', 1, 1, '', '809605890', '', 10, 1, 0, 1, 1815, NULL, '', 5, '0000-00-00 00:00:00', '2017-03-23 16:32:38', 1, NULL, 1, 8),
(18, 'Ovid\'s metamorphoses', 1, 1, '', '925822464', '', 10, 1, 0, 1, 1815, NULL, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(19, 'A new translation of Ovid\'s Metamorphoses into English prose, as near the original as the different idioms of the Latin and English languages will allow. With the Latin text and order of construction on the same page; and critical, historical, geographica', 1, 1, '', '643756672', '', 11, 1, 1, 0, 1748, NULL, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(20, 'A New Translation of Ovid\'s Metamorphoses', 1, 1, '', '508045557', '', 11, 1, 1, 0, 1750, NULL, '\r\n', 2, '0000-00-00 00:00:00', '2017-03-23 16:33:42', 1, NULL, 1, 8),
(21, 'Ovid\'s Metamorphoses, translated into English prose ... with the Latin text and order of construction on the same page', 1, 1, '', '837857443', '', 11, 1, 1, 0, 1797, NULL, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(22, 'The Passion of Byblis, made English [in verse] from Ovid. Me[t]am. Lib. 9. By Mr Dennis.', 1, 1, '', '562298886', '', 12, 1, 0, 1, 1692, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(23, 'Ovid', 1, 1, '', '15695230', '', 13, 1, 0, 1, 1872, NULL, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(24, 'Ovid\'s Metamorphoses, in fifteen books', 1, 1, '', '3423731', '', 14, 1, 0, 1, 1727, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(25, 'Ovid\'s Metamorphoses, in fifteen books', 1, 1, '', '8333642', '', 14, 1, 0, 1, 1751, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(26, 'Ovid\'s Metamorphoses', 1, 1, '', '53070507', '', 14, 1, 0, 1, 1812, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(27, 'Ovid\'s Metamorphoses', 1, 1, '', '40181179', '', 14, 1, 0, 1, 1812, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(28, 'Metamorphoses', 1, 1, '', '16594660', '', 14, 1, 0, 1, 1976, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(29, 'Ovid\'s Metamorphosis englished', 1, 1, '', '606913517', '', 15, 1, 0, 1, 1656, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(30, 'The XV bookes of P. Oudius Naso; entituled Metamorphosis', 1, 1, '', '606542589', '', 16, 1, 0, 1, 1584, NULL, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(31, 'The XV bookes of P. Oudius Naso; entituled Metamorphosis', 1, 1, '', '71495322', '', 16, 1, 0, 1, 1593, NULL, '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(32, 'The fifteene bookes of P. Ouidus Naso:entituled, Metamorphosis', 1, 1, '', '606523505', '', 16, 1, 0, 1, 1612, NULL, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(33, 'Metamorphoses', 1, 1, '', '59432669', '', 16, 1, 0, 1, 1945, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(34, 'The XV bookes of P. Oudius Naso; entituled Metamorphosis', 1, 1, '', '562297300', '', 16, 1, 0, 1, 1977, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(35, 'Out of Ovid\'s Metamorphoses: Icarus done into English', 1, 1, '', '49254174', '', 16, 1, 1, 0, 1983, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(36, 'The story of Pomona and Vertumnus', 1, 1, '', '20044172', '', 16, 1, 0, 1, 1987, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(37, 'Ovid : in six volumes. Metamorphoses ', 1, 1, '', '634057379', '', 17, 1, 0, 1, 2001, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(38, 'A new translation of the second book of Ovid\'s Metamorphoses', 1, 1, '', '83364498', '', 18, 1, 0, 1, 1783, NULL, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(39, 'The Metamorphoses', 1, 1, '', '1062162', '', 29, 1, 0, 1, 1960, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(40, 'Wisdoms conquest. Or, An explanation and grammaticall translation of the thirteenth book of Ovids Metamorphoses ...', 1, 1, '', '15284726', '', 20, 1, 0, 1, 1651, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(41, 'A Selection from the Metamorphoses of Ovid, adapted to the Hamiltonian System, by a literal and interlineal translation ... By J. Hamilton.', 1, 1, '', '562295547', '', 21, 1, 1, 0, 1829, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(42, 'Ovid : Metamorphoses, III.1-120. A Translations by WP Steen ... and BJ Hayes', 1, 1, '', '562298837', '', 22, 1, 0, 1, 1901, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(43, 'Selections from the Metamorphoses and Heroides', 1, 1, '', '629339', '', 23, 1, 0, 1, 1889, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(44, 'Ovid, Metamorphoses', 1, 1, '', '928107153', '', 24, 1, 0, 1, 1985, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(45, 'Ovid : in six volumes / IV: Metamorphoses, II: Books IX-XV / with an English transl. by Frank Justus Miller', 1, 1, '', '769222520', '', 25, 1, 0, 1, 1984, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(46, 'The metamorphoses of Publius Ovidius Naso in English blank verse', 1, 1, '', '5650847', '', 26, 1, 0, 1, 1807, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(47, 'The metamorphoses of Ovid : in English blank verse', 1, 1, '', '932064094', '', 26, 1, 0, 1, 2015, NULL, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(48, 'Metamorphoses', 1, 1, '', '21536916', '', 27, 1, 0, 1, 1957, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(49, 'Ovid: Metamorphoses', 1, 1, '', '36305287', '', 27, 1, 0, 1, 1971, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(50, 'Ovid\'s Metamorphoses, in fifteen books,', 1, 1, '', '6717532', '', 28, 1, 0, 1, 1812, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(51, 'Ovid\'s Metamorphosis', 1, 1, '', '31355682', '', 29, 1, 0, 1, 1650, NULL, '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(52, 'The Metamorphoses of Publius Ovidius Naso. Translated into English blank verse, by H. King. (Errata et corrigenda.).', 1, 1, '', '562298607', '', 30, 1, 0, 1, 1871, NULL, '', 5, '0000-00-00 00:00:00', '2017-03-23 16:33:52', 1, NULL, 1, 8),
(53, 'Translations in English verse from Ovid [Metamorphoses, Book XIII,], Horace, Tacitus, etc. By W. Lee [With the Latin text.].', 1, 1, '', '562297077', '', 31, 1, 0, 1, 1860, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(54, 'Metamorphoses', 1, 1, '', '614397149', '', 32, 1, 0, 1, 2010, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(55, 'Ovid in Sicily / a new verse translation of selections from the \'Metamorphoses\' of Ovid', 1, 1, '', '265576237', '', 33, 1, 0, 1, 1986, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(56, 'The Metamorphoses of Ovid', 1, 1, '', '59567916', '', 33, 1, 0, 1, 1995, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(57, 'Metamorphoses, Book VIII', 1, 1, '', '825733342', '', 33, 1, 0, 1, 2013, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(58, 'The Metamorphoses', 1, 1, '', '825733342', '', 33, 1, 0, 1, 2013, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(59, 'The creation ; The four ages', 1, 1, '', '427301625', '', 34, 1, 0, 1, 1971, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(60, 'Metamorphoses', 1, 1, '', '52878719', '', 35, 1, 0, 1, 2003, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(61, 'Metamorphoses', 1, 1, '', '58440997', '', 35, 1, 0, 1, 2005, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(62, 'Metamorphoses', 1, 1, '', '862247397', '', 36, 1, 0, 1, 1986, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(63, 'Metamorphoses', 1, 1, '', '714803213', '', 36, 1, 0, 1, 1998, NULL, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(64, 'Phaethon: or the first fable of the second book of Ovid\'s Metamorphoses burlesqu\'d.', 1, 1, '', '745310529', '', 37, 1, 0, 1, 1720, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(65, 'Metamorphoses', 1, 1, '', '37280126', '', 38, 1, 0, 1, 1984, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(66, 'Metamorphoses : in two volumes', 1, 1, '', '890559207', '', 38, 1, 0, 1, 1984, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(67, 'Ovid Metamorphoses : with an English translation.', 1, 1, '', '907503704', '', 38, 1, 1, 0, 1966, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(68, 'Metamorphoses', 1, 1, '', '477274577', '', 39, 1, 0, 1, 1984, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(69, 'Ovid\'s Metamorphoses in fifteen books', 1, 1, '', '578505449', '', 40, 1, 0, 1, 1774, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(70, 'Ovid\'s Metamorphoses, Book 13, a literal translation by R. Mongan', 1, 1, '', '562298927', '', 41, 1, 0, 1, 1892, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(71, 'Ovid\'s Metamorphoses, books I. to III. (IV., V.) literally translated by R. Mongan', 1, 1, '', '562298759', '', 42, 1, 1, 0, 1887, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(72, 'Metamorphoses (P. Ovidius Naso) / tr. into English blank verse by Brookes More... with a foreword by Frederic Alllison Tupper.', 1, 1, '', '8514802', '', 43, 1, 0, 1, 1922, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(73, 'Ovid\'s Metamorphoses', 1, 1, '', '819588409', '', 43, 1, 0, 1, 1941, NULL, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(74, 'Ovid\'s Metamorphoses', 1, 1, '', '4143980', '', 43, 1, 0, 1, 1948, NULL, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(75, 'Ovid\'s Metamorphoses in English blank verse', 1, 1, '', '612442180', '', 43, 1, 0, 1, 1953, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(76, 'Ovid\'s Metamorphoses in English Blank Verse', 1, 1, '', '28350594', '', 43, 1, 0, 1, 1957, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(77, 'Ovid\'s Metamorphoses : [translation in blank verse] / 1, Books I through VIII.', 1, 1, '', '489968005', '', 43, 1, 0, 1, 1978, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(78, 'Ovid\'s Metamorphoses : [translation in blank verse] / 2, Books IX through XV.', 1, 1, '', '489968007', '', 43, 1, 0, 1, 1978, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(79, 'Ovid\'s Metamorphoses ... : in English blank verse ... : illustrations by old French Masters', 1, 1, '', '549253401', '', 43, 1, 0, 1, 1933, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(80, 'Ovid\'s Metamorphoses : a translation and test papers / Book 1. ', 1, 1, '', '221446072', '', 44, 1, 0, 1, 1902, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(81, 'Ovid\'s Metamorphoses, ', 1, 1, '', '40344892', '', 45, 1, 0, 1, 1811, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(82, 'Ovid\'s Metamorphoses', 1, 1, '', '826444075', '', 45, 1, 0, 1, 1814, NULL, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(83, 'The first and second books of Ovid\'s Metamorphoses', 1, 1, '', '613114277', '', 46, 1, 0, 1, 1901, NULL, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(84, 'The pleasant fable of Hermaphroditus and Salmacis.', 1, 1, '', '57656562', '', 47, 1, 0, 1, 1992, NULL, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(85, 'Ovid\'s Heroines', 1, 1, '', '902409569', '', 48, 1, 0, 1, 2014, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(86, 'Metamorphoseon', 1, 1, '', '174827687', '', 49, 1, 0, 1, 1976, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(87, 'Ovid\'s Metamorphoses. Books XI. and XII. Literally translated by J.A. Prout', 1, 1, '', '562298767', '', 50, 1, 0, 1, 1892, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(88, 'Ovid\'s Metamorphoses. Book VIII', 1, 1, '', '654761588', '', 50, 1, 0, 1, 1904, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(89, 'Ovid\'s Metamorphoses. Book IX. and X. Literally translated by J.A. Prout', 1, 1, '', '562298788', '', 50, 1, 1, 0, 1905, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(90, 'Ovid\'s Metamorphoses. Book VIII', 1, 1, '', '654761588', '', 50, 1, 0, 1, 1904, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(91, 'The Metamorphoses of Ovid', 1, 1, '', '779005942', '', 51, 1, 0, 1, 1955, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(92, 'Metamorphoses: a new verse translation', 1, 1, '', '', '', 52, 1, 1, 0, 2004, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(93, 'Metamorphoses: a new verse translation', 1, 1, '', '868378118', '', 53, 1, 0, 1, 2014, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(94, 'The Metamorphoses of Ovid : literally translated into English prose, with copius notes and explanations', 1, 1, '', '9436980', '', 54, 1, 0, 1, 1872, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(95, 'The metamorphoses of Ovid', 1, 1, '', '862444604', '', 54, 1, 0, 1, 1887, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(96, 'The Metamorphoses', 1, 1, '', '123753882', '', 54, 1, 0, 1, 1893, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(97, 'Metamorphoses', 1, 1, '', '551652117', '', 54, 1, 0, 1, 1919, NULL, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(98, 'The Metamorphoses of Ovid, books I-VII', 1, 1, '', '2813561', '', 54, 1, 0, 1, 1925, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(99, 'Metamorphoses', 1, 1, '', '517293139', '', 54, 1, 0, 1, 1978, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(100, 'Ouid\'s Metamorphosis Englished by G.S.', 1, 1, '', '606523696', '', 55, 1, 0, 1, 1628, NULL, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(101, 'Ovid\'s Metamorphosis englished (in verse)', 1, 1, '', '562297369', '', 55, 1, 0, 1, 1632, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(102, 'Ovids Metamorphosis Englished, by Geo: Sandys', 1, 1, '', '216842734', '', 55, 1, 0, 1, 1638, NULL, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(103, 'Ovid\'s Metamorphoses Englished', 1, 1, '', '221001779', '', 55, 1, 0, 1, 1976, NULL, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(104, 'Ovid\'s The art of love, Metamorphoses, Loves, and other works.', 1, 1, '', '15114654', '', 56, 1, 0, 1, 1972, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(105, 'Ovid\'s Metamorphoses in fifteen books : a new translation', 1, 1, '', '52401021', '', 57, 1, 0, 1, 1717, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(106, 'Ovid\'s Metamorphoses', 1, 1, '', '3533337', '', 57, 1, 0, 1, 1724, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(107, 'Ovid\'s metamorphoses in fifteen books ; made English by several hands ; adorn\'d with cuts', 1, 1, '', '51372191', '', 57, 1, 0, 1, 1733, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(108, 'Ovid : in six volumes / III. Metamorphoses : Books I-VIII / with an English transl. by Grant Showerman.', 1, 1, '', '769814393', '', 58, 1, 0, 1, 1984, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(109, 'Ovid.', 1, 1, '', '803487907', '', 59, 1, 0, 1, 1984, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(110, 'The Metamorphoses', 1, 1, '', '872903', '', 60, 1, 0, 1, 1889, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(111, 'The Metamorphoses of Ovid', 1, 1, '', '499691868', '', 60, 1, 0, 1, 1948, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(112, 'The metamorphoses of Ovid', 1, 1, '', '45637057', '', 61, 1, 0, 1, 2001, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(113, 'Stories from Ovid\'s Metamorphoses. A literal translation. (Based on the edition by D.A. Slater.).', 1, 1, '', '562298738', '', 62, 1, 1, 0, 1953, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(114, 'Baucis and Philemon : imitated from Ovid.', 1, 1, '', '49358023', '', 63, 1, 0, 1, 1709, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(115, 'The Celebrated speeches of Ajax and Ulysses', 1, 1, '', '642467492', '', 64, 1, 0, 1, 1708, NULL, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(116, 'Stories from Ovid. [A selection of passages from Ovid\'s Metamorphoses.] With notes. By R.W. Taylor ... Third edition, revised and augmented.', 1, 1, '', '562294140', '', 65, 1, 0, 1, 1874, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(117, 'Metamorphoses : poetry and translation', 1, 1, '', '51992375', '', 66, 1, 0, 1, 2003, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(118, 'Metamorphoses; an English version by A.E. Watts', 1, 1, '', '221404996', '', 67, 1, 0, 1, 1954, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(119, 'The Metamorphoses of Ovid', 1, 1, '', '329078442', '', 67, 1, 0, 1, 1980, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(120, 'The metamorphoses : selected stories in verse', 1, 1, '', '51086282', '', 68, 1, 0, 1, 2003, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(121, 'The metamorphoses : selected stories in verse', 1, 1, '', '51086282', '', 68, 1, 0, 1, 2003, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(122, 'Phaetons folly, or, the downfall of pride', 1, 1, '', '606622645', '', 0, 1, 0, 1, 1655, NULL, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(123, 'Fables ancient and modern : translated into verse, from Homer, Ovid, Boccace, & Chaucer : with original poems', 1, 1, '', '2279522', '', 0, 1, 0, 1, 1700, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(124, 'Ovid\'s Metamorphoses : epitomized in an English poetical style for the use and entertainment of the ladies of Great Britain', 1, 1, '', '8983726', '', 0, 1, 0, 1, 1760, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(125, 'Metamorphoses : translated into English prose with the Latin text and order of construction on the same page, and critical, historical, geographical, and classical notes in English.', 1, 1, '', '665153485', '', 0, 1, 1, 0, 1822, NULL, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(126, 'The first book of Ovid\'s Metamorphoses, with a literal interlinear translation, and illustrative notes, on the plan recommended by Mr. Locke', 1, 1, '', '794346265', '', 0, 1, 1, 0, 1828, NULL, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(127, 'The Metamorphoses of Ovid. Book I., construed literally and word for word by the Rev. Dr. Giles.', 1, 1, '', '562295589', '', 0, 1, 1, 0, 1857, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(128, 'P. Ovidii Nasonis Metamorphoseon liber 1(2.) With translation and copious notes ... by A.C. Maybury.', 1, 1, '', '562295564', '', 0, 1, 1, 0, 1885, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(129, 'Ovid\'s Metamorphoses : the original text reduced to the natural English order with a literal interlinear translation', 1, 1, '', '3788846', '', 0, 1, 1, 0, 1895, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(130, 'Metamorphoses, and selections from Heroides', 1, 1, '', '1920604', '', 0, 1, 0, 1, 1961, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(131, 'Metamorphoses.', 1, 1, '', '247208698', '', 0, 1, 0, 1, 1965, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(132, 'Stories from the metamorphoses', 1, 1, '', '837381787', '', 0, 1, 1, 0, 2013, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(133, 'Ovid [i.e. part of Book 13 of the Metamorphoses] ', 1, 1, '', '562297067', '', 0, 1, 0, 1, 1850, NULL, '', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, 0, NULL),
(143, '__approved', 1, 1, 'asdfsadf', 'asdfdsa', '1', 0, 2, 0, 0, NULL, NULL, 'asdfdf', 1, '2017-02-25 01:47:12', '2017-03-23 16:26:38', 0, NULL, 0, NULL),
(144, 'eraseme', 1, 1, 'asdfsafd', 'asdfasdf', 'asdfasdf', 2, 2, 0, 0, 1999, NULL, 'dasdf', 1, '2017-03-02 19:23:30', '2017-03-21 17:52:41', 0, 22, 1, 8),
(145, 'eraseme2', 1, 1, '', '', '', 1, 2, 0, 0, 2000, NULL, '', 3, '2017-03-02 19:23:43', '2017-03-13 20:30:55', 0, 22, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translators`
--

CREATE TABLE `translators` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `translators`
--

INSERT INTO `translators` (`id`, `name`, `created_at`, `updated_at`) VALUES
(0, 'UNKNOWN', '2017-01-03 22:00:00', '2017-02-23 16:42:28'),
(1, 'Addison, Joseph', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Anderson, William Scovil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Austin, Henry', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Bailey, Nathan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Brinsley, John', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Brodie, James', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Brown, Taylor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Caxton, William', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Clark, John', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Croxall, Samuel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Davidson, Joseph', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Dennis, John', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Dryden, John', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Garth, Sir Samuel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'George Sandys', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Golding, Arthur', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Goold, George P', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Green, W', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Gregory, Horace', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Hall, Thomas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Hamilton, James', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Hayes, BJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Heilig, George William', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Hill, D E', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Hopkinson, Neil ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Howard, J', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Humphries, Rolfe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'John Ninellius, N Bailey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Kemb, Andrew', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'King, Henry', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Lee, William', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Lombardo, Stanley', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Mandelbaum, Allen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Marks, S', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Martin, Charles', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Melville, A D', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Meston, William', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Miller, Frank Justus', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Miller, Goold', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Minellius', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Mongan, James Roscoe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Mongan, R', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'More, Brookes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Newman, G G', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Orger, Thomas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Peck, William T', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Peend, Thomas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Pollard, Claire', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Pontanus, Jacobus', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Prout, J A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Pyle, Howard', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Raeburn, David', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Raeburn,D A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Riley, Henry T', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Sandys, George', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Schmeling, Gareth L', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Sewell, George', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Sewell, Geroge', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Showerman, Grant', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Simmons, Charles', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Simpson, Michael', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Slater, David Ansell', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Swift, Jonathan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Tate, Nahum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Taylor, Robert West', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Tomlinson, Charles ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Watts, Albert Everett', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Wright, F A', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `crypted_password` varchar(255) DEFAULT NULL,
  `password_salt` varchar(255) DEFAULT NULL,
  `persistence_token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `crypted_password`, `password_salt`, `persistence_token`, `created_at`, `updated_at`, `role`) VALUES
(8, 'editor@gvsu.edu', '400$8$41$b74173cabca499c7$1f1321acba31f76871732bb3bd769e417283a73856f10fdbdd5723808d4ef7f2', 'UvYsNnt59bv1UZWnHF', '324c0e0bec94a0009be9fdb31f5feaaa5548c13b84830a9e442d89f20d63e276a7107f3600e972ed6662056ffde22ab5b8cf8306ca92feabe34cb514e0d98686', '2017-02-25 03:33:01', '2017-02-28 20:17:03', 'editor'),
(9, 'admin@gvsu.edu', '400$8$43$81ae7aadb70e8a2f$58329eda8d037d7becb8e0f9a1753a6365f938715488880c9a9f951719eb2205', 'sVlSUpd2zOxF8Wa9Nd9R', '9f9c14d3f3bf5ff49e0b31affd111d3dfe83d6d30ca9b26b5a346ced7d33dcc358403bdc9ca7604dabffc57565f8a8cfedf6f293d0400354a7f922b63c9d689b', '2017-02-25 03:34:01', '2017-02-28 19:28:20', 'admin'),
(22, 'entry@gvsu.edu', '400$8$45$1ee1684aefd16215$f96ab3602ab1886677d0aefe9fae2fd52b727a4b3e3b5a0818bfa55848cbf852', 'xPBQVSbdhRhIcMgYqz9', '2421c7a9886db65d356a85d26ca7039b8662b2ebb897a6f5bbb460dc9cc05c6377d935700725f5f9a0c941da03bb47691ba9bfd9a6df40996de015ad9c8e08a1', '2017-02-28 20:01:06', '2017-02-28 20:19:25', 'entry'),
(27, 'mole3@gvsu.edu', '400$8$45$8333d22e5bafab72$10934d9e92390acec5994fecaf85bccf9bb5ab5bb7d803d50268b54e0534bbf5', 'RFb0xwwtwoHFgSNSqwAn', 'c6398e34155fc131811b0cf7d14cc74fe71810f1c1cd3631a09e1626a9c05e0cbfd1942cae10966a03b9969dfe03dfca7ffdd5ca4925f86c3b8e8d0ae0955696', '2017-02-28 20:19:56', '2017-02-28 20:19:56', 'entry'),
(28, 'foo@bar.com', '400$8$3a$1c84bab42dee36b0$334dbb59ac5e67330de3de4da99c0927a63d052548b1a2bf87021ad7fcbcf5aa', 'lcOq353baZr6dBT2KDh', 'cf67aafb01e24e0713001b69e0d41d9490cf73e8e201e34e36ea1145c3f1554f380c124e9e343c509fa24d1aaf0f4fb2379563b7cc3f189d56bbeacfeeb42fb6', '2017-02-28 20:20:17', '2017-02-28 20:20:17', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Metamorphosis', '2017-02-10 01:13:24', '2017-02-23 21:47:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_submissions_on_work_id` (`work_id`),
  ADD KEY `index_submissions_on_author_id` (`author_id`),
  ADD KEY `index_submissions_on_translator_id` (`translator_id`),
  ADD KEY `index_submissions_on_language_id` (`language_id`),
  ADD KEY `index_submissions_on_collection_id` (`collection_id`),
  ADD KEY `index_submissions_on_medium_id` (`medium_id`),
  ADD KEY `index_submissions_on_entry_id` (`entry_id`),
  ADD KEY `fk_rails_af4fb4a597` (`editor_id`);

--
-- Indexes for table `translators`
--
ALTER TABLE `translators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `translators`
--
ALTER TABLE `translators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `submissions`
--
ALTER TABLE `submissions`
  ADD CONSTRAINT `fk_rails_1037cc14c4` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  ADD CONSTRAINT `fk_rails_6fa2dd7b13` FOREIGN KEY (`medium_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `fk_rails_8d85741475` FOREIGN KEY (`entry_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_rails_a7ef302be0` FOREIGN KEY (`translator_id`) REFERENCES `translators` (`id`),
  ADD CONSTRAINT `fk_rails_af4fb4a597` FOREIGN KEY (`editor_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_rails_be7142e265` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `fk_rails_c3850d8220` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`);
