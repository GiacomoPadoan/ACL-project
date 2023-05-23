-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mar 27, 2023 alle 20:01
-- Versione del server: 10.4.27-MariaDB
-- Versione PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_acl`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ruolo` varchar(15) NOT NULL,
  `area` varchar(20) DEFAULT NULL,
  `portafoglio_di` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`id`, `nome`, `cognome`, `email`, `password`, `ruolo`, `area`, `portafoglio_di`) VALUES
(29, 'Mattia', 'Vidhi', 'mattia.vidhi@ptpvenezia.edu.it', '$2y$10$CYC12c0Y6nLdnNxFbEaZM.aENGOSAnHRu10Mh9tPN3Nbq1pHC3ynq', 'Admin', '', NULL),
(34, 'Mattia', 'Bonaldo', 'mattia.bonaldo@ptpvenezia.edu.it', '$2y$10$zBksYJxDCZSLoeUsdk6CGuhqSscdJkY2QzVv2TmwupHgIDmP5vMVC', 'Capo_area', 'sud', NULL),
(35, 'Riccardo', 'Esposito', 'riccardo.esposito@ptpvenezia.edu.it', '$2y$10$4m.yNSXxzlCZSXuFDTbKAORyMG6qWCyA8ydUQLbdcKjP8sY/u8sO2', 'Cliente', 'sud', NULL);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
