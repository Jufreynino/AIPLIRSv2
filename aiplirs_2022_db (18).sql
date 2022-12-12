-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2022 at 12:24 PM
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
(578, '194', '3', '7.5', '3', '7.5', '0', '205', '0', '0', '', '0', '0', '', '11/24/2022', '04:30:03am', 78, 'Chicken', 'CALABARZON', 'Cavite', 'Mendez', '', '77', '1', '0'),
(579, '201', '20', '1400', '15', '1050', '0', '89', '0', '0', '', '0', '0', '', '11/24/2022', '11:44:57am', 79, 'Hog', 'CALABARZON', 'Cavite', 'Naic', '', '80', '1', '0'),
(580, '201', '0', '0', '0', '0', '579', '', '0', '0', '', '5', '350', '145', '11/24/2022', '0', 79, 'Hog', 'CALABARZON', 'Cavite', 'Naic', '', '80', '0', '1');

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
  `end_date` varchar(255) NOT NULL DEFAULT 'Null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assigment_tbl`
--

INSERT INTO `assigment_tbl` (`assign_id`, `me_id`, `assign_date`, `employee_id`, `assign_region`, `assign_status`, `end_date`) VALUES
(26, '78', '11/23/2022', '77', 'CALABARZON', 'Reassigned', '12/02/2022'),
(27, '79', '11/24/2022', '80', 'CALABARZON', 'Active', ''),
(28, '78', '12/02/2022', '80', 'CALABARZON', 'Reassigned', '12/02/2022'),
(29, '79', '12/02/2022', '77', 'CALABARZON', 'Active', 'Null');

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
(197, '7359-shipping_permit.jpg', '194', '7139-5130-35151551_10155395001706128_6922948168267071488_n-576x1024.jpg', '0', '0'),
(198, '5613-shipping_permit.jpg', '195', '6012-5130-35151551_10155395001706128_6922948168267071488_n-576x1024.jpg', '0', '0'),
(199, '5044-1193-CS Form 100_Revised September  2016-1.jpg', '196', '5674-1120-NMIS Wallpaper V02.png', '0', '0'),
(200, '2882-1193-CS Form 100_Revised September  2016-1.jpg', '197', '9304-1120-NMIS Wallpaper V02.png', '0', '0'),
(201, '7331-1048-download.jpg', '198', '6461-1193-CS Form 100_Revised September  2016-1.jpg', '0', '0'),
(202, '6967-1048-download.jpg', '199', '5636-1193-CS Form 100_Revised September  2016-1.jpg', '0', '0'),
(203, '0', '200', '9329-1006-288652375_325356553129414_5647759260851286114_n.jpg', '0', '0'),
(204, '3110-shipping_permit.jpg', '201', '3906-veterinary.jpg', '0', '0'),
(205, '0', '202', '1345-', '0', '0'),
(206, '0', '203', '9258-', '0', '0'),
(207, '0', '204', '7293-DSC01556 (1).jpg', '0', '0'),
(208, '0', '205', '5759-117.jpg', '0', '0');

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
(194, 'dsads', '11/24/2022 04:29:00am', 'Chicken', 'PDP', 'Josephina', 'Alcroz', '22-11-24-1', '543', 'CALABARZON', 'Cavite', 'Mendez', '', '100', '250', '0', '0', '0', '0', 'wddsa', 'sdd', '100', '250.00', '0', '1', '11/23/2022', '04:29:00am', '2', '78', 'XYZ Farm', 'Backyard', '0', '0', '1'),
(201, 'dsads', '11/24/2022 11:39:06am', 'Hog', 'SLH', 'Josephina', 'Kate', '22-11-24-1', '42343', 'CALABARZON', 'Cavite', 'Naic', '', '100', '7000', '0', '0', '0', '0', '0', '0', '100', '7000.00', '0', '1', '11/24/2022', '11:39:06am', '2', '79', 'XYZ Farm', 'Commercial', '0', '0', '1'),
(202, 'dsads', '11/25/2022 03:38:10pm', 'Chicken', 'PDP', 'Sfsd', 'Fsdf', '22-11-25-1', '42', 'CALABARZON', 'Quezon', 'Gumaca', '', '20', '20', '0', '0', '0', '0', 'wddsa', 'sdd', '20', '20.00', '0', '0', '11/25/2022', '03:38:10pm', '0', '78', 'sdfd', 'Backyard', '0', '0', '0'),
(203, 'dsads', '11/25/2022 03:38:31pm', 'Chicken', 'PDP', 'Sfsd', 'Fsdf', '22-11-25-1', '42', 'CALABARZON', 'Quezon', 'Gumaca', '', '20', '20', '0', '0', '0', '0', 'wddsa', 'sdd', '20', '20.00', '0', '0', '11/25/2022', '03:38:31pm', '0', '78', 'sdfd', 'Backyard', '0', '0', '0'),
(204, 'dsads', '11/25/2022 03:44:00pm', 'Chicken', 'PDP', 'Sa', 'Dasd', '22-11-25-3', '42', 'CALABARZON', 'Laguna', 'Mabitac', '', '2', '2', '2', '2', '2', '2', 'wddsa', 'sdd', '6', '6.00', '0', '0', '11/25/2022', '03:44:00pm', '0', '78', 'das', 'Backyard', '0', '0', '0'),
(205, 'dsads', '12/02/2022 09:51:36am', 'Chicken', 'PDP', 'Dfgf', 'Gdfg', '22-12-02-1', '42', 'CALABARZON', '', '', '', '514', '50', '50', '50', '0', '0', 'wddsa', 'sdd', '564', '100.00', '0', '3', '12/02/2022', '09:51:36am', '0', '78', 'Mr. Max Cabahug', 'Backyard', '0', 'Please', '0');

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
(748, '205', '11/24/2022', '578'),
(749, '208', '11/24/2022', '281'),
(750, '89', '11/24/2022', '579'),
(751, '145', '11/24/2022', '580'),
(752, '196', '11/24/2022', '282'),
(753, '196', '11/24/2022', '283');

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
  `disease_judgement` varchar(255) NOT NULL DEFAULT 'Null',
  `disease_classification` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease_tbl`
--

INSERT INTO `disease_tbl` (`d_id`, `disease_code`, `disease_description`, `disease_level`, `disease_status`, `disease_type`, `disease_category`, `disease_date`, `disease_time`, `disease_notifiable`, `disease_delete_status`, `disease_kind_of_meat`, `disease_species`, `disease_judgement`, `disease_classification`) VALUES
(89, 'R001', 'African Swine Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:19:43am', '0', 0, 'Suspect', 'Hog', 'Null', '0'),
(90, 'R002', 'Foot and Mouth Disease', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:20:05am', '0', 0, 'Suspect', 'Hog', 'Null', '0'),
(91, 'R004', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:21:41am', '0', 0, 'Suspect', 'Hog', 'Null', '0'),
(92, 'R004', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:24:14am', '0', 0, 'Suspect', 'Cattle', 'Null', '0'),
(93, 'R004', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:24:42am', '0', 0, 'Suspect', 'Sheep', 'Null', '0'),
(94, 'R004', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:24:59am', '0', 0, 'Suspect', 'Goat', 'Null', '0'),
(95, 'ROO4', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:25:22am', '0', 0, 'Suspect', 'Horse', 'Null', '0'),
(96, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:27:48am', '1', 0, 'Suspect', 'Hog', 'Null', '0'),
(97, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:30:54am', '1', 0, 'Suspect', 'Cattle', 'Null', '0'),
(98, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:31:31am', '1', 0, 'Suspect', 'Carabao', 'Null', '0'),
(99, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:31:59am', '1', 0, 'Suspect', 'Horse', 'Null', '0'),
(100, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:32:19am', '1', 0, 'Suspect', 'Goat', 'Null', '0'),
(101, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:32:33am', '1', 0, 'Suspect', 'Cattle', 'Null', '0'),
(102, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:32:58am', '1', 0, 'Suspect', 'Rabbit', 'Null', '0'),
(103, 'C003', 'Advanced pregnancy', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:33:22am', '1', 0, 'Rejected', 'Cattle', 'Null', '0'),
(104, 'C004', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:37:47am', '1', 0, 'Suspect', 'Hog', 'Null', '0'),
(105, 'C004', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:38:39am', '1', 0, 'Suspect', 'Cattle', 'Null', '0'),
(106, 'C004', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:39:06am', '1', 0, 'Suspect', 'Carabao', 'Null', '0'),
(107, 'C004', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:39:53am', '1', 0, 'Suspect', 'Horse', 'Null', '0'),
(108, 'C004', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:40:10am', '1', 0, 'Suspect', 'Goat', 'Null', '0'),
(109, 'C004', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:41:01am', '1', 0, 'Suspect', 'Sheep', 'Null', '0'),
(110, 'C004', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:41:34am', '1', 0, 'Suspect', 'Rabbit', 'Null', '0'),
(111, 'C006', 'Bruise', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:42:12am', '1', 0, 'Suspect', 'Hog', 'Null', '0'),
(112, 'C006', 'Bruise', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:42:26am', '1', 0, 'Suspect', 'Cattle', 'Null', '0'),
(113, 'C006', 'Bruise', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:42:51am', '1', 0, 'Suspect', 'Carabao', 'Null', '0'),
(114, 'C006', 'Bruise', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:43:15am', '1', 0, 'Suspect', 'Horse', 'Null', '0'),
(115, 'C006', 'Bruise', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:43:36am', '1', 0, 'Suspect', 'Goat', 'Null', '0'),
(116, 'C006', 'Bruise', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:43:52am', '1', 0, 'Suspect', 'Sheep', 'Null', '0'),
(117, 'C006', 'Bruise', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:44:14am', '1', 0, 'Suspect', 'Rabbit', 'Null', '0'),
(118, 'C009', 'Dead/Dying', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:44:53am', '1', 0, 'Condemned', 'Hog', 'Null', '0'),
(119, 'C009', 'Dead/Dying', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:45:13am', '1', 0, 'Condemned', 'Cattle', 'Null', '0'),
(120, 'C009', 'Dead/Dying', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:45:50am', '1', 0, 'Condemned', 'Carabao', 'Null', '0'),
(121, 'C009', 'Dead/Dying', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:46:12am', '1', 0, 'Condemned', 'Horse', 'Null', '0'),
(122, 'C009', 'Dead/Dying', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:46:53am', '1', 0, 'Condemned', 'Goat', 'Null', '0'),
(123, 'C009', 'Dead/Dying', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:47:14am', '1', 0, 'Condemned', 'Sheep', 'Null', '0'),
(124, 'C009', 'Dead/Dying', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:48:49am', '1', 0, 'Condemned', 'Crocodile', 'Null', '0'),
(125, 'C009', 'Dead/Dying', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:49:59am', '1', 0, 'Condemned', 'Rabbit', 'Null', '0'),
(126, 'C010', 'Downer', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:50:33am', '1', 0, 'Suspect', 'Cattle', 'Null', '0'),
(127, 'C010', 'Downer', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:53:01am', '1', 0, 'Suspect', 'Cattle', 'Null', '0'),
(128, 'C010', 'Downer', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:54:19am', '1', 0, 'Suspect', 'Carabao', 'Null', '0'),
(129, 'C010', 'Downer', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:55:23am', '1', 0, 'Suspect', 'Cattle', 'Null', '0'),
(130, 'C010', 'Downer', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:55:54am', '1', 0, 'Suspect', 'Horse', 'Null', '0'),
(131, 'C010', 'Downer', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:56:46am', '1', 0, 'Suspect', 'Goat', 'Null', '0'),
(132, 'C010', 'Downer', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:57:40am', '1', 0, 'Suspect', 'Sheep', 'Null', '0'),
(133, 'C010', 'Downer', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:58:08am', '1', 0, 'Suspect', 'Rabbit', 'Null', '0'),
(134, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:58:37am', '1', 0, 'Condemned', 'Hog', 'Null', '0'),
(135, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:59:00am', '1', 0, 'Condemned', 'Cattle', 'Null', '0'),
(136, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:59:33am', '1', 0, 'Condemned', 'Carabao', 'Null', '0'),
(137, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:59:54am', '1', 0, 'Condemned', 'Horse', 'Null', '0'),
(138, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:00:28am', '1', 0, 'Condemned', 'Goat', 'Null', '0'),
(139, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:00:48am', '1', 0, 'Condemned', 'Goat', 'Null', '0'),
(140, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:09:11am', '1', 0, 'Condemned', 'Sheep', 'Null', '0'),
(141, 'C010', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:12:43am', '1', 0, 'Condemned', 'Rabbit', 'Null', '0'),
(143, 'C012', 'Flooding', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:14:32am', '1', 0, 'Suspect', 'Cattle', 'Null', '0'),
(144, 'C012', 'Flooding', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:15:13am', '1', 0, 'Suspect', 'Carabao', 'Null', '0'),
(145, 'C013', 'Generalized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:16:20am', '1', 0, 'Condemned', 'Hog', 'Null', '0'),
(146, 'C013', 'Generalized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:16:38am', '1', 0, 'Condemned', 'Cattle', 'Null', '0'),
(147, 'C013', 'Generalized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:16:55am', '1', 0, 'Condemned', 'Carabao', 'Null', '0'),
(148, 'C013', 'Generalized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:17:20am', '1', 0, 'Condemned', 'Horse', 'Null', '0'),
(149, 'C013', 'Generalized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:34:56am', '1', 0, 'Condemned', 'Goat', 'Null', '0'),
(150, 'C013', 'Generalized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:37:22am', '1', 0, 'Condemned', 'Sheep', 'Null', '0'),
(151, 'C013', 'Generalized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:24:20pm', '1', 0, 'Condemned', 'Cattle', 'Null', '0'),
(152, 'C014', 'Heat stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:25:54pm', '1', 0, 'Suspect', 'Hog', 'Null', '0'),
(153, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:28:22pm', '1', 0, 'Suspect', 'Hog', 'Null', '0'),
(154, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:29:06pm', '1', 0, 'Suspect', 'Cattle', 'Null', '0'),
(155, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:29:21pm', '1', 0, 'Suspect', 'Carabao', 'Null', '0'),
(156, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:29:37pm', '1', 0, 'Suspect', 'Horse', 'Null', '0'),
(157, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:29:51pm', '1', 0, 'Suspect', 'Goat', 'Null', '0'),
(158, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:30:46pm', '1', 0, 'Suspect', 'Sheep', 'Null', '0'),
(159, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:31:05pm', '1', 0, 'Suspect', 'Rabbit', 'Null', '0'),
(160, 'C015', 'Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:31:50pm', '1', 0, 'Suspect', 'Hog', 'Null', '0'),
(161, 'C015', 'Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:32:16pm', '1', 0, 'Suspect', 'Cattle', 'Null', '0'),
(162, 'C015', 'Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:32:42pm', '1', 0, 'Suspect', 'Carabao', 'Null', '0'),
(163, 'C015', 'Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:33:26pm', '1', 0, 'Suspect', 'Horse', 'Null', '0'),
(164, 'C015', 'Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:33:57pm', '1', 0, 'Suspect', 'Goat', 'Null', '0'),
(165, 'C015', 'Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:34:13pm', '1', 0, 'Suspect', 'Sheep', 'Null', '0'),
(166, 'C015', 'Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:34:34pm', '1', 0, 'Suspect', 'Rabbit', 'Null', '0'),
(167, 'C018', 'Localized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:35:24pm', '1', 0, 'Suspect', 'Hog', 'Null', '0'),
(168, 'C018', 'Localized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:35:38pm', '1', 0, 'Suspect', 'Cattle', 'Null', '0'),
(169, 'C018', 'Localized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:35:50pm', '1', 0, 'Suspect', 'Carabao', 'Null', '0'),
(170, 'C018', 'Localized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:36:31pm', '1', 0, 'Suspect', 'Goat', 'Null', '0'),
(171, 'C018', 'Localized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:36:43pm', '1', 0, 'Suspect', 'Horse', 'Null', '0'),
(172, 'C018', 'Localized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:40:34pm', '1', 0, 'Suspect', 'Goat', 'Null', '0'),
(173, 'C018', 'Localized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:41:06pm', '1', 0, 'Suspect', 'Sheep', 'Null', '0'),
(174, 'C018', 'Localized edema', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:41:34pm', '1', 0, 'Suspect', 'Rabbit', 'Null', '0'),
(175, 'C025', 'Recent Castration', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:41:57pm', '1', 0, 'Suspect', 'Hog', 'Null', '0'),
(176, 'C025', 'Recent Castration', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:44:21pm', '1', 0, 'Suspect', 'Cattle', 'Null', '0'),
(177, 'C025', 'Recent Castration', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:44:42pm', '1', 0, 'Suspect', 'Carabao', 'Null', '0'),
(178, 'C025', 'Recent Castration', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:45:17pm', '1', 0, 'Suspect', 'Horse', 'Null', '0'),
(179, 'C025', 'Recent Castration', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:46:34pm', '1', 0, 'Suspect', 'Goat', 'Null', '0'),
(180, 'C025', 'Recent Castration', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:46:51pm', '1', 0, 'Suspect', 'Sheep', 'Null', '0'),
(181, 'C027', 'Wounds', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:47:46pm', '1', 0, 'Suspect', 'Hog', 'Null', '0'),
(182, 'C027', 'Wounds', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:48:13pm', '1', 0, 'Suspect', 'Cattle', 'Null', '0'),
(183, 'C027', 'Wounds', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:48:29pm', '1', 0, 'Suspect', 'Carabao', 'Null', '0'),
(184, 'C027', 'Wounds', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:49:00pm', '1', 0, 'Suspect', 'Horse', 'Null', '0'),
(185, 'C027', 'Wounds', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:49:20pm', '1', 0, 'Suspect', 'Goat', 'Null', '0'),
(186, 'C027', 'Wounds', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:49:43pm', '1', 0, 'Suspect', 'Sheep', 'Null', '0'),
(187, 'C027', 'Wounds', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:50:13pm', '1', 0, 'Suspect', 'Crocodile', 'Null', '0'),
(188, 'C027', 'Wounds', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:50:31pm', '1', 0, 'Suspect', 'Rabbit', 'Null', '0'),
(189, 'C001', 'Abnormal color/ discoloration', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:51:55pm', '1', 0, 'Liver', 'Hog', 'Condemned', '0'),
(190, 'C001', 'Abnormal color/ discoloration', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:52:38pm', '1', 0, 'Liver', 'Cattle', 'Condemned', '0'),
(191, 'C001', 'Abnormal color/ discoloration', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:53:24pm', '1', 0, 'Liver', 'Carabao', 'Condemned', '0'),
(192, 'C001', 'Abnormal color/ discoloration', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:53:45pm', '1', 0, 'Liver', 'Horse', 'Condemned', '0'),
(193, 'C001', 'Abnormal color/ discoloration', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:54:11pm', '1', 0, 'Liver', 'Goat', 'Condemned', '0'),
(194, 'C001', 'Abnormal color/ discoloration', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:54:30pm', '1', 0, 'Liver', 'Sheep', 'Condemned', '0'),
(195, 'C001', 'Abnormal color/ discoloration', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:54:53pm', '1', 0, 'Liver', 'Rabbit', 'Condemned', '0'),
(196, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:55:42pm', '1', 0, 'Carcass', 'Hog', 'Condemned', '1'),
(197, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:56:24pm', '1', 0, 'Lungs', 'Hog', 'Condemned', '0'),
(198, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:57:03pm', '1', 0, 'Liver', 'Hog', 'Condemned', '0'),
(199, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '12:58:10pm', '1', 0, 'Heart', 'Hog', 'Condemned', '0'),
(200, 'C002', 'Abscess', 'Critical', 'Active', 'SLH', 'Postmortem', '07/01/2022', '01:02:07pm', '1', 0, 'Intestines', 'Hog', 'Condemned', '0'),
(201, 'C021', 'Parasitism-Liver fluke', 'Critical', 'Active', 'SLH', 'Postmortem', '07/03/2022', '08:14:22pm', '1', 0, 'Liver', 'Cattle', 'Condemned', '0'),
(202, 'C022', 'Parasitism-Milk spots', 'Critical', 'Active', 'SLH', 'Postmortem', '07/03/2022', '08:47:14pm', '1', 0, 'Liver', 'Hog', 'Condemned', '0'),
(203, 'C023', 'Pericarditis', 'Critical', 'Active', 'SLH', 'Postmortem', '07/03/2022', '08:48:31pm', '1', 0, 'Heart', 'Hog', 'Condemned', '0'),
(204, 'C024', 'Pneumonia', 'Critical', 'Active', 'SLH', 'Postmortem', '07/03/2022', '08:52:07pm', '1', 0, 'Lungs', 'Hog', 'Condemned', '0'),
(205, 'R003', 'Highly Pathogenic Avian Influenza', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:06:42pm', '0', 0, 'Suspect', 'Chicken', 'Null', '0'),
(206, 'C002', 'Abscess', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '09:12:02pm', '1', 0, 'Liver', 'Chicken', 'Condemned', '0'),
(207, 'C005', 'Breast blisters', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:14:19pm', '1', 0, 'Suspect', 'Chicken', 'Null', '1'),
(208, 'C005', 'Breast blisters', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '09:15:31pm', '1', 0, 'Carcass', 'Chicken', 'Condemned', '1'),
(209, 'C006', 'Bruise', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:42:36pm', '1', 0, 'Suspect', 'Chicken', 'Null', '0'),
(210, 'C006', 'Bruise', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '09:42:54pm', '1', 0, 'Carcass', 'Chicken', 'Condemned', '0'),
(211, 'C007', 'Bumble foot', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '09:43:28pm', '1', 0, 'Feet', 'Chicken', 'Condemned', '0'),
(212, 'C009', 'Dead/Dying', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:45:28pm', '1', 0, 'Suspect', 'Chicken', 'Null', '0'),
(213, 'C011', 'Emaciated', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:47:33pm', '1', 0, 'Suspect', 'Chicken', 'Null', '0'),
(214, 'C011', 'Emaciated', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '09:48:04pm', '1', 0, 'Carcass', 'Chicken', 'Condemned', '0'),
(215, 'C013', 'Generalized edema', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '09:48:48pm', '1', 0, 'Carcass', 'Chicken', 'Condemned', '0'),
(216, 'C013', 'Generalized edema', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:50:20pm', '1', 0, 'Suspect', 'Chicken', 'Null', '0'),
(217, 'C013', 'Generalized edema', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:50:22pm', '1', 0, 'Suspect', 'Chicken', 'Null', '0'),
(218, 'C014', 'Heat stress', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:51:05pm', '1', 0, 'Suspect', 'Chicken', 'Null', '0'),
(219, 'C015', 'Hematoma', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:51:47pm', '1', 0, 'Suspect', 'Chicken', 'Null', '0'),
(220, 'C015', 'Hematoma', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:51:55pm', '1', 0, 'Suspect', 'Chicken', 'Null', '0'),
(221, 'C001', 'Abnormal color or discoloration', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '10:15:46pm', '1', 0, 'Liver', 'Chicken', 'Condemned', '0'),
(222, 'C016', 'Hepatitis', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '10:18:02pm', '1', 0, 'Liver', 'Chicken', 'Condemned', '0'),
(223, 'C017', 'Incomplete bleeding', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '10:18:53pm', '1', 0, 'Carcass', 'Chicken', 'Condemned', '0'),
(224, 'C026', 'Synovitis', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '10:20:45pm', '1', 0, 'Feet', 'Chicken', 'Condemned', '0'),
(225, 'C010', 'Downer', 'Critical', 'Active', 'SLH', 'Antemortem', '07/04/2022', '09:20:12am', '1', 0, 'Suspect', 'Ostrich', 'Null', '0'),
(226, 'C004', 'Arthritis', 'Critical', 'Active', 'SLH', 'Postmortem', '07/04/2022', '09:22:32am', '1', 0, 'Feet', 'Ostrich', 'Suspect', '0'),
(227, 'C028', 'Parasitism-Tapeworms', 'Critical', 'Active', 'PDP', 'Postmortem', '07/06/2022', '01:22:19pm', '1', 0, 'Intestines', 'Chicken', 'Condemned', '0'),
(228, 'C029', 'Parasitism-Ascarids', 'Critical', 'Active', 'PDP', 'Postmortem', '07/06/2022', '01:25:44pm', '1', 0, 'Intestines', 'Chicken', 'Condemned', '0');

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
  `region_code` varchar(255) NOT NULL DEFAULT '0',
  `remarks` varchar(255) NOT NULL DEFAULT 'null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_tbl`
--

INSERT INTO `employee_tbl` (`employee_id`, `employee_code`, `firstname`, `lastname`, `email`, `username`, `password`, `region`, `province`, `city`, `barangay`, `address`, `role`, `account_status`, `contact`, `assign`, `account_activation`, `region_code`, `remarks`) VALUES
(1, '54335', 'Ma. Elaine Joy ', 'Villareal', 'Juan@gmail.com', 'posmd', '1234', 'NCR', '', '', '', '', 0, 'Active', '', '0', 1, '13', 'null'),
(76, '53243', 'Cardo', 'Dela Pena', 'jufreyninsbayog@gmail.com', 'posms_rtoc4a', '12345', 'CALABARZON', 'null', 'null', 'null', 'null', 1, 'Active', '9111111111', '0', 1, '040000000', 'null'),
(77, '432434', 'Alvin', 'Supan', 'jufreyninsbayog@gmail.com', 'mio_rtoc4a', '12345', 'CALABARZON', 'null', 'null', 'null', 'null', 2, 'Active', '9111111111', '0', 1, '040000000', 'null'),
(78, '23133', 'Steph', 'Lazon', 'jufreyninsbayog@gmail.com', 'posms_rtoc4a1', '123', 'CALABARZON', 'null', 'null', 'null', 'null', 1, 'Active', '9123456789', '0', 1, '040000000', 'null'),
(79, '32432', 'Juan ', 'Dela Pen', 'jufreyninsbayog@gmail.com', 'test_posms', '123', 'CALABARZON', 'null', 'null', 'null', 'null', 1, 'Active', '9123456789', '0', 1, '030000000', 'rest'),
(80, '134123', 'loki', 'barbon', 'jufreyninsbayog@gmail.com', 'test_mio', '123', 'CALABARZON', 'null', 'null', 'null', 'null', 2, 'Disapproved', '91111111112', '0', 1, '020000000', 'sdfdsdfdfsdf'),
(81, 't3423', 'test', 'asdf', 'jufreyninsbayog@gmail.com', 'posms_1', '123', 'CALABARZON', 'null', 'null', 'null', 'null', 1, 'Pending', '9345345353', '0', 0, '040000000', 'null'),
(83, '1234', 'Juan', 'Dela Cruz', 'jufreyninsbayog@gmail.com', 'posms', '12345', 'CALABARZON', 'null', 'null', 'null', 'null', 1, 'Active', '9652100539', '0', 1, '040000000', 'null'),
(84, '1235', 'Sophia ', 'Dela Pena', 'jufreyninsbayog@gmail.com', 'mio', '12345', 'CALABARZON', 'null', 'null', 'null', 'null', 2, 'Active', '9652100539', '0', 1, '040000000', 'null');

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
(205, 194, '97', '242.5', 'Chicken', '11/24/2022', '04:29:00am', 78, 'CALABARZON', 'Cavite', 'Mendez'),
(212, 201, '95', '6650', 'Hog', '11/24/2022', '11:39:06am', 79, 'CALABARZON', 'Cavite', 'Naic'),
(213, 202, '0', '0', 'Chicken', '11/25/2022', '03:38:10pm', 78, 'CALABARZON', 'Quezon', 'Gumaca'),
(214, 203, '0', '0', 'Chicken', '11/25/2022', '03:38:31pm', 78, 'CALABARZON', 'Quezon', 'Gumaca'),
(215, 204, '0', '0', 'Chicken', '11/25/2022', '03:44:00pm', 78, 'CALABARZON', 'Laguna', 'Mabitac'),
(216, 205, '0', '0', 'Chicken', '12/02/2022', '09:51:36am', 78, 'CALABARZON', '', '');

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
(209, 194, '96', '239.5', '11/24/2022', '04:29:00am', 'Chicken', 'Philippines', 'CALABARZON', '042100000', 'Mendez', 78),
(210, 195, '0', '0', '11/24/2022', '04:40:50am', 'Chicken', 'Philippines', 'CALABARZON', '042100000', 'Mendez', 78),
(211, 196, '0', '0', '11/24/2022', '04:42:14am', 'Chicken', 'Philippines', 'CALABARZON', '043400000', 'Alaminos', 78),
(212, 197, '0', '0', '11/24/2022', '04:45:54am', 'Chicken', 'Philippines', 'CALABARZON', '043400000', 'Alaminos', 78),
(213, 198, '0', '0', '11/24/2022', '04:46:27am', 'Chicken', 'Philippines', 'CALABARZON', '035400000', 'Guagua', 78),
(214, 199, '0', '0', '11/24/2022', '04:49:20am', 'Chicken', 'Philippines', 'CALABARZON', '035400000', 'Guagua', 78),
(215, 200, '0', '0', '11/24/2022', '04:56:13am', 'Chicken', 'Philippines', 'CALABARZON', 'Quezon', 'Jomalig', 78),
(216, 201, '85', '5300', '11/24/2022', '11:39:06am', 'Hog', 'Philippines', 'CALABARZON', 'Cavite', 'Naic', 79),
(217, 202, '0', '0', '11/25/2022', '03:38:10pm', 'Chicken', 'Philippines', 'CALABARZON', 'Quezon', 'Gumaca', 78),
(218, 203, '0', '0', '11/25/2022', '03:38:31pm', 'Chicken', 'Philippines', 'CALABARZON', 'Quezon', 'Gumaca', 78),
(219, 204, '0', '0', '11/25/2022', '03:44:00pm', 'Chicken', 'Philippines', 'CALABARZON', 'Laguna', 'Mabitac', 78),
(220, 205, '0', '0', '12/02/2022', '09:51:36am', 'Chicken', 'Philippines', 'CALABARZON', '', '', 78);

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
(78, 'sadsas', 'Mock Dressing Plant', 'PDP', 'AAA', 'PDP-56731-AAA', 'CALABARZON', 'Cavite', 'Noveleta', 'San Juan II', 'Cavite St.', 'Approved', '11/24/2022', '2023-03-23', 'no', 'me_mdp', '12345', 'test', '9111111111', 'jufreyninsbayog@gmail.com', '0', '1', 'Juan Dela Cruz', '040000000'),
(79, 'sadsas', 'ABC Slaughterhouse', 'SLH', 'AAA', 'SLH-3442-AAA', 'CALABARZON', 'Cavite', 'Mendez', 'Asis II', 'Cavite St.', 'Approved', '11/24/2022', '2023-11-24', 'no', 'me_abc', '123', 'test', '9123456789', 'jufreyninsbayog@gmail.com', '0', '1', 'Juan Dela Cruz', '040000000'),
(80, 'sadsas', 'ABC Slaughterhouse 1', 'PDP', 'AAA', 'PDP-58812-AAA', 'CALABARZON', 'Cavite', 'Indang', 'Alulod', 'Cavite st.', 'Approved', '12/12/2022', '2023-12-13', 'no', 'abc_slaughterhouse', '12345', 'test', '9652100539', 'jufreyninsbayog@gmail.com', '0', '1', 'Ronald Torcio', '040000000');

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
(281, 194, 'Chicken', 1, 3, '208', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '11/24/2022', '0', 78, 'CALABARZON', 'Cavite', 'Mendez', '', '77', '1'),
(282, 201, 'Hog', 5, 350, '196', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '11/24/2022', '0', 79, 'CALABARZON', 'Cavite', 'Naic', 'Naic', '80', '1'),
(283, 201, 'Hog', 5, 350, '196', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', '11/24/2022', '0', 79, 'CALABARZON', 'Cavite', 'Naic', '', '80', '0');

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
  MODIFY `am_table` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=581;

--
-- AUTO_INCREMENT for table `assigment_tbl`
--
ALTER TABLE `assigment_tbl`
  MODIFY `assign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `attachment_tbl`
--
ALTER TABLE `attachment_tbl`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `ddr_table`
--
ALTER TABLE `ddr_table`
  MODIFY `drr_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `disease_report_tbl`
--
ALTER TABLE `disease_report_tbl`
  MODIFY `dr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=754;

--
-- AUTO_INCREMENT for table `disease_tbl`
--
ALTER TABLE `disease_tbl`
  MODIFY `d_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=490;

--
-- AUTO_INCREMENT for table `employee_tbl`
--
ALTER TABLE `employee_tbl`
  MODIFY `employee_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `fhc_table`
--
ALTER TABLE `fhc_table`
  MODIFY `fhc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `fit_human_consumption`
--
ALTER TABLE `fit_human_consumption`
  MODIFY `fit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `meat_establishment_daily_tbl`
--
ALTER TABLE `meat_establishment_daily_tbl`
  MODIFY `med_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meat_establishment_tbl`
--
ALTER TABLE `meat_establishment_tbl`
  MODIFY `me_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `pm_table`
--
ALTER TABLE `pm_table`
  MODIFY `pm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `suspected_tbl`
--
ALTER TABLE `suspected_tbl`
  MODIFY `suspected_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
