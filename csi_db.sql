-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 17, 2016 at 12:42 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lr1`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL,
  `img-source` text NOT NULL,
  `link` text NOT NULL,
  `heading` text NOT NULL,
  `content` text NOT NULL,
  `groups` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `img-source`, `link`, `heading`, `content`, `groups`) VALUES
(1, 'http://orig02.deviantart.net/f895/f/2009/306/8/7/lorem_ipsum_by_neosh.jpg', 'www.google.com', 'Aenean aliquam pretium felis, eu varius sapien. Mauris porttitor .', 'Etiam feugiat lectus nisl, in euismod l ectus viverra et. Sed et scelerisqu e felis. Integer vel volutpat massa. Do nec id justo nisl. Vivamus malesuada, dolor a eleifend sagittis, neque arcu semper mi, eu finibus ,', 1),
(2, '', '', 'Ut aliquam Solliicitudin', 'Etiam feugiat lectus nisl, in euismod lectus viverra et. Sed et scelerisque felis. Integer vel volutpat massa. Donec id justo nisl. Vivamus .', 0),
(3, '', '', 'Fusce pellellentsque suscrite', 'Etiam feugiat lectus nisl, in euismod lectus viverra et. Sed et scelerisque felis. Integer vel volutpat massa. Donec id justo nisl. Vivamus .\r\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(65) NOT NULL,
  `name` varchar(50) NOT NULL,
  `joined` datetime NOT NULL,
  `group` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `stay` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `branch` varchar(50) NOT NULL,
  `year` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `joined`, `group`, `gender`, `stay`, `address`, `branch`, `year`) VALUES
(6, 'Shreyas', '65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5', 'shreyas', '2015-07-24 16:58:53', 1, 'male', 'day', 'rajnagar', 'Computer Science', 'first'),
(7, 'shreya', '65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5', 'Shreya', '2015-07-24 17:04:57', 1, 'female', 'hostel', 'SNH 112', 'Computer Science', 'first'),
(8, 'qwe', '65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5', '', '2015-08-16 04:32:12', 1, 'male', 'day', '', '', 'first'),
(9, 'tywin', '65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5', 'tywin', '2015-08-16 06:23:40', 1, 'male', 'day', '', '', 'first'),
(10, 'Newton', '65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5', 'Nutan', '2015-08-16 06:29:31', 1, 'female', 'day', 'Abh 12/45', 'IT', 'fourth'),
(11, 'MArl', '65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5', 'mark', '2015-08-16 07:43:07', 1, 'male', 'hostel', 'Aryabhatta', 'Information Technology', 'first');

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE IF NOT EXISTS `visit` (
  `sno` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`sno`, `name`, `phone`, `email`) VALUES
(1, 'Shreyas Sinha', '09910855715', 'shreyas.sinha14@gmail.com'),
(2, 'Shreyas Sinha', '09910855715', 'shreyas.sinha14@gmail.com'),
(3, 'mark', '9876514320', 'mark@gmail.com'),
(4, 'Shreyas Sinha', '09910855715', 'shreyas.champ@gmail.com'),
(5, 'Shreyas Sinha', '9910855715', 'shreyas.sinha14@gmail.com'),
(6, 'Shreyas Sinha', '09910855715', 'shreyas.sinha14@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `visit`
--
ALTER TABLE `visit`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
