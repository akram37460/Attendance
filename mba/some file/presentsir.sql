-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2019 at 10:11 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `presentsir`
--

-- --------------------------------------------------------

--
-- Table structure for table `attend`
--

CREATE TABLE IF NOT EXISTS `attend` (
`id` int(5) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `lat_long` varchar(40) DEFAULT NULL,
  `loaction_near` varchar(200) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `month` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attend`
--

INSERT INTO `attend` (`id`, `emp_id`, `ip`, `lat_long`, `loaction_near`, `timestamp`, `month`) VALUES
(1, 1, '49.207.85.42', '28.617945,77.0781927', 'C-1, Lal Sai Mandir Marg, Asalatpur Village, Janakpuri, Delhi, 110058, India', '2018-01-10 02:55:50', '01'),
(2, 1, '49.207.85.42', '28.6179323,77.0781951', 'C-1, Lal Sai Mandir Marg, Asalatpur Village, Janakpuri, Delhi, 110058, India', '2018-01-10 02:56:36', '01'),
(3, 1, '49.207.85.42', '28.6180617,77.0784382', 'C-1, Lal Sai Mandir Marg, Asalatpur Village, Janakpuri, Delhi, 110058, India', '2018-01-10 03:00:59', '01'),
(4, 1, '49.207.85.42', '28.6180617,77.0784382', 'C-1, Lal Sai Mandir Marg, Asalatpur Village, Janakpuri, Delhi, 110058, India', '2018-01-10 03:01:03', '01'),
(5, 1, '49.207.85.42', '28.617348,77.0774079', '', '2018-01-10 06:02:26', '01'),
(6, 1, '49.207.85.42', '28.7040592,77.10249019999999', 't-146, Lodhi Colony, Sector 3G, Sarai Kale Khan, New Delhi, Delhi 110013, India', '2018-01-10 07:34:23', '01'),
(7, 0, '49.207.85.42', '28.617945,77.0781927', 'C-1, Lal Sai Mandir Marg, Asalatpur Village, Janakpuri, Delhi, 110058, India', '2018-01-10 07:34:57', '01'),
(8, 1, '223.184.107.208', '28.617945,77.0781927', 'C-1, Lal Sai Mandir Marg, Asalatpur Village, Janakpuri, Delhi, 110058, India', '2018-01-10 07:49:36', '01'),
(9, 1, '91.74.46.186', '28.617945,77.0781927', 'C-1, Lal Sai Mandir Marg, Asalatpur Village, Janakpuri, Delhi, 110058, India', '2018-01-10 07:49:47', '01'),
(10, 1, '223.184.107.208', '28.617945,77.0781927', 'C-1, Lal Sai Mandir Marg, Asalatpur Village, Janakpuri, Delhi, 110058, India', '2018-01-10 07:49:49', '01'),
(11, 1, '120.59.100.49', '28.617945,77.0781927', 'C-1, Lal Sai Mandir Marg, Asalatpur Village, Janakpuri, Delhi, 110058, India', '2018-01-10 07:50:00', '01'),
(12, 1, '1.39.28.60', '28.617945,77.0781927', 'C-1, Lal Sai Mandir Marg, Asalatpur Village, Janakpuri, Delhi, 110058, India', '2018-01-10 07:54:41', '01'),
(13, 1, '139.5.252.93', '28.7253069,77.1628167', 'Srinagar - Kanyakumari Hwy, Block D, Rajasthan Udyog Nagar, Jahangirpuri, Delhi, 110033, India', '2018-01-10 07:55:08', '01'),
(14, 1, '150.242.65.42', '28.635199629817684,77.08559354362826', 'S5/3, New Mahavir Nagar, Tilak Nagar, Delhi, 110018, India', '2018-01-10 07:55:20', '01'),
(15, 1, '106.79.63.28', '28.66128285772176,77.19002107760136', 'Rohilla Station Road, Railway Officers Colony, Sarai Rohilla, Delhi, 110007, India', '2018-01-10 07:55:45', '01'),
(16, 1, '122.180.197.114', '28.66128285772176,77.19002107760136', 'Rohilla Station Road, Railway Officers Colony, Sarai Rohilla, Delhi, 110007, India', '2018-01-10 07:55:53', '01'),
(17, 1, '83.110.2.214', '28.6295326,77.0925197', '', '2018-01-10 07:59:42', '01'),
(18, 1, '106.223.79.197', '25.249502616571593,55.301231818278495', 'Sheikh Khalifa Bin Zayed St - Dubai - United Arab Emirates', '2018-01-10 07:59:50', '01'),
(19, 0, '106.223.79.197', '28.5012984,77.1648729', '8, Mehrauli-Gurgaon Rd, Sultanpur, New Delhi, Delhi 110030, India', '2018-01-10 08:00:08', '01'),
(20, 1, '106.67.2.254', '28.6511604,77.1576835', 'DTC Road, DTC Colony, Shadipur, New Delhi, Delhi 110008, India', '2018-01-10 08:00:25', '01'),
(21, 1, '59.178.63.33', '28.6605282,77.1520501', '', '2018-01-10 08:04:40', '01'),
(22, 1, '1.39.28.57', '28.6821051,77.2122386', '', '2018-01-10 08:05:29', '01'),
(23, 1, '120.56.63.102', '28.6316108,77.1033893', '', '2018-01-10 08:06:53', '01'),
(24, 1, '139.5.253.198', '28.6316108,77.1033893', '', '2018-01-10 08:09:08', '01'),
(25, 1, '59.180.139.87', '28.657334130531172,77.12042765745392', '15, Shivaji Enclave, Tagore Garden Extension, New Delhi, Delhi 110027, India', '2018-01-10 08:20:24', '01'),
(26, 1, '47.30.149.20', '28.657334130531172,77.12042765745392', '15, Shivaji Enclave, Tagore Garden Extension, New Delhi, Delhi 110027, India', '2018-01-10 08:21:54', '01'),
(27, 1, '47.30.149.20', '28.657334130531172,77.12042765745392', '15, Shivaji Enclave, Tagore Garden Extension, New Delhi, Delhi 110027, India', '2018-01-10 08:22:34', '01'),
(28, 0, '59.178.63.33', '28.6966965,77.2920533', 'C-324, Loni Rd, Kardam Puri Extension, Kardam Puri, Shahdara, Delhi, 110093, India', '2018-01-10 08:28:43', '01'),
(29, 0, '91.74.46.186', '28.6821051,77.2122386', '', '2018-01-10 08:30:28', '01'),
(30, 1, '122.180.197.114', '28.6821051,77.2122386', '', '2018-01-10 08:35:26', '01'),
(31, 0, '122.180.197.114', '28.6295326,77.0925197', '248, Block B2, Shiv Nagar, Janakpuri, New Delhi, Delhi 110058, India', '2018-01-10 08:35:44', '01'),
(32, 1, '122.180.197.114', '28.6295399,77.0925195', '248, Block B2, Shiv Nagar, Janakpuri, New Delhi, Delhi 110058, India', '2018-01-10 08:38:24', '01'),
(33, 1, '43.239.205.114', '28.6295394,77.0925195', '248, Block B2, Shiv Nagar, Janakpuri, New Delhi, Delhi 110058, India', '2018-01-10 08:39:18', '01'),
(34, 1, '106.205.127.116', '28.6295394,77.0925195', '248, Block B2, Shiv Nagar, Janakpuri, New Delhi, Delhi 110058, India', '2018-01-10 09:09:45', '01'),
(35, 1, '106.198.164.172', '28.6207136,77.1410694', '', '2018-01-10 10:53:07', '01'),
(36, 1, '49.14.37.9', '28.6207136,77.1410694', '', '2018-01-10 12:55:03', '01'),
(37, 0, '139.5.253.198', '18.50231,73.94851000000001', '181182, Indraprashtha Society, Hadapsar, Pune, Maharashtra 411028, India', '2018-01-10 20:54:26', '01'),
(38, 0, '122.180.197.114', '18.50231,73.94851000000001', '181182, Indraprashtha Society, Hadapsar, Pune, Maharashtra 411028, India', '2018-01-10 22:36:42', '01'),
(39, 1, '64.233.173.151', '18.50231,73.94851000000001', '181182, Indraprashtha Society, Hadapsar, Pune, Maharashtra 411028, India', '2018-01-10 23:48:49', '01'),
(40, 1, '64.233.173.150', '18.50231,73.94851000000001', '181182, Indraprashtha Society, Hadapsar, Pune, Maharashtra 411028, India', '2018-01-11 01:37:15', '01'),
(41, 1, '64.233.173.150', '18.50231,73.94851000000001', '181182, Indraprashtha Society, Hadapsar, Pune, Maharashtra 411028, India', '2018-01-11 01:37:36', '01'),
(42, 1, '64.233.173.149', '18.50231,73.94851000000001', '181182, Indraprashtha Society, Hadapsar, Pune, Maharashtra 411028, India', '2018-01-11 01:37:43', '01'),
(43, 1, '64.233.173.150', '18.50231,73.94851000000001', '181182, Indraprashtha Society, Hadapsar, Pune, Maharashtra 411028, India', '2018-01-11 01:37:43', '01'),
(44, 1, '171.79.62.61', '18.50231,73.94851000000001', '181182, Indraprashtha Society, Hadapsar, Pune, Maharashtra 411028, India', '2018-01-11 01:41:59', '01'),
(45, 1, '108.56.181.231', '28.6303818,77.0811777', '721, Janakpuri District Center, Janakpuri, Delhi, 110058, India', '2018-01-11 04:32:44', '01'),
(46, 1, '108.56.181.231', '28.6303818,77.0811777', '721, Janakpuri District Center, Janakpuri, Delhi, 110058, India', '2018-01-11 04:37:15', '01'),
(47, 1, '108.56.181.231', '28.6303818,77.0811777', '721, Janakpuri District Center, Janakpuri, Delhi, 110058, India', '2018-01-11 04:42:23', '01'),
(48, 0, '47.31.53.107', '28.6303818,77.0811777', '721, Janakpuri District Center, Janakpuri, Delhi, 110058, India', '2018-01-11 11:07:51', '01'),
(49, 1, '108.56.181.231', '28.6295377,77.0925366', '248, Block B2, Shiv Nagar, Janakpuri, New Delhi, Delhi 110058, India', '2018-01-11 17:48:00', '01'),
(50, 1, '69.121.148.179', '28.6295377,77.0925366', '248, Block B2, Shiv Nagar, Janakpuri, New Delhi, Delhi 110058, India', '2018-01-12 03:56:51', '01'),
(51, 1, '49.207.68.17', '41.0298294,-74.4851619', '2-22 Skyler Ct, Oak Ridge, NJ 07438, USA', '2018-01-13 02:00:21', '01'),
(52, 1, '49.207.68.17', '28.630412,77.0811659', '721, Janakpuri District Center, Janakpuri, Delhi, 110058, India', '2018-01-13 02:57:37', '01'),
(53, 1, '49.207.68.17', '28.6304063,77.0811983', '721, Janakpuri District Center, Janakpuri, Delhi, 110058, India', '2018-01-13 03:03:13', '01'),
(54, 1, '49.207.68.17', '28.6304063,77.0811983', '721, Janakpuri District Center, Janakpuri, Delhi, 110058, India', '2018-01-18 06:27:57', '01'),
(55, 1, '49.207.68.17', '28.6304319,77.0812403', '721, Janakpuri District Center, Janakpuri, Delhi, 110058, India', '2018-01-20 03:35:56', '01'),
(56, 1, '49.207.84.110', '28.6304114,77.0811249', '721, Janakpuri District Center, Janakpuri, Delhi, 110058, India', '2018-01-21 08:29:39', '01'),
(57, 1, '49.207.84.110', '28.6304114,77.0811249', '721, Janakpuri District Center, Janakpuri, Delhi, 110058, India', '2018-01-21 08:29:54', '01'),
(58, 1, '49.207.84.110', '28.6304114,77.0811249', '721, Janakpuri District Center, Janakpuri, Delhi, 110058, India', '2018-01-21 08:30:35', '01'),
(59, 1, '49.207.68.17', '28.6304114,77.0811249', '721, Janakpuri District Center, Janakpuri, Delhi, 110058, India', '2018-01-23 02:58:17', '01'),
(60, 0, '49.207.68.17', '28.6304125,77.0811999', '721, Janakpuri District Center, Janakpuri, Delhi, 110058, India', '2018-01-23 04:45:54', '01'),
(61, 1, '112.196.133.235', '28.6303946,77.0811788', '721, Janakpuri District Center, Janakpuri, Delhi, 110058, India', '2018-01-27 02:07:36', '01'),
(62, 1, '47.30.42.2', '28.612382099999998,77.0882465', 'RZ-6A, Pankha Rd, Block H, Raghu Nagar, Dabri, New Delhi, Delhi 110045, India', '2018-03-28 00:52:47', '03'),
(63, 1, '122.176.159.177', '28.6159813,77.3873854', 'C196, C Block, Sector 63, Noida, Uttar Pradesh 201301, India', '2018-10-13 00:54:05', '10'),
(64, 1, '122.176.159.177', '28.6159813,77.3873854', 'C196, C Block, Sector 63, Noida, Uttar Pradesh 201301, India', '2018-10-13 00:54:34', '10'),
(65, 1, '122.176.159.177', '28.618015699999997,77.07843179999999', '', '2018-10-13 00:54:43', '10'),
(66, 1, '122.176.159.177', '28.618015699999997,77.07843179999999', '', '2018-10-13 00:55:11', '10'),
(67, 1, '122.176.159.177', '28.618015699999997,77.07843179999999', '', '2018-10-13 00:59:54', '10'),
(68, 1, '122.176.159.177', '28.6181104,77.0784927', '', '2018-10-13 01:00:43', '10'),
(69, 1, '122.176.159.177', '28.6180869,77.0784215', '', '2018-10-13 01:22:58', '10'),
(70, 1, '122.176.159.177', ',', '', '2018-10-13 08:32:21', '10'),
(71, 1, '182.68.192.57', '28.6179667,77.078177', '', '2018-10-14 01:41:44', '10'),
(72, 1, '171.78.224.221', '28.6181104,77.0784927', '', '2019-02-22 18:52:54', '02'),
(73, 1, '::1', '28.617876799999998,77.07837500000001', 'C-3, Block C1, Janakpuri, Delhi, 110058, India', '2019-02-23 13:14:07', '02'),
(74, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 13:14:32', '02'),
(75, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 13:23:21', '02'),
(76, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 13:24:52', '02'),
(77, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 13:26:02', '02'),
(78, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 13:27:09', '02'),
(79, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 13:33:46', '02'),
(80, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 13:37:22', '02'),
(81, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 13:38:32', '02'),
(82, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 13:38:34', '02'),
(83, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 13:38:51', '02'),
(84, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 13:43:19', '02'),
(85, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 13:45:00', '02'),
(86, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 13:45:28', '02'),
(87, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 13:45:51', '02'),
(88, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 13:47:45', '02'),
(89, 1, '::1', ',', '', '2019-02-23 13:49:13', '02'),
(90, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:31:04', '02'),
(91, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:32:45', '02'),
(92, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:32:48', '02'),
(93, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:33:08', '02'),
(94, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:34:18', '02'),
(95, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:35:29', '02'),
(96, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:35:54', '02'),
(97, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:37:03', '02'),
(98, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:37:11', '02'),
(99, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:38:46', '02'),
(100, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:38:48', '02'),
(101, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:41:00', '02'),
(102, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:41:03', '02'),
(103, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:41:53', '02'),
(104, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:42:41', '02'),
(105, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:42:43', '02'),
(106, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:44:17', '02'),
(107, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:44:46', '02'),
(108, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:59:13', '02'),
(109, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:59:20', '02'),
(110, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 17:59:48', '02'),
(111, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 18:03:25', '02'),
(112, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 18:03:34', '02'),
(113, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 18:04:28', '02'),
(114, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 18:06:58', '02'),
(115, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 18:07:27', '02'),
(116, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 18:08:27', '02'),
(117, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 18:08:54', '02'),
(118, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 18:09:17', '02'),
(119, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 18:10:01', '02'),
(120, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 18:13:12', '02'),
(121, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 18:13:27', '02'),
(122, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 18:47:46', '02'),
(123, 1, '::1', '28.6179606,77.0783737', '', '2019-02-23 19:03:01', '02');

-- --------------------------------------------------------

--
-- Table structure for table `at_attendence_data`
--

CREATE TABLE IF NOT EXISTS `at_attendence_data` (
`atten_id` int(10) NOT NULL,
  `atten_roll_no` int(10) NOT NULL,
  `atten_session` varchar(100) NOT NULL,
  `atten_semester` int(10) NOT NULL,
  `atten_class` int(10) NOT NULL,
  `atten_paper` varchar(100) NOT NULL,
  `atten_month` int(10) NOT NULL,
  `atten_l_t` int(10) NOT NULL,
  `atten_attened` int(10) NOT NULL,
  `inst_id` int(10) NOT NULL,
  `added_by` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `at_attendence_data`
--

INSERT INTO `at_attendence_data` (`atten_id`, `atten_roll_no`, `atten_session`, `atten_semester`, `atten_class`, `atten_paper`, `atten_month`, `atten_l_t`, `atten_attened`, `inst_id`, `added_by`) VALUES
(1, 12, '2015-2016', 1, 8, '1', 1, 22, 20, 1, 1),
(2, 23, '2015-2016', 1, 8, '1', 1, 22, 22, 1, 1),
(3, 56, '2015-2016', 1, 8, '1', 1, 22, 20, 1, 1),
(4, 66, '2015-2016', 1, 8, '1', 1, 18, 15, 1, 1),
(17, 12, '2015-2016', 1, 8, '2', 1, 22, 12, 1, 1),
(18, 23, '2015-2016', 1, 8, '2', 1, 22, 12, 1, 1),
(19, 56, '2015-2016', 1, 8, '2', 1, 22, 12, 1, 1),
(20, 66, '2015-2016', 1, 8, '2', 1, 22, 21, 1, 1),
(21, 12, '2015-2016', 1, 8, '3', 1, 12, 12, 1, 1),
(22, 23, '2015-2016', 1, 8, '3', 1, 12, 1, 1, 1),
(23, 56, '2015-2016', 1, 8, '3', 1, 12, 1, 1, 1),
(24, 66, '2015-2016', 1, 8, '3', 1, 12, 1, 1, 1),
(25, 12, '2015-2016', 1, 8, '4', 1, 50, 45, 1, 5),
(26, 23, '2015-2016', 1, 8, '4', 1, 50, 35, 1, 5),
(27, 56, '2015-2016', 1, 8, '4', 1, 48, 34, 1, 5),
(28, 66, '2015-2016', 1, 8, '4', 1, 50, 12, 1, 5),
(29, 12, '2015-2016', 2, 8, '1', 4, 12, 10, 1, 5),
(30, 23, '2015-2016', 2, 8, '1', 4, 12, 9, 1, 5),
(31, 56, '2015-2016', 2, 8, '1', 4, 12, 8, 1, 5),
(32, 66, '2015-2016', 2, 8, '1', 4, 12, 7, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `at_class`
--

CREATE TABLE IF NOT EXISTS `at_class` (
`class_id` int(10) NOT NULL,
  `class_title` varchar(255) NOT NULL,
  `inst_id` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `at_class`
--

INSERT INTO `at_class` (`class_id`, `class_title`, `inst_id`) VALUES
(1, 'AC-1', 1),
(2, 'BAH', 1),
(3, 'BAP', 1),
(4, 'BBE', 1),
(5, 'BCH', 1),
(6, 'BCP', 1),
(7, 'DC1', 1),
(8, 'ENG', 1),
(9, 'FC', 1),
(10, 'HIN', 1),
(11, 'HIS', 1),
(12, 'HJR', 1),
(13, 'IMBH', 1),
(14, 'POL', 1),
(15, 'PUN', 1);

-- --------------------------------------------------------

--
-- Table structure for table `at_institute`
--

CREATE TABLE IF NOT EXISTS `at_institute` (
`inst_id` int(11) NOT NULL,
  `inst_title` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `at_institute`
--

INSERT INTO `at_institute` (`inst_id`, `inst_title`) VALUES
(1, 'SRI GURU NANAK DEV KHALSA COLLEGE');

-- --------------------------------------------------------

--
-- Table structure for table `at_inst_session`
--

CREATE TABLE IF NOT EXISTS `at_inst_session` (
`sess_id` int(10) NOT NULL,
  `sess_title` varchar(100) NOT NULL,
  `inst_id` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `at_inst_session`
--

INSERT INTO `at_inst_session` (`sess_id`, `sess_title`, `inst_id`) VALUES
(1, '2015-2016', 1);

-- --------------------------------------------------------

--
-- Table structure for table `at_login_detail`
--

CREATE TABLE IF NOT EXISTS `at_login_detail` (
`user_id` int(10) NOT NULL,
  `user_type` int(10) NOT NULL,
  `user_roll_no` int(10) NOT NULL,
  `user_class` int(10) NOT NULL,
  `log_name` varchar(100) NOT NULL DEFAULT '',
  `log_password` varchar(100) NOT NULL DEFAULT '',
  `user_title` varchar(255) NOT NULL DEFAULT '',
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `user_fname` varchar(255) NOT NULL DEFAULT '',
  `user_lname` varchar(255) NOT NULL DEFAULT '',
  `user_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `inst_id` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `at_login_detail`
--

INSERT INTO `at_login_detail` (`user_id`, `user_type`, `user_roll_no`, `user_class`, `log_name`, `log_password`, `user_title`, `user_email`, `user_fname`, `user_lname`, `user_status`, `inst_id`) VALUES
(1, 1, 0, 0, 'admin', 'admin', 'Admin', 'admin@admin.com', 'Rajesh', 'Jaiswal', 'Y', 1),
(5, 2, 0, 0, 'tech', 'rishabh', '', 'jais@hail.com', 'Rajesh', 'jaiswal', 'Y', 1),
(6, 3, 56, 8, 'admin', 'admin', '', 'test@se.in', 'test', 'test', 'Y', 1),
(7, 3, 12, 8, 'admin1', 'admin1', '', 'a@dd.in', 'a', 'a', 'Y', 1),
(8, 3, 23, 8, 'admin2', 'admin2', '', 'bb@ff.kk', 'b', 'b', 'Y', 1),
(9, 3, 66, 8, 'admin4', 'admin4', '', 'sss@ddsf.k', 'cc', 'c', 'Y', 1);

-- --------------------------------------------------------

--
-- Table structure for table `at_paper`
--

CREATE TABLE IF NOT EXISTS `at_paper` (
`paper_id` int(10) NOT NULL,
  `paper_title` varchar(255) NOT NULL DEFAULT '',
  `paper_code` varchar(100) NOT NULL,
  `inst_id` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `at_paper`
--

INSERT INTO `at_paper` (`paper_id`, `paper_title`, `paper_code`, `inst_id`) VALUES
(1, '1', '1', 1),
(2, '2', '2', 1),
(3, 'A', 'A', 1),
(4, 'A1', 'A1', 1),
(5, 'A2', 'A2', 1),
(6, 'A3', 'A3', 1),
(7, 'A4', 'A4', 1),
(8, 'A5', 'A5', 1),
(9, 'AC 1 ENG', 'AC 1 ENG', 1),
(10, 'AC 1 HIN', 'AC 1 HIN', 1),
(11, 'AC 1 SKT', 'AC 1 SKT', 1),
(12, 'AL 1 HIN', 'AL 1 HIN', 1),
(13, 'AL 1 PUN', 'AL 1 PUN', 1),
(14, 'AL 1 SKT', 'AL 1 SKT', 1),
(15, 'AL 2 HIN', 'AL 2 HIN', 1),
(16, 'AL 3 HIN', 'AL 3 HIN', 1),
(17, 'AL 4 HIN', 'AL 4 HIN', 1),
(18, 'B', 'B', 1),
(19, 'B1', 'B1', 1),
(20, 'B2', 'B2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `at_semester`
--

CREATE TABLE IF NOT EXISTS `at_semester` (
`sem_id` int(11) NOT NULL,
  `sem_title` varchar(100) NOT NULL,
  `inst_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `at_semester`
--

INSERT INTO `at_semester` (`sem_id`, `sem_title`, `inst_id`) VALUES
(1, 'I', 1),
(2, 'II', 1),
(3, 'III', 1),
(4, 'IV', 1),
(5, 'V', 1);

-- --------------------------------------------------------

--
-- Table structure for table `at_user_type`
--

CREATE TABLE IF NOT EXISTS `at_user_type` (
`ut_id` int(10) NOT NULL,
  `ut_type_id` int(10) NOT NULL DEFAULT '0',
  `ut_type_title` varchar(255) NOT NULL DEFAULT '',
  `ut_status` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT 'Y=active, N=nonactive',
  `inst_id` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `at_user_type`
--

INSERT INTO `at_user_type` (`ut_id`, `ut_type_id`, `ut_type_title`, `ut_status`, `inst_id`) VALUES
(1, 1, 'Admin', 'Y', 1),
(2, 2, 'Teacher', 'Y', 1),
(3, 3, 'Student', 'Y', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_master`
--

CREATE TABLE IF NOT EXISTS `company_master` (
`id` int(11) NOT NULL,
  `companyName` varchar(50) DEFAULT NULL,
  `companyAddress` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `contact_person` varchar(50) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `land_line` varchar(12) DEFAULT NULL,
  `passWord` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_master`
--

INSERT INTO `company_master` (`id`, `companyName`, `companyAddress`, `Email`, `contact_person`, `mobile`, `land_line`, `passWord`) VALUES
(1, 'New Delhi DATA POINT Pvt. Ltd.', '5F/111, DDA , Dist. Center, Janak Puri, New Delhi', 'liveprojectclub@gmail.com', 'RP SINGH', '9891089963', '01145572009', '123'),
(6, 'Data Point', '5F/111', 'admin@gmail.com', 'RP Singh', '9891089963', '01145572009', '123');

-- --------------------------------------------------------

--
-- Table structure for table `emp_master`
--

CREATE TABLE IF NOT EXISTS `emp_master` (
`id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `emp_name` varchar(70) DEFAULT NULL,
  `emp_desg` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `emp_mobile` varchar(10) DEFAULT NULL,
  `emailid` varchar(50) DEFAULT NULL,
  `passWord` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_master`
--

INSERT INTO `emp_master` (`id`, `company_id`, `emp_id`, `emp_name`, `emp_desg`, `status`, `emp_mobile`, `emailid`, `passWord`) VALUES
(1, 1, 1, 'RP Singh', 'Director', 1, '', 'datapt@gmail.com', '123'),
(2, 6, 6, 'P kaur', 'Director', 1, '', 'pkdatapt@gmail.com', '123'),
(10, 1, 7, 'RP', 'Manager', 1, '98', 'Tavleen@gmail.com', '123'),
(11, 1, 8, 'Ashmeeta', 'Manager', 1, '9982828928', 'ashmeeta@gmail.com', '123'),
(13, 1, 9, 'Sanjay Kumar', 'Manager', 1, '9898999', 'sanjay@gmail.com', '123'),
(15, 6, 10, 'ABC', 'abc', 1, '878', 'abc@admin.com', '123'),
(16, 6, 13, 'XYZ', 'XXCC', 1, '989', 'xyz@mn.com', '123'),
(17, 6, 13, 'XYZ', 'XXCC', 1, '989', 'xyz@mn.com', '123'),
(18, 6, 13, 'XYZ', 'XXCC', 1, '989', 'xyz@mn.com', '123'),
(19, 6, 13, 'XYZ', 'XXCC', 1, '989', 'xyz@mn.com', '123'),
(20, 6, 13, 'XYZ', 'XXCC', 1, '989', 'xyz@mn.com', '123'),
(21, 6, 13, 'XYZ', 'XXCC', 1, '989', 'xyz@mn.com', '123'),
(22, 6, 13, 'XYZ', 'XXCC', 1, '989', 'xyz@mn.com', '123'),
(23, 6, 13, 'XYZ', 'XXCC', 1, '989', 'xyz@mn.com', '123'),
(24, 6, 13, 'XYZ', 'XXCC', 1, '989', 'xyz@mn.com', '123'),
(25, 6, 13, 'XYZ', 'XXCC', 1, '989', 'xyz@mn.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_tracker`
--

CREATE TABLE IF NOT EXISTS `visitor_tracker` (
`id` int(11) NOT NULL,
  `emp_id` int(5) NOT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `ip` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor_tracker`
--

INSERT INTO `visitor_tracker` (`id`, `emp_id`, `country`, `city`, `date`, `time`, `ip`) VALUES
(57, 1, 'India', 'Noida-Uttar Pradesh', '2018-01-04', '21:05:46', '49.207.93.140'),
(58, 1, 'India', 'Noida-Uttar Pradesh', '2018-01-04', '21:05:46', '49.207.93.140'),
(59, 1, '', '', '2018-01-04', '21:33:06', '49.207.93.140'),
(63, 1, '', '', '2018-01-04', '21:47:13', '49.207.93.140'),
(64, 1, '', '', '2018-01-04', '21:47:13', '49.207.93.140'),
(65, 1, '', '', '2018-01-04', '21:56:55', '49.207.93.140'),
(66, 1, '', '', '2018-01-04', '22:03:16', '49.207.93.140'),
(67, 1, '', '', '2018-01-04', '23:01:08', '49.207.102.149');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attend`
--
ALTER TABLE `attend`
 ADD PRIMARY KEY (`id`), ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `at_attendence_data`
--
ALTER TABLE `at_attendence_data`
 ADD PRIMARY KEY (`atten_id`);

--
-- Indexes for table `at_class`
--
ALTER TABLE `at_class`
 ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `at_institute`
--
ALTER TABLE `at_institute`
 ADD PRIMARY KEY (`inst_id`);

--
-- Indexes for table `at_inst_session`
--
ALTER TABLE `at_inst_session`
 ADD PRIMARY KEY (`sess_id`);

--
-- Indexes for table `at_login_detail`
--
ALTER TABLE `at_login_detail`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `at_paper`
--
ALTER TABLE `at_paper`
 ADD PRIMARY KEY (`paper_id`);

--
-- Indexes for table `at_semester`
--
ALTER TABLE `at_semester`
 ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `at_user_type`
--
ALTER TABLE `at_user_type`
 ADD PRIMARY KEY (`ut_id`);

--
-- Indexes for table `company_master`
--
ALTER TABLE `company_master`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_master`
--
ALTER TABLE `emp_master`
 ADD PRIMARY KEY (`id`), ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `visitor_tracker`
--
ALTER TABLE `visitor_tracker`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attend`
--
ALTER TABLE `attend`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `at_attendence_data`
--
ALTER TABLE `at_attendence_data`
MODIFY `atten_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `at_class`
--
ALTER TABLE `at_class`
MODIFY `class_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `at_institute`
--
ALTER TABLE `at_institute`
MODIFY `inst_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `at_inst_session`
--
ALTER TABLE `at_inst_session`
MODIFY `sess_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `at_login_detail`
--
ALTER TABLE `at_login_detail`
MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `at_paper`
--
ALTER TABLE `at_paper`
MODIFY `paper_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `at_semester`
--
ALTER TABLE `at_semester`
MODIFY `sem_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `at_user_type`
--
ALTER TABLE `at_user_type`
MODIFY `ut_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `company_master`
--
ALTER TABLE `company_master`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `emp_master`
--
ALTER TABLE `emp_master`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `visitor_tracker`
--
ALTER TABLE `visitor_tracker`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
