-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2022 at 01:12 PM
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
-- Database: `product`
--

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`detail_id`, `order_id`, `product_id`) VALUES
(1, 0, 2),
(2, 0, 2),
(3, 0, 2),
(4, 0, 10),
(5, 0, 2),
(6, 0, 10),
(7, 0, 2),
(8, 0, 1),
(9, 0, 1),
(10, 0, 1),
(11, 0, 6),
(12, 0, 4),
(13, 0, 10),
(14, 0, 7),
(15, 0, 42),
(16, 0, 1),
(17, 0, 2),
(18, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `orderproduct`
--

CREATE TABLE `orderproduct` (
  `ID` int(11) NOT NULL,
  `FName` varchar(256) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `Lname` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderproduct`
--

INSERT INTO `orderproduct` (`ID`, `FName`, `Lname`, `Address`, `Mobile`) VALUES
(0, 'SDF', 'SDF', 'SDF', 'SDF'),
(0, 'dh', 'dfgh', 'dfgh', 'dfgh'),
(0, 'dh', 'dfgh', 'dfgh', 'dfgh'),
(0, 'asd', 'asd', 'asd', 'asd'),
(0, 'SDF', 'SDF', 'SDF', 'SDF'),
(0, 'uiu', 'ii', 'iuik', '8kk'),
(0, '', '', '', ''),
(0, 'er', 'erer', 'rgrg', 'rgrg'),
(0, '', '', '', ''),
(0, 'fdf', 'dfd', 'dvfdd', 'dvd'),
(0, ';bff', 'vfvf', 'fvf', 'dvffr'),
(0, 'วิภาวี ', 'ม่วงอ่อน', '45 ม.4 ต.โคกไทย', '0909857535');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `description` text DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `image`) VALUES
(1, 'LIBRE EDP ', '50 ML', 5000, 'https://i.ibb.co/sq0BLCb/3ee3b6b0-ce92-11eb-a618-41e32fb3b1c6-original.jpg'),
(2, 'LIBRE LE PARFUM', '50 ML', 6000, 'https://i.ibb.co/JQW0vHM/WW-51020-YSL-LIBRE-LE-PARFUM-1.jpg'),
(3, 'Y EAU DE PARFUM', '100 ML', 5300, 'https://i.ibb.co/dGHd75f/3614272050358.jpg'),
(4, 'MON PARIS EAU DE PARFUM', '90 ML', 6500, 'c1fb4d22f2333665a9be96f884ddc1ab.jpg'),
(5, 'Y EAU FRA?CHE', '60 ML', 3300, 'https://i.ibb.co/Q8h0H5p/cds28260356-2-312.jpg'),
(6, 'L\'HOMME LE PARFUM', '60 ML', 5100, 'https://i.ibb.co/t8h5QMn/download.jpg'),
(7, 'BLACK OPIUM EAU DE PARFUM', '90 ML', 6500, 'https://i.ibb.co/z8QyZ6b/WW-40701-YSL-1-opium-eau-de-parfum-50ml-Alt1.jpg'),
(8, 'MISS DIOR BLOOMING BOUQUET', '30 ML', 2750, 'https://i.ibb.co/yPkv6C7/download-1.jpg'),
(9, 'MISS DIOR', '20 ML', 1950, 'https://i.ibb.co/ckpSGXT/images.jpg'),
(10, 'MISS DIOR ROSE N\'ROSES', '30 ML', 2750, 'https://i.ibb.co/ckpSGXT/images.jpg'),
(11, 'MISS DIOR ABSOLUTELY BLOOMING', '30 ML', 3450, 'https://sv1.picz.in.th/images/2022/09/21/pzB51N.jpg'),
(12, 'MISS DIOR EAU DE PARFUM', '30 ML', 3450, 'https://sv1.picz.in.th/images/2022/09/21/pzBAzW.png'),
(13, 'MISS DIOR ROSE ESSENCE', '30 ML', 8300, 'https://sv1.picz.in.th/images/2022/09/21/pzBs61.png'),
(14, 'JOY BY DIOR', '50 ML', 5500, 'https://sv1.picz.in.th/images/2022/09/21/pzB2My.png'),
(15, 'SAUVAGE', '60 ML', 4500, 'https://sv1.picz.in.th/images/2022/09/21/pzB6A9.jpg'),
(16, 'DIOR HOMME SPORT', '75 ML', 3750, 'https://sv1.picz.in.th/images/2022/09/21/pzB8kb.jpg'),
(17, 'N?5', '100 ML', 6700, 'https://sv1.picz.in.th/images/2022/09/21/pzBHOf.jpg'),
(18, 'GABRIELLE CHANEL', '35 ML', 13500, 'https://sv1.picz.in.th/images/2022/09/21/pzBVXa.jpg'),
(19, 'N?5 L\'EAU', '100 ML', 6700, 'https://sv1.picz.in.th/images/2022/09/21/pzBFkI.jpg'),
(20, 'COCO MADEMOISELLE', '100 ML', 6700, 'https://sv1.picz.in.th/images/2022/09/21/pzBIOP.jpg'),
(21, 'CHANCE', '100 ML', 6700, 'https://sv1.picz.in.th/images/2022/09/21/pzBMat.jpg'),
(22, 'CHANCE EAU FRA?CHE', '100 ML', 5200, 'https://sv1.picz.in.th/images/2022/09/21/pzfYWv.jpg'),
(23, 'CHANCE EAU TENDRE', '100 ML', 6700, 'https://sv1.picz.in.th/images/2022/09/21/pzff3Q.jpg'),
(24, 'COCO NOIR', '100 ML', 7200, 'https://sv1.picz.in.th/images/2022/09/21/pzfkan.jpg'),
(25, 'ALLURE', '100 ML', 6700, 'https://sv1.picz.in.th/images/2022/09/21/pzfTQW.jpg'),
(26, 'Daisy Eau So Fresh Eau De Toilette', '30 ML', 2430, 'https://sv1.picz.in.th/images/2022/09/21/pzfOd8.jpg'),
(27, 'Her Blossom EDT', '30 ML', 2640, 'https://sv1.picz.in.th/images/2022/09/21/pzfjs0.jpg'),
(28, 'Flora Gorgeous Jasmine Eau De Parfum', '100 ML', 6750, 'https://sv1.picz.in.th/images/2022/09/21/pzfD9Z.jpg'),
(29, 'Daisy Marc Jacobs Eau So Intense Eau de Parfum', '30 ML', 2700, 'https://sv1.picz.in.th/images/2022/09/21/pzfFsy.jpg'),
(30, 'Signature Eau De Parfum', '50 ML', 4960, 'https://sv1.picz.in.th/images/2022/09/21/pzhWT9.jpg'),
(31, 'Toy 2 Bubble Gum Eau de Toilette', '100 ML', 3700, 'https://sv1.picz.in.th/images/2022/09/21/pzhSBf.jpg'),
(32, 'My Burberry Black Eau De Parfum', '30 ML', 3120, 'https://sv1.picz.in.th/images/2022/09/21/pzhhF0.jpg'),
(33, 'Gucci Bloom Eau de Toilette', '50 ML', 5760, 'https://sv1.picz.in.th/images/2022/09/21/pzh9lZ.jpg'),
(34, 'Viva La Juicy Gold Couture Eau De Parfum', '100 ML', 4300, 'https://sv1.picz.in.th/images/2022/09/21/pzhTvI.jpg'),
(35, 'Daisy Love Eau So Sweet', '50 ML', 3375, 'https://sv1.picz.in.th/images/2022/09/21/pzhRFE.jpg'),
(36, 'Eternity Eau De Parfum Spray', '100 ML', 4320, 'https://sv1.picz.in.th/images/2022/09/21/pzhQtN.jpg'),
(37, 'Her London Dream EDP', '50 ML', 4720, 'https://sv1.picz.in.th/images/2022/09/21/pzhEfS.jpg'),
(38, 'Gucci Guilty Parfum Pour Homme', '50 ML', 4160, 'https://sv1.picz.in.th/images/2022/09/21/pzhDC1.jpg'),
(39, 'Polo Cologne By Ralph Lauren', '118 ML', 3750, 'https://sv1.picz.in.th/images/2022/09/21/pzh2o9.jpg'),
(40, 'Everyone Eau De Parfum', '100 ML', 3360, 'https://sv1.picz.in.th/images/2022/09/21/pzhCGJ.jpg'),
(41, 'Dylan Blue Eau De Toilette', '30 ML', 2400, 'https://sv1.picz.in.th/images/2022/09/21/pzhViz.jpg'),
(42, 'Pour Homme EDT', '50 ML', 2800, 'https://sv1.picz.in.th/images/2022/09/21/pzhvw0.jpg'),
(43, 'Lost Cherry Eau De Parfum', '50 ML', 13900, 'https://sv1.picz.in.th/images/2022/09/21/pzhJJZ.jpg'),
(44, 'Eros EDT', '30 ML', 2400, 'https://sv1.picz.in.th/images/2022/09/21/pzhISe.jpg'),
(45, 'Platinum Eau De Parfum', '60 ML', 3200, 'https://sv1.picz.in.th/images/2022/09/21/pzkYJV.jpg'),
(46, 'Artisan Pure Eau de Toilette', '125 ML', 3500, 'https://sv1.picz.in.th/images/2022/09/21/pzkBVn.jpg'),
(47, 'CK All Eau De Toilette', '100 ML', 3040, 'https://sv1.picz.in.th/images/2022/09/21/pzk3u2.jpg'),
(48, 'Cool Water Intense For Him Eau De Parfum', '75 ML', 2800, 'https://sv1.picz.in.th/images/2022/09/21/pzktwy.jpg'),
(49, 'CK One Gold Eau De Toilette', '100 ML', 3040, 'https://sv1.picz.in.th/images/2022/09/21/pzkZhJ.jpg'),
(50, 'Bad Boy Eau De Parfum', '100 ML', 4700, 'https://sv1.picz.in.th/images/2022/09/21/pzkRYa.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
