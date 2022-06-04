-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2022 at 02:08 PM
-- Server version: 10.2.44-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `picturem_software123`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_data`
--

CREATE TABLE `api_data` (
  `id` int(11) NOT NULL,
  `Dname` varchar(191) NOT NULL,
  `file` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_data`
--

INSERT INTO `api_data` (`id`, `Dname`, `file`) VALUES
(22, 'hpnotebook', 'D:/Android_security.rtf'),
(53, 'hpnotebook', 'Android_security.rtf'),
(54, 'hpnotebook', 'Links.txt'),
(55, 'hpnotebook', 'cxvdcv.jks'),
(56, 'hpnotebook', 'cxvdcv.jks'),
(57, 'hpnotebook', 'server.zip'),
(58, 'hpnotebook', 'Android_security.rtf'),
(59, 'hpnotebook', 'Android_security.rtf'),
(60, 'hpnotebook', 'Android_security.rtf'),
(61, 'hpnotebook', 'Android_security.rtf'),
(62, 'hpnotebook', 'Android_security.rtf'),
(63, 'hpnotebook', 'Android_security.rtf'),
(64, 'hpnotebook', 'Android_security.rtf'),
(66, 'hpnotebook', 'cxvdcv.jks'),
(67, 'hpnotebook', 'Android_security.rtf'),
(68, 'hpnotebook', 'Links.txt');

-- --------------------------------------------------------

--
-- Table structure for table `api_token`
--

CREATE TABLE `api_token` (
  `id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_token`
--

INSERT INTO `api_token` (`id`, `token`, `status`) VALUES
(1, 'NdcS6casvLokN023wlLOun4dVhOsdfn52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `meta_keyword` mediumtext DEFAULT NULL,
  `navbar_status` tinyint(1) DEFAULT 0,
  `status` tinyint(1) DEFAULT 0 COMMENT '0=visible, 1=hidden, 2=deleted',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `navbar_status`, `status`, `created_at`) VALUES
(11, 'Antivirus', 'anti-tu', 'sdasda', 'sdasdasd', 'sadasda', 'sdasd', 0, 0, '2022-05-24 09:04:11'),
(12, 'hacking ', 'hacking ', 'hacking ', 'hacking ', 'hacking ', 'hacking ', 0, 0, '2022-05-24 09:04:38'),
(13, 'Web Hacking', 'Web Hacking', 'Web Hacking', 'Web Hacking', 'Web Hacking', 'Web Hacking', 0, 0, '2022-05-24 09:04:59'),
(14, 'Windows', 'Windows', 'Windows', 'Windows', 'Windows', 'Windows', 0, 0, '2022-05-24 09:05:12');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `ip` varchar(64) NOT NULL,
  `country` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `ip`, `country`) VALUES
(1, '212.4.76.244', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `simple_exe` varchar(191) DEFAULT NULL,
  `afct_exe` varchar(191) DEFAULT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `name`, `slug`, `description`, `image`, `simple_exe`, `afct_exe`, `meta_title`, `meta_description`, `meta_keyword`, `status`, `created_at`) VALUES
(15, 11, 'Avast Premium Security 2022 Free Download', 'antivirous-', '           <p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Calibri, &quot;Myriad Pro&quot;, Myriad, &quot;Trebuchet MS&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\">Avast Premium Security 2022 is a highly reliable and effective application which offers real-time protection against all kinds of attacks. It is a powerful antivirus application that provides multiple functions related to internet security, privacy, and performance, designed to protect your computer PC from malware, protect your personal information, and ensure smooth system operation. This wonderful tool consists of improved home network scanning, automatic software updates, secure banking, firewall, DNS hijacking protection, data shredding, and more. It’s everything you need, from the most trusted security in the world.</span><br></p>           ', '1653383187.jpg', '1654167312.exe', '1654167312.exe', 'Free Antivirous ', '           Free Antivirous            ', '                      Free Antivirous            ', 0, '2022-05-24 09:06:27'),
(16, 12, 'Windows Server 2016 Standard May 2022 Free Download', 'DBConvert', '      <p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Calibri, &quot;Myriad Pro&quot;, Myriad, &quot;Trebuchet MS&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\">Avast Premium Security is the ultimate suite which provides complete online protection for all kinds of digital devices including computers, phones, and tablets.It includes an antivirus engine, firewall, browsing protection and browser cleanup tool.It also includes an advanced military-grade data shredder, which can wipe important files, documents and other personal data, and ensure there’s no chance they can be recovered.It offers real-time protection and various scanning modes, including quick, full, and custom. It also gives you the possibility to create an isolated virtual desktop where no potential attacker can see it, where you can safely conduct online shopping and banking. The program also enables you to find updates for software and device drivers. It also includes ransomware shields, Wi-Fi checkers, a sandbox for testing files in a virtual environment,</span><br></p>      ', '1653383256.png', '1654167633.exe', '1654167633.exe', 'DBConvert', '      DBConvert      ', '            DBConvert      ', 0, '2022-05-24 09:07:36'),
(17, 13, 'McAfee Endpoint Security 2021 Free Download', 'WeBuilder', '    <p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Calibri, &quot;Myriad Pro&quot;, Myriad, &quot;Trebuchet MS&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\">McAfee Endpoint Security 2021 is a reliable and powerful application that provides full-proof security and protection for the network computers against zero-day attack, malware transmitted through email and the Internet.The program provides an advanced, integrated and centrally managed protection for your devices.This is a comprehensive yet simple security suite that integrates all the essential functions into a single and manageable environment.It is a reliable application which provides a flexible framework that allows multiple endpoint defense technologies to communicate in real time to analyze and collaborate against new and advanced threats.</span><br></p>    ', '1653383313.png', '1653911994.exe', '1653911994.exe', 'WeBuilder ', '    WeBuilder     ', '        WeBuilder     ', 0, '2022-05-24 09:08:33'),
(23, 12, 'AVG Internet Security 2019 Free Download', '99999', '             <p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Calibri, &quot;Myriad Pro&quot;, Myriad, &quot;Trebuchet MS&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\">AVG Internet Security is the most used and famous antivirus through which users can protect their computer and identity from the internet. It prevents Viruses, Spyware, Hacks, Spam, or other malicious activity reaching toward users computer. It blocks the application containing viruses and spyware before installing or extracting on the user’s computer. It also monitors users browsers and prevents users to browse through unwanted or vulnerable websites.&nbsp;</span><br></p>             ', '1653478900.png', '1653912001.exe', '1653912001.exe', '99999', '             99999             ', '                          99999             ', 0, '2022-05-25 11:41:40'),
(57, 12, 'Kaspersky Total Security 2019 Free Download', 'gdfgdfdf', '                          <p style=\"margin: 0.25em 0px 0.75em; padding: 0px; line-height: 19.5px; color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Calibri, &quot;Myriad Pro&quot;, Myriad, &quot;Trebuchet MS&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\">Below are some noticeable features which you’ll experience after Kaspersky Total Security 2019 download free.</p><p style=\"margin: 0.25em 0px 0.75em; padding: 0px; line-height: 19.5px; color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Calibri, &quot;Myriad Pro&quot;, Myriad, &quot;Trebuchet MS&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\">Protecting privacy, money and your children from the risks and risks of the Internet:<br>– Protects your computer against common Internet attacks<br>– Increases security for purchasing and banking operations<br>– Protects your personal information and privacy<br>– Helps keep your children safe from internet threats<br>– Combines improved performance with higher security</p>                          ', '1653649961.png', '1653912008.exe', '1653912008.exe', 'dfgdfg', '                          dfgdgdf                          ', '                                                    gdfgd                          ', 0, '2022-05-26 12:33:56'),
(58, 12, 'Advanced SystemCare Ultimate 11 Free Download', 'dfgdfgdfgdfg', '          <p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, Calibri, &quot;Myriad Pro&quot;, Myriad, &quot;Trebuchet MS&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\">The antivirus engine included in this impressive toolset allows you to run the scanning process in a quick mode for verifying common malware hiding spots, full mode for checking all portions of your hard drive and the custom mode for scanning only the drives or the directories which you find suspicious. Advanced SystemCare Ultimate 11 can also protect you from the incoming attacks with it’s real time guard. If your PC is equipped with a webcam and you unwillingly have to share your computer with other people then you can activate the FaceID in order to find out who is using your PC. It has also been equipped with the components for preventing from the hijackers. Advanced SystemCare Ultimate 11 can easily stop all the unnecessary running programs or services in order to free up RAM and update the outdated drivers. It can also be used for optimizing various different parts of your system and get rid of all the malicious plugins or toolbars. All in all Advanced SystemCare Ultimate 11 is an imposing application which can be used for protecting your PC from different virus attacks and for speeding up the performance of your PC.&nbsp;</span><br></p>          ', '1653642392.webp', '1653912016.exe', '1653912016.exe', '121321312321', '          121321312321          ', '                    121321312321          ', 0, '2022-05-27 07:17:25'),
(153, 11, 'vxcvxcvxc', 'vxcvxcvxc', '<p>vxcvvxcvx</p>', '1654168399.jpg', '1654168399.exe', '1654168399.exe', 'cvxc', 'vxcvxcv', 'xvxv', 0, '2022-06-02 11:13:19'),
(154, 11, 'fsdfsdf', 'sdfsd', '<p>fsfd</p>', '1654169040.jpg', '1654169040.exe', '1654169040.exe', 'ssdfds', 'fdsfdsf', 'dsfsdf', 0, '2022-06-02 11:24:00'),
(155, 11, 'zxczxc', 'zxczxc', '<p>zxczcx</p>', '1654170499.jpg', '1654170499.exe', '1654170499.exe', 'zxczxzx', 'czxc', 'zxczxc', 0, '2022-06-02 11:48:19'),
(156, 11, 'dsadas', 'dasd', '<p>sadasdasd</p>', '1654170735.PNG', '1654170735.exe', '1654170735.exe', 'asdas', 'dasdas', 'das', 0, '2022-06-02 11:52:15'),
(157, 12, 'sadasdasd', 'asdas', '<p>dasdasd</p>', '1654170909.png', '1654170909.exe', '1654170909.exe', 'asdas', 'das', 'sadasd', 0, '2022-06-02 11:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(191) NOT NULL,
  `lname` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=user, 1=admin, 2=superadmin',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `role_as`, `created_at`) VALUES
(1, 'Black', 'break', 'sekibahi@gmail.com\r\n', '12657fd8avbdef', 2, '2022-06-02 12:08:04'),
(2, 'back', 'aye2', 'ab32434rgd565@gmail.com', '12657fd8avbdef', 1, '2022-06-02 12:08:10'),
(5, 'dsfsf', 'sdfdsf', 'jxzncjxz8344@gmail.com', '12657fd8avbdef', 0, '2022-06-02 12:08:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_data`
--
ALTER TABLE `api_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_token`
--
ALTER TABLE `api_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_data`
--
ALTER TABLE `api_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `api_token`
--
ALTER TABLE `api_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
