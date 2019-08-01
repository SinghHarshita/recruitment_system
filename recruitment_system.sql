-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2019 at 05:56 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

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
(0, 'applicant_status'),
(1, '{1014 : {\'Status\':0,\'knockout\':3,\'Aptitude\':8,\'Programming\':3,\'Maths\':8,\'English\':10,\'Other\':10},1014 : {\'Status\':2,\'knockout\':7,\'Aptitude\':8,\'Programming\':1,\'Maths\':4,\'English\':2,\'Other\':9},1019 : {\'Status\':2,\'knockout\':9,\'Aptitude\':3,\'Programming\':2,\'Maths\':6,\'English\':1,\'Other\':7}}'),
(2, '{1005 : {\'Status\':1,\'knockout\':2,\'Aptitude\':7,\'Programming\':5,\'Maths\':6,\'English\':7,\'Other\':10},1014 : {\'Status\':0,\'knockout\':8,\'Aptitude\':3,\'Programming\':6,\'Maths\':2,\'English\':1,\'Other\':6},1016 : {\'Status\':0,\'knockout\':5,\'Aptitude\':2,\'Programming\':10,\'Maths\':1,\'English\':1,\'Other\':7}}'),
(3, '{1011 : {\'Status\':3,\'knockout\':8,\'Aptitude\':4,\'Programming\':3,\'Maths\':4,\'English\':1,\'Other\':6},1016 : {\'Status\':3,\'knockout\':4,\'Aptitude\':5,\'Programming\':5,\'Maths\':7,\'English\':5,\'Other\':5},1011 : {\'Status\':2,\'knockout\':5,\'Aptitude\':10,\'Programming\':2,\'Maths\':1,\'English\':2,\'Other\':6}}'),
(4, '{1018 : {\'Status\':2,\'knockout\':8,\'Aptitude\':5,\'Programming\':1,\'Maths\':2,\'English\':4,\'Other\':1},1006 : {\'Status\':2,\'knockout\':6,\'Aptitude\':7,\'Programming\':9,\'Maths\':7,\'English\':9,\'Other\':8},1019 : {\'Status\':2,\'knockout\':4,\'Aptitude\':1,\'Programming\':9,\'Maths\':3,\'English\':3,\'Other\':9}}'),
(5, '{1015 : {\'Status\':1,\'knockout\':8,\'Aptitude\':10,\'Programming\':3,\'Maths\':6,\'English\':9,\'Other\':1},1009 : {\'Status\':0,\'knockout\':7,\'Aptitude\':1,\'Programming\':5,\'Maths\':8,\'English\':3,\'Other\':3},1004 : {\'Status\':2,\'knockout\':2,\'Aptitude\':3,\'Programming\':2,\'Maths\':1,\'English\':2,\'Other\':3}}'),
(6, '{1017 : {\'Status\':0,\'knockout\':3,\'Aptitude\':3,\'Programming\':7,\'Maths\':4,\'English\':3,\'Other\':8},1008 : {\'Status\':2,\'knockout\':7,\'Aptitude\':5,\'Programming\':6,\'Maths\':2,\'English\':5,\'Other\':6},1002 : {\'Status\':3,\'knockout\':2,\'Aptitude\':8,\'Programming\':5,\'Maths\':6,\'English\':6,\'Other\':2}}'),
(7, '{1013 : {\'Status\':0,\'knockout\':5,\'Aptitude\':5,\'Programming\':10,\'Maths\':10,\'English\':1,\'Other\':1},1017 : {\'Status\':2,\'knockout\':5,\'Aptitude\':8,\'Programming\':2,\'Maths\':4,\'English\':9,\'Other\':10},1018 : {\'Status\':1,\'knockout\':6,\'Aptitude\':5,\'Programming\':1,\'Maths\':1,\'English\':6,\'Other\':2}}'),
(8, '{1004 : {\'Status\':3,\'knockout\':1,\'Aptitude\':6,\'Programming\':5,\'Maths\':5,\'English\':9,\'Other\':2},1016 : {\'Status\':2,\'knockout\':7,\'Aptitude\':9,\'Programming\':1,\'Maths\':3,\'English\':10,\'Other\':10},1002 : {\'Status\':1,\'knockout\':3,\'Aptitude\':5,\'Programming\':10,\'Maths\':8,\'English\':8,\'Other\':6}}'),
(9, '{1010 : {\'Status\':3,\'knockout\':4,\'Aptitude\':8,\'Programming\':1,\'Maths\':4,\'English\':3,\'Other\':10},1011 : {\'Status\':0,\'knockout\':2,\'Aptitude\':8,\'Programming\':10,\'Maths\':2,\'English\':4,\'Other\':1},1001 : {\'Status\':0,\'knockout\':3,\'Aptitude\':1,\'Programming\':5,\'Maths\':7,\'English\':8,\'Other\':7}}'),
(10, '{1020 : {\'Status\':1,\'knockout\':4,\'Aptitude\':10,\'Programming\':6,\'Maths\':9,\'English\':1,\'Other\':6},1008 : {\'Status\':0,\'knockout\':6,\'Aptitude\':1,\'Programming\':9,\'Maths\':9,\'English\':5,\'Other\':2},1019 : {\'Status\':2,\'knockout\':3,\'Aptitude\':9,\'Programming\':8,\'Maths\':6,\'English\':5,\'Other\':10}}');

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
(1, 'Company1', 'Company1, Mumbai', 'Company1@gmail.com', NULL, 8139028461, 'Company1 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(2, 'Company2', 'Company2, Mumbai', 'Company2@gmail.com', NULL, 7998343662, 'Company2 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(3, 'Company3', 'Company3, Mumbai', 'Company3@gmail.com', NULL, 8543756293, 'Company3 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(4, 'Company4', 'Company4, Delhi', 'Company4@gmail.com', NULL, 8096147989, 'Company4 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(5, 'Company5', 'Company5, Mumbai', 'Company5@gmail.com', 'Company5@testmail.com', 8049875429, 'Company5 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(6, 'Company6', 'Company6, Mumbai', 'Company6@gmail.com', NULL, 8760640315, 'Company6 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(7, 'Company7', 'Company7, Mumbai', 'Company7@gmail.com', NULL, 8604761689, 'Company7 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(8, 'Company8', 'Company8, Mumbai', 'Company8@gmail.com', NULL, 8239161675, 'Company8 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(9, 'Company9', 'Company9, Delhi', 'Company9@gmail.com', NULL, 7832034273, 'Company9 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(10, 'Company10', 'Company10, Delhi', 'Company10@gmail.com', 'Company10@testmail.com', 8596561181, 'Company10 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(11, 'Company11', 'Company11, Delhi', 'Company11@gmail.com', NULL, 8351304980, 'Company11 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(12, 'Company12', 'Company12, Mumbai', 'Company12@gmail.com', NULL, 8426178511, 'Company12 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(13, 'Company13', 'Company13, Delhi', 'Company13@gmail.com', NULL, 8057491964, 'Company13 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(14, 'Company14', 'Company14, Mumbai', 'Company14@gmail.com', NULL, 8644661282, 'Company14 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(15, 'Company15', 'Company15, Mumbai', 'Company15@gmail.com', 'Company15@testmail.com', 7920169628, 'Company15 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(16, 'Company16', 'Company16, Delhi', 'Company16@gmail.com', NULL, 8325274614, 'Company16 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(17, 'Company17', 'Company17, Mumbai', 'Company17@gmail.com', NULL, 8809540096, 'Company17 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(18, 'Company18', 'Company18, Mumbai', 'Company18@gmail.com', NULL, 8270489109, 'Company18 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(19, 'Company19', 'Company19, Mumbai', 'Company19@gmail.com', NULL, 7950536352, 'Company19 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(20, 'Company20', 'Company20, Mumbai', 'Company20@gmail.com', 'Company20@testmail.com', 8458034047, 'Company20 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(21, 'Company21', 'Company21, Mumbai', 'Company21@gmail.com', NULL, 8629934015, 'Company21 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(22, 'Company22', 'Company22, Delhi', 'Company22@gmail.com', NULL, 7735242198, 'Company22 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(23, 'Company23', 'Company23, Delhi', 'Company23@gmail.com', NULL, 8792495193, 'Company23 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(24, 'Company24', 'Company24, Delhi', 'Company24@gmail.com', NULL, 8383278935, 'Company24 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '),
(25, 'Company25', 'Company25, Mumbai', 'Company25@gmail.com', 'Company25@testmail.com', 7759117884, 'Company25 : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `j_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `requirements` text NOT NULL COMMENT '{     "designation" : "desg",     "description" : "descp",     "skills" : ("skill1", "skill2", "skilln"),     "experience" : "exp",     "qualification" : ("HSC", "SSC" ,"BSc"), }',
  `no_of_vacancies` int(11) NOT NULL,
  `threshold_value` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`j_id`, `c_id`, `requirements`, `no_of_vacancies`, `threshold_value`) VALUES
(1, 5, '{\'designation\' : \'Project Manager\',\'description\' : \'descp1\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'1years\', \'qualification\' : \'(\'HSC\')\'}', 3, 15),
(2, 8, '{\'designation\' : \'Department Head\',\'description\' : \'descp2\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'1years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 5, 10),
(3, 9, '{\'designation\' : \'Project Manager\',\'description\' : \'descp3\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'0years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 2, 12),
(4, 5, '{\'designation\' : \'Project Manager\',\'description\' : \'descp4\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'3years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 3, 12),
(5, 20, '{\'designation\' : \'Department Head\',\'description\' : \'descp5\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'2years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 9, 12),
(6, 12, '{\'designation\' : \'Department Head\',\'description\' : \'descp6\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'2years\', \'qualification\' : \'(\'HSC\')\'}', 3, 13),
(7, 23, '{\'designation\' : \'Project Manager\',\'description\' : \'descp7\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'6years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 10, 10),
(8, 3, '{\'designation\' : \'Project Manager\',\'description\' : \'descp8\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'5years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 2, 15),
(9, 10, '{\'designation\' : \'Department Head\',\'description\' : \'descp9\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'4years\', \'qualification\' : \'(\'HSC\')\'}', 8, 11),
(10, 3, '{\'designation\' : \'Project Manager\',\'description\' : \'descp10\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'1years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 10, 12),
(11, 2, '{\'designation\' : \'Department Head\',\'description\' : \'descp11\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'5years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 8, 12),
(12, 7, '{\'designation\' : \'Project Manager\',\'description\' : \'descp12\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'1years\', \'qualification\' : \'(\'HSC\')\'}', 2, 10),
(13, 24, '{\'designation\' : \'Department Head\',\'description\' : \'descp13\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'6years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 7, 11),
(14, 10, '{\'designation\' : \'Department Head\',\'description\' : \'descp14\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'3years\', \'qualification\' : \'(\'HSC\')\'}', 7, 14),
(15, 1, '{\'designation\' : \'Project Manager\',\'description\' : \'descp15\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'3years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 8, 15),
(16, 7, '{\'designation\' : \'Project Manager\',\'description\' : \'descp16\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'6years\', \'qualification\' : \'(\'HSC\')\'}', 10, 13),
(17, 11, '{\'designation\' : \'Project Manager\',\'description\' : \'descp17\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'1years\', \'qualification\' : \'(\'HSC\')\'}', 4, 14),
(18, 23, '{\'designation\' : \'Project Manager\',\'description\' : \'descp18\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'4years\', \'qualification\' : \'(\'HSC\')\'}', 6, 13),
(19, 10, '{\'designation\' : \'Department Head\',\'description\' : \'descp19\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'2years\', \'qualification\' : \'(\'HSC\')\'}', 2, 14),
(20, 20, '{\'designation\' : \'Department Head\',\'description\' : \'descp20\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'5years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 5, 12),
(21, 15, '{\'designation\' : \'Project Manager\',\'description\' : \'descp21\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'0years\', \'qualification\' : \'(\'HSC\')\'}', 2, 13),
(22, 19, '{\'designation\' : \'Project Manager\',\'description\' : \'descp22\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'5years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 2, 12),
(23, 23, '{\'designation\' : \'Project Manager\',\'description\' : \'descp23\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'3years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 9, 11),
(24, 3, '{\'designation\' : \'Project Manager\',\'description\' : \'descp24\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'6years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 6, 10),
(25, 5, '{\'designation\' : \'Project Manager\',\'description\' : \'descp25\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'5years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 3, 15),
(26, 16, '{\'designation\' : \'Department Head\',\'description\' : \'descp26\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'2years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 3, 10),
(27, 1, '{\'designation\' : \'Project Manager\',\'description\' : \'descp27\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'4years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 6, 10),
(28, 16, '{\'designation\' : \'Department Head\',\'description\' : \'descp28\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'2years\', \'qualification\' : \'(\'HSC\')\'}', 6, 12),
(29, 19, '{\'designation\' : \'Project Manager\',\'description\' : \'descp29\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'6years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 9, 14),
(30, 24, '{\'designation\' : \'Department Head\',\'description\' : \'descp30\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'6years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 3, 13),
(31, 22, '{\'designation\' : \'Department Head\',\'description\' : \'descp31\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'0years\', \'qualification\' : \'(\'HSC\')\'}', 1, 14),
(32, 5, '{\'designation\' : \'Project Manager\',\'description\' : \'descp32\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'0years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 8, 15),
(33, 21, '{\'designation\' : \'Project Manager\',\'description\' : \'descp33\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'2years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 10, 11),
(34, 8, '{\'designation\' : \'Department Head\',\'description\' : \'descp34\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'2years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 6, 10),
(35, 13, '{\'designation\' : \'Project Manager\',\'description\' : \'descp35\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'2years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 9, 13),
(36, 23, '{\'designation\' : \'Project Manager\',\'description\' : \'descp36\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'6years\', \'qualification\' : \'(\'HSC\')\'}', 10, 11),
(37, 23, '{\'designation\' : \'Project Manager\',\'description\' : \'descp37\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'2years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 8, 15),
(38, 14, '{\'designation\' : \'Department Head\',\'description\' : \'descp38\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'0years\', \'qualification\' : \'(\'HSC\')\'}', 4, 11),
(39, 2, '{\'designation\' : \'Department Head\',\'description\' : \'descp39\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\',\'Python\',\'CSS3\')\',\'experience\' : \'6years\', \'qualification\' : \'(\'HSC\',\'BTech/BE\',\'MTech/MSc\')\'}', 10, 12),
(40, 2, '{\'designation\' : \'Department Head\',\'description\' : \'descp40\', \'skills\' : \'(\'Java\',\'SQL\',\'HTML\')\',\'experience\' : \'6years\', \'qualification\' : \'(\'HSC\',\'Bsc\',\'MSc\')\'}', 3, 12);

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
(1, 5, '{\'aptitude\':[{A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?:((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')},{A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?:((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')},{A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?:((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')}]},\'programming\':[{Which one of these lists contains only Java programming language keywords?:((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')},{What is (void*)0?:((\'(\'Representation of NULL pointer\', \'Representation of void pointer\', \'Error\', \'None of above\')\', \'Representation of NULL pointer\') , \'2\')},{What is (void*)0?:((\'(\'Representation of NULL pointer\', \'Representation of void pointer\', \'Error\', \'None of above\')\', \'Representation of NULL pointer\') , \'2\')}]\'maths\':[{A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to:((\'(\'1/55\', \'55\', \'3/11\', \'5/11\')\', \'1/55\') , \'2\')},{The average of first 50 natural numbers is:((\'(\'25.30\', \'25.00\', \'25.5\', \'12.00\')\', \'25.5\') , \'2\')},{A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to:((\'(\'1/55\', \'55\', \'3/11\', \'5/11\')\', \'1/55\') , \'2\')}]},\'other\':[{What was originally called the \"imitation game\" by its creator?:((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')},{What was originally called the \"imitation game\" by its creator?:((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')},{What was originally called the \"imitation game\" by its creator?:((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')}]}\'', NULL),
(2, 8, '{\'aptitude\':[{A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?:((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')},{3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?:((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')},{A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?:((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')}]},\'programming\':[{Which one of these lists contains only Java programming language keywords?:((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')},{What is (void*)0?:((\'(\'Representation of NULL pointer\', \'Representation of void pointer\', \'Error\', \'None of above\')\', \'Representation of NULL pointer\') , \'2\')},{What is (void*)0?:((\'(\'Representation of NULL pointer\', \'Representation of void pointer\', \'Error\', \'None of above\')\', \'Representation of NULL pointer\') , \'2\')}]\'maths\':[{The average of first 50 natural numbers is:((\'(\'25.30\', \'25.00\', \'25.5\', \'12.00\')\', \'25.5\') , \'2\')},{The average of first 50 natural numbers is:((\'(\'25.30\', \'25.00\', \'25.5\', \'12.00\')\', \'25.5\') , \'2\')},{A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to:((\'(\'1/55\', \'55\', \'3/11\', \'5/11\')\', \'1/55\') , \'2\')}]},\'other\':[{What was originally called the \"imitation game\" by its creator?:((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')},{What is the term used for describing the judgemental or commonsense part of the problem solving?:((\'(\'Value Based\', \'Critical\', \'Analytical\', \'Heurisitic\')\', \'Heurisitic\') , \'2\')},{What was originally called the \"imitation game\" by its creator?:((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')}]}\'', NULL),
(3, 9, '{\'aptitude\':[{3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?:((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')},{3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?:((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')},{3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?:((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')}]},\'programming\':[{Which one of these lists contains only Java programming language keywords?:((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')},{Which one of these lists contains only Java programming language keywords?:((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')},{What is (void*)0?:((\'(\'Representation of NULL pointer\', \'Representation of void pointer\', \'Error\', \'None of above\')\', \'Representation of NULL pointer\') , \'2\')}]\'maths\':[{A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to:((\'(\'1/55\', \'55\', \'3/11\', \'5/11\')\', \'1/55\') , \'2\')},{The average of first 50 natural numbers is:((\'(\'25.30\', \'25.00\', \'25.5\', \'12.00\')\', \'25.5\') , \'2\')},{A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to:((\'(\'1/55\', \'55\', \'3/11\', \'5/11\')\', \'1/55\') , \'2\')}]},\'other\':[{What is the term used for describing the judgemental or commonsense part of the problem solving?:((\'(\'Value Based\', \'Critical\', \'Analytical\', \'Heurisitic\')\', \'Heurisitic\') , \'2\')},{What is the term used for describing the judgemental or commonsense part of the problem solving?:((\'(\'Value Based\', \'Critical\', \'Analytical\', \'Heurisitic\')\', \'Heurisitic\') , \'2\')},{What was originally called the \"imitation game\" by its creator?:((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')}]}\'', NULL),
(4, 5, '{\'aptitude\':[{A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?:((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')},{A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?:((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')},{3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?:((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')}]},\'programming\':[{Which one of these lists contains only Java programming language keywords?:((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')},{Which one of these lists contains only Java programming language keywords?:((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')},{Which one of these lists contains only Java programming language keywords?:((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')}]\'maths\':[{A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to:((\'(\'1/55\', \'55\', \'3/11\', \'5/11\')\', \'1/55\') , \'2\')},{A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to:((\'(\'1/55\', \'55\', \'3/11\', \'5/11\')\', \'1/55\') , \'2\')},{The average of first 50 natural numbers is:((\'(\'25.30\', \'25.00\', \'25.5\', \'12.00\')\', \'25.5\') , \'2\')}]},\'other\':[{What is the term used for describing the judgemental or commonsense part of the problem solving?:((\'(\'Value Based\', \'Critical\', \'Analytical\', \'Heurisitic\')\', \'Heurisitic\') , \'2\')},{What is the term used for describing the judgemental or commonsense part of the problem solving?:((\'(\'Value Based\', \'Critical\', \'Analytical\', \'Heurisitic\')\', \'Heurisitic\') , \'2\')},{What was originally called the \"imitation game\" by its creator?:((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')}]}\'', NULL),
(5, 20, '{\'aptitude\':[{A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?:((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')},{3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?:((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')},{3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?:((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')}]},\'programming\':[{What is (void*)0?:((\'(\'Representation of NULL pointer\', \'Representation of void pointer\', \'Error\', \'None of above\')\', \'Representation of NULL pointer\') , \'2\')},{What is (void*)0?:((\'(\'Representation of NULL pointer\', \'Representation of void pointer\', \'Error\', \'None of above\')\', \'Representation of NULL pointer\') , \'2\')},{Which one of these lists contains only Java programming language keywords?:((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')}]\'maths\':[{A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to:((\'(\'1/55\', \'55\', \'3/11\', \'5/11\')\', \'1/55\') , \'2\')},{A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to:((\'(\'1/55\', \'55\', \'3/11\', \'5/11\')\', \'1/55\') , \'2\')},{The average of first 50 natural numbers is:((\'(\'25.30\', \'25.00\', \'25.5\', \'12.00\')\', \'25.5\') , \'2\')}]},\'other\':[{What is the term used for describing the judgemental or commonsense part of the problem solving?:((\'(\'Value Based\', \'Critical\', \'Analytical\', \'Heurisitic\')\', \'Heurisitic\') , \'2\')},{What was originally called the \"imitation game\" by its creator?:((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')},{What was originally called the \"imitation game\" by its creator?:((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')}]}\'', NULL),
(6, 12, '{\'aptitude\':[{3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?:((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')},{A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?:((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')},{3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?:((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')}]},\'programming\':[{Which one of these lists contains only Java programming language keywords?:((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')},{Which one of these lists contains only Java programming language keywords?:((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')},{What is (void*)0?:((\'(\'Representation of NULL pointer\', \'Representation of void pointer\', \'Error\', \'None of above\')\', \'Representation of NULL pointer\') , \'2\')}]\'maths\':[{A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to:((\'(\'1/55\', \'55\', \'3/11\', \'5/11\')\', \'1/55\') , \'2\')},{A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to:((\'(\'1/55\', \'55\', \'3/11\', \'5/11\')\', \'1/55\') , \'2\')},{The average of first 50 natural numbers is:((\'(\'25.30\', \'25.00\', \'25.5\', \'12.00\')\', \'25.5\') , \'2\')}]},\'other\':[{What was originally called the \"imitation game\" by its creator?:((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')},{What was originally called the \"imitation game\" by its creator?:((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')},{What is the term used for describing the judgemental or commonsense part of the problem solving?:((\'(\'Value Based\', \'Critical\', \'Analytical\', \'Heurisitic\')\', \'Heurisitic\') , \'2\')}]}\'', NULL),
(7, 23, '{\'aptitude\':[{3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?:((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')},{A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?:((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')},{A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?:((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')}]},\'programming\':[{What is (void*)0?:((\'(\'Representation of NULL pointer\', \'Representation of void pointer\', \'Error\', \'None of above\')\', \'Representation of NULL pointer\') , \'2\')},{Which one of these lists contains only Java programming language keywords?:((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')},{Which one of these lists contains only Java programming language keywords?:((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')}]\'maths\':[{A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to:((\'(\'1/55\', \'55\', \'3/11\', \'5/11\')\', \'1/55\') , \'2\')},{The average of first 50 natural numbers is:((\'(\'25.30\', \'25.00\', \'25.5\', \'12.00\')\', \'25.5\') , \'2\')},{The average of first 50 natural numbers is:((\'(\'25.30\', \'25.00\', \'25.5\', \'12.00\')\', \'25.5\') , \'2\')}]},\'other\':[{What was originally called the \"imitation game\" by its creator?:((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')},{What is the term used for describing the judgemental or commonsense part of the problem solving?:((\'(\'Value Based\', \'Critical\', \'Analytical\', \'Heurisitic\')\', \'Heurisitic\') , \'2\')},{What was originally called the \"imitation game\" by its creator?:((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')}]}\'', NULL),
(8, 3, '{\'aptitude\':[{3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?:((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')},{A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?:((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')},{3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?:((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')}]},\'programming\':[{What is (void*)0?:((\'(\'Representation of NULL pointer\', \'Representation of void pointer\', \'Error\', \'None of above\')\', \'Representation of NULL pointer\') , \'2\')},{Which one of these lists contains only Java programming language keywords?:((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')},{What is (void*)0?:((\'(\'Representation of NULL pointer\', \'Representation of void pointer\', \'Error\', \'None of above\')\', \'Representation of NULL pointer\') , \'2\')}]\'maths\':[{A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to:((\'(\'1/55\', \'55\', \'3/11\', \'5/11\')\', \'1/55\') , \'2\')},{A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to:((\'(\'1/55\', \'55\', \'3/11\', \'5/11\')\', \'1/55\') , \'2\')},{A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to:((\'(\'1/55\', \'55\', \'3/11\', \'5/11\')\', \'1/55\') , \'2\')}]},\'other\':[{What is the term used for describing the judgemental or commonsense part of the problem solving?:((\'(\'Value Based\', \'Critical\', \'Analytical\', \'Heurisitic\')\', \'Heurisitic\') , \'2\')},{What is the term used for describing the judgemental or commonsense part of the problem solving?:((\'(\'Value Based\', \'Critical\', \'Analytical\', \'Heurisitic\')\', \'Heurisitic\') , \'2\')},{What is the term used for describing the judgemental or commonsense part of the problem solving?:((\'(\'Value Based\', \'Critical\', \'Analytical\', \'Heurisitic\')\', \'Heurisitic\') , \'2\')}]}\'', NULL),
(9, 10, '{\'aptitude\':[{3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?:((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')},{3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?:((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')},{A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?:((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')}]},\'programming\':[{What is (void*)0?:((\'(\'Representation of NULL pointer\', \'Representation of void pointer\', \'Error\', \'None of above\')\', \'Representation of NULL pointer\') , \'2\')},{What is (void*)0?:((\'(\'Representation of NULL pointer\', \'Representation of void pointer\', \'Error\', \'None of above\')\', \'Representation of NULL pointer\') , \'2\')},{Which one of these lists contains only Java programming language keywords?:((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')}]\'maths\':[{The average of first 50 natural numbers is:((\'(\'25.30\', \'25.00\', \'25.5\', \'12.00\')\', \'25.5\') , \'2\')},{The average of first 50 natural numbers is:((\'(\'25.30\', \'25.00\', \'25.5\', \'12.00\')\', \'25.5\') , \'2\')},{A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to:((\'(\'1/55\', \'55\', \'3/11\', \'5/11\')\', \'1/55\') , \'2\')}]},\'other\':[{What is the term used for describing the judgemental or commonsense part of the problem solving?:((\'(\'Value Based\', \'Critical\', \'Analytical\', \'Heurisitic\')\', \'Heurisitic\') , \'2\')},{What was originally called the \"imitation game\" by its creator?:((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')},{What was originally called the \"imitation game\" by its creator?:((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')}]}\'', NULL),
(10, 3, '{\'aptitude\':[{3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?:((\'(\'9\', \'10\', \'11\', \'12\')\', \'12\') , \'2\')},{A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?:((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')},{A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?:((\'(\'120 metres\', \'180 metres\', \'324 metres\', \'150 metres\')\', \'150 metres\') , \'2\')}]},\'programming\':[{What is (void*)0?:((\'(\'Representation of NULL pointer\', \'Representation of void pointer\', \'Error\', \'None of above\')\', \'Representation of NULL pointer\') , \'2\')},{Which one of these lists contains only Java programming language keywords?:((\'(\'class, if, void, long, Int, continue\', \'goto, instanceof, native, finally, default, throws\', \'try, virtual, throw, final, volatile, transient\', \'try, virtual, throw, final, volatile, transient\')\', \'goto, instanceof, native, finally, default, throws\') , \'2\')},{What is (void*)0?:((\'(\'Representation of NULL pointer\', \'Representation of void pointer\', \'Error\', \'None of above\')\', \'Representation of NULL pointer\') , \'2\')}]\'maths\':[{A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to:((\'(\'1/55\', \'55\', \'3/11\', \'5/11\')\', \'1/55\') , \'2\')},{The average of first 50 natural numbers is:((\'(\'25.30\', \'25.00\', \'25.5\', \'12.00\')\', \'25.5\') , \'2\')},{The average of first 50 natural numbers is:((\'(\'25.30\', \'25.00\', \'25.5\', \'12.00\')\', \'25.5\') , \'2\')}]},\'other\':[{What was originally called the \"imitation game\" by its creator?:((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')},{What was originally called the \"imitation game\" by its creator?:((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')},{What was originally called the \"imitation game\" by its creator?:((\'(\'Cybernetics\', \'The Turing Test\', \'The Logic Theorist\', \'LISP\')\', \'The Turing Test\') , \'2\')}]}\'', NULL);

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
  `cv_updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `full_name`, `fname`, `lname`, `email_id`, `gender`, `age`, `phone`, `address`, `cv_file_path`, `cv_updated_at`) VALUES
(1001, 'ABCD1001 EFGH1001', 'ABCD1001', 'EFGH1001', 'ABCD1001_EFGH1001@gmail.com', 'F', 21, 9233372899, 'ABCD1001 EFGH1001 address1001', NULL, NULL),
(1002, 'ABCD1002 EFGH1002', 'ABCD1002', 'EFGH1002', 'ABCD1002_EFGH1002@gmail.com', 'M', 23, 8948399950, 'ABCD1002 EFGH1002 address1002', NULL, NULL),
(1003, 'ABCD1003 EFGH1003', 'ABCD1003', 'EFGH1003', 'ABCD1003_EFGH1003@gmail.com', 'F', 23, 9361763382, 'ABCD1003 EFGH1003 address1003', NULL, NULL),
(1004, 'ABCD1004 EFGH1004', 'ABCD1004', 'EFGH1004', 'ABCD1004_EFGH1004@gmail.com', 'F', 23, 9603814903, 'ABCD1004 EFGH1004 address1004', NULL, NULL),
(1005, 'ABCD1005 EFGH1005', 'ABCD1005', 'EFGH1005', 'ABCD1005_EFGH1005@gmail.com', 'F', 21, 9135676357, 'ABCD1005 EFGH1005 address1005', NULL, NULL),
(1006, 'ABCD1006 EFGH1006', 'ABCD1006', 'EFGH1006', 'ABCD1006_EFGH1006@gmail.com', 'M', 21, 9062990653, 'ABCD1006 EFGH1006 address1006', NULL, NULL),
(1007, 'ABCD1007 EFGH1007', 'ABCD1007', 'EFGH1007', 'ABCD1007_EFGH1007@gmail.com', 'F', 21, 9436342029, 'ABCD1007 EFGH1007 address1007', NULL, NULL),
(1008, 'ABCD1008 EFGH1008', 'ABCD1008', 'EFGH1008', 'ABCD1008_EFGH1008@gmail.com', 'M', 23, 8892507698, 'ABCD1008 EFGH1008 address1008', NULL, NULL),
(1009, 'ABCD1009 EFGH1009', 'ABCD1009', 'EFGH1009', 'ABCD1009_EFGH1009@gmail.com', 'M', 23, 9791365561, 'ABCD1009 EFGH1009 address1009', NULL, NULL),
(1010, 'ABCD1010 EFGH1010', 'ABCD1010', 'EFGH1010', 'ABCD1010_EFGH1010@gmail.com', 'M', 21, 9369069451, 'ABCD1010 EFGH1010 address1010', NULL, NULL),
(1011, 'ABCD1011 EFGH1011', 'ABCD1011', 'EFGH1011', 'ABCD1011_EFGH1011@gmail.com', 'M', 22, 9142135151, 'ABCD1011 EFGH1011 address1011', NULL, NULL),
(1012, 'ABCD1012 EFGH1012', 'ABCD1012', 'EFGH1012', 'ABCD1012_EFGH1012@gmail.com', 'F', 21, 9305665619, 'ABCD1012 EFGH1012 address1012', NULL, NULL),
(1013, 'ABCD1013 EFGH1013', 'ABCD1013', 'EFGH1013', 'ABCD1013_EFGH1013@gmail.com', 'F', 23, 9276523671, 'ABCD1013 EFGH1013 address1013', NULL, NULL),
(1014, 'ABCD1014 EFGH1014', 'ABCD1014', 'EFGH1014', 'ABCD1014_EFGH1014@gmail.com', 'F', 21, 9641197162, 'ABCD1014 EFGH1014 address1014', NULL, NULL),
(1015, 'ABCD1015 EFGH1015', 'ABCD1015', 'EFGH1015', 'ABCD1015_EFGH1015@gmail.com', 'M', 21, 9965870687, 'ABCD1015 EFGH1015 address1015', NULL, NULL),
(1016, 'ABCD1016 EFGH1016', 'ABCD1016', 'EFGH1016', 'ABCD1016_EFGH1016@gmail.com', 'M', 22, 9758622144, 'ABCD1016 EFGH1016 address1016', NULL, NULL),
(1017, 'ABCD1017 EFGH1017', 'ABCD1017', 'EFGH1017', 'ABCD1017_EFGH1017@gmail.com', 'M', 23, 9036097356, 'ABCD1017 EFGH1017 address1017', NULL, NULL),
(1018, 'ABCD1018 EFGH1018', 'ABCD1018', 'EFGH1018', 'ABCD1018_EFGH1018@gmail.com', 'M', 21, 9482006020, 'ABCD1018 EFGH1018 address1018', NULL, NULL),
(1019, 'ABCD1019 EFGH1019', 'ABCD1019', 'EFGH1019', 'ABCD1019_EFGH1019@gmail.com', 'M', 23, 8894617339, 'ABCD1019 EFGH1019 address1019', NULL, NULL),
(1020, 'ABCD1020 EFGH1020', 'ABCD1020', 'EFGH1020', 'ABCD1020_EFGH1020@gmail.com', 'F', 22, 8905825708, 'ABCD1020 EFGH1020 address1020', NULL, NULL),
(1021, 'ABCD1021 EFGH1021', 'ABCD1021', 'EFGH1021', 'ABCD1021_EFGH1021@gmail.com', 'M', 23, 9773019443, 'ABCD1021 EFGH1021 address1021', NULL, NULL),
(1022, 'ABCD1022 EFGH1022', 'ABCD1022', 'EFGH1022', 'ABCD1022_EFGH1022@gmail.com', 'M', 21, 9892574500, 'ABCD1022 EFGH1022 address1022', NULL, NULL),
(1023, 'ABCD1023 EFGH1023', 'ABCD1023', 'EFGH1023', 'ABCD1023_EFGH1023@gmail.com', 'M', 21, 9258994972, 'ABCD1023 EFGH1023 address1023', NULL, NULL),
(1024, 'ABCD1024 EFGH1024', 'ABCD1024', 'EFGH1024', 'ABCD1024_EFGH1024@gmail.com', 'M', 22, 9850752451, 'ABCD1024 EFGH1024 address1024', NULL, NULL),
(1025, 'ABCD1025 EFGH1025', 'ABCD1025', 'EFGH1025', 'ABCD1025_EFGH1025@gmail.com', 'M', 21, 9291732668, 'ABCD1025 EFGH1025 address1025', NULL, NULL),
(1026, 'ABCD1026 EFGH1026', 'ABCD1026', 'EFGH1026', 'ABCD1026_EFGH1026@gmail.com', 'F', 22, 9078492343, 'ABCD1026 EFGH1026 address1026', NULL, NULL),
(1027, 'ABCD1027 EFGH1027', 'ABCD1027', 'EFGH1027', 'ABCD1027_EFGH1027@gmail.com', 'F', 21, 9772498242, 'ABCD1027 EFGH1027 address1027', NULL, NULL),
(1028, 'ABCD1028 EFGH1028', 'ABCD1028', 'EFGH1028', 'ABCD1028_EFGH1028@gmail.com', 'F', 21, 9459778672, 'ABCD1028 EFGH1028 address1028', NULL, NULL),
(1029, 'ABCD1029 EFGH1029', 'ABCD1029', 'EFGH1029', 'ABCD1029_EFGH1029@gmail.com', 'F', 21, 9564661531, 'ABCD1029 EFGH1029 address1029', NULL, NULL),
(1030, 'ABCD1030 EFGH1030', 'ABCD1030', 'EFGH1030', 'ABCD1030_EFGH1030@gmail.com', 'F', 21, 9208028231, 'ABCD1030 EFGH1030 address1030', NULL, NULL),
(1031, 'ABCD1031 EFGH1031', 'ABCD1031', 'EFGH1031', 'ABCD1031_EFGH1031@gmail.com', 'F', 21, 9388091567, 'ABCD1031 EFGH1031 address1031', NULL, NULL),
(1032, 'ABCD1032 EFGH1032', 'ABCD1032', 'EFGH1032', 'ABCD1032_EFGH1032@gmail.com', 'M', 21, 9008672888, 'ABCD1032 EFGH1032 address1032', NULL, NULL),
(1033, 'ABCD1033 EFGH1033', 'ABCD1033', 'EFGH1033', 'ABCD1033_EFGH1033@gmail.com', 'M', 21, 9173665712, 'ABCD1033 EFGH1033 address1033', NULL, NULL),
(1034, 'ABCD1034 EFGH1034', 'ABCD1034', 'EFGH1034', 'ABCD1034_EFGH1034@gmail.com', 'M', 22, 9219614043, 'ABCD1034 EFGH1034 address1034', NULL, NULL),
(1035, 'ABCD1035 EFGH1035', 'ABCD1035', 'EFGH1035', 'ABCD1035_EFGH1035@gmail.com', 'F', 23, 9891483597, 'ABCD1035 EFGH1035 address1035', NULL, NULL),
(1036, 'ABCD1036 EFGH1036', 'ABCD1036', 'EFGH1036', 'ABCD1036_EFGH1036@gmail.com', 'F', 23, 8964657746, 'ABCD1036 EFGH1036 address1036', NULL, NULL),
(1037, 'ABCD1037 EFGH1037', 'ABCD1037', 'EFGH1037', 'ABCD1037_EFGH1037@gmail.com', 'M', 23, 9797427168, 'ABCD1037 EFGH1037 address1037', NULL, NULL),
(1038, 'ABCD1038 EFGH1038', 'ABCD1038', 'EFGH1038', 'ABCD1038_EFGH1038@gmail.com', 'F', 23, 8934524154, 'ABCD1038 EFGH1038 address1038', NULL, NULL),
(1039, 'ABCD1039 EFGH1039', 'ABCD1039', 'EFGH1039', 'ABCD1039_EFGH1039@gmail.com', 'M', 23, 9799303300, 'ABCD1039 EFGH1039 address1039', NULL, NULL),
(1040, 'ABCD1040 EFGH1040', 'ABCD1040', 'EFGH1040', 'ABCD1040_EFGH1040@gmail.com', 'F', 21, 9552088926, 'ABCD1040 EFGH1040 address1040', NULL, NULL),
(1041, 'ABCD1041 EFGH1041', 'ABCD1041', 'EFGH1041', 'ABCD1041_EFGH1041@gmail.com', 'M', 23, 9520940731, 'ABCD1041 EFGH1041 address1041', NULL, NULL),
(1042, 'ABCD1042 EFGH1042', 'ABCD1042', 'EFGH1042', 'ABCD1042_EFGH1042@gmail.com', 'F', 21, 9725876389, 'ABCD1042 EFGH1042 address1042', NULL, NULL),
(1043, 'ABCD1043 EFGH1043', 'ABCD1043', 'EFGH1043', 'ABCD1043_EFGH1043@gmail.com', 'M', 22, 9344341644, 'ABCD1043 EFGH1043 address1043', NULL, NULL),
(1044, 'ABCD1044 EFGH1044', 'ABCD1044', 'EFGH1044', 'ABCD1044_EFGH1044@gmail.com', 'F', 21, 9116121766, 'ABCD1044 EFGH1044 address1044', NULL, NULL),
(1045, 'ABCD1045 EFGH1045', 'ABCD1045', 'EFGH1045', 'ABCD1045_EFGH1045@gmail.com', 'M', 23, 9315097206, 'ABCD1045 EFGH1045 address1045', NULL, NULL),
(1046, 'ABCD1046 EFGH1046', 'ABCD1046', 'EFGH1046', 'ABCD1046_EFGH1046@gmail.com', 'M', 21, 9459893439, 'ABCD1046 EFGH1046 address1046', NULL, NULL),
(1047, 'ABCD1047 EFGH1047', 'ABCD1047', 'EFGH1047', 'ABCD1047_EFGH1047@gmail.com', 'M', 22, 9615587643, 'ABCD1047 EFGH1047 address1047', NULL, NULL),
(1048, 'ABCD1048 EFGH1048', 'ABCD1048', 'EFGH1048', 'ABCD1048_EFGH1048@gmail.com', 'F', 22, 8957602304, 'ABCD1048 EFGH1048 address1048', NULL, NULL),
(1049, 'ABCD1049 EFGH1049', 'ABCD1049', 'EFGH1049', 'ABCD1049_EFGH1049@gmail.com', 'F', 23, 9807939352, 'ABCD1049 EFGH1049 address1049', NULL, NULL),
(1050, 'ABCD1050 EFGH1050', 'ABCD1050', 'EFGH1050', 'ABCD1050_EFGH1050@gmail.com', 'M', 21, 9435964336, 'ABCD1050 EFGH1050 address1050', NULL, NULL);

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
