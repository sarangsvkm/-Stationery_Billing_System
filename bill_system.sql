-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2023 at 10:51 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bill_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Cashiername` varchar(50) NOT NULL,
  `CustomerName` varchar(50) NOT NULL,
  `CustPhno` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Billno` int(11) NOT NULL,
  `Itemname` varchar(50) NOT NULL,
  `Price` int(11) NOT NULL,
  `PurchaseQuantity` int(11) NOT NULL,
  `Totalprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Cashiername`, `CustomerName`, `CustPhno`, `Date`, `Billno`, `Itemname`, `Price`, `PurchaseQuantity`, `Totalprice`) VALUES
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, 'Cello Technotip Ball Pen box', 90, 1, 90),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, 'Cello Technotip Ball Pen', 10, 3, 30),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, 'Paper A4 box(500 page)', 150, 0, 0),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, 'Classmate B4 Size Book', 40, 0, 0),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, 'Cello pinpoint Ball Pen', 10, 3, 30),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, 'Cello Pinpoint Ball Pen BOX', 50, 2, 100),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, 'Stationery Organizers', 140, 0, 0),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, ' Pencil Cases', 50, 0, 0),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, 'Casio Scientific Calculator -FX-85GTX', 1500, 2, 3000),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, 'Erasable Pens ', 250, 2, 500),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, 'Cello Technotip Ball Pen box', 90, 1, 90),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, 'Cello Technotip Ball Pen', 10, 3, 30),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, 'Paper A4 box(500 page)', 150, 0, 0),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, 'Classmate B4 Size Book', 40, 0, 0),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, 'Cello pinpoint Ball Pen', 10, 3, 30),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, 'Cello Pinpoint Ball Pen BOX', 50, 2, 100),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, 'Stationery Organizers', 140, 0, 0),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, ' Pencil Cases', 50, 0, 0),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, 'Casio Scientific Calculator -FX-85GTX', 1500, 2, 3000),
('Kukku', 'SRG', 6823612, '2023-02-24', 1001, 'Erasable Pens ', 250, 2, 500),
('Kukku', 'Kukku', 36823612, '2023-02-24', 1002, 'Cello Technotip Ball Pen box', 90, 0, 0),
('Kukku', 'Kukku', 36823612, '2023-02-24', 1002, 'Cello Technotip Ball Pen', 10, 0, 0),
('Kukku', 'Kukku', 36823612, '2023-02-24', 1002, 'Paper A4 box(500 page)', 150, 0, 0),
('Kukku', 'Kukku', 36823612, '2023-02-24', 1002, 'Classmate B4 Size Book', 40, 0, 0),
('Kukku', 'Kukku', 36823612, '2023-02-24', 1002, 'Cello pinpoint Ball Pen', 10, 0, 0),
('Kukku', 'Kukku', 36823612, '2023-02-24', 1002, 'Cello Pinpoint Ball Pen BOX', 50, 0, 0),
('Kukku', 'Kukku', 36823612, '2023-02-24', 1002, 'Stationery Organizers', 140, 2, 280),
('Kukku', 'Kukku', 36823612, '2023-02-24', 1002, ' Pencil Cases', 50, 2, 100),
('Kukku', 'Kukku', 36823612, '2023-02-24', 1002, 'Casio Scientific Calculator -FX-85GTX', 1500, 0, 0),
('Kukku', 'Kukku', 36823612, '2023-02-24', 1002, 'Erasable Pens ', 250, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Cello Technotip Ball Pen box', 90, 2, 180),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Cello Technotip Ball Pen', 10, 1, 10),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Paper A4 box(500 page)', 150, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Classmate B4 Size Book', 40, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Cello pinpoint Ball Pen', 10, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Cello Pinpoint Ball Pen BOX', 50, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Stationery Organizers', 140, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, ' Pencil Cases', 50, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Casio Scientific Calculator -FX-85GTX', 1500, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Erasable Pens ', 250, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Cello Technotip Ball Pen box', 90, 2, 180),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Cello Technotip Ball Pen', 10, 1, 10),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Paper A4 box(500 page)', 150, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Classmate B4 Size Book', 40, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Cello pinpoint Ball Pen', 10, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Cello Pinpoint Ball Pen BOX', 50, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Stationery Organizers', 140, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, ' Pencil Cases', 50, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Casio Scientific Calculator -FX-85GTX', 1500, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Erasable Pens ', 250, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Cello Technotip Ball Pen box', 90, 2, 180),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Cello Technotip Ball Pen', 10, 1, 10),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Paper A4 box(500 page)', 150, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Classmate B4 Size Book', 40, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Cello pinpoint Ball Pen', 10, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Cello Pinpoint Ball Pen BOX', 50, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Stationery Organizers', 140, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, ' Pencil Cases', 50, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Casio Scientific Calculator -FX-85GTX', 1500, 0, 0),
('Kukku', 'mango', 6823612, '2023-02-24', 1003, 'Erasable Pens ', 250, 0, 0),
('Kukku', 'mango123', 6823612, '2023-02-24', 1004, 'Cello Technotip Ball Pen box', 90, 3, 270),
('Kukku', 'mango123', 6823612, '2023-02-24', 1004, 'Cello Technotip Ball Pen', 10, -2, -20),
('Kukku', 'mango123', 6823612, '2023-02-24', 1004, 'Paper A4 box(500 page)', 150, 0, 0),
('Kukku', 'mango123', 6823612, '2023-02-24', 1004, 'Classmate B4 Size Book', 40, 0, 0),
('Kukku', 'mango123', 6823612, '2023-02-24', 1004, 'Cello pinpoint Ball Pen', 10, 0, 0),
('Kukku', 'mango123', 6823612, '2023-02-24', 1004, 'Cello Pinpoint Ball Pen BOX', 50, 0, 0),
('Kukku', 'mango123', 6823612, '2023-02-24', 1004, 'Stationery Organizers', 140, 0, 0),
('Kukku', 'mango123', 6823612, '2023-02-24', 1004, ' Pencil Cases', 50, 0, 0),
('Kukku', 'mango123', 6823612, '2023-02-24', 1004, 'Casio Scientific Calculator -FX-85GTX', 1500, 2, 3000),
('Kukku', 'mango123', 6823612, '2023-02-24', 1004, 'Erasable Pens ', 250, 3, 750),
('Kukku', 'mango123', 682312, '2023-02-24', 1005, 'Cello Technotip Ball Pen box', 90, 0, 0),
('Kukku', 'mango123', 682312, '2023-02-24', 1005, 'Cello Technotip Ball Pen', 10, 0, 0),
('Kukku', 'mango123', 682312, '2023-02-24', 1005, 'Paper A4 box(500 page)', 150, 0, 0),
('Kukku', 'mango123', 682312, '2023-02-24', 1005, 'Classmate B4 Size Book', 40, 0, 0),
('Kukku', 'mango123', 682312, '2023-02-24', 1005, 'Cello pinpoint Ball Pen', 10, 0, 0),
('Kukku', 'mango123', 682312, '2023-02-24', 1005, 'Cello Pinpoint Ball Pen BOX', 50, 0, 0),
('Kukku', 'mango123', 682312, '2023-02-24', 1005, 'Stationery Organizers', 140, 0, 0),
('Kukku', 'mango123', 682312, '2023-02-24', 1005, ' Pencil Cases', 50, 0, 0),
('Kukku', 'mango123', 682312, '2023-02-24', 1005, 'Casio Scientific Calculator -FX-85GTX', 1500, 2, 3000),
('Kukku', 'mango123', 682312, '2023-02-24', 1005, 'Erasable Pens ', 250, 2, 500),
('Sarang', 'unni', 3456, '2023-02-25', 1006, 'Cello Technotip Ball Pen box', 90, 0, 0),
('Sarang', 'unni', 3456, '2023-02-25', 1006, 'Cello Technotip Ball Pen', 10, 0, 0),
('Sarang', 'unni', 3456, '2023-02-25', 1006, 'Paper A4 box(500 page)', 150, 0, 0),
('Sarang', 'unni', 3456, '2023-02-25', 1006, 'Classmate B4 Size Book', 40, 0, 0),
('Sarang', 'unni', 3456, '2023-02-25', 1006, 'Cello pinpoint Ball Pen', 10, 0, 0),
('Sarang', 'unni', 3456, '2023-02-25', 1006, 'Cello Pinpoint Ball Pen BOX', 50, 0, 0),
('Sarang', 'unni', 3456, '2023-02-25', 1006, 'Stationery Organizers', 140, 0, 0),
('Sarang', 'unni', 3456, '2023-02-25', 1006, ' Pencil Cases', 50, 1, 50),
('Sarang', 'unni', 3456, '2023-02-25', 1006, 'Casio Scientific Calculator -FX-85GTX', 1500, 1, 1500),
('Sarang', 'unni', 3456, '2023-02-25', 1006, 'Erasable Pens ', 250, 1, 250),
('Sarang', 'SRG35', 6823612, '2023-02-27', 1007, 'Cello Technotip Ball Pen box', 90, 1, 90),
('Sarang', 'SRG35', 6823612, '2023-02-27', 1007, 'Cello Technotip Ball Pen', 10, 1, 10),
('Sarang', 'SRG35', 6823612, '2023-02-27', 1007, 'Paper A4 box(500 page)', 150, 0, 0),
('Sarang', 'SRG35', 6823612, '2023-02-27', 1007, 'Classmate B4 Size Book', 40, 0, 0),
('Sarang', 'SRG35', 6823612, '2023-02-27', 1007, 'Cello pinpoint Ball Pen', 10, 0, 0),
('Sarang', 'SRG35', 6823612, '2023-02-27', 1007, 'Cello Pinpoint Ball Pen BOX', 50, 0, 0),
('Sarang', 'SRG35', 6823612, '2023-02-27', 1007, 'Stationery Organizers', 140, 0, 0),
('Sarang', 'SRG35', 6823612, '2023-02-27', 1007, ' Pencil Cases', 50, 0, 0),
('Sarang', 'SRG35', 6823612, '2023-02-27', 1007, 'Casio Scientific Calculator -FX-85GTX', 1500, 0, 0),
('Sarang', 'SRG35', 6823612, '2023-02-27', 1007, 'Erasable Pens ', 250, 5, 1250),
('Sarang', 'SRG3554ed', 6823612, '2023-02-27', 1008, 'Cello Technotip Ball Pen box', 90, 2, 180),
('Sarang', 'SRG3554ed', 6823612, '2023-02-27', 1008, 'Cello Technotip Ball Pen', 10, 0, 0),
('Sarang', 'SRG3554ed', 6823612, '2023-02-27', 1008, 'Paper A4 box(500 page)', 150, 2, 300),
('Sarang', 'SRG3554ed', 6823612, '2023-02-27', 1008, 'Classmate B4 Size Book', 40, 0, 0),
('Sarang', 'SRG3554ed', 6823612, '2023-02-27', 1008, 'Cello pinpoint Ball Pen', 10, 0, 0),
('Sarang', 'SRG3554ed', 6823612, '2023-02-27', 1008, 'Cello Pinpoint Ball Pen BOX', 50, 0, 0),
('Sarang', 'SRG3554ed', 6823612, '2023-02-27', 1008, 'Stationery Organizers', 140, 0, 0),
('Sarang', 'SRG3554ed', 6823612, '2023-02-27', 1008, ' Pencil Cases', 50, 0, 0),
('Sarang', 'SRG3554ed', 6823612, '2023-02-27', 1008, 'Casio Scientific Calculator -FX-85GTX', 1500, 0, 0),
('Sarang', 'SRG3554ed', 6823612, '2023-02-27', 1008, 'Erasable Pens ', 250, 5, 1250),
('Sarang', 'abc', 6823612, '2023-02-27', 1009, 'Cello Technotip Ball Pen box', 90, 0, 0),
('Sarang', 'abc', 6823612, '2023-02-27', 1009, 'Cello Technotip Ball Pen', 10, 0, 0),
('Sarang', 'abc', 6823612, '2023-02-27', 1009, 'Paper A4 box(500 page)', 150, 0, 0),
('Sarang', 'abc', 6823612, '2023-02-27', 1009, 'Classmate B4 Size Book', 40, 0, 0),
('Sarang', 'abc', 6823612, '2023-02-27', 1009, 'Cello pinpoint Ball Pen', 10, 0, 0),
('Sarang', 'abc', 6823612, '2023-02-27', 1009, 'Cello Pinpoint Ball Pen BOX', 50, 0, 0),
('Sarang', 'abc', 6823612, '2023-02-27', 1009, 'Stationery Organizers', 140, 0, 0),
('Sarang', 'abc', 6823612, '2023-02-27', 1009, ' Pencil Cases', 50, 2, 100),
('Sarang', 'abc', 6823612, '2023-02-27', 1009, 'Casio Scientific Calculator -FX-85GTX', 1500, 4, 6000),
('Sarang', 'abc', 6823612, '2023-02-27', 1009, 'Erasable Pens ', 250, 4, 1000),
('Sarang', 'Anish', 999444, '2023-02-27', 1010, 'Cello Technotip Ball Pen box', 90, 0, 0),
('Sarang', 'Anish', 999444, '2023-02-27', 1010, 'Cello Technotip Ball Pen', 10, 0, 0),
('Sarang', 'Anish', 999444, '2023-02-27', 1010, 'Paper A4 box(500 page)', 150, 0, 0),
('Sarang', 'Anish', 999444, '2023-02-27', 1010, 'Classmate B4 Size Book', 40, 1, 40),
('Sarang', 'Anish', 999444, '2023-02-27', 1010, 'Cello pinpoint Ball Pen', 10, 1, 10),
('Sarang', 'Anish', 999444, '2023-02-27', 1010, 'Cello Pinpoint Ball Pen BOX', 50, 0, 0),
('Sarang', 'Anish', 999444, '2023-02-27', 1010, 'Stationery Organizers', 140, 2, 280),
('Sarang', 'Anish', 999444, '2023-02-27', 1010, ' Pencil Cases', 50, 0, 0),
('Sarang', 'Anish', 999444, '2023-02-27', 1010, 'Casio Scientific Calculator -FX-85GTX', 1500, 0, 0),
('Sarang', 'Anish', 999444, '2023-02-27', 1010, 'Erasable Pens ', 250, 0, 0),
('Sarang', 'Hello123', 3213211, '2023-02-27', 1011, 'Cello Technotip Ball Pen box', 90, 0, 0),
('Sarang', 'Hello123', 3213211, '2023-02-27', 1011, 'Cello Technotip Ball Pen', 10, 0, 0),
('Sarang', 'Hello123', 3213211, '2023-02-27', 1011, 'Paper A4 box(500 page)', 150, 0, 0),
('Sarang', 'Hello123', 3213211, '2023-02-27', 1011, 'Classmate B4 Size Book', 40, 2, 80),
('Sarang', 'Hello123', 3213211, '2023-02-27', 1011, 'Cello pinpoint Ball Pen', 10, 0, 0),
('Sarang', 'Hello123', 3213211, '2023-02-27', 1011, 'Cello Pinpoint Ball Pen BOX', 50, 0, 0),
('Sarang', 'Hello123', 3213211, '2023-02-27', 1011, 'Stationery Organizers', 140, 2, 280),
('Sarang', 'Hello123', 3213211, '2023-02-27', 1011, ' Pencil Cases', 50, 0, 0),
('Sarang', 'Hello123', 3213211, '2023-02-27', 1011, 'Casio Scientific Calculator -FX-85GTX', 1500, 0, 0),
('Sarang', 'Hello123', 3213211, '2023-02-27', 1011, 'Erasable Pens ', 250, 1, 250),
('Sarang', 'Hello123', 321322, '2023-02-27', 1012, 'Cello Technotip Ball Pen box', 90, 1, 90),
('Sarang', 'Hello123', 321322, '2023-02-27', 1012, 'Cello Technotip Ball Pen', 10, 1, 10),
('Sarang', 'Hello123', 321322, '2023-02-27', 1012, 'Paper A4 box(500 page)', 150, 0, 0),
('Sarang', 'Hello123', 321322, '2023-02-27', 1012, 'Classmate B4 Size Book', 40, 0, 0),
('Sarang', 'Hello123', 321322, '2023-02-27', 1012, 'Cello pinpoint Ball Pen', 10, 0, 0),
('Sarang', 'Hello123', 321322, '2023-02-27', 1012, 'Cello Pinpoint Ball Pen BOX', 50, 0, 0),
('Sarang', 'Hello123', 321322, '2023-02-27', 1012, 'Stationery Organizers', 140, 0, 0),
('Sarang', 'Hello123', 321322, '2023-02-27', 1012, ' Pencil Cases', 50, 0, 0),
('Sarang', 'Hello123', 321322, '2023-02-27', 1012, 'Casio Scientific Calculator -FX-85GTX', 1500, 0, 0),
('Sarang', 'Hello123', 321322, '2023-02-27', 1012, 'Erasable Pens ', 250, 0, 0),
('Sarang', 'sali', 45678, '2023-02-27', 1013, 'Cello Technotip Ball Pen box', 90, 1, 90),
('Sarang', 'sali', 45678, '2023-02-27', 1013, 'Cello Technotip Ball Pen', 10, 0, 0),
('Sarang', 'sali', 45678, '2023-02-27', 1013, 'Paper A4 box(500 page)', 150, 0, 0),
('Sarang', 'sali', 45678, '2023-02-27', 1013, 'Classmate B4 Size Book', 40, 0, 0),
('Sarang', 'sali', 45678, '2023-02-27', 1013, 'Cello pinpoint Ball Pen', 10, 0, 0),
('Sarang', 'sali', 45678, '2023-02-27', 1013, 'Cello Pinpoint Ball Pen BOX', 50, 1, 50),
('Sarang', 'sali', 45678, '2023-02-27', 1013, 'Stationery Organizers', 140, 0, 0),
('Sarang', 'sali', 45678, '2023-02-27', 1013, ' Pencil Cases', 50, 1, 50),
('Sarang', 'sali', 45678, '2023-02-27', 1013, 'Casio Scientific Calculator -FX-85GTX', 1500, 1, 1500),
('Sarang', 'sali', 45678, '2023-02-27', 1013, 'Erasable Pens ', 250, 2, 500),
('Sarang', 'Sobhanakumar P', 8976443, '2023-02-27', 1014, 'Cello Technotip Ball Pen box', 90, 0, 0),
('Sarang', 'Sobhanakumar P', 8976443, '2023-02-27', 1014, 'Cello Technotip Ball Pen', 10, 3, 30),
('Sarang', 'Sobhanakumar P', 8976443, '2023-02-27', 1014, 'Paper A4 box(500 page)', 150, 3, 450),
('Sarang', 'Sobhanakumar P', 8976443, '2023-02-27', 1014, 'Classmate B4 Size Book', 40, 2, 80),
('Sarang', 'Sobhanakumar P', 8976443, '2023-02-27', 1014, 'Cello pinpoint Ball Pen', 10, 3, 30),
('Sarang', 'Sobhanakumar P', 8976443, '2023-02-27', 1014, 'Cello Pinpoint Ball Pen BOX', 50, 3, 150),
('Sarang', 'Sobhanakumar P', 8976443, '2023-02-27', 1014, 'Stationery Organizers', 140, 2, 280),
('Sarang', 'Sobhanakumar P', 8976443, '2023-02-27', 1014, ' Pencil Cases', 50, 2, 100),
('Sarang', 'Sobhanakumar P', 8976443, '2023-02-27', 1014, 'Casio Scientific Calculator -FX-85GTX', 1500, 2, 3000),
('Sarang', 'Sobhanakumar P', 8976443, '2023-02-27', 1014, 'Erasable Pens ', 250, 2, 500),
('Sarang', 'Pranav P', 76541, '2023-02-28', 1015, 'Cello Technotip Ball Pen box', 90, 2, 180),
('Sarang', 'Pranav P', 76541, '2023-02-28', 1015, 'Cello Technotip Ball Pen', 10, 0, 0),
('Sarang', 'Pranav P', 76541, '2023-02-28', 1015, 'Paper A4 box(500 page)', 150, 2, 300),
('Sarang', 'Pranav P', 76541, '2023-02-28', 1015, 'Classmate B4 Size Book', 40, 0, 0),
('Sarang', 'Pranav P', 76541, '2023-02-28', 1015, 'Cello pinpoint Ball Pen', 10, 2, 20),
('Sarang', 'Pranav P', 76541, '2023-02-28', 1015, 'Cello Pinpoint Ball Pen BOX', 50, 0, 0),
('Sarang', 'Pranav P', 76541, '2023-02-28', 1015, 'Stationery Organizers', 140, 0, 0),
('Sarang', 'Pranav P', 76541, '2023-02-28', 1015, ' Pencil Cases', 50, 0, 0),
('Sarang', 'Pranav P', 76541, '2023-02-28', 1015, 'Casio Scientific Calculator -FX-85GTX', 1500, 2, 3000),
('Sarang', 'Pranav P', 76541, '2023-02-28', 1015, 'Erasable Pens ', 250, 2, 500);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Phno` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `Name`, `Email`, `Phno`, `Password`) VALUES
(1, 'Admin', 'Admin@gmail.com', '2147483647', '0443'),
(7, 'SRG', 'kukku@gmail.com', '02436823612', '123'),
(9, 'Kukku', 'kukku@gmail.com', '773682361', '123'),
(11, 'Sarang', 'sarangsvkm0443@gmail.com', '7511133612', '123');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `Pid` int(11) NOT NULL,
  `Item_Name` varchar(100) NOT NULL,
  `Quantity` varchar(50) NOT NULL,
  `Price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`Pid`, `Item_Name`, `Quantity`, `Price`) VALUES
(1, 'Cello Technotip Ball Pen box', '96', '90'),
(2, 'Cello Technotip Ball Pen', '96', '10'),
(4, 'Paper A4 box(500 page)', '95', '150'),
(7, 'Classmate B4 Size Book', '98', '40'),
(8, 'Cello pinpoint Ball Pen', '95', '10'),
(9, 'Cello Pinpoint Ball Pen BOX', '96', '50'),
(10, 'Stationery Organizers', '23', '140'),
(11, ' Pencil Cases', '47', '50'),
(12, 'Casio Scientific Calculator -FX-85GTX', '20', '850'),
(13, 'Erasable Pens ', '94', '250'),
(15, 'Casio FX-82MS 2nd Gen Non-Programmable Scientific Calculator', '25', '550'),
(17, 'Casio FX-82ES Plus 2nd Edition - Non-Programmable Scientific Calculator', '25', '725'),
(18, 'Casio FX-991CW Classwiz Non-Programmable Scientific Calculator', '25', '1500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`Pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `Pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
