-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2024 at 07:35 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `images12`
--

CREATE TABLE `images12` (
  `id` int(20) NOT NULL,
  `file_name` varchar(225) NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images12`
--

INSERT INTO `images12` (`id`, `file_name`, `uploaded_on`, `status`) VALUES
(15, 'File5.png', '2023-09-27 08:15:06', ''),
(21, 'File1.png', '2023-09-27 08:41:20', ''),
(26, 'File3.png', '2023-09-27 10:15:08', ''),
(27, 'images.jpg', '2023-09-27 10:35:25', ''),
(28, 'images_1.jpg', '2023-09-27 10:41:36', ''),
(29, 'images_2.jpg', '2023-09-27 10:42:54', ''),
(30, 'images_3.jpg', '2023-09-27 10:43:41', ''),
(31, 'images_4.jpg', '2023-09-27 10:44:31', ''),
(34, 'images_5.jpg', '2023-09-27 12:02:36', ''),
(35, 'File6.png', '2023-09-27 12:03:01', ''),
(36, 'File2.png', '2023-09-27 12:47:59', ''),
(37, 'File2.png', '2023-09-27 12:50:44', ''),
(45, 'File8.png', '2023-09-29 10:48:33', ''),
(48, 'File4.png', '2023-09-29 10:50:25', ''),
(51, 'File5.png', '2023-09-29 10:57:54', ''),
(52, 'File5.png', '2023-09-29 10:58:40', ''),
(53, 'File5.png', '2023-09-29 10:59:10', ''),
(54, 'File1.png', '2023-11-03 14:41:46', ''),
(55, 'File9.png', '2023-11-23 19:11:31', ''),
(56, 'File9.png', '2024-01-16 22:27:30', ''),
(57, 'File7.png', '2024-01-16 22:28:17', ''),
(58, 'pose.jpeg', '2024-01-20 09:49:19', ''),
(59, 'pose.jpeg', '2024-01-20 09:50:23', ''),
(60, 'download.jpeg', '2024-01-20 10:19:33', ''),
(61, 'File3.jpeg', '2024-05-05 13:17:56', ''),
(62, 'File2.png', '2024-05-05 13:18:18', ''),
(63, 'front.png', '2024-11-19 19:16:18', ''),
(64, 'front.png', '2024-11-19 19:16:30', ''),
(65, 'adomukasavasana.jpg', '2024-11-19 19:19:50', ''),
(66, 'adomukasavasana.jpg', '2024-11-19 19:20:21', ''),
(67, 'adomukasavasana.jpg', '2024-11-19 19:21:03', ''),
(68, 'adomukasavasana.jpg', '2024-11-19 19:21:49', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images12`
--
ALTER TABLE `images12`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images12`
--
ALTER TABLE `images12`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
