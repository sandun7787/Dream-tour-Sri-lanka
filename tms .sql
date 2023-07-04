-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2022 at 04:59 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2022-02-09 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(4, 2, 'devika@gmail.com', '2022-02-26', '2023-02-10', 'i like get this package ', '2022-02-24 03:33:25', 0, NULL, NULL),
(5, 1, 'devika@gmail.com', '2022-09-30', '2022-02-26', '6 uiyhuyuy', '2022-02-24 04:19:49', 0, NULL, NULL),
(6, 1, 'sandun@gmail.com', '2022-09-30', '2022-02-26', 'HI LIKE  TO CANDY FROM 20021./01 COME ON', '2022-02-25 04:28:50', 1, NULL, '2022-02-25 04:30:15'),
(7, 1, 'PUBBA@GMAIL.COM', '2022-02-23', '2022-02-28', 'UYUY', '2022-02-28 04:24:20', 1, NULL, '2022-03-01 04:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2022-07-29 06:32:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(10, 'devika@gmail.com', 'Booking Issues', 'i can\'t select booking this package ', '2022-02-24 03:59:23', NULL, NULL),
(11, NULL, NULL, NULL, '2022-02-25 04:28:22', NULL, NULL),
(12, 'sandun@gmail.com', 'Refund', 'i can\'t select booking this package ', '2022-02-25 04:29:07', NULL, NULL),
(13, 'sandun@gmail.com', 'Other', 'i can\'t select booking this package ', '2022-02-25 04:33:11', NULL, NULL),
(14, NULL, NULL, NULL, '2022-02-28 04:22:23', NULL, NULL),
(15, 'PUBBA@GMAIL.COM', 'Refund', 'FGFGFGFRG', '2022-02-28 04:29:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																														<p align=\"justify\"><font size=\"2\"><font color=\"#990000\" style=\"font-weight: bold;\">(1) ACCEPTANCE OF TERMS</font><br><span style=\"font-weight: 700;\">The following are terms of a legal agreement between you and Sri Lanka Tourism Promotion Bureau. By accessing, browsing, or using this Website, you acknowledge that you have read, understood, and agree to be bound by these terms and to comply with all applicable laws and regulations. If you do not agree to these terms, please do not use this Website.dream tour sri lanka may, without notice to you, at any time revise these Terms of Use and any other information contained in this Website by updating this posting.&nbsp;&nbsp;</span></font><span style=\"font-size: small; font-weight: 700;\">dream tour sri lanka&nbsp;</span><span style=\"font-weight: 700; font-size: small;\">may also make improvements or changes in the products, services, or programs described in this site at any time without notice.</span><img></p><p align=\"justify\"><span style=\"font-weight: 700; font-size: small;\"><br></span></p><p align=\"justify\"><br></p>\r\n										\r\n										\r\n										'),
(2, 'privacy', '<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Last updated: January 20th, 2022</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">This privacy policy is for www.Dream tour sri lanka.comand served by dream tour sri lanka and adventure pvt. ltd. and governs the privacy of its users who choose to use it.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The policy sets out the different areas where user privacy is concerned and outlines the obligations &amp; requirements of the users, the website and website owners. Furthermore the way this website processes, stores and protects user data and information will also be detailed within this policy.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></span></div><div style=\"text-align: justify;\"><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The Website</div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">This website and its owners take a proactive approach to user privacy and ensure the necessary steps are taken to protect the privacy of its users throughout their visiting experience. This website comply\'s to all sri lanakan \'s national laws and requirements for user privacy.</div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></div><div style=\"\"><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Use of Cookies</span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">This website uses cookies to better the users experience while visiting the website. Where applicable this website uses a cookie control system allowing the user on their first visit to the website to allow or disallow the use of cookies on their computer / device. This complies with recent legislation requirements for websites to obtain explicit consent from users before leaving behind or reading files such as cookies on a user\'s computer / device.</span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Cookies are small files saved to the user\'s computers hard drive that track, save and store information about the user\'s interactions and usage of the website. This allows the website, through its server to provide the users with a tailored experience within this website. Users are advised that if they wish to deny the use and saving of cookies from this website on to their computers hard drive they should take necessary steps within their web browsers security settings to block all cookies from this website and its external serving vendors.</span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">This website uses tracking software to monitor its visitors to better understand how they use it. This software is provided by Google Analytics which uses cookies to track visitor usage. The software will save a cookie to your computers hard drive in order to track and monitor your engagement and usage of the website, but will not store, save or collect personal information. You can read Google\'s privacy policy here for further information.</span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Other cookies may be stored to your computers hard drive by external vendors when this website uses referral programs, sponsored links or adverts. Such cookies are used for conversion and referral tracking and typically expire after 30 days, though some may take longer. No personal information is stored, saved or collected.</span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></span></div></div></div>'),
(3, 'aboutus', '																																																																						<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Welcome to&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; font-weight: 700;\">Dream Tour Sri Lanka</span><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; font-weight: bold; text-align: justify;\">&nbsp;!!!</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; font-weight: bold; text-align: justify;\"><br></span></div><div><span style=\"text-align: justify;\"><div style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px;\">Dream tour Sri Lanka is the present and future of destination management in Sri Lanka, the home of South Asia\'s most spectacular tropical vacations.</div><div style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px;\"><br></div><div style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px;\">We have an unblemished reputation for having an exceptional portfolio for travel, even for the most discerning traveler, since our founding in 2022. We provide you with intimate and personalized services that are unequaled by most other travel firms, and we make it our mission to foster a positive relationship between clients and suppliers in order to ensure that your Sri Lankan vacation is as enjoyable as possible.</div><div style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px;\"><br></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px;\">We have approximately 1000 lodging properties in our portfolio, all of which have been picked for their exceptional service, historical relevance, artistic and cultural significance, and financial value. Boutique hotels, seaside hotels, bungalows and mansions, cultural area hotels, camping grounds, and hill country hotels are just a few examples. We ensure that every lodging provider with which we work upholds their high standards and that they are monitored and controlled by us for quality assurance. A broad choice of trips focusing on culture, beaches, adventure, and honeymoons allow you to experience many of the island\'s hidden marvels and delights. We don\'t advocate anything we haven\'t personally tried and appreciated.</span><br></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px;\"><br></span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px;\">Our vacations are tailored to your preferences, and our travel advice is personalized and detailed to ensure that you get exactly what you want in the most cost-effective package. Our services, together with our devotion to providing you with a pleasurable vacation, far outweigh the efforts of the independent traveler. Dream Tour Sri Lanka also promotes ethical and responsible tourism, as well as a robust corporate social responsibility program that benefits local people.</span><br></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px;\">We have a customer service department that is available 24 hours a day, 7 days a week to provide assistance. We have a fleet of luxury vehicles on standby for transportation needs, as well as a team of highly educated tour specialists who are a wealth of knowledge. Dream Tour Sri Lanka is a Sri Lanka Tourism Development Authority-registered holiday company that guarantees trust, flexibility, knowledge, and complete customer pleasure.</span><br></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px;\"><br></span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px;\"><br></span></div></span></div><div><div class=\"final-head\" style=\"margin: 0px; border: 0px; padding: 0px; float: left; position: relative; width: 870px; color: rgb(136, 136, 136); font-family: &quot;segoe ui&quot;, Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;\"><h3 style=\"margin: 10px 0px; border: 0px; padding: 0px; font-family: &quot;trebuchet ms&quot;, Arial, Helvetica, sans-serif; line-height: 40px; color: rgb(0, 102, 153); text-rendering: optimizelegibility; font-size: 20px; text-align: left;\">Board</h3></div><div class=\"content-inner clearfix\" style=\"margin: 0px; border: 0px; padding: 0px; float: left; width: 870px; min-height: 100%; height: 2499.25px; color: rgb(136, 136, 136); font-family: &quot;segoe ui&quot;, Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;\"><p style=\"border: 0px; padding: 0px; color: rgb(0, 0, 0); text-align: justify;\"></p><div class=\"table-responsive\" style=\"margin: 0px; border: 0px; padding: 0px;\"><table class=\"table\" style=\"margin: 0px 0px 20px; border: 0px; padding: 0px; width: 870px;\"><tbody style=\"margin: 0px; border: 0px; padding: 0px;\"><tr style=\"margin: 0px; border: 0px; padding: 0px;\"><td style=\"margin: 0px; border-width: 1px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; padding: 5px; line-height: 20px; text-align: justify; font-size: 12px;\"><p style=\"border: 0px; padding: 0px; color: rgb(0, 0, 0);\"><img alt=\"\" src=\"https://www.srilanka.travel/image/data/board/Kimarli.jpg\" style=\"margin: 0px; border-width: 1px; border-style: solid; border-color: rgb(0, 88, 138); padding: 0px; max-width: 100%; height: 164px; width: 164px;\"></p></td><td style=\"margin: 0px; border-width: 1px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; padding: 5px; line-height: 20px; text-align: justify; font-size: 12px;\"><p style=\"border: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"margin: 0px; border: 0px; padding: 0px; font-weight: 700;\">Mrs.erandi Fernando</span></p><p class=\"m-0\" style=\"margin-bottom: 10px; border: 0px; padding: 0px; color: rgb(0, 0, 0);\">Chairperson</p><p class=\"m-0\" style=\"margin-bottom: 10px; border: 0px; padding: 0px; color: rgb(0, 0, 0);\">Dream Tour Sri Lanka&nbsp;Bureau&nbsp;<br style=\"margin: 0px; border: 0px; padding: 0px;\">No. 22/2 sangamiththa road kandy</p></td><td style=\"margin: 0px; border-width: 1px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; padding: 5px; line-height: 20px; text-align: justify; font-size: 12px;\"><p style=\"border: 0px; padding: 0px; color: rgb(0, 0, 0);\">Tele: 011 2426801/ 901</p></td></tr><tr style=\"margin: 0px; border: 0px; padding: 0px;\"><td style=\"margin: 0px; border-width: 1px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; padding: 5px; line-height: 20px; text-align: justify; font-size: 12px;\"><p style=\"border: 0px; padding: 0px; color: rgb(0, 0, 0);\"><img alt=\"\" src=\"https://www.srilanka.travel/image/data/board/Dhammika.png\" style=\"margin: 0px; border-width: 1px; border-style: solid; border-color: rgb(0, 88, 138); padding: 0px; max-width: 100%; height: 164px; width: 164px;\"></p></td><td style=\"margin: 0px; border-width: 1px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; padding: 5px; line-height: 20px; text-align: justify;\"><p style=\"font-size: 12px; border: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"margin: 0px; border: 0px; padding: 0px; font-weight: 700;\">Mrs. Dhammika Wijayasinghe</span></p><p class=\"m-0\" style=\"font-size: 12px; margin-bottom: 10px; border: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp;Director General</p><p class=\"m-0\" style=\"margin-bottom: 10px; border: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"font-size: 12px;\">Dream Tour Sri Lanka</span></p><p class=\"m-0\" style=\"margin-bottom: 10px; border: 0px; padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 12px;\">No. 22/2 sanagamiththa road kandy</span></p></td><td style=\"margin: 0px; border-width: 1px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; padding: 5px; line-height: 20px; text-align: justify; font-size: 12px;\"><p style=\"border: 0px; padding: 0px; color: rgb(0, 0, 0);\">Tele: 011 2426801/ 901</p></td></tr><tr style=\"margin: 0px; border: 0px; padding: 0px;\"><td style=\"margin: 0px; border-width: 1px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; padding: 5px; line-height: 20px; text-align: justify; font-size: 12px;\"><p style=\"border: 0px; padding: 0px; color: rgb(0, 0, 0);\"><img alt=\"\" height=\"164\" src=\"https://www.srilanka.travel/image/data/key_contacts/MD.jpg\" width=\"164\" style=\"margin: 0px; border-width: 1px; border-style: solid; border-color: rgb(0, 88, 138); padding: 0px; max-width: 100%; height: auto;\"></p></td><td style=\"margin: 0px; border-width: 1px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; padding: 5px; line-height: 20px; text-align: justify;\"><p style=\"font-size: 12px; border: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"margin: 0px; border: 0px; padding: 0px; font-weight: 700;\">Mrs. K. P. P. Siriwardana</span></p><p class=\"m-0\" style=\"margin-bottom: 10px; border: 0px; padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 12px;\">Managing&nbsp;&nbsp;</span></p><p class=\"m-0\" style=\"margin-bottom: 10px; border: 0px; padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: 12px; background-color: transparent;\">direct Dream</span><span style=\"color: rgb(0, 0, 0); font-size: 12px; background-color: transparent;\">&nbsp;Tour Sri Lanka</span></p><p class=\"m-0\" style=\"margin-bottom: 10px; border: 0px; padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-size: small; background-color: transparent;\">No. 22/2 sangamiththa road kandy</span></p></td><td style=\"margin: 0px; border-width: 1px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; padding: 5px; line-height: 20px; text-align: justify; font-size: 12px;\"><p style=\"border: 0px; padding: 0px; color: rgb(0, 0, 0);\">Tele: 011 2426801/ 901</p></td></tr><tr style=\"margin: 0px; border: 0px; padding: 0px;\"><td style=\"margin: 0px; border-width: 1px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; padding: 5px; line-height: 20px; text-align: justify; font-size: 12px;\"><p style=\"border: 0px; padding: 0px; color: rgb(0, 0, 0);\"></p></td><td style=\"margin: 0px; border-width: 1px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; padding: 5px; line-height: 20px; text-align: justify;\"><br><div style=\"text-align: left;\"><span style=\"font-size: 12px;\"><br></span></div></td><td style=\"margin: 0px; border-width: 1px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(221, 221, 221); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; padding: 5px; line-height: 20px; text-align: justify; font-size: 12px;\"></td></tr></tbody></table></div></div></div>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										'),
(11, 'contact', '										<div class=\"service span6\" style=\"margin: 0px 0px 0px 30px; border: 0px; padding: 0px; float: left; min-height: 1px; width: 570px; color: rgb(136, 136, 136); font-family: &quot;segoe ui&quot;, Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;\"><div class=\"contact-info\" style=\"margin: 0px 0px 30px; border: 1px solid rgb(200, 199, 199); padding: 0px; background-color: rgb(240, 240, 240);\"><h4 style=\"margin: 0px 18px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(0, 114, 188); border-left-color: initial; border-image: initial; padding: 0px; font-family: inherit; line-height: 35px; color: rgb(0, 114, 188); text-rendering: optimizelegibility; font-size: 17.5px; text-align: left;\">Sri Lanka Tourism Promotion Bureau</h4><div class=\"contact-info-inner\" style=\"margin: 0px auto; border: 0px; padding: 10px 0px 10px 45px;\"><div class=\"contact-info-details\" style=\"margin: 0px; border: 0px; padding: 0px; width: 523px;\"><span class=\"icon-phone\" style=\"margin: 5px 0px 0px; border: 0px; padding: 0px; font-family: FontAwesome; text-decoration: inherit; display: inline; width: auto; height: auto; line-height: normal; vertical-align: baseline; background-image: none; background-position: 0% 0%; background-repeat: repeat; color: rgb(0, 114, 187); float: left;\"></span><p style=\"border: 0px; padding: 0px 0px 0px 25px; text-align: left; line-height: 25px;\">+94 112426906</p></div><div class=\"contact-info-details\" style=\"margin: 0px; border: 0px; padding: 0px; width: 523px;\"><span class=\"icon-print\" style=\"margin: 5px 0px 0px; border: 0px; padding: 0px; font-family: FontAwesome; text-decoration: inherit; display: inline; width: auto; height: auto; line-height: normal; vertical-align: baseline; background-image: none; background-position: 0% 0%; background-repeat: repeat; float: left; color: rgb(0, 114, 187);\"></span><p style=\"border: 0px; padding: 0px 0px 0px 25px; text-align: left; line-height: 25px;\">+94 112440002</p><p style=\"border: 0px; padding: 0px 0px 0px 25px; text-align: left; line-height: 25px;\">Dream tour sri lanaka@gmail.com<br></p></div></div></div></div><div class=\"service span6\" style=\"margin: 0px 0px 0px 30px; border: 0px; padding: 0px; float: left; min-height: 1px; width: 570px; color: rgb(136, 136, 136); font-family: &quot;segoe ui&quot;, Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;\"><div class=\"contact-info\" style=\"margin: 0px 0px 30px; border: 1px solid rgb(200, 199, 199); padding: 0px; background-color: rgb(240, 240, 240);\"><h4 style=\"margin: 0px 18px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(0, 114, 188); border-left-color: initial; border-image: initial; padding: 0px; font-family: inherit; line-height: 35px; color: rgb(0, 114, 188); text-rendering: optimizelegibility; font-size: 17.5px; text-align: left;\">Sri Lanka Tourism Development Authority</h4><div class=\"contact-info-inner\" style=\"margin: 0px auto; border: 0px; padding: 10px 0px 10px 45px;\"><div class=\"contact-info-details\" style=\"margin: 0px; border: 0px; padding: 0px; width: 523px;\"><span class=\"icon-phone\" style=\"margin: 5px 0px 0px; border: 0px; padding: 0px; font-family: FontAwesome; text-decoration: inherit; display: inline; width: auto; height: auto; line-height: normal; vertical-align: baseline; background-image: none; background-position: 0% 0%; background-repeat: repeat; color: rgb(0, 114, 187); float: left;\"></span><p style=\"border: 0px; padding: 0px 0px 0px 25px; text-align: left; line-height: 25px;\">+94 112426908</p></div><div class=\"contact-info-details\" style=\"margin: 0px; border: 0px; padding: 0px; width: 523px;\"><span class=\"icon-print\" style=\"margin: 5px 0px 0px; border: 0px; padding: 0px; font-family: FontAwesome; text-decoration: inherit; display: inline; width: auto; height: auto; line-height: normal; vertical-align: baseline; background-image: none; background-position: 0% 0%; background-repeat: repeat; float: left; color: rgb(0, 114, 187);\"></span><p style=\"border: 0px; padding: 0px 0px 0px 25px; text-align: left; line-height: 25px;\">+94 112 440000</p><p style=\"border: 0px; padding: 0px 0px 0px 25px; text-align: left; line-height: 25px;\">Dream tour sri lanaka@gmail.com<br></p></div></div></div></div><div class=\"service span6\" style=\"margin: 0px 0px 0px 30px; border: 0px; padding: 0px; float: left; min-height: 1px; width: 570px; color: rgb(136, 136, 136); font-family: &quot;segoe ui&quot;, Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;\"><div class=\"contact-info\" style=\"margin: 0px 0px 30px; border: 1px solid rgb(200, 199, 199); padding: 0px; background-color: rgb(240, 240, 240);\"><h4 style=\"margin: 0px 18px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(0, 114, 188); border-left-color: initial; border-image: initial; padding: 0px; font-family: inherit; line-height: 35px; color: rgb(0, 114, 188); text-rendering: optimizelegibility; font-size: 17.5px; text-align: left;\">Dream tour sri lanka&nbsp; Chairman\'s Office</h4><div class=\"contact-info-inner\" style=\"margin: 0px auto; border: 0px; padding: 10px 0px 10px 45px;\"><div class=\"contact-info-details\" style=\"margin: 0px; border: 0px; padding: 0px; width: 523px;\"><span class=\"icon-phone\" style=\"margin: 5px 0px 0px; border: 0px; padding: 0px; font-family: FontAwesome; text-decoration: inherit; display: inline; width: auto; height: auto; line-height: normal; vertical-align: baseline; background-image: none; background-position: 0% 0%; background-repeat: repeat; color: rgb(0, 114, 187); float: left;\"></span><p style=\"border: 0px; padding: 0px 0px 0px 25px; text-align: left; line-height: 25px;\">+94 112 437750</p></div><div class=\"contact-info-details\" style=\"margin: 0px; border: 0px; padding: 0px; width: 523px;\"><span class=\"icon-print\" style=\"margin: 5px 0px 0px; border: 0px; padding: 0px; font-family: FontAwesome; text-decoration: inherit; display: inline; width: auto; height: auto; line-height: normal; vertical-align: baseline; background-image: none; background-position: 0% 0%; background-repeat: repeat; float: left; color: rgb(0, 114, 187);\"></span><p style=\"border: 0px; padding: 0px 0px 0px 25px; text-align: left; line-height: 25px;\">+94 112 437950</p></div><div class=\"contact-info-details\" style=\"margin: 0px; border: 0px; padding: 0px; width: 523px;\"><p style=\"border: 0px; padding: 0px 0px 0px 25px; text-align: left; line-height: 25px;\">&nbsp;Dream tour sri lanaka@gmail.com</p></div></div></div></div><div class=\"service span6\" style=\"margin: 0px 0px 0px 30px; border: 0px; padding: 0px; float: left; min-height: 1px; width: 570px; color: rgb(136, 136, 136); font-family: &quot;segoe ui&quot;, Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;\"><div class=\"contact-info\" style=\"margin: 0px 0px 30px; border: 1px solid rgb(200, 199, 199); padding: 0px; background-color: rgb(240, 240, 240);\"><h4 style=\"margin: 0px 18px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(0, 114, 188); border-left-color: initial; border-image: initial; padding: 0px; font-family: inherit; line-height: 35px; color: rgb(0, 114, 188); text-rendering: optimizelegibility; font-size: 17.5px; text-align: left;\"><span style=\"font-family: inherit;\">Dream tour sri lanka&nbsp;</span><span style=\"font-family: inherit;\">&nbsp;</span>Director General\'s Office</h4><div class=\"contact-info-inner\" style=\"margin: 0px auto; border: 0px; padding: 10px 0px 10px 45px;\"><div class=\"contact-info-details\" style=\"margin: 0px; border: 0px; padding: 0px; width: 523px;\"><span class=\"icon-phone\" style=\"margin: 5px 0px 0px; border: 0px; padding: 0px; font-family: FontAwesome; text-decoration: inherit; display: inline; width: auto; height: auto; line-height: normal; vertical-align: baseline; background-image: none; background-position: 0% 0%; background-repeat: repeat; color: rgb(0, 114, 187); float: left;\"></span><p style=\"border: 0px; padding: 0px 0px 0px 25px; text-align: left; line-height: 25px;\">+94 112 420916 / +94 112 466907</p></div><div class=\"contact-info-details\" style=\"margin: 0px; border: 0px; padding: 0px; width: 523px;\"><span class=\"icon-print\" style=\"margin: 5px 0px 0px; border: 0px; padding: 0px; font-family: FontAwesome; text-decoration: inherit; display: inline; width: auto; height: auto; line-height: normal; vertical-align: baseline; background-image: none; background-position: 0% 0%; background-repeat: repeat; float: left; color: rgb(0, 114, 187);\"></span><p style=\"border: 0px; padding: 0px 0px 0px 25px; text-align: left; line-height: 25px;\">+94 112 437953</p></div><div class=\"contact-info-details\" style=\"margin: 0px; border: 0px; padding: 0px; width: 523px;\"><span class=\"icon-envelope-alt\" style=\"margin: 5px 0px 0px; border: 0px; padding: 0px; font-family: FontAwesome; text-decoration: inherit; display: inline; width: auto; height: auto; line-height: normal; vertical-align: baseline; background-image: none; background-position: 0% 0%; background-repeat: repeat; float: left; color: rgb(0, 114, 187);\"></span><p style=\"border: 0px; padding: 0px 0px 0px 25px; text-align: left; line-height: 25px;\">Dream tour sri lanaka@gmail.com<br></p></div></div></div></div><div class=\"service span6\" style=\"margin: 0px 0px 0px 30px; border: 0px; padding: 0px; float: left; min-height: 1px; width: 570px; color: rgb(136, 136, 136); font-family: &quot;segoe ui&quot;, Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;\"><div class=\"contact-info\" style=\"margin: 0px 0px 30px; border: 1px solid rgb(200, 199, 199); padding: 0px; background-color: rgb(240, 240, 240); height: 196px;\"><h4 style=\"margin: 0px 18px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(0, 114, 188); border-left-color: initial; border-image: initial; padding: 0px; font-family: inherit; line-height: 35px; color: rgb(0, 114, 188); text-rendering: optimizelegibility; font-size: 17.5px; text-align: left;\"><span style=\"font-family: inherit;\">Dream tour sri lanka&nbsp;</span><span style=\"font-family: inherit;\">&nbsp;</span>Managing Director\'s Office</h4><div class=\"contact-info-inner\" style=\"margin: 0px auto; border: 0px; padding: 10px 0px 10px 45px;\"><div class=\"contact-info-details\" style=\"margin: 0px; border: 0px; padding: 0px; width: 523px;\"><span class=\"icon-phone\" style=\"margin: 5px 0px 0px; border: 0px; padding: 0px; font-family: FontAwesome; text-decoration: inherit; display: inline; width: auto; height: auto; line-height: normal; vertical-align: baseline; background-image: none; background-position: 0% 0%; background-repeat: repeat; color: rgb(0, 114, 187); float: left;\"></span><p style=\"border: 0px; padding: 0px 0px 0px 25px; text-align: left; line-height: 25px;\">+94 11 2426700</p></div><div class=\"contact-info-details\" style=\"margin: 0px; border: 0px; padding: 0px; width: 523px;\"><span class=\"icon-envelope-alt\" style=\"margin: 5px 0px 0px; border: 0px; padding: 0px; font-family: FontAwesome; text-decoration: inherit; display: inline; width: auto; height: auto; line-height: normal; vertical-align: baseline; background-image: none; background-position: 0% 0%; background-repeat: repeat; float: left; color: rgb(0, 114, 187);\"></span><p style=\"border: 0px; padding: 0px 0px 0px 25px; text-align: left; line-height: 25px;\">Dream tour sri lanaka@gmail.com</p></div></div></div></div><div class=\"service span6\" style=\"margin: 0px 0px 0px 30px; border: 0px; padding: 0px; float: left; min-height: 1px; width: 570px; color: rgb(136, 136, 136); font-family: &quot;segoe ui&quot;, Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;\"><div class=\"contact-info\" style=\"margin: 0px 0px 30px; border: 1px solid rgb(200, 199, 199); padding: 0px; background-color: rgb(240, 240, 240);\"><h4 style=\"margin: 0px 18px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(0, 114, 188); border-left-color: initial; border-image: initial; padding: 0px; font-family: inherit; line-height: 35px; color: rgb(0, 114, 188); text-rendering: optimizelegibility; font-size: 17.5px; text-align: left;\">Senior Superintendent of Police - Sri Lanka Tourism Police</h4><div class=\"contact-info-inner\" style=\"margin: 0px auto; border: 0px; padding: 10px 0px 10px 45px;\"><div class=\"contact-info-details\" style=\"margin: 0px; border: 0px; padding: 0px; width: 523px;\"><span class=\"icon-user\" style=\"margin: 5px 0px 0px; border: 0px; padding: 0px; font-family: FontAwesome; text-decoration: inherit; display: inline; width: auto; height: auto; line-height: normal; vertical-align: baseline; background-image: none; background-position: 0% 0%; background-repeat: repeat; color: rgb(0, 114, 187); float: left;\"></span><p style=\"border: 0px; padding: 0px 0px 0px 25px; text-align: left; line-height: 25px;\">J.S Weerasekara</p></div><div class=\"contact-info-details\" style=\"margin: 0px; border: 0px; padding: 0px; width: 523px;\"><span class=\"icon-phone\" style=\"margin: 5px 0px 0px; border: 0px; padding: 0px; font-family: FontAwesome; text-decoration: inherit; display: inline; width: auto; height: auto; line-height: normal; vertical-align: baseline; background-image: none; background-position: 0% 0%; background-repeat: repeat; color: rgb(0, 114, 187); float: left;\"></span><p style=\"border: 0px; padding: 0px 0px 0px 25px; text-align: left; line-height: 25px;\">+94 11 242 1052 / +94 11 243 1451</p></div><div class=\"contact-info-details\" style=\"margin: 0px; border: 0px; padding: 0px; width: 523px;\"><span class=\"icon-print\" style=\"margin: 5px 0px 0px; border: 0px; padding: 0px; font-family: FontAwesome; text-decoration: inherit; display: inline; width: auto; height: auto; line-height: normal; vertical-align: baseline; background-image: none; background-position: 0% 0%; background-repeat: repeat; float: left; color: rgb(0, 114, 187);\"></span><p style=\"border: 0px; padding: 0px 0px 0px 25px; text-align: left; line-height: 25px;\">+94 11 278 22 09</p></div><div class=\"contact-info-details\" style=\"margin: 0px; border: 0px; padding: 0px; width: 523px;\"><span class=\"icon-envelope-alt\" style=\"margin: 5px 0px 0px; border: 0px; padding: 0px; font-family: FontAwesome; text-decoration: inherit; display: inline; width: auto; height: auto; line-height: normal; vertical-align: baseline; background-image: none; background-position: 0% 0%; background-repeat: repeat; float: left; color: rgb(0, 114, 187);\"></span><p style=\"border: 0px; padding: 0px 0px 0px 25px; text-align: left; line-height: 25px;\">Dream tour sri lanaka @gmail.coml</p></div></div></div></div>\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Discover Sri Lanka - 15 Days 2022 (Group Package)', 'Group Package', 'Discover Sri Lanka', 25000, '7 nights hotel accomodation (depending on your selection of standards),Transport in A/C vehicle (Car & Van),Bottled Water,To inform you-we are not given privet guides,our target is to give you friendly experience driver. SAFE&SECURE CERTIFIED EXPERIENCE C', 'Starting in Veyangoda and ending in Colombo, the “Discover Sri Lanka” trip is a guided wildlife trip that takes 15 days. You will travel through Kandy, Sigiriya, Veyangoda, and 6 other destinations in Sri Lanka. “Discover Sri Lanka” is a small group trip that includes accommodation, transport, meals, and others.\r\nLapped by the warm waters of the Indian Ocean, Sri Lanka is a natural paradise with a landscape of verdant mountains, rainforests, paddy fields, tumbling waterfalls, and sweeping gorges. From ancient Buddhist temples, the fortress of Sigiriya, the towns of Kandy and Nuwara Eliya in the hill country, the wildlife of Yala National Park (which has one of the highest concentrations of leopards in the world), to the idyllic palm-fringed beaches of the south coast, this small island offers incredible variety, made extra special by its laid back atmosphere and hospitable people.', 'hj.jpg', '2022-01-31 05:21:58', '2022-02-23 05:37:23'),
(2, 'Around Kandy City (Tour Special)', 'Family Package', 'Kandy', 60000, 'Hotel pickup and drop-off from your hotel in Kandy. Transport by air-conditioned vehicle. Service of an English-speaking chauffeur guide. 1 Liter water bottle per person.', 'Get under the skin of Kandy’s history and culture on a full-day private tour. Explore the Peradeniya Botanical Gardens, visit the lakeside Temple of the Tooth, admire aerial views of Kandy from the Sri Mahabodhi Vihara Buddha statue, and more. Plus, break for lunch (own expense) and experience a Kandy Cultural Show: a celebration of traditional Kandyan song, music, fire acts, and masked dance. Private guide, private air-conditioned transport, and hotel pickup and drop-off included.\r\n\r\n', 'gg.jpg', '2022-01-19 05:37:40', '2022-02-25 04:25:25'),
(3, 'Nature And Culture Tour - 7 Nights', 'Couple Package', 'sri lanka', 50000, 'Air-conditioned vehicle Private transportation Fuel surcharge Parking Fees Passeger Insurance Driver Meals And Accomodations No Time Limit (Not 8-5),Any video/still camera fee to the monuments and places of visit Tips to guides, restaurants, and hotel lob', 'We designed this trip in side the country, where traveler can experience the nature, wild life and culture in Sri Lanka. All routes lies among the most beautiful areas in the country. You can experience tracking, sight seeing, train ride, tea garden and factory and visit the most beautiful waterfalls in Sri Lanka.\r\n', 'hh.jpg', '2022-02-09 05:41:07', '2022-02-25 04:25:49'),
(4, 'Sri Lanka Privet Tour/8 days friendly Chauffeur +vehicle+accommodation H/B basis', 'Family Package', 'All Around Sri lanka', 70000, '7 nights hotel accomodation (depending on your selection of standards) Transport in A/C vehicle (Car & Van) Bottled Water To inform you-we are not given privet guides,our target is to give you friendly experience driver. SAFE&SECURE CERTIFIED EXPERIENCE C', 'The guests will be provided with good quality, air conditioned, comfortable vehicles with a safe&secure certified chauffeurs only-to help with your tour and All vehicles will be sanitize and have baby seats available if needed We provide accommodations for 7 Nights government approved safe&secure certified places only. just to inform you-we are not given any privet guide.because our main target is to give you friendly experience chauffeur to make your dream holiday very well. Thank you.\r\n\r\n', 'kk.jpg', '2022-01-26 05:45:58', '2022-02-25 04:26:09'),
(5, 'Negombo City Tour', 'Family', 'Negombo ', 35000, 'Bottled water Air-conditioned vehicle All Fees and Taxes Restroom on board WiFi on board', 'Negombo is a major city in Sri Lanka, situated on the west coast and at the mouth of the Negombo Lagoon, in the Western Province. It is one of the major commercial hubs in the country and the administrative centre of Negombo Division. Negombo has about 142,136 population within its divisional secretariat division. Negombo is known for its long sandy beaches and centuries old fishing industry.It has a large bilingual population of Roman Catholics, known as Negombo Tamils who have their own Tamil dialect but mostly identify themselves as Sinhala. The best way to explore this beautiful little fishing village is by private transport as there are many places of interest spread out along the beach and the city. You will be met at your hotel after breakfast and taken round on the city tour by our experienced chauffeur / guides, which will include snacks and bottled water en route. The uniqueness of this tour is meeting it\'s people who live in harmony in this small and multicultural city\r\n\r\n', 'oo.jpg', '2022-01-31 05:49:13', '2022-02-25 04:26:30'),
(6, '7 Days Honeymoon Tour with driver private vehicle and accommodation', 'couple ', 'Around Sri lanka ', 60000, 'Private transportation Parking Fees Breakfast (6)', 'Your friendly chauffeur guide will meet and greet you at the airport and escort you to begin your holiday. During you travel period  you will visit the following tourist attractions. Pinnawala, Kandy, Nuwara Eliya, Bentota & Colombo\r\n\r\n', 'b0.jpg', '2022-01-31 05:51:26', '2022-02-25 04:26:50'),
(7, '6 Days Sweet Escapade to Sri Lanka with Kandy Highlights', 'Family Package', ' Colombo - Kandy - Bentota - Colombo', 100000, '? Meeting and Assistance at the Airport  ? Stay in hygienic and sanitized hotels (As per the variant selected)  ? Buffet Breakfast from Day 2 to Day 6 and Buffet Dinner from Day 1 to Day 5  ? Sightseeing as mentioned above. (Without entrance fees)  ? Tran', 'Srilanka, is the pearl of the Indian ocean a trip to this mesmerizing island where you will get fascinated by the lush tea plantations & waterfalls, tropical beaches, jaw-dropping wildlife, historical monuments & temples.\r\n\r\nThe gateway to all of this hill-country action is Kandy and Sri Lanka’s second city and the island’s undisputed historical and cultural capital full of rich in heritage and culture of royal city Kandy. Skim the waves at speed and feel the splash against your sunkissed skin on the vast waters encompassing Bentota and participate in the Kosgoda Sea Turtle Conservation Project to have a close look into the process of rescuing and nurturing sea turtles. Surf through the waves, and spend your days enjoying fresh coconuts in your hammock at Mirissa, wander at the sprawling layout and complex history featuring a fascinating heritage and enticing architectural wonders of the dutch and British era.', '88.jpg', '2022-02-10 05:54:42', '2022-02-25 04:27:06'),
(8, 'Sri Lanka-Lap of luxury Taj Special', 'Domestic Packages', 'Colombo - Bentota - Colombo', 9000000, '? Meeting and Assistance at the Airport  ? Stay in hygienic and sanitized hotels (As per the variant selected)  ? Buffet Breakfast from Day 2 to Day 5 and Buffet Dinner from Day 1 to Day 4  ? Sightseeing as mentioned above. (Without entrance fees)  ? Tran', 'Be pampered by our world-renowned Golden Keys Concierge and butlers, and enjoy sumptuous in-room dining experiences. Come, experience the magic of this palm-lined haven on the harbour. Enjoy every minute of it. Be it the ocean, the forest or even the city, you’ll be able to soak it all in, what makes the soul-satisfying everything make it a paradise that bedazzles everyone!\r\n\r\nAwaken the adventurous soul in you by indulging in a myriad of water sports for fun and thrill in Bentota from jet skiing, banana boat ride, parasailing, paramotoring, speed boat ride, yachting, canoeing, kayaking, to boating in the mangrove forests. Conclude this tour by visiting the Red Mosque, a stunning candy-like red and white striped mosque named ‘Jami Ul-Alfar’ is the most spectacular building in your entire trip in Colombo.', 'dd.jpg', '2020-07-08 06:05:24', '2022-02-24 03:21:01'),
(9, '5 Days Delightful Tour to Sri Lanka', 'Couple Package ', 'Colombo - Sigiriya - Kandy - Bentota - Colombo', 100000, '? Meeting and Assistance at the Airport  ? Stay in hygienic and sanitized hotels (As per the variant selected)  ? Buffet Breakfast from Day 2 to Day 5 and Buffet Dinner from Day 1 to Day 4  ? Sightseeing as mentioned above. (Without entrance fees)  ? Tran', 'Endowed with a diverse collection of landscapes, climates, natural features and infamous beaches Sri Lanka has been enticing visitors for many years. Offering a myriad range of fun, adventure, and romance, it is among the best destinations in the world for those looking for an exotic vacation. Right from beaches, hills, jungles, ancient monuments, culture, history to nightlife, wildlife, and excellent food a blend of all these is what makes the soul-satisfying everything make it a paradise that bedazzles everyone!\r\n\r\nBegin your amazing tour by visiting the Pinnawala Elephant Orphanage and watching the naughty elephants, yet adorable creatures bathe in the river near the orphanage where they engage in mischief, pull each other by their tails, and try to escape the hands of their caretakers in amusing ways. Awaken the adventurous soul in you by indulging in a myriad of water sports for fun and thrill in Bentota from jet skiing, banana boat ride, parasailing, paramotoring, speed boat ride, yachting, canoeing, kayaking, to boating in the mangrove forests. Conclude this tour by visiting the Red Mosque, a stunning candy-like red and white striped mosque named ‘Jami Ul-Alfar’ is the most spectacular building in your entire trip in Colombo.\r\n\r\n', 'hhk,.jpg', '2022-02-08 06:07:48', '2022-02-25 04:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(10, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2022-02-24 03:59:23', NULL),
(11, 'sandun', '0754794145', 'sandun@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '2022-02-25 04:28:22', NULL),
(12, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2022-02-25 04:29:07', NULL),
(13, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2022-02-25 04:33:11', NULL),
(14, 'PUBBA', 'U594859485', 'PUBBA@GMAIL.COM', '81dc9bdb52d04dc20036dbd8313ed055', '2022-02-28 04:22:23', NULL),
(15, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2022-02-28 04:29:19', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
