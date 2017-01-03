-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 03, 2017 at 11:03 PM
-- Server version: 5.6.33
-- PHP Version: 5.6.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `adams`
--

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `work_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `oclc` varchar(255) DEFAULT NULL,
  `edition` varchar(255) DEFAULT NULL,
  `translator_id` int(11) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `is_prose` tinyint(1) NOT NULL,
  `is_poetry` tinyint(1) NOT NULL,
  `media_id` int(11) NOT NULL,
  `publication_year` int(4) NOT NULL,
  `collection_id` int(11) DEFAULT NULL,
  `notes` text,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by_name` varchar(255) NOT NULL,
  `created_by_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `title`, `work_id`, `author_id`, `isbn`, `oclc`, `edition`, `translator_id`, `language_id`, `is_prose`, `is_poetry`, `media_id`, `publication_year`, `collection_id`, `notes`, `created_on`, `created_by_name`, `created_by_email`) VALUES
(1, '[Ovid\'s Metamorphoses ... Translated by Mr. Dryden. Mr. Addison ... and other eminent hands. Publish\'d by Sir Samuel Garth ... The fourth edition.]', 1, 1, '', '562298492', '', 1, 1, 0, 1, 5, 1794, NULL, '', '2011-03-17 16:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(2, 'Ovid\'s Metamorphoses', 1, 1, '', '652376391', '', 2, 1, 0, 1, 5, 1972, NULL, '', '2011-03-17 16:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(3, 'The scourge of Venus (1614).', 1, 1, '', '7146626', '', 3, 1, 0, 1, 5, 1876, NULL, '', '2011-04-17 16:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(4, 'Ovid\'s Metamorphoses, in fifteen books : with the arguments and notes of John Minellius translated into English to which is marginally added, a prose version ... for the life of the schools', 1, 1, '', '55741097', '', 4, 1, 0, 1, 5, 1756, NULL, '', '2011-05-17 16:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(5, 'A New Translation of Ovid\'s Metamorphoses into English prose ... With the Latin text ... and ... notes ... The third edition, etc. [By Nathan Bailey. With an engraved frontispiece.].', 1, 1, '', '562295459', '', 4, 1, 0, 1, 5, 1759, NULL, '', '2011-06-17 16:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(6, 'Ovid\'s Metamorphoses, in fifteen books: with the arguments and notes of John Minellius translated into English. To which is marginally added, a prose version; ... For the use of schools. By Nathan Bailey', 1, 1, '', '836744905', '', 4, 1, 1, 0, 1, 1770, NULL, '', '2011-07-17 16:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(7, 'Ouids Metamorphosis translated grammatically, and also according to the propriety of our English tongue, so farre as grammar and the verse will well beare. Written chiefly for the good of schooles, to be vsed according to the directions in the preface to ', 1, 1, '', '216891387', '', 5, 1, 0, 1, 1, 1618, NULL, '', '2011-08-17 16:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(8, 'Ovids Metamorphosis : translated grammatically and also according to the propriety of our English tongue, as far as grammar and the verse will well bear : written chiefly for the good of schools ...', 1, 1, '', '54292087', '', 5, 1, 0, 1, 5, 1656, NULL, '', '2011-09-17 16:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(9, 'The Metamorphoses. Book VIII  ', 1, 1, '', '779533907', '', 6, 1, 1, 0, 5, 1935, NULL, '', '2011-10-17 16:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(10, 'Ovid in English, Part 1, Metamorphoses', 1, 1, '', '877136332', '', 7, 1, 1, 0, 2, 2013, NULL, '', '2011-11-17 17:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(11, 'Ovyde hys booke of Methamorphose: Books X-XV', 1, 1, '', '154151854', '', 8, 1, 0, 1, 5, 1924, NULL, '', '2011-12-17 17:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(12, 'Ovyde of Methamorphoseos Pylemon & Bauchys', 1, 1, '', '70836287', '', 8, 1, 0, 1, 5, 1999, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(13, 'Ten select books of Ovid\'s Metamorphoses', 1, 1, '', '62834292', '', 9, 1, 0, 1, 2, 2010, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(14, '[Ovid\'s Metamorphoses ... Translated by Mr. Dryden. Mr. Addison ... and other eminent hands. Publish\'d by Sir Samuel Garth ... The fourth edition.]', 1, 1, '', '562298482', '', 10, 1, 0, 1, 5, 1751, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(15, '[Ovid\'s Metamorphoses ... Translated by Mr. Dryden. Mr. Addison ... and other eminent hands. Publish\'d by Sir Samuel Garth ... The fourth edition.]', 1, 1, '', '562298501', '', 10, 1, 0, 1, 5, 1807, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(16, '[Ovid\'s Metamorphoses. Translated by Dr. Garth and others.]', 1, 1, '', '562298552', '', 10, 1, 0, 1, 5, 1812, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(17, '[Ovid\'s Metamorphoses. Translated by Dr. Garth and others.]', 1, 1, '', '809605890', '', 10, 1, 0, 1, 5, 1815, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(18, 'Ovid\'s metamorphoses', 1, 1, '', '925822464', '', 10, 1, 0, 1, 1, 1815, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(19, 'A new translation of Ovid\'s Metamorphoses into English prose, as near the original as the different idioms of the Latin and English languages will allow. With the Latin text and order of construction on the same page; and critical, historical, geographica', 1, 1, '', '643756672', '', 11, 1, 1, 0, 1, 1748, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(20, 'A new translation of Ovid\'s Metamorphoses', 1, 1, '', '508045557', '', 11, 1, 1, 0, 2, 1750, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(21, 'Ovid\'s Metamorphoses, translated into English prose ... with the Latin text and order of construction on the same page', 1, 1, '', '837857443', '', 11, 1, 1, 0, 1, 1797, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(22, 'The Passion of Byblis, made English [in verse] from Ovid. Me[t]am. Lib. 9. By Mr Dennis.', 1, 1, '', '562298886', '', 12, 1, 0, 1, 5, 1692, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(23, 'Ovid', 1, 1, '', '15695230', '', 13, 1, 0, 1, 1, 1872, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(24, 'Ovid\'s Metamorphoses, in fifteen books', 1, 1, '', '3423731', '', 14, 1, 0, 1, 5, 1727, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(25, 'Ovid\'s Metamorphoses, in fifteen books', 1, 1, '', '8333642', '', 14, 1, 0, 1, 5, 1751, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(26, 'Ovid\'s Metamorphoses', 1, 1, '', '53070507', '', 14, 1, 0, 1, 5, 1812, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(27, 'Ovid\'s Metamorphoses', 1, 1, '', '40181179', '', 14, 1, 0, 1, 5, 1812, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(28, 'Metamorphoses', 1, 1, '', '16594660', '', 14, 1, 0, 1, 5, 1976, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(29, 'Ovid\'s Metamorphosis englished', 1, 1, '', '606913517', '', 15, 1, 0, 1, 5, 1656, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(30, 'The XV bookes of P. Oudius Naso; entituled Metamorphosis', 1, 1, '', '606542589', '', 16, 1, 0, 1, 2, 1584, NULL, '', '2012-01-17 17:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(31, 'The XV bookes of P. Oudius Naso; entituled Metamorphosis', 1, 1, '', '71495322', '', 16, 1, 0, 1, 4, 1593, NULL, '', '2012-02-17 17:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(32, 'The fifteene bookes of P. Ouidus Naso:entituled, Metamorphosis', 1, 1, '', '606523505', '', 16, 1, 0, 1, 2, 1612, NULL, '', '2012-03-17 16:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(33, 'Metamorphoses', 1, 1, '', '59432669', '', 16, 1, 0, 1, 5, 1945, NULL, '', '2012-04-17 16:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(34, 'The XV bookes of P. Oudius Naso; entituled Metamorphosis', 1, 1, '', '562297300', '', 16, 1, 0, 1, 5, 1977, NULL, '', '2012-05-17 16:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(35, 'Out of Ovid\'s Metamorphoses: Icarus done into English', 1, 1, '', '49254174', '', 16, 1, 1, 0, 5, 1983, NULL, '', '2012-06-17 16:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(36, 'The story of Pomona and Vertumnus', 1, 1, '', '20044172', '', 16, 1, 0, 1, 5, 1987, NULL, '', '2012-07-17 16:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(37, 'Ovid : in six volumes. Metamorphoses ', 1, 1, '', '634057379', '', 17, 1, 0, 1, 5, 2001, NULL, '', '2012-08-17 16:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(38, 'A new translation of the second book of Ovid\'s Metamorphoses', 1, 1, '', '83364498', '', 18, 1, 0, 1, 2, 1783, NULL, '', '2012-09-17 16:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(39, 'The Metamorphoses', 1, 1, '', '1062162', '', 29, 1, 0, 1, 5, 1960, NULL, '', '2012-10-17 16:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(40, 'Wisdoms conquest. Or, An explanation and grammaticall translation of the thirteenth book of Ovids Metamorphoses ...', 1, 1, '', '15284726', '', 20, 1, 0, 1, 5, 1651, NULL, '', '2012-11-17 17:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(41, 'A Selection from the Metamorphoses of Ovid, adapted to the Hamiltonian System, by a literal and interlineal translation ... By J. Hamilton.', 1, 1, '', '562295547', '', 21, 1, 1, 0, 5, 1829, NULL, '', '2012-12-17 17:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(42, 'Ovid : Metamorphoses, III.1-120. A Translations by WP Steen ... and BJ Hayes', 1, 1, '', '562298837', '', 22, 1, 0, 1, 5, 1901, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(43, 'Selections from the Metamorphoses and Heroides', 1, 1, '', '629339', '', 23, 1, 0, 1, 5, 1889, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(44, 'Ovid, Metamorphoses', 1, 1, '', '928107153', '', 24, 1, 0, 1, 5, 1985, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(45, 'Ovid : in six volumes / IV: Metamorphoses, II: Books IX-XV / with an English transl. by Frank Justus Miller', 1, 1, '', '769222520', '', 25, 1, 0, 1, 5, 1984, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(46, 'The metamorphoses of Publius Ovidius Naso in English blank verse', 1, 1, '', '5650847', '', 26, 1, 0, 1, 5, 1807, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(47, 'The metamorphoses of Ovid : in English blank verse', 1, 1, '', '932064094', '', 26, 1, 0, 1, 2, 2015, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(48, 'Metamorphoses', 1, 1, '', '21536916', '', 27, 1, 0, 1, 5, 1957, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(49, 'Ovid: Metamorphoses', 1, 1, '', '36305287', '', 27, 1, 0, 1, 5, 1971, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(50, 'Ovid\'s Metamorphoses, in fifteen books,', 1, 1, '', '6717532', '', 28, 1, 0, 1, 5, 1812, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(51, 'Ovid\'s Metamorphosis', 1, 1, '', '31355682', '', 29, 1, 0, 1, 4, 1650, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(52, 'The Metamorphoses of Publius Ovidius Naso. Translated into English blank verse, by H. King. (Errata et corrigenda.).', 1, 1, '', '562298607', '', 30, 1, 0, 1, 5, 1871, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(53, 'Translations in English verse from Ovid [Metamorphoses, Book XIII,], Horace, Tacitus, etc. By W. Lee [With the Latin text.].', 1, 1, '', '562297077', '', 31, 1, 0, 1, 5, 1860, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(54, 'Metamorphoses', 1, 1, '', '614397149', '', 32, 1, 0, 1, 5, 2010, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(55, 'Ovid in Sicily / a new verse translation of selections from the \'Metamorphoses\' of Ovid', 1, 1, '', '265576237', '', 33, 1, 0, 1, 5, 1986, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(56, 'The Metamorphoses of Ovid', 1, 1, '', '59567916', '', 33, 1, 0, 1, 5, 1995, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(57, 'Metamorphoses, Book VIII', 1, 1, '', '825733342', '', 33, 1, 0, 1, 5, 2013, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(58, 'The Metamorphoses', 1, 1, '', '825733342', '', 33, 1, 0, 1, 5, 2013, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(59, 'The creation ; The four ages', 1, 1, '', '427301625', '', 34, 1, 0, 1, 5, 1971, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(60, 'Metamorphoses', 1, 1, '', '52878719', '', 35, 1, 0, 1, 5, 2003, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(61, 'Metamorphoses', 1, 1, '', '58440997', '', 35, 1, 0, 1, 5, 2005, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(62, 'Metamorphoses', 1, 1, '', '862247397', '', 36, 1, 0, 1, 5, 1986, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(63, 'Metamorphoses', 1, 1, '', '714803213', '', 36, 1, 0, 1, 3, 1998, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(64, 'Phaethon: or the first fable of the second book of Ovid\'s Metamorphoses burlesqu\'d.', 1, 1, '', '745310529', '', 37, 1, 0, 1, 5, 1720, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(65, 'Metamorphoses', 1, 1, '', '37280126', '', 38, 1, 0, 1, 5, 1984, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(66, 'Metamorphoses : in two volumes', 1, 1, '', '890559207', '', 38, 1, 0, 1, 5, 1984, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(67, 'Ovid Metamorphoses : with an English translation.', 1, 1, '', '907503704', '', 38, 1, 1, 0, 5, 1966, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(68, 'Metamorphoses', 1, 1, '', '477274577', '', 39, 1, 0, 1, 5, 1984, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(69, 'Ovid\'s Metamorphoses in fifteen books', 1, 1, '', '578505449', '', 40, 1, 0, 1, 5, 1774, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(70, 'Ovid\'s Metamorphoses, Book 13, a literal translation by R. Mongan', 1, 1, '', '562298927', '', 41, 1, 0, 1, 5, 1892, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(71, 'Ovid\'s Metamorphoses, books I. to III. (IV., V.) literally translated by R. Mongan', 1, 1, '', '562298759', '', 42, 1, 1, 0, 5, 1887, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(72, 'Metamorphoses (P. Ovidius Naso) / tr. into English blank verse by Brookes More... with a foreword by Frederic Alllison Tupper.', 1, 1, '', '8514802', '', 43, 1, 0, 1, 5, 1922, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(73, 'Ovid\'s Metamorphoses', 1, 1, '', '819588409', '', 43, 1, 0, 1, 2, 1941, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(74, 'Ovid\'s Metamorphoses', 1, 1, '', '4143980', '', 43, 1, 0, 1, 2, 1948, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(75, 'Ovid\'s Metamorphoses in English blank verse', 1, 1, '', '612442180', '', 43, 1, 0, 1, 5, 1953, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(76, 'Ovid\'s Metamorphoses in English Blank Verse', 1, 1, '', '28350594', '', 43, 1, 0, 1, 5, 1957, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(77, 'Ovid\'s Metamorphoses : [translation in blank verse] / 1, Books I through VIII.', 1, 1, '', '489968005', '', 43, 1, 0, 1, 5, 1978, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(78, 'Ovid\'s Metamorphoses : [translation in blank verse] / 2, Books IX through XV.', 1, 1, '', '489968007', '', 43, 1, 0, 1, 5, 1978, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(79, 'Ovid\'s Metamorphoses ... : in English blank verse ... : illustrations by old French Masters', 1, 1, '', '549253401', '', 43, 1, 0, 1, 5, 1933, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(80, 'Ovid\'s Metamorphoses : a translation and test papers / Book 1. ', 1, 1, '', '221446072', '', 44, 1, 0, 1, 5, 1902, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(81, 'Ovid\'s Metamorphoses, ', 1, 1, '', '40344892', '', 45, 1, 0, 1, 5, 1811, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(82, 'Ovid\'s Metamorphoses', 1, 1, '', '826444075', '', 45, 1, 0, 1, 2, 1814, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(83, 'The first and second books of Ovid\'s Metamorphoses', 1, 1, '', '613114277', '', 46, 1, 0, 1, 2, 1901, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(84, 'The pleasant fable of Hermaphroditus and Salmacis.', 1, 1, '', '57656562', '', 47, 1, 0, 1, 2, 1992, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(85, 'Ovid\'s Heroines', 1, 1, '', '902409569', '', 48, 1, 0, 1, 5, 2014, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(86, 'Metamorphoseon', 1, 1, '', '174827687', '', 49, 1, 0, 1, 5, 1976, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(87, 'Ovid\'s Metamorphoses. Books XI. and XII. Literally translated by J.A. Prout', 1, 1, '', '562298767', '', 50, 1, 0, 1, 5, 1892, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(88, 'Ovid\'s Metamorphoses. Book VIII', 1, 1, '', '654761588', '', 50, 1, 0, 1, 5, 1904, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(89, 'Ovid\'s Metamorphoses. Book IX. and X. Literally translated by J.A. Prout', 1, 1, '', '562298788', '', 50, 1, 1, 0, 5, 1905, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(90, 'Ovid\'s Metamorphoses. Book VIII', 1, 1, '', '654761588', '', 50, 1, 0, 1, 5, 1904, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(91, 'The Metamorphoses of Ovid', 1, 1, '', '779005942', '', 51, 1, 0, 1, 5, 1955, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(92, 'Metamorphoses: a new verse translation', 1, 1, '', '', '', 52, 1, 1, 0, 5, 2004, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(93, 'Metamorphoses: a new verse translation', 1, 1, '', '868378118', '', 53, 1, 0, 1, 5, 2014, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(94, 'The Metamorphoses of Ovid : literally translated into English prose, with copius notes and explanations', 1, 1, '', '9436980', '', 54, 1, 0, 1, 5, 1872, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(95, 'The metamorphoses of Ovid', 1, 1, '', '862444604', '', 54, 1, 0, 1, 5, 1887, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(96, 'The Metamorphoses', 1, 1, '', '123753882', '', 54, 1, 0, 1, 5, 1893, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(97, 'Metamorphoses', 1, 1, '', '551652117', '', 54, 1, 0, 1, 3, 1919, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(98, 'The Metamorphoses of Ovid, books I-VII', 1, 1, '', '2813561', '', 54, 1, 0, 1, 5, 1925, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(99, 'Metamorphoses', 1, 1, '', '517293139', '', 54, 1, 0, 1, 5, 1978, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(100, 'Ouid\'s Metamorphosis Englished by G.S.', 1, 1, '', '606523696', '', 55, 1, 0, 1, 2, 1628, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(101, 'Ovid\'s Metamorphosis englished (in verse)', 1, 1, '', '562297369', '', 55, 1, 0, 1, 5, 1632, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(102, 'Ovids Metamorphosis Englished, by Geo: Sandys', 1, 1, '', '216842734', '', 55, 1, 0, 1, 1, 1638, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(103, 'Ovid\'s Metamorphoses Englished', 1, 1, '', '221001779', '', 55, 1, 0, 1, 2, 1976, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(104, 'Ovid\'s The art of love, Metamorphoses, Loves, and other works.', 1, 1, '', '15114654', '', 56, 1, 0, 1, 5, 1972, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(105, 'Ovid\'s Metamorphoses in fifteen books : a new translation', 1, 1, '', '52401021', '', 57, 1, 0, 1, 5, 1717, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(106, 'Ovid\'s Metamorphoses', 1, 1, '', '3533337', '', 57, 1, 0, 1, 5, 1724, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(107, 'Ovid\'s metamorphoses in fifteen books ; made English by several hands ; adorn\'d with cuts', 1, 1, '', '51372191', '', 57, 1, 0, 1, 5, 1733, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(108, 'Ovid : in six volumes / III. Metamorphoses : Books I-VIII / with an English transl. by Grant Showerman.', 1, 1, '', '769814393', '', 58, 1, 0, 1, 5, 1984, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(109, 'Ovid.', 1, 1, '', '803487907', '', 59, 1, 0, 1, 5, 1984, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(110, 'The Metamorphoses', 1, 1, '', '872903', '', 60, 1, 0, 1, 5, 1889, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(111, 'The Metamorphoses of Ovid', 1, 1, '', '499691868', '', 60, 1, 0, 1, 5, 1948, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(112, 'The metamorphoses of Ovid', 1, 1, '', '45637057', '', 61, 1, 0, 1, 5, 2001, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(113, 'Stories from Ovid\'s Metamorphoses. A literal translation. (Based on the edition by D.A. Slater.).', 1, 1, '', '562298738', '', 62, 1, 1, 0, 5, 1953, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(114, 'Baucis and Philemon : imitated from Ovid.', 1, 1, '', '49358023', '', 63, 1, 0, 1, 5, 1709, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(115, 'The Celebrated speeches of Ajax and Ulysses', 1, 1, '', '642467492', '', 64, 1, 0, 1, 2, 1708, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(116, 'Stories from Ovid. [A selection of passages from Ovid\'s Metamorphoses.] With notes. By R.W. Taylor ... Third edition, revised and augmented.', 1, 1, '', '562294140', '', 65, 1, 0, 1, 5, 1874, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(117, 'Metamorphoses : poetry and translation', 1, 1, '', '51992375', '', 66, 1, 0, 1, 5, 2003, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(118, 'Metamorphoses; an English version by A.E. Watts', 1, 1, '', '221404996', '', 67, 1, 0, 1, 5, 1954, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(119, 'The Metamorphoses of Ovid', 1, 1, '', '329078442', '', 67, 1, 0, 1, 5, 1980, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(120, 'The metamorphoses : selected stories in verse', 1, 1, '', '51086282', '', 68, 1, 0, 1, 5, 2003, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(121, 'The metamorphoses : selected stories in verse', 1, 1, '', '51086282', '', 68, 1, 0, 1, 5, 2003, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(122, 'Phaetons folly, or, the downfall of pride', 1, 1, '', '606622645', '', 0, 1, 0, 1, 2, 1655, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(123, 'Fables ancient and modern : translated into verse, from Homer, Ovid, Boccace, & Chaucer : with original poems', 1, 1, '', '2279522', '', 0, 1, 0, 1, 5, 1700, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(124, 'Ovid\'s Metamorphoses : epitomized in an English poetical style for the use and entertainment of the ladies of Great Britain', 1, 1, '', '8983726', '', 0, 1, 0, 1, 5, 1760, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(125, 'Metamorphoses : translated into English prose with the Latin text and order of construction on the same page, and critical, historical, geographical, and classical notes in English.', 1, 1, '', '665153485', '', 0, 1, 1, 0, 2, 1822, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(126, 'The first book of Ovid\'s Metamorphoses, with a literal interlinear translation, and illustrative notes, on the plan recommended by Mr. Locke', 1, 1, '', '794346265', '', 0, 1, 1, 0, 2, 1828, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(127, 'The Metamorphoses of Ovid. Book I., construed literally and word for word by the Rev. Dr. Giles.', 1, 1, '', '562295589', '', 0, 1, 1, 0, 5, 1857, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(128, 'P. Ovidii Nasonis Metamorphoseon liber 1(2.) With translation and copious notes ... by A.C. Maybury.', 1, 1, '', '562295564', '', 0, 1, 1, 0, 5, 1885, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(129, 'Ovid\'s Metamorphoses : the original text reduced to the natural English order with a literal interlinear translation', 1, 1, '', '3788846', '', 0, 1, 1, 0, 5, 1895, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(130, 'Metamorphoses, and selections from Heroides', 1, 1, '', '1920604', '', 0, 1, 0, 1, 5, 1961, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(131, 'Metamorphoses.', 1, 1, '', '247208698', '', 0, 1, 0, 1, 5, 1965, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(132, 'Stories from the metamorphoses', 1, 1, '', '837381787', '', 0, 1, 1, 0, 5, 2013, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu'),
(133, 'Ovid [i.e. part of Book 13 of the Metamorphoses] ', 1, 1, '', '562297067', '', 0, 1, 0, 1, 5, 1850, NULL, '', '0000-00-00 00:00:00', 'Robert Adams', 'adamsr@gvsu.edu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_id` (`work_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `translator_id` (`translator_id`),
  ADD KEY `language_id` (`language_id`),
  ADD KEY `media_id` (`media_id`),
  ADD KEY `collection_id` (`collection_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=618;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `submissions`
--
ALTER TABLE `submissions`
  ADD CONSTRAINT `submissions_ibfk_1` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`),
  ADD CONSTRAINT `submissions_ibfk_3` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  ADD CONSTRAINT `submissions_ibfk_4` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `submissions_ibfk_5` FOREIGN KEY (`translator_id`) REFERENCES `translators` (`id`),
  ADD CONSTRAINT `submissions_ibfk_6` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `submissions_ibfk_7` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`);
