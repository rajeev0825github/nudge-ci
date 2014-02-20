-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 20, 2014 at 04:00 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `button_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `ysb_admin_users`
--

CREATE TABLE IF NOT EXISTS `ysb_admin_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `last_logged_in` datetime NOT NULL,
  `last_ip` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ysb_admin_users`
--


-- --------------------------------------------------------

--
-- Table structure for table `ysb_clicks`
--

CREATE TABLE IF NOT EXISTS `ysb_clicks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `referral_network` varchar(20) NOT NULL,
  `share_id` bigint(20) NOT NULL,
  `impression_id` bigint(20) NOT NULL,
  `url_id` bigint(20) NOT NULL,
  `returning_ip` varchar(30) NOT NULL,
  `timestamp` datetime NOT NULL,
  `exclude_from_reporting` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `referal_id` (`share_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ysb_clicks`
--


-- --------------------------------------------------------

--
-- Table structure for table `ysb_domains`
--

CREATE TABLE IF NOT EXISTS `ysb_domains` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `domain` text NOT NULL,
  `token` varchar(50) NOT NULL,
  `networks` text NOT NULL,
  `conversion_name` text NOT NULL,
  `conversion_default_value` text NOT NULL,
  `shares` int(11) NOT NULL DEFAULT '0',
  `referals` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `ysb_domains`
--

INSERT INTO `ysb_domains` (`id`, `user_id`, `domain`, `token`, `networks`, `conversion_name`, `conversion_default_value`, `shares`, `referals`) VALUES
(1, 1, 'http://www.financialbuzz.com', '8F4099CE-977E-DB9E-2E4F-0A99E66D95E5', 'a:2:{i:0;s:8:"facebook";i:1;s:7:"twitter";}', '', '', 57, 31),
(2, 1, 'http://www.youngshand.com', '85EBB644-9461-7E5E-375F-0F8DC1D567A7', 'a:2:{i:0;s:8:"facebook";i:1;s:7:"twitter";}', '', '', 0, 0),
(3, 1, 'http://example.com', 'D5DA7BF2-562C-9D76-0594-282F060FDB5B', 'a:2:{i:0;s:8:"facebook";i:1;s:7:"twitter";}', '0', '0', 0, 0),
(4, 1, 'http://example.com', 'XCSWHY-FFGDRS-FGFGHR-DFGWED-DFSEE', 'a:2:{i:0;s:8:"facebook";i:1;s:7:"twitter";}', 'product_id', '342', 0, 0),
(5, 0, 'http://examplecv.com', 'GGECSG-XCSWHY-FFGDRS-DFGWED-DFSEE', 'a:3:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:8:"linkedin";}', 'product_id', '400', 0, 0),
(6, 1, 'http://example.com', 'XCSWHY-FFGDRS-FGFGHR-DFGWED-DFSEE', 'a:2:{i:0;s:8:"facebook";i:1;s:7:"twitter";}', 'product_id', '342', 0, 0),
(7, 0, 'http://examplecv.com', 'GGECSG-XCSWHY-FFGDRS-DFGWED-DFSEE', 'a:3:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:8:"linkedin";}', 'product_id', '400', 0, 0),
(8, 1, 'http://example.com', 'XCSWHY-FFGDRS-FGFGHR-DFGWED-DFSEE', 'a:2:{i:0;s:8:"facebook";i:1;s:7:"twitter";}', 'product_id', '342', 0, 0),
(9, 0, 'http://examplecv.com', 'GGECSG-XCSWHY-FFGDRS-DFGWED-DFSEE', 'a:3:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:8:"linkedin";}', 'product_id', '400', 0, 0),
(10, 1, 'http://example.com', 'XCSWHY-FFGDRS-FGFGHR-DFGWED-DFSEE', 'a:2:{i:0;s:8:"facebook";i:1;s:7:"twitter";}', 'product_id', '342', 0, 0),
(11, 0, 'http://examplecv.com', 'GGECSG-XCSWHY-FFGDRS-DFGWED-DFSEE', 'a:3:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:8:"linkedin";}', 'product_id', '400', 0, 0),
(12, 1, 'http://example.com', '8F4099CE-977E-DB9E-2E4F-0A99E66D95E5', 'a:2:{i:0;s:8:"facebook";i:1;s:7:"twitter";}', 'product_id', '342', 0, 0),
(13, 0, 'http://examplecv.com', '85EBB644-9461-7E5E-375F-0F8DC1D567A7', 'a:3:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:8:"linkedin";}', 'product_id', '400', 0, 0),
(14, 1, 'http://example.com', '8F4099CE-977E-DB9E-2E4F-0A99E66D95E5', 'a:2:{i:0;s:8:"facebook";i:1;s:7:"twitter";}', 'product_id', '342', 0, 0),
(15, 0, 'http://examplecv.com', '85EBB644-9461-7E5E-375F-0F8DC1D567A7', 'a:3:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:8:"linkedin";}', 'product_id', '400', 0, 0),
(16, 1, 'http://example.com', '8F4099CE-977E-DB9E-2E4F-0A99E66D95E5', 'a:2:{i:0;s:8:"facebook";i:1;s:7:"twitter";}', 'product_id', '342', 0, 0),
(17, 0, 'http://examplecv.com', '85EBB644-9461-7E5E-375F-0F8DC1D567A7', 'a:3:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:8:"linkedin";}', 'product_id', '400', 0, 0),
(18, 1, 'http://example.com', '8F4099CE-977E-DB9E-2E4F-0A99E66D95E5', 'a:2:{i:0;s:8:"facebook";i:1;s:7:"twitter";}', 'product_id', '342', 0, 0),
(19, 0, 'http://examplecv.com', '85EBB644-9461-7E5E-375F-0F8DC1D567A7', 'a:3:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:8:"linkedin";}', 'product_id', '400', 0, 0),
(20, 1, 'http://example.com', '8F4099CE-977E-DB9E-2E4F-0A99E66D95E5', 'a:2:{i:0;s:8:"facebook";i:1;s:7:"twitter";}', 'product_id', '342', 0, 0),
(21, 0, 'http://examplecv.com', '85EBB644-9461-7E5E-375F-0F8DC1D567A7', 'a:3:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:8:"linkedin";}', 'product_id', '400', 0, 0),
(22, 1, 'http://example.com', '8F4099CE-977E-DB9E-2E4F-0A99E66D95E5', 'a:2:{i:0;s:8:"facebook";i:1;s:7:"twitter";}', 'product_id', '342', 0, 0),
(23, 0, 'http://examplecv.com', '85EBB644-9461-7E5E-375F-0F8DC1D567A7', 'a:3:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:8:"linkedin";}', 'product_id', '400', 0, 0),
(24, 1, 'http://example.com', '8F4099CE-977E-DB9E-2E4F-0A99E66D95E5', 'a:2:{i:0;s:8:"facebook";i:1;s:7:"twitter";}', 'product_id', '342', 0, 0),
(25, 0, 'http://examplecv.com', '85EBB644-9461-7E5E-375F-0F8DC1D567A7', 'a:3:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:8:"linkedin";}', 'product_id', '400', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ysb_impressions`
--

CREATE TABLE IF NOT EXISTS `ysb_impressions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url_id` bigint(20) NOT NULL,
  `unique_impression_id` bigint(20) NOT NULL,
  `url` text NOT NULL,
  `ip_address` varchar(30) NOT NULL,
  `conversion_name` text NOT NULL,
  `conversion_value` text NOT NULL,
  `cookie_info` text NOT NULL,
  `device_type` varchar(100) NOT NULL,
  `timestamp` datetime NOT NULL,
  `exclude_from_reporting` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`url_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ysb_impressions`
--


-- --------------------------------------------------------

--
-- Table structure for table `ysb_impressions_meta`
--

CREATE TABLE IF NOT EXISTS `ysb_impressions_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `impression_id` bigint(20) NOT NULL,
  `meta_name` varchar(50) NOT NULL,
  `meta_value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `impression_id` (`impression_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ysb_impressions_meta`
--


-- --------------------------------------------------------

--
-- Table structure for table `ysb_ip_regions`
--

CREATE TABLE IF NOT EXISTS `ysb_ip_regions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(150) NOT NULL,
  `region_city` varchar(150) NOT NULL,
  `region_country` varchar(150) NOT NULL,
  `region_state` varchar(150) NOT NULL,
  `latitude` varchar(150) NOT NULL,
  `longitude` varchar(150) NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `last_updated` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip_address` (`ip_address`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ysb_ip_regions`
--


-- --------------------------------------------------------

--
-- Table structure for table `ysb_shares`
--

CREATE TABLE IF NOT EXISTS `ysb_shares` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `impression_id` bigint(20) NOT NULL,
  `url_id` bigint(20) NOT NULL,
  `sharer_ip` varchar(20) NOT NULL,
  `share_code` varchar(10) NOT NULL,
  `repeat` int(11) NOT NULL DEFAULT '1' COMMENT 'counting what number in the order in which share occured to same network.',
  `timestamp` datetime NOT NULL,
  `network` varchar(50) NOT NULL,
  `referals` int(11) NOT NULL DEFAULT '0',
  `exclude_from_reporting` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`url_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ysb_shares`
--


-- --------------------------------------------------------

--
-- Table structure for table `ysb_urls`
--

CREATE TABLE IF NOT EXISTS `ysb_urls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain_id` bigint(20) NOT NULL,
  `url` text NOT NULL,
  `shares` int(11) NOT NULL,
  `referals` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `ysb_urls`
--

INSERT INTO `ysb_urls` (`id`, `domain_id`, `url`, `shares`, `referals`) VALUES
(1, 1, 'http://www.financialbuzz.com', 34, 23),
(2, 1, 'http://localhost/odesk/youngshand/sharebutton/test.html', 23, 8),
(3, 2, 'http://www.youngshand.com', 0, 0),
(4, 3, 'http://example.com', 0, 1),
(5, 2, 'http://youngshand.com', 0, 0),
(6, 2, 'http://youngshand.com', 0, 0),
(7, 2, 'http://youngshand.com', 0, 0),
(8, 2, 'http://youngshand.com', 0, 0),
(9, 2, 'http://youngshand.com', 0, 0),
(10, 2, 'http://youngshand.com', 0, 0),
(11, 2, 'http://youngshand.com', 0, 0),
(12, 2, 'http://youngshand.com', 0, 0),
(13, 2, 'http://youngshand.com', 0, 0),
(14, 2, 'http://youngshand.com', 0, 0),
(15, 2, 'http://youngshand.com', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ysb_url_meta`
--

CREATE TABLE IF NOT EXISTS `ysb_url_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url_id` bigint(20) NOT NULL,
  `meta_name` varchar(50) NOT NULL,
  `meta_value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ysb_url_meta`
--


-- --------------------------------------------------------

--
-- Table structure for table `ysb_url_share_counts`
--

CREATE TABLE IF NOT EXISTS `ysb_url_share_counts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url_id` bigint(20) NOT NULL,
  `facebook_share` int(11) NOT NULL,
  `twitter_share` int(11) NOT NULL,
  `linkedin_share` int(11) NOT NULL,
  `googleplus_share` int(11) NOT NULL,
  `pinterest_share` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ysb_url_share_counts`
--


-- --------------------------------------------------------

--
-- Table structure for table `ysb_users`
--

CREATE TABLE IF NOT EXISTS `ysb_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ysb_users`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
