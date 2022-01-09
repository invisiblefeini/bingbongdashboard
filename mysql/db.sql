-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 09. Jan 2022 um 07:56
-- Server-Version: 10.5.11-MariaDB-1:10.5.11+maria~focal-log
-- PHP-Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `d0388580`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `all_projects`
--

CREATE TABLE `all_projects` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mint_date` datetime NOT NULL,
  `twitter_link` text NOT NULL,
  `twitter_name` text NOT NULL,
  `blockchain` text NOT NULL,
  `count` int(11) NOT NULL,
  `mint_price` float NOT NULL,
  `whitelist` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `all_projects`
--

INSERT INTO `all_projects` (`id`, `name`, `mint_date`, `twitter_link`, `twitter_name`, `blockchain`, `count`, `mint_price`, `whitelist`) VALUES
(1, 'Invisible Friends', '2022-02-15 07:53:56', 'https://twitter.com/InvsbleFriends', 'InvsbleFriends', 'eth', 5000, 0, 'Nope');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `fetch_date` datetime NOT NULL,
  `twitter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `floor_price_head`
--

CREATE TABLE `floor_price_head` (
  `name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `floor_price_head`
--

INSERT INTO `floor_price_head` (`name`) VALUES
('moodrollers-by-lucas-zanotto'),
('slimhoods');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `floor_price_values`
--

CREATE TABLE `floor_price_values` (
  `name` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `all_projects`
--
ALTER TABLE `all_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `floor_price_head`
--
ALTER TABLE `floor_price_head`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `floor_price_values`
--
ALTER TABLE `floor_price_values`
  ADD PRIMARY KEY (`name`,`date`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `all_projects`
--
ALTER TABLE `all_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
