-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2018 at 09:00 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'Manager', 'General User'),
(4, 'Members', 'member users'),
(5, 'SuperAdmin', 'Super Admin users'),
(8, 'Clients', '<h1>Dummy text and image generators for your next mockup or website project</h1>\r\n\r\n<p>There&rsquo;s nothing like threatening to go live with a bunch of Bill Murray pictures on a website to &lsquo;encourage&rsquo; your clients to send you their content faster.</p>\r\n\r\n<p>So here&rsquo;s a few generators you can use on your mockups and websites.</p>\r\n\r\n<p>P.S. You&rsquo;ll notice the image generators allow you to embed a URL directly into an tag. That means you don&rsquo;t have to upload dummy pics to your clients site and mess up their media library. Cool huh?</p>\r\n\r\n<h2>Text</h2>\r\n\r\n<p><a href=\"https://loripsum.net/\" target=\"_blank\"><strong>Loripsum</strong></a>&nbsp;&ndash; The best generator I could find because it optionally includes lists, formatting, blockquotes and a bunch of other HTML</p>\r\n\r\n<p><a href=\"https://panipsum.com/\" target=\"_blank\"><strong>Pan Ipsum</strong></a>&nbsp;&ndash; Gives you the option to generate text with a lot of different word lists</p>\r\n\r\n<p><a href=\"https://baconipsum.com/\" target=\"_blank\"><strong>Bacon Ipsum</strong></a>&nbsp;&ndash; If you want to make your client hungry</p>\r\n\r\n<h2>Images</h2>\r\n\r\n<p><a href=\"https://lorempixel.com/\" target=\"_blank\"><strong>Lorempixel</strong></a>&nbsp;&ndash; The best image generator I&rsquo;ve found. Allows you to embed directly with a size and a category e.g. <img src=\"”&lt;a\" />https://lorempixel.com/400/200/sports/&rdquo; /&gt;. Also lets you specify greyscale or colour</p>\r\n\r\n<p><a href=\"https://dummyimage.com/\" target=\"_blank\"><strong>Dummy Image</strong></a>&nbsp;&ndash; If you don&rsquo;t want real images, this one generates a blank placeholder with the size written in the middle. Saves people working out what size image they need to send</p>\r\n\r\n<p><a href=\"https://www.fillmurray.com/\" target=\"_blank\"><strong>Fill Murray</strong></a>&nbsp;&ndash; Who doesn&rsquo;t love a website full of Bill?</p>\r\n\r\n<h2>People</h2>\r\n\r\n<p><a href=\"https://uinames.com/\" target=\"_blank\"><strong>UI Names</strong></a>&nbsp;&ndash; Every time you press space, it generates a new profile with name, image, gender, country, phone, birthday, email and password</p>\r\n\r\n<p><a href=\"https://www.randomthing.me/\" target=\"_blank\"><strong>Random Thing Generator</strong></a>&nbsp;&ndash; Very simple. Generates Names, Addresses and Business Names</p>\r\n\r\n<p><a href=\"https://www.fakenamegenerator.com/\" target=\"_blank\"><strong>Fake Name Generator</strong></a>&nbsp;&ndash; Extremely comprehensive profile generator all the way down to favourite colour and what car they drive</p>\r\n\r\n<p><a href=\"https://randomuser.me/\" target=\"_blank\"><strong>Random User</strong></a>&nbsp;&ndash; This one has an API for when you want to fill an app with profiles</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modules`
--

CREATE TABLE `tbl_modules` (
  `mid` int(15) NOT NULL,
  `user_id` int(15) DEFAULT NULL,
  `group_id` int(15) DEFAULT NULL,
  `modules_slug` text,
  `modules_name` text,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_modules`
--

INSERT INTO `tbl_modules` (`mid`, `user_id`, `group_id`, `modules_slug`, `modules_name`, `created_date`) VALUES
(1, NULL, 1, '[\"admin\",\"auth\",\"auth\\/groups\"]', '[\"Dashboard\",\"Users\",\"Groups\"]', '2018-08-23 09:42:11'),
(2, NULL, 4, '[\"admin\"]', '[\"Dashboard\",\"Users\",\"Groups\"]', '2018-08-23 10:31:18'),
(3, NULL, 4, '[\"admin\"]', '[\"Dashboard\",\"Users\",\"Groups\"]', '2018-08-23 11:18:21'),
(4, NULL, 1, '[\"admin\",\"auth\",\"auth\\/groups\"]', '[\"Dashboard\",\"Users\",\"Groups\"]', '2018-08-23 12:51:51'),
(5, NULL, 4, '[\"admin\"]', '[\"Dashboard\",\"Users\",\"Groups\"]', '2018-08-23 12:51:54'),
(6, NULL, 5, '[\"admin\",\"auth\",\"auth\\/groups\"]', '[\"Dashboard\",\"Users\",\"Groups\"]', '2018-08-23 13:00:51'),
(7, NULL, 6, '[\"admin\"]', '[\"Dashboard\",\"Users\",\"Groups\"]', '2018-08-24 06:22:22'),
(8, NULL, 6, '[\"admin\"]', '[\"Dashboard\",\"Users\",\"Groups\"]', '2018-08-24 06:26:37'),
(9, NULL, 7, 'null', '[\"Dashboard\",\"Users\",\"Groups\"]', '2018-08-24 06:28:08'),
(10, NULL, 7, 'null', '[\"Dashboard\",\"Users\",\"Groups\"]', '2018-08-24 06:28:23'),
(11, NULL, 7, 'null', '[\"Dashboard\",\"Users\",\"Groups\"]', '2018-08-24 06:28:50'),
(12, NULL, 7, 'null', '[\"Dashboard\",\"Users\",\"Groups\"]', '2018-08-24 06:29:41'),
(13, NULL, 7, '[\"admin\"]', '[\"Dashboard\",\"Users\",\"Groups\"]', '2018-08-24 06:29:48'),
(14, NULL, 7, '[\"admin\"]', '[\"Dashboard\",\"Users\",\"Groups\"]', '2018-08-24 06:30:03'),
(15, NULL, 7, '[\"admin\"]', '[\"Dashboard\",\"Users\",\"Groups\"]', '2018-08-24 06:30:10'),
(16, NULL, 8, '[\"admin\",\"auth\"]', '[\"Dashboard\",\"Users\",\"Groups\"]', '2018-08-24 06:30:24'),
(17, NULL, 8, '[\"admin\",\"auth\"]', '[\"Dashboard\",\"Users\",\"Groups\"]', '2018-08-24 06:30:29'),
(18, NULL, 8, '[\"admin\",\"auth\"]', '[\"Dashboard\",\"Users\",\"Groups\"]', '2018-08-24 06:30:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_templates`
--

CREATE TABLE `tbl_templates` (
  `tmp_id` int(15) NOT NULL,
  `tmp_name` varchar(255) DEFAULT NULL,
  `tmp_contents` text,
  `tmp_type` varchar(255) DEFAULT NULL,
  `tmp_status` int(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, 'G3ZsKJCh0HJNcBhqSemkD.', 1268889823, 1535088598, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(4, '::1', 'ranjan.singh@overair.in', '$2y$08$QbMSYyRQ7CGYGftbLCJej.YBU4UPzTdHQJzfY5xpBqtr2nHP8cQeC', NULL, 'ranjan.singh@overair.in', NULL, NULL, NULL, NULL, 1535019824, NULL, 1, 'Ranjan', 'kumar', 'Leading company', '9911702296'),
(6, '::1', 'ashwani7jul@gmail.com', '$2y$08$DnxmyooAzgWNSM/EbNTm0.ndkDFf21waLO8f88v4XorDmPZNMuu/O', NULL, 'ashwani7jul@gmail.com', NULL, NULL, NULL, NULL, 1535021653, NULL, 1, 'amit', 'singh', 'Leading company', '9911702296'),
(7, '::1', 'amit.rathi@gmail.com', '$2y$08$MA2spLSXY3pbsSzta5F0COPVh14ejyHY9n/3LPb5uMAFY3GpXrer2', NULL, 'amit.rathi@gmail.com', NULL, NULL, NULL, NULL, 1535021709, NULL, 1, 'Rathi', 'singh', 'Leading company', '9911702296'),
(8, '::1', 'imransaifi11@gmail.com', '$2y$08$MwNDCMLBlQgzjcGRu7m81e1Ff0wZhcQtA4lB8BDm0.zVewcMAJ59q', NULL, 'imransaifi11@gmail.com', NULL, NULL, NULL, NULL, 1535021749, NULL, 1, 'imran', 'khan', 'Leading company', '9911702296'),
(10, '::1', 'imransaifi@gmail.com', '$2y$08$aBS4MwoXElDvIE2XiTfGqeHI7U4F3CKQDfhlmme/f43tKii27Wcr6', NULL, 'imransaifi@gmail.com', NULL, NULL, NULL, NULL, 1535022548, 1535029336, 1, 'Administrator', 'kumar', 'Leading company', '9911702296'),
(11, '::1', 'anoop.singh@gmail.com', '$2y$08$8it5liX0ZTrJ0sXxn1EndeISUWVrZkrPdnJF4bpxUrXid6.31kjea', NULL, 'anoop.singh@gmail.com', NULL, NULL, NULL, NULL, 1535022646, NULL, 1, 'anoop', 'singh', 'Leading company', '9911702296');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(8, 1, 1),
(27, 4, 2),
(18, 6, 4),
(25, 7, 2),
(20, 8, 4),
(28, 10, 5),
(26, 11, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `tbl_templates`
--
ALTER TABLE `tbl_templates`
  ADD PRIMARY KEY (`tmp_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  MODIFY `mid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_templates`
--
ALTER TABLE `tbl_templates`
  MODIFY `tmp_id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
