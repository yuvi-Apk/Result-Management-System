-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 10:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(30) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `username`, `email`, `number`, `password`) VALUES
(17, 'yuvi', 'yubrajmahanta@gmail.com', 2147483647, '123'),
(23, 'tapas', 'tapas02@gmail.com', 1234567890, '123'),
(35, 'Admin', 'admin@email.com', 2147483647, '123');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `stream_id` int(10) NOT NULL,
  `stream` varchar(25) NOT NULL,
  `department` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`stream_id`, `stream`, `department`) VALUES
(1, 'BSC', 'computer science'),
(2, 'BSC', 'physics'),
(3, 'BSC', 'chemistry'),
(4, 'BSC', 'geology'),
(5, 'BSC', 'math'),
(6, 'BSC', 'zoology'),
(7, 'BCOM', 'commerce'),
(8, 'BA', 'sanskrit'),
(9, 'BA', 'sociology'),
(10, 'BA', 'political science');

-- --------------------------------------------------------

--
-- Table structure for table `department_ge_a`
--

CREATE TABLE `department_ge_a` (
  `d3_id` int(10) NOT NULL,
  `department` varchar(50) NOT NULL,
  `ge1` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_ge_a`
--

INSERT INTO `department_ge_a` (`d3_id`, `department`, `ge1`) VALUES
(1, 'computer science', 'physics'),
(2, 'physics', 'Math'),
(3, 'chemistry', 'Math'),
(4, 'geology', 'Physics'),
(5, 'math', 'Chemistry'),
(6, 'zoology', 'biodiversity'),
(7, 'commerce', 'Micro and indian economy'),
(8, 'sanskrit', 'History'),
(9, 'sanskrit', 'odia'),
(10, 'sanskrit', 'Political Science'),
(11, 'sanskrit', 'economics'),
(12, 'political science', 'History'),
(13, 'political science', 'odia'),
(14, 'political science', 'economics'),
(15, 'sociology', 'History'),
(16, 'sociology', 'odia'),
(17, 'sociology', 'Political Science'),
(18, 'sociology', 'economics');

-- --------------------------------------------------------

--
-- Table structure for table `department_ge_b`
--

CREATE TABLE `department_ge_b` (
  `d_id` int(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `ge_b` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_ge_b`
--

INSERT INTO `department_ge_b` (`d_id`, `department`, `ge_b`) VALUES
(0, 'department', 'ge-b'),
(1, 'computer science', 'math'),
(2, 'physics', 'chemistry'),
(3, 'chemistry', 'phy'),
(4, 'geology', 'math'),
(5, 'math', 'physics'),
(6, 'zoology', 'chemistry'),
(7, 'commerce', 'indian economy'),
(8, 'sanskrit', 'History'),
(9, 'sanskrit', 'odia'),
(10, 'sanskrit', 'Political Science'),
(11, 'sanskrit', 'economics'),
(12, 'political science', 'History'),
(13, 'political science', 'odia'),
(14, 'political science', 'economics'),
(15, 'sociology', 'History'),
(16, 'sociology', 'odia'),
(17, 'sociology', 'Political Science'),
(18, 'sociology', 'economics');

-- --------------------------------------------------------

--
-- Table structure for table `department_subject`
--

CREATE TABLE `department_subject` (
  `d_id` int(10) NOT NULL,
  `department` varchar(50) NOT NULL,
  `core1` varchar(50) NOT NULL,
  `core2` varchar(50) NOT NULL,
  `ge1` varchar(50) NOT NULL,
  `aecc1` varchar(30) NOT NULL,
  `ev1` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_subject`
--

INSERT INTO `department_subject` (`d_id`, `department`, `core1`, `core2`, `ge1`, `aecc1`, `ev1`) VALUES
(1, 'computer science', 'programming with c', 'digital logic', 'physics', 'Environmental science', 'Ethics and values'),
(2, 'physics', 'Mathematical Physics', 'Mechanics', 'Math', 'Environmental science', 'Ethics and values'),
(3, 'chemistry', 'Inorganic Chemistry-1', 'Physical Chemistry-1', 'Math', 'Environmental science', 'Ethics and values'),
(4, 'geology', 'General Geology and Quaternary Geology', 'Tectonics and remote sensing', 'Physics', 'Environmental science', 'Ethics and values'),
(5, 'math', 'Calculus-1', 'Discrete Mathematics', 'Chemistry', 'Environmental science', 'Ethics and values'),
(6, 'zoology', 'non-chordate-1', 'Principle of ecology', 'biodiversity', 'Environmental science', 'Ethics and values'),
(7, 'commerce', 'Financial Accounting', 'Business Low', 'Micro and indian economy', 'Environmental science', 'Ethics and values'),
(8, 'sanskrit', 'Moral teaching and basic of science', 'Drama and History of sanskrit lecture-1', 'History', 'Environmental science', 'Ethics and values'),
(13, 'political science', 'Understanding Polytical Theory', 'Constitutional Govt. and Democracy in India', 'odia', 'Environmental science', 'Ethics and values'),
(15, 'sociology', 'Introduction to Sociology-1', 'Introductionto sociology-II', 'History', 'Environmental science', 'Ethics and values');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `message` varchar(500) NOT NULL,
  `feedback_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `email`, `message`, `feedback_id`) VALUES
('name', 'email', 'bjedbjde', 1),
('Bibhudutta Pradhan', 'nayakgadu0@gmail.com', '$hjadbjmadnm', 2),
('yubraj mahanta', 'yubrajmahanta@gmail.com', '$bmSCkjzcxbmbmxs', 4),
('Bibhudutta Pradhan', 'nayakgadu0@gmail.com', '$hvvnnb', 5),
('Ashis Kumar Khanda', 'nayakgadu0@gmail.com', '$bjmshjdcbn', 6),
('Tapas Ranjan patra', 'yubrajmahanta@gmail.com', '$jhbhbnbn', 8),
('Bibhudutta Pradhan', 'nayakgadu0@gmail.com', '$jqeedd', 9),
('yubraj mahanta', 'ashiskumarkhanda017@gmail.com', '$khhukihkjlkn.', 10),
('Tapas Ranjan patra', 'ashiskumarkhanda017@gmail.com', '$hjbfdkjfxmn', 11),
('Satyabrata Patra', 'ashiskumarkhanda017@gmail.com', '$bnvhjghbn', 12),
('yubraj mahanta', 'tapash0382@gmail.com', '$jhghnvnbnb', 13),
('Bibhudutta Pradhan', 'tapash0382@gmail.com', '$hbbj,hbhb', 14),
('Bibhudutta Pradhan', 'tapash0382@gmail.com', 'll', 15),
('', '', '', 16),
('Tapas Ranjan Patra', 'tapas@email.com', 'PHP id very good!', 17),
('Tapas Ranjan Patra', 'tapas@email.com', 'PHP id very bad!', 18);

-- --------------------------------------------------------

--
-- Table structure for table `new_result`
--

CREATE TABLE `new_result` (
  `roll` varchar(50) NOT NULL,
  `paper1` int(50) NOT NULL,
  `paper2` int(50) NOT NULL,
  `compulsory` int(50) NOT NULL,
  `elective` int(50) NOT NULL,
  `ethics_and_value` int(30) NOT NULL,
  `result_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_result`
--

INSERT INTO `new_result` (`roll`, `paper1`, `paper2`, `compulsory`, `elective`, `ethics_and_value`, `result_id`) VALUES
('2321D011 ', 45, 65, 10, 15, 15, 221),
('2321D050 ', 54, 32, 98, 23, 21, 222);

-- --------------------------------------------------------

--
-- Table structure for table `new_student`
--

CREATE TABLE `new_student` (
  `name` varchar(50) NOT NULL,
  `aadhar` int(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(30) NOT NULL,
  `email` varchar(80) NOT NULL,
  `number` int(30) NOT NULL,
  `roll` varchar(50) NOT NULL,
  `registration` varchar(30) NOT NULL,
  `stream` varchar(32) NOT NULL,
  `department` varchar(35) NOT NULL,
  `aecc2` varchar(50) NOT NULL,
  `gea` varchar(50) NOT NULL,
  `geb` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `student_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_student`
--

INSERT INTO `new_student` (`name`, `aadhar`, `dob`, `gender`, `email`, `number`, `roll`, `registration`, `stream`, `department`, `aecc2`, `gea`, `geb`, `class`, `student_id`) VALUES
('Bibek Parhi', 2147483647, '2003-10-17', 'male', 'bibek@gmail.com', 2147483647, '2321D011', '189748/21', 'BSC', 'chemistry', 'ODIA', 'Math', 'phy', '3rd semester', 277),
('yubraj', 2147483647, '1950-01-01', 'male', 'yubrajmahanta@gmail.com', 2147483647, '2321D050', '5465433', 'BSC', 'computer science', 'ODIA', 'physics', 'math', '1st semester', 278);

-- --------------------------------------------------------

--
-- Table structure for table `new_subject`
--

CREATE TABLE `new_subject` (
  `roll` varchar(50) NOT NULL,
  `paper1` varchar(50) NOT NULL,
  `paper2` varchar(50) NOT NULL,
  `compulsory` varchar(50) NOT NULL,
  `elective` varchar(50) NOT NULL,
  `ethics_and_value` varchar(50) NOT NULL,
  `subject_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_subject`
--

INSERT INTO `new_subject` (`roll`, `paper1`, `paper2`, `compulsory`, `elective`, `ethics_and_value`, `subject_id`) VALUES
('2321D011', 'Inorganic Chemistry-1', 'Physical Chemistry-1', 'Environmental science', 'Math', 'Ethics and values', 86),
('2321D050', 'programming with c', 'digital logic', 'Environmental science', 'physics', 'Ethics and values', 87);

-- --------------------------------------------------------

--
-- Table structure for table `rechecking`
--

CREATE TABLE `rechecking` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `roll` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `paper` varchar(50) NOT NULL,
  `rechecking_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register_student`
--

CREATE TABLE `register_student` (
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `roll` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register_student`
--

INSERT INTO `register_student` (`username`, `email`, `roll`, `password`, `id`) VALUES
('yuvi', 'yubrajmahanta@gmail.com', '2321D050', '1234', 12);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `rid` int(10) NOT NULL,
  `roll` varchar(15) NOT NULL,
  `core1` varchar(20) NOT NULL,
  `core2` varchar(20) NOT NULL,
  `ge1` varchar(20) NOT NULL,
  `aecc1` varchar(20) NOT NULL,
  `ev1` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`rid`, `roll`, `core1`, `core2`, `ge1`, `aecc1`, `ev1`) VALUES
(14, '2321D030', '54', '47', '55', '42', '17'),
(16, '2321D050', '45', '84', '45', '78', '12'),
(17, '2122D047', '355', '343', '3454', '76', '89'),
(18, '2122D012', '12', '23', '54', '23', '54'),
(19, '2221D041', '334', '34', '43', '23', '34'),
(20, '2321D003', '23', '32', '433', '54', '32'),
(21, '2321D009', '12', '45', '76', '23', '12');

-- --------------------------------------------------------

--
-- Table structure for table `result_peending`
--

CREATE TABLE `result_peending` (
  `rp_id` int(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `roll` varchar(30) NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semester_department`
--

CREATE TABLE `semester_department` (
  `semester` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `core1` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semester_department`
--

INSERT INTO `semester_department` (`semester`, `department`, `core1`) VALUES
('1st semester', 'computer science', 'programming using c'),
('2nd semester', 'computer science', 'programming C++'),
('3rd semester', 'computer science', 'operating system'),
('4th semester', 'computer science', 'java programming'),
('5th semester', 'computer science', 'web technology'),
('6th semester', 'computer science', 'artificial intelligence'),
('', '', ''),
('', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `stream`
--

CREATE TABLE `stream` (
  `ost_id` int(10) NOT NULL,
  `stream` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stream`
--

INSERT INTO `stream` (`ost_id`, `stream`) VALUES
(1, 'BSC'),
(2, 'BCOM'),
(3, 'BA');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(20) NOT NULL,
  `aadhaar` varchar(12) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(30) NOT NULL,
  `num` varchar(10) NOT NULL,
  `roll` varchar(12) NOT NULL,
  `registration` varchar(10) NOT NULL,
  `department` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `aadhaar`, `dob`, `gender`, `email`, `num`, `roll`, `registration`, `department`) VALUES
('Somun Sahoo', '564525887885', '2001-04-05', 'other', 'somun909@gmail.com', '4578865256', '2122D003', '18975/78', 'Odia'),
('Akshay Kumar Mahanta', '24555335554', '2001-02-12', 'male', 'akshay34@gmail.com', '6354412784', '2122D012', '18974/56', 'Sociology'),
('efewes', '646513266121', '0201-04-12', 'male', 'jisksi@ji.omc', '9857545566', '2122D047', '45789/55', 'English'),
('Pruthwiraj Bal', '426587956564', '2006-03-21', 'male', 'pruthwiraj990@gmail.com', '9856457586', '2221D041', '17489/56', 'Polytical Science'),
('Ashis Kumar Khanda', '292745681733', '2003-09-10', 'male', 'ashiskumarkhanda017@gmail.com', '9861755048', '2321D003', '23', 'computer science'),
('Ranil Shaw', '986854572', '2013-04-05', 'other', 'ranil3002@gmail.com', '9865457557', '2321D009', '18795/01', 'Polytical Science'),
('satyabrata patra', '565565654741', '0045-12-20', 'other', 'gsjah@hj.lk', '3256487592', '2321D011', '47895/52', 'Physics'),
('Tapas Ranjan patra', '487817884586', '2003-10-26', 'male', 'tapash0382@gamil.com', '7978001633', '2321D030', '177', 'computer science'),
('yubraj mahanta', '364633236565', '2004-09-17', 'male', 'yubrajmahanta@gmail.com', '6371236118', '2321D031', '1894787', 'computer science'),
('BIbek Parhi', '554555555555', '2003-05-23', 'female', 'bibek45@gmail.com', '7878456522', '2321D033', '18794/52', 'History'),
('Sai Yagyandatta Seth', '444444444444', '0021-01-22', 'male', 'sai@gmail.com', '9439457865', '2321D044', '18974/54', 'English'),
('Narendra Modi', '640212042481', '1950-01-01', 'male', 'narendra@gmail.com', '7978456123', '2321D050', '18954/44', 'Computer Science'),
('yuvi', '126545421212', '2004-09-17', 'male', 'yubraj@gmail.com', '6532323325', '2321D090', '15123/45', 'History'),
('utg', '666', '0002-02-20', 'male', '222ddd@fr.ni', '556611', '7421D012', '54145/86', 'History');

-- --------------------------------------------------------

--
-- Table structure for table `ysubject`
--

CREATE TABLE `ysubject` (
  `roll` varchar(15) NOT NULL,
  `semester` varchar(30) NOT NULL,
  `core1` varchar(50) NOT NULL,
  `core2` varchar(50) NOT NULL,
  `ge1` varchar(50) NOT NULL,
  `aecc1` varchar(30) NOT NULL,
  `ev1` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ysubject`
--

INSERT INTO `ysubject` (`roll`, `semester`, `core1`, `core2`, `ge1`, `aecc1`, `ev1`) VALUES
('2221D041', '', 'programming with c', 'digital logic', 'physics', 'Environmental Science', 'Ethics and Values-I'),
('2321D003', '1st semester', 'programming with c', 'digital logic', 'physics', 'Environmental Science', 'Ethics and Values-I'),
('2321D009', '', 'Moral teaching and basic of science', 'Drama and History of sanskrit lecture-1', 'Political Science', 'Environmental Science', 'Ethics and Values-I'),
('2321D030', '', 'Programming With C', 'Digital Logic', 'Physics', 'Environmental Science', 'Ethics and Values-I'),
('2321D031', '', 'Educational Philosophy', 'Introduction to Sociology-II', 'History', 'Environmental Science', 'Ethics and Values-I'),
('2321D044', '', 'Mathematical Physics', 'Digital Logic', 'Micro & Indian Economics', 'Environmental Science', 'Ethics and Values-I'),
('2321D050', '', 'Programming With C', 'Digital Logic', 'Physics', 'Environmental Science', 'Ethics and Values-I'),
('2321D090', '', 'Educational Philosophy', 'Digital Logic', 'Chemistry', 'Environmental Science', 'Ethics and Values-I');

-- --------------------------------------------------------

--
-- Table structure for table `yuvi`
--

CREATE TABLE `yuvi` (
  `id` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `phone` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `yuvi`
--

INSERT INTO `yuvi` (`id`, `name`, `gender`, `phone`) VALUES
(132, 'aadhar', 'dob', 0),
(133, '123456789123', '2/16/2003', 0),
(134, '123456789124', '17-95-0110', 0),
(135, '123456789125', '2/17/2003', 0),
(136, '123456789126', '17-95-0111', 0),
(137, '123456789127', '2/18/2003', 0),
(138, '123456789128', '17-95-0112', 0),
(139, '123456789129', '2/19/2003', 0),
(140, '123456789130', '17-95-0113', 0),
(141, '123456789131', '2/20/2003', 0),
(142, '123456789132', '17-95-0114', 0),
(143, '123456789133', '2/21/2003', 0),
(144, '123456789134', '17-95-0115', 0),
(145, '123456789135', '2/22/2003', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`stream_id`);

--
-- Indexes for table `department_ge_a`
--
ALTER TABLE `department_ge_a`
  ADD PRIMARY KEY (`d3_id`);

--
-- Indexes for table `department_subject`
--
ALTER TABLE `department_subject`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `new_result`
--
ALTER TABLE `new_result`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `new_student`
--
ALTER TABLE `new_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `new_subject`
--
ALTER TABLE `new_subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `rechecking`
--
ALTER TABLE `rechecking`
  ADD PRIMARY KEY (`rechecking_id`),
  ADD UNIQUE KEY `roll` (`roll`);

--
-- Indexes for table `register_student`
--
ALTER TABLE `register_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `result_peending`
--
ALTER TABLE `result_peending`
  ADD PRIMARY KEY (`rp_id`);

--
-- Indexes for table `stream`
--
ALTER TABLE `stream`
  ADD PRIMARY KEY (`ost_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`roll`);

--
-- Indexes for table `ysubject`
--
ALTER TABLE `ysubject`
  ADD PRIMARY KEY (`roll`);

--
-- Indexes for table `yuvi`
--
ALTER TABLE `yuvi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `stream_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `department_ge_a`
--
ALTER TABLE `department_ge_a`
  MODIFY `d3_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `department_subject`
--
ALTER TABLE `department_subject`
  MODIFY `d_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `new_result`
--
ALTER TABLE `new_result`
  MODIFY `result_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `new_student`
--
ALTER TABLE `new_student`
  MODIFY `student_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `new_subject`
--
ALTER TABLE `new_subject`
  MODIFY `subject_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `rechecking`
--
ALTER TABLE `rechecking`
  MODIFY `rechecking_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `register_student`
--
ALTER TABLE `register_student`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `result_peending`
--
ALTER TABLE `result_peending`
  MODIFY `rp_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `stream`
--
ALTER TABLE `stream`
  MODIFY `ost_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `yuvi`
--
ALTER TABLE `yuvi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
