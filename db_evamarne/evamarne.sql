-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 17, 2023 at 07:26 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evamarne`
--

-- --------------------------------------------------------

--
-- Table structure for table `billets`
--

CREATE TABLE `billets` (
  `id` int NOT NULL,
  `spectacle_id` int NOT NULL,
  `number_person` int NOT NULL,
  `Last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `First_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billets`
--

INSERT INTO `billets` (`id`, `spectacle_id`, `number_person`, `Last_name`, `First_name`, `email`, `phone`) VALUES
(1, 5, 4, 'Baba', 'Baby', 'babababy@yahoo.fr', 662626262),
(2, 6, 5, 'Manie', 'Marie', 'maniemarie@yahoo.fr', 700023322),
(3, 4, 3, 'Obi', 'Oto', 'obioto@yahoo.fr', 763524152),
(4, 3, 2, 'Sassa', 'Sona', 'sassasona@yahoo.fr', 121614151),
(5, 1, 4, 'Simon', 'Celio', 'simoncelio@yahoo.fr', 203066511),
(6, 2, 5, 'Oba', 'Toto', 'obatito@yahoo.fr', 663524152);

-- --------------------------------------------------------

--
-- Table structure for table `salles`
--

CREATE TABLE `salles` (
  `id` int NOT NULL,
  `salle_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salles`
--

INSERT INTO `salles` (`id`, `salle_name`, `address`, `zip_code`, `city`) VALUES
(1, 'Michel', 'Michel', '77200', 'Nanteau'),
(2, 'Martin', 'Martin\r\n\r\n', '77200', 'Nemours'),
(3, 'Anthonio', 'Anthonio', '77700', 'Morgis'),
(4, 'Marie', 'Marie', '71110', 'Montagne'),
(5, 'Paul', 'Paul', '77000', 'Bleue'),
(6, 'Joseph', 'Joseph', '71120', 'Joseph');

-- --------------------------------------------------------

--
-- Table structure for table `spectacles`
--

CREATE TABLE `spectacles` (
  `id` int NOT NULL,
  `salle_id` int NOT NULL,
  `spectacle_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `spectacle_description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `number_place_dispo` int DEFAULT NULL,
  `spectacle_timing` time DEFAULT NULL,
  `spectacle_start` time DEFAULT NULL,
  `spectacle_end` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spectacles`
--

INSERT INTO `spectacles` (`id`, `salle_id`, `spectacle_name`, `spectacle_description`, `date`, `price`, `number_place_dispo`, `spectacle_timing`, `spectacle_start`, `spectacle_end`) VALUES
(1, 1, 'Lightroom', 'dfjfffnkdfnklonk^f^dfkbnkb,kxcvbkls<dsnj^>>KINNNGS>IDFNdgfs$nsfpkdpfkp,d', '2023-05-30 11:00:00', '0.00', 22, '04:00:00', '11:00:00', '15:00:00'),
(2, 2, 'Happy', 'dfjfffnkdfnklonk^f^dfkbnkb,kxcvbkls<dsnj^>>KINNNGS>IDFNdgfs$nsfpkdpfkp,d', '2023-05-01 11:00:00', '20.00', 50, '03:00:00', '11:00:00', '14:00:00'),
(3, 3, 'Hello', 'dfjfffnkdfnklonk^f^dfkbnkb,kxcvbkls<dsnj^>>KINNNGS>IDFNdgfs$nsfpkdpfkp,d', '2023-06-20 11:00:00', '12.00', 22, '05:00:00', '11:00:00', '16:00:00'),
(4, 4, 'Whiteroom', 'dfjfffnkdfnklonk^f^dfkbnkb,kxcvbkls<dsnj^>>KINNNGS>IDFNdgfs$nsfpkdpfkp,d', '2023-06-20 10:00:00', '0.00', 22, '02:00:00', '10:00:00', '12:00:00'),
(5, 5, 'Good', 'dfjfffnkdfnklonk^f^dfkbnkb,kxcvbkls<dsnj^>>KINNNGS>IDFNdgfs$nsfpkdpfkp,d', '2023-06-10 10:00:00', '18.00', 22, '06:00:00', '10:00:00', '16:00:00'),
(6, 6, 'Rap', 'dfjfffnkdfnklonk^f^dfkbnkb,kxcvbkls<dsnj^>>KINNNGS>IDFNdgfs$nsfpkdpfkp,d', '2023-04-10 10:00:00', '20.00', 50, '02:00:00', '10:00:00', '12:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billets`
--
ALTER TABLE `billets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spectacle_id` (`spectacle_id`);

--
-- Indexes for table `salles`
--
ALTER TABLE `salles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spectacles`
--
ALTER TABLE `spectacles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salle_id` (`salle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billets`
--
ALTER TABLE `billets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `salles`
--
ALTER TABLE `salles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `spectacles`
--
ALTER TABLE `spectacles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billets`
--
ALTER TABLE `billets`
  ADD CONSTRAINT `billets_ibfk_1` FOREIGN KEY (`spectacle_id`) REFERENCES `spectacles` (`id`);

--
-- Constraints for table `spectacles`
--
ALTER TABLE `spectacles`
  ADD CONSTRAINT `spectacles_ibfk_1` FOREIGN KEY (`salle_id`) REFERENCES `salles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
