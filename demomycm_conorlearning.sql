-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 08, 2018 at 06:56 PM
-- Server version: 5.6.38
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demomycm_conorlearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_country` varchar(255) NOT NULL,
  `article_content` text NOT NULL,
  `article_timestamp` int(11) NOT NULL,
  `article_image` varchar(200) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `article_title`, `article_country`, `article_content`, `article_timestamp`, `article_image`, `category_id`) VALUES
(76, 'lah', 'jkjk', 'kn', 1518282977, '', 1),
(74, 'fdfd', 'vdvcvdv', 'fdfdfd', 1509919548, '', 4),
(71, 'test wheat beer', 'test', 'test', 1506615534, '', 8),
(72, 'grolsh', 'fhjshfs', 'geermany', 1507134949, '', 1),
(70, 'pale example', 'test', 'test', 1506615521, '', 7),
(16, 'Pilsner', 'Czech Republic', 'BLAH BLAH BLAH TEST', 1513102414, '', 9),
(69, 'test amber', 'dsdsdsds', 'khsjkhjdfsfs', 1513102447, '', 3),
(68, 'brown ale example', 'test', 'test', 1506615496, '', 5),
(67, 'ale example', 'test', 'this is a test', 1506615483, '', 4),
(66, 'Stout-Example', 'test', 'test', 1506615463, '', 2),
(65, 'Carlsberg', 'Denmark', 'This is a test', 1506615431, '', 1),
(64, 'Fluid IPA', 'Fluid Kitchen', 'This is fluid UPA', 1506612972, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `bId` int(11) UNSIGNED NOT NULL,
  `pId` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `bTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bImage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bContent` text COLLATE utf8_unicode_ci NOT NULL,
  `bPublished` tinyint(1) NOT NULL DEFAULT '0',
  `bDatePub` int(11) NOT NULL DEFAULT '0',
  `bDateMod` int(11) NOT NULL DEFAULT '0',
  `bSeoUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bSeoTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bSeoDesc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bSeoKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`bId`, `pId`, `bTitle`, `bImage`, `bContent`, `bPublished`, `bDatePub`, `bDateMod`, `bSeoUrl`, `bSeoTitle`, `bSeoDesc`, `bSeoKey`) VALUES
(1, 20, 'New Website', '', 'We are very excited to announce the launch of our brand new website. &nbsp;We&#39;ve spent time putting together the information on the website to help better inform our customers about us and what we provide. We hope you find it useful and informative. &nbsp;Have a look through the website and feel free to let us know your thoughts, we hope you like it as much as we do. &nbsp;If you have any questions about us or what we provide, then please do get in touch.<br />\r\n<br />\r\nThis website was designed and created for us by Fluid Studios in Hertfordshire. Find them at <a href=\"http://www.fluidstudiosltd.com\" target=\"_blank\">www.fluidstudiosltd.com</a>.', 1, 1426723200, 1426780692, '2015-03-new-website', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `btId` int(11) UNSIGNED NOT NULL,
  `bId` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `btTag` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `category_color` text CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_color`) VALUES
(1, 'Lager', 'Blue'),
(2, 'Stout', 'Green'),
(3, 'India Pale Ale', 'Purple'),
(4, 'Ale', 'Red'),
(5, 'Brown Ale', 'Yellow'),
(6, 'Amber Ale', 'Orange'),
(7, 'Pale Ale', 'Light Blue'),
(8, 'Wheat Beer', 'Pink'),
(9, 'Pilsner', 'brown');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `pId` int(11) UNSIGNED NOT NULL,
  `pName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pProtected` tinyint(1) NOT NULL DEFAULT '0',
  `pPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pContent` text COLLATE utf8_unicode_ci,
  `pContent2` text COLLATE utf8_unicode_ci,
  `pBanner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pTemplate` int(11) NOT NULL,
  `pOrder` int(11) NOT NULL,
  `pActive` tinyint(1) NOT NULL DEFAULT '1',
  `pOnMenu` tinyint(1) NOT NULL DEFAULT '1',
  `pTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pKeywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pMenu` int(11) NOT NULL DEFAULT '0',
  `pUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pType` tinyint(1) NOT NULL DEFAULT '1',
  `pCaptcha` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`pId`, `pName`, `pProtected`, `pPassword`, `pContent`, `pContent2`, `pBanner`, `pTemplate`, `pOrder`, `pActive`, `pOnMenu`, `pTitle`, `pDescription`, `pKeywords`, `pMenu`, `pUrl`, `pType`, `pCaptcha`) VALUES
(1, 'Home', 0, '', '<section class=\"row-fluid\">\r\n<article class=\"span4 text-center\">\r\n<h1>Heading 1</h1>\r\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</article>\r\n\r\n<article class=\"span4 text-center\">\r\n<h1>Heading 2</h1>\r\nDonec id elit non mi porta gravida at egegfgfhgfhfhgft metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</article>\r\n\r\n<article class=\"span4 text-center\">\r\n<h1>Heading 3</h1>\r\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</article>\r\n</section>', '', '1', 1, 0, 1, 1, 'Website under construction', 'This website is currently under construction', '', 0, 'index', 1, 0),
(13, 'Homepage extra', 0, '', '<section class=\"row-fluid\">\r\n                        <article class=\"span12\">\r\n                            <h1>Heading</h1>\r\n                            Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\r\n                        </article>\r\n                    </section>', '', '', 1, 9, 1, 0, '', '', '', 0, '', 1, 0),
(2, 'Logo', 0, '', '<a href=\"http://demomycms.co.uk/\" id=\"logo\"><img src=\"img/logo.png\" /></a>', '', '', 1, 0, 0, 1, '', '', '', 0, '', 1, 0),
(3, 'Banner', 0, '', '<div class=\"banner\">\r\n                <div class=\"banner-inner\" id=\"banner-1\">\r\n                    <img src=\"img/banner.jpg\" alt=\"key phrase\" />\r\n                    <div class=\"banner-text-wrap max-width\">\r\n                    	<article class=\"banner-text\">\r\n                        	<h1>Place Your Banner Slogan Here</h1>\r\n                            <br>\r\n                            <h2>Place a longer descriptive banner subline here</h2>\r\n                        </article>\r\n                    </div>\r\n                </div>\r\n                <div class=\"banner-inner\" id=\"banner-2\">\r\n                    <img src=\"img/banner2.jpg\" alt=\"second key phrase\" />\r\n                    <div class=\"banner-text-wrap max-width\">\r\n                    	<article class=\"banner-text\">\r\n                        	<h1>Place Your Banner Slogan Here</h1>\r\n                            <br>\r\n                            <h2>Place a longer descriptive banner subline here</h2>\r\n                        </article>\r\n                    </div>\r\n                </div>\r\n                <div class=\"banner-inner\" id=\"banner-3\">\r\n                    <img src=\"img/banner3.jpg\" alt=\"third key phrase\" />\r\n                    <div class=\"banner-text-wrap max-width\">\r\n                    	<article class=\"banner-text\">\r\n                        	<h1>Place Your Banner Slogan Here</h1>\r\n                            <br>\r\n                            <h2>Place a longer descriptive banner subline here</h2>\r\n                        </article>\r\n                    </div>\r\n                </div>\r\n			</div>\r\n            <div class=\"mobile-banner\">\r\n            	<img src=\"img/banner-mobile.jpg\" alt=\"key phrase\" />\r\n                <article class=\"banner-text\">\r\n                	<h1>Your Banner Slogan Here</h1>\r\n                </article>\r\n            </div>', '', '', 1, 0, 0, 1, '', '', '', 0, '', 1, 0),
(4, 'Footer', 0, '', '<h1>Footer area or search engine optimisation keyword line</h1>', '', '', 1, 0, 0, 1, '', '', '', 0, '', 1, 0),
(15, 'Service 1', 0, '', '<div class=\"content-cms\">\r\n<div class=\"row-fluid\">\r\n<div class=\"span8\">\r\n<h1>Lorem Ipsum</h1>\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div>\r\n\r\n<div class=\"span4\"><br />\r\n<br />\r\n<br />\r\n<img alt=\"\" src=\"/fluidcms/files/images/side.jpg\" /></div>\r\n</div>\r\n</div>', '', '', 1, 0, 1, 1, '', '', '', 14, '', 1, 0),
(14, 'Services', 0, '', '', '', '', 1, 1, 1, 1, '', '', '', 0, '', 2, 0),
(16, 'Service 2', 0, '', '<div class=\"content-cms\">\r\n<h1>Lorem Ipsum</h1>\r\n\r\n<div class=\"row-fluid\">\r\n<div class=\"span8\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div>\r\n\r\n<div class=\"span4\">\r\n<div class=\"statement\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry</div>\r\n</div>\r\n</div>\r\n</div>', '', '', 1, 1, 1, 1, '', '', '', 14, '', 1, 0),
(17, 'Service 3', 0, '', '<div class=\"content-cms\">\r\n<div class=\"row-fluid\">\r\n<div class=\"span12\">\r\n<h1>Lorem Ipsum</h1>\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div>\r\n</div>\r\n</div>', '', '', 1, 2, 1, 1, '', '', '', 14, '', 1, 0),
(23, 'Mini Gallery', 0, '', '<h1><br />\r\nLorem Ipsum</h1>\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br />\r\n<br />\r\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<div id=\"content-cms\">\r\n<div class=\"row-fluid\">\r\n<div class=\"span12\">\r\n<h1>Lorem Ipsum</h1>\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\n&nbsp;</div>\r\n</div>\r\n</div>', '', 4, 3, 1, 1, '', '', '', 0, '', 1, 0),
(22, 'Gallery', 0, '', '<div class=\"content-cms\">\r\n<div class=\"row-fluid\">\r\n<div class=\"span12\">\r\n<h1>Lorem Ipsum</h1>\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div>\r\n</div>\r\n</div>', '', '', 3, 2, 1, 1, '', '', '', 0, '', 1, 0),
(20, 'Latest News', 0, '', '', '', '', 5, 4, 1, 1, '', '', '', 0, '', 1, 0),
(12, 'Contact', 0, '', '<div>\r\n<h2>Company Details</h2>\r\nYour Address<br />\r\nA place<br />\r\nSomewhere<br />\r\nA city<br />\r\nCounty<br />\r\nPC0 DE<br />\r\n<br />\r\n01234 567 890<br />\r\ninfo@youraddress.com</div>', '', '', 2, 5, 1, 1, '', '', '', 0, '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `pId`, `url`, `title`, `description`) VALUES
(1, 8, './files/galleries/8/gallery/1.jpg', 'Example Title', 'Example Description'),
(2, 8, './files/galleries/8/gallery/2.jpg', 'Book World', 'A delightful setting for a holiday, all on a book!'),
(3, 8, './files/galleries/8/gallery/3.jpg', 'Sandy Vista', 'A sandy beach and beautiful mix of blues in the water for a perfect beach.'),
(4, 8, './files/galleries/8/gallery/4.jpg', 'Underwater', 'An artful underwater shot.'),
(5, 8, './files/galleries/8/gallery/5.jpg', 'Raindrop', 'A raindrop about to fall from a leaf of grass.'),
(6, 8, './files/galleries/8/gallery/6.jpg', 'Waterfall', 'A beautiful waterfall amongst mossy boulders.'),
(7, 19, './files/galleries/gallery/19/1.jpg', NULL, NULL),
(8, 19, './files/galleries/gallery/19/2.jpg', NULL, NULL),
(9, 19, './files/galleries/gallery/19/3.jpg', NULL, NULL),
(10, 19, './files/galleries/gallery/19/4.jpg', NULL, NULL),
(11, 19, './files/galleries/gallery/19/5.jpg', NULL, NULL),
(12, 19, './files/galleries/gallery/19/6.jpg', NULL, NULL),
(13, 21, './files/galleries/21/gallery/DSCF4378.JPG', '', ''),
(14, 22, './files/galleries/22/gallery/1.jpg', '', ''),
(15, 22, './files/galleries/22/gallery/2.jpg', '', ''),
(16, 22, './files/galleries/22/gallery/3.jpg', '', ''),
(17, 22, './files/galleries/22/gallery/4.jpg', '', ''),
(18, 22, './files/galleries/22/gallery/5.jpg', '', ''),
(19, 22, './files/galleries/22/gallery/6.jpg', '', ''),
(31, 23, './files/galleries/23/gallery/6.jpg', '', ''),
(30, 23, './files/galleries/23/gallery/5.jpg', '', ''),
(29, 23, './files/galleries/23/gallery/4.jpg', '', ''),
(28, 23, './files/galleries/23/gallery/3.jpg', '', ''),
(27, 23, './files/galleries/23/gallery/2.jpg', '', ''),
(26, 23, './files/galleries/23/gallery/1.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `how` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `date` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_token` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `time_stamp` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `tId` int(11) NOT NULL,
  `tName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tFile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tType` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`tId`, `tName`, `tFile`, `tType`) VALUES
(1, 'None', 'general.php', 0),
(2, 'Contact Form', 'contact.php', 0),
(3, 'Large Gallery', 'gallery.php', 1),
(4, 'Mini Gallery', 'mini-gallery.php', 1),
(5, 'Blog', 'blog.php', 2);

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `completed` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `description`, `completed`) VALUES
(1, 'Go to the store', 1),
(2, 'Finish Screencast', 0),
(3, 'Do the washing up', 0),
(4, 'do ironing', 0),
(5, 'do gardening', 0),
(6, 'do ironing', 0),
(7, 'do gardening', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `user_password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`) VALUES
(1, 'admin', '5f4dcc3b5aa765d61d8327deb882cf99');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sid_token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) UNSIGNED NOT NULL,
  `access_account` tinyint(1) NOT NULL DEFAULT '1',
  `access_add` tinyint(1) NOT NULL DEFAULT '1',
  `access_blog` tinyint(1) NOT NULL DEFAULT '1',
  `access_cms` tinyint(1) NOT NULL DEFAULT '1',
  `access_edit` tinyint(1) NOT NULL DEFAULT '1',
  `access_gallery` tinyint(1) NOT NULL DEFAULT '1',
  `access_settings` tinyint(1) NOT NULL DEFAULT '0',
  `access_support` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `sid_token`, `timestamp`, `access_account`, `access_add`, `access_blog`, `access_cms`, `access_edit`, `access_gallery`, `access_settings`, `access_support`) VALUES
(1, 'fluidadmin', '2fc909aeed6a866e13094e7efd23c1b8', 'info@fluidstudiosltd.com', NULL, 1502784371, 1, 1, 1, 1, 1, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`bId`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`btId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`pId`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`tId`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `bId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `btId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `pId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `tId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
