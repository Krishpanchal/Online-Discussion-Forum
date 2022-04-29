-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2021 at 06:48 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ntech`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(162) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_desc` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `learn_more` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_desc`, `created`, `learn_more`) VALUES
(1, 'Common Discussion', 'You can ask and discuss any coding and technical related discussion over here.', '2021-08-22 19:38:53', 'https://www.w3schools.com/'),
(2, 'Software', 'Software is a collection of instructions and data that tell a computer how to work. This is in contrast to physical hardware, from which the system is built and actually performs the work.', '2021-08-22 19:40:00', 'https://www.geeksforgeeks.org/how-software-is-made/'),
(3, 'Hardware', 'Computer hardware includes the physical parts of a computer, such as the case,central processing unit (CPU), monitor, mouse, keyboard, computer data storage, graphics card, sound card, speakers and motherboard.', '2021-08-22 19:40:39', 'https://www.computerhope.com/jargon/h/hardware.htm'),
(4, 'Raspberry Pi', 'Raspberry Pi is a series of small single-board computers (SBCs) developed in the United Kingdom by the Raspberry Pi Foundation in association with Broadcom. The Raspberry Pi project originally leaned towards the promotion of teaching basic computer scienc', '2021-08-22 19:43:55', 'https://www.raspberrypi.org/'),
(5, 'MicroControllers', 'A microcontroller is a compact integrated circuit designed to govern a specific operation in an embedded system. A typical microcontroller includes a processor, memory and input/output (I/O) peripherals on a single chip.', '2021-08-22 19:45:28', 'https://www.tutorialspoint.com/microprocessor/microcontrollers_overview.htm'),
(6, 'OS', 'OS is also known as operating system, it is a system software that manages computer hardware, software resources, and provides common services for computer programs.', '2021-08-22 19:49:18', 'https://www.tutorialspoint.com/operating_system/os_overview.htm'),
(7, 'Cyber Security', 'Cyber security is the application of technologies, processes and controls to protect systems, networks, programs, devices and data from cyber attacks.\r\nIt aims to reduce the risk of cyber attacks and protect against the unauthorised exploitation of system', '2021-08-22 19:55:05', 'https://www.kaspersky.co.in/resource-center/definitions/what-is-cyber-security'),
(8, 'Processors', 'In computing, a processor or processing unit is a digital circuit which performs operations on some external data source, usually memory or some other data stream.[1] It typically takes the form of a microprocessor, which can be implemented on a single me', '2021-08-22 19:55:51', 'https://www.techopedia.com/definition/28254/processor'),
(9, 'HTML ', 'The Hyper Text Markup Language, or HTML is the standard markup language for documents designed to be displayed in a web browser.', '2021-08-22 19:56:17', 'https://www.w3schools.com/html/'),
(10, 'JAVA', 'Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible.', '2021-08-22 19:56:56', 'https://docs.oracle.com/en/java/'),
(11, 'Android', 'Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets.', '2021-08-22 19:58:29', 'https://www.tutorialspoint.com/android/index.htm'),
(12, 'Python', 'Python is an interpreted high-level general-purpose programming language. Its design philosophy emphasizes code readability with its use of significant indentation. Its language constructs as well as its object-oriented approach aim to help programmers wr', '2021-08-22 19:59:47', 'https://www.w3schools.com/python/'),
(13, 'C Programming Language', 'C is a general-purpose, procedural computer programming language supporting structured programming, lexical variable scope, and recursion, with a static type system. By design, C provides constructs that map efficiently to typical machine instructions.', '2021-08-30 09:55:54', 'https://www.tutorialspoint.com/cprogramming/index.htm'),
(14, 'C++ Programming Language', 'C++ is a general-purpose programming language created by Bjarne Stroustrup as an extension of the C programming language, or \"C with Classes\".', '2021-08-30 10:13:35', 'https://www.w3schools.com/cpp/cpp_intro.asp');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(162) NOT NULL,
  `comment_content` text NOT NULL,
  `thread_id` int(162) NOT NULL,
  `comment_by` int(162) NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread_id` int(162) NOT NULL,
  `thread_title` varchar(255) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` int(162) NOT NULL,
  `thread_user_id` int(162) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(162) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(162) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(162) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(162) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(162) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
