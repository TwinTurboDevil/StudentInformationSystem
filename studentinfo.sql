-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2023 at 03:22 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `ID` int(11) NOT NULL,
  `studentId` varchar(30) NOT NULL,
  `studentName` varchar(50) NOT NULL,
  `classRoll` int(11) NOT NULL,
  `department` enum('Computer Science and Engineering','Physics','Chemistry','Mathematics','Statistics','Environmental Science','Geological Science') NOT NULL,
  `batch` varchar(10) NOT NULL,
  `session` enum('2016-17','2017-18','2018-19','2019-20','2020-21','2021-22','2022-23') NOT NULL,
  `gender` enum('Male','Female','Others') NOT NULL,
  `hall` enum('Mir Mosharraf Hossain Hall','Shaheed Salam-Barkat Hall','Bangabandhu Sheikh Mujibur Rahman Hall','Al Beruni Hall','Shaheed Rafiq-Jabbar Hall','A F M Kamaluddin Hall','Mowlana Bhashani Hall','Bishwakabi Rabindranath Tagore Hall','Jahanara Imam Hall','Nawab Faizunnesa Hall','Pritilata Hall','Fazilatunnesa Hall','Begum Khaleda Zia Hall','Sheikh Hasina Hall','Bangamata Begum Fazilatunnessa Mujib Hall','Begum Sufia Kamal Hall') NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`ID`, `studentId`, `studentName`, `classRoll`, `department`, `batch`, `session`, `gender`, `hall`, `email`, `phoneNumber`, `password`) VALUES
(3, '20200650744', 'Mahfuz Anam', 374, 'Computer Science and Engineering', '49', '2019-20', 'Male', 'Mir Mosharraf Hossain Hall', 'mahfuzanam181@gmail.com', '01716593030', 'scoliodon181');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
