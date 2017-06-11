-- phpMyAdmin SQL Dump
-- version 2.6.4-pl2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jul 05, 2006 at 06:32 PM
-- Server version: 4.1.13
-- PHP Version: 5.0.4
-- 
-- Database: `FacultyOfWidgetry`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `Course`
-- 

CREATE TABLE `Course` (
  `CourseID` int(11) NOT NULL auto_increment,
  `CourseTitle` varchar(64) NOT NULL default '',
  `CourseDescription` text NOT NULL,
  `HTMLOutline` text NOT NULL,
  `PDFOutline` longblob NOT NULL,
  `PDFOutline_mimetype` varchar(64) default NULL,
  `Subject` varchar(128) NOT NULL default '',
  `CourseNumber` varchar(10) NOT NULL default '',
  `Credits` int(5) NOT NULL default '0',
  `LastModified` timestamp NOT NULL,
  PRIMARY KEY  (`CourseID`)
) TYPE=MyISAM COMMENT='Store courses' AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `Course`
-- 

INSERT INTO `Course` VALUES (1, 'Introduction to Widgetry 2', 'Learn the fundamental aspects of widgetry.', '', '', NULL, 'MATH', '101', 3, '2006-06-28 15:18:10');
INSERT INTO `Course` VALUES (2, 'Intermediate Widgetry', 'More widgetry than you can handle.', '', '', NULL, 'ENGL', '200', 4, '2006-06-28 19:00:55');

-- --------------------------------------------------------

-- 
-- Table structure for table `Program`
-- 

CREATE TABLE `Program` (
  `ProgramID` int(11) NOT NULL auto_increment,
  `ProgramName` varchar(64) NOT NULL default '',
  `ProgramDescription` text NOT NULL,
  `HTMLOutline` text NOT NULL,
  `PDFOutline` longblob NOT NULL,
  `PDFOutline_mimetype` varchar(32) default NULL,
  `AdmissionDeadline` date NOT NULL default '0000-00-00',
  `LastModified` timestamp NOT NULL,
  PRIMARY KEY  (`ProgramID`)
) TYPE=MyISAM COMMENT='Academic Program' AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `Program`
-- 

INSERT INTO `Program` VALUES (1, 'Basic Widgetry', 'This program focuses on the basics of widgetry.  Graduates of this program are prepared for an exciting career in widgetry.', 'The student''s first experience the wide array of widgetry applications.&nbsp;&nbsp; Then they go on to develop their own widgets....', '', NULL, '0000-00-00', '2006-06-28 13:18:28');

-- --------------------------------------------------------

-- 
-- Table structure for table `ProgramCourses`
-- 

CREATE TABLE `ProgramCourses` (
  `ProgramID` int(11) NOT NULL default '0',
  `CourseID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ProgramID`,`CourseID`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `ProgramCourses`
-- 

INSERT INTO `ProgramCourses` VALUES (1, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `Users`
-- 

CREATE TABLE `Users` (
  `UserID` int(11) NOT NULL auto_increment,
  `UserName` varchar(32) NOT NULL default '',
  `Password` varchar(32) NOT NULL default '',
  `Role` enum('READ ONLY','NO ACCESS','ADMIN') default 'READ ONLY',
  PRIMARY KEY  (`UserID`),
  UNIQUE KEY `UserName` (`UserName`)
) TYPE=MyISAM AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `Users`
-- 

INSERT INTO `Users` VALUES (1, 'nobody', 'password', 'READ ONLY');
INSERT INTO `Users` VALUES (2, 'shannah', 'password', 'ADMIN');
INSERT INTO `Users` VALUES (3, 'readOnlyUser', 'password', 'READ ONLY');
INSERT INTO `Users` VALUES (4, 'adminUser', 'password', 'ADMIN');
