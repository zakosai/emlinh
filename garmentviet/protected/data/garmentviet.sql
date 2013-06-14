-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 14, 2013 at 04:41 PM
-- Server version: 5.1.68
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `garmentviet`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE IF NOT EXISTS `catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subNameVN` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subNameEN` varchar(50) NOT NULL,
  `nameEN` varchar(50) NOT NULL,
  `nameVN` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `subNameVN`, `subNameEN`, `nameEN`, `nameVN`) VALUES
(1, 'Nam', 'Man', 'T-shirts', 'Áo Phông'),
(2, 'Nữ', 'Woman', 'T-shirts', 'Áo Phông'),
(3, 'Bé Trai', 'Boy', 'Kids Fashion', 'Thời Trang Trẻ Em'),
(5, 'Bé Gái', 'Girl', 'Kids Fashion', 'Thời Trang Trẻ Em'),
(6, 'Túi', 'Bag', 'Hand Stitched Leather', 'Da Khâu Bằng Tay'),
(7, 'Ví', 'Wallet', 'Hand Stitched Leather', 'Da Khâu Bằng Tay'),
(8, 'Thắt Lưng', 'Belt', 'Hand Stitched Leather', 'Da Khâu Bằng Tay');

-- --------------------------------------------------------

--
-- Table structure for table `customeremail`
--

CREATE TABLE IF NOT EXISTS `customeremail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customeremail`
--


-- --------------------------------------------------------

--
-- Table structure for table `fixinformation`
--

CREATE TABLE IF NOT EXISTS `fixinformation` (
  `id` int(11) NOT NULL,
  `home` text COLLATE utf8_unicode_ci NOT NULL,
  `about` text COLLATE utf8_unicode_ci NOT NULL,
  `shopping` text COLLATE utf8_unicode_ci NOT NULL,
  `contact` text COLLATE utf8_unicode_ci NOT NULL,
  `home_en` text COLLATE utf8_unicode_ci NOT NULL,
  `about_en` text COLLATE utf8_unicode_ci NOT NULL,
  `shopping_en` text COLLATE utf8_unicode_ci NOT NULL,
  `contact_en` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fixinformation`
--

INSERT INTO `fixinformation` (`id`, `home`, `about`, `shopping`, `contact`, `home_en`, `about_en`, `shopping_en`, `contact_en`) VALUES
(1, 'trang chủ', 'về chúng tôi', 'hướng dẫn mua hàng', 'liên hệ', 'home', 'about', 'shopping guide', 'contact');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `File` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ColorEN` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Kind` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ProductID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `File`, `Color`, `ColorEN`, `Kind`, `ProductID`) VALUES
(4, 'images/Product/83439761_0Q.jpg', 'đỏ', 'red', 'body', 1),
(3, 'images/Product/83439520_02_R.jpg', 'red', 'red', 'nobody', 1),
(2, 'images/Product/83439761_02_B.jpg', 'đen', 'black', 'nobody', 1),
(1, 'images/Product/83439520_02.jpg', 'đen', 'black', 'body', 1),
(5, 'images/Product/83439520_ND.jpg', 'da', 'Da', 'body', 3);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nameVN` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nameEN` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `nameVN`, `nameEN`) VALUES
(1, 'Hà Nội', 'Ha Noi'),
(2, 'Đà Nẵng', 'Da Nang'),
(3, 'Hồ Chí Minh', 'Ho Chi Minh');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_vi` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(50) NOT NULL,
  `content_vi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content_en` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `datepost` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title_vi`, `title_en`, `content_vi`, `content_en`, `datepost`, `type`) VALUES
(1, 'a thang dep zai', 'a thang dep zai', '<p>a thang dep zai</p>', '<p>a thang dep zai</p>', '2013-06-14 00:00:00', 1),
(2, 'a thang dep zai', 'a thang dep zai', '<p>a thang dep zai</p>', '<p>a thang dep zai</p>', '2013-06-14 00:00:00', 1),
(3, 'Linh xinh đẹp', 'I''m so beautiful', '<p>Linh <strong>rất <span style="text-decoration: underline;">l&agrave; xinh <em>đẹp&nbsp;<img title="ảnh b&eacute;o" src="data:image/jpeg;base64,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" alt="ảnh " width="245" height="205" /></em></span></strong></p>', '<p>je m''appelle Linh<em style="font-weight: bold;">&nbsp;<img title="ảnh b&eacute;o" src="data:image/jpeg;base64,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" alt="ảnh " width="245" height="205" /></em></p>', '2013-06-14 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NameVN` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NameEN` varchar(50) NOT NULL,
  `DescriptionVN` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DescriptionEN` text NOT NULL,
  `PriceVND` float NOT NULL,
  `PriceUSD` float NOT NULL,
  `CatalogID` int(11) NOT NULL,
  `LocationID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Size` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `NameVN`, `NameEN`, `DescriptionVN`, `DescriptionEN`, `PriceVND`, `PriceUSD`, `CatalogID`, `LocationID`, `Date`, `Size`) VALUES
(1, 'áo phông tribal', 'Tribal-Tshirt', 'kzjkcjkxjkxkvksjkdjfkjskjfksmxcmnmcxnvmnxmcnvmxcnvmnvxmnvmxnc', 'enkksdjfksdjkfksd', 100000, 10, 1, 1, '2013-06-05', 'XL'),
(3, 'Áo Phông Khỉ Đột', 'Money T-Shirt', 'mdkfnkdnfksdnmfnjshdfj', 'skjdfksdkfjksdfjds', 100000, 9.8, 1, 1, '2013-06-05', 'S');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
