-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Czas generowania: 29 Maj 2020, 16:04
-- Wersja serwera: 8.0.18
-- Wersja PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `library`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autorzy`
--

DROP TABLE IF EXISTS `autorzy`;
CREATE TABLE IF NOT EXISTS `autorzy` (
  `autor` text NOT NULL,
  `id_autor` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_autor`),
  UNIQUE KEY `klucz` (`id_autor`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Zrzut danych tabeli `autorzy`
--

INSERT INTO `autorzy` (`autor`, `id_autor`) VALUES
('Adam Mickiewicz', 8),
('Boleslaw Prus', 2),
('Stefan Zeromski', 3),
('Juliusz Słowacki', 4),
('Henryk Sienkiewicz', 7);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `krzyz`
--

DROP TABLE IF EXISTS `krzyz`;
CREATE TABLE IF NOT EXISTS `krzyz` (
  `id_autor` int(11) NOT NULL,
  `id_tytul` int(11) NOT NULL,
  `id_krzyz` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_krzyz`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Zrzut danych tabeli `krzyz`
--

INSERT INTO `krzyz` (`id_autor`, `id_tytul`, `id_krzyz`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(7, 7, 9),
(8, 1, 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tytuly`
--

DROP TABLE IF EXISTS `tytuly`;
CREATE TABLE IF NOT EXISTS `tytuly` (
  `tytul` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_tytul` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_tytul`),
  UNIQUE KEY `klucz2` (`id_tytul`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Zrzut danych tabeli `tytuly`
--

INSERT INTO `tytuly` (`tytul`, `id_tytul`) VALUES
('Ludzie bezdomni', 3),
('Pan Tadeusz', 1),
('Lalka', 2),
('Kordian', 4),
('w pustyni i w puszczy', 7);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
