-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2023 at 05:59 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cee_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_acc`
--

CREATE TABLE `admin_acc` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(1000) NOT NULL,
  `admin_pass` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_acc`
--

INSERT INTO `admin_acc` (`admin_id`, `admin_user`, `admin_pass`) VALUES
(1, 'admin@techtrivia', 'D@w$on100260');

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

CREATE TABLE `course_tbl` (
  `cou_id` int(11) NOT NULL,
  `cou_name` varchar(1000) NOT NULL,
  `cou_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course_tbl`
--

INSERT INTO `course_tbl` (`cou_id`, `cou_name`, `cou_created`) VALUES
(66, 'METAMANIA', '2023-04-12 15:01:54'),
(67, 'TECH TRIVIA', '2023-05-01 10:45:38'),
(68, 'ENTRANCE ROUND', '2023-05-05 17:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `examinee_tbl`
--

CREATE TABLE `examinee_tbl` (
  `exmne_id` int(11) NOT NULL,
  `exmne_fullname` varchar(1000) NOT NULL,
  `exmne_course` varchar(1000) NOT NULL,
  `exmne_gender` varchar(1000) NOT NULL,
  `exmne_birthdate` varchar(1000) NOT NULL,
  `exmne_year_level` varchar(1000) NOT NULL,
  `exmne_email` varchar(1000) NOT NULL,
  `exmne_password` varchar(1000) NOT NULL,
  `exmne_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `examinee_tbl`
--

INSERT INTO `examinee_tbl` (`exmne_id`, `exmne_fullname`, `exmne_course`, `exmne_gender`, `exmne_birthdate`, `exmne_year_level`, `exmne_email`, `exmne_password`, `exmne_status`) VALUES
(4, 'Rogz Nune', '26', 'male', '2019-11-15', 'third year', 'rogz.nunez2013@gmail.com', 'rogz', 'active'),
(5, 'Jane Rivera', '25', 'female', '2019-11-14', 'second year', 'jane@gmail.com', 'jane', 'active'),
(6, 'Glenn Duerme', '26', 'female', '2019-12-24', 'third year', 'glenn@gmail.com', 'glenn', 'active'),
(7, 'team1', '25', 'male', '2018-11-25', '0', 'team1@techtrivia', 'team1', 'active'),
(8, 'dalton', '67', 'female', '2019-12-21', 'second year', 'dalton', 'dalton', 'active'),
(10, 'Dawson Lester Lobo', '66', 'male', '2002-01-18', 'first year', 'dawson.lobo@gmail.com', 'dawsonlobo', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `exans_id` int(11) NOT NULL,
  `axmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `quest_id` int(11) NOT NULL,
  `exans_answer` varchar(1000) NOT NULL,
  `exans_status` varchar(1000) NOT NULL DEFAULT 'new',
  `exans_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_answers`
--

INSERT INTO `exam_answers` (`exans_id`, `axmne_id`, `exam_id`, `quest_id`, `exans_answer`, `exans_status`, `exans_created`) VALUES
(295, 4, 12, 25, 'Diode, inverted, pointer', 'old', '2019-12-07 02:52:14'),
(296, 4, 12, 16, 'Data Block', 'old', '2019-12-07 02:52:14'),
(297, 6, 12, 18, 'Programmable Logic Controller', 'old', '2019-12-05 12:59:47'),
(298, 6, 12, 9, '1850s', 'old', '2019-12-05 12:59:47'),
(299, 6, 12, 24, '1976', 'old', '2019-12-05 12:59:47'),
(300, 6, 12, 14, 'Operating System', 'old', '2019-12-05 12:59:47'),
(301, 6, 12, 19, 'WAN (Wide Area Network)', 'old', '2019-12-05 12:59:47'),
(302, 6, 11, 28, 'fds', 'new', '2019-12-05 12:04:28'),
(303, 6, 11, 29, 'sd', 'new', '2019-12-05 12:04:28'),
(304, 6, 12, 15, 'David Filo & Jerry Yang', 'new', '2019-12-05 12:59:47'),
(305, 6, 12, 17, 'System file', 'new', '2019-12-05 12:59:47'),
(306, 6, 12, 10, 'Field', 'new', '2019-12-05 12:59:47'),
(307, 6, 12, 9, '1880s', 'new', '2019-12-05 12:59:47'),
(308, 6, 12, 21, 'Temporary file', 'new', '2019-12-05 12:59:47'),
(309, 4, 11, 28, 'q1', 'new', '2019-12-05 13:30:21'),
(310, 4, 11, 29, 'dfg', 'new', '2019-12-05 13:30:21'),
(311, 4, 12, 16, 'Data Block', 'new', '2019-12-07 02:52:14'),
(312, 4, 12, 20, 'Plancks radiation', 'new', '2019-12-07 02:52:14'),
(313, 4, 12, 10, 'Report', 'new', '2019-12-07 02:52:14'),
(314, 4, 12, 24, '1976', 'new', '2019-12-07 02:52:14'),
(315, 4, 12, 9, '1930s', 'new', '2019-12-07 02:52:14'),
(316, 8, 12, 18, 'Programmable Lift Computer', 'new', '2020-01-05 03:18:35'),
(317, 8, 12, 14, 'Operating System', 'new', '2020-01-05 03:18:35'),
(318, 8, 12, 20, 'Einstein oscillation', 'new', '2020-01-05 03:18:35'),
(319, 8, 12, 21, 'Temporary file', 'new', '2020-01-05 03:18:35'),
(320, 8, 12, 25, 'Diode, inverted, pointer', 'new', '2020-01-05 03:18:35'),
(321, 9, 24, 31, '2', 'new', '2020-01-12 04:47:37'),
(322, 9, 24, 35, '8', 'new', '2020-01-12 04:47:37'),
(323, 9, 24, 33, '9', 'new', '2020-01-12 04:47:37'),
(324, 9, 24, 34, '8', 'new', '2020-01-12 04:47:37'),
(325, 9, 24, 32, '1', 'new', '2020-01-12 04:47:37'),
(326, 9, 25, 36, '4', 'new', '2020-01-12 05:10:11'),
(327, 9, 26, 37, '4', 'new', '2020-01-12 05:13:34');

-- --------------------------------------------------------

--
-- Table structure for table `exam_attempt`
--

CREATE TABLE `exam_attempt` (
  `examat_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `examat_status` varchar(1000) NOT NULL DEFAULT 'used'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_attempt`
--

INSERT INTO `exam_attempt` (`examat_id`, `exmne_id`, `exam_id`, `examat_status`) VALUES
(51, 6, 12, 'used'),
(52, 4, 11, 'used'),
(53, 4, 12, 'used'),
(54, 8, 12, 'used'),
(55, 9, 24, 'used'),
(56, 9, 25, 'used'),
(57, 9, 26, 'used'),
(58, 10, 27, 'used'),
(59, 8, 27, 'used');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_tbl`
--

CREATE TABLE `exam_question_tbl` (
  `eqt_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_question` varchar(1000) NOT NULL,
  `exam_ch1` varchar(1000) NOT NULL,
  `exam_ch2` varchar(1000) NOT NULL,
  `exam_ch3` varchar(1000) NOT NULL,
  `exam_ch4` varchar(1000) NOT NULL,
  `exam_answer` varchar(1000) NOT NULL,
  `exam_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_question_tbl`
--

INSERT INTO `exam_question_tbl` (`eqt_id`, `exam_id`, `exam_question`, `exam_ch1`, `exam_ch2`, `exam_ch3`, `exam_ch4`, `exam_answer`, `exam_status`) VALUES
(9, 12, 'In which decade was the American Institute of Electrical Engineers (AIEE) founded?', '1850s', '1880s', '1930s', '1950s', '1880s', 'active'),
(10, 12, 'What is part of a database that holds only one type of information?', 'Report', 'Field', 'Record', 'File', 'Field', 'active'),
(14, 12, 'OS computer abbreviation usually means ?', 'Order of Significance', 'Open Software', 'Operating System', 'Optical Sensor', 'Operating System', 'active'),
(15, 12, 'Who developed Yahoo?', 'Dennis Ritchie & Ken Thompson', 'David Filo & Jerry Yang', 'Vint Cerf & Robert Kahn', 'Steve Case & Jeff Bezos', 'David Filo & Jerry Yang', 'active'),
(16, 12, 'DB computer abbreviation usually means ?', 'Database', 'Double Byte', 'Data Block', 'Driver Boot', 'Database', 'active'),
(17, 12, '.INI extension refers usually to what kind of file?', 'Image file', 'System file', 'Hypertext related file', 'Image Color Matching Profile file', 'System file', 'active'),
(18, 12, 'What does the term PLC stand for?', 'Programmable Lift Computer', 'Program List Control', 'Programmable Logic Controller', 'Piezo Lamp Connector', 'Programmable Logic Controller', 'active'),
(19, 12, 'What do we call a network whose elements may be separated by some distance? It usually involves two or more small networks and dedicated high-speed telephone lines.', 'URL (Universal Resource Locator)', 'LAN (Local Area Network)', 'WAN (Wide Area Network)', 'World Wide Web', 'WAN (Wide Area Network)', 'active'),
(20, 12, 'After the first photons of light are produced, which process is responsible for amplification of the light?', 'Blackbody radiation', 'Stimulated emission', 'Plancks radiation', 'Einstein oscillation', 'Stimulated emission', 'active'),
(21, 12, '.TMP extension refers usually to what kind of file?', 'Compressed Archive file', 'Image file', 'Temporary file', 'Audio file', 'Temporary file', 'active'),
(22, 12, 'What do we call a collection of two or more computers that are located within a limited distance of each other and that are connected to each other directly or indirectly?', 'Inernet', 'Interanet', 'Local Area Network', 'Wide Area Network', 'Local Area Network', 'active'),
(24, 12, '	 In what year was the \"@\" chosen for its use in e-mail addresses?', '1976', '1972', '1980', '1984', '1972', 'active'),
(25, 12, 'What are three types of lasers?', 'Gas, metal vapor, rock', 'Pointer, diode, CD', 'Diode, inverted, pointer', 'Gas, solid state, diode', 'Gas, solid state, diode', 'active'),
(27, 15, 'asdasd', 'dsf', 'sd', 'yui', 'sdf', 'yui', 'active'),
(28, 11, 'Question 1', 'q1', 'asd', 'fds', 'ytu', 'q1', 'active'),
(29, 11, 'Question 2', 'asd', 'sd', 'q2', 'dfg', 'q2', 'active'),
(30, 11, 'Question 3', 'sd', 'q3', 'asd', 'fgh', 'q3', 'active'),
(31, 24, '1+1', '3', '8', '9', '2', 'd', 'active'),
(32, 24, '2+2=?', '1', '2', '3', '4', 'd', 'active'),
(33, 24, '1+2=?', '7', '8', '3', '9', 'c', 'active'),
(34, 24, '4+4=?', '8', '9', '7', '6', 'a', 'active'),
(35, 24, '9+9=?', '7', '9', '18', '8', 'c', 'active'),
(36, 25, '2+2=?', '4', '67', '8', '8', 'a', 'active'),
(37, 26, '2+2=?', '3', '6', '7', '4', 'D', 'active'),
(38, 27, 'What does the term \"metaverse\" refer to?', 'A virtual reality headset developed by Oculus.', 'A fictional world from a popular video game.', 'A virtual universe of interconnected digital spaces.', 'An augmented reality platform developed by Google.', 'A virtual universe of interconnected digital spaces.', 'active'),
(39, 27, 'Which of the following technologies is likely to play a significant role in the development of the metaverse?', 'Blockchain', 'Microwave', 'Fax machine', 'Typewriter', 'Blockchain', 'active'),
(40, 27, 'What is the primary purpose of the metaverse?', 'To serve as a replacement for the physical world.', 'To provide a platform for virtual reality gaming.', 'To enable social interactions and virtual economies.', 'To control robots remotely.', 'To enable social interactions and virtual economies.', 'active'),
(41, 28, 'Which of the following is an example of a relational database management system?', 'MongoDB', 'Oracle', 'Redis', 'Cassandra', 'Oracle', 'active'),
(42, 28, 'Which of the following is a widely-used programming language for creating dynamic web pages?', 'HTML', 'CSS', 'JavaScript', 'PHP', 'PHP', 'active'),
(43, 28, 'Which of the following is a programming language used for statistical computing and graphics?', 'Python', 'Ruby', 'R', 'Java', 'R', 'active'),
(44, 28, 'Who is the CEO of Open AI?', 'Elon Musk', 'Andrew Ng', 'Sam Altman', 'Greg Brockman', 'Sam Altman', 'active'),
(45, 28, '10110010 in hexadecimal', 'A3', 'B2', 'D5', 'A7', 'B2', 'active'),
(46, 28, 'Who is the current Indian minister of Electronics and Information Technology ?', 'S Jaishankar', 'Pralhad Joshi', 'Ashwini Vaishnaw', 'Rajeev Chandrasekhar', 'Ashwini Vaishnaw', 'active'),
(47, 28, 'Microsoft was founded in the year', '1975', '1985', '1995', '2005', '1975', 'active'),
(48, 28, 'Who programmed the first computer game Space War ! in 1962?', 'Steave Russell', 'Konard Zuse', 'Alna Ematage', 'Tim Berners Lee', 'Steave Russell', 'active'),
(49, 28, 'Who is the father of Internet?', 'Alan Perlis', 'Jean E. Sammet', 'Vint Cerf', 'Steve Lawrence', 'Vint Cerf', 'active'),
(50, 28, 'Which one is the first high level programing language?', 'C', 'COBOL', 'FORTAN', 'C++', 'FORTAN', 'active'),
(51, 28, 'Which one is the current fastest supercomputer in India?', 'Aadithya', 'Saga-220', 'Saharsa T', 'HP Apollo 6000', 'Saharsa T', 'active'),
(53, 28, 'Number of bits used by the IPV6 address', '32-Bit', '64-Bit', '128-Bit', '256-Bit', '128-Bit', 'active'),
(54, 28, 'The first centre of excellence for online gaming in India is to be set up in', 'Shilong', 'Patna', 'Mumbai', 'Chandigarh', 'Shilong', 'active'),
(55, 28, 'The longest railway platform in the world was inaugurated in ', 'Bhopal', 'Hubbali', 'Secunderbad', 'Managluru', 'Hubbali', 'active'),
(56, 28, 'ASCII value of \"a\" is', '0', '24', '75', '97', '0', 'active'),
(57, 28, 'What output statement is used in C++?', 'printf', 'scanf', 'cout', 'println', 'cout', 'active'),
(58, 28, 'Computers in a networking system are known as', 'Hubs', 'Nodes', 'Workstation', 'Systems', 'Nodes', 'active'),
(59, 28, 'Which one is the first layer in the OSI model', 'Network Layer', 'Data Link Layer', 'Transport Layer', 'Physical Layer', 'Physical Layer', 'active'),
(60, 28, 'Which virtual terminal protocol helps in remote login over the networks?', 'POP', 'IMAP', 'SSL', 'Telnet', 'Telnet', 'active'),
(61, 28, 'Which of the following device is used for controlling network security and access ', 'Modem', 'Switch', 'Routers', 'Firewalls', 'Firewalls', 'active'),
(62, 28, 'Which countrys president was the chief guest at the republic day parade this year 2023?', 'Algeria', 'Egypt', 'Jordan', 'Qatar', 'Egypt', 'active'),
(63, 28, 'Who becomes the fastest Indian to pick up 450 test wickets?', 'Ravindra Jadeja', 'Ravichandran Ashwin', 'Mohammed Shami', 'Anil Kumble', 'Ravichandran Ashwin', 'active'),
(64, 28, 'Java was developed by ?', 'Apple', 'IBM', 'Ericsson', 'Sun Microsystems', 'Sun Microsystems', 'active'),
(65, 28, 'Which of the following is the shortcut key for inserting a hyperlink in a document?', 'Ctrl + H', 'Ctrl + K', 'Ctrl + L', 'Ctrl + M', 'Ctrl + K', 'active'),
(66, 28, 'What is the full form of UPI?', 'United Payments Interface', 'Universal Payments Integration', 'Unified Payments Interface', 'Unique Payments Interchange', 'Unified Payments Interface', 'active'),
(67, 28, 'Who is Andy Jassy?', 'YouTuber', 'CEO', 'Philanthropist', 'Gamer', 'CEO', 'active'),
(68, 28, 'Which protocol is used to send emails?', 'HTTP', 'FTP', 'SMTP', 'SSH', 'SMTP', 'active'),
(69, 28, 'The CEO of BlackRock Inc. is', 'Larry Fink', 'Jamie Dimon', 'Elon Musk', 'Jeff Bezos', 'Larry Fink', 'active'),
(70, 28, 'Who is the creator of Bitcoin?', 'Nick Szabo', 'Hal Finney', 'Dorian Nakamoto', 'Satoshi Nakamoto', 'Satoshi Nakamoto', 'active'),
(72, 29, 'Who was the founder of the Bombay Stock Exchange (BSE)?', 'Harshad Mehta', 'Jamsetji Tata', 'Premchand Roychand', 'Dhirubhai Ambani', 'Premchand Roychand', 'active'),
(73, 29, 'Who was the first individual youtuber to hit 10 million subscribers on YouTube in India?', 'Ashish Chanchalani', 'Amit Bhadana', 'Carry Minati', 'Bhuvan Bam', 'Bhuvan Bam', 'active'),
(74, 29, 'What is the maximum supply of Bitcoin that will ever be created?', '10 million', '21 million', '50 million', '100 million', '21 million', 'active'),
(75, 29, 'Who developed java programming language', 'James Gosling', 'Douglas Enegelbart', 'Edmund M. Clarke', 'James D. Foley', 'James Gosling', 'active'),
(76, 28, 'Which organization is responsible for the creation and maintenance of Valorant?', 'Blizzard Entertainment', 'Electronic Arts', 'Riot Games', 'Valve Corporation', 'Riot Games', 'active'),
(77, 29, 'Which of the following is not an operating system?', 'DOS', 'Mac', 'OSI', 'Raspbian', 'OSI', 'active'),
(78, 29, 'Where did India won its first Olympic hockey gold ?', '1928', '1932', '1936', '1948', '1928', 'active'),
(79, 29, 'Which protocol is used to received e-mail?', 'SMTP', 'POP3', 'HTTP', 'FTP', 'POP3', 'active'),
(80, 29, 'Which country hosted the 2019 Cricket World Cup?', 'India', 'South Africa', 'England', 'Australia', 'England', 'active'),
(81, 29, 'Which of the following is a type of computer network that spans a large geographic area and connects multiple smaller networks?', 'LAN', 'WAN', 'MAN', 'PAN', 'WAN', 'active'),
(82, 29, 'Which of the following is NOT a type of artificial intelligence?', 'Deep Learning', 'Machine Learning', 'Natural Language Processing', 'Genetic Programming', 'Genetic Programming', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_tbl`
--

CREATE TABLE `exam_tbl` (
  `ex_id` int(11) NOT NULL,
  `cou_id` int(11) NOT NULL,
  `ex_title` varchar(1000) NOT NULL,
  `ex_time_limit` varchar(1000) NOT NULL,
  `ex_questlimit_display` int(11) NOT NULL,
  `ex_description` varchar(1000) NOT NULL,
  `ex_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_tbl`
--

INSERT INTO `exam_tbl` (`ex_id`, `cou_id`, `ex_title`, `ex_time_limit`, `ex_questlimit_display`, `ex_description`, `ex_created`) VALUES
(28, 67, 'Normal Class', '30', 30, '30 MCQ have to be answered by 30 minutes. No negative markings.All the best :)', '2023-05-01 16:31:14'),
(29, 68, 'Entrance Round', '10', 10, 'Teams have to answer 10 questions within 5 minutes. \r\nAll the best :)\r\n ', '2023-05-05 17:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks_tbl`
--

CREATE TABLE `feedbacks_tbl` (
  `fb_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `fb_exmne_as` varchar(1000) NOT NULL,
  `fb_feedbacks` varchar(1000) NOT NULL,
  `fb_date` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_acc`
--
ALTER TABLE `admin_acc`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course_tbl`
--
ALTER TABLE `course_tbl`
  ADD PRIMARY KEY (`cou_id`);

--
-- Indexes for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  ADD PRIMARY KEY (`exmne_id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`exans_id`);

--
-- Indexes for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  ADD PRIMARY KEY (`examat_id`);

--
-- Indexes for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  ADD PRIMARY KEY (`eqt_id`);

--
-- Indexes for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  ADD PRIMARY KEY (`fb_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_acc`
--
ALTER TABLE `admin_acc`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_tbl`
--
ALTER TABLE `course_tbl`
  MODIFY `cou_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  MODIFY `exmne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `exans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  MODIFY `examat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  MODIFY `eqt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  MODIFY `ex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  MODIFY `fb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
