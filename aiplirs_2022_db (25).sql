-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2023 at 03:39 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

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
(605, '223', '0', '0', '0', '0', '0', '', '0', '0', '', '1', '1', '942', '07/03/2023', '0', 105, 'Chicken', 'Central Luzon', 'Nueva Ecija', 'Science City of Muñoz', 'Mangandingay', '110', '1', '0'),
(606, '223', '1', '1', '1', '1', '0', '205', '0', '0', '', '0', '0', '', '07/03/2023', '03:46:49pm', 105, 'Chicken', 'Central Luzon', 'Nueva Ecija', 'Science City of Muñoz', 'Mangandingay', '110', '1', '0');

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
(37, '105', '07/03/2023', '110', 'Central Luzon', 'Active', 'Null');

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
(1, '3680-week 22.pdf', '223', '5773-week 23.pdf', '0', '0'),
(2, '3680-week 22.pdf', '224', '5773-week 23.pdf', '0', '0'),
(3, '3680-week 22.pdf', '225', '5773-week 23.pdf', '0', '0'),
(4, '3680-week 22.pdf', '226', '5773-week 23.pdf', '0', '0'),
(5, '7821-nmis wallpaper blue.png', '227', '8956-NMIS Wallpaper V02.png', '0', '0');

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
(222, 'dsads', '06/13/2023 01:32:56pm', 'Chicken', 'PDP', 'Fsdf', 'Sdfsd', '23-06-13-1', '3432', 'Central Luzon', 'Nueva Ecija', 'Llanera', 'San Francisco', '432', '324', '3432', '432', '342', '4234', 'wddsa', 'sdd', '4206', '1179.00', '0', '1', '06/13/2023', '01:32:56pm', '2', '104', '434', 'Backyard', '0', '0', '0'),
(223, 'dsads', '07/03/2023 03:38:37pm', 'Chicken', 'PDP', 'Juan', ' Dealer 1', '23-07-03-1', '6', 'Central Luzon', 'Nueva Ecija', 'Science City of Muñoz', 'Mangandingay', '100', '1000', '0', '0', '0', '0', 'wddsa', 'sdd', '100', '1000.00', '0', '1', '07/03/2023', '03:38:37pm', '2', '105', 'Mr. Max Cabahug', 'Backyard', '0', '0', '1'),
(224, 'dsads', '07/03/2023 04:12:08pm', 'Chicken', 'PDP', 'Sdfa', 'Sdf', '23-07-03-2', 'sdf', 'Central Luzon', 'Bulacan', 'Pandi', 'Manatal', '100', '1000', '0', '0', '0', '0', 'wddsa', 'sdd', '100', '1000.00', '0', '1', '07/03/2023', '04:12:08pm', '2', '105', 'Mr. Max Cabahug', 'Commercial', '0', '0', '0'),
(225, 'dsads', '07/03/2023 05:18:12pm', 'Chicken', 'PDP', 'D', 'Sda', '23-07-03-3', '0', 'Central Luzon', 'Bulacan', 'Pandi', 'Poblacion', '100', '1000', '0', '0', '0', '0', 'wddsa', 'sdd', '100', '1000.00', '0', '1', '07/03/2023', '05:18:12pm', '2', '105', 'Mr. Max Cabahug', 'Backyard', '0', '0', '0'),
(226, 'dsads', '07/04/2023 03:20:49pm', 'Chicken', 'PDP', 'Tewt', 'Yet', '23-07-04-1', '0', 'Central Luzon', 'Ilocos Sur', 'Nagbukel', 'Mapisi', '100', '1000', '0', '0', '0', '0', 'wddsa', 'sdd', '100', '1000.00', '0', '1', '07/04/2023', '03:20:49pm', '2', '105', 'test', 'Commercial', '0', '0', '1'),
(227, 'dsads', '07/05/2023 07:54:20am', 'Chicken', 'PDP', 'Test', 'Tse', '23-07-05-1', '0', 'Central Luzon', 'Bataan', 'Morong', 'Mabayo', '100', '1000', '0', '0', '0', '0', 'wddsa', 'sdd', '100', '1000.00', '0', '1', '07/05/2023', '07:54:20am', '1', '105', 'test', 'Backyard', '0', '0', '0');

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
(780, '118', '06/02/2023', '602'),
(781, '197', '06/02/2023', '286'),
(782, '118', '06/13/2023', '603'),
(783, '942', '06/13/2023', '604'),
(784, '942', '07/03/2023', '605'),
(785, '205', '07/03/2023', '606'),
(793, '208', '07/05/2023', '293'),
(794, '214', '07/05/2023', '294'),
(798, '208', '07/05/2023', '298');

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
(134, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:58:37am', '1', 0, 'Condemned', 'Hog', 'Null', '0'),
(135, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:59:00am', '1', 0, 'Condemned', 'Cattle', 'Null', '0'),
(136, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:59:33am', '1', 0, 'Condemned', 'Carabao', 'Null', '0'),
(137, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '09:59:54am', '1', 0, 'Condemned', 'Horse', 'Null', '0'),
(138, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:00:28am', '1', 0, 'Condemned', 'Goat', 'Null', '0'),
(139, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:00:48am', '1', 0, 'Condemned', 'Goat', 'Null', '0'),
(140, 'C011', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:09:11am', '1', 0, 'Condemned', 'Sheep', 'Null', '0'),
(141, 'C010', 'Emaciated', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '10:12:43am', '1', 0, 'Condemned', 'Rabbit', 'Null', '0'),
(153, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:28:22pm', '1', 0, 'Suspect', 'Hog', 'Null', '0'),
(154, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:29:06pm', '1', 0, 'Suspect', 'Cattle', 'Null', '0'),
(155, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:29:21pm', '1', 0, 'Suspect', 'Carabao', 'Null', '0'),
(156, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:29:37pm', '1', 0, 'Suspect', 'Horse', 'Null', '0'),
(157, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:29:51pm', '1', 0, 'Suspect', 'Goat', 'Null', '0'),
(158, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:30:46pm', '1', 0, 'Suspect', 'Sheep', 'Null', '0'),
(159, 'C014', 'Heat stress', 'Critical', 'Active', 'SLH', 'Antemortem', '07/01/2022', '12:31:05pm', '1', 0, 'Suspect', 'Rabbit', 'Null', '0'),
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
(205, 'AM08', 'Highly Pathogenic Avian Influenza', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:06:42pm', '0', 0, 'Suspect', 'Chicken', 'Null', '0'),
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
(217, 'AM03', 'Anasarca (Generalized edema)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:50:22pm', '1', 0, 'Suspect', 'Chicken', 'Null', '0'),
(218, 'C014', 'Heat stress', 'Critical', 'Active', 'PDP', 'Antemortem', '07/03/2022', '09:51:05pm', '1', 0, 'Suspect', 'Chicken', 'Null', '0'),
(221, 'C001', 'Abnormal color or discoloration', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '10:15:46pm', '1', 0, 'Liver', 'Chicken', 'Condemned', '0'),
(222, 'C016', 'Hepatitis', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '10:18:02pm', '1', 0, 'Liver', 'Chicken', 'Condemned', '0'),
(223, 'C017', 'Incomplete bleeding', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '10:18:53pm', '1', 0, 'Carcass', 'Chicken', 'Condemned', '0'),
(224, 'C026', 'Synovitis', 'Critical', 'Active', 'PDP', 'Postmortem', '07/03/2022', '10:20:45pm', '1', 0, 'Feet', 'Chicken', 'Condemned', '0'),
(226, 'C004', 'Arthritis', 'Critical', 'Active', 'SLH', 'Postmortem', '07/04/2022', '09:22:32am', '1', 0, 'Feet', 'Ostrich', 'Suspect', '0'),
(227, 'C028', 'Parasitism-Tapeworms', 'Critical', 'Active', 'PDP', 'Postmortem', '07/06/2022', '01:22:19pm', '1', 0, 'Intestines', 'Chicken', 'Condemned', '0'),
(228, 'C029', 'Parasitism-Ascarids', 'Critical', 'Active', 'PDP', 'Postmortem', '07/06/2022', '01:25:44pm', '1', 0, 'Intestines', 'Chicken', 'Condemned', '0'),
(492, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:44pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(493, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:44pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(494, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:44pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(495, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:44pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(496, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:44pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(497, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:44pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(498, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:44pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(499, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:44pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(500, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:44pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(501, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:47pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(502, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:47pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(503, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:47pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(504, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:47pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(505, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:47pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(506, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:47pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(507, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:47pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(508, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:47pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(509, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:47pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(510, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:49pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(511, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:49pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(512, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:49pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(513, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:49pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(514, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:49pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(515, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:49pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(516, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:49pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(517, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:49pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(518, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:04:49pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(519, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:05:39pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(520, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:05:39pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(521, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:05:39pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(522, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:05:41pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(523, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:05:41pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(524, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:05:41pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(525, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:05:43pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(526, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:05:43pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(527, 'AM01', 'Abnormal / Foul Odor', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:05:43pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(528, 'AM02', 'Aborted Fetus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:06:51pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(529, 'AM02', 'Aborted Fetus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:06:51pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(530, 'AM02', 'Aborted Fetus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:06:51pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(531, 'AM02', 'Aborted Fetus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:06:51pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(532, 'AM02', 'Aborted Fetus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:06:53pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(533, 'AM02', 'Aborted Fetus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:06:53pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(534, 'AM02', 'Aborted Fetus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:06:53pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(535, 'AM02', 'Aborted Fetus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:06:53pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(536, 'AM02', 'Aborted Fetus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:06:54pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(537, 'AM02', 'Aborted Fetus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:06:54pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(538, 'AM02', 'Aborted Fetus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:06:54pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(539, 'AM02', 'Aborted Fetus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:06:54pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(540, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:09:00pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(541, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:09:00pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(542, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:09:04pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(543, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:09:04pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(544, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:09:07pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(545, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:09:07pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(546, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:14pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(547, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:14pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(548, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:14pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(549, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:14pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(550, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:14pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(551, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:14pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(552, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:14pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(553, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:14pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(554, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:14pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(555, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:17pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(556, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:17pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(557, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:17pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(558, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:17pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(559, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:17pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(560, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:17pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(561, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:17pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(562, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:17pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(563, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:17pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(564, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:19pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(565, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:19pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(566, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:19pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(567, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:19pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(568, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:19pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(569, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:19pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(570, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:19pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(571, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:19pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(572, 'AM03', 'Anasarca (Generalized Edema)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:11:19pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(573, 'AM04', 'Anthrax', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:12:04pm', '0', 0, 'Suspect', 'Hog', 'Null', ''),
(574, 'AM04', 'Anthrax', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:12:07pm', '0', 0, 'Rejected', 'Hog', 'Null', ''),
(575, 'AM04', 'Anthrax', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:12:08pm', '0', 0, 'Condemned', 'Hog', 'Null', ''),
(576, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:01pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(577, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:01pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(578, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:01pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(579, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:01pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(580, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:01pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(581, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:01pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(582, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:01pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(583, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:01pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(584, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:01pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(585, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:03pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(586, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:03pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(587, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:03pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(588, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:03pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(589, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:03pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(590, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:03pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(591, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:03pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(592, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:03pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(593, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:03pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(594, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:08pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(595, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:08pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(596, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:08pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(597, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:08pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(598, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:08pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(599, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:08pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(600, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:08pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(601, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:08pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(602, 'AM05', 'Arthritis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:20:08pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(603, 'AM05', 'Arthritis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:20:25pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(604, 'AM05', 'Arthritis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:20:25pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(605, 'AM05', 'Arthritis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:20:25pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(606, 'AM05', 'Arthritis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:20:27pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(607, 'AM05', 'Arthritis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:20:27pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(608, 'AM05', 'Arthritis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:20:27pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(609, 'AM05', 'Arthritis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:20:29pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(610, 'AM05', 'Arthritis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:20:29pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(611, 'AM05', 'Arthritis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:20:29pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(612, 'AM06', 'African Swine Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:33:18pm', '0', 0, 'Suspect', 'Hog', 'Null', ''),
(613, 'AM06', 'African Swine Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:33:21pm', '0', 0, 'Rejected', 'Hog', 'Null', ''),
(614, 'AM06', 'African Swine Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:33:23pm', '0', 0, 'Condemned', 'Hog', 'Null', ''),
(615, 'AM07', 'Atrophic Rhinitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:34:19pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(616, 'AM07', 'Atrophic Rhinitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:34:23pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(617, 'AM07', 'Atrophic Rhinitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:34:26pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(618, 'AM08', 'Highly Pathogenic Avian Influenza', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:36:10pm', '0', 0, 'Rejected', 'Chicken', 'Null', ''),
(619, 'AM08', 'Highly Pathogenic Avian Influenza', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:36:12pm', '0', 0, 'Condemned', 'Chicken', 'Null', ''),
(620, 'AM09', 'Blackleg', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:37:28pm', '0', 0, 'Suspect', 'Cattle', 'Null', ''),
(621, 'AM09', 'Blackleg', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:37:30pm', '0', 0, 'Rejected', 'Cattle', 'Null', ''),
(622, 'AM09', 'Blackleg', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:37:31pm', '0', 0, 'Condemned', 'Cattle', 'Null', ''),
(623, 'AM10', 'Botulism', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:39:16pm', '0', 0, 'Suspect', 'Cattle', 'Null', ''),
(624, 'AM10', 'Botulism', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:39:16pm', '0', 0, 'Suspect', 'Horse', 'Null', ''),
(625, 'AM10', 'Botulism', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:39:16pm', '0', 0, 'Suspect', 'Sheep', 'Null', ''),
(626, 'AM10', 'Botulism', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:39:18pm', '0', 0, 'Rejected', 'Cattle', 'Null', ''),
(627, 'AM10', 'Botulism', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:39:18pm', '0', 0, 'Rejected', 'Horse', 'Null', ''),
(628, 'AM10', 'Botulism', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:39:18pm', '0', 0, 'Rejected', 'Sheep', 'Null', ''),
(629, 'AM10', 'Botulism', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:39:19pm', '0', 0, 'Condemned', 'Cattle', 'Null', ''),
(630, 'AM10', 'Botulism', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:39:19pm', '0', 0, 'Condemned', 'Horse', 'Null', ''),
(631, 'AM10', 'Botulism', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:39:19pm', '0', 0, 'Condemned', 'Sheep', 'Null', ''),
(632, 'AM11', 'Caprine Arthritis & Encephalitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:40:14pm', '0', 0, 'Suspect', 'Goat', 'Null', ''),
(633, 'AM11', 'Caprine Arthritis & Encephalitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:40:16pm', '0', 0, 'Rejected', 'Goat', 'Null', ''),
(634, 'AM11', 'Caprine Arthritis & Encephalitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:40:17pm', '0', 0, 'Condemned', 'Goat', 'Null', ''),
(635, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:40:59pm', '0', 0, 'Suspect', 'Hog', 'Null', ''),
(636, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:40:59pm', '0', 0, 'Suspect', 'Cattle', 'Null', ''),
(637, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:40:59pm', '0', 0, 'Suspect', 'Carabao', 'Null', ''),
(638, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:40:59pm', '0', 0, 'Suspect', 'Horse', 'Null', ''),
(639, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:40:59pm', '0', 0, 'Suspect', 'Goat', 'Null', ''),
(640, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:40:59pm', '0', 0, 'Suspect', 'Sheep', 'Null', ''),
(641, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:40:59pm', '0', 0, 'Suspect', 'Crocodile', 'Null', ''),
(642, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:40:59pm', '0', 0, 'Suspect', 'Rabbit', 'Null', ''),
(643, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:40:59pm', '0', 0, 'Suspect', 'Ostrich', 'Null', ''),
(644, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:41:01pm', '0', 0, 'Rejected', 'Hog', 'Null', ''),
(645, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:41:01pm', '0', 0, 'Rejected', 'Cattle', 'Null', ''),
(646, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:41:01pm', '0', 0, 'Rejected', 'Carabao', 'Null', ''),
(647, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:41:01pm', '0', 0, 'Rejected', 'Horse', 'Null', ''),
(648, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:41:01pm', '0', 0, 'Rejected', 'Goat', 'Null', ''),
(649, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:41:01pm', '0', 0, 'Rejected', 'Sheep', 'Null', ''),
(650, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:41:01pm', '0', 0, 'Rejected', 'Crocodile', 'Null', ''),
(651, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:41:01pm', '0', 0, 'Rejected', 'Rabbit', 'Null', ''),
(652, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:41:01pm', '0', 0, 'Rejected', 'Ostrich', 'Null', ''),
(653, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:41:02pm', '0', 0, 'Condemned', 'Hog', 'Null', ''),
(654, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:41:02pm', '0', 0, 'Condemned', 'Cattle', 'Null', ''),
(655, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:41:02pm', '0', 0, 'Condemned', 'Carabao', 'Null', ''),
(656, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:41:02pm', '0', 0, 'Condemned', 'Horse', 'Null', ''),
(657, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:41:02pm', '0', 0, 'Condemned', 'Goat', 'Null', ''),
(658, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:41:02pm', '0', 0, 'Condemned', 'Sheep', 'Null', ''),
(659, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:41:02pm', '0', 0, 'Condemned', 'Crocodile', 'Null', ''),
(660, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:41:02pm', '0', 0, 'Condemned', 'Rabbit', 'Null', ''),
(661, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:41:02pm', '0', 0, 'Condemned', 'Ostrich', 'Null', ''),
(662, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:41:41pm', '0', 0, 'Suspect', 'Chicken', 'Null', ''),
(663, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:41:41pm', '0', 0, 'Suspect', 'Duck', 'Null', ''),
(664, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:41:41pm', '0', 0, 'Suspect', 'Pigeon', 'Null', ''),
(665, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:41:42pm', '0', 0, 'Rejected', 'Chicken', 'Null', ''),
(666, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:41:42pm', '0', 0, 'Rejected', 'Duck', 'Null', ''),
(667, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:41:42pm', '0', 0, 'Rejected', 'Pigeon', 'Null', ''),
(668, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:41:44pm', '0', 0, 'Condemned', 'Chicken', 'Null', ''),
(669, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:41:44pm', '0', 0, 'Condemned', 'Duck', 'Null', ''),
(670, 'AM12', 'Chronic Respiratory Disease (CRD)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:41:44pm', '0', 0, 'Condemned', 'Pigeon', 'Null', ''),
(671, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:13pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(672, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:13pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(673, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:13pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(674, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:13pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(675, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:13pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(676, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:13pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(677, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:13pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(678, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:13pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(679, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:13pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(680, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:17pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(681, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:17pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(682, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:17pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(683, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:17pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(684, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:17pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(685, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:17pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(686, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:17pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(687, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:17pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(688, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:17pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(689, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:19pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(690, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:19pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(691, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:19pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(692, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:19pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(693, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:19pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(694, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:19pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(695, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:19pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(696, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:19pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(697, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:43:19pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(698, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:43:54pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(699, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:43:54pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(700, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:43:54pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(701, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:43:56pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(702, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:43:56pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(703, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:43:56pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(704, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:43:58pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(705, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:43:58pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(706, 'AM13', 'Conjunctivis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:43:58pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(707, 'AM14', 'Coryza', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:44:23pm', '0', 0, 'Suspect', 'Chicken', 'Null', ''),
(708, 'AM14', 'Coryza', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:44:24pm', '0', 0, 'Rejected', 'Chicken', 'Null', ''),
(709, 'AM14', 'Coryza', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:44:26pm', '0', 0, 'Condemned', 'Chicken', 'Null', ''),
(710, 'AM15', 'Cyanosis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:46:44pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(711, 'AM15', 'Cyanosis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:46:44pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(712, 'AM15', 'Cyanosis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:46:44pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(713, 'AM15', 'Cyanosis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:46:46pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(714, 'AM15', 'Cyanosis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:46:46pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(715, 'AM15', 'Cyanosis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:46:46pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(716, 'AM15', 'Cyanosis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:46:47pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(717, 'AM15', 'Cyanosis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:46:47pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(718, 'AM15', 'Cyanosis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:46:47pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(719, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:16pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(720, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:16pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(721, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:16pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(722, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:16pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(723, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:16pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(724, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:16pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(725, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:16pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(726, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:16pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(727, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:16pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(728, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:17pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(729, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:17pm', '1', 0, 'Rejected', 'Cattle', 'Null', '');
INSERT INTO `disease_tbl` (`d_id`, `disease_code`, `disease_description`, `disease_level`, `disease_status`, `disease_type`, `disease_category`, `disease_date`, `disease_time`, `disease_notifiable`, `disease_delete_status`, `disease_kind_of_meat`, `disease_species`, `disease_judgement`, `disease_classification`) VALUES
(730, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:17pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(731, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:17pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(732, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:17pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(733, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:17pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(734, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:17pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(735, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:17pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(736, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:17pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(737, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:19pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(738, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:19pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(739, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:19pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(740, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:19pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(741, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:19pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(742, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:19pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(743, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:19pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(744, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:19pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(745, 'AM15', 'Cyanosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:47:19pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(746, 'AM17', 'Dermatitis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:47:56pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(747, 'AM17', 'Dermatitis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:47:56pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(748, 'AM17', 'Dermatitis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:47:56pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(749, 'AM17', 'Dermatitis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:47:58pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(750, 'AM17', 'Dermatitis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:47:58pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(751, 'AM17', 'Dermatitis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:47:58pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(752, 'AM17', 'Dermatitis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:48:00pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(753, 'AM17', 'Dermatitis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:48:00pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(754, 'AM17', 'Dermatitis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:48:00pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(755, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:14pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(756, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:14pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(757, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:14pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(758, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:14pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(759, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:14pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(760, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:14pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(761, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:14pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(762, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:14pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(763, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:14pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(764, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:15pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(765, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:15pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(766, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:15pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(767, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:15pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(768, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:15pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(769, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:15pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(770, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:15pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(771, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:15pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(772, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:15pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(773, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:17pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(774, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:17pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(775, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:17pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(776, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:17pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(777, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:17pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(778, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:17pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(779, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:17pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(780, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:17pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(781, 'AM17', 'Dermatitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:48:17pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(782, 'AM18', 'Diarrhea', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:49:20pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(783, 'AM18', 'Diarrhea', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:49:20pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(784, 'AM18', 'Diarrhea', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:49:20pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(785, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:38pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(786, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:38pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(787, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:38pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(788, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:38pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(789, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:38pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(790, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:38pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(791, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:38pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(792, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:38pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(793, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:38pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(794, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:40pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(795, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:40pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(796, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:40pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(797, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:40pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(798, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:40pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(799, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:40pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(800, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:40pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(801, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:40pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(802, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:40pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(803, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:42pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(804, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:42pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(805, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:42pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(806, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:42pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(807, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:42pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(808, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:42pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(809, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:42pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(810, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:42pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(811, 'AM18', 'Diarrhea', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:49:42pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(812, 'AM19', 'Discharge (Nasal, Ocular)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:50:13pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(813, 'AM19', 'Discharge (Nasal, Ocular)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:50:13pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(814, 'AM19', 'Discharge (Nasal, Ocular)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:50:13pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(815, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:29pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(816, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:29pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(817, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:29pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(818, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:29pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(819, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:29pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(820, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:29pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(821, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:29pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(822, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:29pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(823, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:29pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(824, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:30pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(825, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:30pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(826, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:30pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(827, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:30pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(828, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:30pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(829, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:30pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(830, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:30pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(831, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:30pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(832, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:30pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(833, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:32pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(834, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:32pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(835, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:32pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(836, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:32pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(837, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:32pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(838, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:32pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(839, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:32pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(840, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:32pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(841, 'AM19', 'Discharges (nasal, Ocular)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:50:32pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(842, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:50:53pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(843, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:50:53pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(844, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:50:53pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(845, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:50:55pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(846, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:50:55pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(847, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:50:55pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(848, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:51:00pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(849, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:51:00pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(850, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:51:00pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(851, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:25pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(852, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:25pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(853, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:25pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(854, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:25pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(855, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:25pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(856, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:25pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(857, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:25pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(858, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:25pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(859, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:25pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(860, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:26pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(861, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:26pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(862, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:26pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(863, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:26pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(864, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:26pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(865, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:26pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(866, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:26pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(867, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:26pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(868, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:26pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(869, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:28pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(870, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:28pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(871, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:28pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(872, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:28pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(873, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:28pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(874, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:28pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(875, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:28pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(876, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:28pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(877, 'AM20', 'Downer/ Immobility', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:51:28pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(878, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:51:54pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(879, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:51:54pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(880, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:51:54pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(881, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:51:56pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(882, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:51:56pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(883, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:51:56pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(884, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:51:58pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(885, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:51:58pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(886, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:51:58pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(887, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:08pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(888, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:08pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(889, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:08pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(890, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:08pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(891, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:08pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(892, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:08pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(893, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:08pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(894, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:08pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(895, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:08pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(896, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:10pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(897, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:10pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(898, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:10pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(899, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:10pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(900, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:10pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(901, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:10pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(902, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:10pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(903, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:10pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(904, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:10pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(905, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:11pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(906, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:11pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(907, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:11pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(908, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:11pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(909, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:11pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(910, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:11pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(911, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:11pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(912, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:11pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(913, 'AM21', 'Dying Animal (moribund)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:52:11pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(914, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:53:05pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(915, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:53:05pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(916, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:53:05pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(917, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:53:07pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(918, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:53:07pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(919, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:53:07pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(920, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:53:09pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(921, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:53:09pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(922, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '06:53:09pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(923, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:23pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(924, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:23pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(925, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:23pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(926, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:23pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(927, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:23pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(928, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:23pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(929, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:23pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(930, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:23pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(931, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:23pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(932, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:26pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(933, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:26pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(934, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:26pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(935, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:26pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(936, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:26pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(937, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:26pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(938, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:26pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(939, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:26pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(940, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:26pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(941, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:28pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(942, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:28pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(943, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:28pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(944, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:28pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(945, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:28pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(946, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:28pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(947, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:28pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(948, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:28pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(949, 'AM22', 'Edema (Local Swelling)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '06:53:28pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(950, 'AM24', 'Erysipelas', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:14pm', '0', 0, 'Suspect', 'Hog', 'Null', ''),
(951, 'AM24', 'Erysipelas', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:15pm', '0', 0, 'Rejected', 'Hog', 'Null', ''),
(952, 'AM24', 'Erysipelas', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:17pm', '0', 0, 'Condemned', 'Hog', 'Null', ''),
(953, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:51pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(954, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:51pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(955, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:51pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(956, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:51pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(957, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:51pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(958, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:51pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(959, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:51pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(960, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:51pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(961, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:51pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(962, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:52pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(963, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:52pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(964, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:52pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(965, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:52pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(966, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:52pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(967, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:52pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(968, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:52pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(969, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:52pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(970, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:52pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(971, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:54pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(972, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:54pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(973, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:54pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(974, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:54pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(975, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:54pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(976, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:54pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(977, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:54pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(978, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:54pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(979, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:01:54pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(980, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:02:15pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(981, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:02:15pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(982, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:02:15pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(983, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:02:18pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(984, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:02:18pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(985, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:02:18pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(986, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:02:20pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(987, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:02:20pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(988, 'AM25', 'Excessive Salivation', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:02:20pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(989, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:16pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(990, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:16pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(991, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:16pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(992, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:16pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(993, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:16pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(994, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:16pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(995, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:16pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(996, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:16pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(997, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:16pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(998, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:18pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(999, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:18pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(1000, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:18pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(1001, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:18pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(1002, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:18pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(1003, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:18pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(1004, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:18pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1005, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:18pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1006, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:18pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1007, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:20pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(1008, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:20pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(1009, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:20pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(1010, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:20pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(1011, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:20pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(1012, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:20pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(1013, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:20pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1014, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:20pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1015, 'AM26', 'Fever', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:03:20pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1016, 'AM26', 'Fever', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:03:30pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(1017, 'AM26', 'Fever', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:03:30pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(1018, 'AM26', 'Fever', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:03:30pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1019, 'AM26', 'Fever', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:03:32pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(1020, 'AM26', 'Fever', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:03:32pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(1021, 'AM26', 'Fever', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:03:32pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1022, 'AM26', 'Fever', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:03:34pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(1023, 'AM26', 'Fever', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:03:34pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(1024, 'AM26', 'Fever', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:03:34pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1025, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:04pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(1026, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:04pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(1027, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:04pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(1028, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:04pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(1029, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:04pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(1030, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:04pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(1031, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:04pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1032, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:04pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1033, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:04pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1034, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:06pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(1035, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:06pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(1036, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:06pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(1037, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:06pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(1038, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:06pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(1039, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:06pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(1040, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:06pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1041, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:06pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1042, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:06pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1043, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:08pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(1044, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:08pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(1045, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:08pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(1046, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:08pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(1047, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:08pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(1048, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:08pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(1049, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:08pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1050, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:08pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1051, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:04:08pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1052, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:04:18pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(1053, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:04:18pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(1054, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:04:18pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1055, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:04:19pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(1056, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:04:19pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(1057, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:04:19pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1058, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:04:21pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(1059, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:04:21pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(1060, 'AM27', 'Filth Contaminaton', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:04:21pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1061, 'AM28', 'Flooded', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:05:25pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(1062, 'AM28', 'Flooded', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:05:25pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(1063, 'AM28', 'Flooded', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:05:27pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(1064, 'AM28', 'Flooded', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:05:27pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(1065, 'AM28', 'Flooded', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:05:28pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(1066, 'AM28', 'Flooded', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:05:28pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(1067, 'AM29', 'Foot And Mouth Disease (FMD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:06:07pm', '0', 0, 'Suspect', 'Hog', 'Null', ''),
(1068, 'AM29', 'Foot And Mouth Disease (FMD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:06:08pm', '0', 0, 'Rejected', 'Hog', 'Null', ''),
(1069, 'AM29', 'Foot And Mouth Disease (FMD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:06:10pm', '0', 0, 'Condemned', 'Hog', 'Null', '');
INSERT INTO `disease_tbl` (`d_id`, `disease_code`, `disease_description`, `disease_level`, `disease_status`, `disease_type`, `disease_category`, `disease_date`, `disease_time`, `disease_notifiable`, `disease_delete_status`, `disease_kind_of_meat`, `disease_species`, `disease_judgement`, `disease_classification`) VALUES
(1070, 'AM29', 'Foot And Mouth Disease (FMD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:06:50pm', '0', 0, 'Condemned', 'Cattle', 'Null', ''),
(1071, 'AM29', 'Foot And Mouth Disease (FMD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:06:50pm', '0', 0, 'Condemned', 'Sheep', 'Null', ''),
(1072, 'AM29', 'Foot And Mouth Disease (FMD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:06:52pm', '0', 0, 'Rejected', 'Cattle', 'Null', ''),
(1073, 'AM29', 'Foot And Mouth Disease (FMD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:06:52pm', '0', 0, 'Rejected', 'Sheep', 'Null', ''),
(1074, 'AM29', 'Foot And Mouth Disease (FMD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:06:53pm', '0', 0, 'Suspect', 'Cattle', 'Null', ''),
(1075, 'AM29', 'Foot And Mouth Disease (FMD)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:06:53pm', '0', 0, 'Suspect', 'Sheep', 'Null', ''),
(1076, 'AM30', 'Fowl Pox', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:07:24pm', '0', 0, 'Suspect', 'Chicken', 'Null', ''),
(1077, 'AM30', 'Fowl Pox', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:07:24pm', '0', 0, 'Suspect', 'Duck', 'Null', ''),
(1078, 'AM30', 'Fowl Pox', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:07:24pm', '0', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1079, 'AM30', 'Fowl Pox', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:07:25pm', '0', 0, 'Rejected', 'Chicken', 'Null', ''),
(1080, 'AM30', 'Fowl Pox', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:07:25pm', '0', 0, 'Rejected', 'Duck', 'Null', ''),
(1081, 'AM30', 'Fowl Pox', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:07:25pm', '0', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1082, 'AM30', 'Fowl Pox', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:07:27pm', '0', 0, 'Condemned', 'Chicken', 'Null', ''),
(1083, 'AM30', 'Fowl Pox', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:07:27pm', '0', 0, 'Condemned', 'Duck', 'Null', ''),
(1084, 'AM30', 'Fowl Pox', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:07:27pm', '0', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1085, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:08:09pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(1086, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:08:09pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(1087, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:08:09pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1088, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:08:11pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(1089, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:08:11pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(1090, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:08:11pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1091, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:08:12pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(1092, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:08:12pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(1093, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:08:12pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1094, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:23pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(1095, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:23pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(1096, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:23pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(1097, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:23pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(1098, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:23pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(1099, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:23pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(1100, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:23pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1101, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:23pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1102, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:23pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1103, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:26pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(1104, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:26pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(1105, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:26pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(1106, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:26pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(1107, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:26pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(1108, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:26pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(1109, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:26pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1110, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:26pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1111, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:26pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1112, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:30pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(1113, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:30pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(1114, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:30pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(1115, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:30pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(1116, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:30pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(1117, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:30pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(1118, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:30pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1119, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:30pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1120, 'AM31', 'Necrotic/ Gangrene', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:08:30pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1121, 'AM32', 'Glanders', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:17pm', '0', 0, 'Suspect', 'Horse', 'Null', ''),
(1122, 'AM32', 'Glanders', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:18pm', '0', 0, 'Rejected', 'Horse', 'Null', ''),
(1123, 'AM32', 'Glanders', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:19pm', '0', 0, 'Condemned', 'Horse', 'Null', ''),
(1124, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:54pm', '0', 0, 'Suspect', 'Hog', 'Null', ''),
(1125, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:54pm', '0', 0, 'Suspect', 'Cattle', 'Null', ''),
(1126, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:54pm', '0', 0, 'Suspect', 'Carabao', 'Null', ''),
(1127, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:54pm', '0', 0, 'Suspect', 'Horse', 'Null', ''),
(1128, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:54pm', '0', 0, 'Suspect', 'Goat', 'Null', ''),
(1129, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:54pm', '0', 0, 'Suspect', 'Sheep', 'Null', ''),
(1130, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:54pm', '0', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1131, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:54pm', '0', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1132, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:54pm', '0', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1133, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:55pm', '0', 0, 'Rejected', 'Hog', 'Null', ''),
(1134, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:55pm', '0', 0, 'Rejected', 'Cattle', 'Null', ''),
(1135, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:55pm', '0', 0, 'Rejected', 'Carabao', 'Null', ''),
(1136, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:55pm', '0', 0, 'Rejected', 'Horse', 'Null', ''),
(1137, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:55pm', '0', 0, 'Rejected', 'Goat', 'Null', ''),
(1138, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:55pm', '0', 0, 'Rejected', 'Sheep', 'Null', ''),
(1139, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:55pm', '0', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1140, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:55pm', '0', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1141, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:55pm', '0', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1142, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:56pm', '0', 0, 'Condemned', 'Hog', 'Null', ''),
(1143, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:56pm', '0', 0, 'Condemned', 'Cattle', 'Null', ''),
(1144, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:56pm', '0', 0, 'Condemned', 'Carabao', 'Null', ''),
(1145, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:56pm', '0', 0, 'Condemned', 'Horse', 'Null', ''),
(1146, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:56pm', '0', 0, 'Condemned', 'Goat', 'Null', ''),
(1147, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:56pm', '0', 0, 'Condemned', 'Sheep', 'Null', ''),
(1148, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:56pm', '0', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1149, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:56pm', '0', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1150, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:09:56pm', '0', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1151, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:10:07pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(1152, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:10:07pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(1153, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:10:07pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1154, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:10:09pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(1155, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:10:09pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(1156, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:10:09pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1157, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:10:10pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(1158, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:10:10pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(1159, 'AM33', 'Heat Stroke', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:10:10pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1160, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:34pm', '0', 0, 'Suspect', 'Hog', 'Null', ''),
(1161, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:34pm', '0', 0, 'Suspect', 'Cattle', 'Null', ''),
(1162, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:34pm', '0', 0, 'Suspect', 'Carabao', 'Null', ''),
(1163, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:34pm', '0', 0, 'Suspect', 'Horse', 'Null', ''),
(1164, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:34pm', '0', 0, 'Suspect', 'Goat', 'Null', ''),
(1165, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:34pm', '0', 0, 'Suspect', 'Sheep', 'Null', ''),
(1166, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:34pm', '0', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1167, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:34pm', '0', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1168, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:34pm', '0', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1169, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:40pm', '0', 0, 'Rejected', 'Hog', 'Null', ''),
(1170, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:40pm', '0', 0, 'Rejected', 'Cattle', 'Null', ''),
(1171, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:40pm', '0', 0, 'Rejected', 'Carabao', 'Null', ''),
(1172, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:40pm', '0', 0, 'Rejected', 'Horse', 'Null', ''),
(1173, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:40pm', '0', 0, 'Rejected', 'Goat', 'Null', ''),
(1174, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:40pm', '0', 0, 'Rejected', 'Sheep', 'Null', ''),
(1175, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:40pm', '0', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1176, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:40pm', '0', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1177, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:40pm', '0', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1178, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:43pm', '0', 0, 'Condemned', 'Hog', 'Null', ''),
(1179, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:43pm', '0', 0, 'Condemned', 'Cattle', 'Null', ''),
(1180, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:43pm', '0', 0, 'Condemned', 'Carabao', 'Null', ''),
(1181, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:43pm', '0', 0, 'Condemned', 'Horse', 'Null', ''),
(1182, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:43pm', '0', 0, 'Condemned', 'Goat', 'Null', ''),
(1183, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:43pm', '0', 0, 'Condemned', 'Sheep', 'Null', ''),
(1184, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:43pm', '0', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1185, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:43pm', '0', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1186, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:17:43pm', '0', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1187, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:18:16pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(1188, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:18:16pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(1189, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:18:16pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1190, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:18:17pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(1191, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:18:17pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(1192, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:18:17pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1193, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:18:19pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(1194, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:18:19pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(1195, 'AM34', 'Hemorrhage/ Hematoma', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:18:19pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1196, 'AM36', 'Hernia', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:18:42pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(1197, 'AM36', 'Hernia', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:18:42pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(1198, 'AM36', 'Hernia', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:18:42pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1199, 'AM36', 'Hernia', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:18:43pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(1200, 'AM36', 'Hernia', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:18:43pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(1201, 'AM36', 'Hernia', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:18:43pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1202, 'AM36', 'Hernia', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:18:45pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(1203, 'AM36', 'Hernia', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:18:45pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(1204, 'AM36', 'Hernia', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:18:45pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1205, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:53pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(1206, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:53pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(1207, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:53pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(1208, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:53pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(1209, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:53pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(1210, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:53pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(1211, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:53pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1212, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:53pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1213, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:53pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1214, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:55pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(1215, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:55pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(1216, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:55pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(1217, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:55pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(1218, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:55pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(1219, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:55pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(1220, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:55pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1221, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:55pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1222, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:55pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1223, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:57pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(1224, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:57pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(1225, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:57pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(1226, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:57pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(1227, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:57pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(1228, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:57pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(1229, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:57pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1230, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:57pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1231, 'AM36', 'Hernia', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:18:57pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1232, 'AM37', 'Hog Cholera', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:19:49pm', '0', 0, 'Suspect', 'Hog', 'Null', ''),
(1233, 'AM37', 'Hog Cholera', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:19:51pm', '0', 0, 'Rejected', 'Hog', 'Null', ''),
(1234, 'AM37', 'Hog Cholera', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:19:52pm', '0', 0, 'Condemned', 'Hog', 'Null', ''),
(1235, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:39pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(1236, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:39pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(1237, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:39pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(1238, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:39pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(1239, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:39pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(1240, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:39pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(1241, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:39pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1242, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:39pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1243, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:39pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1244, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:40pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(1245, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:40pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(1246, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:40pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(1247, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:40pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(1248, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:40pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(1249, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:40pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(1250, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:40pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1251, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:40pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1252, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:40pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1253, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:41pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(1254, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:41pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(1255, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:41pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(1256, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:41pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(1257, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:41pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(1258, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:41pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(1259, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:41pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1260, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:41pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1261, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:20:41pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1262, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:20:52pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(1263, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:20:52pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(1264, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:20:52pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1265, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:20:53pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(1266, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:20:53pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(1267, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:20:53pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1268, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:20:55pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(1269, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:20:55pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(1270, 'AM39', 'Insect Bites (papules)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:20:55pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1271, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:13pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(1272, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:13pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(1273, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:13pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(1274, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:13pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(1275, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:13pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(1276, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:13pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(1277, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:13pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1278, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:13pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1279, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:13pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1280, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:14pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(1281, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:14pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(1282, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:14pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(1283, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:14pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(1284, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:14pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(1285, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:14pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(1286, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:14pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1287, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:14pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1288, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:14pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1289, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:16pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(1290, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:16pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(1291, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:16pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(1292, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:16pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(1293, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:16pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(1294, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:16pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(1295, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:16pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1296, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:16pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1297, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:21:16pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1298, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:21:22pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(1299, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:21:22pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(1300, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:21:22pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1301, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:21:23pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(1302, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:21:23pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(1303, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:21:23pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1304, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:21:25pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(1305, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:21:25pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(1306, 'AM40', 'Jaundice/ Icterus', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:21:25pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1307, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:09pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(1308, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:09pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(1309, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:09pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(1310, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:09pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(1311, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:09pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(1312, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:09pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(1313, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:09pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1314, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:09pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1315, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:09pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1316, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:11pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(1317, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:11pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(1318, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:11pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(1319, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:11pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(1320, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:11pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(1321, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:11pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(1322, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:11pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1323, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:11pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1324, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:11pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1325, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:12pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(1326, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:12pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(1327, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:12pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(1328, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:12pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(1329, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:12pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(1330, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:12pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(1331, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:12pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1332, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:12pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1333, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:12pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1334, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:22:22pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(1335, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:22:22pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(1336, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:22:22pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1337, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:22:23pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(1338, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:22:23pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(1339, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:22:23pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1340, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:22:25pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(1341, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:22:25pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(1342, 'AM41', 'Lameness/ Limping', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:22:25pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1343, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:44pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(1344, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:44pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(1345, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:44pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(1346, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:44pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(1347, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:44pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(1348, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:44pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(1349, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:44pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1350, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:44pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1351, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:44pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1352, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:45pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(1353, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:45pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(1354, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:45pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(1355, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:45pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(1356, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:45pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(1357, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:45pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(1358, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:45pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1359, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:45pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1360, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:45pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1361, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:46pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(1362, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:46pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(1363, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:46pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(1364, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:46pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(1365, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:46pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(1366, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:46pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(1367, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:46pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1368, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:46pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1369, 'AM43', 'Mange', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:22:46pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1370, 'AM43', 'Mange', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:22:53pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(1371, 'AM43', 'Mange', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:22:53pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(1372, 'AM43', 'Mange', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:22:53pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1373, 'AM43', 'Mange', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:22:54pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(1374, 'AM43', 'Mange', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:22:54pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(1375, 'AM43', 'Mange', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:22:54pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1376, 'AM43', 'Mange', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:22:56pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(1377, 'AM43', 'Mange', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:22:56pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(1378, 'AM43', 'Mange', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:22:56pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1379, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:33pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(1380, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:33pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(1381, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:33pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(1382, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:33pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(1383, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:33pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(1384, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:33pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(1385, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:33pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1386, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:33pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1387, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:33pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1388, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:34pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(1389, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:34pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(1390, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:34pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(1391, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:34pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(1392, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:34pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(1393, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:34pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(1394, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:34pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1395, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:34pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1396, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:34pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1397, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:36pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(1398, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:36pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(1399, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:36pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(1400, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:36pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(1401, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:36pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(1402, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:36pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(1403, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:36pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1404, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:36pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1405, 'AM45', 'Mastitis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:36pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1406, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:52pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(1407, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:52pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(1408, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:52pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(1409, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:52pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(1410, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:52pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(1411, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:52pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(1412, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:52pm', '1', 0, 'Suspect', 'Crocodile', 'Null', '');
INSERT INTO `disease_tbl` (`d_id`, `disease_code`, `disease_description`, `disease_level`, `disease_status`, `disease_type`, `disease_category`, `disease_date`, `disease_time`, `disease_notifiable`, `disease_delete_status`, `disease_kind_of_meat`, `disease_species`, `disease_judgement`, `disease_classification`) VALUES
(1413, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:52pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1414, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:52pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1415, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:53pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(1416, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:53pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(1417, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:53pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(1418, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:53pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(1419, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:53pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(1420, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:53pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(1421, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:53pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1422, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:53pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1423, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:53pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1424, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:55pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(1425, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:55pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(1426, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:55pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(1427, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:55pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(1428, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:55pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(1429, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:55pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(1430, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:55pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1431, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:55pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1432, 'AM46', 'Myiasis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:23:55pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1433, 'AM46', 'Myiasis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:24:06pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(1434, 'AM46', 'Myiasis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:24:06pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(1435, 'AM46', 'Myiasis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:24:06pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1436, 'AM46', 'Myiasis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:24:07pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(1437, 'AM46', 'Myiasis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:24:07pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(1438, 'AM46', 'Myiasis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:24:07pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1439, 'AM46', 'Myiasis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:24:09pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(1440, 'AM46', 'Myiasis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:24:09pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(1441, 'AM46', 'Myiasis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:24:09pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1442, 'AM47', 'Newcastle Disease (NCD)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:24:37pm', '0', 0, 'Suspect', 'Chicken', 'Null', ''),
(1443, 'AM47', 'Newcastle Disease (NCD)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:24:38pm', '0', 0, 'Rejected', 'Chicken', 'Null', ''),
(1444, 'AM47', 'Newcastle Disease (NCD)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:24:39pm', '0', 0, 'Condemned', 'Chicken', 'Null', ''),
(1445, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:24:55pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(1446, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:24:57pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(1447, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:24:58pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(1448, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:25:08pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(1449, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:25:08pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1450, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:25:09pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(1451, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:25:09pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1452, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:25:11pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(1453, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:25:11pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1454, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:23pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(1455, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:23pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(1456, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:23pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(1457, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:23pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(1458, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:23pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(1459, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:23pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(1460, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:23pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1461, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:23pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1462, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:23pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1463, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:24pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(1464, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:24pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(1465, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:24pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(1466, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:24pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(1467, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:24pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(1468, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:24pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(1469, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:24pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1470, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:24pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1471, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:24pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1472, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:25pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(1473, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:25pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(1474, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:25pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(1475, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:25pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(1476, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:25pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(1477, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:25pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(1478, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:25pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1479, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:25pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1480, 'AM48', 'Nosebleed (Epistaxis)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:25:25pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1481, 'AM50', 'Poisoning', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:37:43pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(1482, 'AM50', 'Poisoning', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:37:43pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(1483, 'AM50', 'Poisoning', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:37:43pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1484, 'AM50', 'Poisoning', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:37:45pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(1485, 'AM50', 'Poisoning', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:37:45pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(1486, 'AM50', 'Poisoning', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:37:45pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1487, 'AM50', 'Poisoning', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:37:47pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(1488, 'AM50', 'Poisoning', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:37:47pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(1489, 'AM50', 'Poisoning', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:37:47pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1490, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:54pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(1491, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:54pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(1492, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:54pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(1493, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:54pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(1494, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:54pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(1495, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:54pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(1496, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:54pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1497, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:54pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1498, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:54pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1499, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:57pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(1500, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:57pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(1501, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:57pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(1502, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:57pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(1503, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:57pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(1504, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:57pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(1505, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:57pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1506, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:57pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1507, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:57pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1508, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:58pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(1509, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:58pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(1510, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:58pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(1511, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:58pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(1512, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:58pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(1513, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:58pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(1514, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:58pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1515, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:58pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1516, 'AM50', 'Poisoning', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:37:58pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1517, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:25pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(1518, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:25pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(1519, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:25pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(1520, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:25pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(1521, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:25pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(1522, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:25pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(1523, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:25pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1524, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:25pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1525, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:25pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1526, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:26pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(1527, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:26pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(1528, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:26pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(1529, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:26pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(1530, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:26pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(1531, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:26pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(1532, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:26pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1533, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:26pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1534, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:26pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1535, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:28pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(1536, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:28pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(1537, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:28pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(1538, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:28pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(1539, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:28pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(1540, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:28pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(1541, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:28pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1542, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:28pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1543, 'AM51', 'Prolapse', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:38:28pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1544, 'AM51', 'Prolapse', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:38:36pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(1545, 'AM51', 'Prolapse', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:38:36pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(1546, 'AM51', 'Prolapse', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:38:36pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1547, 'AM51', 'Prolapse', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:38:37pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(1548, 'AM51', 'Prolapse', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:38:37pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(1549, 'AM51', 'Prolapse', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:38:37pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1550, 'AM51', 'Prolapse', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:38:39pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(1551, 'AM51', 'Prolapse', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:38:39pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(1552, 'AM51', 'Prolapse', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:38:39pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1553, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:19pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(1554, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:19pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(1555, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:19pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(1556, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:19pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(1557, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:19pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(1558, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:19pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(1559, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:19pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1560, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:19pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1561, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:19pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1562, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:21pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(1563, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:21pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(1564, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:21pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(1565, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:21pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(1566, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:21pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(1567, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:21pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(1568, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:21pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1569, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:21pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1570, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:21pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1571, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:23pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(1572, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:23pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(1573, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:23pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(1574, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:23pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(1575, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:23pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(1576, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:23pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(1577, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:23pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1578, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:23pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1579, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:39:23pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1580, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:39:35pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(1581, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:39:35pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(1582, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:39:35pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1583, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:39:36pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(1584, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:39:36pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(1585, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:39:36pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1586, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:39:38pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(1587, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:39:38pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(1588, 'AM53', 'Respiratory Distress (gasping, Sneezing, Coughing)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:39:38pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1589, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:21pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(1590, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:21pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(1591, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:21pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(1592, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:21pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(1593, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:21pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(1594, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:21pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(1595, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:21pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1596, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:21pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1597, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:21pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1598, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:22pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(1599, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:22pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(1600, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:22pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(1601, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:22pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(1602, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:22pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(1603, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:22pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(1604, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:22pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1605, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:22pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1606, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:22pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1607, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:25pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(1608, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:25pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(1609, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:25pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(1610, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:25pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(1611, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:25pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(1612, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:25pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(1613, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:25pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1614, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:25pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1615, 'AM54', 'Runts', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:41:25pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1616, 'AM54', 'Runts', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:41:34pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(1617, 'AM54', 'Runts', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:41:34pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(1618, 'AM54', 'Runts', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:41:34pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1619, 'AM54', 'Runts', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:41:35pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(1620, 'AM54', 'Runts', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:41:35pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(1621, 'AM54', 'Runts', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:41:35pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1622, 'AM54', 'Runts', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:41:37pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(1623, 'AM54', 'Runts', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:41:37pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(1624, 'AM54', 'Runts', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:41:37pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1625, 'AM55', 'Sexual Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:42:38pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(1626, 'AM55', 'Sexual Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:42:39pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(1627, 'AM55', 'Sexual Odor', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:42:40pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(1628, 'AM58', 'Swine Influenza/ Swine Flu', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:13pm', '0', 0, 'Suspect', 'Hog', 'Null', ''),
(1629, 'AM58', 'Swine Influenza/ Swine Flu', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:16pm', '0', 0, 'Rejected', 'Hog', 'Null', ''),
(1630, 'AM58', 'Swine Influenza/ Swine Flu', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:18pm', '0', 0, 'Condemned', 'Hog', 'Null', ''),
(1631, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:44pm', '0', 0, 'Suspect', 'Hog', 'Null', ''),
(1632, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:44pm', '0', 0, 'Suspect', 'Cattle', 'Null', ''),
(1633, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:44pm', '0', 0, 'Suspect', 'Carabao', 'Null', ''),
(1634, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:44pm', '0', 0, 'Suspect', 'Horse', 'Null', ''),
(1635, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:44pm', '0', 0, 'Suspect', 'Goat', 'Null', ''),
(1636, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:44pm', '0', 0, 'Suspect', 'Sheep', 'Null', ''),
(1637, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:44pm', '0', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1638, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:44pm', '0', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1639, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:44pm', '0', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1640, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:45pm', '0', 0, 'Rejected', 'Hog', 'Null', ''),
(1641, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:45pm', '0', 0, 'Rejected', 'Cattle', 'Null', ''),
(1642, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:45pm', '0', 0, 'Rejected', 'Carabao', 'Null', ''),
(1643, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:45pm', '0', 0, 'Rejected', 'Horse', 'Null', ''),
(1644, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:45pm', '0', 0, 'Rejected', 'Goat', 'Null', ''),
(1645, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:45pm', '0', 0, 'Rejected', 'Sheep', 'Null', ''),
(1646, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:45pm', '0', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1647, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:45pm', '0', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1648, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:45pm', '0', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1649, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:46pm', '0', 0, 'Condemned', 'Hog', 'Null', ''),
(1650, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:46pm', '0', 0, 'Condemned', 'Cattle', 'Null', ''),
(1651, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:46pm', '0', 0, 'Condemned', 'Carabao', 'Null', ''),
(1652, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:46pm', '0', 0, 'Condemned', 'Horse', 'Null', ''),
(1653, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:46pm', '0', 0, 'Condemned', 'Goat', 'Null', ''),
(1654, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:46pm', '0', 0, 'Condemned', 'Sheep', 'Null', ''),
(1655, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:46pm', '0', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1656, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:46pm', '0', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1657, 'AM59', 'Tetanus', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:43:46pm', '0', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1658, 'AM59', 'Tetanus', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:43:57pm', '0', 0, 'Suspect', 'Chicken', 'Null', ''),
(1659, 'AM59', 'Tetanus', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:43:57pm', '0', 0, 'Suspect', 'Duck', 'Null', ''),
(1660, 'AM59', 'Tetanus', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:43:57pm', '0', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1661, 'AM59', 'Tetanus', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:43:58pm', '0', 0, 'Rejected', 'Chicken', 'Null', ''),
(1662, 'AM59', 'Tetanus', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:43:58pm', '0', 0, 'Rejected', 'Duck', 'Null', ''),
(1663, 'AM59', 'Tetanus', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:43:58pm', '0', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1664, 'AM59', 'Tetanus', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:44:00pm', '0', 0, 'Condemned', 'Chicken', 'Null', ''),
(1665, 'AM59', 'Tetanus', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:44:00pm', '0', 0, 'Condemned', 'Duck', 'Null', ''),
(1666, 'AM59', 'Tetanus', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:44:00pm', '0', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1667, 'AM60', 'Torticollis (wry Neck)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:44:32pm', '0', 0, 'Suspect', 'Chicken', 'Null', ''),
(1668, 'AM60', 'Torticollis (wry Neck)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:44:33pm', '0', 0, 'Rejected', 'Chicken', 'Null', ''),
(1669, 'AM60', 'Torticollis (wry Neck)', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:44:34pm', '0', 0, 'Condemned', 'Chicken', 'Null', ''),
(1670, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:44:57pm', '0', 0, 'Suspect', 'Chicken', 'Null', ''),
(1671, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:44:57pm', '0', 0, 'Suspect', 'Duck', 'Null', ''),
(1672, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:44:57pm', '0', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1673, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:44:59pm', '0', 0, 'Rejected', 'Chicken', 'Null', ''),
(1674, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:44:59pm', '0', 0, 'Rejected', 'Duck', 'Null', ''),
(1675, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:44:59pm', '0', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1676, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:45:01pm', '0', 0, 'Condemned', 'Chicken', 'Null', ''),
(1677, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:45:01pm', '0', 0, 'Condemned', 'Duck', 'Null', ''),
(1678, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:45:01pm', '0', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1679, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:11pm', '0', 0, 'Suspect', 'Hog', 'Null', ''),
(1680, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:11pm', '0', 0, 'Suspect', 'Cattle', 'Null', ''),
(1681, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:11pm', '0', 0, 'Suspect', 'Carabao', 'Null', ''),
(1682, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:11pm', '0', 0, 'Suspect', 'Horse', 'Null', ''),
(1683, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:11pm', '0', 0, 'Suspect', 'Goat', 'Null', ''),
(1684, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:11pm', '0', 0, 'Suspect', 'Sheep', 'Null', ''),
(1685, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:11pm', '0', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1686, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:11pm', '0', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1687, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:11pm', '0', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1688, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:13pm', '0', 0, 'Rejected', 'Hog', 'Null', ''),
(1689, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:13pm', '0', 0, 'Rejected', 'Cattle', 'Null', ''),
(1690, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:13pm', '0', 0, 'Rejected', 'Carabao', 'Null', ''),
(1691, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:13pm', '0', 0, 'Rejected', 'Horse', 'Null', ''),
(1692, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:13pm', '0', 0, 'Rejected', 'Goat', 'Null', ''),
(1693, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:13pm', '0', 0, 'Rejected', 'Sheep', 'Null', ''),
(1694, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:13pm', '0', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1695, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:13pm', '0', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1696, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:13pm', '0', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1697, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:14pm', '0', 0, 'Condemned', 'Hog', 'Null', ''),
(1698, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:14pm', '0', 0, 'Condemned', 'Cattle', 'Null', ''),
(1699, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:14pm', '0', 0, 'Condemned', 'Carabao', 'Null', ''),
(1700, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:14pm', '0', 0, 'Condemned', 'Horse', 'Null', ''),
(1701, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:14pm', '0', 0, 'Condemned', 'Goat', 'Null', ''),
(1702, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:14pm', '0', 0, 'Condemned', 'Sheep', 'Null', ''),
(1703, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:14pm', '0', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1704, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:14pm', '0', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1705, 'AM61', 'Tuberculosis', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:14pm', '0', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1706, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:29pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(1707, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:29pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(1708, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:29pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(1709, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:29pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(1710, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:29pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(1711, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:29pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(1712, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:29pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1713, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:29pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1714, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:29pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1715, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:30pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(1716, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:30pm', '1', 0, 'Rejected', 'Cattle', 'Null', ''),
(1717, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:30pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(1718, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:30pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(1719, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:30pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(1720, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:30pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(1721, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:30pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1722, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:30pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1723, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:30pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1724, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:32pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(1725, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:32pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(1726, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:32pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(1727, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:32pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(1728, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:32pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(1729, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:32pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(1730, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:32pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1731, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:32pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1732, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:45:32pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(1733, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:45:38pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(1734, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:45:38pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(1735, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:45:38pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1736, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:45:40pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(1737, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:45:40pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(1738, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:45:40pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1739, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:45:42pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(1740, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:45:42pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(1741, 'AM62', 'Tumors/ Lumps', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:45:42pm', '1', 0, 'Condemned', 'Pigeon', 'Null', ''),
(1742, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:46pm', '1', 0, 'Suspect', 'Hog', 'Null', ''),
(1743, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:46pm', '1', 0, 'Suspect', 'Cattle', 'Null', ''),
(1744, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:46pm', '1', 0, 'Suspect', 'Carabao', 'Null', ''),
(1745, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:46pm', '1', 0, 'Suspect', 'Horse', 'Null', ''),
(1746, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:46pm', '1', 0, 'Suspect', 'Goat', 'Null', ''),
(1747, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:46pm', '1', 0, 'Suspect', 'Sheep', 'Null', ''),
(1748, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:46pm', '1', 0, 'Suspect', 'Crocodile', 'Null', ''),
(1749, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:46pm', '1', 0, 'Suspect', 'Rabbit', 'Null', ''),
(1750, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:46pm', '1', 0, 'Suspect', 'Ostrich', 'Null', ''),
(1751, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:57pm', '1', 0, 'Rejected', 'Hog', 'Null', ''),
(1752, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:57pm', '1', 0, 'Rejected', 'Cattle', 'Null', '');
INSERT INTO `disease_tbl` (`d_id`, `disease_code`, `disease_description`, `disease_level`, `disease_status`, `disease_type`, `disease_category`, `disease_date`, `disease_time`, `disease_notifiable`, `disease_delete_status`, `disease_kind_of_meat`, `disease_species`, `disease_judgement`, `disease_classification`) VALUES
(1753, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:57pm', '1', 0, 'Rejected', 'Carabao', 'Null', ''),
(1754, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:57pm', '1', 0, 'Rejected', 'Horse', 'Null', ''),
(1755, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:57pm', '1', 0, 'Rejected', 'Goat', 'Null', ''),
(1756, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:57pm', '1', 0, 'Rejected', 'Sheep', 'Null', ''),
(1757, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:57pm', '1', 0, 'Rejected', 'Crocodile', 'Null', ''),
(1758, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:57pm', '1', 0, 'Rejected', 'Rabbit', 'Null', ''),
(1759, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:57pm', '1', 0, 'Rejected', 'Ostrich', 'Null', ''),
(1760, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:58pm', '1', 0, 'Condemned', 'Hog', 'Null', ''),
(1761, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:58pm', '1', 0, 'Condemned', 'Cattle', 'Null', ''),
(1762, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:58pm', '1', 0, 'Condemned', 'Carabao', 'Null', ''),
(1763, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:58pm', '1', 0, 'Condemned', 'Horse', 'Null', ''),
(1764, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:58pm', '1', 0, 'Condemned', 'Goat', 'Null', ''),
(1765, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:58pm', '1', 0, 'Condemned', 'Sheep', 'Null', ''),
(1766, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:58pm', '1', 0, 'Condemned', 'Crocodile', 'Null', ''),
(1767, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:58pm', '1', 0, 'Condemned', 'Rabbit', 'Null', ''),
(1768, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'SLH', 'Antemortem', '07/07/2023', '08:54:58pm', '1', 0, 'Condemned', 'Ostrich', 'Null', ''),
(1769, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:55:06pm', '1', 0, 'Suspect', 'Chicken', 'Null', ''),
(1770, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:55:06pm', '1', 0, 'Suspect', 'Duck', 'Null', ''),
(1771, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:55:06pm', '1', 0, 'Suspect', 'Pigeon', 'Null', ''),
(1772, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:55:08pm', '1', 0, 'Rejected', 'Chicken', 'Null', ''),
(1773, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:55:08pm', '1', 0, 'Rejected', 'Duck', 'Null', ''),
(1774, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:55:08pm', '1', 0, 'Rejected', 'Pigeon', 'Null', ''),
(1775, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:55:09pm', '1', 0, 'Condemned', 'Chicken', 'Null', ''),
(1776, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:55:09pm', '1', 0, 'Condemned', 'Duck', 'Null', ''),
(1777, 'AM63', 'Vesicles/ Blisters', 'Critical', 'Active', 'PDP', 'Antemortem', '07/07/2023', '08:55:09pm', '1', 0, 'Condemned', 'Pigeon', 'Null', '');

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
  `account_activation` int(15) NOT NULL DEFAULT 1,
  `region_code` varchar(255) NOT NULL DEFAULT '0',
  `remarks` varchar(255) NOT NULL DEFAULT 'null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_tbl`
--

INSERT INTO `employee_tbl` (`employee_id`, `employee_code`, `firstname`, `lastname`, `email`, `username`, `password`, `region`, `province`, `city`, `barangay`, `address`, `role`, `account_status`, `contact`, `assign`, `account_activation`, `region_code`, `remarks`) VALUES
(1, '54335', 'Ma. Elaine Joy ', 'Villareal', 'Juan@gmail.com', 'posmd', '1234', 'NCR', '', '', '', '', 0, 'Active', '', '0', 1, '13', 'null'),
(105, '21-8767', 'Juan ', 'Dela Cruz', 'nmis.devops@gmail.com', 'posms_rtoc3', '1234', 'Central Luzon', 'null', 'null', 'null', 'null', 1, 'Active', '0912315435', '0', 1, '030000000', 'null'),
(110, '432423', 'jufrey', 'Dela Cruz', 'rtoc3@nmis.gov.ph', 'mio_rtoc3', '1234', 'Central Luzon', 'null', 'null', 'null', 'null', 2, 'Active', '9123165448', '0', 1, '030000000', 'null'),
(111, 'tet342', 'jufrey', 'DASD', 'posmd@gmail.com11', 'posms_rtoc3_test', '1234', 'Central Luzon', 'null', 'null', 'null', 'null', 1, 'Active', '9652100539', '0', 1, '030000000', 'null');

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
(234, 223, '99', '998', 'Chicken', '07/03/2023', '03:38:37pm', 105, 'Central Luzon', 'Nueva Ecija', 'Science City of Muñoz'),
(235, 224, '100', '1000', 'Chicken', '07/03/2023', '04:12:08pm', 105, 'Central Luzon', 'Bulacan', 'Pandi'),
(236, 225, '100', '1000', 'Chicken', '07/03/2023', '05:18:12pm', 105, 'Central Luzon', 'Bulacan', 'Pandi'),
(237, 226, '100', '1000', 'Chicken', '07/04/2023', '03:20:49pm', 105, 'Central Luzon', 'Ilocos Sur', 'Nagbukel'),
(238, 227, '100', '1000', 'Chicken', '07/05/2023', '07:54:20am', 105, 'Central Luzon', 'Bataan', 'Morong');

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
(238, 223, '99', '11', '07/03/2023', '03:38:37pm', 'Chicken', 'Philippines', 'Central Luzon', 'Nueva Ecija', 'Science City of Muñoz', 105),
(239, 224, '100', '2', '07/03/2023', '04:12:08pm', 'Chicken', 'Philippines', 'Central Luzon', 'Bulacan', 'Pandi', 105),
(240, 225, '100', '900', '07/03/2023', '05:18:12pm', 'Chicken', 'Philippines', 'Central Luzon', 'Bulacan', 'Pandi', 105),
(241, 226, '100', '900', '07/04/2023', '03:20:49pm', 'Chicken', 'Philippines', 'Central Luzon', 'Ilocos Sur', 'Nagbukel', 105),
(242, 227, '0', '0', '07/05/2023', '07:54:20am', 'Chicken', 'Philippines', 'Central Luzon', 'Bataan', 'Morong', 105);

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
  `me_account_activation` varchar(255) NOT NULL DEFAULT '1',
  `me_owner` varchar(255) NOT NULL,
  `region_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meat_establishment_tbl`
--

INSERT INTO `meat_establishment_tbl` (`me_id`, `me_code`, `me_plant_name`, `me_type`, `me_classification`, `me_lto_number`, `me_region_code`, `me_province_code`, `me_city_code`, `me_barangay_code`, `me_address`, `me_status`, `me_date_created`, `me_expiry`, `me_remarks`, `me_username`, `me_password`, `me_setup_account`, `me_contact`, `me_email`, `employee_id`, `me_account_activation`, `me_owner`, `region_code`) VALUES
(105, 'sadsas', 'tet', 'PDP', 'AAA', 'PDP-324-AAA', 'Central Luzon', 'Bulacan', 'Paombong', 'Pinalagdan', 'yrdy', 'Approved', '07/03/2023', '2027-10-14', 'no', 'me_test', '1234', 'test', '9652100539', 'jufreyninsbayog@gmail.com', '0', '1', 'tse', '030000000'),
(106, 'sadsas', 'TEST', 'SLH', 'AAA', 'SLH-4343-AAA', 'Central Luzon', 'Bulacan', 'Paombong', 'Kapitangan', 'TTS', 'Approved', '07/04/2023', '2024-02-15', 'no', 'me_rtoc3_slh', '12345', 'test', '9652100539', 'test@gmail.com', '0', '1', 'TSET', '030000000'),
(107, 'sadsas', 'tes', 'PDP', 'AAA', 'PDP-432-AAA', 'Central Luzon', 'Bulacan', 'Pulilan', 'Santo Cristo', 'Concepcion-Magalang Rd., San Nicolas, Balas, Concepcion, Tarlac', 'Pending', '07/06/2023', '2023-10-26', 'no', 'meat_establishment', '1234', 'test', '9652100539', 'nmis.devops@gmail.com222222', '0', '1', 'tetsd', '030000000');

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
  `carcass_number_of_heads` varchar(255) NOT NULL DEFAULT '0',
  `carcass_weight` varchar(255) NOT NULL DEFAULT '0',
  `carcass_cause` varchar(255) NOT NULL,
  `lung_weight` varchar(255) NOT NULL DEFAULT '0',
  `lung_number_of_affected` varchar(255) NOT NULL DEFAULT '0',
  `lung_cause` varchar(255) NOT NULL,
  `liver_weight` varchar(255) NOT NULL DEFAULT '0',
  `liver_number_of_affected` varchar(255) NOT NULL DEFAULT '0',
  `liver_cause` varchar(255) NOT NULL,
  `heart_weight` varchar(255) NOT NULL DEFAULT '0',
  `heart_number_of_affected` varchar(255) NOT NULL DEFAULT '0',
  `heart_cause` varchar(255) NOT NULL,
  `intestine_weight` varchar(255) NOT NULL DEFAULT '0',
  `intestine_number_of_affected` varchar(255) NOT NULL DEFAULT '0',
  `intestine_cause` varchar(255) NOT NULL,
  `trimmings_head` varchar(255) NOT NULL DEFAULT '0',
  `trimming_weight` varchar(255) NOT NULL DEFAULT '0',
  `trimming_cause` varchar(255) NOT NULL,
  `feet_weight` varchar(255) NOT NULL DEFAULT '0',
  `feet_number_of_affected` varchar(255) NOT NULL DEFAULT '0',
  `feet_cause` varchar(255) NOT NULL,
  `kidney_weight` varchar(255) NOT NULL DEFAULT '0',
  `kidney_number_of_affected` varchar(255) NOT NULL DEFAULT '0',
  `kidney_cause` varchar(255) NOT NULL,
  `spleen_weight` varchar(255) NOT NULL DEFAULT '0',
  `spleen_number_of_affected` varchar(255) NOT NULL DEFAULT '0',
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
(293, 227, 'Chicken', '1', '0', '208', '0', '0', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '0', '', '07/05/2023', '0', 105, 'Central Luzon', 'Bataan', 'Morong', 'Mabayo', '110', '0'),
(294, 227, 'Chicken', '1', '0', '214', '0', '0', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '0', '', '07/05/2023', '0', 105, 'Central Luzon', 'Bataan', 'Morong', 'Mabayo', '110', '0'),
(298, 227, 'Chicken', '1', '1.07', '208', '0', '0', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '0', '', '07/05/2023', '0', 105, 'Central Luzon', 'Bataan', 'Morong', 'Mabayo', '110', '0');

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
  MODIFY `am_table` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=608;

--
-- AUTO_INCREMENT for table `assigment_tbl`
--
ALTER TABLE `assigment_tbl`
  MODIFY `assign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `attachment_tbl`
--
ALTER TABLE `attachment_tbl`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `ddr_table`
--
ALTER TABLE `ddr_table`
  MODIFY `drr_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `disease_report_tbl`
--
ALTER TABLE `disease_report_tbl`
  MODIFY `dr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=799;

--
-- AUTO_INCREMENT for table `disease_tbl`
--
ALTER TABLE `disease_tbl`
  MODIFY `d_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1778;

--
-- AUTO_INCREMENT for table `employee_tbl`
--
ALTER TABLE `employee_tbl`
  MODIFY `employee_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `fhc_table`
--
ALTER TABLE `fhc_table`
  MODIFY `fhc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `fit_human_consumption`
--
ALTER TABLE `fit_human_consumption`
  MODIFY `fit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `meat_establishment_daily_tbl`
--
ALTER TABLE `meat_establishment_daily_tbl`
  MODIFY `med_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meat_establishment_tbl`
--
ALTER TABLE `meat_establishment_tbl`
  MODIFY `me_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `pm_table`
--
ALTER TABLE `pm_table`
  MODIFY `pm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT for table `suspected_tbl`
--
ALTER TABLE `suspected_tbl`
  MODIFY `suspected_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
