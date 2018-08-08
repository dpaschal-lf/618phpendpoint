-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Aug 08, 2018 at 09:02 PM
-- Server version: 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `c6.18db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` mediumint(8) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `joined` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `level` tinyint(4) NOT NULL,
  `status` enum('created','active','banned','deleted') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `name`, `email`, `password`, `joined`, `updated`, `level`, `status`) VALUES
(2, 'rebecca', 'myteethwontstopchattering@gmail.com', '1923d4a92de6d8347560b6bfed806ce2e5d6e74d', '2018-08-02 17:44:14', '2018-08-03 00:44:14', 2, 'created'),
(3, 'john boy', '40ksucks@gmail.com', '7bd4e8b82c0b681e9aa6d9f387f80545bd2a42af', '2018-08-02 17:44:14', '2018-08-03 00:44:14', 1, 'banned'),
(4, 'taytay', 'sensitivesoul@gmail.com', '923b9ca9ed5f6677fe4582fbba1ad06f206a56b4', '2018-08-02 17:45:35', '2018-08-03 01:14:15', 4, 'deleted'),
(5, 'joh', 'isleepwithmyeyesopen@gmail.com', '0444b8a8ba20fa8929bf54243192891869199e0c', '2018-08-02 17:45:35', '2018-08-03 00:45:35', 3, 'active'),
(6, 'Soora', 'sudipisunlucky@gmail.com', '712c6d37a2b53ffc5e5594491db3d4c4b91e4ef7', '2018-08-02 17:46:30', '2018-08-03 00:46:30', 3, 'banned'),
(8, 'federico', 'thequickening@gmail.com', 'e342fbcda19deca968af9768e6c60f6d75448f0c', '2018-08-02 18:11:34', '2018-08-03 01:11:34', 2, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `name` (`name`(5));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;