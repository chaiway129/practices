-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2019 at 04:58 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jclass`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `branch` int(11) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_img` varchar(255) NOT NULL DEFAULT 'Uploads/profile_img.png',
  `rdate` varchar(255) NOT NULL,
  `atype` int(11) NOT NULL DEFAULT '0' COMMENT '0 = admin , 1 = superadmin',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = block, 1 = active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `full_name`, `mobile`, `branch`, `address`, `email`, `password`, `profile_img`, `rdate`, `atype`, `status`) VALUES
(1, 'SUPER ADMIN', '77889977889', 0, 'Navi Mumbai', 'superadmin@gmail.com', '123456', 'Uploads/profile_img.png', '', 1, 0),
(8, 'Sayed Tousif', '9970399309', 4, 'Barshi naka, Beed', 'Tausifsayed87@gmail.com', 'beed@tousif', 'Uploads/49b25b5cef3341a0a89492ab091b4350.jpg', '14-11-2018', 0, 0),
(10, 'test admin', '9898989898', 2, 'xcxzc', 'sdsad', '12345', 'Uploads/c955c892895de513891356e83e07236e.png', '23-12-2018', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `questionid` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `selected_option` int(11) NOT NULL,
  `exam_date` varchar(255) NOT NULL,
  `unqid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `student_id`, `questionid`, `answer`, `selected_option`, `exam_date`, `unqid`) VALUES
(1, 1, 1, 2, 4, '04/12/2018', '201812034CA9'),
(2, 1, 1, 2, 1, '04/12/2018', '2018120473EA'),
(3, 1, 1, 2, 4, '04/12/2018', '201812041CD9'),
(4, 1, 2, 1, 2, '04/12/2018', '201812041CD9'),
(5, 1, 3, 3, 2, '04/12/2018', '201812041CD9'),
(6, 1, 4, 1, 4, '04/12/2018', '201812041CD9'),
(7, 1, 14, 1, 2, '04/12/2018', '201812041CD9'),
(8, 1, 9, 1, 1, '04/12/2018', '201812041CD9'),
(9, 1, 1, 2, 1, '04/12/2018', '20181204FC86'),
(10, 1, 12, 1, 1, '04/12/2018', '20181204FC86'),
(11, 1, 31, 4, 1, '19/12/2018', '201812195E1A'),
(15, 1, 36, 1, 1, '19/12/2018', '201812195E1A'),
(17, 1, 31, 4, 3, '19/12/2018', '201812190135'),
(21, 1, 36, 1, 1, '19/12/2018', '201812190135'),
(22, 2, 31, 4, 1, '19/12/2018', '2018121999E1'),
(23, 2, 36, 1, 1, '19/12/2018', '2018121999E1'),
(24, 3, 38, 1, 2, '21/12/2018', '20181221CFEC'),
(25, 3, 31, 4, 1, '21/12/2018', '201812210E9D'),
(30, 3, 36, 1, 4, '21/12/2018', '201812210E9D'),
(31, 3, 31, 4, 4, '21/12/2018', '201812210FCD'),
(32, 3, 32, 4, 4, '21/12/2018', '201812210FCD'),
(33, 3, 33, 3, 4, '21/12/2018', '201812210FCD'),
(34, 3, 34, 2, 4, '21/12/2018', '201812210FCD'),
(35, 3, 35, 3, 4, '21/12/2018', '201812210FCD'),
(37, 5, 37, 1, 1, '22/12/2018', '201812225098'),
(38, 0, 31, 4, 1, '22/12/2018', '20181222D0AD'),
(39, 0, 32, 4, 1, '22/12/2018', '20181222D0AD'),
(40, 0, 33, 3, 3, '22/12/2018', '20181222D0AD'),
(41, 0, 34, 2, 3, '22/12/2018', '20181222D0AD'),
(42, 0, 35, 3, 4, '22/12/2018', '20181222D0AD'),
(43, 0, 36, 1, 1, '22/12/2018', '20181222D0AD'),
(44, 4, 31, 4, 1, '22/12/2018', '20181222818B'),
(45, 5, 31, 4, 1, '22/12/2018', '201812221022'),
(46, 4, 32, 4, 4, '22/12/2018', '20181222818B'),
(47, 5, 32, 4, 4, '22/12/2018', '201812221022'),
(48, 5, 33, 3, 3, '22/12/2018', '201812221022'),
(49, 4, 34, 2, 3, '22/12/2018', '20181222818B'),
(50, 5, 34, 2, 1, '22/12/2018', '201812221022'),
(51, 4, 35, 3, 4, '22/12/2018', '20181222818B'),
(52, 5, 36, 1, 2, '22/12/2018', '201812221022'),
(53, 4, 36, 1, 1, '22/12/2018', '20181222818B'),
(54, 5, 39, 2, 1, '23/12/2018', '20181223FD14'),
(57, 4, 39, 2, 1, '06/01/2019', '201901064125'),
(59, 4, 42, 3, 4, '06/01/2019', '201901064125'),
(61, 4, 39, 2, 1, '06/01/2019', '201901069C28'),
(63, 4, 42, 3, 4, '06/01/2019', '201901069C28'),
(66, 3, 50, 2, 1, '11/01/2019', '20190111B829'),
(67, 3, 51, 1, 3, '11/01/2019', '20190111B829'),
(68, 3, 52, 3, 4, '11/01/2019', '20190111B829'),
(69, 3, 53, 4, 2, '11/01/2019', '20190111B829'),
(70, 3, 54, 1, 2, '11/01/2019', '20190111B829'),
(71, 3, 55, 3, 2, '11/01/2019', '20190111B829'),
(72, 3, 50, 2, 1, '11/01/2019', '2019011187BA'),
(73, 3, 50, 2, 2, '11/01/2019', '20190111C47E'),
(74, 3, 51, 1, 1, '11/01/2019', '20190111C47E'),
(75, 3, 52, 3, 3, '11/01/2019', '20190111C47E'),
(76, 3, 53, 4, 4, '11/01/2019', '20190111C47E'),
(77, 3, 54, 1, 1, '11/01/2019', '20190111C47E'),
(78, 3, 55, 3, 3, '11/01/2019', '20190111C47E'),
(79, 3, 56, 4, 1, '11/01/2019', '20190111C47E'),
(80, 4, 50, 2, 2, '11/01/2019', '20190111E980'),
(81, 4, 51, 1, 1, '11/01/2019', '20190111E980'),
(82, 4, 52, 3, 3, '11/01/2019', '20190111E980'),
(83, 4, 53, 4, 4, '11/01/2019', '20190111E980'),
(84, 4, 54, 1, 1, '11/01/2019', '20190111E980'),
(85, 4, 55, 3, 3, '11/01/2019', '20190111E980'),
(86, 4, 56, 4, 4, '11/01/2019', '20190111E980'),
(87, 4, 57, 2, 2, '11/01/2019', '20190111E980'),
(88, 4, 50, 2, 2, '11/01/2019', '20190111B0E3'),
(89, 4, 51, 1, 3, '11/01/2019', '20190111B0E3'),
(90, 4, 52, 3, 3, '11/01/2019', '20190111B0E3'),
(91, 4, 53, 4, 2, '11/01/2019', '20190111B0E3'),
(92, 4, 54, 1, 1, '11/01/2019', '20190111B0E3'),
(93, 4, 55, 3, 2, '11/01/2019', '20190111B0E3'),
(94, 4, 56, 4, 4, '11/01/2019', '20190111B0E3'),
(95, 4, 57, 2, 4, '11/01/2019', '20190111B0E3'),
(96, 4, 50, 2, 1, '11/01/2019', '201901116C8F'),
(97, 4, 51, 1, 4, '11/01/2019', '201901116C8F'),
(98, 4, 53, 4, 1, '11/01/2019', '201901116C8F'),
(99, 4, 54, 1, 3, '11/01/2019', '201901116C8F'),
(100, 4, 50, 2, 2, '11/01/2019', '2019011174DD'),
(101, 4, 51, 1, 2, '11/01/2019', '2019011174DD'),
(102, 4, 53, 4, 3, '11/01/2019', '2019011174DD'),
(103, 3, 50, 2, 4, '15/01/2019', '201901152F49'),
(104, 3, 50, 2, 3, '15/01/2019', '201901153238');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `district` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1= active , 0 = deactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branch_name`, `district`, `status`) VALUES
(1, 'Aurangabad', 4, 1),
(2, 'Kaij', 5, 1),
(3, 'Majalgaon', 5, 1),
(4, 'Beed', 5, 1),
(5, 'Ambajogai', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `center`
--

CREATE TABLE `center` (
  `id` int(11) NOT NULL,
  `branch` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `center`
--

INSERT INTO `center` (`id`, `branch`, `center_name`, `created_date`) VALUES
(2, 4, 'yeshwant polytehcnic', '2018-12-19 03:43:22'),
(3, 2, 'tambeshwar', '2018-12-19 03:42:46'),
(4, 2, 'Bhartiya Education Academy', '2018-12-20 18:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `class_name` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `class_name`, `created_date`) VALUES
(1, 'VIII', '2018-11-15 11:03:10'),
(2, 'IX', '2018-11-15 12:03:01'),
(3, 'X', '2018-11-15 12:02:54'),
(4, 'XI', '2018-11-15 12:02:54'),
(5, 'XII', '2018-11-15 12:03:46');

-- --------------------------------------------------------

--
-- Table structure for table `contest`
--

CREATE TABLE `contest` (
  `id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `contest_name` varchar(255) NOT NULL,
  `contest_title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `ctime` varchar(255) NOT NULL,
  `end_ctime` varchar(255) NOT NULL,
  `syllabus` text NOT NULL,
  `note` text NOT NULL,
  `cdate` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contest`
--

INSERT INTO `contest` (`id`, `plan_id`, `subject_id`, `contest_name`, `contest_title`, `description`, `ctime`, `end_ctime`, `syllabus`, `note`, `cdate`, `created_date`) VALUES
(6, 1, 2, 'NEET - The Master', 'The Master', 'This Contest is for XIIth standard students for preparing 12th board and NEET Exam', '08:00', '21:00', '', '', '2018-12-23', '2018-12-23 05:33:04'),
(7, 3, 5, 'The English Master', 'The Master', '', '08:00', '22:30', '', '', '2018-12-23', '2018-12-23 05:32:49'),
(8, 3, 5, 'The English Master', 'The Champions', '', '00:00', '23:59', '', '', '2018-12-23', '2018-12-23 05:32:41'),
(9, 1, 2, 'The NEET Wizard', 'The NEET Wizard', '', '08:00', '20:00', '', '', '2019-01-06', '2019-01-06 11:51:32'),
(10, 1, 4, 'TEST1', 'TEST1', 'TEST CONTEST', '08:00', '23:30', '', '', '2019-01-15', '2019-01-15 02:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `state_id` varchar(11) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `state_id`, `name`) VALUES
(1, 'Maharashtra', 'Ahmednagar'),
(2, 'Maharashtra', 'Akola'),
(3, 'Maharashtra', 'Amravati'),
(4, 'Maharashtra', 'Aurangabad'),
(5, 'Maharashtra', 'Beed'),
(6, 'Maharashtra', 'Bhandara'),
(7, 'Maharashtra', 'Buldhana'),
(8, 'Maharashtra', 'Chandrapur'),
(9, 'Maharashtra', 'Dhule'),
(10, 'Maharashtra', 'Gadchiroli'),
(11, 'Maharashtra', 'Gondia'),
(12, 'Maharashtra', 'Hingoli'),
(13, 'Maharashtra', 'Jalgaon'),
(14, 'Maharashtra', 'Jalna'),
(15, 'Maharashtra', 'Kolhapur'),
(16, 'Maharashtra', 'Latur'),
(17, 'Maharashtra', 'Mumbai City'),
(18, 'Maharashtra', 'Mumbai suburban'),
(19, 'Maharashtra', 'Nanded'),
(20, 'Maharashtra', 'Nandurbar'),
(21, 'Maharashtra', 'Nagpur'),
(22, 'Maharashtra', 'Nashik'),
(23, 'Maharashtra', 'Osmanabad'),
(24, 'Maharashtra', 'Parbhani'),
(25, 'Maharashtra', 'Pune'),
(26, 'Maharashtra', 'Raigad'),
(27, 'Maharashtra', 'Ratnagiri'),
(28, 'Maharashtra', 'Sangli'),
(29, 'Maharashtra', 'Satara'),
(30, 'Maharashtra', 'Sindhudurg'),
(31, 'Maharashtra', 'Solapur'),
(32, 'Maharashtra', 'Thane'),
(33, 'Maharashtra', 'Wardha'),
(34, 'Maharashtra', 'Washim'),
(35, 'Maharashtra', 'Yavatmal'),
(36, '', 'Palghar');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `landline` text NOT NULL,
  `address` text NOT NULL,
  `enquiry` text NOT NULL,
  `edate` text NOT NULL,
  `etime` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = not see yet , 1= viewnoti',
  `added_in_student_table_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = not added, 1= added'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `full_name`, `email`, `mobile`, `landline`, `address`, `enquiry`, `edate`, `etime`, `status`, `added_in_student_table_status`) VALUES
(1, 'JIVAN BOROLE', 'borolejivan@gmail.com', '9503809420', 'cxxzc', 'xcxzc', 'Which Std class is avilable ?', '28-11-2018', '07:43', 0, 0),
(2, 'Sandhya Shinde', 'sandhya@gmail.com', '1234567890', '022258569', 'Kaij', '', '23-12-2018', '11:09', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `noof_month` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `package_name`, `noof_month`, `created_date`) VALUES
(2, 'Grand', '6', '2018-11-15 10:24:21'),
(3, 'Monthly', '1', '2018-11-15 10:24:36'),
(4, 'Intermediate', '3', '2018-12-19 04:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `plan_name`, `status`, `created`) VALUES
(1, 'NEET', 1, '2018-11-20 17:55:36'),
(2, 'Urdu/Marathi/Semi', 1, '2018-12-19 03:43:58'),
(3, 'English', 1, '2018-12-19 03:43:45');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `cqid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `topic` text NOT NULL,
  `question` text NOT NULL,
  `answer` varchar(11) NOT NULL,
  `op1` text NOT NULL,
  `op2` text NOT NULL,
  `op3` text NOT NULL,
  `op4` text NOT NULL,
  `solution` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `cqid`, `cid`, `plan_id`, `subject_id`, `topic`, `question`, `answer`, `op1`, `op2`, `op3`, `op4`, `solution`) VALUES
(1, 1, 4, 2, 2, '1,2', 'What Is Limit In math?', '2', '1', '2', '3', '4', '44444'),
(2, 2, 4, 2, 2, '1,2', 'Q11', '1', '11', '22', '33', '44', '44444'),
(3, 3, 4, 2, 2, '5,6', 'Q1', '3', '1', '2', '3', '4', '44444'),
(4, 4, 4, 2, 2, '5,6', 'What Is Limit In math?2', '1', '33', '44', '55', '6', '44444'),
(5, 5, 4, 2, 2, '1,2,5,6', 'Q122', '2', '222', '22', '222', '22', '2222'),
(6, 6, 4, 2, 2, '1,2,5,6', '222', '1', '333', '444', '45', '555', '22225555'),
(7, 7, 4, 2, 2, '1,2,5,6', 'fdfdsfd', '1', 'dfdf', 'dsfd', 'dsfdsf', 'dfdf', 'fgdgfdgfd'),
(8, 8, 4, 2, 2, '1,2,5,6', 'bnnbn', '1', 'vbnbvn', 'nbnbv', 'bnbvn', 'nbvn', '2222bnbn'),
(9, 9, 4, 2, 2, '1,2,5,6', 'nbnmnv', '1', 'nnbn', 'bn', 'nb', 'bnbvn', '2222bvnbnbn'),
(10, 10, 4, 2, 2, '1,2,5,6', 'bnnbv', '1', 'nbvn', 'vbnbvn', 'nvbn', 'nbvn', '2222bnbnbn'),
(11, 11, 4, 2, 2, '1,2,5,6', 'bnbvn', '1', 'bnbvn', 'nbnb', 'nbvnbvn', 'nbbvn', '2222bnbnbn'),
(12, 12, 4, 2, 2, '1,2,5,6', 'nbvnb', '1', 'bnbvn', 'nnvbn', 'nvbnbvn', 'nbnbvn', '2222bnnbnbvnbnn'),
(13, 13, 4, 2, 2, '1,2,5,6', 'Q122', '2', '222', '22', '222', '22', '2222'),
(14, 14, 4, 2, 2, '1,2,5,6', '222', '1', '333', '444', '45', '555', '22225555'),
(15, 15, 4, 2, 2, '1,2,5,6', 'fdfdsfd', '1', 'dfdf', 'dsfd', 'dsfdsf', 'dfdf', 'fgdgfdgfd'),
(16, 16, 4, 2, 2, '1,2,5,6', 'bnnbn', '1', 'vbnbvn', 'nbnbv', 'bnbvn', 'nbvn', '2222bnbn'),
(17, 17, 4, 2, 2, '1,2,5,6', 'nbnmnv', '1', 'nnbn', 'bn', 'nb', 'bnbvn', '2222bvnbnbn'),
(18, 18, 4, 2, 2, '1,2,5,6', 'bnnbv', '1', 'nbvn', 'vbnbvn', 'nvbn', 'nbvn', '2222bnbnbn'),
(19, 19, 4, 2, 2, '1,2,5,6', 'bnbvn', '1', 'bnbvn', 'nbnb', 'nbvnbvn', 'nbbvn', '2222bnbnbn'),
(20, 20, 4, 2, 2, '1,2,5,6', 'nbvnb', '1', 'bnbvn', 'nnvbn', 'nvbnbvn', 'nbnbvn', '2222bnnbnbvnbnn'),
(21, 21, 4, 2, 2, '1,2,5,6', 'Q122', '2', '222', '22', '222', '22', '2222'),
(23, 23, 4, 2, 2, '1,2,5,6', 'fdfdsfd', '1', 'dfdf', 'dsfd', 'dsfdsf', 'dfdf', 'fgdgfdgfd'),
(24, 24, 4, 2, 2, '1,2,5,6', 'bnnbn', '1', 'vbnbvn', 'nbnbv', 'bnbvn', 'nbvn', '2222bnbn'),
(25, 25, 4, 2, 2, '1,2,5,6', 'nbnmnv', '1', 'nnbn', 'bn', 'nb', 'bnbvn', '2222bvnbnbn'),
(26, 26, 4, 2, 2, '1,2,5,6', 'bnnbv', '1', 'nbvn', 'vbnbvn', 'nvbn', 'nbvn', '2222bnbnbn'),
(27, 27, 4, 2, 2, '1,2,5,6', 'bnbvn', '1', 'bnbvn', 'nbnb', 'nbvnbvn', 'nbbvn', '2222bnbnbn'),
(28, 28, 4, 2, 2, '1,2,5,6', 'nbvnb', '1', 'bnbvn', 'nnvbn', 'nvbnbvn', 'nbnbvn', '2222bnnbnbvnbnn'),
(29, 1, 5, 1, 3, '4', 'xzx', '1', 'xzXz', 'zxz', 'zxZ', 'xzX', 'zXzX'),
(30, 2, 5, 1, 3, '4', 'retr', '1', 'retre', 'ttre', 'tr', 'retre', 'retret'),
(31, 1, 6, 1, 2, '6', 'what is your name', '4', 'a', 'b', 'c', 'd', 'Its always a'),
(32, 2, 6, 1, 2, '6', 'what is the day today', '4', 'mon', 'tue', 'wed', 'FRI', 'Today is wednesday'),
(33, 3, 6, 1, 2, '6', 'how many days in a week', '3', '5', '6', '7', '8', 'A week consists of 7 days'),
(34, 4, 6, 1, 2, '6', 'how many days in a year', '2', '360', '365', '365.25', '366', 'Sun takes 365.25 days to complete one revolution.'),
(35, 5, 6, 1, 2, '6', 'how many days in a month', '3', '32', '31', '30', 'it depends', 'Months can have different number of days.'),
(36, 6, 6, 1, 2, '2', 'how are you', '1', 'fine', 'good', 'better', 'very good', 'We are always fine'),
(37, 1, 7, 3, 5, '8', 'How many tenses', '1', '12', '8', '6', '10', 'There are total 12 Tenses in English Grammar'),
(38, 1, 8, 3, 5, '9', 'Which of these is a part of speech', '1', 'noun', 'article', 'degree', 'none', 'Noun is a part of Speech.'),
(39, 1, 9, 1, 2, '6', 'What is the S.I unit of Mass', '2', 'kg', 'metre', 'gram', 'None of these', ''),
(42, 4, 9, 1, 2, '5,6', 'Which one of following is not the vector quantity', '3', 'torque', 'displacement', 'velocity', 'speed', ''),
(50, 1, 10, 1, 4, '12', 'The nucleus of an atom consists of', '2', 'electrons and neutrons', 'electrons and protons', 'protons and neutrons', 'All of the above', 'Nucleus of an atom consists of nucleons i.e., sum of protons and nucleus. Electrons are negative charged particles that revolve around the nucleus which has positive charge.'),
(51, 2, 10, 1, 4, '12', 'The number of moles of solute present in 1 kg of a solvent is called its', '1', 'molality', 'molarity', 'normality', 'formality', 'Molality is defined as the ration of the no of grams moles of solute per kg of solvent'),
(52, 3, 10, 1, 4, '12', 'The most electronegative element among the following is', '3', 'sodium', 'bromine', 'fluorine', 'oxygen', 'If florine is small in size then what about oxygen itz atomic no is 8. Compared to florin oxygen is small.'),
(53, 4, 10, 1, 4, '12', 'The metal used to recover copper from a solution of copper sulphate is', '4', 'Na', 'Ag', 'Hg', 'Fe', 'Fe recover copper becoz the iron lyes below in the electromegnatic table'),
(54, 5, 10, 1, 4, '12', 'The metallurgical process in which a metal is obtained in a fused state is called', '1', 'smelting', 'roasting', 'calcinations', 'froth floatation', 'Smelting uses heat and a chemical reducing agent to change the oxidation state of the metal ore; the reducing agent is commonly a source of carbon such as coke, or in earlier times charcoal'),
(55, 6, 10, 1, 4, '12', 'The most commonly used bleaching agent is', '3', 'alcohol', 'carbon dioxide', 'chlorine', 'sodium chlorine', 'Bleaching powder is used in cleaning agent that the formula of CaOCl2. The chlorine was highly react and clean the microorganisms. Damage of cloth is used in bleaching agent.'),
(56, 7, 10, 1, 4, '12', 'The heat required to raise the temperature of body by 1 K is called', '4', 'specific heat', 'thermal capacity', 'water equivalent', 'None of the above', 'The quantity of heat necessary to produce a unit change of temperature in a unit mass of a substance. In SI, the unit is to the joule per kilogram kelvin (J/kg-K).'),
(57, 8, 10, 1, 4, '12', 'Q1', '2', '1', '22', '3', '4', '4');

-- --------------------------------------------------------

--
-- Table structure for table `question_topic`
--

CREATE TABLE `question_topic` (
  `id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `contest_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_topic`
--

INSERT INTO `question_topic` (`id`, `plan_id`, `subject_id`, `contest_id`, `topic_id`) VALUES
(17, 1, 3, 5, 4),
(18, 1, 2, 6, 6),
(19, 1, 2, 6, 2),
(20, 3, 5, 7, 8),
(21, 3, 5, 8, 9),
(22, 1, 2, 9, 6),
(23, 1, 2, 9, 5),
(24, 1, 2, 9, 6),
(25, 1, 4, 10, 12),
(26, 1, 4, 10, 12),
(27, 1, 4, 10, 12);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(8) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`) VALUES
(1, 'Andaman and Nicobar (AN)'),
(2, 'Andhra Pradesh (AP)'),
(3, 'Arunachal Pradesh (AR)'),
(4, 'Assam (AS)'),
(5, 'Bihar (BR)'),
(6, 'Chandigarh (CH)'),
(7, 'Chhattisgarh (CG)'),
(8, 'Dadra and Nagar Haveli (DN)'),
(9, 'Daman and Diu (DD)'),
(10, 'Delhi (DL)'),
(11, 'Goa (GA)'),
(12, 'Gujarat (GJ)'),
(13, 'Haryana (HR)'),
(14, 'Himachal Pradesh (HP)'),
(15, 'Jammu and Kashmir (JK)'),
(16, 'Jharkhand (JH)'),
(17, 'Karnataka (KA)'),
(18, 'Kerala (KL)'),
(19, 'Lakshdweep (LD)'),
(20, 'Madhya Pradesh (MP)'),
(21, 'Maharashtra (MH)'),
(22, 'Manipur (MN)'),
(23, 'Meghalaya (ML)'),
(24, 'Mizoram (MZ)'),
(25, 'Nagaland (NL)'),
(26, 'Odisha (OD)'),
(27, 'Puducherry (PY)'),
(28, 'Punjab (PB)'),
(29, 'Rajasthan (RJ)'),
(30, 'Sikkim (SK)'),
(31, 'Tamil Nadu (TN)'),
(32, 'Tripura (TR)'),
(33, 'Uttar Pradesh (UP)'),
(34, 'Uttarakhand (UK)'),
(35, 'West Bengal (WB)');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT '0',
  `package_id` varchar(255) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `contest_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `landline` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `school_name` text NOT NULL,
  `school_address` text NOT NULL,
  `standard` text NOT NULL,
  `coaching_class_name` text NOT NULL,
  `rdate` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `package_status` int(11) NOT NULL DEFAULT '1' COMMENT '1=enable,0=disable',
  `created_id` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `active_status`, `package_id`, `branch_id`, `center_id`, `plan_id`, `subject_id`, `contest_id`, `full_name`, `father_name`, `mobile`, `landline`, `email`, `gender`, `address`, `school_name`, `school_address`, `standard`, `coaching_class_name`, `rdate`, `photo`, `username`, `password`, `package_status`, `created_id`) VALUES
(3, 0, 'all', 2, 4, 3, 5, 7, 'Mohammed Ali', 'Javed', '9664343312', '', 'ihaan@ihaantechnologies.com', 'Male', 'Roza Mohalla, Kaij', 'Little Angels', 'Beed road, Kaij', '3', 'Bhartiya Education Academy', '21-12-2018', 'Uploads/30d6811a6c3dea9b5e5769a3c5e092be.jpg', 'borolejivan', '123456', 1, '2019-01-14 02:30:12'),
(4, 0, 'all', 2, 4, 1, 3, 0, 'Surekha Daithankar', 'Pradeep', '9766076688', '', 'Daithankar Surekha@gmail.com', 'Female', 'Near Fino Bank,mangalwar Peth,Tq.Kaij,Dist:Beed', 'Yogeshwari College Ambajogai', 'Ambajogai', '5', '', '21-12-2018', '', 'su2nii4', 'xdysif', 1, '2018-12-22 17:19:59'),
(5, 0, 'all', 2, 4, 1, 3, 6, 'Sakshi Mane', 'Satish', '9075957070', '', '', 'Female', 'Near Sujata Medical,Kandi Road,Kaij.Dist; Beed', 'Vasant Vidhyalaya ,Kaij', 'Kaij', '5', '', '21-12-2018', '', 'saz6eh5', '1n17uq', 1, '2018-12-22 17:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `plan_id`, `subject_name`, `created_date`) VALUES
(1, 2, 'English Low', '2018-12-19 03:45:23'),
(2, 1, 'Biology', '2018-12-19 03:44:54'),
(3, 1, 'Physics', '2018-12-19 03:44:36'),
(4, 1, 'Chemistry', '2018-11-21 17:58:48'),
(5, 3, 'English high', '2018-12-19 03:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `topic_name` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `subject_id`, `topic_name`, `created`) VALUES
(1, 2, 'New1', '2018-11-22 03:12:05'),
(2, 2, 'New12', '2018-11-22 03:30:17'),
(3, 3, 'm1', '2018-11-22 03:30:27'),
(4, 3, 'm2', '2018-11-22 03:30:35'),
(5, 2, 'ZoologyZoologyZoologyZoologyZoologyZoology', '2018-11-27 17:12:45'),
(6, 2, 'Cells and Membranes', '2018-12-19 03:46:28'),
(7, 3, 'Units and Measurement', '2018-12-19 03:46:08'),
(8, 5, 'Tenses', '2018-12-20 18:58:51'),
(9, 5, 'Parts of speech', '2018-12-20 18:59:00'),
(10, 5, 'Degree of Comparison', '2018-12-20 18:59:19'),
(11, 5, 'Figures of Speech', '2018-12-20 18:59:34'),
(12, 4, 'TEST TOPIC', '2019-01-11 03:33:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `center`
--
ALTER TABLE `center`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contest`
--
ALTER TABLE `contest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_topic`
--
ALTER TABLE `question_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `center`
--
ALTER TABLE `center`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contest`
--
ALTER TABLE `contest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `question_topic`
--
ALTER TABLE `question_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
