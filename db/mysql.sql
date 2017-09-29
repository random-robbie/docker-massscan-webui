-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 27, 2017 at 06:44 PM
-- Server version: 5.7.19-0ubuntu0.17.04.1
-- PHP Version: 7.0.22-0ubuntu0.17.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `docker_massscan`
--
CREATE DATABASE IF NOT EXISTS `docker_massscan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `docker_massscan`;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
CREATE TABLE IF NOT EXISTS `data` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `port_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `scanned_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `protocol` enum('tcp','udp') NOT NULL,
  `state` varchar(10) NOT NULL DEFAULT '',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `reason_ttl` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `service` varchar(100) NOT NULL DEFAULT '',
  `banner` text NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `scanned_ts` (`scanned_ts`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data` ADD FULLTEXT KEY `banner` (`banner`,`title`);

USE `mysql`;		
UPDATE `user` SET `host` = '%' WHERE `host` = '1%'		
FLUSH PRIVILEGES;

