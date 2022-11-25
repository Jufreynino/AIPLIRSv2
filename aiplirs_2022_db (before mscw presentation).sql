-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2022 at 03:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aiplirs_2022_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `am_table`
--

CREATE TABLE `am_table` (
  `am_table` int(11) NOT NULL,
  `drr_id` varchar(255) NOT NULL,
  `s_heads` varchar(255) NOT NULL DEFAULT '0',
  `s_weight` varchar(255) NOT NULL DEFAULT '0',
  `s_heads_validate` varchar(255) NOT NULL DEFAULT '0',
  `s_weight_validate` varchar(255) NOT NULL DEFAULT '0',
  `am_validate_id` varchar(255) NOT NULL DEFAULT '0',
  `s_cause` varchar(255) NOT NULL DEFAULT '0',
  `r_heads` varchar(255) NOT NULL DEFAULT '0',
  `r_weight` varchar(255) NOT NULL DEFAULT '0',
  `r_cause` varchar(255) NOT NULL DEFAULT '0',
  `c_heads` varchar(255) NOT NULL DEFAULT '0',
  `c_weight` varchar(255) NOT NULL DEFAULT '0',
  `c_cause` varchar(255) NOT NULL DEFAULT '0',
  `am_date` varchar(255) NOT NULL,
  `am_time` varchar(255) NOT NULL DEFAULT '0',
  `me_id` int(15) NOT NULL,
  `am_species` varchar(255) NOT NULL,
  `am_region` varchar(255) NOT NULL,
  `am_province` varchar(255) NOT NULL,
  `am_city` varchar(255) NOT NULL,
  `am_barangay` varchar(255) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `am_suspected` varchar(255) NOT NULL DEFAULT '0',
  `am_suspected_status` varchar(255) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `am_table`
--

INSERT INTO `am_table` (`am_table`, `drr_id`, `s_heads`, `s_weight`, `s_heads_validate`, `s_weight_validate`, `am_validate_id`, `s_cause`, `r_heads`, `r_weight`, `r_cause`, `c_heads`, `c_weight`, `c_cause`, `am_date`, `am_time`, `me_id`, `am_species`, `am_region`, `am_province`, `am_city`, `am_barangay`, `employee_id`, `am_suspected`, `am_suspected_status`) VALUES
(116, '117', '0', '0', '0', '0', '0', '', '0', '0', '', '55', '66', '212', '07/04/2022', '0', 58, 'Chicken', 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'ALICIA', 'La Hacienda', '46', '0', '1'),
(117, '118', '0', '0', '0', '0', '0', '', '0', '0', '', '1', '95', '118', '07/04/2022', '0', 57, 'Hog', 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'MINGLANILLA', 'Cuanos', '46', '0', '1'),
(118, '119', '0', '0', '0', '0', '0', '', '2', '800', '103', '0', '0', '', '07/04/2022', '0', 57, 'Cattle', 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'BARILI', 'Azucena', '46', '0', '1'),
(119, '125', '0', '0', '0', '0', '0', '', '0', '0', '', '1', '350', '146', '07/04/2022', '0', 57, 'Cattle', 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'CITY OF TALISAY', 'San Isidro', '46', '0', '1'),
(120, '129', '0', '0', '0', '0', '0', '', '0', '0', '', '5', '7.5', '212', '07/05/2022', '0', 55, 'Chicken', 'REGION III (CENTRAL LUZON)', 'ISABELA', 'RAMON', 'San Antonio', '47', '0', '1'),
(121, '133', '0', '0', '0', '0', '0', '', '0', '0', '', '40', '56', '212', '07/05/2022', '0', 58, 'Chicken', 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'DIMIAO', 'Canhayupon', '46', '0', '1'),
(123, '136', '0', '0', '0', '0', '0', '', '0', '0', '', '1', '70', '118', '07/05/2022', '0', 60, 'Hog', 'REGION III (CENTRAL LUZON)', 'NUEVA ECIJA', 'CABANATUAN CITY', 'Palagay', '45', '0', '1'),
(125, '127', '0', '0', '0', '0', '0', '', '0', '0', '', '30', '36', '212', '07/06/2022', '0', 55, 'Chicken', 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'BACOLOR', 'San Isidro', '47', '0', '1'),
(126, '129', '0', '0', '0', '0', '0', '', '0', '0', '', '75', '97.5', '212', '07/06/2022', '0', 55, 'Chicken', 'REGION III (CENTRAL LUZON)', 'ISABELA', 'RAMON', 'San Antonio', '47', '0', '1'),
(127, '134', '0', '0', '0', '0', '0', '', '0', '0', '', '35', '49', '212', '07/06/2022', '0', 58, 'Chicken', 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'UBAY', 'Lomangog', '46', '0', '1'),
(130, '149', '0', '0', '0', '0', '0', '', '0', '0', '', '225', '585', '212', '07/07/2022', '0', 59, 'Chicken', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'TUPI', 'Acmonan', '55', '0', '1'),
(131, '151', '0', '0', '0', '0', '0', '', '0', '0', '', '35', '42', '212', '07/07/2022', '0', 59, 'Chicken', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'TUPI', 'Cebuano', '55', '0', '1'),
(132, '150', '0', '0', '0', '0', '0', '', '0', '0', '', '15', '16.5', '212', '07/07/2022', '0', 59, 'Chicken', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'POLOMOLOK', 'Silway 7', '55', '0', '1'),
(133, '159', '100', '100', '0', '0', '0', '205', '0', '0', '', '0', '0', '', '07/20/2022', '0', 55, 'Chicken', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BOCAUE', 'Tambobong', '47', '0', '1'),
(134, '159', '0', '0', '0', '0', '0', '', '0', '0', '', '1', '11', '212', '07/20/2022', '0', 55, 'Chicken', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BOCAUE', 'Tambobong', '47', '0', '1'),
(201, '140', '2', '2', '1', '0', '0', '89', '0', '0', '', '0', '0', '', '07/05/2022', '0', 60, 'Hog', 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'SAN SIMON', 'Concepcion', '45', '0', '0'),
(223, '140', '2', '2', '1', '2', '0', '89', '0', '0', '', '0', '0', '', '07/05/2022', '0', 60, 'Hog', 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'SAN SIMON', 'SAN SIMON', '45', '0', '0'),
(565, '177', '2', '2', '0', '0', '0', '89', '0', '0', '', '0', '0', '', '09/01/2022', '02:13:03pm', 60, 'Hog', 'REGION III (CENTRAL LUZON)', 'NUEVA ECIJA', 'PALAYAN CITY (Capital)', 'Sapang Buho', '45', '1', '0'),
(566, '177', '0', '0', '0', '0', '565', '', '1', '1', '247', '0', '0', '', '09/01/2022', '0', 60, 'Hog', 'REGION III (CENTRAL LUZON)', 'NUEVA ECIJA', 'PALAYAN CITY (Capital)', 'Sapang Buho', '45', '0', '1'),
(567, '177', '0', '0', '0', '0', '565', '', '0', '0', '', '1', '1', '118', '09/01/2022', '0', 60, 'Hog', 'REGION III (CENTRAL LUZON)', 'NUEVA ECIJA', 'PALAYAN CITY (Capital)', 'Sapang Buho', '45', '0', '1'),
(568, '181', '5', '3', '2', '1', '0', '89', '0', '0', '', '0', '0', '', '09/06/2022', '09:37:37am', 60, 'Hog', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'DOÑA REMEDIOS TRINIDAD', 'Camachile', '45', '1', '0'),
(569, '181', '0', '0', '0', '0', '568', '', '2', '1', '247', '0', '0', '', '09/06/2022', '0', 60, 'Hog', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'DOÑA REMEDIOS TRINIDAD', 'Camachile', '45', '0', '1'),
(570, '181', '0', '0', '0', '0', '568', '', '0', '0', '', '1', '1', '134', '09/06/2022', '0', 60, 'Hog', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'DOÑA REMEDIOS TRINIDAD', 'DOÑA REMEDIOS TRINIDAD', '45', '0', '1'),
(571, '181', '0', '0', '0', '0', '0', '', '2', '2', '247', '0', '0', '', '09/06/2022', '0', 60, 'Hog', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'DOÑA REMEDIOS TRINIDAD', 'DOÑA REMEDIOS TRINIDAD', '45', '1', '1'),
(573, '181', '20', '20', '16', '16', '0', '90', '0', '0', '', '0', '0', '', '09/06/2022', '10:00:04am', 60, 'Hog', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'DOÑA REMEDIOS TRINIDAD', 'DOÑA REMEDIOS TRINIDAD', '45', '1', '1'),
(574, '181', '0', '0', '0', '0', '573', '', '4', '4', '247', '0', '0', '', '09/06/2022', '0', 60, 'Hog', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'DOÑA REMEDIOS TRINIDAD', 'Camachile', '45', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `assigment_tbl`
--

CREATE TABLE `assigment_tbl` (
  `assign_id` int(11) NOT NULL,
  `me_id` varchar(255) NOT NULL,
  `assign_date` varchar(255) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `assign_region` varchar(255) NOT NULL,
  `assign_status` varchar(255) NOT NULL DEFAULT 'Active',
  `end_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assigment_tbl`
--

INSERT INTO `assigment_tbl` (`assign_id`, `me_id`, `assign_date`, `employee_id`, `assign_region`, `assign_status`, `end_date`) VALUES
(1, '60', '07/07/2022', '45', 'REGION III (CENTRAL LUZON)', '0', ''),
(2, '55', '07/07/2022', '47', 'REGION III (CENTRAL LUZON)', '0', ''),
(4, '57', '07/07/2022', '46', 'REGION VII (CENTRAL VISAYAS)', 'Active', ''),
(5, '58', '07/07/2022', '46', 'REGION VII (CENTRAL VISAYAS)', 'Active', ''),
(6, '59', '07/07/2022', '55', 'REGION XII (SOCCSKSARGEN)', 'Active', ''),
(19, '60', '08/05/2022', '47', 'REGION III (CENTRAL LUZON)', 'Reassigned', '09/08/2022'),
(20, '55', '08/05/2022', '45', 'REGION III (CENTRAL LUZON)', 'Reassigned', '08/10/2022'),
(21, '67', '08/17/2022', '45', 'REGION III (CENTRAL LUZON)', 'Active', ''),
(22, '67', '08/17/2022', '47', 'REGION III (CENTRAL LUZON)', 'Active', ''),
(23, '55', '10/04/2022', '44', 'REGION III (CENTRAL LUZON)', 'Active', '');

-- --------------------------------------------------------

--
-- Table structure for table `attachment_tbl`
--

CREATE TABLE `attachment_tbl` (
  `a_id` int(11) NOT NULL,
  `s_permit` varchar(255) NOT NULL DEFAULT '0',
  `drr_id` varchar(255) NOT NULL,
  `veterenary_certificate` varchar(255) NOT NULL DEFAULT '0',
  `ownership` varchar(255) NOT NULL DEFAULT '0',
  `transfer` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attachment_tbl`
--

INSERT INTO `attachment_tbl` (`a_id`, `s_permit`, `drr_id`, `veterenary_certificate`, `ownership`, `transfer`) VALUES
(115, 'shipping_permit.jpg', '108', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(116, 'shipping_permit.jpg', '109', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(117, 'shipping_permit.jpg', '110', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(118, 'shipping_permit.jpg', '111', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(119, 'shipping_permit.jpg', '112', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(120, 'shipping_permit.jpg', '113', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(121, 'shipping_permit.jpg', '114', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(122, 'shipping_permit.jpg', '115', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(123, 'shipping_permit.jpg', '116', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(124, 'shipping_permit.jpg', '117', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(125, 'shipping_permit.jpg', '118', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(126, 'shipping_permit.jpg', '119', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(127, 'shipping_permit.jpg', '120', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(128, 'shipping_permit.jpg', '121', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(129, 'shipping_permit.jpg', '122', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(130, 'shipping_permit.jpg', '123', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(131, 'shipping_permit.jpg', '124', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(132, 'shipping_permit.jpg', '125', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(133, 'shipping_permit.jpg', '126', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(134, 'shipping_permit.jpg', '127', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(135, 'shipping_permit.jpg', '128', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(136, 'shipping_permit.jpg', '129', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(137, 'shipping_permit.jpg', '130', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(138, 'shipping_permit.jpg', '131', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(139, 'shipping_permit.jpg', '132', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(140, 'shipping_permit.jpg', '133', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(141, 'shipping_permit.jpg', '134', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(142, 'shipping_permit.jpg', '135', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(143, 'shipping_permit.jpg', '136', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(144, 'shipping_permit.jpg', '137', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(145, 'shipping_permit.jpg', '138', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(146, 'shipping_permit.jpg', '139', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(147, 'shipping_permit.jpg', '140', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(148, 'shipping_permit.jpg', '141', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(149, 'shipping_permit.jpg', '142', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(150, 'shipping_permit.jpg', '143', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(151, 'shipping_permit.jpg', '144', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(152, 'shipping_permit.jpg', '145', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(153, 'shipping_permit.jpg', '146', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(154, 'shipping_permit.jpg', '147', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(155, 'shipping_permit.jpg', '148', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(156, 'shipping_permit.jpg', '149', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(157, 'shipping_permit.jpg', '150', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(158, 'shipping_permit.jpg', '151', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(159, 'shipping_permit.jpg', '152', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(160, 'shipping_permit.jpg', '153', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(161, 'shipping_permit.jpg', '154', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(162, 'shipping_permit.jpg', '159', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(163, 'shipping_permit.jpg', '160', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(164, '4273-', '161', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(165, 'shipping_permit.jpg', '162', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(166, 'shipping_permit.jpg', '163', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(167, 'shipping_permit.jpg', '164', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(168, '0', '165', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(169, '0', '166', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(170, '0', '167', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(171, 'shipping_permit.jpg', '168', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(172, 'shipping_permit.jpg', '169', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(173, 'shipping_permit.jpg', '170', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(174, '0', '171', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(175, '0', '172', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(176, 'shipping_permit.jpg', '173', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(177, 'shipping_permit.jpg', '174', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(178, '2809-WIN_20210716_14_52_13_Pro.jpg', '175', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(179, 'shipping_permit.jpg', '176', 'veterinary.jpg', 'owner.png', 'transfer.png'),
(180, '8988-nmis wallpaper blue.png', '177', '2515-NMIS Wallpaper V02.png', '0', '0'),
(181, '5169-nmis wallpaper blue.png', '178', '8072-NMIS Wallpaper V02.png', '0', '0'),
(182, '6169-nmis wallpaper blue.png', '179', '1120-NMIS Wallpaper V02.png', '0', '0'),
(183, '8810-nmis wallpaper blue.png', '180', '8052-NMIS Wallpaper V02.png', '0', '0'),
(184, '9416-nmis wallpaper blue.png', '181', '3696-NMIS Wallpaper V02.png', '0', '0'),
(185, '2292-WIN_20220420_12_59_04_Pro.jpg', '182', '2163-WIN_20220117_16_08_48_Pro.jpg', '0', '0'),
(186, '9081-nmis wallpaper blue.png', '183', '2122-NMIS Wallpaper V02.png', '0', '0'),
(187, '3427-nmis wallpaper blue.png', '184', '2203-NMIS Wallpaper V02.png', '0', '0'),
(188, '8009-nmis wallpaper blue.png', '185', '8528-NMIS Wallpaper V02.png', '0', '0'),
(189, '2889-nmis wallpaper blue.png', '186', '4917-NMIS Wallpaper V02.png', '0', '0'),
(190, '0', '187', '9591-Wearing-blue-shirt-expectations-vs-reality-meme-1108.png', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `ddr_table`
--

CREATE TABLE `ddr_table` (
  `drr_id` int(15) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `drr_date_time` varchar(255) NOT NULL,
  `drr_species` varchar(255) NOT NULL,
  `drr_category` varchar(255) NOT NULL,
  `drr_meat_dealer` varchar(255) NOT NULL,
  `drr_meat_dealer_lastname` varchar(255) NOT NULL,
  `drr_batch_number` varchar(255) NOT NULL,
  `drr_holding_pen` varchar(255) NOT NULL,
  `drr_region_code` varchar(255) NOT NULL,
  `drr_province_code` varchar(255) NOT NULL,
  `drr_city_code` varchar(255) NOT NULL,
  `drr_barangay_code` varchar(255) NOT NULL,
  `drr_boiler_head` varchar(255) NOT NULL,
  `drr_broiler_weight` varchar(255) NOT NULL,
  `drr_culled_head` varchar(255) NOT NULL,
  `drr_culled_weight` varchar(255) NOT NULL,
  `drr_native_head` varchar(255) NOT NULL,
  `drr_native_weight` varchar(255) NOT NULL,
  `culled_boar_head` varchar(255) NOT NULL,
  `culled_boar_weight` varchar(255) NOT NULL,
  `drr_total_head` varchar(255) NOT NULL,
  `drr_total_weight` varchar(255) NOT NULL,
  `drr_status` varchar(255) NOT NULL DEFAULT '0',
  `drr_report_status` varchar(255) NOT NULL DEFAULT '0',
  `drr_date` varchar(255) NOT NULL,
  `drr_time` varchar(255) NOT NULL,
  `drr_inspection_status` varchar(255) NOT NULL DEFAULT '0',
  `me_id` varchar(255) NOT NULL,
  `drr_farm_source` varchar(255) NOT NULL,
  `drr_farm_souce_type` varchar(255) NOT NULL,
  `drr_status_for_edit` varchar(255) NOT NULL DEFAULT '0',
  `drr_remarks` varchar(255) NOT NULL DEFAULT '0',
  `drr_suspected` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ddr_table`
--

INSERT INTO `ddr_table` (`drr_id`, `employee_id`, `drr_date_time`, `drr_species`, `drr_category`, `drr_meat_dealer`, `drr_meat_dealer_lastname`, `drr_batch_number`, `drr_holding_pen`, `drr_region_code`, `drr_province_code`, `drr_city_code`, `drr_barangay_code`, `drr_boiler_head`, `drr_broiler_weight`, `drr_culled_head`, `drr_culled_weight`, `drr_native_head`, `drr_native_weight`, `culled_boar_head`, `culled_boar_weight`, `drr_total_head`, `drr_total_weight`, `drr_status`, `drr_report_status`, `drr_date`, `drr_time`, `drr_inspection_status`, `me_id`, `drr_farm_source`, `drr_farm_souce_type`, `drr_status_for_edit`, `drr_remarks`, `drr_suspected`) VALUES
(116, 'dsads', '07/04/2022 08:04:45am', 'Hog', 'SLH', 'Meat Dealer 13', '', '001', '1', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'GENERAL SANTOS CITY (DADIANGAS)', 'Conel', '200', '17380', '5', '600', '0', '0', '0', '0', '205', '17980.00', '0', '0', '07/04/2022', '08:04:45am', '0', '56', 'GenSan Hog Farm', 'Commercial', '0', '0', '0'),
(117, 'dsads', '07/04/2022 10:19:47am', 'Chicken', 'PDP', 'Meat Dealer 10', '', '1', 'NA', 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'ALICIA', 'La Hacienda', '5000', '5001.3', '0', '0', '0', '0', '0', '0', '5000', '5001.30', '1', '0', '07/04/2022', '10:19:47am', '0', '58', 'Chicken Feet Poultry Farm', 'Commercial', '0', '0', '0'),
(118, 'dsads', '07/04/2022 12:48:59pm', 'Hog', 'SLH', 'Meat Dealer 7', '', '1', '1', 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'MINGLANILLA', 'Cuanos', '50', '4750', '0', '0', '0', '0', '0', '0', '50', '4750.00', '1', '0', '07/04/2022', '12:48:59pm', '0', '57', 'QRT Farm', 'Commercial', '0', '0', '0'),
(119, 'dsads', '07/04/2022 12:52:33pm', 'Cattle', 'SLH', 'Meat Dealer 7', '', '2', '2', 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'BARILI', 'Azucena', '15', '6000', '0', '0', '0', '0', '0', '0', '15', '6000.00', '1', '0', '07/04/2022', '12:52:33pm', '0', '57', 'JRA Livestock Inc.', 'Commercial', '0', '0', '0'),
(120, 'dsads', '07/04/2022 01:05:16pm', 'Chicken', 'PDP', 'Meat Dealer 4', '', '1', '1', 'REGION III (CENTRAL LUZON)', 'TARLAC', 'SAN JOSE', 'Burgos', '15000', '18000', '0', '0', '0', '0', '0', '0', '15000', '18000.00', '0', '1', '07/04/2022', '01:05:16pm', '1', '55', 'Chicken feet Poultry ', 'Commercial', '0', '0', '1'),
(121, 'dsads', '07/04/2022 01:15:42pm', 'Chicken', 'PDP', 'Meat Dealer 11', '', '1', 'NA', 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'DIMIAO', 'Canhayupon', '3000', '3600', '0', '0', '0', '0', '0', '0', '3000', '3600.00', '0', '1', '07/04/2022', '01:15:42pm', '0', '58', 'Bountiful Chicken Farm', 'Commercial', '0', '0', '0'),
(122, 'dsads', '07/04/2022 01:29:02pm', 'Hog', 'SLH', 'Meat Dealer 14', '', '002', '2', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'GENERAL SANTOS CITY (DADIANGAS)', 'Baluan', '50', '4620', '0', '0', '0', '0', '0', '0', '50', '4620.00', '0', '0', '07/04/2022', '01:29:02pm', '0', '56', 'Prime Farms Inc.', 'Backyard', '0', '0', '0'),
(123, 'dsads', '07/04/2022 02:16:03pm', 'Ostrich', 'SLH', 'Meat Dealer 15', '', '003', '3', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'TUPI', 'Polonuling', '5', '525', '0', '0', '0', '0', '0', '0', '5', '525.00', '0', '0', '07/04/2022', '02:16:03pm', '0', '56', 'ABC Farm', 'Backyard', '0', '0', '0'),
(124, 'dsads', '07/04/2022 02:18:11pm', 'Hog', 'SLH', 'Meat Dealer 8', '', '3', '3', 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'DUMANJUG', 'Lawaan', '70', '5950', '0', '0', '0', '0', '0', '0', '70', '5950.00', '1', '0', '07/04/2022', '02:18:11pm', '0', '57', 'Cebu Hog Farm', 'Commercial', '0', '0', '0'),
(125, 'dsads', '07/04/2022 02:20:36pm', 'Cattle', 'SLH', 'Meat Dealer 9', '', '4', '4', 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'CITY OF TALISAY', 'San Isidro', '5', '1750', '0', '0', '0', '0', '0', '0', '5', '1750.00', '1', '0', '07/04/2022', '02:20:36pm', '0', '57', 'Mr. David Garcia', 'Backyard', '0', '0', '0'),
(126, 'dsads', '07/04/2022 02:30:44pm', 'Chicken', 'PDP', 'Meat Dealer 4', '', '1', '1', 'REGION III (CENTRAL LUZON)', 'TARLAC', 'SAN JOSE', 'Burgos', '15000', '18000', '0', '0', '0', '0', '0', '0', '15000', '18000.00', '0', '1', '07/04/2022', '02:30:44pm', '1', '55', 'Chicken feet Poultry ', 'Commercial', '0', '0', '0'),
(127, 'dsads', '07/04/2022 02:33:42pm', 'Chicken', 'PDP', 'Meat Dealer 5', '', '2', '1', 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'BACOLOR', 'San Isidro', '20000', '26000', '0', '0', '0', '0', '0', '0', '20000', '26000.00', '0', '1', '07/04/2022', '02:33:42pm', '1', '55', 'ABC Poultry Farm', 'Commercial', '0', '0', '0'),
(128, 'dsads', '07/04/2022 03:13:28pm', 'Chicken', 'PDP', 'Meat Dealer 12', '', '1', 'NA', 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'UBAY', 'Lomangog', '7000', '10500', '0', '0', '0', '0', '0', '0', '7000', '10500.00', '0', '0', '07/04/2022', '03:13:28pm', '0', '58', 'Mr. Santos Sy', 'Commercial', '0', '0', '0'),
(129, 'dsads', '07/04/2022 11:33:26pm', 'Chicken', 'PDP', 'Meat dealer 6', '', '1', '1', 'REGION III (CENTRAL LUZON)', 'ISABELA', 'RAMON', 'San Antonio', '12000', '18000', '0', '0', '0', '0', '0', '0', '12000', '18000.00', '0', '1', '07/04/2022', '11:33:26pm', '1', '55', 'Golden farm inc', 'Commercial', '0', '0', '0'),
(130, 'dsads', '07/05/2022 11:06:27am', 'Hog', 'SLH', 'Meat Dealer 7', '', '1', '1', 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'MINGLANILLA', 'Cuanos', '45', '4275', '0', '0', '0', '0', '0', '0', '45', '4275.00', '0', '0', '07/05/2022', '11:06:27am', '0', '57', 'QRT Farm', 'Commercial', '0', '0', '0'),
(131, 'dsads', '07/05/2022 12:51:08pm', 'Goat', 'SLH', 'Meat Dealer 9', '', '2', '2', 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'TOLEDO CITY', 'Biga', '5', '200', '0', '0', '0', '0', '0', '0', '5', '200.00', '0', '1', '07/05/2022', '12:51:08pm', '0', '57', 'Mr. Ben Go', 'Backyard', '0', '0', '0'),
(132, 'dsads', '07/05/2022 02:28:36pm', 'Hog', 'SLH', 'Meat Dealer 8', '', '3', '3', 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'SAN FERNANDO', 'Sangat', '20', '1700', '0', '0', '0', '0', '0', '0', '20', '1700.00', '0', '0', '07/05/2022', '02:28:36pm', '0', '57', 'Pork Park Farm', 'Backyard', '0', '0', '0'),
(133, 'dsads', '07/05/2022 02:39:32pm', 'Chicken', 'PDP', 'Meat Dealer 11', '', '2', 'NA', 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'DIMIAO', 'Canhayupon', '5000', '7000', '0', '0', '0', '0', '0', '0', '5000', '7000.00', '1', '0', '07/05/2022', '02:39:32pm', '0', '58', 'Bountiful Chicken Farm', 'Commercial', '0', '0', '0'),
(134, 'dsads', '07/05/2022 02:50:04pm', 'Chicken', 'PDP', 'Meat Dealer 12', '', '2', 'NA', 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'UBAY', 'Lomangog', '9000', '12600', '0', '0', '0', '0', '0', '0', '9000', '12600.00', '1', '0', '07/05/2022', '02:50:04pm', '0', '58', 'Mr. Santos Sy', 'Commercial', '0', '0', '0'),
(135, 'dsads', '07/05/2022 02:57:21pm', 'Chicken', 'PDP', 'Meat Dealer 5', '', '1', '1', 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'BACOLOR', 'San Isidro', '25000', '30000', '0', '0', '0', '0', '0', '0', '25000', '30000.00', '0', '1', '07/05/2022', '02:57:21pm', '1', '55', 'ABC Poultry Farm', 'Commercial', '0', '0', '0'),
(136, 'dsads', '07/05/2022 03:05:28pm', 'Hog', 'SLH', 'Meat Dealer 1', '', '01', '422', 'REGION III (CENTRAL LUZON)', 'NUEVA ECIJA', 'CABANATUAN CITY', 'Palagay', '10', '90', '0', '0', '0', '0', '10', '10', '20', '100.00', '1', '1', '07/05/2022', '03:05:28pm', '1', '60', 'XYZ farm', 'Backyard', '0', 'please edit holding pen', '0'),
(137, 'dsads', '07/05/2022 03:07:13pm', 'Chicken', 'PDP', 'Meat Dealer 10', '', '2', 'NA', 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'ALICIA', 'La Hacienda', '8000', '9600', '0', '0', '0', '0', '0', '0', '8000', '9600.00', '0', '0', '07/05/2022', '03:07:13pm', '0', '58', 'Chicken Feet Poultry Farm', 'Commercial', '0', '0', '0'),
(138, 'dsads', '07/05/2022 03:10:02pm', 'Cattle', '', 'Meat', ' Dealer 1', '02', '342', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'Balubad', '1', '450', '0', '0', '0', '0', '0', '0', '1', '450.00', '2', '1', '07/05/2022', '03:10:02pm', '1', '60', 'Mr. Jess Klaro', 'Backyard', '0', 'Upload Shipping Permit', '0'),
(139, 'dsads', '07/05/2022 03:28:48pm', 'Chicken', 'PDP', 'meat dealer 6', '', '1', '1', 'REGION III (CENTRAL LUZON)', 'TARLAC', 'CITY OF TARLAC (Capital)', 'Tibagan', '25000', '32500', '0', '0', '0', '0', '0', '0', '25000', '32500.00', '0', '1', '07/05/2022', '03:28:48pm', '1', '55', '24 k Golden Barn Corp', 'Commercial', '0', '0', '0'),
(140, 'dsads', '07/05/2022 04:11:54pm', 'Hog', 'SLH', 'Meat Dealer 2', '', '03', '3424', 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'SAN SIMON', 'Concepcion', '20', '1700', '0', '0', '0', '0', '0', '0', '20', '1700.00', '0', '1', '07/05/2021', '04:11:54pm', '2', '60', 'Mr. Max Cabahug', 'Backyard', '0', '0', '1'),
(141, 'dsads', '07/05/2022 04:15:29pm', 'Goat', 'SLH', 'Meat Dealer 2', '', '05', '04324', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'Bambang', '2', '60', '0', '0', '0', '0', '0', '0', '2', '60.00', '1', '1', '07/05/2022', '04:15:29pm', '1', '60', 'Mr. Max Cabahug', 'Backyard', '0', 'please update shipping permit', '1'),
(142, 'dsads', '07/05/2022 09:31:01pm', 'Hog', 'SLH', 'Meat Dealer 3', '', '07', '4545', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'SAN ILDEFONSO', 'Gabihan', '100', '5000', '0', '0', '0', '0', '0', '0', '100', '5000.00', '2', '1', '07/05/2022', '09:31:01pm', '1', '60', 'Speedy Farm', 'Commercial', '0', '12', '1'),
(143, 'dsads', '07/06/2022 10:01:11am', 'Chicken', 'PDP', 'meat dealer 6', '', '1', '1', 'REGION III (CENTRAL LUZON)', 'TARLAC', 'CITY OF TARLAC (Capital)', 'Tibagan', '25000', '32500', '0', '0', '0', '0', '0', '0', '25000', '32500.00', '0', '1', '07/06/2022', '10:01:11am', '1', '55', '24 k Golden Barn Corp', 'Commercial', '0', '0', '1'),
(144, 'dsads', '07/06/2022 10:05:32am', 'Chicken', 'PDP', 'meat dealer 6', '', '1', '1', 'REGION III (CENTRAL LUZON)', 'TARLAC', 'CITY OF TARLAC (Capital)', 'Tibagan', '25000', '32500', '0', '0', '0', '0', '0', '0', '25000', '32500.00', '0', '1', '07/06/2022', '10:05:32am', '1', '55', '24 k Golden Barn Corp', 'Commercial', '0', '0', '0'),
(145, 'dsads', '07/06/2022 10:31:08am', 'Chicken', 'PDP', 'meat dealer 6', '', '1', '1', 'REGION III (CENTRAL LUZON)', 'TARLAC', 'CITY OF TARLAC (Capital)', 'Tibagan', '25000', '32500', '0', '0', '0', '0', '0', '0', '25000', '32500.00', '0', '1', '07/06/2022', '10:31:08am', '1', '55', '24 k Golden Barn Corp', 'Commercial', '0', '0', '1'),
(146, 'dsads', '07/06/2022 02:54:18pm', 'Hog', 'SLH', 'Meat Dealer 13', '', '001', '1', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'GENERAL SANTOS CITY (DADIANGAS)', 'Conel', '150', '13260', '0', '0', '0', '0', '2', '265', '152', '13525.00', '0', '0', '07/06/2022', '02:54:18pm', '0', '56', 'GenSan Hog Farm', 'Commercial', '0', '0', '0'),
(147, 'dsads', '07/07/2022 09:18:51am', 'Ostrich', 'SLH', 'Meat Dealer 15', '', '002', '03', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'TUPI', 'Polonuling', '3', '321', '0', '0', '0', '0', '0', '0', '3', '321.00', '0', '0', '07/07/2022', '09:18:51am', '0', '56', 'ABC Farm', 'Backyard', '0', '0', '0'),
(148, 'dsads', '07/07/2022 10:25:11am', 'Hog', 'SLH', 'Meat Dealer 14', '', 'Batch 002', '02', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'GENERAL SANTOS CITY (DADIANGAS)', 'Baluan', '30', '2796', '0', '0', '0', '0', '0', '0', '30', '2796.00', '0', '0', '07/07/2022', '10:25:11am', '0', '56', 'Prime Farms, Inc.', 'Backyard', '0', '0', '0'),
(149, 'dsads', '07/07/2022 11:49:13am', 'Chicken', 'PDP', 'Meat Dealer 16', '', '1', 'NA', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'TUPI', 'Acmonan', '0', '0', '2500', '6500', '0', '0', '0', '0', '2500', '6500.00', '0', '0', '07/07/2022', '11:49:13am', '0', '59', 'Howie Poultry Farm ', 'Commercial', '0', '0', '0'),
(150, 'dsads', '07/07/2022 01:08:04pm', 'Chicken', 'PDP', 'Meat Dealer 17', '', '1', 'NA ', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'POLOMOLOK', 'Silway 7', '0', '0', '0', '0', '1000', '1100', '0', '0', '1000', '1100.00', '0', '0', '07/07/2022', '01:08:04pm', '0', '59', 'Ms Norma Dalig ', 'Commercial', '0', '0', '0'),
(151, 'dsads', '07/07/2022 01:12:46pm', 'Chicken', 'PDP', 'Meat Dealer 18', '', '1', 'NA ', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'TUPI', 'Cebuano', '1500', '1800', '0', '0', '0', '0', '0', '0', '1500', '1800.00', '0', '0', '07/07/2022', '01:12:46pm', '0', '59', 'Alegre Poultry Farm ', 'Commercial', '0', '0', '0'),
(152, 'dsads', '07/07/2022 01:16:36pm', 'Chicken', 'PDP', 'Meat Dealer 17', '', '2', 'NA', 'REGION XII (SOCCSKSARGEN)', 'BOHOL', 'DIMIAO', 'Canhayupon', '8000', '9600', '0', '0', '0', '0', '0', '0', '8000', '9600.00', '0', '0', '07/07/2022', '01:16:36pm', '0', '59', 'Bountiful Chicken Farm ', 'Commercial', '0', '0', '0'),
(153, 'dsads', '07/07/2022 01:16:37pm', 'Chicken', 'PDP', 'Meat Dealer 17', '', '2', 'NA', 'REGION XII (SOCCSKSARGEN)', 'BOHOL', 'DIMIAO', 'Canhayupon', '8000', '9600', '0', '0', '0', '0', '0', '0', '8000', '9600.00', '0', '0', '07/07/2022', '01:16:37pm', '0', '59', 'Bountiful Chicken Farm ', 'Commercial', '0', '0', '0'),
(154, 'dsads', '07/07/2022 01:40:54pm', 'Chicken', 'PDP', 'Meat Dealer 16 ', '', '2 ', 'NA', 'REGION XII (SOCCSKSARGEN)', 'BOHOL', 'UBAY', 'Lomangog', '9000', '12600', '0', '0', '0', '0', '0', '0', '9000', '12600.00', '0', '0', '07/07/2022', '01:40:54pm', '0', '59', 'Mr Santos Sy', 'Commercial', '0', '0', '0'),
(175, 'dsads', '08/17/2022 03:01:39pm', 'Hog', 'SLH', 'Josepina ', 'Dela Cruz', '08-17-1', '12312', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'Bagumbayan', '25', '100', '0', '0', '0', '0', '10', '120', '35', '220.00', '0', '1', '08/17/2022', '03:01:39pm', '1', '67', 'Josephina Dela Cruz', 'Backyard', '0', '21', '1'),
(176, 'dsads', '08/17/2022 03:10:31pm', 'Hog', 'SLH', 'Jhay-r', 'Diosdado', '08-17-2', '143', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'Bagumbayan', '100', '6000', '0', '0', '0', '0', '0', '0', '100', '6000.00', '0', '1', '08/17/2022', '03:10:31pm', '2', '67', 'Jayr Diosdado', 'Commercial', '0', '0', '1'),
(177, 'dsads', '09/01/2022 10:57:18am', 'Hog', 'SLH', 's', 'fd', '09-01-1', '42', 'REGION III (CENTRAL LUZON)', 'NUEVA ECIJA', 'PALAYAN CITY (Capital)', 'Sapang Buho', '5', '5', '0', '0', '0', '0', '0', '0', '5', '5.00', '0', '1', '09/01/2022', '10:57:18am', '1', '60', 'Mr. Max Cabahug', 'Backyard', '0', 'Please upload Shipping permit', '1'),
(178, 'dsads', '09/01/2022 10:58:00am', 'Hog', 'SLH', 's', 'fd', '09-01-1', '42', 'REGION III (CENTRAL LUZON)', 'NUEVA ECIJA', 'PALAYAN CITY (Capital)', 'Sapang Buho', '5', '5', '0', '0', '0', '0', '0', '0', '5', '5.00', '0', '1', '09/01/2022', '10:58:00am', '2', '60', 'Mr. Max Cabahug', 'Backyard', '0', '0', '1'),
(179, 'dsads', '09/06/2022 10:23:30am', 'Hog', 'SLH', 'Dealer', 'Meat', '09-06-1', '23', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'OBANDO', 'Paliwas', '5', '5', '20', '20', '0', '0', '0', '0', '25', '25.00', '0', '1', '09/06/2022', '10:23:30am', '2', '60', 'Mock Dressing Plant', 'Backyard', '0', '0', '1'),
(180, 'dsads', '09/06/2022 10:24:23am', 'Hog', 'SLH', 'Dealer', 'Meat', '09-06-1', '23', '', 'BULACAN', 'OBANDO', 'Paliwas', '5', '5', '20', '20', '0', '0', '0', '0', '25', '25.00', '0', '0', '09/06/2022', '10:24:23am', '0', '', 'Mock Dressing Plant', 'Backyard', '0', '0', '0'),
(181, 'dsads', '09/06/2022 10:39:36am', 'Hog', 'SLH', 'Jufrey', 'Bayog', '22-09-06-2', '4234', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'DOÑA REMEDIOS TRINIDAD', 'Camachile', '5', '5', '25', '25', '0', '0', '0', '0', '30', '30.00', '0', '1', '09/06/2022', '10:39:36am', '1', '60', 'Mr. Max Cabahug', 'Backyard', '0', 'Please Upload your Shipping Permit', '1'),
(182, 'dsads', '09/12/2022 10:59:52am', 'Hog', 'SLH', 'Jufrey', 'Bayog', '22-09-12-1', '12', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'Perez', '100', '6000', '0', '0', '0', '0', '0', '0', '100', '6000.00', '0', '3', '09/12/2022', '10:59:52am', '0', '60', 'DIOSDADO DELINA NIEVA', 'Backyard', '0', 'Please upload Shipping Permit', '0'),
(183, 'dsads', '09/20/2022 09:34:50am', 'Hog', 'SLH', 'Juan', 'Dela Cruz', '22-09-20-1', '23', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'Balubad', '5', '5', '1', '1', '0', '0', '5', '5', '11', '11.00', '0', '0', '09/20/2022', '09:34:50am', '0', '60', 'Mr. Max Cabahug', 'Backyard', '0', '0', '0'),
(184, 'dsads', '09/20/2022 09:34:55am', 'Hog', 'SLH', 'Juan', 'Dela Cruz', '22-09-20-1', '23', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'Balubad', '5', '5', '1', '1', '0', '0', '5', '5', '11', '11.00', '0', '0', '09/20/2022', '09:34:55am', '0', '60', 'Mr. Max Cabahug', 'Backyard', '0', '0', '0'),
(185, 'dsads', '09/20/2022 09:34:56am', 'Hog', 'SLH', 'Juan', 'Dela Cruz', '22-09-20-1', '23', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'Balubad', '5', '5', '1', '1', '0', '0', '5', '5', '11', '11.00', '0', '0', '09/20/2022', '09:34:56am', '0', '60', 'Mr. Max Cabahug', 'Backyard', '0', '0', '0'),
(186, 'dsads', '09/20/2022 09:34:57am', 'Hog', 'SLH', 'Juan', 'Dela Cruz', '22-09-20-1', '23', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'Balubad', '5', '5', '1', '1', '0', '0', '5', '5', '11', '11.00', '0', '2', '09/20/2022', '09:34:57am', '0', '60', 'Mr. Max Cabahug', 'Backyard', '0', 'Please upload shipping permit', '0'),
(187, 'dsads', '09/21/2022 11:11:57am', 'Hog', 'SLH', 'Juan', 'Dela Cruz', '22-09-21-1', '43', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'NORZAGARAY', 'Minuyan', '50', '50', '0', '0', '0', '0', '0', '0', '50', '50.00', '0', '0', '09/21/2022', '11:11:57am', '0', '60', 'test', 'Backyard', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `disease_report_tbl`
--

CREATE TABLE `disease_report_tbl` (
  `dr_id` int(11) NOT NULL,
  `d_id` varchar(255) NOT NULL,
  `dr_date` varchar(255) NOT NULL,
  `drr_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease_report_tbl`
--

INSERT INTO `disease_report_tbl` (`dr_id`, `d_id`, `dr_date`, `drr_id`) VALUES
(135, '79', '06/15/2022', '106'),
(139, '79', '06/15/2022', '107'),
(143, '79', '06/17/2022', '108'),
(152, '134', '07/03/2022', '112'),
(157, '118', '07/04/2022', '0'),
(158, '134', '07/04/2022', '113'),
(159, '196', '07/04/2022', '0'),
(164, '212', '07/04/2022', '116'),
(165, '118', '07/04/2022', '117'),
(166, '103', '07/04/2022', '118'),
(167, '146', '07/04/2022', '119'),
(173, '212', '07/05/2022', '120'),
(174, '212', '07/05/2022', '121'),
(176, '118', '07/05/2022', '123'),
(185, '212', '07/06/2022', '125'),
(186, '212', '07/06/2022', '126'),
(188, '212', '07/06/2022', '127'),
(189, '212', '07/06/2022', '128'),
(190, '212', '07/06/2022', '129'),
(193, '221', '07/06/2022', '180'),
(194, '227', '07/06/2022', '181'),
(195, '202', '07/06/2022', '182'),
(196, '212', '07/07/2022', '130'),
(197, '212', '07/07/2022', '131'),
(198, '212', '07/07/2022', '132'),
(199, '210', '07/07/2022', '183'),
(200, '221', '07/07/2022', '184'),
(201, '211', '07/07/2022', '185'),
(202, '205', '07/20/2022', '133'),
(203, '212', '07/20/2022', '134'),
(204, '208', '07/20/2022', '186'),
(208, '89', '08/01/2022', '0'),
(209, '89', '08/01/2022', '0'),
(253, '247', '08/01/2022', '180'),
(254, '90', '08/01/2022', '181'),
(255, '89', '08/01/2022', '182'),
(256, '247', '08/01/2022', '183'),
(257, '247', '08/01/2022', '184'),
(258, '118', '08/01/2022', '185'),
(259, '134', '08/01/2022', '186'),
(264, '189', '07/05/2022', '190'),
(265, '203', '07/05/2022', '191'),
(268, '247', '07/05/2022', '190'),
(269, '118', '07/05/2022', '191'),
(273, '145', '07/05/2022', '193'),
(289, '247', '07/05/2022', '209'),
(291, '247', '07/05/2022', '211'),
(295, '247', '07/05/2022', '215'),
(296, '134', '07/05/2022', '216'),
(300, '196', '07/05/2022', '0'),
(301, '196', '07/05/2022', '0'),
(310, '197', '07/05/2022', '204'),
(315, '200', '07/05/2022', '209'),
(318, '189', '07/05/2022', '211'),
(321, '196', '07/05/2022', '214'),
(323, '196', '07/05/2022', '215'),
(327, '91', '07/05/2022', '224'),
(328, '196', '07/05/2022', '216'),
(331, '205', '07/04/2022', '227'),
(338, '89', '07/05/2022', '233'),
(360, '247', '07/05/2022', '255'),
(362, '90', '07/05/2022', '257'),
(376, '247', '08/17/2022', '265'),
(381, '196', '08/17/2022', '224'),
(383, '204', '08/17/2022', '226'),
(384, '189', '08/17/2022', '227'),
(386, '203', '08/17/2022', '229'),
(389, '200', '08/17/2022', '232'),
(394, '247', '07/05/2022', '274'),
(399, '247', '07/05/2022', '279'),
(402, '247', '07/05/2022', '282'),
(405, '247', '07/05/2022', '285'),
(407, '247', '07/05/2022', '287'),
(409, '247', '07/05/2022', '289'),
(412, '247', '07/05/2022', '292'),
(413, '247', '07/05/2022', '293'),
(416, '247', '07/05/2022', '296'),
(419, '247', '07/05/2022', '299'),
(429, '247', '07/05/2022', '309'),
(430, '118', '07/05/2022', '310'),
(431, '118', '07/05/2022', '0'),
(432, '118', '07/05/2022', '0'),
(436, '118', '07/05/2022', '314'),
(437, '118', '07/05/2022', '315'),
(438, '118', '07/05/2022', '316'),
(439, '134', '07/05/2022', '317'),
(440, '118', '07/05/2022', '318'),
(441, '118', '07/05/2022', '319'),
(458, '247', '07/05/2022', '336'),
(459, '118', '07/05/2022', '337'),
(460, '247', '07/05/2022', '338'),
(461, '205', '07/06/2022', '339'),
(463, '247', '07/05/2022', '341'),
(464, '89', '07/05/2022', '342'),
(466, '247', '07/05/2022', '344'),
(475, '247', '07/05/2022', '353'),
(476, '247', '07/05/2022', '354'),
(477, '118', '07/05/2022', '355'),
(479, '247', '07/05/2022', '357'),
(481, '247', '07/05/2022', '359'),
(482, '247', '07/05/2022', '360'),
(486, '247', '08/17/2022', '364'),
(487, '196', '08/17/2022', '233'),
(489, '247', '08/17/2022', '366'),
(491, '247', '08/17/2022', '368'),
(494, '247', '08/17/2022', '371'),
(496, '247', '08/17/2022', '373'),
(499, '247', '08/17/2022', '376'),
(500, '247', '08/17/2022', '377'),
(502, '247', '08/17/2022', '379'),
(508, '134', '08/17/2022', '385'),
(509, '118', '08/17/2022', '386'),
(511, '118', '08/17/2022', '388'),
(512, '145', '08/17/2022', '389'),
(514, '247', '08/17/2022', '391'),
(518, '247', '08/17/2022', '395'),
(521, '247', '08/17/2022', '398'),
(543, '200', '08/17/2022', '255'),
(545, '196', '08/17/2022', '256'),
(548, '247', '08/17/2022', '402'),
(552, '247', '08/17/2022', '406'),
(553, '196', '08/17/2022', '257'),
(554, '247', '08/17/2022', '407'),
(557, '247', '08/17/2022', '410'),
(560, '247', '08/17/2022', '413'),
(563, '247', '08/17/2022', '416'),
(564, '247', '08/17/2022', '417'),
(567, '247', '08/17/2022', '420'),
(569, '247', '08/17/2022', '422'),
(572, '247', '08/17/2022', '425'),
(575, '247', '08/17/2022', '428'),
(578, '247', '08/17/2022', '431'),
(584, '247', '08/17/2022', '437'),
(587, '247', '08/17/2022', '440'),
(590, '247', '08/17/2022', '443'),
(593, '247', '08/17/2022', '446'),
(596, '247', '08/17/2022', '449'),
(597, '247', '08/17/2022', '450'),
(605, '247', '08/17/2022', '458'),
(606, '247', '08/17/2022', '459'),
(608, '247', '08/17/2022', '461'),
(612, '247', '08/17/2022', '465'),
(613, '89', '08/17/2022', '466'),
(614, '247', '08/17/2022', '467'),
(616, '247', '08/17/2022', '469'),
(617, '90', '08/17/2022', '470'),
(619, '89', '09/06/2022', '472'),
(625, '247', '09/06/2022', '478'),
(626, '90', '09/06/2022', '479'),
(627, '247', '09/06/2022', '480'),
(629, '196', '09/06/2022', '259'),
(635, '189', '09/06/2022', '265'),
(636, '197', '09/06/2022', '266'),
(637, '199', '09/06/2022', '267'),
(640, '247', '09/06/2022', '481'),
(641, '89', '09/01/2022', '482'),
(642, '91', '09/01/2022', '483'),
(643, '247', '09/01/2022', '484'),
(644, '247', '09/01/2022', '485'),
(648, '196', '09/06/2022', '271'),
(654, '118', '09/06/2022', '493'),
(657, '118', '09/01/2022', '496'),
(659, '90', '09/06/2022', '498'),
(660, '145', '09/06/2022', '499'),
(661, '91', '09/06/2022', '500'),
(662, '118', '09/06/2022', '501'),
(663, '89', '09/06/2022', '502'),
(667, '247', '09/06/2022', '506'),
(668, '118', '09/06/2022', '507'),
(671, '118', '09/06/2022', '510'),
(672, '118', '09/06/2022', '511'),
(673, '247', '09/06/2022', '512'),
(674, '247', '09/06/2022', '513'),
(677, '118', '09/06/2022', '516'),
(680, '118', '09/06/2022', '519'),
(682, '89', '09/06/2022', '521'),
(683, '118', '09/06/2022', '522'),
(685, '89', '09/06/2022', '524'),
(686, '118', '09/06/2022', '525'),
(688, '247', '09/06/2022', '527'),
(692, '247', '09/06/2022', '531'),
(696, '89', '09/06/2022', '535'),
(697, '247', '09/06/2022', '536'),
(698, '145', '09/06/2022', '537'),
(699, '247', '09/06/2022', '538'),
(700, '90', '09/06/2022', '539'),
(701, '247', '09/06/2022', '540'),
(702, '89', '09/01/2022', '541'),
(706, '118', '09/01/2022', '545'),
(709, '118', '08/17/2022', '548'),
(710, '247', '08/17/2022', '549'),
(713, '89', '07/05/2022', '552'),
(715, '247', '07/05/2022', '554'),
(716, '196', '07/05/2022', '272'),
(717, '118', '07/05/2022', '555'),
(718, '247', '07/05/2022', '556'),
(719, '118', '09/06/2022', '557'),
(720, '205', '07/06/2022', '558'),
(721, '207', '07/06/2022', '559'),
(723, '247', '09/01/2022', '561'),
(724, '90', '09/01/2022', '562'),
(725, '247', '09/01/2022', '563'),
(727, '89', '09/01/2022', '565'),
(728, '247', '09/01/2022', '566'),
(729, '118', '09/01/2022', '567'),
(730, '89', '09/06/2022', '568'),
(731, '247', '09/06/2022', '569'),
(732, '134', '09/06/2022', '570'),
(734, '189', '09/06/2022', '274'),
(735, '247', '09/06/2022', '571'),
(737, '90', '09/06/2022', '573'),
(738, '247', '09/06/2022', '574'),
(739, '196', '09/06/2022', '275'),
(740, '197', '09/06/2022', '276'),
(741, '199', '09/06/2022', '277'),
(742, '189', '09/06/2022', '278'),
(743, '200', '09/06/2022', '279');

-- --------------------------------------------------------

--
-- Table structure for table `disease_tbl`
--

CREATE TABLE `disease_tbl` (
  `d_id` int(15) NOT NULL,
  `disease_code` varchar(255) NOT NULL,
  `disease_description` varchar(255) NOT NULL,
  `disease_level` varchar(255) NOT NULL,
  `disease_status` varchar(255) NOT NULL DEFAULT 'Active',
  `disease_type` varchar(255) NOT NULL,
  `disease_category` varchar(255) NOT NULL,
  `disease_date` varchar(255) NOT NULL,
  `disease_time` varchar(255) NOT NULL,
  `disease_notifiable` varchar(255) NOT NULL,
  `disease_delete_status` int(11) NOT NULL DEFAULT 0,
  `disease_kind_of_meat` varchar(255) NOT NULL DEFAULT 'None',
  `disease_species` varchar(255) NOT NULL,
  `disease_judgement` varchar(255) NOT NULL DEFAULT 'Null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease_tbl`
--

INSERT INTO `disease_tbl` (`d_id`, `disease_code`, `disease_description`, `disease_level`, `disease_status`, `disease_type`, `disease_category`, `disease_date`, `disease_time`, `disease_notifiable`, `disease_delete_status`, `disease_kind_of_meat`, `disease_species`, `disease_judgement`) VALUES
(89, 'R001', 'African Swine Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:19:43am', '0', 0, 'Suspect', 'Hog', 'Null'),
(90, 'R002', 'Foot and Mouth Disease', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:20:05am', '0', 0, 'Suspect', 'Hog', 'Null'),
(91, 'R004', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:21:41am', '0', 0, 'Suspect', 'Hog', 'Null'),
(92, 'R004', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:24:14am', '0', 0, 'Suspect', 'Cattle', 'Null'),
(93, 'R004', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:24:42am', '0', 0, 'Suspect', 'Sheep', 'Null'),
(94, 'R004', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:24:59am', '0', 0, 'Suspect', 'Goat', 'Null'),
(95, 'ROO4', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:25:22am', '0', 0, 'Suspect', 'Horse', 'Null'),
(96, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:27:48am', '1', 0, 'Suspect', 'Hog', 'Null'),
(97, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:30:54am', '1', 0, 'Suspect', 'Cattle', 'Null'),
(98, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:31:31am', '1', 0, 'Suspect', 'Carabao', 'Null'),
(99, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:31:59am', '1', 0, 'Suspect', 'Horse', 'Null'),
(100, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:32:19am', '1', 0, 'Suspect', 'Goat', 'Null'),
(101, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:32:33am', '1', 0, 'Suspect', 'Cattle', 'Null'),
(102, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:32:58am', '1', 0, 'Suspect', 'Rabbit', 'Null'),
(103, 'C003', 'Advanced pregnancy', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:33:22am', '1', 0, 'Rejected', 'Cattle', 'Null'),
(104, 'C004', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:37:47am', '1', 0, 'Suspect', 'Hog', 'Null'),
(105, 'C004', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:38:39am', '1', 0, 'Suspect', 'Cattle', 'Null'),
(106, 'C004', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:39:06am', '1', 0, 'Suspect', 'Carabao', 'Null'),
(107, 'C004', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:39:53am', '1', 0, 'Suspect', 'Horse', 'Null'),
(108, 'C004', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:40:10am', '1', 0, 'Suspect', 'Goat', 'Null'),
(109, 'C004', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:41:01am', '1', 0, 'Suspect', 'Sheep', 'Null'),
(110, 'C004', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:41:34am', '1', 0, 'Suspect', 'Rabbit', 'Null'),
(111, 'C006', 'Bruise', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:42:12am', '1', 0, 'Suspect', 'Hog', 'Null'),
(112, 'C006', 'Bruise', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:42:26am', '1', 0, 'Suspect', 'Cattle', 'Null'),
(113, 'C006', 'Bruise', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:42:51am', '1', 0, 'Suspect', 'Carabao', 'Null'),
(114, 'C006', 'Bruise', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:43:15am', '1', 0, 'Suspect', 'Horse', 'Null'),
(115, 'C006', 'Bruise', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:43:36am', '1', 0, 'Suspect', 'Goat', 'Null'),
(116, 'C006', 'Bruise', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:43:52am', '1', 0, 'Suspect', 'Sheep', 'Null'),
(117, 'C006', 'Bruise', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:44:14am', '1', 0, 'Suspect', 'Rabbit', 'Null'),
(118, 'C009', 'Dead/Dying', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:44:53am', '1', 0, 'Condemned', 'Hog', 'Null'),
(119, 'C009', 'Dead/Dying', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:45:13am', '1', 0, 'Condemned', 'Cattle', 'Null'),
(120, 'C009', 'Dead/Dying', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:45:50am', '1', 0, 'Condemned', 'Carabao', 'Null'),
(121, 'C009', 'Dead/Dying', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:46:12am', '1', 0, 'Condemned', 'Horse', 'Null'),
(122, 'C009', 'Dead/Dying', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:46:53am', '1', 0, 'Condemned', 'Goat', 'Null'),
(123, 'C009', 'Dead/Dying', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:47:14am', '1', 0, 'Condemned', 'Sheep', 'Null'),
(124, 'C009', 'Dead/Dying', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:48:49am', '1', 0, 'Condemned', 'Crocodile', 'Null'),
(125, 'C009', 'Dead/Dying', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:49:59am', '1', 0, 'Condemned', 'Rabbit', 'Null'),
(126, 'C010', 'Downer', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:50:33am', '1', 0, 'Suspect', 'Cattle', 'Null'),
(127, 'C010', 'Downer', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:53:01am', '1', 0, 'Suspect', 'Cattle', 'Null'),
(128, 'C010', 'Downer', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:54:19am', '1', 0, 'Suspect', 'Carabao', 'Null'),
(129, 'C010', 'Downer', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:55:23am', '1', 0, 'Suspect', 'Cattle', 'Null'),
(130, 'C010', 'Downer', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:55:54am', '1', 0, 'Suspect', 'Horse', 'Null'),
(131, 'C010', 'Downer', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:56:46am', '1', 0, 'Suspect', 'Goat', 'Null'),
(132, 'C010', 'Downer', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:57:40am', '1', 0, 'Suspect', 'Sheep', 'Null'),
(133, 'C010', 'Downer', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:58:08am', '1', 0, 'Suspect', 'Rabbit', 'Null'),
(134, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:58:37am', '1', 0, 'Condemned', 'Hog', 'Null'),
(135, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:59:00am', '1', 0, 'Condemned', 'Cattle', 'Null'),
(136, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:59:33am', '1', 0, 'Condemned', 'Carabao', 'Null'),
(137, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:59:54am', '1', 0, 'Condemned', 'Horse', 'Null'),
(138, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:00:28am', '1', 0, 'Condemned', 'Goat', 'Null'),
(139, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:00:48am', '1', 0, 'Condemned', 'Goat', 'Null'),
(140, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:09:11am', '1', 0, 'Condemned', 'Sheep', 'Null'),
(141, 'C010', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:12:43am', '1', 0, 'Condemned', 'Rabbit', 'Null'),
(143, 'C012', 'Flooding', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:14:32am', '1', 0, 'Suspect', 'Cattle', 'Null'),
(144, 'C012', 'Flooding', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:15:13am', '1', 0, 'Suspect', 'Carabao', 'Null'),
(145, 'C013', 'Generalized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:16:20am', '1', 0, 'Condemned', 'Hog', 'Null'),
(146, 'C013', 'Generalized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:16:38am', '1', 0, 'Condemned', 'Cattle', 'Null'),
(147, 'C013', 'Generalized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:16:55am', '1', 0, 'Condemned', 'Carabao', 'Null'),
(148, 'C013', 'Generalized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:17:20am', '1', 0, 'Condemned', 'Horse', 'Null'),
(149, 'C013', 'Generalized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:34:56am', '1', 0, 'Condemned', 'Goat', 'Null'),
(150, 'C013', 'Generalized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:37:22am', '1', 0, 'Condemned', 'Sheep', 'Null'),
(151, 'C013', 'Generalized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:24:20pm', '1', 0, 'Condemned', 'Cattle', 'Null'),
(152, 'C014', 'Heat stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:25:54pm', '1', 0, 'Suspect', 'Hog', 'Null'),
(153, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:28:22pm', '1', 0, 'Suspect', 'Hog', 'Null'),
(154, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:29:06pm', '1', 0, 'Suspect', 'Cattle', 'Null'),
(155, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:29:21pm', '1', 0, 'Suspect', 'Carabao', 'Null'),
(156, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:29:37pm', '1', 0, 'Suspect', 'Horse', 'Null'),
(157, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:29:51pm', '1', 0, 'Suspect', 'Goat', 'Null'),
(158, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:30:46pm', '1', 0, 'Suspect', 'Sheep', 'Null'),
(159, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:31:05pm', '1', 0, 'Suspect', 'Rabbit', 'Null'),
(160, 'C015', 'Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:31:50pm', '1', 0, 'Suspect', 'Hog', 'Null'),
(161, 'C015', 'Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:32:16pm', '1', 0, 'Suspect', 'Cattle', 'Null'),
(162, 'C015', 'Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:32:42pm', '1', 0, 'Suspect', 'Carabao', 'Null'),
(163, 'C015', 'Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:33:26pm', '1', 0, 'Suspect', 'Horse', 'Null'),
(164, 'C015', 'Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:33:57pm', '1', 0, 'Suspect', 'Goat', 'Null'),
(165, 'C015', 'Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:34:13pm', '1', 0, 'Suspect', 'Sheep', 'Null'),
(166, 'C015', 'Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:34:34pm', '1', 0, 'Suspect', 'Rabbit', 'Null'),
(167, 'C018', 'Localized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:35:24pm', '1', 0, 'Suspect', 'Hog', 'Null'),
(168, 'C018', 'Localized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:35:38pm', '1', 0, 'Suspect', 'Cattle', 'Null'),
(169, 'C018', 'Localized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:35:50pm', '1', 0, 'Suspect', 'Carabao', 'Null'),
(170, 'C018', 'Localized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:36:31pm', '1', 0, 'Suspect', 'Goat', 'Null'),
(171, 'C018', 'Localized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:36:43pm', '1', 0, 'Suspect', 'Horse', 'Null'),
(172, 'C018', 'Localized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:40:34pm', '1', 0, 'Suspect', 'Goat', 'Null'),
(173, 'C018', 'Localized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:41:06pm', '1', 0, 'Suspect', 'Sheep', 'Null'),
(174, 'C018', 'Localized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:41:34pm', '1', 0, 'Suspect', 'Rabbit', 'Null'),
(175, 'C025', 'Recent Castration', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:41:57pm', '1', 0, 'Suspect', 'Hog', 'Null'),
(176, 'C025', 'Recent Castration', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:44:21pm', '1', 0, 'Suspect', 'Cattle', 'Null'),
(177, 'C025', 'Recent Castration', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:44:42pm', '1', 0, 'Suspect', 'Carabao', 'Null'),
(178, 'C025', 'Recent Castration', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:45:17pm', '1', 0, 'Suspect', 'Horse', 'Null'),
(179, 'C025', 'Recent Castration', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:46:34pm', '1', 0, 'Suspect', 'Goat', 'Null'),
(180, 'C025', 'Recent Castration', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:46:51pm', '1', 0, 'Suspect', 'Sheep', 'Null'),
(181, 'C027', 'Wounds', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:47:46pm', '1', 0, 'Suspect', 'Hog', 'Null'),
(182, 'C027', 'Wounds', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:48:13pm', '1', 0, 'Suspect', 'Cattle', 'Null'),
(183, 'C027', 'Wounds', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:48:29pm', '1', 0, 'Suspect', 'Carabao', 'Null'),
(184, 'C027', 'Wounds', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:49:00pm', '1', 0, 'Suspect', 'Horse', 'Null'),
(185, 'C027', 'Wounds', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:49:20pm', '1', 0, 'Suspect', 'Goat', 'Null'),
(186, 'C027', 'Wounds', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:49:43pm', '1', 0, 'Suspect', 'Sheep', 'Null'),
(187, 'C027', 'Wounds', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:50:13pm', '1', 0, 'Suspect', 'Crocodile', 'Null'),
(188, 'C027', 'Wounds', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:50:31pm', '1', 0, 'Suspect', 'Rabbit', 'Null'),
(189, 'C001', 'Abnormal color/ discoloration', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:51:55pm', '1', 0, 'Liver', 'Hog', 'Condemned'),
(190, 'C001', 'Abnormal color/ discoloration', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:52:38pm', '1', 0, 'Liver', 'Cattle', 'Condemned'),
(191, 'C001', 'Abnormal color/ discoloration', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:53:24pm', '1', 0, 'Liver', 'Carabao', 'Condemned'),
(192, 'C001', 'Abnormal color/ discoloration', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:53:45pm', '1', 0, 'Liver', 'Horse', 'Condemned'),
(193, 'C001', 'Abnormal color/ discoloration', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:54:11pm', '1', 0, 'Liver', 'Goat', 'Condemned'),
(194, 'C001', 'Abnormal color/ discoloration', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:54:30pm', '1', 0, 'Liver', 'Sheep', 'Condemned'),
(195, 'C001', 'Abnormal color/ discoloration', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:54:53pm', '1', 0, 'Liver', 'Rabbit', 'Condemned'),
(196, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:55:42pm', '1', 0, 'Carcass', 'Hog', 'Condemned'),
(197, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:56:24pm', '1', 0, 'Lungs', 'Hog', 'Condemned'),
(198, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:57:03pm', '1', 0, 'Liver', 'Hog', 'Condemned'),
(199, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:58:10pm', '1', 0, 'Heart', 'Hog', 'Condemned'),
(200, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '01:02:07pm', '1', 0, 'Intestines', 'Hog', 'Condemned'),
(201, 'C021', 'Parasitism-Liver fluke', 'Critical', 'Active', 'SLH', 'Postmortem', '07/03/2022', '08:14:22pm', '1', 0, 'Liver', 'Cattle', 'Condemned'),
(202, 'C022', 'Parasitism-Milk spots', 'Critical', 'Active', 'SLH', 'Postmortem', '07/03/2022', '08:47:14pm', '1', 0, 'Liver', 'Hog', 'Condemned'),
(203, 'C023', 'Pericarditis', 'Critical', 'Active', 'SLH', 'Postmortem', '07/03/2022', '08:48:31pm', '1', 0, 'Heart', 'Hog', 'Condemned'),
(204, 'C024', 'Pneumonia', 'Critical', 'Active', 'SLH', 'Postmortem', '07/03/2022', '08:52:07pm', '1', 0, 'Lungs', 'Hog', 'Condemned'),
(205, 'R003', 'Highly Pathogenic Avian Influenza', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:06:42pm', '0', 0, 'Suspect', 'Chicken', 'Null'),
(206, 'C002', 'Abscess', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '09:12:02pm', '1', 0, 'Liver', 'Chicken', 'Condemned'),
(207, 'C005', 'Breast blisters', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:14:19pm', '1', 0, 'Suspect', 'Chicken', 'Null'),
(208, 'C005', 'Breast blisters', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '09:15:31pm', '1', 0, 'Carcass', 'Chicken', 'Condemned'),
(209, 'C006', 'Bruise', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:42:36pm', '1', 0, 'Suspect', 'Chicken', 'Null'),
(210, 'C006', 'Bruise', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '09:42:54pm', '1', 0, 'Carcass', 'Chicken', 'Condemned'),
(211, 'C007', 'Bumble foot', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '09:43:28pm', '1', 0, 'Feet', 'Chicken', 'Condemned'),
(212, 'C009', 'Dead/Dying', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:45:28pm', '1', 0, 'Suspect', 'Chicken', 'Null'),
(213, 'C011', 'Emaciated', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:47:33pm', '1', 0, 'Suspect', 'Chicken', 'Null'),
(214, 'C011', 'Emaciated', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '09:48:04pm', '1', 0, 'Carcass', 'Chicken', 'Condemned'),
(215, 'C013', 'Generalized edema', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '09:48:48pm', '1', 0, 'Carcass', 'Chicken', 'Condemned'),
(216, 'C013', 'Generalized edema', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:50:20pm', '1', 0, 'Suspect', 'Chicken', 'Null'),
(217, 'C013', 'Generalized edema', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:50:22pm', '1', 0, 'Suspect', 'Chicken', 'Null'),
(218, 'C014', 'Heat stress', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:51:05pm', '1', 0, 'Suspect', 'Chicken', 'Null'),
(219, 'C015', 'Hematoma', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:51:47pm', '1', 0, 'Suspect', 'Chicken', 'Null'),
(220, 'C015', 'Hematoma', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:51:55pm', '1', 0, 'Suspect', 'Chicken', 'Null'),
(221, 'C001', 'Abnormal color or discoloration', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '10:15:46pm', '1', 0, 'Liver', 'Chicken', 'Condemned'),
(222, 'C016', 'Hepatitis', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '10:18:02pm', '1', 0, 'Liver', 'Chicken', 'Condemned'),
(223, 'C017', 'Incomplete bleeding', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '10:18:53pm', '1', 0, 'Carcass', 'Chicken', 'Condemned'),
(224, 'C026', 'Synovitis', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '10:20:45pm', '1', 0, 'Feet', 'Chicken', 'Condemned'),
(225, 'C010', 'Downer', 'Critical', 'Active', 'SLH', 'Antemortem', '07/04/2022', '09:20:12am', '1', 0, 'Suspect', 'Ostrich', 'Null'),
(226, 'C004', 'Arthritis', 'Critical', 'Active', 'SLH', 'Postmortem', '07/04/2022', '09:22:32am', '1', 0, 'Feet', 'Ostrich', 'Suspect'),
(227, 'C028', 'Parasitism-Tapeworms', 'Critical', 'Active', 'PDP', 'Postmortem', '07/06/2022', '01:22:19pm', '1', 0, 'Intestines', 'Chicken', 'Condemned'),
(228, 'C029', 'Parasitism-Ascarids', 'Critical', 'Active', 'PDP', 'Postmortem', '07/06/2022', '01:25:44pm', '1', 0, 'Intestines', 'Chicken', 'Condemned'),
(239, 'c0312', 'Bleeding Test', 'Critical', 'Active', 'SLH', 'Antemortem', '07/20/2022', '10:23:12am', '0', 0, 'Rejected', 'Cattle', 'Null'),
(240, 'c0312', 'Bleeding Test', 'Critical', 'Active', 'SLH', 'Antemortem', '07/20/2022', '10:23:12am', '0', 0, 'Rejected', 'Carabao', 'Null'),
(241, 'c0312', 'Bleeding Test', 'Critical', 'Active', 'SLH', 'Antemortem', '07/20/2022', '10:23:12am', '0', 0, 'Rejected', 'Horse', 'Null'),
(242, 'c0312', 'Bleeding Test', 'Critical', 'Active', 'SLH', 'Antemortem', '07/20/2022', '10:23:12am', '0', 0, 'Rejected', 'Goat', 'Null'),
(243, 'c0312', 'Bleeding Test', 'Critical', 'Active', 'SLH', 'Antemortem', '07/20/2022', '10:23:12am', '0', 0, 'Rejected', 'Sheep', 'Null'),
(244, 'c0312', 'Bleeding Test', 'Critical', 'Active', 'SLH', 'Antemortem', '07/20/2022', '10:23:12am', '0', 0, 'Rejected', 'Crocodile', 'Null'),
(245, 'c0312', 'Bleeding Test', 'Critical', 'Active', 'SLH', 'Antemortem', '07/20/2022', '10:23:12am', '0', 0, 'Rejected', 'Rabbit', 'Null'),
(246, 'c0312', 'Bleeding Test', 'Critical', 'Active', 'SLH', 'Antemortem', '07/20/2022', '10:23:12am', '0', 0, 'Rejected', 'Ostrich', 'Null'),
(247, 'c0312', 'Bleeding Test', 'Critical', 'Active', 'SLH', 'Antemortem', '07/20/2022', '10:24:53am', '0', 0, 'Rejected', 'Hog', 'Null'),
(248, 'c0312', 'Bleeding Test', 'Critical', 'Active', 'SLH', 'Antemortem', '07/20/2022', '10:24:53am', '0', 0, 'Rejected', 'Cattle', 'Null'),
(249, 'c0312', 'Bleeding Test', 'Critical', 'Active', 'SLH', 'Antemortem', '07/20/2022', '10:24:53am', '0', 0, 'Rejected', 'Carabao', 'Null'),
(250, 'c0312', 'Bleeding Test', 'Critical', 'Active', 'SLH', 'Antemortem', '07/20/2022', '10:24:53am', '0', 0, 'Rejected', 'Horse', 'Null'),
(251, 'c0312', 'Bleeding Test', 'Critical', 'Active', 'SLH', 'Antemortem', '07/20/2022', '10:24:53am', '0', 0, 'Rejected', 'Goat', 'Null'),
(252, 'c0312', 'Bleeding Test', 'Critical', 'Active', 'SLH', 'Antemortem', '07/20/2022', '10:24:53am', '0', 0, 'Rejected', 'Sheep', 'Null'),
(253, 'c0312', 'Bleeding Test', 'Critical', 'Active', 'SLH', 'Antemortem', '07/20/2022', '10:24:53am', '0', 0, 'Rejected', 'Crocodile', 'Null'),
(254, 'c0312', 'Bleeding Test', 'Critical', 'Active', 'SLH', 'Antemortem', '07/20/2022', '10:24:53am', '0', 0, 'Suspect', 'Cattle', 'Null'),
(453, '345', '534', 'Critical', 'Active', 'SLH', 'Antemortem', '09/27/2022', '02:26:42pm', '0', 0, 'Condemned', 'Hog', 'Null'),
(454, '345', '534', 'Critical', 'Active', 'SLH', 'Antemortem', '09/27/2022', '02:26:42pm', '0', 0, 'Condemned', 'Cattle', 'Null'),
(455, '345', '534', 'Critical', 'Active', 'SLH', 'Antemortem', '09/27/2022', '02:26:42pm', '0', 0, 'Condemned', 'Carabao', 'Null'),
(456, '345', '534', 'Critical', 'Active', 'SLH', 'Antemortem', '09/27/2022', '02:26:42pm', '0', 0, 'Condemned', 'Horse', 'Null'),
(457, '345', '534', 'Critical', 'Active', 'SLH', 'Antemortem', '09/27/2022', '02:26:42pm', '0', 0, 'Condemned', 'Goat', 'Null'),
(458, '345', '534', 'Critical', 'Active', 'SLH', 'Antemortem', '09/27/2022', '02:26:42pm', '0', 0, 'Condemned', 'Sheep', 'Null'),
(459, '345', '534', 'Critical', 'Active', 'SLH', 'Antemortem', '09/27/2022', '02:26:42pm', '0', 0, 'Condemned', 'Crocodile', 'Null'),
(460, '345', '534', 'Critical', 'Active', 'SLH', 'Antemortem', '09/27/2022', '02:26:42pm', '0', 0, 'Condemned', 'Rabbit', 'Null'),
(461, '345', '534', 'Critical', 'Active', 'SLH', 'Antemortem', '09/27/2022', '02:26:42pm', '0', 0, 'Condemned', 'Ostrich', 'Null');

-- --------------------------------------------------------

--
-- Table structure for table `employee_tbl`
--

CREATE TABLE `employee_tbl` (
  `employee_id` int(1) NOT NULL,
  `employee_code` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL DEFAULT 'null',
  `city` varchar(255) NOT NULL DEFAULT 'null',
  `barangay` varchar(255) NOT NULL DEFAULT 'null',
  `address` varchar(255) NOT NULL DEFAULT 'null',
  `role` int(15) NOT NULL,
  `account_status` varchar(11) NOT NULL DEFAULT 'Pending',
  `contact` varchar(255) NOT NULL,
  `assign` varchar(255) NOT NULL DEFAULT '0',
  `account_activation` int(15) NOT NULL DEFAULT 0,
  `region_code` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_tbl`
--

INSERT INTO `employee_tbl` (`employee_id`, `employee_code`, `firstname`, `lastname`, `email`, `username`, `password`, `region`, `province`, `city`, `barangay`, `address`, `role`, `account_status`, `contact`, `assign`, `account_activation`, `region_code`) VALUES
(1, '54335', 'Ma. Elaine Joy ', 'Villareal', 'Juan@gmail.com', 'posmd', '1234', 'NCR', '', '', '', '', 0, 'Active', '', '0', 1, '13'),
(41, '006', 'Rene', 'Molina', 'alfredjr.garcia8@gmail.com', 'posms_rtoc12', '12345', 'REGION XII (SOCCSKSARGEN)', 'none', 'none', 'none', 'none', 1, 'Active', '09171234567', '0', 1, '12'),
(42, '001', 'Rudio', 'Abulencia ', 'vernadette.sanidad@gmail.com', 'posms_rtoc3', '12345', 'REGION III (CENTRAL LUZON)', 'none', 'none', 'none', 'none', 1, 'Active', '0917123456', '0', 1, '03'),
(43, '004', 'Jacinto', 'Mabulay', 'karenangelievangelista@gmail.com', 'posms_rtoc7', '12345', 'REGION VII (CENTRAL VISAYAS)', 'none', 'none', 'none', 'none', 1, 'Disapproved', '09171234567', '0', 1, '07'),
(44, '007', 'John Paul ', 'Ofiaza', 'jufreyninsbayog@gmail.com', 'mio_rtoc12a', '12345', 'REGION III (CENTRAL LUZON)', 'none', 'none', 'none', 'none', 2, 'Active', '0967123456', '0', 1, '03'),
(45, '002', 'Juan', 'Dela Cruz', 'jufreyninsbayog@gmail.com', 'mio1a_rtoc3', '12345', 'REGION III (CENTRAL LUZON)', 'NUEVA ECIJA', 'CABANATUAN CITY', 'Sangitan', '1167 del Pilar Street, Barangay Sangitan, Cabanatuan City, Nueva Ecija', 2, 'Active', '09661234567', '1', 1, '03'),
(46, '004', 'Jonathan ', 'Policarpio', 'jufreyninsbayog@gmail.com', 'mio_rtoc7', '12345', 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'ALBURQUERQUE', 'Bahi', 'NA', 2, 'Active', '09671234567', '1', 1, '07'),
(47, '003', 'catalina', 'manaloto', 'jufreyninsbayog@gmail.com', 'mio1b_rtoc3', '12345', 'REGION III (CENTRAL LUZON)', 'TARLAC', 'MAYANTOC', 'Pitombayog', 'No. 4 Pitombayog, Manyantoc Municipal', 2, 'Deactivated', '09661234567', '1', 1, '03'),
(54, 'sd', 'sd', 'sd', 'jufreyninsbayog@gmail.com', 'dasd', 'jufreyninsbayog@gmail.com', 'REGION III (CENTRAL LUZON)', 'null', 'null', 'null', 'null', 1, 'Active', '09171234567', '0', 0, '03'),
(55, '008', 'Inday', 'Guzman', 'jufreyninsbayog@gmail.com', 'mio_rtoc12b', '12345', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'GENERAL SANTOS CITY (DADIANGAS)', 'Dadiangas East (Pob.)', 'Brgy. Pag-asa', 2, 'Active', '09671234567', '1', 1, '12'),
(56, '010', 'Alfred', 'Garcia', 'alfredjr.garcia8@gmail.com', 'Alfred', '12345', 'REGION XII (SOCCSKSARGEN)', 'null', 'null', 'null', 'null', 2, 'Active', '0956123456', '0', 0, '12'),
(57, 'test', 'tes', 'tset', 'tse@gmail.com', 'samplemail@mail.com', '123', 'REGION III (CENTRAL LUZON)', 'null', 'null', 'null', 'null', 2, 'Active', '09171234567', '0', 1, '03'),
(60, 'fsdf', 'fsd', 'sdfs', 'jufreyninsbayog@gmail.com', '1234', '1234', 'REGION III (CENTRAL LUZON)', 'null', 'null', 'null', 'null', 1, 'Deactivated', '091231654485', '0', 1, '03'),
(63, '43223', 'jufrey', 'bayog', 'jufreyninsbayog@gmail.com', '123', '123', 'REGION III (CENTRAL LUZON)', 'null', 'null', 'null', 'null', 1, 'Active', '9123165448', '0', 1, '03'),
(64, '1231', 'jufrey', 'bayog', 'jufreyninsbayog@gmail.com', '12345', '12345', 'REGION III (CENTRAL LUZON)', 'null', 'null', 'null', 'null', 2, 'Active', '9123165448', '0', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `fhc_table`
--

CREATE TABLE `fhc_table` (
  `fhc_id` int(11) NOT NULL,
  `drr_id` int(15) NOT NULL,
  `fhc_number_of_heads` varchar(255) NOT NULL DEFAULT '0',
  `fhc_weight` varchar(255) NOT NULL DEFAULT '0',
  `fhc_species` varchar(255) NOT NULL,
  `fhc_date` varchar(255) NOT NULL,
  `fhc_time` varchar(255) NOT NULL,
  `me_id` int(15) NOT NULL,
  `fhc_region` varchar(255) NOT NULL,
  `fhc_province` varchar(255) NOT NULL,
  `fhc_city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fhc_table`
--

INSERT INTO `fhc_table` (`fhc_id`, `drr_id`, `fhc_number_of_heads`, `fhc_weight`, `fhc_species`, `fhc_date`, `fhc_time`, `me_id`, `fhc_region`, `fhc_province`, `fhc_city`) VALUES
(127, 116, '0', '0', 'Hog', '07/04/2022', '08:04:45am', 56, 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'GENERAL SANTOS CITY (DADIANGAS)'),
(128, 117, '4945', '4935.3', 'Chicken', '07/04/2022', '10:19:47am', 58, 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'ALICIA'),
(129, 118, '49', '4655', 'Hog', '07/04/2022', '12:48:59pm', 57, 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'MINGLANILLA'),
(130, 119, '13', '5200', 'Cattle', '07/04/2022', '12:52:33pm', 57, 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'BARILI'),
(131, 120, '15000', '18000', 'Chicken', '07/04/2022', '01:05:16pm', 55, 'REGION III (CENTRAL LUZON)', 'TARLAC', 'SAN JOSE'),
(132, 121, '0', '0', 'Chicken', '07/04/2022', '01:15:42pm', 58, 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'DIMIAO'),
(133, 122, '0', '0', 'Hog', '07/04/2022', '01:29:02pm', 56, 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'GENERAL SANTOS CITY (DADIANGAS)'),
(134, 123, '4', '278', 'Ostrich', '07/04/2022', '02:16:03pm', 56, 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'TUPI'),
(135, 124, '70', '5950', 'Hog', '07/04/2022', '02:18:11pm', 57, 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'DUMANJUG'),
(136, 125, '4', '1400', 'Cattle', '07/04/2022', '02:20:36pm', 57, 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'CITY OF TALISAY'),
(137, 126, '0', '0', 'Chicken', '07/04/2022', '02:30:44pm', 55, 'REGION III (CENTRAL LUZON)', 'TARLAC', 'SAN JOSE'),
(138, 127, '19970', '25964', 'Chicken', '07/04/2022', '02:33:42pm', 55, 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'BACOLOR'),
(139, 128, '0', '0', 'Chicken', '07/04/2022', '03:13:28pm', 58, 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'UBAY'),
(140, 129, '11995', '17992.5', 'Chicken', '07/04/2022', '11:33:26pm', 55, 'REGION III (CENTRAL LUZON)', 'ISABELA', 'RAMON'),
(141, 130, '0', '0', 'Hog', '07/05/2022', '11:06:27am', 57, 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'MINGLANILLA'),
(142, 131, '0', '0', 'Goat', '07/05/2022', '12:51:08pm', 57, 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'TOLEDO CITY'),
(143, 132, '0', '0', 'Hog', '07/05/2022', '02:28:36pm', 57, 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'SAN FERNANDO'),
(144, 133, '4960', '6944', 'Chicken', '07/05/2022', '02:39:32pm', 58, 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'DIMIAO'),
(145, 134, '8895', '12453', 'Chicken', '07/05/2022', '02:50:04pm', 58, 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'UBAY'),
(146, 135, '0', '0', 'Chicken', '07/05/2022', '02:57:21pm', 55, 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'BACOLOR'),
(147, 136, '9', '30', 'Hog', '07/05/2022', '03:05:28pm', 60, 'REGION III (CENTRAL LUZON)', 'NUEVA ECIJA', 'CABANATUAN CITY'),
(148, 137, '0', '0', 'Chicken', '07/05/2022', '03:07:13pm', 58, 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'ALICIA'),
(149, 138, '1', '450', 'Cattle', '07/05/2022', '03:10:02pm', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN'),
(150, 139, '0', '0', 'Chicken', '07/05/2022', '03:28:48pm', 55, 'REGION III (CENTRAL LUZON)', 'TARLAC', 'CITY OF TARLAC (Capital)'),
(151, 140, '14', '1694', 'Hog', '07/05/2022', '04:11:54pm', 60, 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'SAN SIMON'),
(152, 141, '2', '60', 'Goat', '07/05/2022', '04:15:29pm', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN'),
(153, 142, '95', '4995', 'Hog', '07/05/2022', '09:31:01pm', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'SAN ILDEFONSO'),
(154, 143, '0', '0', 'Chicken', '07/06/2022', '10:01:11am', 55, 'REGION III (CENTRAL LUZON)', 'TARLAC', 'CITY OF TARLAC (Capital)'),
(155, 144, '0', '0', 'Chicken', '07/06/2022', '10:05:32am', 55, 'REGION III (CENTRAL LUZON)', 'TARLAC', 'CITY OF TARLAC (Capital)'),
(156, 145, '0', '0', 'Chicken', '07/06/2022', '10:31:08am', 55, 'REGION III (CENTRAL LUZON)', 'TARLAC', 'CITY OF TARLAC (Capital)'),
(157, 146, '0', '0', 'Hog', '07/06/2022', '02:54:18pm', 56, 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'GENERAL SANTOS CITY (DADIANGAS)'),
(158, 147, '0', '0', 'Ostrich', '07/07/2022', '09:18:51am', 56, 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'TUPI'),
(159, 148, '0', '0', 'Hog', '07/07/2022', '10:25:11am', 56, 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'GENERAL SANTOS CITY (DADIANGAS)'),
(160, 149, '2275', '5915', 'Chicken', '07/07/2022', '11:49:13am', 59, 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'TUPI'),
(161, 150, '1000', '1100', 'Chicken', '07/07/2022', '01:08:04pm', 59, 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'POLOMOLOK'),
(162, 151, '0', '0', 'Chicken', '07/07/2022', '01:12:46pm', 59, 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'TUPI'),
(163, 152, '0', '0', 'Chicken', '07/07/2022', '01:16:36pm', 59, 'REGION XII (SOCCSKSARGEN)', 'BOHOL', 'DIMIAO'),
(164, 153, '0', '0', 'Chicken', '07/07/2022', '01:16:37pm', 59, 'REGION XII (SOCCSKSARGEN)', 'BOHOL', 'DIMIAO'),
(165, 154, '0', '0', 'Chicken', '07/07/2022', '01:40:54pm', 59, 'REGION XII (SOCCSKSARGEN)', 'BOHOL', 'UBAY'),
(166, 155, '0', '0', 'Chicken', '07/20/2022', '08:31:04am', 55, 'REGION III (CENTRAL LUZON)', 'CAGAYAN', 'APARRI'),
(167, 156, '0', '0', 'Chicken', '07/20/2022', '08:40:53am', 55, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BOCAUE'),
(168, 157, '0', '0', 'Chicken', '07/20/2022', '08:44:22am', 55, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BOCAUE'),
(169, 158, '0', '0', 'Chicken', '07/20/2022', '08:46:51am', 55, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BOCAUE'),
(170, 159, '99', '89', 'Chicken', '07/20/2022', '08:48:32am', 55, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BOCAUE'),
(171, 160, '0', '0', 'Chicken', '07/20/2022', '02:17:57pm', 55, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN'),
(172, 161, '10', '10', 'Hog', '08/01/2022', '03:18:19pm', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN'),
(173, 162, '0', '0', 'Hog', '08/09/2022', '10:05:06am', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'PLARIDEL'),
(174, 163, '0', '0', 'Hog', '08/09/2022', '10:06:49am', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'PLARIDEL'),
(175, 164, '0', '0', 'Hog', '08/09/2022', '10:08:04am', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'PLARIDEL'),
(176, 165, '0', '0', 'Hog', '08/09/2022', '10:10:10am', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'PLARIDEL'),
(177, 166, '0', '0', 'Hog', '08/09/2022', '10:10:55am', 60, 'REGION III (CENTRAL LUZON)', 'CAGAYAN', 'LASAM'),
(178, 167, '0', '0', 'Hog', '08/09/2022', '10:11:24am', 60, 'REGION III (CENTRAL LUZON)', 'CAGAYAN', 'LASAM'),
(179, 168, '0', '0', 'Hog', '08/09/2022', '10:11:49am', 60, 'REGION III (CENTRAL LUZON)', 'CAGAYAN', 'LASAM'),
(180, 169, '0', '0', 'Hog', '08/09/2022', '10:12:14am', 60, 'REGION III (CENTRAL LUZON)', 'CAGAYAN', 'LASAM'),
(181, 170, '0', '0', 'Hog', '08/09/2022', '10:13:40am', 60, 'REGION III (CENTRAL LUZON)', 'CAGAYAN', 'LASAM'),
(182, 171, '0', '0', 'Hog', '08/09/2022', '10:13:59am', 60, 'REGION III (CENTRAL LUZON)', 'CAGAYAN', 'LASAM'),
(183, 172, '0', '0', 'Hog', '08/09/2022', '10:14:20am', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'PANDI'),
(184, 173, '0', '0', 'Hog', '08/09/2022', '10:14:43am', 60, 'REGION III (CENTRAL LUZON)', 'CAMARINES NORTE', 'SANTA ELENA'),
(185, 174, '0', '0', 'Hog', '08/09/2022', '10:16:15am', 60, 'REGION III (CENTRAL LUZON)', 'CAMARINES NORTE', 'SANTA ELENA'),
(186, 175, '27', '212', 'Hog', '08/17/2022', '03:01:39pm', 67, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN'),
(187, 176, '95', '5700', 'Hog', '08/17/2022', '03:10:31pm', 67, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN'),
(188, 177, '3', '3', 'Hog', '09/01/2022', '10:57:18am', 60, 'REGION III (CENTRAL LUZON)', 'NUEVA ECIJA', 'PALAYAN CITY (Capital)'),
(189, 178, '3', '3', 'Hog', '09/01/2022', '10:58:00am', 60, 'REGION III (CENTRAL LUZON)', 'NUEVA ECIJA', 'PALAYAN CITY (Capital)'),
(190, 179, '20', '20', 'Hog', '09/06/2022', '10:23:30am', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'OBANDO'),
(191, 180, '0', '0', 'Hog', '09/06/2022', '10:24:23am', 0, '', 'BULACAN', 'OBANDO'),
(192, 181, '21', '22', 'Hog', '09/06/2022', '10:39:36am', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'DOÑA REMEDIOS TRINIDAD'),
(193, 182, '0', '0', 'Hog', '09/12/2022', '10:59:52am', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN'),
(194, 183, '0', '0', 'Hog', '09/20/2022', '09:34:50am', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN'),
(195, 184, '0', '0', 'Hog', '09/20/2022', '09:34:55am', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN'),
(196, 185, '0', '0', 'Hog', '09/20/2022', '09:34:56am', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN'),
(197, 186, '0', '0', 'Hog', '09/20/2022', '09:34:57am', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN'),
(198, 187, '0', '0', 'Hog', '09/21/2022', '11:11:57am', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'NORZAGARAY');

-- --------------------------------------------------------

--
-- Table structure for table `fit_human_consumption`
--

CREATE TABLE `fit_human_consumption` (
  `fit_id` int(11) NOT NULL,
  `drr_id` int(15) NOT NULL,
  `fit_number_of_head` varchar(255) DEFAULT '0',
  `fit_weight` varchar(255) NOT NULL DEFAULT '0',
  `fit_date` varchar(255) NOT NULL,
  `fit_time` varchar(255) NOT NULL,
  `fit_species` varchar(255) NOT NULL,
  `fit_country` varchar(255) NOT NULL DEFAULT 'Philippines',
  `fit_region` varchar(255) NOT NULL,
  `fit_province` varchar(255) NOT NULL,
  `fit_city` varchar(255) NOT NULL,
  `me_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fit_human_consumption`
--

INSERT INTO `fit_human_consumption` (`fit_id`, `drr_id`, `fit_number_of_head`, `fit_weight`, `fit_date`, `fit_time`, `fit_species`, `fit_country`, `fit_region`, `fit_province`, `fit_city`, `me_id`) VALUES
(129, 131, '0', '0', '07/05/2022', '12:51:08pm', 'Goat', 'Philippines', 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'TOLEDO CITY', 57),
(130, 130, '0', '0', '07/05/2022', '11:06:27am', 'Hog', 'Philippines', 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'MINGLANILLA', 57),
(131, 129, '242', '32', '07/04/2022', '11:33:26pm', 'Chicken', 'Philippines', 'REGION III (CENTRAL LUZON)', 'ISABELA', 'RAMON', 55),
(132, 128, '32', '32', '07/04/2022', '03:13:28pm', 'Chicken', 'Philippines', 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'UBAY', 58),
(133, 127, '32', '32', '07/04/2022', '02:33:42pm', 'Chicken', 'Philippines', 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'BACOLOR', 55),
(134, 126, '32', '424', '07/04/2022', '02:30:44pm', 'Chicken', 'Philippines', 'REGION III (CENTRAL LUZON)', 'TARLAC', 'SAN JOSE', 55),
(135, 125, '4', '4', '07/04/2022', '02:20:36pm', 'Cattle', 'Philippines', 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'CITY OF TALISAY', 57),
(136, 124, '70', '70', '07/04/2022', '02:18:11pm', 'Hog', 'Philippines', 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'DUMANJUG', 57),
(137, 123, '2', '140', '07/04/2022', '02:16:03pm', 'Ostrich', 'Philippines', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'TUPI', 56),
(138, 122, '0', '0', '07/04/2022', '01:29:02pm', 'Hog', 'Philippines', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'GENERAL SANTOS CITY (DADIANGAS)', 56),
(139, 121, '4242', '424', '07/04/2022', '01:15:42pm', 'Chicken', 'Philippines', 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'DIMIAO', 58),
(140, 120, '424', '2424', '07/04/2022', '01:05:16pm', 'Chicken', 'Philippines', 'REGION III (CENTRAL LUZON)', 'TARLAC', 'SAN JOSE', 55),
(141, 119, '15', '15', '07/04/2022', '12:52:33pm', 'Cattle', 'Philippines', 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'BARILI', 57),
(142, 118, '45', '45', '07/04/2022', '12:48:59pm', 'Hog', 'Philippines', 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'MINGLANILLA', 57),
(143, 117, '4945', '4945', '07/04/2022', '10:19:47am', 'Chicken', 'Philippines', 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'ALICIA', 58),
(144, 116, '0', '0', '07/04/2022', '07/04/2022', 'Hog', 'Philippines', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'GENERAL SANTOS CITY (DADIANGAS)', 56),
(147, 132, '0', '0', '07/05/2022', '02:28:36pm', 'Hog', 'Philippines', 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'SAN FERNANDO', 57),
(148, 133, '4770', '4770', '07/05/2022', '02:39:32pm', 'Chicken', 'Philippines', 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'DIMIAO', 58),
(149, 134, '9000', '9000', '07/05/2022', '02:50:04pm', 'Chicken', 'Philippines', 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'UBAY', 58),
(150, 135, '0', '0', '07/05/2022', '02:57:21pm', 'Chicken', 'Philippines', 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'BACOLOR', 55),
(151, 136, '9', '30', '07/05/2022', '03:05:28pm', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'NUEVA ECIJA', 'CABANATUAN CITY', 60),
(152, 137, '0', '0', '07/05/2022', '03:07:13pm', 'Chicken', 'Philippines', 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'ALICIA', 58),
(153, 138, '1', '446', '07/05/2022', '03:10:02pm', 'Cattle', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 60),
(154, 139, '0', '0', '07/05/2022', '03:28:48pm', 'Chicken', 'Philippines', 'REGION III (CENTRAL LUZON)', 'TARLAC', 'CITY OF TARLAC (Capital)', 55),
(155, 140, '12', '192', '07/05/2022', '04:11:54pm', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'SAN SIMON', 60),
(156, 141, '2', '60', '07/05/2022', '04:15:29pm', 'Goat', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 60),
(157, 142, '100', '5000', '07/05/2022', '09:31:01pm', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'SAN ILDEFONSO', 60),
(158, 143, '4324', '234234', '07/06/2022', '10:01:11am', 'Chicken', 'Philippines', 'REGION III (CENTRAL LUZON)', 'TARLAC', 'CITY OF TARLAC (Capital)', 55),
(159, 144, '0', '0', '07/06/2022', '10:05:32am', 'Chicken', 'Philippines', 'REGION III (CENTRAL LUZON)', 'TARLAC', 'CITY OF TARLAC (Capital)', 55),
(160, 145, '0', '0', '07/06/2022', '10:31:08am', 'Chicken', 'Philippines', 'REGION III (CENTRAL LUZON)', 'TARLAC', 'CITY OF TARLAC (Capital)', 55),
(161, 146, '0', '0', '07/06/2022', '02:54:18pm', 'Hog', 'Philippines', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'GENERAL SANTOS CITY (DADIANGAS)', 56),
(162, 147, '0', '0', '07/07/2022', '09:18:51am', 'Ostrich', 'Philippines', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'TUPI', 56),
(163, 148, '0', '0', '07/07/2022', '10:25:11am', 'Hog', 'Philippines', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'GENERAL SANTOS CITY (DADIANGAS)', 56),
(164, 149, '323232', '3232', '07/07/2022', '11:49:13am', 'Chicken', 'Philippines', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'TUPI', 59),
(165, 150, '23', '32323', '07/07/2022', '01:08:04pm', 'Chicken', 'Philippines', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'POLOMOLOK', 59),
(166, 151, '3232', '3232', '07/07/2022', '01:12:46pm', 'Chicken', 'Philippines', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'TUPI', 59),
(167, 152, '3232', '3232', '07/07/2022', '01:16:36pm', 'Chicken', 'Philippines', 'REGION XII (SOCCSKSARGEN)', 'BOHOL', 'DIMIAO', 59),
(168, 153, '3232', '3232', '07/07/2022', '01:16:37pm', 'Chicken', 'Philippines', 'REGION XII (SOCCSKSARGEN)', 'BOHOL', 'DIMIAO', 59),
(169, 154, '323', '232', '07/07/2022', '01:40:54pm', 'Chicken', 'Philippines', 'REGION XII (SOCCSKSARGEN)', 'BOHOL', 'UBAY', 59),
(170, 155, '323', '323232', '07/20/2022', '08:31:04am', 'Chicken', 'Philippines', 'REGION III (CENTRAL LUZON)', 'CAGAYAN', 'APARRI', 55),
(171, 156, '0', '0', '07/20/2022', '08:40:53am', 'Chicken', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BOCAUE', 55),
(172, 157, '0', '0', '07/20/2022', '08:44:22am', 'Chicken', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BOCAUE', 55),
(173, 158, '0', '0', '07/20/2022', '08:46:51am', 'Chicken', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BOCAUE', 55),
(174, 159, '88', '88', '07/20/2022', '08:48:32am', 'Chicken', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BOCAUE', 55),
(175, 160, '0', '0', '07/20/2022', '02:17:57pm', 'Chicken', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 55),
(176, 161, '0', '0', '08/01/2022', '03:18:19pm', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 60),
(177, 162, '0', '0', '08/09/2022', '10:05:06am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'PLARIDEL', 60),
(178, 163, '0', '0', '08/09/2022', '10:06:49am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'PLARIDEL', 60),
(179, 164, '0', '0', '08/09/2022', '10:08:04am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'PLARIDEL', 60),
(180, 165, '0', '0', '08/09/2022', '10:10:10am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'PLARIDEL', 60),
(181, 166, '0', '0', '08/09/2022', '10:10:55am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'CAGAYAN', 'LASAM', 60),
(182, 167, '0', '0', '08/09/2022', '10:11:24am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'CAGAYAN', 'LASAM', 60),
(183, 168, '0', '0', '08/09/2022', '10:11:49am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'CAGAYAN', 'LASAM', 60),
(184, 169, '0', '0', '08/09/2022', '10:12:14am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'CAGAYAN', 'LASAM', 60),
(185, 170, '0', '0', '08/09/2022', '10:13:40am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'CAGAYAN', 'LASAM', 60),
(186, 171, '0', '0', '08/09/2022', '10:13:59am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'CAGAYAN', 'LASAM', 60),
(187, 172, '0', '0', '08/09/2022', '10:14:20am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'PANDI', 60),
(188, 173, '0', '0', '08/09/2022', '10:14:43am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'CAMARINES NORTE', 'SANTA ELENA', 60),
(189, 174, '0', '0', '08/09/2022', '10:16:15am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'CAMARINES NORTE', 'SANTA ELENA', 60),
(190, 175, '0', '0', '08/17/2022', '03:01:39pm', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 67),
(191, 176, '95', '4940', '08/17/2022', '03:10:31pm', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 67),
(192, 177, '0', '0', '09/01/2022', '10:57:18am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'NUEVA ECIJA', 'PALAYAN CITY (Capital)', 60),
(193, 178, '3', '1', '09/01/2022', '10:58:00am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'NUEVA ECIJA', 'PALAYAN CITY (Capital)', 60),
(194, 179, '20', '13', '09/06/2022', '10:23:30am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'OBANDO', 60),
(195, 180, '0', '0', '09/06/2022', '10:24:23am', 'Hog', 'Philippines', '', 'BULACAN', 'OBANDO', 0),
(196, 181, '0', '0', '09/06/2022', '10:39:36am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'DOÑA REMEDIOS TRINIDAD', 60),
(197, 182, '0', '0', '09/12/2022', '10:59:52am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 60),
(198, 183, '0', '0', '09/20/2022', '09:34:50am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 60),
(199, 184, '0', '0', '09/20/2022', '09:34:55am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 60),
(200, 185, '0', '0', '09/20/2022', '09:34:56am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 60),
(201, 186, '0', '0', '09/20/2022', '09:34:57am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 60),
(202, 187, '0', '0', '09/21/2022', '11:11:57am', 'Hog', 'Philippines', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'NORZAGARAY', 60);

-- --------------------------------------------------------

--
-- Table structure for table `meat_establishment_daily_tbl`
--

CREATE TABLE `meat_establishment_daily_tbl` (
  `med_id` int(11) NOT NULL,
  `me_id` int(15) NOT NULL,
  `med_status` int(11) NOT NULL DEFAULT 0,
  `med_date` varchar(255) NOT NULL,
  `med_region` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `meat_establishment_tbl`
--

CREATE TABLE `meat_establishment_tbl` (
  `me_id` int(11) NOT NULL,
  `me_code` varchar(255) NOT NULL,
  `me_plant_name` varchar(255) NOT NULL,
  `me_type` varchar(255) NOT NULL,
  `me_classification` varchar(255) NOT NULL,
  `me_lto_number` varchar(255) NOT NULL,
  `me_region_code` varchar(255) NOT NULL,
  `me_province_code` varchar(255) NOT NULL,
  `me_city_code` varchar(255) NOT NULL,
  `me_barangay_code` varchar(255) NOT NULL,
  `me_address` varchar(255) NOT NULL,
  `me_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `me_date_created` varchar(255) NOT NULL,
  `me_expiry` varchar(255) NOT NULL,
  `me_remarks` varchar(255) NOT NULL,
  `me_username` varchar(255) NOT NULL,
  `me_password` varchar(255) NOT NULL,
  `me_setup_account` varchar(255) NOT NULL,
  `me_contact` varchar(255) NOT NULL,
  `me_email` varchar(255) NOT NULL,
  `employee_id` varchar(255) NOT NULL DEFAULT '0',
  `me_account_activation` varchar(255) NOT NULL DEFAULT '0',
  `me_owner` varchar(255) NOT NULL,
  `region_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meat_establishment_tbl`
--

INSERT INTO `meat_establishment_tbl` (`me_id`, `me_code`, `me_plant_name`, `me_type`, `me_classification`, `me_lto_number`, `me_region_code`, `me_province_code`, `me_city_code`, `me_barangay_code`, `me_address`, `me_status`, `me_date_created`, `me_expiry`, `me_remarks`, `me_username`, `me_password`, `me_setup_account`, `me_contact`, `me_email`, `employee_id`, `me_account_activation`, `me_owner`, `region_code`) VALUES
(55, 'sadsas', 'Bounty Fresh  Food Inc.', 'PDP', 'AAA', '1063', 'REGION III (CENTRAL LUZON)', 'TARLAC', 'CONCEPCION', 'Santo Cristo', 'Sto. Cristo, conception , tarlac', 'Approved', '07/01/2022', '12/15/2022', 'no', 'me_bff', '12345', 'test', '09091234567', 'jufreyninsbayog@gmail.com', '47', '1', '', '03'),
(56, 'sadsas', 'MRMS Slaughterhouse', 'SLH', 'AA', 'SH-997-AA', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'GENERAL SANTOS CITY (DADIANGAS)', 'Katangawan', 'Purok 3 Labu', 'Approved', '07/01/2022', '12/12/2022', 'no', 'me_mms', '12345', 'test', '0965-123-4567', 'jufreyninsbayod@gmail.com', '0', '1', '', '12'),
(57, 'sadsas', 'Talisay City Livestock and Poultry Center', 'SLH', 'AA', 'SH-743-AA', 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'CITY OF TALISAY', 'Lawaan II', 'Lawaan 2 Lower Mohon, Talisay City, Cebu', 'Approved', '07/01/2022', '05/15/2025', 'no', 'me_tclp', '12345', 'test', '09651234567', 'jufreyninsbayog@gmail.com', '46', '1', '', '07'),
(58, 'sadsas', 'Marcela Farms, Inc. ', 'PDP', 'AA', 'PDP-831-AA', 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'UBAY', 'Lomangog', 'NA', 'Approved', '07/01/2022', '05/18/2022', 'no', 'me_mfi', '12345', 'test', '09651234567', 'jufreyninsbayog@gmail.com', '46', '1', '', '07'),
(59, 'sadsas', 'Gensan Min Asia Trading Corp.', 'PDP', 'AA', '1091', 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'POLOMOLOK', 'Glamang', 'Purok 4 ', 'Approved', '07/01/2022', '12/16/2022', 'no', 'me_gmatc', '12345', 'test', '0965123456', 'jufreyninsbayog@gmail.com', '55', '1', '', '12'),
(60, 'sadsas', 'SN SMN Meat Products Corp.', 'SLH', 'AA', 'SH-912-AA', 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'SAN SIMON', 'San Isidro', 'Sto. Cristo', 'Approved', '07/04/2022', '12/27/2022', 'no', 'me_smn', '12345', 'test', '09651234567', 'jufreyninsbayog@gmail.com', '45', '1', 'Jufrey Niño E. Bayog', '03'),
(61, 'sadsas', 'tset', 'SLH', 'AA', '4344', 'CORDILLERA ADMINISTRATIVE REGION (CAR)', 'APAYAO', 'CONNER', 'Buluan', 'tset', 'Pending', '07/20/2022', '07/20/2022', 'no', 'jufreyninsbayog@gmails.com', 'jufreyninsbayog@gmail.com', 'test', 'test', 'jufreyninsbayog@gmail.com', '0', '0', 'test', '14'),
(62, 'sadsas', 'fsdf', 'PDP', 'AAA', 'fsd', 'REGION III (CENTRAL LUZON)', 'TARLAC', 'CITY OF TARLAC (Capital)', 'Atioc', 'tessfsdf', 'Pending', '07/20/2022', '07/20/2022', 'no', 'test', 'test', 'test', '0921313', 'jufreyninsbayog@gmail.com', '0', '0', 'fsdfsd', '03'),
(63, 'sadsas', 'Bounty Fresh Food Inc.', 'PDP', 'AAA', '53243', 'REGION III (CENTRAL LUZON)', 'BATAAN', 'BAGAC', 'Atilano L. Ricardo', 'ph1', 'Pending', '07/20/2022', '07/20/2022', 'no', 'test1', '123', 'test', '091234141233', 'jufreyninsbayog@gmail.com', '0', '0', 'juan dela cruz', '03'),
(64, 'sadsas', 'fghgf', 'PDP', 'AAA', 'PDP-4534-AAA', 'AUTONOMOUS REGION IN MUSLIM MINDANAO (ARMM)', 'SULU', 'LUGUS', 'Huwit-huwit Bas Nonok', 'yrdy', 'Pending', '07/28/2022', '07/28/2022', 'no', 'jufz', 'jufz', 'test', '09652100539', 'jufreyninsbayog@gmail.com', '0', '0', 'hgfhf', '15'),
(65, 'sadsas', 'sad', 'PDP', 'AAA', 'PDP-4534-AAA', 'REGION III (CENTRAL LUZON)', 'BATAAN', 'BAGAC', 'Binuangan', 'test', 'Pending', '07/28/2022', '07/28/2022', 'no', 'jufzs', 'jufz', 'test', '0965201', 'jufreyninsbayog@gmail.com', '0', '0', 'dasd', '03'),
(66, 'sadsas', 'Mock Dressing Plant', 'PDP', 'AAA', 'PDP-1232-AAA', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'Balubad', 'Phase III blk 7 sawata 3 C-road', 'Pending', '08/05/2022', '12/30/2022', 'no', 'me_mdp', '12345', 'test', '09091234567', 'jufreyninsbayog@gmail.com', '0', '1', 'juan', '03'),
(67, 'sadsas', 'Mock dressing plant 3', 'SLH', 'AAA', 'SLH-1231-AAA', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'Bagumbayan', 'Phase 3 st.', 'Approved', '08/17/2022', '08/17/2023', 'no', 'me_mdp2', '12345', 'test', '0921536546', 'nmis.devops@gmail.com', '0', '1', 'Juan Dela Cruz', '03'),
(75, 'sadsas', 'Mock Dressing Plant4', 'SLH', 'AAA', 'SLH-234-AAA', 'REGION III (CENTRAL LUZON)', 'BULACAN', 'NORZAGARAY', 'Minuyan', 'Bulacan', 'Approved', '10/04/2022', '10/06/2022', 'no', '12344', '123', 'test', '9652100539', 'jufreyninsbayog@gmail.com', '0', '1', 'Juan dela cruz', '');

-- --------------------------------------------------------

--
-- Table structure for table `me_assign_tbl`
--

CREATE TABLE `me_assign_tbl` (
  `ma_id` int(11) NOT NULL,
  `me_id` varchar(255) NOT NULL,
  `employee_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pm_table`
--

CREATE TABLE `pm_table` (
  `pm_id` int(11) NOT NULL,
  `drr_id` int(15) NOT NULL,
  `pm_species` varchar(255) NOT NULL,
  `carcass_number_of_heads` int(15) NOT NULL DEFAULT 0,
  `carcass_weight` int(15) NOT NULL DEFAULT 0,
  `carcass_cause` varchar(255) NOT NULL,
  `lung_weight` int(15) NOT NULL DEFAULT 0,
  `lung_number_of_affected` int(15) NOT NULL DEFAULT 0,
  `lung_cause` varchar(255) NOT NULL,
  `liver_weight` int(15) NOT NULL DEFAULT 0,
  `liver_number_of_affected` int(15) NOT NULL DEFAULT 0,
  `liver_cause` varchar(255) NOT NULL,
  `heart_weight` int(15) NOT NULL DEFAULT 0,
  `heart_number_of_affected` int(15) NOT NULL DEFAULT 0,
  `heart_cause` varchar(255) NOT NULL,
  `intestine_weight` int(15) NOT NULL DEFAULT 0,
  `intestine_number_of_affected` int(15) NOT NULL DEFAULT 0,
  `intestine_cause` varchar(255) NOT NULL,
  `trimmings_head` int(15) NOT NULL DEFAULT 0,
  `trimming_weight` int(15) NOT NULL DEFAULT 0,
  `trimming_cause` varchar(255) NOT NULL,
  `feet_weight` int(15) NOT NULL DEFAULT 0,
  `feet_number_of_affected` int(15) NOT NULL DEFAULT 0,
  `feet_cause` varchar(255) NOT NULL,
  `kidney_weight` int(15) NOT NULL DEFAULT 0,
  `kidney_number_of_affected` int(15) NOT NULL DEFAULT 0,
  `kidney_cause` varchar(255) NOT NULL,
  `spleen_weight` int(15) NOT NULL DEFAULT 0,
  `spleen_number_of_affected` int(15) NOT NULL DEFAULT 0,
  `spleen_cause` varchar(255) NOT NULL,
  `pm_date` varchar(255) NOT NULL,
  `pm_time` varchar(255) NOT NULL DEFAULT '0',
  `me_id` int(15) NOT NULL,
  `pm_region` varchar(255) NOT NULL,
  `pm_province` varchar(255) NOT NULL,
  `pm_city` varchar(255) NOT NULL,
  `pm_barangay` varchar(255) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `pm_suspected` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pm_table`
--

INSERT INTO `pm_table` (`pm_id`, `drr_id`, `pm_species`, `carcass_number_of_heads`, `carcass_weight`, `carcass_cause`, `lung_weight`, `lung_number_of_affected`, `lung_cause`, `liver_weight`, `liver_number_of_affected`, `liver_cause`, `heart_weight`, `heart_number_of_affected`, `heart_cause`, `intestine_weight`, `intestine_number_of_affected`, `intestine_cause`, `trimmings_head`, `trimming_weight`, `trimming_cause`, `feet_weight`, `feet_number_of_affected`, `feet_cause`, `kidney_weight`, `kidney_number_of_affected`, `kidney_cause`, `spleen_weight`, `spleen_number_of_affected`, `spleen_cause`, `pm_date`, `pm_time`, `me_id`, `pm_region`, `pm_province`, `pm_city`, `pm_barangay`, `employee_id`, `pm_suspected`) VALUES
(165, 118, 'Hog', 5, 4, '196', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/04/2022', '0', 57, 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'MINGLANILLA', 'Cuanos', '46', '0'),
(166, 119, 'Cattle', 0, 0, '', 0, 0, '', 12, 3, '201', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/04/2022', '0', 57, 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'BARILI', 'Azucena', '46', '0'),
(167, 124, 'Hog', 0, 0, '', 50, 10, '204', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/04/2022', '0', 57, 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'DUMANJUG', 'Lawaan', '46', '0'),
(168, 124, 'Hog', 0, 0, '', 0, 0, '', 2, 1, '189', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/04/2022', '0', 57, 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'DUMANJUG', 'Lawaan', '46', '0'),
(169, 125, 'Cattle', 0, 0, '', 0, 0, '', 18, 5, '201', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/04/2022', '0', 57, 'REGION VII (CENTRAL VISAYAS)', 'CEBU', 'CITY OF TALISAY', 'San Isidro', '46', '0'),
(170, 138, 'Cattle', 0, 0, '', 0, 0, '', 4, 1, '201', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/05/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'NUEVA ECIJA', 'PALAYAN CITY (Capital)', 'Langka', '45', '0'),
(171, 133, 'Chicken', 230, 16, '210', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/05/2022', '0', 58, 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'DIMIAO', 'Canhayupon', '46', '0'),
(172, 133, 'Chicken', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 63, 900, '224', 0, 0, '', 0, 0, '', '07/05/2022', '0', 58, 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'DIMIAO', 'Canhayupon', '46', '0'),
(173, 140, 'Hog', 0, 0, '', 5, 5, '204', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/06/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'SAN SIMON', 'Concepcion', '45', '0'),
(174, 140, 'Hog', 0, 0, '', 5, 5, '204', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/06/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'SAN SIMON', 'Concepcion', '45', '0'),
(176, 140, 'Hog', 0, 0, '', 5, 5, '204', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/06/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'SAN SIMON', 'Concepcion', '45', '0'),
(177, 127, 'Chicken', 500, 70, '210', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/06/2022', '0', 55, 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'BACOLOR', 'San Isidro', '47', '0'),
(178, 134, 'Chicken', 250, 63, '214', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/06/2022', '0', 58, 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'UBAY', '	 Lomangog', '46', '0'),
(180, 134, 'Chicken', 0, 0, '', 0, 0, '', 11, 300, '221', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/06/2022', '0', 58, 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'UBAY', 'Lomangog', '46', '0'),
(181, 134, 'Chicken', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 49, 300, '227', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/06/2022', '0', 58, 'REGION VII (CENTRAL VISAYAS)', 'BOHOL', 'UBAY', 'Lomangog', '46', '0'),
(182, 142, 'Hog', 0, 0, '', 0, 0, '', 5, 5, '202', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/06/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'SAN ILDEFONSO', 'Gabihan', '45', '0'),
(183, 149, 'Chicken', 300, 75, '210', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/07/2022', '0', 59, 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'TUPI', 'Acmonan', '55', '0'),
(184, 149, 'Chicken', 0, 0, '', 0, 0, '', 12, 340, '221', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/07/2022', '0', 59, 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'TUPI', 'Acmonan', '55', '0'),
(185, 149, 'Chicken', 0, 0, '', 0, 0, '', 0, 0, '0', 0, 0, '', 0, 0, '', 0, 0, '', 250, 715, '211', 0, 0, '', 0, 0, '', '07/07/2022', '0', 59, 'REGION XII (SOCCSKSARGEN)', 'SOUTH COTABATO', 'TUPI', 'Acmonan', '55', '0'),
(186, 159, 'Chicken', 7, 7, '208', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/20/2022', '0', 55, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BOCAUE', 'Tambobong', '47', '0'),
(215, 140, 'Hog', 1, 1, '196', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/05/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'SAN SIMON', 'SAN SIMON', '45', '1'),
(216, 140, 'Hog', 1, 1, '196', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/05/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'PAMPANGA', 'SAN SIMON', 'Concepcion', '45', '0'),
(224, 176, 'Hog', 1, 60, '196', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '08/17/2022', '0', 67, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'Bagumbayan', '45', '0'),
(226, 176, 'Hog', 0, 0, '', 40, 1, '204', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '08/17/2022', '0', 67, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'Bagumbayan', '45', '0'),
(227, 176, '', 0, 0, '', 0, 0, 'Hog', 30, 1, '189', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '08/17/2022', '0', 67, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'Bagumbayan', '45', '0'),
(229, 176, 'Hog', 0, 0, '', 0, 0, '', 0, 0, '', 10, 1, '203', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '08/17/2022', '0', 67, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'Bagumbayan', '45', '0'),
(232, 176, 'Hog', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 450, 1, '200', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '08/17/2022', '0', 67, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'Bagumbayan', '45', '0'),
(233, 175, 'Hog', 1, 1, '196', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '08/17/2022', '0', 67, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'BULACAN', '45', '1'),
(255, 175, 'Hog', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 2, 1, '200', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '08/17/2022', '0', 67, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'Bagumbayan', '45', '0'),
(256, 175, 'Hog', 1, 1, '196', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '08/17/2022', '0', 67, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'Bagumbayan', '45', '0'),
(257, 175, 'Hog', 1, 1, '196', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '08/17/2022', '0', 67, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'BULACAN', 'BULACAN', '45', '1'),
(259, 179, 'Hog', 1, 2, '196', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '09/06/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'OBANDO', 'Paliwas', '45', '1'),
(265, 179, '', 0, 0, '', 0, 0, 'Hog', 2, 1, '189', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '09/06/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'OBANDO', 'Paliwas', '45', '1'),
(266, 179, 'Hog', 0, 0, '', 1, 1, '197', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '09/06/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'OBANDO', 'Paliwas', '45', '1'),
(267, 179, 'Hog', 0, 0, '', 0, 0, '', 0, 0, '', 3, 3, '199', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '09/06/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'OBANDO', 'Paliwas', '45', '1'),
(271, 181, 'Hog', 1, 2, '196', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '09/06/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'DOÑA REMEDIOS TRINIDAD', 'Camachile', '45', '0'),
(272, 142, 'Hog', 22, 2, '196', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '07/05/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'SAN ILDEFONSO', 'SAN ILDEFONSO', '45', '1'),
(274, 181, '', 0, 0, '', 0, 0, 'Hog', 1, 1, '189', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '09/06/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'DOÑA REMEDIOS TRINIDAD', 'DOÑA REMEDIOS TRINIDAD', '45', '1'),
(275, 181, 'Hog', 4, 4, '196', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '09/06/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'DOÑA REMEDIOS TRINIDAD', 'DOÑA REMEDIOS TRINIDAD', '45', '1'),
(276, 181, 'Hog', 0, 0, '', 1, 1, '197', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '09/06/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'DOÑA REMEDIOS TRINIDAD', 'Camachile', '45', '0'),
(277, 181, 'Hog', 0, 0, '', 0, 0, '', 0, 0, '', 1, 1, '199', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '09/06/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'DOÑA REMEDIOS TRINIDAD', 'Camachile', '45', '0'),
(278, 181, '', 0, 0, '', 0, 0, 'Hog', 1, 1, '189', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '09/06/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'DOÑA REMEDIOS TRINIDAD', 'Camachile', '45', '0'),
(279, 181, 'Hog', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 1, 1, '200', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '09/06/2022', '0', 60, 'REGION III (CENTRAL LUZON)', 'BULACAN', 'DOÑA REMEDIOS TRINIDAD', 'Camachile', '45', '0');

-- --------------------------------------------------------

--
-- Table structure for table `suspected_tbl`
--

CREATE TABLE `suspected_tbl` (
  `suspected_id` int(11) NOT NULL,
  `drr_id` varchar(255) NOT NULL,
  `suspected_heads` varchar(255) NOT NULL,
  `suspected_weight` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `am_table`
--
ALTER TABLE `am_table`
  ADD PRIMARY KEY (`am_table`);

--
-- Indexes for table `assigment_tbl`
--
ALTER TABLE `assigment_tbl`
  ADD PRIMARY KEY (`assign_id`);

--
-- Indexes for table `attachment_tbl`
--
ALTER TABLE `attachment_tbl`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `ddr_table`
--
ALTER TABLE `ddr_table`
  ADD PRIMARY KEY (`drr_id`);

--
-- Indexes for table `disease_report_tbl`
--
ALTER TABLE `disease_report_tbl`
  ADD PRIMARY KEY (`dr_id`);

--
-- Indexes for table `disease_tbl`
--
ALTER TABLE `disease_tbl`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `employee_tbl`
--
ALTER TABLE `employee_tbl`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `fhc_table`
--
ALTER TABLE `fhc_table`
  ADD PRIMARY KEY (`fhc_id`);

--
-- Indexes for table `fit_human_consumption`
--
ALTER TABLE `fit_human_consumption`
  ADD PRIMARY KEY (`fit_id`);

--
-- Indexes for table `meat_establishment_daily_tbl`
--
ALTER TABLE `meat_establishment_daily_tbl`
  ADD PRIMARY KEY (`med_id`);

--
-- Indexes for table `meat_establishment_tbl`
--
ALTER TABLE `meat_establishment_tbl`
  ADD PRIMARY KEY (`me_id`);

--
-- Indexes for table `pm_table`
--
ALTER TABLE `pm_table`
  ADD PRIMARY KEY (`pm_id`);

--
-- Indexes for table `suspected_tbl`
--
ALTER TABLE `suspected_tbl`
  ADD PRIMARY KEY (`suspected_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `am_table`
--
ALTER TABLE `am_table`
  MODIFY `am_table` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=575;

--
-- AUTO_INCREMENT for table `assigment_tbl`
--
ALTER TABLE `assigment_tbl`
  MODIFY `assign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `attachment_tbl`
--
ALTER TABLE `attachment_tbl`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `ddr_table`
--
ALTER TABLE `ddr_table`
  MODIFY `drr_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `disease_report_tbl`
--
ALTER TABLE `disease_report_tbl`
  MODIFY `dr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=744;

--
-- AUTO_INCREMENT for table `disease_tbl`
--
ALTER TABLE `disease_tbl`
  MODIFY `d_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=462;

--
-- AUTO_INCREMENT for table `employee_tbl`
--
ALTER TABLE `employee_tbl`
  MODIFY `employee_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `fhc_table`
--
ALTER TABLE `fhc_table`
  MODIFY `fhc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `fit_human_consumption`
--
ALTER TABLE `fit_human_consumption`
  MODIFY `fit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `meat_establishment_daily_tbl`
--
ALTER TABLE `meat_establishment_daily_tbl`
  MODIFY `med_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meat_establishment_tbl`
--
ALTER TABLE `meat_establishment_tbl`
  MODIFY `me_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `pm_table`
--
ALTER TABLE `pm_table`
  MODIFY `pm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT for table `suspected_tbl`
--
ALTER TABLE `suspected_tbl`
  MODIFY `suspected_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
