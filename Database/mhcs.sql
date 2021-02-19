-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2021 at 07:42 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mhcs`
--

-- --------------------------------------------------------

--
-- Table structure for table `counsellors`
--

CREATE TABLE `counsellors` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `counsellors`
--

INSERT INTO `counsellors` (`id`, `username`, `email`, `password`) VALUES
(1, 'ruby', 'rubayathyder007@gmail.com', '$2y$10$8KzO64wP9jAbc0NUu9YTCut0p9nlmaZXsQ924ERh9hLPWR04W1JWK'),
(2, 'UTMA17CS5335', 'rubayat@hotmail.com', '$2y$10$LPB82EWJrkp/J1msT/qqYeQQzA3WCaa3E2zh8pCoUMWcZ1CvWms0u'),
(3, 'check', 'rubayath@hotmail.com', '$2y$10$LqMfvyUmyPo7C8qHgpvbsec24.MMmETp.rSrglrNHz8X6ekd6LlEu'),
(4, 'test2', 'test2@smth.com', '$2y$10$jl55adYZuyDV4Jg6.SdFsuY3TPZCbp3wSpPZC0/xNfUF1egwmA2i6'),
(5, 'test3', 'test3@smth.com', '$2y$10$L9NVUgIMhBVY5YfBy6zHo.v.kDYb6n.LVh99HvNybYTov8KpeIw0G'),
(6, 'test4', 'test4@smth.com', '$2y$10$JNRoEGWM/RvY1tnTFYFLU.hd1yEtgxPY/EDFaz.42UMfZ8HRgsesa');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `subject` varchar(255) NOT NULL,
  `feedback` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `date`, `subject`, `feedback`) VALUES
(1, 'rubayat hyder', '2021-02-18', 'Rubayat&#39;s attempt 2 at feedback', 'Attempt number two at feedback');

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

CREATE TABLE `journals` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `journalName` varchar(255) NOT NULL,
  `counsellorName` varchar(255) NOT NULL,
  `journal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`id`, `username`, `date`, `journalName`, `counsellorName`, `journal`) VALUES
(1, 'rubayathyder', '2021-02-18', 'Rubayat', 'Me myself and I', 'Rubayat&#39;s first attempt at a journal.');

-- --------------------------------------------------------

--
-- Table structure for table `moods`
--

CREATE TABLE `moods` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `mood` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `moods`
--

INSERT INTO `moods` (`id`, `username`, `date`, `mood`) VALUES
(1, 'check', '2021-02-16', 5),
(16, 'check', '2021-02-17', 4),
(17, 'check', '2021-02-18', 0),
(18, 'check', '2021-02-19', 7),
(19, 'rubayathyder', '2021-02-17', 3),
(20, 'rubayathyder', '2021-02-18', 4);

-- --------------------------------------------------------

--
-- Table structure for table `thoughts`
--

CREATE TABLE `thoughts` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `thought1` varchar(255) NOT NULL,
  `thought2` varchar(255) NOT NULL,
  `thought3` varchar(255) NOT NULL,
  `thought4` varchar(255) NOT NULL,
  `thought5` varchar(255) NOT NULL,
  `vidKey` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thoughts`
--

INSERT INTO `thoughts` (`id`, `username`, `date`, `thought1`, `thought2`, `thought3`, `thought4`, `thought5`, `vidKey`) VALUES
(2, 'rubayathyder', '2021-02-16', 'Completed the coding for application development.', 'Fully understood the mvc framework for php.', 'Almost completed all other member iterations.', 'Completed most of the documentation for application development.', '', 'Klsi8CbSm8Y'),
(3, 'check', '2021-02-17', 'I feel good', 'Completed a task', 'Getting Takeout', 'Got new batteries', 'Got a new charger', ''),
(4, 'rubayathyder', '2021-02-17', 'Something to test', '', '', '', '', 'c_10qS7amjk');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(22, 'rubayathyder', 'rubayathyder007@gmail.com', '$2y$10$gvhxuCjlM4wcK/w22RSEG.7ioLabzQYZzLc9zy0ppKHdXFGucxbsa'),
(26, 'check', 'check@rubyhdr.com', '$2y$10$7Thn/tTpnP6i51UbTOrsNey3hoNVsRvGpFYRYHS8uCQqZCRpoR/WW'),
(27, 'test', 'r@smth.com', '$2y$10$2gCDiahMCGjomze1.huTr.M1UhTHlOvwnzeYBWrpxgxbry7267MbS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `counsellors`
--
ALTER TABLE `counsellors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journals`
--
ALTER TABLE `journals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moods`
--
ALTER TABLE `moods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thoughts`
--
ALTER TABLE `thoughts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `counsellors`
--
ALTER TABLE `counsellors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `journals`
--
ALTER TABLE `journals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `moods`
--
ALTER TABLE `moods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `thoughts`
--
ALTER TABLE `thoughts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
