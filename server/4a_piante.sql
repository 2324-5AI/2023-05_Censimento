-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 14, 2023 alle 21:44
-- Versione del server: 10.4.22-MariaDB
-- Versione PHP: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4a_piante`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `censimento`
--

CREATE TABLE `censimento` (
  `idControllo` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `altezza` smallint(6) NOT NULL,
  `raggio` tinyint(4) NOT NULL,
  `malata` tinyint(1) NOT NULL,
  `viale` tinyint(1) NOT NULL,
  `parco` tinyint(1) NOT NULL,
  `dataC` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `censimento`
--

INSERT INTO `censimento` (`idControllo`, `tipo`, `altezza`, `raggio`, `malata`, `viale`, `parco`, `dataC`) VALUES
(1, 1, 10, 2, 0, 1, 0, '2023-05-14'),
(2, 1, 10, 2, 0, 1, 0, '2023-05-14'),
(3, 4, 7, 2, 1, 0, 1, '2023-05-14'),
(4, 5, 20, 2, 0, 1, 0, '2023-05-14'),
(5, 5, 20, 2, 0, 1, 0, '2023-05-14'),
(6, 5, 20, 2, 0, 1, 0, '2023-05-14'),
(7, 2, 12, 5, 1, 0, 1, '2023-05-14'),
(8, 3, 18, 3, 0, 0, 1, '2023-05-14'),
(9, 1, 22, 8, 0, 1, 0, '2023-05-14'),
(10, 1, 21, 8, 0, 1, 0, '2023-05-14'),
(11, 5, 23, 1, 0, 1, 0, '2023-05-14');

-- --------------------------------------------------------

--
-- Struttura della tabella `tipopianta`
--

CREATE TABLE `tipopianta` (
  `idTipo` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `nEsemplari` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `tipopianta`
--

INSERT INTO `tipopianta` (`idTipo`, `nome`, `nEsemplari`) VALUES
(1, 'Pino', 10),
(2, 'Ciliegio', 30),
(3, 'Castagno', 15),
(4, 'Oleandro', 30),
(5, 'Pioppo', 40);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `censimento`
--
ALTER TABLE `censimento`
  ADD PRIMARY KEY (`idControllo`);

--
-- Indici per le tabelle `tipopianta`
--
ALTER TABLE `tipopianta`
  ADD PRIMARY KEY (`idTipo`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `censimento`
--
ALTER TABLE `censimento`
  MODIFY `idControllo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `tipopianta`
--
ALTER TABLE `tipopianta`
  MODIFY `idTipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
