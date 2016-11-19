-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 19, 2016 at 08:31 PM
-- Server version: 5.6.33
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `adams`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `created_on`) VALUES
(1, 'Ciceroo', '2016-11-11 19:31:00'),
(2, 'Pliny the Elder', '2016-11-11 19:34:00'),
(3, 'Josephus', '2016-11-11 19:35:00'),
(4, 'sdfadsjkf', '2016-11-18 20:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `name`) VALUES
(1, 'Latin Gems'),
(2, 'Greek Gems');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `created_on`) VALUES
(1, 'English', '2016-11-11 19:38:00'),
(2, 'French', '2016-11-11 19:39:00'),
(3, 'Spanish', '2016-11-12 21:18:00'),
(4, 'German', '2016-11-12 21:18:00'),
(5, 'Italian', '2016-11-12 21:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `name`, `created_on`) VALUES
(1, 'Book', '2016-11-11 19:40:00'),
(2, 'CD', '2016-11-12 18:55:00'),
(3, 'Journal', '2016-11-12 21:19:00'),
(4, 'DOI (Web)', '2016-11-12 21:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` int(11) NOT NULL,
  `work_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `oclc` varchar(255) DEFAULT NULL,
  `edition` varchar(255) DEFAULT NULL,
  `translator_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `is_prose` tinyint(1) NOT NULL,
  `is_poetry` tinyint(1) NOT NULL,
  `media_id` int(11) NOT NULL,
  `collection_id` int(11) DEFAULT NULL,
  `notes` text,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by_name` varchar(255) NOT NULL,
  `created_by_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `work_id`, `author_id`, `isbn`, `oclc`, `edition`, `translator_id`, `language_id`, `is_prose`, `is_poetry`, `media_id`, `collection_id`, `notes`, `created_on`, `created_by_name`, `created_by_email`) VALUES
(1, 1, 1, '1234', '1234', '1st', 1, 2, 1, 1, 1, 1, 'this is the first one.', '2016-11-11 21:06:00', 'me', 'me@foo.com'),
(2, 2, 2, '2345', '4235', '7th', 2, 2, 0, 0, 2, 2, 'Awesome!', '2016-11-12 18:50:00', 'foo', 'foo@bar.com'),
(3, 1, 1, '356', '89', 'asdf', 2, 4, 0, 0, 1, NULL, 'in german!', '2016-11-12 21:22:00', 'Me!', 'foo@bar.com'),
(4, 1, 1, '3333', '', '', 1, 1, 1, 0, 3, 1, 'fgdsfsdf', '2016-11-18 20:13:00', 'df', 'dfg'),
(5, 2, 3, '', '', '', 1, 1, 1, 1, 1, NULL, '', '2016-11-19 19:29:00', 'asdf', 'asdf');

-- --------------------------------------------------------

--
-- Table structure for table `translators`
--

CREATE TABLE `translators` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `translators`
--

INSERT INTO `translators` (`id`, `name`, `created_on`) VALUES
(1, 'Robert Adams', '2016-11-11 19:41:00'),
(2, 'Peter Anderson', '2016-11-11 22:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `title`, `created_on`) VALUES
(1, 'Some Title', '2016-11-11 20:59:00'),
(2, 'Speeches', '2016-11-11 20:59:00');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `translators`
--
ALTER TABLE `translators`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `translators`
--
ALTER TABLE `translators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
