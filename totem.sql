-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2024 at 02:07 PM
-- Server version: 10.11.6-MariaDB-0+deb12u1
-- PHP Version: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `totem`
--

-- --------------------------------------------------------

--
-- Table structure for table `circolari`
--

CREATE TABLE `circolari` (
  `id` int(11) NOT NULL,
  `titolo` varchar(20) DEFAULT NULL,
  `nomefile` varchar(120) DEFAULT NULL,
  `nome` varchar(120) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `tipologia` enum('Insegnanti','Studenti','Famiglie','Personale Ata','Tutti') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `circolari`
--

INSERT INTO `circolari` (`id`, `titolo`, `nomefile`, `nome`, `data`, `tipologia`) VALUES
(1, 'Circolare 001', 'circolare001.pdf', 'Circolare Informativa', '2024-01-15', 'Insegnanti'),
(2, 'Circolare 002', 'circolare002.pdf', 'Avviso Studenti', '2024-02-20', 'Studenti'),
(3, 'Circolare 003', 'circolare003.pdf', 'Comunicazione Famiglie', '2024-03-10', 'Famiglie'),
(4, 'Circolare 004', 'circolare004.pdf', 'Avviso Personale ATA', '2024-04-05', 'Personale Ata'),
(5, 'Circolare 005', 'circolare005.pdf', 'Comunicazione Generale', '2024-05-15', 'Tutti');

-- --------------------------------------------------------

--
-- Table structure for table `orario`
--

CREATE TABLE `orario` (
  `classe` varchar(20) NOT NULL,
  `professori` varchar(30) NOT NULL,
  `aula` int(11) NOT NULL,
  `ora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orario`
--

INSERT INTO `orario` (`classe`, `professori`, `aula`, `ora`) VALUES
('1T6', 'Giammarioli', 120, '11:45:00'),
('3B2', 'Lulli', 220, '12:45:00'),
('5i2', 'Marenghi', 223, '10:55:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `circolari`
--
ALTER TABLE `circolari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orario`
--
ALTER TABLE `orario`
  ADD PRIMARY KEY (`classe`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `circolari`
--
ALTER TABLE `circolari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
