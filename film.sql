-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 24 dec 2021 om 18:04
-- Serverversie: 10.4.17-MariaDB
-- PHP-versie: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `film`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tbl_films`
--

CREATE TABLE `tbl_films` (
  `FilmID` int(11) NOT NULL,
  `Filmnaam` text NOT NULL,
  `Productiehuis` text NOT NULL,
  `Land` text NOT NULL,
  `Acteur` text NOT NULL,
  `Regisseur` text NOT NULL,
  `ReleaseDate` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `tbl_films`
--

INSERT INTO `tbl_films` (`FilmID`, `Filmnaam`, `Productiehuis`, `Land`, `Acteur`, `Regisseur`, `ReleaseDate`) VALUES
(1, 'FFKFKfs', 'UPPathe', 'UPbelgie', 'UPRyan reynolds', 'UPsjaak', 18032007),
(2, 'FFKFKfs', 'UPPathe', 'UPbelgie', 'UPRyan reynolds', 'UPsjaak', 18032007),
(3, 'FFKFKfs', 'UPPathe', 'UPbelgie', 'UPRyan reynolds', 'UPsjaak', 18032007),
(4, 'FFKFKfs', 'UPPathe', 'UPbelgie', 'UPRyan reynolds', 'UPsjaak', 18032007),
(5, 'FFKFKfs', 'UPPathe', 'UPbelgie', 'UPRyan reynolds', 'UPsjaak', 18032007),
(6, 'FFKFKfs', 'UPPathe', 'UPbelgie', 'UPRyan reynolds', 'UPsjaak', 18032007),
(7, 'FFKFKfs', 'UPPathe', 'UPbelgie', 'UPRyan reynolds', 'UPsjaak', 18032007),
(8, 'FFKFKfs', 'UPPathe', 'UPbelgie', 'UPRyan reynolds', 'UPsjaak', 18032007),
(9, 'TESTDATEST', 'TESLATEST', 'IAMTESTING', 'TEEEST', 'TEST', 30303030),
(10, 'FFKFKfs', 'UPPathe', 'UPbelgie', 'UPRyan reynolds', 'UPsjaak', 18032007),
(843, 'LETESTA', 'UPPathe', 'UPbelgie', 'UPRyan reynolds', 'UPsjaak', 18032007);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `tbl_films`
--
ALTER TABLE `tbl_films`
  ADD PRIMARY KEY (`FilmID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `tbl_films`
--
ALTER TABLE `tbl_films`
  MODIFY `FilmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=844;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
