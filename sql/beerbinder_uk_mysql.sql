-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Host: beerbinder.uk.mysql:3306
-- Generation Time: Mar 24, 2018 at 08:44 PM
-- Server version: 10.1.30-MariaDB-1~xenial
-- PHP Version: 5.4.45-0+deb7u12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `beerbinder_uk_database`
--
CREATE DATABASE `beerbinder_uk_database` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `beerbinder_uk_database`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `article_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `article_title_content` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `article_rating` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `article_content` text COLLATE utf8_unicode_ci NOT NULL,
  `article_country` text COLLATE utf8_unicode_ci NOT NULL,
  `article_timestamp` int(11) NOT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=64 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `article_title`, `article_type`, `article_title_content`, `article_rating`, `article_content`, `article_country`, `article_timestamp`) VALUES
(1, 'Punk IPA', 'IPA', 'wowwwwwwwzas', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled ', 'UK', 1520928526),
(2, 'LAGER', 'Lager', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled ', 'Denmark', 1520928526),
(3, 'LAGER', 'Ale', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled ', 'Denmark', 1520928526),
(4, 'CIDER', 'Stout', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled ', 'Denmark', 1520928526),
(5, 'Hobgoblin', 'ale', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled ', 'Denmark', 1520928526),
(6, 'ButterBeer', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled ', 'Denmark', 1520928526),
(7, 'Dead Pony', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled ', 'Denmark', 1520928526),
(8, 'fdasfas', '', '', '', 'fdsafs', '', 1521794685),
(9, 'fsdafsda', '', '', '', 'fdsafsd', '', 1521794689),
(10, 'fsdafsda', '', '', '', 'fdsafsd', '', 1521794725),
(11, 'dsfsda', '', '', '', 'fsdafsd', '', 1521794728),
(12, 'fdfd', '', '', '', 'fdfd', '', 1521794866),
(13, 'fdfd', '', '', '', 'fdfdfd', '', 1521795131),
(14, 'vvvv', '', '', '', 'vvvvvv', 'vvvvv', 1521795513),
(15, 'fdfdfd', '', '', '', 'fdfdfdfd', 'fdfdfdfd', 1521795793),
(16, 'test1', '', '', '', 'vcdvfdvfv', 'england', 1521795902),
(17, 'fff', '', '', '', 'ffff', 'fff', 1521795960),
(18, '09:12', '09:12', '', '', '09:12', '09:12', 1521796411),
(19, '09:14', '09:14', '09:14', '', '09:14', '09:14', 1521796589),
(20, 'Spitfire', 'Ale', 'Wicked sick beer', '', 'Amazing, 10/10 would beer again', 'ENGLAND', 1521801252),
(21, 'sdfsdfsd', 'sdfsdf', 'erwerwe', '', 'rwrwerwer', 'werwererw', 1521812082),
(22, 'asdasd', 'asdas', 'asd', '', 'asdasd', 'dasd', 1521812504),
(23, 'conors gay', 'fsdfsdf', 'sdfsdf', '', 'sdfsd', 'sdfs', 1521813106),
(24, 'test 19:25', 'test 19:25', 'test 19:25', '', 'test 19:25', 'test 19:25', 1521833159),
(25, 'test 19:26', 'test 19:26', 'test 19:26', '', 'test 19:26', 'test 19:26', 1521833200),
(26, 'test 19:26', 'test 19:26', 'test 19:26', '', 'test 19:26', 'test 19:26', 1521833214),
(27, 'test 19:26', 'test 19:26', 'test 19:26', '', 'test 19:26', 'test 19:26', 1521833228),
(28, 'test 19:26', 'test 19:26', 'test 19:26', '', 'test 19:26', 'test 19:26', 1521833842),
(29, 'test 20:50', 'test 20:50', 'test 20:50', '', 'test 20:50', 'test 20:50', 1521838434),
(30, 'test 20:50', 'test 20:50', 'test 20:50test 20:50', '', 'test 20:50', 'test 20:50', 1521838445),
(31, 'test 123', 'test 123', 'test 123', 'test 123', 'test 123', 'test 123', 1521838673),
(32, 'name of beer', 'type of beer', 'description title', 'beer rating', 'contentcontentcontent', 'country', 1521838720),
(33, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521838764),
(34, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521838768),
(35, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521839904),
(36, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521839996),
(37, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521840040),
(38, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521840882),
(39, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521841592),
(40, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521841652),
(41, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521841774),
(42, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521841787),
(43, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521841918),
(44, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521841927),
(45, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521841991),
(46, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521842091),
(47, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521842269),
(48, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521842315),
(49, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521842341),
(50, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521842881),
(51, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521842890),
(52, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521842941),
(53, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521842975),
(54, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521843225),
(55, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521843544),
(56, 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 'test12345', 1521843653),
(57, 'test 10:42', 'test 10:42', 'test 10:42', '2', 'test 10:42', 'test 10:42', 1521888168),
(58, 'test 10:42', 'test 10:42', 'test 10:42', '2', 'test 10:42', 'test 10:42', 1521888176),
(59, 'test 10:43', 'test 10:43', 'test 10:43', '5', 'test 10:43', 'test 10:43', 1521888206),
(60, 'Test 10:45', 'Test 10:45', '', '4', 'Test 10:45', 'Test 10:45', 1521888587),
(61, 'Test 10:45', 'Test 10:45', '', '4', 'Test 10:45', 'Test 10:45', 1521888599),
(62, 'Test 10:45', 'Test 10:45', '', '4', 'Test 10:45', 'Test 10:45', 1521888628),
(63, 'Test 10:45', 'Test 10:45', '', '1', 'Test 10:45', 'Test 10:45', 1521888641);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`) VALUES
(1, 'admin', '5f4dcc3b5aa765d61d8327deb882cf99');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
