-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2019 at 06:20 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recruitment_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `application_status`
--

CREATE TABLE `application_status` (
  `j_id` int(11) NOT NULL,
  `applicant_status` text NOT NULL COMMENT 'staus : {     0 : applied,     1 : accepted,     2 : rejected,     3 : on_hold, } {     ("uid","100") : {         "status" : "2",          "knockout_questions" : "score",         "maths" : "score",         "english" : "score",         "programming" : "score",         "aptitude" : "score",         "cv_rank" : "rank",         "total_rank" : "rank"     } }'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application_status`
--

INSERT INTO `application_status` (`j_id`, `applicant_status`) VALUES
(1, '{1016 : {\'status\' : \'0\', \'knockout_score\' : \'8\', \'score\' : \'8\', \'cv_rank\' : \'7\', \'total_rank\' : \'7.67\'} , 1029 : {\'status\' : \'0\', \'knockout_score\' : \'14\', \'score\' : \'10\', \'cv_rank\' : \'6\', \'total_rank\' : \'10\'},1050 : {\'status\' : \'0\', \'knockout_score\' : \'20\', \'score\' : \'8\', \'cv_rank\' : \'8\', \'total_rank\' : \'12\'} }'),
(2, '{1003 : {\'status\' : \'0\', \'knockout_score\' : \'9\', \'score\' : \'8\', \'cv_rank\' : \'7\', \'total_rank\' : \'8\'} , 1025 : {\'status\' : \'0\', \'knockout_score\' : \'6\', \'score\' : \'10\', \'cv_rank\' : \'6\', \'total_rank\' : \'7.33\'},1044 : {\'status\' : \'0\', \'knockout_score\' : \'20\', \'score\' : \'8\', \'cv_rank\' : \'8\', \'total_rank\' : \'12\'} }'),
(3, '{1007 : {\'status\' : \'0\', \'knockout_score\' : \'8\', \'score\' : \'8\', \'cv_rank\' : \'7\', \'total_rank\' : \'7.67\'} , 1036 : {\'status\' : \'0\', \'knockout_score\' : \'14\', \'score\' : \'10\', \'cv_rank\' : \'6\', \'total_rank\' : \'10\'},1049 : {\'status\' : \'0\', \'knockout_score\' : \'20\', \'score\' : \'8\', \'cv_rank\' : \'8\', \'total_rank\' : \'12\'} }'),
(4, '{1009 : {\'status\' : \'0\', \'knockout_score\' : \'13\', \'score\' : \'8\', \'cv_rank\' : \'7\', \'total_rank\' : \'9.33\'} , 1026 : {\'status\' : \'0\', \'knockout_score\' : \'14\', \'score\' : \'10\', \'cv_rank\' : \'6\', \'total_rank\' : \'10\'},1046 : {\'status\' : \'0\', \'knockout_score\' : \'20\', \'score\' : \'8\', \'cv_rank\' : \'8\', \'total_rank\' : \'12\'} }'),
(5, '{1005 : {\'status\' : \'0\', \'knockout_score\' : \'8\', \'score\' : \'8\', \'cv_rank\' : \'7\', \'total_rank\' : \'7.67\'} , 1037 : {\'status\' : \'0\', \'knockout_score\' : \'14\', \'score\' : \'10\', \'cv_rank\' : \'6\', \'total_rank\' : \'10\'},1041 : {\'status\' : \'0\', \'knockout_score\' : \'20\', \'score\' : \'8\', \'cv_rank\' : \'8\', \'total_rank\' : \'12\'} }'),
(6, '{1005 : {\'status\' : \'0\', \'knockout_score\' : \'9\', \'score\' : \'8\', \'cv_rank\' : \'7\', \'total_rank\' : \'8\'} , 1032 : {\'status\' : \'0\', \'knockout_score\' : \'6\', \'score\' : \'10\', \'cv_rank\' : \'6\', \'total_rank\' : \'7.33\'},1050 : {\'status\' : \'0\', \'knockout_score\' : \'20\', \'score\' : \'8\', \'cv_rank\' : \'8\', \'total_rank\' : \'12\'} }'),
(7, '{1007 : {\'status\' : \'0\', \'knockout_score\' : \'8\', \'score\' : \'8\', \'cv_rank\' : \'7\', \'total_rank\' : \'7.67\'} , 1024 : {\'status\' : \'0\', \'knockout_score\' : \'14\', \'score\' : \'10\', \'cv_rank\' : \'6\', \'total_rank\' : \'10\'},1049 : {\'status\' : \'0\', \'knockout_score\' : \'20\', \'score\' : \'8\', \'cv_rank\' : \'8\', \'total_rank\' : \'12\'} }'),
(8, '{1001 : {\'status\' : \'0\', \'knockout_score\' : \'13\', \'score\' : \'8\', \'cv_rank\' : \'7\', \'total_rank\' : \'9.33\'} , 1038 : {\'status\' : \'0\', \'knockout_score\' : \'14\', \'score\' : \'10\', \'cv_rank\' : \'6\', \'total_rank\' : \'10\'},1045 : {\'status\' : \'0\', \'knockout_score\' : \'20\', \'score\' : \'8\', \'cv_rank\' : \'8\', \'total_rank\' : \'12\'} }'),
(9, '{1010 : {\'status\' : \'0\', \'knockout_score\' : \'8\', \'score\' : \'8\', \'cv_rank\' : \'7\', \'total_rank\' : \'7.67\'} , 1030 : {\'status\' : \'0\', \'knockout_score\' : \'14\', \'score\' : \'10\', \'cv_rank\' : \'6\', \'total_rank\' : \'10\'},1044 : {\'status\' : \'0\', \'knockout_score\' : \'20\', \'score\' : \'8\', \'cv_rank\' : \'8\', \'total_rank\' : \'12\'} }'),
(10, '{1012 : {\'status\' : \'0\', \'knockout_score\' : \'9\', \'score\' : \'8\', \'cv_rank\' : \'7\', \'total_rank\' : \'8\'} , 1040 : {\'status\' : \'0\', \'knockout_score\' : \'6\', \'score\' : \'10\', \'cv_rank\' : \'6\', \'total_rank\' : \'7.33\'},1049 : {\'status\' : \'0\', \'knockout_score\' : \'20\', \'score\' : \'8\', \'cv_rank\' : \'8\', \'total_rank\' : \'12\'} }');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `c_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` text,
  `email_id` varchar(300) NOT NULL,
  `alternative_email_id` text COMMENT 'JSON {"email_id1", "email_id2"}',
  `contact` bigint(20) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`c_id`, `name`, `address`, `email_id`, `alternative_email_id`, `contact`, `description`) VALUES
(1, 'Company1', 'Company1, Mumbai', 'Company1@gmail.com', NULL, 7955087072, 'Company1 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(2, 'Company2', 'Company2, Mumbai', 'Company2@gmail.com', NULL, 8597859869, 'Company2 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(3, 'Company3', 'Company3, Mumbai', 'Company3@gmail.com', NULL, 8950318407, 'Company3 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(4, 'Company4', 'Company4, Mumbai', 'Company4@gmail.com', NULL, 8806514521, 'Company4 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(5, 'Company5', 'Company5, Delhi', 'Company5@gmail.com', 'Company5@testmail.com', 8176880788, 'Company5 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(6, 'Company6', 'Company6, Delhi', 'Company6@gmail.com', NULL, 8238138965, 'Company6 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(7, 'Company7', 'Company7, Mumbai', 'Company7@gmail.com', NULL, 8510880928, 'Company7 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(8, 'Company8', 'Company8, Mumbai', 'Company8@gmail.com', NULL, 8600508640, 'Company8 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(9, 'Company9', 'Company9, Mumbai', 'Company9@gmail.com', NULL, 8166468378, 'Company9 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(10, 'Company10', 'Company10, Delhi', 'Company10@gmail.com', 'Company10@testmail.com', 7893752805, 'Company10 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(11, 'Company11', 'Company11, Delhi', 'Company11@gmail.com', NULL, 7968280629, 'Company11 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(12, 'Company12', 'Company12, Mumbai', 'Company12@gmail.com', NULL, 7784711385, 'Company12 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(13, 'Company13', 'Company13, Mumbai', 'Company13@gmail.com', NULL, 8158616854, 'Company13 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(14, 'Company14', 'Company14, Delhi', 'Company14@gmail.com', NULL, 8682962005, 'Company14 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(15, 'Company15', 'Company15, Mumbai', 'Company15@gmail.com', 'Company15@testmail.com', 7815812280, 'Company15 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(16, 'Company16', 'Company16, Delhi', 'Company16@gmail.com', NULL, 8572400293, 'Company16 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(17, 'Company17', 'Company17, Delhi', 'Company17@gmail.com', NULL, 8357664666, 'Company17 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(18, 'Company18', 'Company18, Delhi', 'Company18@gmail.com', NULL, 8792988738, 'Company18 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(19, 'Company19', 'Company19, Mumbai', 'Company19@gmail.com', NULL, 8923096281, 'Company19 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(20, 'Company20', 'Company20, Mumbai', 'Company20@gmail.com', 'Company20@testmail.com', 7966259277, 'Company20 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(21, 'Company21', 'Company21, Delhi', 'Company21@gmail.com', NULL, 7832610262, 'Company21 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(22, 'Company22', 'Company22, Delhi', 'Company22@gmail.com', NULL, 8697710458, 'Company22 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(23, 'Company23', 'Company23, Delhi', 'Company23@gmail.com', NULL, 8821667815, 'Company23 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(24, 'Company24', 'Company24, Mumbai', 'Company24@gmail.com', NULL, 8489400504, 'Company24 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(25, 'Company25', 'Company25, Mumbai', 'Company25@gmail.com', 'Company25@testmail.com', 8610482207, 'Company25 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `j_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `requirements` text NOT NULL COMMENT '{     "designation" : "desg",     "description" : "descp",     "skills" : ("skill1", "skill2", "skilln"),     "experience" : "exp",     "qualification" : ("HSC", "SSC" ,"BSc"), }',
  `no_of_vacancies` int(11) NOT NULL,
  `threshold_value` double NOT NULL,
  `last_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`j_id`, `c_id`, `requirements`, `no_of_vacancies`, `threshold_value`, `last_date`) VALUES
(1, 9, '{\'designation\' : \'Project Manager\',\'description\' : \'descp1\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'4years\', \'qualification\' : \'(\'HSC\')\'}', 7, 8, '2019-12-16'),
(2, 7, '{\'designation\' : \'Project Manager\',\'description\' : \'descp2\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'5years\', \'qualification\' : \'(\'HSC\')\'}', 10, 8, '2019-12-20'),
(3, 6, '{\'designation\' : \'Department Head\',\'description\' : \'descp3\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'6years\', \'qualification\' : \'(\'HSC\')\'}', 5, 18, '2019-12-17'),
(4, 21, '{\'designation\' : \'Project Manager\',\'description\' : \'descp4\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'1years\', \'qualification\' : \'(\'HSC\')\'}', 6, 14, '2019-09-27'),
(5, 16, '{\'designation\' : \'Department Head\',\'description\' : \'descp5\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'6years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 1, 17, '2019-11-21'),
(6, 10, '{\'designation\' : \'Department Head\',\'description\' : \'descp6\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'2years\', \'qualification\' : \'(\'HSC\')\'}', 9, 15, '2019-11-22'),
(7, 7, '{\'designation\' : \'Project Manager\',\'description\' : \'descp7\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'5years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 3, 18, '2019-08-15'),
(8, 20, '{\'designation\' : \'Department Head\',\'description\' : \'descp8\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'5years\', \'qualification\' : \'(\'HSC\')\'}', 9, 8, '2019-11-12'),
(9, 7, '{\'designation\' : \'Project Manager\',\'description\' : \'descp9\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'4years\', \'qualification\' : \'(\'HSC\')\'}', 10, 8, '2019-08-29'),
(10, 17, '{\'designation\' : \'Project Manager\',\'description\' : \'descp10\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'3years\', \'qualification\' : \'(\'HSC\')\'}', 1, 17, '2019-09-25'),
(11, 16, '{\'designation\' : \'Department Head\',\'description\' : \'descp11\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'2years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 8, 15, '2019-08-27'),
(12, 10, '{\'designation\' : \'Department Head\',\'description\' : \'descp12\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'2years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 7, 10, '2019-10-13'),
(13, 22, '{\'designation\' : \'Department Head\',\'description\' : \'descp13\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'1years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 10, 11, '2019-11-24'),
(14, 6, '{\'designation\' : \'Department Head\',\'description\' : \'descp14\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'2years\', \'qualification\' : \'(\'HSC\')\'}', 9, 17, '2019-12-26'),
(15, 25, '{\'designation\' : \'Project Manager\',\'description\' : \'descp15\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'6years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 2, 17, '2019-09-14'),
(16, 2, '{\'designation\' : \'Department Head\',\'description\' : \'descp16\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'4years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 10, 18, '2019-12-25'),
(17, 10, '{\'designation\' : \'Department Head\',\'description\' : \'descp17\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'6years\', \'qualification\' : \'(\'HSC\')\'}', 7, 17, '2019-11-25'),
(18, 4, '{\'designation\' : \'Department Head\',\'description\' : \'descp18\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'2years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 7, 9, '2019-11-18'),
(19, 17, '{\'designation\' : \'Project Manager\',\'description\' : \'descp19\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'5years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 3, 15, '2019-09-19'),
(20, 23, '{\'designation\' : \'Project Manager\',\'description\' : \'descp20\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'5years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 5, 9, '2019-11-25'),
(21, 3, '{\'designation\' : \'Project Manager\',\'description\' : \'descp21\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'1years\', \'qualification\' : \'(\'HSC\')\'}', 7, 17, '2019-12-24'),
(22, 1, '{\'designation\' : \'Project Manager\',\'description\' : \'descp22\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'6years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 1, 8, '2019-09-13'),
(23, 16, '{\'designation\' : \'Department Head\',\'description\' : \'descp23\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'1years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 6, 20, '2019-11-13'),
(24, 22, '{\'designation\' : \'Department Head\',\'description\' : \'descp24\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'6years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 7, 12, '2019-08-16'),
(25, 7, '{\'designation\' : \'Project Manager\',\'description\' : \'descp25\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'1years\', \'qualification\' : \'(\'HSC\')\'}', 2, 15, '2019-11-17'),
(26, 24, '{\'designation\' : \'Department Head\',\'description\' : \'descp26\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'6years\', \'qualification\' : \'(\'HSC\')\'}', 4, 18, '2019-11-26'),
(27, 23, '{\'designation\' : \'Project Manager\',\'description\' : \'descp27\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'0years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 3, 20, '2019-10-23'),
(28, 9, '{\'designation\' : \'Project Manager\',\'description\' : \'descp28\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'3years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 4, 17, '2019-10-11'),
(29, 2, '{\'designation\' : \'Department Head\',\'description\' : \'descp29\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'4years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 4, 17, '2019-11-20'),
(30, 7, '{\'designation\' : \'Project Manager\',\'description\' : \'descp30\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'6years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 5, 13, '2019-12-19'),
(31, 23, '{\'designation\' : \'Project Manager\',\'description\' : \'descp31\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'5years\', \'qualification\' : \'(\'HSC\')\'}', 8, 11, '2019-08-24'),
(32, 21, '{\'designation\' : \'Project Manager\',\'description\' : \'descp32\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'5years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 6, 8, '2019-12-25'),
(33, 13, '{\'designation\' : \'Project Manager\',\'description\' : \'descp33\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'6years\', \'qualification\' : \'(\'HSC\')\'}', 3, 20, '2019-09-23'),
(34, 4, '{\'designation\' : \'Department Head\',\'description\' : \'descp34\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'2years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 3, 15, '2019-09-20'),
(35, 12, '{\'designation\' : \'Department Head\',\'description\' : \'descp35\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'3years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 5, 19, '2019-08-14'),
(36, 11, '{\'designation\' : \'Project Manager\',\'description\' : \'descp36\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'5years\', \'qualification\' : \'(\'HSC\')\'}', 9, 14, '2019-12-25'),
(37, 19, '{\'designation\' : \'Project Manager\',\'description\' : \'descp37\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'1years\', \'qualification\' : \'(\'HSC\')\'}', 4, 15, '2019-12-18'),
(38, 9, '{\'designation\' : \'Project Manager\',\'description\' : \'descp38\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'5years\', \'qualification\' : \'(\'HSC\')\'}', 10, 16, '2019-10-26'),
(39, 12, '{\'designation\' : \'Department Head\',\'description\' : \'descp39\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'1years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 7, 20, '2019-11-21'),
(40, 7, '{\'designation\' : \'Project Manager\',\'description\' : \'descp40\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'3years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 4, 15, '2019-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `j_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `questions` text NOT NULL COMMENT '{     "type1" : {         "question1" : {             (("option1", "option2", "option3", "option4"), "answer") , "marks"         },         "question2" : {             (("option1", "option2", "option3", "option4"), "answer") , "marks"         }     },     "type2" : {         "question1" : {             (("option1", "option2", "option3", "option4"), "answer") , "marks"         },         "question2" : {             (("option1", "option2", "option3", "option4"), "answer") , "marks"         }     } }',
  `knockout_questions` text COMMENT '{     "question1" : (("answer1", "weight1"), ("answer2", "weight2")),     "question2" : (("answer1", "weight1"), ("answer2", "weight2")), }'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`j_id`, `c_id`, `questions`, `knockout_questions`) VALUES
(1, 9, '{\'aptitude \' : {\'A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?\':((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')},\'programming\':{\'Which one of these lists contains only Java programming language keywords?\':((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')}, \'maths\':{\'The average of first 50 natural numbers is\':()},\'english\':{\'Extreme old age when a man behaves like a fool\':((\'(\'Superannuation\', \'Imbecility\', \'Dotage\', \'Youth\')\', \'Dotage\') , \'2\')},\'other\' : {\'artificial intelligence\':{\'What is the term used for describing the judgemental or commonsense part of the problem solving?\':((\'(\'Value Based\', \'Critical\', \'Analytical\', \'Heurisitic\')\', \'Heurisitic\') , \'2\')}}, \'time\' : \'45\'}', '{\'Are you willing to travel/relocate for work ?\':((\'Yes\', \'10\'),(\'No\', \'-1\'),(\'Maybe\',\'4\')),\'Do you have BSc/BTech Degree ?\':((\'Yes\', \'10\'),(\'No\', \'-2\'))}'),
(2, 7, '{\'aptitude \' : {\'3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?\':((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')},\'programming\':{\'What is (void*)0?\':((\'(\'Representation of NULL pointer\', \'Representation of void pointer\', \'Error\', \'None of above\')\', \'Representation of NULL pointer\') , \'2\')}, \'maths\':{\'A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to\':()},\'english\':{\'Fate smiles ____ those who untiringly grapple with stark realities of life.\':((\'(\'with\', \'on\', \'over\', \'round\')\', \'on\') , \'2\')},\'other\' : {\'artificial intelligence\':{\'What was originally called the \"imitation game\" by its creator?\':((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')}}, \'time\' : \'30\'}', '{\'Are you willing to submit a drug test ?\':((\'Yes\', \'10\'),(\'No\', \'-1\'),(\'Maybe\',\'4\')),\'How do you rate your skills of Java ?\':((\'Beginner\', \'2\'),(\'Intermediate\', \'5\'),(\'Advanced\',\'10\'))}'),
(3, 6, '{\'aptitude \' : {\'A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?\':((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')},\'programming\':{\'Which is the valid declarations within an interface definition?\':((\'(\'public double methoda();\', \'public final double methoda();\', \'static void methoda(double d1);\', \'protected void methoda(double d1);\')\', \'public double methoda();\') , \'2\')}, \'maths\':{\'The number of 3-digit numbers divisible by 6, is\':()},\'english\':{\'Extreme old age when a man behaves like a fool\':()},\'other\' : {\'system analysis and design\':{\'The primary tool used in structured design is a:\':((\'(\'module\', \'program chart\', \'data-flow diagram\', \'Structure Chart\')\', \'Structure Chart\') , \'2\')}},\'time\' : \'30\'}', '{\'Can you concentrate in a loud environment ?\':((\'Yes\', \'10\'),(\'No\', \'-1\'),(\'Not so well\',\'2\'),(\'A litlle\',\'4\')),\'Do you have BSc/BTech Degree ?\':((\'Yes\', \'10\'),(\'No\', \'-2\'))}'),
(4, 21, '{\'aptitude \' : {\'3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?\':((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')},\'programming\':{\'Which one of these lists contains only Java programming language keywords?\':((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')}, \'maths\':{\'The average of first 50 natural numbers is\':()},\'english\':{\'Fate smiles ____ those who untiringly grapple with stark realities of life.\':()},\'other\' : {\'database systems\':{\'Which of the following is not a logical database structure?\':((\'(\'Network\', \'Tree\', \'Chart\', \'None of the above\')\', \'Chart\') , \'2\')}},\'time\' : \'30\'}', '{\'How well do you adapt to change ?\':((\'Very well\', \'10\'), (\'Not so well\', \'3\'), (\'Average\', \'7\'), (\'Can\'t adapt at all\', \'-2\')),\'How do you rate your skills of Java ?\':((\'Beginner\', \'2\'),(\'Intermediate\', \'5\'),(\'Advanced\',\'10\'))}'),
(5, 16, '{\'aptitude \' : {\'A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?\':((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')},\'programming\':{\'What is (void*)0?\':((\'(\'Representation of NULL pointer\', \'Representation of void pointer\', \'Error\', \'None of above\')\', \'Representation of NULL pointer\') , \'2\')}, \'maths\':{\'A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to\':()},\'english\':{\'Extreme old age when a man behaves like a fool\':()},\'other\' : {\'database systems\':{\'Primitive operations common to all record management systems include\':((\'(\'Look-up\', \'Print\', \'sort\', \'all of the above\')\', \'Look-up\') , \'2\')}}, \'time\' : \'30\'}', '{\'Are you willing to travel/relocate for work ?\':((\'Yes\', \'10\'),(\'No\', \'-1\'),(\'Maybe\',\'4\')),\'Do you have BSc/BTech Degree ?\':((\'Yes\', \'10\'),(\'No\', \'-2\'))}'),
(6, 10, '{\'aptitude \' : {\'3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?\':((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')},\'programming\':{\'Which is the valid declarations within an interface definition?\':((\'(\'public double methoda();\', \'public final double methoda();\', \'static void methoda(double d1);\', \'protected void methoda(double d1);\')\', \'public double methoda();\') , \'2\')}, \'maths\':{\'The number of 3-digit numbers divisible by 6, is\':()},\'english\':{\'Fate smiles ____ those who untiringly grapple with stark realities of life.\':()},\'other\' : {\'artificial intelligence\':{\'What is the term used for describing the judgemental or commonsense part of the problem solving?\':((\'(\'Value Based\', \'Critical\', \'Analytical\', \'Heurisitic\')\', \'Heurisitic\') , \'2\')}},\'time\' : \'30\'}', '{\'Are you willing to submit a drug test ?\':((\'Yes\', \'10\'),(\'No\', \'-1\'),(\'Maybe\',\'4\')),\'How do you rate your skills of Java ?\':((\'Beginner\', \'2\'),(\'Intermediate\', \'5\'),(\'Advanced\',\'10\'))}'),
(7, 7, '{\'aptitude \' : {\'A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?\':((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')},\'programming\':{\'Which one of these lists contains only Java programming language keywords?\':((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')}, \'maths\':{\'The average of first 50 natural numbers is\':()},\'english\':{\'Extreme old age when a man behaves like a fool\':()},\'other\' : {\'artificial intelligence\':{\'What was originally called the \"imitation game\" by its creator?\':((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')}},\'time\' : \'30\'}', '{\'Can you concentrate in a loud environment ?\':((\'Yes\', \'10\'),(\'No\', \'-1\'),(\'Not so well\',\'2\'),(\'A litlle\',\'4\')),\'Do you have BSc/BTech Degree ?\':((\'Yes\', \'10\'),(\'No\', \'-2\'))}'),
(8, 20, '{\'aptitude \' : {\'3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?\':((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')},\'programming\':{\'What is (void*)0?\':((\'(\'Representation of NULL pointer\', \'Representation of void pointer\', \'Error\', \'None of above\')\', \'Representation of NULL pointer\') , \'2\')}, \'maths\':{\'A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to\':()},\'english\':{\'Fate smiles ____ those who untiringly grapple with stark realities of life.\':()},\'other\' : {\'system analysis and design\':{\'The primary tool used in structured design is a:\':((\'(\'module\', \'program chart\', \'data-flow diagram\', \'Structure Chart\')\', \'Structure Chart\') , \'2\')}},\'time\' : \'30\'}', '{\'How well do you adapt to change ?\':((\'Very well\', \'10\'), (\'Not so well\', \'3\'), (\'Average\', \'7\'), (\'Can\'t adapt at all\', \'-2\')),\'How do you rate your skills of Java ?\':((\'Beginner\', \'2\'),(\'Intermediate\', \'5\'),(\'Advanced\',\'10\'))}'),
(9, 7, '{\'aptitude \' : {\'A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?\':((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')},\'programming\':{\'Which is the valid declarations within an interface definition?\':((\'(\'public double methoda();\', \'public final double methoda();\', \'static void methoda(double d1);\', \'protected void methoda(double d1);\')\', \'public double methoda();\') , \'2\')}, \'maths\':{\'The number of 3-digit numbers divisible by 6, is\':()},\'english\':{\'Extreme old age when a man behaves like a fool\':()},\'other\' : {\'database systems\':{\'Which of the following is not a logical database structure?\':((\'(\'Network\', \'Tree\', \'Chart\', \'None of the above\')\', \'Chart\') , \'2\')}},\'time\' : \'30\'}', '{\'Are you willing to travel/relocate for work ?\':((\'Yes\', \'10\'),(\'No\', \'-1\'),(\'Maybe\',\'4\')),\'Do you have BSc/BTech Degree ?\':((\'Yes\', \'10\'),(\'No\', \'-2\'))}'),
(10, 17, '{\'aptitude \' : {\'3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?\':((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')},\'programming\':{\'Which one of these lists contains only Java programming language keywords?\':((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')}, \'maths\':{\'The average of first 50 natural numbers is\':()},\'english\':{\'Fate smiles ____ those who untiringly grapple with stark realities of life.\':()},\'other\' : {\'database systems\':{\'Primitive operations common to all record management systems include\':((\'(\'Look-up\', \'Print\', \'sort\', \'all of the above\')\', \'Look-up\') , \'2\')}},\'time\' : \'30\'}', '{\'Are you willing to submit a drug test ?\':((\'Yes\', \'10\'),(\'No\', \'-1\'),(\'Maybe\',\'4\')),\'How do you rate your skills of Java ?\':((\'Beginner\', \'2\'),(\'Intermediate\', \'5\'),(\'Advanced\',\'10\'))}');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL COMMENT 'Will start from 1000',
  `full_name` varchar(200) NOT NULL,
  `fname` varchar(100) NOT NULL COMMENT 'frist name of the user',
  `lname` varchar(100) NOT NULL COMMENT 'last name of the user',
  `email_id` varchar(300) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `address` text,
  `cv_file_path` text,
  `cv_updated_at` datetime DEFAULT NULL,
  `following_company` text COMMENT 'JSON of c_ids',
  `notifications` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `full_name`, `fname`, `lname`, `email_id`, `gender`, `age`, `phone`, `address`, `cv_file_path`, `cv_updated_at`, `following_company`, `notifications`) VALUES
(1001, 'ABCD1001 EFGH1001', 'ABCD1001', 'EFGH1001', 'ABCD1001_EFGH1001@gmail.com', 'F', 21, 9087423230, 'ABCD1001 EFGH1001 address1001', NULL, NULL, NULL, NULL),
(1002, 'ABCD1002 EFGH1002', 'ABCD1002', 'EFGH1002', 'ABCD1002_EFGH1002@gmail.com', 'F', 21, 9954136093, 'ABCD1002 EFGH1002 address1002', NULL, NULL, NULL, NULL),
(1003, 'ABCD1003 EFGH1003', 'ABCD1003', 'EFGH1003', 'ABCD1003_EFGH1003@gmail.com', 'M', 21, 9493772518, 'ABCD1003 EFGH1003 address1003', NULL, NULL, NULL, NULL),
(1004, 'ABCD1004 EFGH1004', 'ABCD1004', 'EFGH1004', 'ABCD1004_EFGH1004@gmail.com', 'F', 22, 9920043251, 'ABCD1004 EFGH1004 address1004', NULL, NULL, NULL, NULL),
(1005, 'ABCD1005 EFGH1005', 'ABCD1005', 'EFGH1005', 'ABCD1005_EFGH1005@gmail.com', 'M', 21, 9283846316, 'ABCD1005 EFGH1005 address1005', NULL, NULL, NULL, NULL),
(1006, 'ABCD1006 EFGH1006', 'ABCD1006', 'EFGH1006', 'ABCD1006_EFGH1006@gmail.com', 'F', 22, 8883332634, 'ABCD1006 EFGH1006 address1006', NULL, NULL, NULL, NULL),
(1007, 'ABCD1007 EFGH1007', 'ABCD1007', 'EFGH1007', 'ABCD1007_EFGH1007@gmail.com', 'M', 21, 9831444549, 'ABCD1007 EFGH1007 address1007', NULL, NULL, NULL, NULL),
(1008, 'ABCD1008 EFGH1008', 'ABCD1008', 'EFGH1008', 'ABCD1008_EFGH1008@gmail.com', 'M', 21, 9805116649, 'ABCD1008 EFGH1008 address1008', NULL, NULL, NULL, NULL),
(1009, 'ABCD1009 EFGH1009', 'ABCD1009', 'EFGH1009', 'ABCD1009_EFGH1009@gmail.com', 'F', 21, 9473525019, 'ABCD1009 EFGH1009 address1009', NULL, NULL, NULL, NULL),
(1010, 'ABCD1010 EFGH1010', 'ABCD1010', 'EFGH1010', 'ABCD1010_EFGH1010@gmail.com', 'M', 23, 9509964569, 'ABCD1010 EFGH1010 address1010', NULL, NULL, NULL, NULL),
(1011, 'ABCD1011 EFGH1011', 'ABCD1011', 'EFGH1011', 'ABCD1011_EFGH1011@gmail.com', 'F', 23, 9529468006, 'ABCD1011 EFGH1011 address1011', NULL, NULL, NULL, NULL),
(1012, 'ABCD1012 EFGH1012', 'ABCD1012', 'EFGH1012', 'ABCD1012_EFGH1012@gmail.com', 'M', 23, 9771197449, 'ABCD1012 EFGH1012 address1012', NULL, NULL, NULL, NULL),
(1013, 'ABCD1013 EFGH1013', 'ABCD1013', 'EFGH1013', 'ABCD1013_EFGH1013@gmail.com', 'M', 21, 9904205486, 'ABCD1013 EFGH1013 address1013', NULL, NULL, NULL, NULL),
(1014, 'ABCD1014 EFGH1014', 'ABCD1014', 'EFGH1014', 'ABCD1014_EFGH1014@gmail.com', 'F', 23, 9400920605, 'ABCD1014 EFGH1014 address1014', NULL, NULL, NULL, NULL),
(1015, 'ABCD1015 EFGH1015', 'ABCD1015', 'EFGH1015', 'ABCD1015_EFGH1015@gmail.com', 'F', 21, 8958492951, 'ABCD1015 EFGH1015 address1015', NULL, NULL, NULL, NULL),
(1016, 'ABCD1016 EFGH1016', 'ABCD1016', 'EFGH1016', 'ABCD1016_EFGH1016@gmail.com', 'M', 21, 9394041477, 'ABCD1016 EFGH1016 address1016', NULL, NULL, NULL, NULL),
(1017, 'ABCD1017 EFGH1017', 'ABCD1017', 'EFGH1017', 'ABCD1017_EFGH1017@gmail.com', 'F', 23, 9740549664, 'ABCD1017 EFGH1017 address1017', NULL, NULL, NULL, NULL),
(1018, 'ABCD1018 EFGH1018', 'ABCD1018', 'EFGH1018', 'ABCD1018_EFGH1018@gmail.com', 'F', 22, 9341508309, 'ABCD1018 EFGH1018 address1018', NULL, NULL, NULL, NULL),
(1019, 'ABCD1019 EFGH1019', 'ABCD1019', 'EFGH1019', 'ABCD1019_EFGH1019@gmail.com', 'M', 21, 9206703344, 'ABCD1019 EFGH1019 address1019', NULL, NULL, NULL, NULL),
(1020, 'ABCD1020 EFGH1020', 'ABCD1020', 'EFGH1020', 'ABCD1020_EFGH1020@gmail.com', 'M', 23, 9496391123, 'ABCD1020 EFGH1020 address1020', NULL, NULL, NULL, NULL),
(1021, 'ABCD1021 EFGH1021', 'ABCD1021', 'EFGH1021', 'ABCD1021_EFGH1021@gmail.com', 'F', 21, 9092193940, 'ABCD1021 EFGH1021 address1021', NULL, NULL, NULL, NULL),
(1022, 'ABCD1022 EFGH1022', 'ABCD1022', 'EFGH1022', 'ABCD1022_EFGH1022@gmail.com', 'F', 22, 8966050596, 'ABCD1022 EFGH1022 address1022', NULL, NULL, NULL, NULL),
(1023, 'ABCD1023 EFGH1023', 'ABCD1023', 'EFGH1023', 'ABCD1023_EFGH1023@gmail.com', 'M', 21, 9113678652, 'ABCD1023 EFGH1023 address1023', NULL, NULL, NULL, NULL),
(1024, 'ABCD1024 EFGH1024', 'ABCD1024', 'EFGH1024', 'ABCD1024_EFGH1024@gmail.com', 'F', 23, 9884151514, 'ABCD1024 EFGH1024 address1024', NULL, NULL, NULL, NULL),
(1025, 'ABCD1025 EFGH1025', 'ABCD1025', 'EFGH1025', 'ABCD1025_EFGH1025@gmail.com', 'F', 21, 9020321367, 'ABCD1025 EFGH1025 address1025', NULL, NULL, NULL, NULL),
(1026, 'ABCD1026 EFGH1026', 'ABCD1026', 'EFGH1026', 'ABCD1026_EFGH1026@gmail.com', 'M', 22, 9074258516, 'ABCD1026 EFGH1026 address1026', NULL, NULL, NULL, NULL),
(1027, 'ABCD1027 EFGH1027', 'ABCD1027', 'EFGH1027', 'ABCD1027_EFGH1027@gmail.com', 'F', 21, 8879317805, 'ABCD1027 EFGH1027 address1027', NULL, NULL, NULL, NULL),
(1028, 'ABCD1028 EFGH1028', 'ABCD1028', 'EFGH1028', 'ABCD1028_EFGH1028@gmail.com', 'F', 21, 9712120836, 'ABCD1028 EFGH1028 address1028', NULL, NULL, NULL, NULL),
(1029, 'ABCD1029 EFGH1029', 'ABCD1029', 'EFGH1029', 'ABCD1029_EFGH1029@gmail.com', 'M', 22, 9696414182, 'ABCD1029 EFGH1029 address1029', NULL, NULL, NULL, NULL),
(1030, 'ABCD1030 EFGH1030', 'ABCD1030', 'EFGH1030', 'ABCD1030_EFGH1030@gmail.com', 'F', 23, 9801216459, 'ABCD1030 EFGH1030 address1030', NULL, NULL, NULL, NULL),
(1031, 'ABCD1031 EFGH1031', 'ABCD1031', 'EFGH1031', 'ABCD1031_EFGH1031@gmail.com', 'F', 22, 9524516303, 'ABCD1031 EFGH1031 address1031', NULL, NULL, NULL, NULL),
(1032, 'ABCD1032 EFGH1032', 'ABCD1032', 'EFGH1032', 'ABCD1032_EFGH1032@gmail.com', 'F', 22, 9663379659, 'ABCD1032 EFGH1032 address1032', NULL, NULL, NULL, NULL),
(1033, 'ABCD1033 EFGH1033', 'ABCD1033', 'EFGH1033', 'ABCD1033_EFGH1033@gmail.com', 'M', 21, 8984978611, 'ABCD1033 EFGH1033 address1033', NULL, NULL, NULL, NULL),
(1034, 'ABCD1034 EFGH1034', 'ABCD1034', 'EFGH1034', 'ABCD1034_EFGH1034@gmail.com', 'F', 22, 9445491467, 'ABCD1034 EFGH1034 address1034', NULL, NULL, NULL, NULL),
(1035, 'ABCD1035 EFGH1035', 'ABCD1035', 'EFGH1035', 'ABCD1035_EFGH1035@gmail.com', 'F', 22, 9317744970, 'ABCD1035 EFGH1035 address1035', NULL, NULL, NULL, NULL),
(1036, 'ABCD1036 EFGH1036', 'ABCD1036', 'EFGH1036', 'ABCD1036_EFGH1036@gmail.com', 'M', 23, 9757745750, 'ABCD1036 EFGH1036 address1036', NULL, NULL, NULL, NULL),
(1037, 'ABCD1037 EFGH1037', 'ABCD1037', 'EFGH1037', 'ABCD1037_EFGH1037@gmail.com', 'M', 22, 9856277261, 'ABCD1037 EFGH1037 address1037', NULL, NULL, NULL, NULL),
(1038, 'ABCD1038 EFGH1038', 'ABCD1038', 'EFGH1038', 'ABCD1038_EFGH1038@gmail.com', 'M', 23, 9620844230, 'ABCD1038 EFGH1038 address1038', NULL, NULL, NULL, NULL),
(1039, 'ABCD1039 EFGH1039', 'ABCD1039', 'EFGH1039', 'ABCD1039_EFGH1039@gmail.com', 'F', 22, 9101333364, 'ABCD1039 EFGH1039 address1039', NULL, NULL, NULL, NULL),
(1040, 'ABCD1040 EFGH1040', 'ABCD1040', 'EFGH1040', 'ABCD1040_EFGH1040@gmail.com', 'M', 22, 9591575996, 'ABCD1040 EFGH1040 address1040', NULL, NULL, NULL, NULL),
(1041, 'ABCD1041 EFGH1041', 'ABCD1041', 'EFGH1041', 'ABCD1041_EFGH1041@gmail.com', 'F', 23, 9158603589, 'ABCD1041 EFGH1041 address1041', NULL, NULL, NULL, NULL),
(1042, 'ABCD1042 EFGH1042', 'ABCD1042', 'EFGH1042', 'ABCD1042_EFGH1042@gmail.com', 'F', 23, 9497521045, 'ABCD1042 EFGH1042 address1042', NULL, NULL, NULL, NULL),
(1043, 'ABCD1043 EFGH1043', 'ABCD1043', 'EFGH1043', 'ABCD1043_EFGH1043@gmail.com', 'M', 21, 8944808276, 'ABCD1043 EFGH1043 address1043', NULL, NULL, NULL, NULL),
(1044, 'ABCD1044 EFGH1044', 'ABCD1044', 'EFGH1044', 'ABCD1044_EFGH1044@gmail.com', 'M', 23, 9845343388, 'ABCD1044 EFGH1044 address1044', NULL, NULL, NULL, NULL),
(1045, 'ABCD1045 EFGH1045', 'ABCD1045', 'EFGH1045', 'ABCD1045_EFGH1045@gmail.com', 'M', 22, 9517738683, 'ABCD1045 EFGH1045 address1045', NULL, NULL, NULL, NULL),
(1046, 'ABCD1046 EFGH1046', 'ABCD1046', 'EFGH1046', 'ABCD1046_EFGH1046@gmail.com', 'F', 23, 9471217132, 'ABCD1046 EFGH1046 address1046', NULL, NULL, NULL, NULL),
(1047, 'ABCD1047 EFGH1047', 'ABCD1047', 'EFGH1047', 'ABCD1047_EFGH1047@gmail.com', 'M', 21, 9798570268, 'ABCD1047 EFGH1047 address1047', NULL, NULL, NULL, NULL),
(1048, 'ABCD1048 EFGH1048', 'ABCD1048', 'EFGH1048', 'ABCD1048_EFGH1048@gmail.com', 'M', 23, 9684909877, 'ABCD1048 EFGH1048 address1048', NULL, NULL, NULL, NULL),
(1049, 'ABCD1049 EFGH1049', 'ABCD1049', 'EFGH1049', 'ABCD1049_EFGH1049@gmail.com', 'M', 23, 9926064534, 'ABCD1049 EFGH1049 address1049', NULL, NULL, NULL, NULL),
(1050, 'ABCD1050 EFGH1050', 'ABCD1050', 'EFGH1050', 'ABCD1050_EFGH1050@gmail.com', 'M', 21, 8993299260, 'ABCD1050 EFGH1050 address1050', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application_status`
--
ALTER TABLE `application_status`
  ADD PRIMARY KEY (`j_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `unique_company_email` (`email_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`j_id`),
  ADD KEY `fk_c_id_jobs` (`c_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`j_id`,`c_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `unique_user_email` (`email_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `j_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Will start from 1000', AUTO_INCREMENT=1051;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application_status`
--
ALTER TABLE `application_status`
  ADD CONSTRAINT `fk_j_id_application_status` FOREIGN KEY (`j_id`) REFERENCES `jobs` (`j_id`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `fk_c_id_jobs` FOREIGN KEY (`c_id`) REFERENCES `company` (`c_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
