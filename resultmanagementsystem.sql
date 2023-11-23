-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 05:29 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resultmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(180) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `name`, `password`, `type`) VALUES
(2, 'admin1', 'admin1', '$2y$12$00okZjMxODgzZjVlZWNlMuDRYwZhzsOIBWpXYEHsBil82MZ97A/q2', 'superadmin'),
(3, 'admin', 'admin', '$2y$12$00okYzJjMjVlYjc0MDIxZew.HCSyGzgiL1M4L47IXBz/HWpIaD0LW', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `exam` varchar(100) NOT NULL,
  `exam_year` varchar(255) NOT NULL,
  `attendance` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_name`, `class`, `section`, `exam`, `exam_year`, `attendance`) VALUES
(1, 'student1', 'year 1', 'A', 'mid sem 1', '2023', '50');

-- --------------------------------------------------------

--
-- Table structure for table `card_expire_date`
--

CREATE TABLE `card_expire_date` (
  `id` int(11) NOT NULL,
  `expire_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card_expire_date`
--

INSERT INTO `card_expire_date` (`id`, `expire_date`) VALUES
(1, '2023-10-13');

-- --------------------------------------------------------

--
-- Table structure for table `card_usage_limit`
--

CREATE TABLE `card_usage_limit` (
  `id` int(11) NOT NULL,
  `card_limit` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card_usage_limit`
--

INSERT INTO `card_usage_limit` (`id`, `card_limit`) VALUES
(1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `class_numeric` int(11) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `show_position` varchar(10) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `class_numeric`, `teacher_name`, `note`, `show_position`) VALUES
(1, 'year 1', 1, 'teacher1', '', 'no'),
(2, 'year 2', 2, 'teacher2', '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `exam` varchar(100) NOT NULL,
  `exam_year` varchar(100) NOT NULL,
  `class_teacher_comment` mediumtext NOT NULL,
  `principal_comment` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `student_name`, `class`, `section`, `exam`, `exam_year`, `class_teacher_comment`, `principal_comment`) VALUES
(1, 'student1', 'year 1', 'A', 'mid sem 1', '2023', 'nice', 'very good');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `date`) VALUES
(4, 'mid sem 1', '2023-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `school_tagline` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `next_term_begins` varchar(255) NOT NULL,
  `current_school_session` varchar(255) NOT NULL,
  `no_times_school_open` varchar(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `admin_login_bg` varchar(255) NOT NULL,
  `student_login_bg` varchar(255) NOT NULL,
  `teacher_login_bg` varchar(255) NOT NULL,
  `main_url` varchar(255) NOT NULL,
  `reg_no_prefix` varchar(10) NOT NULL,
  `terminal_report_bg_image` varchar(255) NOT NULL,
  `school_website` varchar(255) NOT NULL,
  `school_stamp` varchar(255) NOT NULL,
  `principal_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `school_tagline`, `school_name`, `phone_no`, `email`, `address`, `footer`, `next_term_begins`, `current_school_session`, `no_times_school_open`, `logo`, `admin_login_bg`, `student_login_bg`, `teacher_login_bg`, `main_url`, `reg_no_prefix`, `terminal_report_bg_image`, `school_website`, `school_stamp`, `principal_name`) VALUES
(1, 'Education is the ultimate goal.', 'Prime School Of Education', '81280820061', 'Prime_school_of_education@gmail.com', '402, west city road, opp star mall.', 'Prime School of Education', '2023-03-15', '2023', '100', 'LogoMakr-5g9P3q.jpg', 'teahub.io-orange-phone-wallpaper-3648118.jpg', '', '', 'http://localhost/resultmanagementsystem', 'PSE', 'LogoMakr-0499Us.jpg', 'www.primeschoolof education.com', '', 'Dr ajay Upadhyaya');

-- --------------------------------------------------------

--
-- Table structure for table `generated_pins`
--

CREATE TABLE `generated_pins` (
  `id` int(11) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `date_generated` date NOT NULL,
  `expired_date` date NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `generated_pins`
--

INSERT INTO `generated_pins` (`id`, `pin`, `date_generated`, `expired_date`, `status`) VALUES
(1, '1619595472', '2023-05-05', '0000-00-00', 'open'),
(2, '8635498128', '2023-05-05', '0000-00-00', 'open'),
(3, '2768499420', '2023-05-05', '0000-00-00', 'open'),
(4, '5154397427', '2023-05-05', '0000-00-00', 'open'),
(5, '4412395011', '2023-05-05', '0000-00-00', 'open'),
(6, '3715897056', '2023-05-05', '0000-00-00', 'open'),
(7, '7358298759', '2023-05-05', '0000-00-00', 'open'),
(8, '6703898887', '2023-05-05', '0000-00-00', 'open'),
(9, '6419794893', '2023-05-05', '0000-00-00', 'open'),
(10, '7399498940', '2023-05-05', '0000-00-00', 'close');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `grade_name` varchar(20) NOT NULL,
  `grade_point` varchar(11) NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_upto` int(11) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `grade_name`, `grade_point`, `mark_from`, `mark_upto`, `note`) VALUES
(1, 'AA', '100', 95, 100, 'perfect'),
(2, 'AB', '95', 80, 90, 'Good ');

-- --------------------------------------------------------

--
-- Table structure for table `pins`
--

CREATE TABLE `pins` (
  `id` int(11) NOT NULL,
  `pin_code` varchar(100) NOT NULL,
  `expire_date` date NOT NULL,
  `date_issued` date NOT NULL,
  `used_by` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `card_usage` varchar(10) NOT NULL,
  `card_availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pins`
--

INSERT INTO `pins` (`id`, `pin_code`, `expire_date`, `date_issued`, `used_by`, `status`, `card_usage`, `card_availability`) VALUES
(1, '7399498940', '2023-10-13', '2023-05-05', 'student1', '1', '4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `name_of_student` varchar(255) NOT NULL,
  `class` varchar(100) NOT NULL,
  `exam` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `first_ca` int(11) NOT NULL,
  `second_ca` int(11) NOT NULL,
  `exam_score` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL,
  `current_school_session` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `name_of_student`, `class`, `exam`, `section`, `subject`, `first_ca`, `second_ca`, `exam_score`, `school_year`, `current_school_session`) VALUES
(1, 'student1', 'year 1', 'mid sem 1', 'A', 'maths', 20, 20, 60, '2023', '2023'),
(2, 'student1', 'year 1', 'mid sem 1', 'A', 'english', 15, 15, 55, '2023', '2023'),
(3, 'student1', 'year 1', 'mid sem 1', 'A', 'hindi', 20, 20, 60, '2023', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category` varchar(100) NOT NULL,
  `capacity` varchar(50) NOT NULL,
  `class` varchar(40) NOT NULL,
  `teacher_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `category`, `capacity`, `class`, `teacher_name`) VALUES
(1, 'A', 'primary', '50', '1', 'teacher1');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `classesID` int(11) NOT NULL,
  `registerNO` varchar(40) NOT NULL,
  `username` varchar(60) NOT NULL,
  `exam_pin` int(11) NOT NULL,
  `card_serial_no` varchar(255) NOT NULL,
  `sectionid` varchar(10) NOT NULL,
  `country` varchar(100) NOT NULL,
  `dob` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `state` varchar(100) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `name`, `password`, `sex`, `classesID`, `registerNO`, `username`, `exam_pin`, `card_serial_no`, `sectionid`, `country`, `dob`, `phone`, `religion`, `email`, `address`, `state`, `photo`, `status`) VALUES
(1, 'student1', '$2y$12$00okNDVkYjBiYmZlNzhhYuCscfN1bVu121vQmOhQV7ApTdbm8mzZG', 'female', 1, 'PSE/2023_600', 'student1', 64728, '7399498940', '1', 'Canada', '2023-03-15', '11111111111', 'Hindu', 'student1@gmail.com', 'satadhar', 'Gujarat', 'photo1678851105.jpeg', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_positions`
--

CREATE TABLE `student_class_positions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reg_no` varchar(150) NOT NULL,
  `class` varchar(60) NOT NULL,
  `section` varchar(60) NOT NULL,
  `exam` varchar(50) NOT NULL,
  `exam_year` varchar(100) NOT NULL,
  `marks_obtained` int(11) NOT NULL,
  `position` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_class_positions`
--

INSERT INTO `student_class_positions` (`id`, `name`, `reg_no`, `class`, `section`, `exam`, `exam_year`, `marks_obtained`, `position`) VALUES
(1, 'student1', 'PSE/2023_600', 'year 1', 'A', 'mid sem 1', '2023', 285, '1st');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `pass_mark` varchar(22) NOT NULL,
  `final_mark` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `subject_author` varchar(100) NOT NULL,
  `subject_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `class_id`, `teacher_name`, `pass_mark`, `final_mark`, `subject_name`, `subject_author`, `subject_code`) VALUES
(1, 1, 'teacher1', '23', '100', 'maths', 'ramanujan', 'maths_123'),
(2, 1, 'teacher2', '33', '100', 'english', 'makar', 'english_123'),
(3, 1, 'teacher3', '33', '100', 'hindi', 'vyas', 'hindi_123');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(40) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `joining_date` date NOT NULL,
  `photo` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `designation`, `dob`, `gender`, `religion`, `email`, `phone`, `address`, `joining_date`, `photo`, `username`, `password`, `status`) VALUES
(1, 'teacher1', 'class teacher', '2023-03-15', 'female', 'Hindu', 'teacher1@gmail.com', '11111111112', '111', '2023-03-15', '1.jpeg', 'teacher1', '$2y$12$00okZTc0MDFkZWUxY2JiMeTu6azzQSKyo8ESEIJ6Isy6Xa6Sf9nbK', 'on'),
(2, 'teacher2', 'class teacher', '2023-03-15', 'male', 'Hindu', 'teacher2@gmail.com', '22222222222', '22', '2023-03-15', '2.jpeg', 'teacher2', '$2y$12$00okYTkzODdmZWI5YjVkYO3ikSlVZd.q/5Tlzi0CTWKD1qWZzxjuq', 'on'),
(3, 'teacher3', 'teacher', '2023-04-09', 'male', 'Hindu', 'teacher3@gmail.com', '21212121121', '12/green apt.', '2023-04-09', '4.jpeg', 'teacher3', '$2y$12$00okNjNmMDJiMmM2ZjJmO.klIFCj.wA64Nm0/Kgzm5iwhQ6NVOeWO', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_expire_date`
--
ALTER TABLE `card_expire_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_usage_limit`
--
ALTER TABLE `card_usage_limit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generated_pins`
--
ALTER TABLE `generated_pins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pins`
--
ALTER TABLE `pins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `student_class_positions`
--
ALTER TABLE `student_class_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `card_expire_date`
--
ALTER TABLE `card_expire_date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `card_usage_limit`
--
ALTER TABLE `card_usage_limit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `generated_pins`
--
ALTER TABLE `generated_pins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pins`
--
ALTER TABLE `pins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_class_positions`
--
ALTER TABLE `student_class_positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
