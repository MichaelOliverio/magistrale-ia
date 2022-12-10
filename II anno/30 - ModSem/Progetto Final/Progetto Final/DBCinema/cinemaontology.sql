-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 19, 2021 alle 10:50
-- Versione del server: 10.4.18-MariaDB
-- Versione PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinemaontology`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `ambientazione`
--

CREATE TABLE `ambientazione` (
  `Luogo` varchar(100) NOT NULL,
  `AmbientazioneDi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `ambientazione`
--

INSERT INTO `ambientazione` (`Luogo`, `AmbientazioneDi`) VALUES
('Far West', 'Django'),
('Far West', 'Trilogia Del Dollaro'),
('Roma ', 'La Dolce Vita'),
('Los Angeles', 'Pulp Fiction'),
('Galassia', 'The Avengers');

-- --------------------------------------------------------

--
-- Struttura della tabella `attore`
--

CREATE TABLE `attore` (
  `Nome` varchar(100) NOT NULL,
  `Cognome` varchar(100) NOT NULL,
  `RecitaIn` varchar(100) NOT NULL,
  `Ranking` int(11) NOT NULL,
  `Popolarità` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `attore`
--

INSERT INTO `attore` (`Nome`, `Cognome`, `RecitaIn`, `Ranking`, `Popolarità`) VALUES
('Leonardo', 'DiCaprio', 'Django', 4, 'Attore Popolare'),
('Anita ', 'Ekberg', 'La Dolce Vita', 594, ''),
('Chrsis', 'Hemsworth', 'The Avengers', 75, 'Attore Popolare'),
('Christoph', 'Waltz', 'Django', 12, 'Attore Popolare'),
('Clint ', 'Eastwood', 'Trilogia Del Dollaro', 20, 'Attore Popolare'),
('Eli', 'Wallach', 'Trilogia Del Dollaro', 287, ''),
('Jamie', 'Foxx', 'Django', 55, 'Attore Popolare'),
('John', 'Travolta', 'Pulp Fiction', 156, ''),
('Josh', 'Brolin', 'The Avengers', 156, ''),
('Lee', 'Van Cliff', 'Trilogia Del Dollaro', 111, ''),
('Marcello', 'Mastroianni', 'La Dolce Vita', 257, ''),
('Robert', 'Downey Jr.', 'The Avengers', 95, 'Attore Popolare'),
('Samuel ', 'Jackson', 'Django', 73, 'Attore Popolare'),
('Samuel', 'Jackson', 'Pulp Fiction', 73, 'Attore Popolare');

-- --------------------------------------------------------

--
-- Struttura della tabella `cast`
--

CREATE TABLE `cast` (
  `NomeAttore` varchar(100) NOT NULL,
  `CognomeAttore` varchar(100) NOT NULL,
  `Film` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `cast`
--

INSERT INTO `cast` (`NomeAttore`, `CognomeAttore`, `Film`) VALUES
('Leonardo ', 'DiCaprio', 'Django'),
('Christoph', 'Waltz', 'Django'),
('Samuel ', 'Jackson', 'Django'),
('Samuel ', 'Jackson', 'Pulp Fiction'),
('Chris', 'Hemsworth', 'The Avengers'),
('Josh', 'Brolin', 'The Avengers'),
('Robert', 'Downey Jr.', 'The Avengers'),
('Clint', 'Eastwood', 'Trilogia Del Dollaro'),
('Eli', 'Wallach', 'Trilogia Del Dollaro'),
('Lee', 'VanCliff', 'Trilogia Del Dollaro'),
('Marcello ', 'Mastroianni', 'La Dolce Vita'),
('Anita', 'Ekberg', 'La Dolce Vita\r\n'),
('John', 'Travolta', 'Pulp Fiction');

-- --------------------------------------------------------

--
-- Struttura della tabella `film`
--

CREATE TABLE `film` (
  `Film` varchar(100) NOT NULL,
  `Ambientazione` varchar(100) NOT NULL,
  `Genere` varchar(100) NOT NULL,
  `Scrittore` varchar(100) NOT NULL,
  `Regista` varchar(100) NOT NULL,
  `Valutazione` float NOT NULL,
  `OrigineDiProduzione` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `film`
--

INSERT INTO `film` (`Film`, `Ambientazione`, `Genere`, `Scrittore`, `Regista`, `Valutazione`, `OrigineDiProduzione`) VALUES
('Django', 'Far West', 'Western', 'Quentin Tarantino', 'Quentin Tarantino', 8.4, 'Produzione Americana'),
('La Dolce Vita', 'Roma', 'Comedy', 'Federico Fellini', 'Federico Fellini', 8, 'Produzione Italiana'),
('Trilogia Del Dollaro', 'Far West', 'Western', 'Fulvio Morsella', 'Sergio Leone', 8.2, 'Produzione Italiana'),
('The Avengers', 'New York', 'Fantasy', 'Stan Lee', 'Russo Brothers', 8.3, 'Produzione Americana'),
('Pulp Fiction', 'Los Angeles', 'Azione', 'Quentin Tarantino', 'Quentin Tarantino', 8.9, 'Produzione Americana');

-- --------------------------------------------------------

--
-- Struttura della tabella `infofilms`
--

CREATE TABLE `infofilms` (
  `Film` varchar(100) NOT NULL,
  `Anno` int(11) NOT NULL,
  `CasaCinematografica` varchar(100) NOT NULL,
  `Ranking` int(11) NOT NULL,
  `Tipologia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `infofilms`
--

INSERT INTO `infofilms` (`Film`, `Anno`, `CasaCinematografica`, `Ranking`, `Tipologia`) VALUES
('Django', 2010, 'A Band Apart', 268, ''),
('La Dolce Vita', 1960, 'Cinecittà', 3650, ''),
('Pulp Fiction', 1994, 'Miramax', 114, ''),
('The Avengers', 2012, 'Marvel Studios', 168, 'Saga'),
('Trilogia Del Dollaro', 1965, 'Produzione Associata Europee', 394, 'Trilogia');

-- --------------------------------------------------------

--
-- Struttura della tabella `regista`
--

CREATE TABLE `regista` (
  `NomeRegista` varchar(100) NOT NULL,
  `CognomeRegista` varchar(100) NOT NULL,
  `Nazionalità` varchar(100) NOT NULL,
  `RegistaDi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `regista`
--

INSERT INTO `regista` (`NomeRegista`, `CognomeRegista`, `Nazionalità`, `RegistaDi`) VALUES
('Quentin', 'Tarantino', 'Regista Americano', 'Django'),
('Quentin ', 'Tarantino', 'Regista Americano', 'Pulp Fiction'),
('Federico', 'Fellini', 'Regista Italiano', 'La Dolce Vita'),
('Russo', 'Brothers', 'Regista Americano', 'The Avengers'),
('Sergio', 'Leone', 'Regista Italiano', 'Trilogia Del Dollaro');

-- --------------------------------------------------------

--
-- Struttura della tabella `scrittore`
--

CREATE TABLE `scrittore` (
  `NomeScrittore` varchar(100) NOT NULL,
  `CognomeScrittore` varchar(100) NOT NULL,
  `ScrittoreDi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `scrittore`
--

INSERT INTO `scrittore` (`NomeScrittore`, `CognomeScrittore`, `ScrittoreDi`) VALUES
('Fulvio', 'Morsella', 'Trilogia Del Dollaro'),
('Sergio ', 'Leone', 'Trilogia Del Dollaro'),
('Quentin', 'Tarantino', 'Pulp Fiction'),
('Quenti ', 'Tarantino', 'Django'),
('Stan', 'Lee', 'The Avengers'),
('Federico', 'Fellini', 'La Dolce Vita');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
