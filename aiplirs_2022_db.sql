-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2023 at 03:05 AM
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
(227, 'dsads', '07/05/2023 07:54:20am', 'Chicken', 'PDP', 'Test', 'Tse', '23-07-05-1', '0', 'Central Luzon', 'Bataan', 'Morong', 'Mabayo', '100', '1000', '0', '0', '0', '0', 'wddsa', 'sdd', '100', '1000.00', '0', '0', '07/05/2023', '07:54:20am', '0', '105', 'test', 'Backyard', '0', '0', '0');

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
(785, '205', '07/03/2023', '606');

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
(228, 'C029', 'Parasitism-Ascarids', 'Critical', 'Active', 'PDP', 'Postmortem', '07/06/2022', '01:25:44pm', '1', 0, 'Intestines', 'Chicken', 'Condemned', '0'),
(941, 'c0002', 'Fatty liver', 'Critical', 'Active', 'PDP', 'Postmortem', '03/13/2023', '01:42:14pm', '0', 0, 'Liver', 'Chicken', 'Condemned', ''),
(942, 'C0001', 'Dead / Dying', 'Critical', 'Active', 'PDP', 'Antemortem', '03/13/2023', '05:03:53pm', '0', 0, 'Condemned', 'Chicken', 'Null', ''),
(943, '123', 'New Castle Disease', 'Critical', 'Active', 'PDP', 'Antemortem', '06/02/2023', '11:12:05am', '0', 0, 'Condemned', 'Chicken', 'Null', '');

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
(238, 227, '0', '0', 'Chicken', '07/05/2023', '07:54:20am', 105, 'Central Luzon', 'Bataan', 'Morong');

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
(106, 'sadsas', 'TEST', 'SLH', 'AAA', 'SLH-4343-AAA', 'Central Luzon', 'Bulacan', 'Paombong', 'Kapitangan', 'TTS', 'Approved', '07/04/2023', '2024-02-15', 'no', 'me_rtoc3_slh', '12345', 'test', '9652100539', 'test@gmail.com', '0', '1', 'TSET', '030000000');

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
  MODIFY `dr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=787;

--
-- AUTO_INCREMENT for table `disease_tbl`
--
ALTER TABLE `disease_tbl`
  MODIFY `d_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=944;

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
  MODIFY `me_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `pm_table`
--
ALTER TABLE `pm_table`
  MODIFY `pm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT for table `suspected_tbl`
--
ALTER TABLE `suspected_tbl`
  MODIFY `suspected_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
