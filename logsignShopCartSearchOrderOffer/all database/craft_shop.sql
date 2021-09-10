-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2020 at 03:21 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `craft shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `artcraft`
--

CREATE TABLE `artcraft` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `code` varchar(200) NOT NULL,
  `price` int(255) NOT NULL,
  `Category` varchar(500) NOT NULL,
  `image` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artcraft`
--

INSERT INTO `artcraft` (`id`, `name`, `code`, `price`, `Category`, `image`) VALUES
(1, 'Sign Pen', 'signpen01', 25, 'Art Craft', 'image/SignPen.jpg'),
(2, 'Brush', 'brush01', 50, 'Art Craft', 'image/Brush.jpg'),
(3, 'Color Pencil', 'colorpencil01', 20, 'Art Craft', 'image/ColorPencil.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `ID` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `price` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `Category` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`ID`, `name`, `price`, `code`, `Category`, `image`) VALUES
(1, 'Abstract  Stamp', '50', 'AbstractRollerStamp01', 'Stamp', 'image/AbstractRollerStamp.jpg'),
(2, 'Bird Roller Stamp', '50', 'BirdRollerStamp02', 'stamp', 'image/BirdRollerStamp.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orderconfirm`
--

CREATE TABLE `orderconfirm` (
  `UserName` varchar(500) NOT NULL,
  `ProductName` varchar(500) NOT NULL,
  `Quantity` int(255) NOT NULL,
  `Price` int(255) NOT NULL,
  `Total Price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderconfirm`
--

INSERT INTO `orderconfirm` (`UserName`, `ProductName`, `Quantity`, `Price`, `Total Price`) VALUES
('Tuba', 'Sign Pen', 1, 25, 25),
('Tuba', 'Sign Pen', 1, 25, 25),
('Tuba', 'Sign Pen', 1, 25, 25),
('Tuba', 'Sign Pen', 1, 25, 25),
('Tuba', 'Sign Pen', 1, 25, 25),
('Tuba', 'Sign Pen', 1, 25, 25),
('Tuba', 'Sign Pen', 1, 25, 25),
('Tuba', 'Sign Pen', 1, 25, 25);

-- --------------------------------------------------------

--
-- Table structure for table `papercraft`
--

CREATE TABLE `papercraft` (
  `id` int(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(200) NOT NULL,
  `price` int(255) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `papercraft`
--

INSERT INTO `papercraft` (`id`, `name`, `code`, `price`, `Category`, `image`) VALUES
(1, 'A4 Color Paper', 'a4colorpaper01', 10, 'Paper Craft', 'image/Color Paper.jpg'),
(2, 'Color Paper Mats', 'colorpapermats01', 50, 'Paper Craft', 'image/ColorPaperMats.jpg'),
(3, 'Scrap Book Paper', 'scrapbookpaper01', 50, 'Paper Craft', 'image/ScrapBookPaper.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `stampcraft`
--

CREATE TABLE `stampcraft` (
  `id` int(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(200) NOT NULL,
  `price` int(255) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stampcraft`
--

INSERT INTO `stampcraft` (`id`, `name`, `code`, `price`, `Category`, `image`) VALUES
(1, 'Flower Stamp', 'flowerstamp01', 100, 'Stamp Craft', 'image/FlowerStamp.jpg'),
(2, 'Leaf Stamp', 'leafstamp01', 100, 'Stamp Craft', 'image/Leaf Stamp.jpg'),
(3, 'Word Stamp', 'wordstamp01', 100, 'Stamp Craft', 'image/WordStamp.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artcraft`
--
ALTER TABLE `artcraft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `papercraft`
--
ALTER TABLE `papercraft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stampcraft`
--
ALTER TABLE `stampcraft`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artcraft`
--
ALTER TABLE `artcraft`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `papercraft`
--
ALTER TABLE `papercraft`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stampcraft`
--
ALTER TABLE `stampcraft`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
