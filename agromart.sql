-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 06, 2024 at 02:29 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agromart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(30) NOT NULL,
  `admin_username` varchar(30) NOT NULL,
  `admin_password` varchar(30) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1002 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_username`, `admin_password`) VALUES
(1001, 'admin@gmail.com', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `consumer`
--

DROP TABLE IF EXISTS `consumer`;
CREATE TABLE IF NOT EXISTS `consumer` (
  `consumer_id` int(11) NOT NULL AUTO_INCREMENT,
  `consumer_name` varchar(30) NOT NULL,
  `consumer_email` varchar(30) NOT NULL,
  `consumer_contact_number` varchar(12) NOT NULL,
  `consumer_address` text NOT NULL,
  `consumer_username` varchar(30) NOT NULL,
  `consumer_password` varchar(30) NOT NULL,
  PRIMARY KEY (`consumer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2001 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

DROP TABLE IF EXISTS `crops`;
CREATE TABLE IF NOT EXISTS `crops` (
  `crop_id` int(11) NOT NULL AUTO_INCREMENT,
  `crop_name` varchar(30) NOT NULL,
  `crop_description` text NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `crop_initial_amount` int(11) NOT NULL,
  `crop_amount` int(11) DEFAULT NULL,
  `consumer_id` int(11) DEFAULT NULL,
  `image_location` text NOT NULL,
  PRIMARY KEY (`crop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3001 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

DROP TABLE IF EXISTS `farmers`;
CREATE TABLE IF NOT EXISTS `farmers` (
  `farmer_id` int(11) NOT NULL AUTO_INCREMENT,
  `farmer_name` varchar(30) NOT NULL,
  `farmer_email` varchar(30) NOT NULL,
  `farmer_contact_number` varchar(12) NOT NULL,
  `farmer_address` text NOT NULL,
  `farmer_username` varchar(30) NOT NULL,
  `farmer_password` varchar(30) NOT NULL,
  PRIMARY KEY (`farmer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4001 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE IF NOT EXISTS `feedbacks` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_from` varchar(30) NOT NULL,
  `feedback_to` varchar(30) NOT NULL,
  `feedback_subject` varchar(40) NOT NULL,
  `feedback_message` text NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5001 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_from_id` int(11) NOT NULL,
  `notification_from` varchar(30) NOT NULL,
  `notification_to` varchar(30) NOT NULL,
  `notification_subject` varchar(30) NOT NULL,
  `notification_message` text NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6001 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `farmer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `invoice_number` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7001 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8001 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(30) NOT NULL,
  `product_description` text NOT NULL,
  `product_amount` int(11) NOT NULL,
  `consumer_id` int(11) NOT NULL,
  `image_location` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9001 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
