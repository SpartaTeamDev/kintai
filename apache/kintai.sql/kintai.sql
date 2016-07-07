-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2016 at 05:50 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kintai`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audit`
--

CREATE TABLE IF NOT EXISTS `tbl_audit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `information` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE IF NOT EXISTS `tbl_booking` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `status` tinytext COLLATE utf8_unicode_ci,
  `required_at` datetime DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `IDX_BB5FE5AA9395C3F3` (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`id`, `customer_id`, `service`, `customer_name`, `customer_phone`, `note`, `status`, `required_at`, `application_key`, `added_at`, `added_by`, `modified_at`, `modified_by`, `is_deleted`, `version`) VALUES
(1, 1, 'Hair Washing &amp; Face Massage', NULL, NULL, '', '1', '2016-06-22 23:48:59', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=36 ;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`, `description`, `application_key`, `added_at`, `added_by`, `modified_at`, `modified_by`, `is_deleted`, `version`) VALUES
(1, 'HAIR', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(2, 'HAIR REMOVAL', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(3, 'MASSAGE', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(4, 'LASH EXTENSIONS', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(5, 'NAILS', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(6, 'FACIALS', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(7, 'SPRAY TANNING', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(8, 'Cut', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(9, 'Color &amp; Highlights', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(10, 'Blowouts', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(11, 'Treatments', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(12, 'Special Occasion Styling', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(13, 'Hair Extensions', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(14, 'Men&#39;s', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(15, 'Brows', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(16, 'Brow tint', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(17, 'Lip', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(18, 'Chin', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(19, 'Underarm', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(20, 'Bikini &amp; Brazilian', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(21, 'Leg (half or full)', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(22, 'Essential Massage (30 mins)', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(23, 'Signature (60 minutes)', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(24, 'Spa (90 min)', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(25, 'Chair Massage', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(26, 'Lash Savvy Lash Extensions', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(27, 'Manicures', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(28, 'Pedicures', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(29, 'CDN Shellac &amp; OPI GelColor', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(30, 'Essential Facial (30 minutes)', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(31, 'Signature Facial (60 minutes)', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(32, 'Spa Facial (90 minutes)', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(33, 'Face', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(34, 'Half Body', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(35, 'Full Body', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE IF NOT EXISTS `tbl_country` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alpha2_code` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alpha3_code` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `immigration_code` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_code` smallint(5) unsigned DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currency`
--

CREATE TABLE IF NOT EXISTS `tbl_currency` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `iso4217_code` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `country_code` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_currency`
--

INSERT INTO `tbl_currency` (`id`, `name`, `iso4217_code`, `symbol`, `rate`, `country_code`, `application_key`, `added_at`, `added_by`, `modified_at`, `modified_by`, `is_deleted`, `version`) VALUES
(1, 'Singapore, Dollars', 'SGD', '$', 1, 'SG', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(2, 'United States Of America, Dollars', 'USD', '$', 1.36939967, 'US', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` smallint(5) unsigned DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nric` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_loyal` tinyint(1) DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `title`, `first_name`, `last_name`, `full_name`, `dob`, `age`, `gender`, `nric`, `address_line1`, `postal_code`, `mobile`, `email`, `is_loyal`, `application_key`, `added_at`, `added_by`, `modified_at`, `modified_by`, `is_deleted`, `version`) VALUES
(1, NULL, 'Walk-in', '', 'Walk-in', '1975-12-14', 46, 'Male', NULL, NULL, NULL, NULL, NULL, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(2, 'Mr', 'Marco', 'Botton', 'Marco Botton', '1987-04-14', 52, 'Male', NULL, NULL, NULL, NULL, NULL, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(3, 'Ms', 'Mariah', 'Maclachlan', 'Mariah Maclachlan', '1984-08-02', 21, 'Female', NULL, NULL, NULL, NULL, NULL, 0, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(4, 'Ms', 'Valerie', 'Liverty', 'Valerie Liverty', '1993-06-02', 58, 'Female', NULL, NULL, NULL, NULL, NULL, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(5, 'Mr', 'Gudo', 'Guilizzoni', 'Gudo Jack Guilizzoni', '1980-09-27', 45, 'Male', NULL, NULL, NULL, NULL, NULL, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_media`
--

CREATE TABLE IF NOT EXISTS `tbl_customer_media` (
  `customer_id` int(10) unsigned NOT NULL,
  `media_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`customer_id`,`media_id`),
  KEY `IDX_33D29FDA9395C3F3` (`customer_id`),
  KEY `IDX_33D29FDAEA9FDD75` (`media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_customer_media`
--

INSERT INTO `tbl_customer_media` (`customer_id`, `media_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE IF NOT EXISTS `tbl_district` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense`
--

CREATE TABLE IF NOT EXISTS `tbl_expense` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_date` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `amount` double NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `IDX_766985D29395C3F3` (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_expense`
--

INSERT INTO `tbl_expense` (`id`, `customer_id`, `type`, `invoice_no`, `invoice_date`, `due_date`, `amount`, `description`, `status`, `application_key`, `added_at`, `added_by`, `modified_at`, `modified_by`, `is_deleted`, `version`) VALUES
(1, 1, 'ProductPurchase', '6960', '2016-06-22 23:49:00', '2016-06-22 23:49:00', 83557, NULL, 0, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(2, 1, 'ProductPurchase', '5258', '2016-06-22 23:49:00', '2016-06-22 23:49:00', 92489, NULL, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(3, 2, 'ProductPurchase', '4592', '2016-06-22 23:49:00', '2016-06-22 23:49:00', 12397, NULL, 0, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(4, 1, 'Bill', '3569', '2016-06-22 23:49:00', '2016-06-22 23:49:00', 81118, NULL, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(5, 1, 'Bill', '6544', '2016-06-22 23:49:00', '2016-06-22 23:49:00', 98022, NULL, 0, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_expense_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `expense_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` double NOT NULL,
  `unit_price` double NOT NULL,
  `total` double DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `IDX_7F62E56BF395DB7B` (`expense_id`),
  KEY `IDX_7F62E56B4584665A` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_expense_detail`
--

INSERT INTO `tbl_expense_detail` (`id`, `expense_id`, `product_id`, `item_name`, `quantity`, `unit_price`, `total`, `application_key`, `added_at`, `added_by`, `modified_at`, `modified_by`, `is_deleted`, `version`) VALUES
(1, 1, 1, 'SALE Hempz Goji Orange Lemonade Herbal Moisturizer - Limited Edition', 1, 91, 91, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(2, 1, 1, 'philosophy purity made simple facial cleanser', 1, 45, 45, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(3, 1, 1, 'AG Thikk Wash Shampoo', 10, 44, 440, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(4, 1, 1, 'Hempz Couture Volumizing Shampoo', 1, 13, 13, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1),
(5, 1, 1, 'Sexy Hair Healthy Sexy Hair Sulfate-Free Soy Moisturizing Shampoo', 1, 31, 31, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:48:59', NULL, '2016-06-22 23:48:59', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_income`
--

CREATE TABLE IF NOT EXISTS `tbl_income` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_date` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `amount` double NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `IDX_B20E0B6F9395C3F3` (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_income`
--

INSERT INTO `tbl_income` (`id`, `customer_id`, `type`, `invoice_no`, `invoice_date`, `due_date`, `amount`, `description`, `status`, `application_key`, `added_at`, `added_by`, `modified_at`, `modified_by`, `is_deleted`, `version`) VALUES
(1, 1, 'Cash', '5268', '2016-06-22 23:49:00', '2016-06-22 23:49:00', 98214, NULL, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(2, 1, 'Credit Card', '5257', '2016-06-22 23:49:00', '2016-06-22 23:49:00', 86139, NULL, 0, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(3, 1, 'Cash', '1250', '2016-06-22 23:49:00', '2016-06-22 23:49:00', 16043, NULL, 0, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(4, 2, 'Nets', '8641', '2016-06-22 23:49:00', '2016-06-22 23:49:00', 56824, NULL, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(5, 2, 'Credit Card', '1253', '2016-06-22 23:49:00', '2016-06-22 23:49:00', 28745, NULL, 0, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_income_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_income_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `income_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `quantity` double NOT NULL,
  `unit_price` double NOT NULL,
  `discount` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `IDX_C8476CAF640ED2C0` (`income_id`),
  KEY `IDX_C8476CAF4584665A` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_income_detail`
--

INSERT INTO `tbl_income_detail` (`id`, `income_id`, `product_id`, `quantity`, `unit_price`, `discount`, `total`, `note`, `application_key`, `added_at`, `added_by`, `modified_at`, `modified_by`, `is_deleted`, `version`) VALUES
(1, 1, 1, 1, 17, 0, 17, NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(2, 1, 1, 10, 52, 0, 520, NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(3, 1, 1, 1, 31, 0, 31, NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(4, 1, 1, 1, 31, 10, 27.9, NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(5, 1, 1, 1, 82, 5, 77.9, NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_income_promotion`
--

CREATE TABLE IF NOT EXISTS `tbl_income_promotion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `income_id` int(10) unsigned NOT NULL,
  `promotion_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promotion_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `IDX_8C585157640ED2C0` (`income_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_income_promotion`
--

INSERT INTO `tbl_income_promotion` (`id`, `income_id`, `promotion_name`, `promotion_description`, `note`, `application_key`, `added_at`, `added_by`, `modified_at`, `modified_by`, `is_deleted`, `version`) VALUES
(1, 1, 'Loyal Customer', 'Discount 10% on all shampoos', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE IF NOT EXISTS `tbl_language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `iso6391_code` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`id`, `name`, `iso6391_code`, `country_code`, `application_key`, `added_at`, `added_by`, `modified_at`, `modified_by`, `is_deleted`, `version`) VALUES
(1, 'Chinese (PRC)', 'zh', 'CN', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(2, 'Spanish (Spain)', 'es', 'ES', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(3, 'English', 'en', 'GB', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(4, 'Hindi', 'hi', 'IN', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(5, 'Arabic (Saudi Arabia)', 'ar', 'SA', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(6, 'Portuguese (Portugal)', 'pt', 'PT', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(7, 'Russian', 'ru', 'RU', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(8, 'Japanese', 'ja', 'JP', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(9, 'Vietnamese', 'vi', 'VN', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lookup`
--

CREATE TABLE IF NOT EXISTS `tbl_lookup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_media`
--

CREATE TABLE IF NOT EXISTS `tbl_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `origin_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_ext` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` bigint(20) unsigned DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `posted_at` datetime DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE IF NOT EXISTS `tbl_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_permission`
--

INSERT INTO `tbl_permission` (`id`, `name`, `description`, `application_key`, `added_at`, `added_by`, `modified_at`, `modified_by`, `is_deleted`, `version`) VALUES
(1, 'Backend.Account', 'Allows you to manage users, roles and permissions.', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(2, 'Backend.Account.Permission', 'Allows you to manage permissions.', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(3, 'Backend.Account.Role', 'Allows you to manage roles.', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(4, 'Backend.Account.User', 'Allows you to manage users.', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(5, 'Backend.System', 'Allows you to manage audit trails, lookup values and settings.', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(6, 'Backend.System.Audit', 'Allows you to manage audit trails.', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(7, 'Backend.System.Lookup', 'Allows you to manage lookup values.', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(8, 'Backend.System.Setting', 'Allows you to manage settings.', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity_per_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_price` double DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `units_in_stock` double DEFAULT NULL,
  `units_on_order` double DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `IDX_88190CD912469DE2` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `category_id`, `type`, `code`, `name`, `summary`, `description`, `image`, `thumbnail`, `quantity_per_unit`, `sale_price`, `unit_price`, `units_in_stock`, `units_on_order`, `position`, `application_key`, `added_at`, `added_by`, `modified_at`, `modified_by`, `is_deleted`, `version`) VALUES
(1, 2, 'Product', 'P5918', 'SALE Hempz Goji Orange Lemonade Herbal Moisturizer - Limited Edition', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/14125_default.tif&wid=250&cvt=jpeg', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/14125_default.tif&wid=250&cvt=jpeg', '12 - 550 ml bottles', 55, 57, 91, 0, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(2, 2, 'Product', 'P7733', 'philosophy purity made simple facial cleanser', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/1315_default.tif&wid=250&cvt=jpeg', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/1315_default.tif&wid=250&cvt=jpeg', '12 - 550 ml bottles', 86, 79, 89, 0, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(3, 2, 'Product', 'P3904', 'VALUE SET Juicy Couture Viva La Juicy & Viva La Juicy Noir Day-to-Night Purser Duo', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/13962_default.tif&wid=250&cvt=jpeg', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/13962_default.tif&wid=250&cvt=jpeg', '12 - 550 ml bottles', 70, 77, 70, 0, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(4, 2, 'Product', 'P9117', 'NEW Moroccanoil Dry Shampoo Light Tones', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/14127_default.tif&wid=250&cvt=jpeg', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/14127_default.tif&wid=250&cvt=jpeg', '12 - 550 ml bottles', 15, 71, 19, 0, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(5, 2, 'Product', 'P3062', 'AG Liter Pump', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/2217_default.tif&wid=250&cvt=jpeg', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/2217_default.tif&wid=250&cvt=jpeg', '12 - 550 ml bottles', 65, 35, 70, 0, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(6, 2, 'Product', 'P424', 'Hempz Couture Moisturizing Shampoo', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/7328_default.tif&wid=250&cvt=jpeg', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/7328_default.tif&wid=250&cvt=jpeg', '12 - 550 ml bottles', 48, 79, 8, 0, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(7, 2, 'Product', 'P892', 'Hempz Couture Color Protect Shampoo', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/7324_default.tif&wid=250&cvt=jpeg', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/7324_default.tif&wid=250&cvt=jpeg', '12 - 550 ml bottles', 17, 88, 67, 0, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(8, 2, 'Product', 'P9152', 'Hempz Couture Volumizing Shampoo', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/8825_default.tif&wid=250&cvt=jpeg', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/8825_default.tif&wid=250&cvt=jpeg', '12 - 550 ml bottles', 71, 81, 31, 0, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(9, 2, 'Product', 'P4893', 'Sexy Hair Big Sexy Hair Big Volume Shampoo', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/8366_default.tif&wid=250&cvt=jpeg', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/8366_default.tif&wid=250&cvt=jpeg', '12 - 550 ml bottles', 84, 33, 35, 0, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(10, 2, 'Product', 'P2802', 'Sexy Hair Healthy Sexy Hair Sulfate-Free Soy Moisturizing Shampoo', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/8373_default.tif&wid=250&cvt=jpeg', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/8373_default.tif&wid=250&cvt=jpeg', '12 - 550 ml bottles', 63, 54, 62, 0, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(11, 2, 'Product', 'P2566', 'AG Thikk Wash Shampoo', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/2097_default.tif&wid=250&cvt=jpeg', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/2097_default.tif&wid=250&cvt=jpeg', '12 - 550 ml bottles', 63, 28, 48, 0, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(12, 2, 'Product', 'P8873', 'Hempz Pomegranate Daily Herbal Moisturizing Shampoo', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/11572_default.tif&wid=250&cvt=jpeg', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/11572_default.tif&wid=250&cvt=jpeg', '12 - 550 ml bottles', 91, 65, 77, 0, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(13, 2, 'Service', 'P1412', 'Hair Wash', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/11572_default.tif&wid=250&cvt=jpeg', 'http://ii.beautybrands.com/fcgi-bin/iipsrv.fcgi?FIF=/images/beautybrands/source/11572_default.tif&wid=250&cvt=jpeg', '12 - 550 ml bottles', 20, 50, 83, 0, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promotion`
--

CREATE TABLE IF NOT EXISTS `tbl_promotion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `stop_date` datetime DEFAULT NULL,
  `require_coupon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_promotion`
--

INSERT INTO `tbl_promotion` (`id`, `type`, `name`, `description`, `start_date`, `stop_date`, `require_coupon`, `position`, `status`, `application_key`, `added_at`, `added_by`, `modified_at`, `modified_by`, `is_deleted`, `version`) VALUES
(1, 'Product', 'Loyal Customer', 'Discount 10% on all shampoos', '2015-05-01 00:00:00', '2015-09-01 00:00:00', NULL, 1, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(2, 'Product', 'National Day', 'Discount 5% on all services', '2015-06-01 00:00:00', '2015-07-01 00:00:00', NULL, 2, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(3, 'Product', '10% quantity tier discount on all products', NULL, NULL, NULL, NULL, 3, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(4, 'Product', 'Additional 10% off on sale price', NULL, NULL, NULL, NULL, 4, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(5, 'SalesOrderDetails', 'Flat discount', NULL, NULL, NULL, NULL, 5, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(6, 'SalesOrderDetails', 'Free', NULL, NULL, NULL, 'free1', 6, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(7, 'SalesOrderDetails', 'X for the price Y', NULL, NULL, NULL, NULL, 7, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(8, 'SalesOrderDetails', 'First month no charge on recurring', NULL, NULL, NULL, NULL, 8, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(9, 'SalesOrderDetails', '10% discount on shipping', NULL, NULL, NULL, NULL, 9, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(10, 'Handling', 'Handling', NULL, NULL, NULL, NULL, 10, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(11, 'Tax', 'Free tax', NULL, NULL, NULL, NULL, 11, 1, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_province`
--

CREATE TABLE IF NOT EXISTS `tbl_province` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_plate` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE IF NOT EXISTS `tbl_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `name`, `description`, `application_key`, `added_at`, `added_by`, `modified_at`, `modified_by`, `is_deleted`, `version`) VALUES
(1, 'Administrator', 'Members of the Administrator role have the largest amount of default permissions and the ability to change their own permissions.', 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(2, 'Guest', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(3, 'Power User', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(4, 'User', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role_permission`
--

CREATE TABLE IF NOT EXISTS `tbl_role_permission` (
  `role_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `IDX_B151AD08D60322AC` (`role_id`),
  KEY `IDX_B151AD08FED90CCA` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_role_permission`
--

INSERT INTO `tbl_role_permission` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(3, 1),
(3, 4),
(3, 5),
(3, 6),
(3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE IF NOT EXISTS `tbl_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `name`, `value`, `description`, `application_key`, `added_at`, `added_by`, `modified_at`, `modified_by`, `is_deleted`, `version`) VALUES
(1, 'copyright', 'Copyright 2015 by My Company. All Rights Reserved.', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(2, 'title', 'Admin Panel', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(3, 'defaultRoute', 'setting.index', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(4, 'imageAllowedExt', 'gif,jpeg,jpg,png', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(5, 'imageMaxSize', '2097152', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(6, 'datetimeFormat', 'Y-m-d H:i:s', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(7, 'dateFormat', 'Y-m-d', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(8, 'timeFormat', 'H:i:s', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(9, 'itemsPerPage', '10', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(10, 'maxItemsPerPage', '100', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(11, 'minSearchChars', '4', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(12, 'sendBookingEmail', '1', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(13, 'showAddEventLink', '1', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(14, 'bookingEmailTitle', 'Booking Conformation', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(15, 'eventLocation', 'New Star Hairdressing Saloon, Singapore', NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `force_password_change` tinyint(1) DEFAULT NULL,
  `profile` text COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `locale` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `password`, `remember_token`, `force_password_change`, `profile`, `locale`, `open_id`, `application_key`, `added_at`, `added_by`, `modified_at`, `modified_by`, `is_deleted`, `version`) VALUES
(1, 'sysadmin', 'sysadmin@example.com', '$2y$10$GdXfVoFr0bxo57Cb4.cfWOGamj27DALH/9vPAue0QILcwXedKJ5lC', 'kHqqOkxs4U', 1, '{"DisplayName":"Autumn Gutmann DDS","Photo":"no_photo.jpg","About":"Veritatis iusto ut eos tenetur et. Nam exercitationem saepe ab. Cupiditate vel ducimus eius velit. Reiciendis et qui rerum vel vel rerum unde."}', NULL, NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1),
(2, 'demo', 'demo@example.com', '$2y$10$mngKIGMZT.iDt2jvfc./1uetP/uYVMh.8Tk5mpFwZ.eUmtgDB2t9u', 't5mnEWy7VH', 1, '{"DisplayName":"Aurelie Medhurst","Photo":"no_photo.jpg","About":"Voluptates assumenda repellat sequi qui repudiandae natus iusto. Rem natus sit sed hic. Non error in et dolorem impedit eligendi enim."}', NULL, NULL, 'uV3tbdxO12KrSJgN7mjbOQvXX69Wn3oL', '2016-06-22 23:49:00', NULL, '2016-06-22 23:49:00', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_role`
--

CREATE TABLE IF NOT EXISTS `tbl_user_role` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `is_primary` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `IDX_6860A930A76ED395` (`user_id`),
  KEY `IDX_6860A930D60322AC` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user_role`
--

INSERT INTO `tbl_user_role` (`user_id`, `role_id`, `is_primary`) VALUES
(1, 1, 1),
(2, 3, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD CONSTRAINT `FK_BB5FE5AA9395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`);

--
-- Constraints for table `tbl_customer_media`
--
ALTER TABLE `tbl_customer_media`
  ADD CONSTRAINT `FK_33D29FDAEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `tbl_media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_33D29FDA9395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_expense`
--
ALTER TABLE `tbl_expense`
  ADD CONSTRAINT `FK_766985D29395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`);

--
-- Constraints for table `tbl_expense_detail`
--
ALTER TABLE `tbl_expense_detail`
  ADD CONSTRAINT `FK_7F62E56B4584665A` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`),
  ADD CONSTRAINT `FK_7F62E56BF395DB7B` FOREIGN KEY (`expense_id`) REFERENCES `tbl_expense` (`id`);

--
-- Constraints for table `tbl_income`
--
ALTER TABLE `tbl_income`
  ADD CONSTRAINT `FK_B20E0B6F9395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`);

--
-- Constraints for table `tbl_income_detail`
--
ALTER TABLE `tbl_income_detail`
  ADD CONSTRAINT `FK_C8476CAF4584665A` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`),
  ADD CONSTRAINT `FK_C8476CAF640ED2C0` FOREIGN KEY (`income_id`) REFERENCES `tbl_income` (`id`);

--
-- Constraints for table `tbl_income_promotion`
--
ALTER TABLE `tbl_income_promotion`
  ADD CONSTRAINT `FK_8C585157640ED2C0` FOREIGN KEY (`income_id`) REFERENCES `tbl_income` (`id`);

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `FK_88190CD912469DE2` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`);

--
-- Constraints for table `tbl_role_permission`
--
ALTER TABLE `tbl_role_permission`
  ADD CONSTRAINT `FK_B151AD08FED90CCA` FOREIGN KEY (`permission_id`) REFERENCES `tbl_permission` (`id`),
  ADD CONSTRAINT `FK_B151AD08D60322AC` FOREIGN KEY (`role_id`) REFERENCES `tbl_role` (`id`);

--
-- Constraints for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  ADD CONSTRAINT `FK_6860A930D60322AC` FOREIGN KEY (`role_id`) REFERENCES `tbl_role` (`id`),
  ADD CONSTRAINT `FK_6860A930A76ED395` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
