-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2022 at 11:33 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `secret-talk`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment_table`
--

CREATE TABLE `comment_table` (
  `id` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `komentar` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment_table`
--

INSERT INTO `comment_table` (`id`, `nama`, `komentar`) VALUES
(2, 'Fiza', 'oke memang baik sih orangnya'),
(3, 'Fiza', 'Fiza pinter kalo ngereview sesuatu'),
(4, 'Hwaryeon', 'hwaryeon cantik banget'),
(5, 'Hwaryeon', 'Semoga apapun yang kamu impikan tercapai ya'),
(6, 'Hwaryeon', 'Yon pinter banget, aku suka'),
(7, 'Hwaryeon', 'Aku kangen kamu'),
(8, 'Fiza', 'Fiza ganteng'),
(9, 'Hwaryeon', 'HBD ya yon!!!'),
(10, 'Hwaryeon', 'Yon baik banget'),
(11, 'Fiza', 'Fiza sekarang hobinya apa aja nih?'),
(12, 'Baizuri', 'Halo bang baizur'),
(13, 'Baizuri', 'Bang Baizur keren'),
(14, 'Baizuri', 'Tulisan kamu bagus-bagus');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pesan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `nama`, `pesan`) VALUES
(108, 'Fiza', 'orangnya pinter banget'),
(109, 'Hwaryeon', ''),
(110, 'Baizuri', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment_table`
--
ALTER TABLE `comment_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment_table`
--
ALTER TABLE `comment_table`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
