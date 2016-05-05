-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 06, 2016 at 12:23 AM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `courses`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_admin_comments`
--

CREATE TABLE IF NOT EXISTS `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) DEFAULT NULL,
  `body` text,
  `resource_id` varchar(255) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', '$2a$10$tuszjTHNdxJGHP4JXLnNzO.KcWoA.YnsZmahM7BCVchRo34djtc72', NULL, NULL, NULL, 5, '2016-05-05 20:42:10', '2016-05-05 13:21:21', '127.0.0.1', '127.0.0.1', '2016-05-04 14:10:05', '2016-05-05 20:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `ckeditor_assets`
--

CREATE TABLE IF NOT EXISTS `ckeditor_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_file_name` varchar(255) NOT NULL,
  `data_content_type` varchar(255) DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `assetable_id` int(11) DEFAULT NULL,
  `assetable_type` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ckeditor_assetable_type` (`assetable_type`,`type`,`assetable_id`),
  KEY `idx_ckeditor_assetable` (`assetable_type`,`assetable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `user_id` int(11) DEFAULT NULL,
  `lecture_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_user_id` (`user_id`),
  KEY `index_comments_on_lecture_id` (`lecture_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `user_id`, `lecture_id`, `created_at`, `updated_at`) VALUES
(8, 'impotrant...', 5, 7, '2016-05-05 21:17:33', '2016-05-05 21:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `desc` text,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_courses_on_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `image`, `desc`, `user_id`, `created_at`, `updated_at`) VALUES
(11, 'Perl', '0020_999_1373967199_perl_256.png', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 10, '2016-05-05 20:52:24', '2016-05-05 20:52:24'),
(12, 'Java', '469b61ea7d1cfc66e68fd442a94b5012_large_copy.jpg', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 10, '2016-05-05 20:57:12', '2016-05-05 20:57:12'),
(13, 'C++', 'C__-Programming-wallpaper.jpg', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test vv</p>\r\n', 10, '2016-05-05 21:01:27', '2016-05-05 21:01:27'),
(14, 'Asp.Net', 'net.png', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 10, '2016-05-05 21:03:47', '2016-05-05 21:03:47'),
(15, 'Mobile App', 'images.jpeg', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 10, '2016-05-05 21:05:57', '2016-05-05 21:05:57'),
(16, 'Security', '26653163-Hacker-programing-in-technology-enviroment-with-cyber-icons-and-symbols-Stock-Photo.jpg', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 10, '2016-05-05 21:09:44', '2016-05-05 21:09:44'),
(17, 'PhP', 'course_web04.jpg', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 5, '2016-05-05 21:12:34', '2016-05-05 21:12:34'),
(18, 'Python', 'rsz_pp.jpg', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 5, '2016-05-05 21:15:33', '2016-05-05 21:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE IF NOT EXISTS `lectures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `attach` varchar(255) DEFAULT NULL,
  `content` text,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_lectures_on_user_id` (`user_id`),
  KEY `index_lectures_on_course_id` (`course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `title`, `attach`, `content`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(7, 'Lecture 1', 'HTML5.pptx', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 10, 11, '2016-05-05 20:54:58', '2016-05-05 20:54:58'),
(8, 'Lecture 2', 'HTML5.pptx', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 10, 11, '2016-05-05 20:55:56', '2016-05-05 20:55:56'),
(9, 'Lecture 1', 'HTML5.pptx', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 10, 12, '2016-05-05 20:59:13', '2016-05-05 20:59:13'),
(10, 'Lecture 2', 'HTML5.pptx', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 10, 12, '2016-05-05 20:59:46', '2016-05-05 20:59:46'),
(11, 'Lecture 1', 'HTML5.pptx', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test v</p>\r\n', 10, NULL, '2016-05-05 21:01:57', '2016-05-05 21:01:57'),
(12, 'Lecture 1', 'HTML5.pptx', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test v</p>\r\n', 10, 13, '2016-05-05 21:02:07', '2016-05-05 21:02:07'),
(13, 'Lecture 2', 'HTML5.pptx', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test v</p>\r\n', 10, 13, '2016-05-05 21:02:59', '2016-05-05 21:02:59'),
(14, 'Lecture 1', 'HTML5.pptx', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 10, 14, '2016-05-05 21:04:33', '2016-05-05 21:04:33'),
(15, 'Lecture 2', 'HTML5.pptx', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 10, 14, '2016-05-05 21:05:01', '2016-05-05 21:05:01'),
(16, 'Lecture 1', 'HTML5.pptx', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 10, 15, '2016-05-05 21:06:18', '2016-05-05 21:06:18'),
(17, 'Lecture 2', 'HTML5.pptx', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 10, 15, '2016-05-05 21:06:41', '2016-05-05 21:06:41'),
(18, 'Lecture 1', 'HTML5.pptx', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 10, 16, '2016-05-05 21:10:11', '2016-05-05 21:10:11'),
(19, 'Lecture 2', 'HTML5.pptx', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 10, 16, '2016-05-05 21:10:38', '2016-05-05 21:10:38'),
(20, 'Lecture 1', 'HTML5.pptx', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 5, 17, '2016-05-05 21:13:15', '2016-05-05 21:13:15'),
(21, 'Lecture 2', 'HTML5.pptx', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 5, 17, '2016-05-05 21:14:57', '2016-05-05 21:14:57'),
(22, 'Lecture 1', 'HTML5.pptx', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;</p>\r\n', 5, 18, '2016-05-05 21:15:49', '2016-05-05 21:15:49'),
(23, 'Lecture 2', 'HTML5.pptx', '<p>Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test&nbsp;Test v</p>\r\n', 5, 18, '2016-05-05 21:16:24', '2016-05-05 21:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20160503145622'),
('20160503150341'),
('20160503150655'),
('20160503150721'),
('20160503150817'),
('20160503171512'),
('20160503183053'),
('20160503192553'),
('20160504093944'),
('20160504140457'),
('20160504140501'),
('20160505111824'),
('20160505182409');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `gender` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `gender`, `name`, `bdate`, `image`, `role`) VALUES
(5, 'aya@gmail.com', '$2a$10$vvop3VSkA85xkHfaHjMpxu80/ilu8HQOI7Su56t4dkDabllca.LsW', NULL, NULL, NULL, 16, '2016-05-05 21:19:17', '2016-05-05 21:11:38', '127.0.0.1', '127.0.0.1', '2016-05-03 18:54:03', '2016-05-05 21:19:17', 1, 'aya', '2016-05-20', '12311121_1291732017564124_1312271280054220094_n.png', 'instractor'),
(9, 'noha@gmail.com', '$2a$10$/zhCKAnJSnV.fFJskmOF3u56iMPh4Ku0vSfJLdBUWuC9jgfgUJG32', NULL, NULL, NULL, 1, '2016-05-05 18:53:44', '2016-05-05 18:53:44', '127.0.0.1', '127.0.0.1', '2016-05-05 18:53:44', '2016-05-05 18:53:44', 1, 'noha', '2016-05-27', 'Screenshot_from_2016-05-05_11_04_49.png', 'instractor'),
(10, 'caroline@gmail.com', '$2a$10$PNB.YQmpS.ghpMey4DUm7uKPRBN5z.fSDxjmEmOpYrInftOBaepIC', NULL, NULL, NULL, 1, '2016-05-05 20:50:57', '2016-05-05 20:50:57', '127.0.0.1', '127.0.0.1', '2016-05-05 20:50:57', '2016-05-05 20:50:57', 1, 'caroline', '2014-12-11', 'programer_mysql.png', 'instractor');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `votable_id` int(11) DEFAULT NULL,
  `votable_type` varchar(255) DEFAULT NULL,
  `voter_id` int(11) DEFAULT NULL,
  `voter_type` varchar(255) DEFAULT NULL,
  `vote_flag` tinyint(1) DEFAULT NULL,
  `vote_scope` varchar(255) DEFAULT NULL,
  `vote_weight` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_votes_on_voter_id_and_voter_type_and_vote_scope` (`voter_id`,`voter_type`,`vote_scope`),
  KEY `index_votes_on_votable_id_and_votable_type_and_vote_scope` (`votable_id`,`votable_type`,`vote_scope`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_rails_da9eb9513e` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rails_03de2dc08c` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `fk_rails_b3c61f05ef` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lectures`
--
ALTER TABLE `lectures`
  ADD CONSTRAINT `fk_rails_bbbf25c9a6` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rails_5a439a4e07` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
