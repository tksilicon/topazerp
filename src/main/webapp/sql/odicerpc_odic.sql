-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 02, 2015 at 03:05 AM
-- Server version: 5.5.40-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `odicerpc_odic`
--
--CREATE DATABASE IF NOT EXISTS `odicerpc_odic` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
--USE `odicerpc_odic`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `accountid` int(50) NOT NULL AUTO_INCREMENT,
  `reg_date` date NOT NULL,
  `accountno` varchar(20) NOT NULL,
  `accountname` varchar(70) NOT NULL,
  `accounttype` varchar(50) NOT NULL,
  `balance` double NOT NULL,
  PRIMARY KEY (`accountid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`accountid`, `reg_date`, `accountno`, `accountname`, `accounttype`, `balance`) VALUES
(1, '2013-09-08', '1111', 'Cash-At-Hand', 'Cash', 6906.5),
(2, '2013-09-08', '1112', 'Account Receivable', 'Asset', 92193),
(3, '2013-09-08', '1113', 'Sales Discount', 'Liability', 1850.5),
(4, '2013-09-06', '114', 'Petty Cash', 'Cash', 500),
(5, '2013-09-06', '1115', 'Package Customers', 'Cash', 77600),
(6, '2013-09-06', '1116', 'Utility Expenses', 'Expenses', 0),
(7, '2013-09-06', '1117', 'Salary and Wages', 'Expenses', 467600),
(8, '2013-09-06', '1118', 'Casual Workers', 'Cost of Service', 5000),
(10, '2013-09-06', '1120', 'Loan', 'Asset', -46000),
(11, '2013-09-06', '1121', 'Fixed Asset', 'Asset', 590000),
(12, '2013-09-06', '1122', 'Consumables', 'Inventory', 38500),
(13, '2013-09-06', '1123', 'Account Payable', 'Liability', 800),
(14, '2013-09-06', '1124', 'Tax', 'Liability', 13000),
(16, '2013-09-06', '1126', 'Paid-in-Capital', 'Equity', 0),
(17, '2013-09-06', '1127', 'Interest', 'Income', 0),
(18, '2013-09-06', '1128', 'Advertising  Express', 'Expenses', 18500),
(19, '2013-09-06', '1129', 'Electricity (PHCN)', 'Expenses', 0),
(20, '2013-09-06', '1130', 'Rent', 'Expenses', 0),
(21, '2013-09-06', '1131', 'Motor vechicle(Fuel)', 'Expenses', 0),
(22, '2013-09-06', '1132', 'Motor vechicle Maint. (Repair)', 'Expenses', 0),
(23, '2013-09-06', '1133', 'Telephone office', 'Expenses', 3000),
(24, '2013-09-06', '1134', 'Telephone MD', 'Expenses', 0),
(25, '2013-09-06', '1135', 'Transportation Expense', 'Expenses', 15000),
(26, '2013-09-06', '1136', 'Insurance Expenses', 'Expenses', 0),
(27, '2013-09-06', '1137', 'Office Stationery', 'Expenses', 0),
(28, '2013-09-06', '1138', 'Meals & Entertainment', 'Expenses', 0),
(29, '2013-09-06', '1139', 'Consultancy & Professional Fees', 'Expenses', 0),
(30, '2013-09-06', '1140', 'Seminar, Training & Conferences', 'Expenses', 0),
(31, '2013-09-06', '1141', 'Travelling Expenses ', 'Expenses', 0),
(32, '2013-09-06', '1142', 'Newspaper & Magazines', 'Expenses', 0),
(33, '2013-09-06', '1143', 'Corporate Gifts', 'Expenses', 0),
(34, '2013-09-06', '1144', 'Gifts & Donation', 'Expenses', 0),
(35, '2013-09-06', '1145', 'Postages & Courier', 'Expenses', 0),
(36, '2013-09-06', '1146', 'Rates & Licenses', 'Expenses', 0),
(37, '2013-09-06', '1147', 'Equipment Repair & Maintenance', 'Expenses', 0),
(38, '2013-09-06', '1148', 'Office Repairs & Maintenance', 'Expenses', 0),
(39, '2013-09-06', '1149', 'Sanitary Materials', 'Expenses', 0),
(40, '2013-09-06', '1150', 'Chairman Allowance', 'Expenses', 0),
(41, '2013-09-06', '1151', 'Staff Welfare (TGIF)', 'Expenses', 0),
(42, '2013-09-06', '1152', 'Staff Welfare Bonus', 'Expenses', 0),
(43, '2013-09-06', '1153', 'Staff Welfare Medical', 'Expenses', 0),
(44, '2013-09-06', '1154', 'Staff Welfare Gift', 'Expenses', 0),
(45, '2013-09-06', '1155', 'Staff Training & Research', 'Expenses', 0),
(46, '2013-09-06', '1156', 'Director Medical', 'Expenses', 0),
(47, '2013-09-06', '1157', 'Bad Debts', 'Expenses', 0),
(48, '2013-09-06', '1158', 'Gain loss on Sales Assets', 'Expenses', 0),
(49, '2013-09-06', '1159', 'Customer Service', 'Cost of Service', 0),
(50, '2013-09-06', '1160', 'Collating Department', 'Cost of Service', 0),
(51, '2013-09-06', '1161', 'Laundry Department', 'Cost of Service', 0),
(52, '2013-09-06', '1162', 'Laundry-Soap', 'Cost of Service', 500),
(53, '2013-09-06', '1164', 'Pressing Department', 'Cost of Service', 0),
(54, '2013-09-06', '1164', 'Machine Repair', 'Cost of Service', 0),
(55, '2013-09-06', '1165', 'Machine Repair(Laundry)', 'Cost of Service', 0),
(56, '2013-09-06', '1165', 'Machine Repair(Laundry)', 'Cost of Service', 0),
(57, '2013-09-06', '1166', 'Machine Repair(Dry Cleaning)', 'Cost of Service', 0),
(58, '2013-09-06', '1167', 'Machine Repair(Pressing)', 'Cost of Service', 0),
(59, '2013-09-06', '1168', 'Machine Repair(Collating)', 'Cost of Service', 0),
(60, '2013-09-06', '1169', 'Internet Subcription', 'Expenses', 0),
(61, '2013-09-06', '1170', 'Office Equipment Computer', 'Cost of Service', 0),
(62, '2013-09-06', '1171', 'Interest Received', 'Income', 0),
(64, '2013-09-08', '1173', 'GTBank', 'Bank', -403600),
(66, '2013-10-16', '1175', 'depreciations', 'Depreciation', 32400),
(67, '2014-02-04', '8811', 'Fidelity Bank', 'Bank', 49969500),
(68, '2014-02-06', '1181', 'First Bank', 'Bank', 35000),
(69, '2014-02-06', '1182', 'System Maintenance', 'Expenses', 0),
(70, '2014-02-08', '2211', 'Pension', 'Liability', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `branch` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `staffno` varchar(20) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `othername` varchar(20) NOT NULL,
  `phoneno` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `emptype` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `department` varchar(50) NOT NULL,
  `level` int(5) NOT NULL,
  `status` varchar(20) NOT NULL,
  `jobtype` varchar(60) NOT NULL,
  `dateofemploy` date DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`branch`, `date`, `staffno`, `surname`, `firstname`, `othername`, `phoneno`, `address`, `state`, `country`, `dob`, `emptype`, `username`, `password`, `department`, `level`, `status`, `jobtype`, `dateofemploy`) VALUES
('HeadOffice', '2013-09-06', 'LV4', 'Mr Ajiboye', 'Lawrence', 'James', '08045434543', '117, Allen Avenue', 'Lagos', 'Nigeria', '1999-07-09', 'Full Time', 'ayodeji', 'ayodeji', 'Customer Service', 0, 'Active', '', NULL),
('HEADOFFICE_SALES', '2014-12-23', 'ODIC015', 'Dave', 'Dave', 'NULL', '08055540336', 'Ayobo', 'Abia', 'Nigeria', '1983-10-08', 'Full Time', 'Dave9316', '6dwld6d', 'Sales', 1, 'Active', 'Cashier', '2005-12-23'),
('MARIGOLD1', '2013-08-21', 'ECHE01', 'Ogundipe', 'Ayodeji', 'Deji', '08067676565', 'Ketu', 'Lagos', 'Nigeria', '2013-08-13', 'Full Type', 'deji', 'deji', 'Admin', 0, 'Active', '', NULL),
('HEADOFFICE_SALES', '2014-12-21', 'ODIC014', 'Ekene', 'Ekene', 'NULL', '087666666', 'Satellite Town', 'Abia', 'Nigeria', '2001-01-04', 'Full Time', 'Ekene7532', '1985c6s', 'Sales', 1, 'NotActive', 'Cashier', '2005-06-03'),
('MARIGOLD2', '2013-08-14', 'ECHE02', 'deji', 'Ayodeji', 'femi', '08067676565', 'Ketu', 'Lagos', 'Nigeria', '2013-08-16', 'Full Type', 'femi', 'femi', 'Customer Service', 0, 'NotActive', '', NULL),
('SATELLITE-TOWN', '2014-07-08', 'CR11', 'femi', 'femi', '', '08076765654', 'ketu', 'Lagos', 'Nigeria', '2013-09-09', 'Full Time', 'femi2', 'femi', 'Manager', 1, 'Active', '', NULL),
('HEADOFFICE_SALES', '2014-12-21', 'ODIC013', 'Amaka', 'Ike', 'NULL', '08135539123', '9B Aku Street', 'Abia', 'Nigeria', '1982-05-04', 'Full Time', 'Ike6952', 'k6361av', 'Sales', 1, 'Active', 'Inventory', '2004-06-05'),
('HeadOffice', '2013-09-10', 'LV5', 'james', 'james', 'james', '08054546655', 'Ojota', 'Adamawa', 'Nigeria', '2013-02-02', 'Full Time', 'james', 'james', 'Admin', 0, 'Active', '', NULL),
('SATELLITE-TOWN', '2014-07-09', 'CR12', 'Joyjoy', 'Joy', '', '08062841507', 'ketu', 'Lagos', 'Nigeria', '2013-09-09', 'Full Time', 'joy', 'joy', 'Customer Service', 1, 'Active', '', NULL),
('HEADOFFICE_MANAGMENT', '2013-09-06', 'ODIC001', 'Mrs Lawretta', 'Odawulu', '', '08033379168', 'Alaba', 'Lagos', 'Nigeria', '1999-07-09', 'Full Time', 'lawretta', 'lawretta', 'management', 0, 'Active', 'director', '2013-07-10'),
('KINGSDELIGHT', '2014-05-13', 'MW9', 'Marvelous', 'Hellious', '', '08062841507', '117, Allen Avenue', 'Adamawa', '', '2014-05-13', 'Full Time', 'marv', 'marv', 'Customer Service', 1, 'Active', '', NULL),
('HEADOFFICE_ADMIN', '2014-05-29', 'MW10', 'ODIC', 'Odic', '', '08062841507', '117, Allen Avenue', 'Abia', 'Nigeria', '1999-02-02', 'Full Time', 'odic1', 'odic101', 'Admin', 1, 'Active', 'Accountant', NULL),
('MARIGOLD1', '2013-09-10', 'LV6', 'Ajiboye', 'Ajiboye', 'Ajiboye', '08054546655', 'Ojota', 'Adamawa', 'Nigeria', '2013-08-08', 'Full Time', 'paul', 'paul', 'Customer Service', 0, 'Active', '', NULL),
('HEADOFFICE_MANAGMENT', '2014-12-19', 'ODIC012', 'Mereiles', 'Raul', 'NULL', '07061681786', '9B Aku Street', 'Edo', 'Nigeria', '1985-08-03', 'Full Time', 'Raul5965', 'wbbf398', 'management', 1, 'Active', 'manager', '2005-10-06'),
('HEADOFFICE_SALES', '2014-05-10', 'Org9', 'Tosin', 'Adams', '', '08034343234', 'Ikeja', 'Lagos', 'Nigeria', '2014-05-10', 'Full Time', 'tosin', 'tosin', 'Sales', 0, 'Active', 'Cashier', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banking`
--

CREATE TABLE IF NOT EXISTS `banking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tellerno` varchar(50) NOT NULL,
  `depositor` varchar(70) NOT NULL,
  `amount` double NOT NULL,
  `bank` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `fromacct` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bankingbranches`
--

CREATE TABLE IF NOT EXISTS `bankingbranches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `tellerno` varchar(50) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bankstatement`
--

CREATE TABLE IF NOT EXISTS `bankstatement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `transactionid` varchar(50) NOT NULL,
  `particular` varchar(50) NOT NULL,
  `debit` float NOT NULL,
  `credit` float NOT NULL,
  `balance` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `bankstatement`
--

INSERT INTO `bankstatement` (`id`, `branch`, `date`, `transactionid`, `particular`, `debit`, `credit`, `balance`) VALUES
(1, 'HEADOFFICE', '2014-02-04', 'Bank Deposit', 'Cash-At-Hand', 5000, 0, 50226000),
(2, 'HEADOFFICE', '2014-03-08', 'Bank Withdrawal', 'First Bank', 0, 5000, 49591400),
(3, 'HEADOFFICE', '2014-03-08', 'Bank Withdrawal', 'First Bank', 0, 10000, 49576400),
(4, 'HEADOFFICE', '2014-03-08', 'Bank Withdrawal', 'First Bank', 0, 5000, 49571400),
(5, 'HEADOFFICE', '2014-03-08', 'Bank Withdrawal', 'GTBank', 0, 5000, 49566400),
(6, 'HEADOFFICE', '2014-03-08', 'Bank Withdrawal', 'GTBank', 0, 10000, 49606400),
(7, 'HEADOFFICE', '2014-03-18', 'Advertising  Express', 'Mr Femi', 0, 4000, 49602900),
(8, 'HEADOFFICE', '2014-03-18', 'Advertising  Express', 'Fidelity Bank', 0, 2000, 49600900),
(9, 'HEADOFFICE_ADMIN', '2014-11-24', 'Bank Deposit', 'Cash-At-Hand', 7000000000, 0, 7049600000),
(10, 'HEADOFFICE_ADMIN', '2014-11-26', 'Bank Withdrawal', 'GTBank', 0, 400000, 49200900);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(50) NOT NULL,
  `Initial` varchar(4) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `address` varchar(70) NOT NULL,
  `branch_manager` varchar(50) NOT NULL,
  `commissioned_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `companyname`, `Initial`, `branch_name`, `address`, `branch_manager`, `commissioned_date`) VALUES
(1, 'D.O Umeozokwere Trading Company', 'HQA', 'HEADOFFICE_ADMIN', 'ALABA', 'Miss Philomena', '2013-08-21'),
(2, 'Odic Electrical Company Limited', 'PLZ', 'PLAZA', 'ALABA', 'Miss Philomena', '2013-08-21'),
(3, 'D.O Umeozokwere Trading Company', 'BR1', 'CA19', 'ALABA', 'Miss Philomena', '2013-08-21'),
(4, 'D.O Umeozokwere Trading Company', 'BR2', 'B/25 No 26', 'ALABA', 'Miss Philomena', '2013-08-21'),
(5, 'D.O Umeozokwere Trading Company', 'BR3', 'Warehouse', 'ALABA', 'Miss Philomena', '2013-08-21'),
(6, 'D.O Umeozokwere Trading Company', 'HQS', 'HEADOFFICE_SALES', 'ALABA', 'Miss Philomena', '2013-08-21'),
(7, 'Odic Electrical Company ', 'HOM', 'HEADOFFICE_MANAGMENT', 'ALABA', 'Lawretta', '2014-11-28');

-- --------------------------------------------------------

--
-- Table structure for table `branchstock`
--

CREATE TABLE IF NOT EXISTS `branchstock` (
  `id` varchar(15) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_desc` varchar(50) NOT NULL,
  `tenderno` varchar(100) DEFAULT NULL,
  `datestock` date NOT NULL,
  `stockunit` varchar(50) DEFAULT NULL,
  `goodsrecieved` int(4) DEFAULT NULL,
  `goodsold` int(4) DEFAULT NULL,
  `balance` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `branchstockbalance`
--

CREATE TABLE IF NOT EXISTS `branchstockbalance` (
  `branch_id` varchar(50) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_desc` varchar(100) NOT NULL,
  `stockunit` varchar(20) NOT NULL,
  `datestock` date NOT NULL,
  `balance` int(4) DEFAULT NULL,
  PRIMARY KEY (`branch_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `branchstocklastid`
--

CREATE TABLE IF NOT EXISTS `branchstocklastid` (
  `id2` int(5) NOT NULL AUTO_INCREMENT,
  `id` varchar(15) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cashfloaw`
--

CREATE TABLE IF NOT EXISTS `cashfloaw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `transactionid` varchar(50) NOT NULL,
  `particular` varchar(50) NOT NULL,
  `debit` float NOT NULL,
  `credit` float NOT NULL,
  `balance` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `cashfloaw`
--

INSERT INTO `cashfloaw` (`id`, `branch`, `date`, `transactionid`, `particular`, `debit`, `credit`, `balance`) VALUES
(1, 'OGUDU', '2013-09-06', 'OG5', 'deji SUNDAY', 500, 0, 1500),
(2, 'OGUDU', '2013-09-06', 'pickup_id', 'Amount Paid on Pick Up', 1000, 0, 2500),
(3, 'Ogudu', '2013-09-06', 'OGPItem', 'Items Purchase', 0, 7200, -31500),
(4, 'OGUDU', '2013-09-07', 'pickup_id', 'Amount Paid on Pick Up', 400, 0, -31100),
(5, 'OGUDU', '2013-09-07', 'OG7', 'DEJI SUNDAY', 50, 0, -31050),
(6, 'Ogudu', '2013-09-07', '1011', 'Mr Deji', 0, 2000, -33050),
(7, 'Ogudu', '2013-09-07', '1011', 'Mr Agama', 0, 1000, -34050),
(8, 'Ogudu', '2013-09-07', '1011', 'Mr Agama', 0, 3000, -37050),
(9, 'Ogudu', '2013-09-07', '1022', '1', 0, 3000, -40050),
(10, 'Ogudu', '2013-09-07', '1022', '1', 0, 200, -40250),
(11, 'OGUDU', '2013-09-07', 'Asset11', 'Office Equipments', 0, 90000, -40250),
(12, 'MARIGOLD2', '2013-09-10', 'MGB2', 'Mrs Kemi Mary', 1000, 0, -107650),
(13, 'MARIGOLD1', '2013-09-11', 'pickup_id', 'Amount Paid on Pick Up', 900, 0, -106750),
(14, 'HEADOFFICE', '2013-09-17', 'HO10', 'DEJI SUNDAY', 500, 0, -106250),
(15, 'HAVILAHGOLD', '2013-09-21', 'HG8', 'Mrs Kemi Mary', 500, 0, -105750),
(16, 'HEADOFFICE', '2013-09-23', 'HO11', 'Mrs Kemi Mary', 400, 0, -105350),
(17, 'KINGSDELIGHT ', '2013-09-24', '1011', 'Deji', 0, 1500, -106850),
(18, 'HEADOFFICE', '2013-09-24', 'pickup_id', 'Amount Paid on Pick Up', 750, 0, -106100),
(19, 'HAVILAHGOLD', '2013-09-26', 'pickup_id', 'Amount Paid on Pick Up', 2200, 0, -103900),
(20, 'HAVILAHGOLD', '2013-09-27', 'HG11', 'Mrs Kemi Mary', 500, 0, -103400),
(21, 'HEADOFFICE', '2013-10-16', 'HO29', 'Mrs Kemi Mary', 1200, 0, -78700),
(22, 'HEADOFFICE', '2013-10-16', 'Asset11', 'Motor Vehicle', 0, 500000, -84700),
(23, 'HEADOFFICE', '2013-10-16', 'pickup_id', 'Amount Paid on Pick Up', 800, 0, 0),
(24, 'HEADOFFICE', '2013-10-16', 'pickup_id', 'Amount Paid on Pick Up', 300, 0, 137400),
(25, 'HEADOFFICE', '2013-10-29', 'pickup_id', 'Amount Paid on Pick Up', 1050, 0, 138450),
(26, 'Ogudu', '2013-10-29', 'OGPItem', 'Items Purchase', 0, 6000, 133450),
(27, 'HEADOFFICE', '2013-11-06', 'pickup_id', 'Amount Paid on Pick Up', 1400, 0, 134850),
(28, 'KINGSDELIGHT', '2013-11-11', 'pickup_id', 'Amount Paid on Pick Up', 1000, 0, 138450),
(29, 'KINGSDELIGHT', '2013-11-11', 'pickup_id', 'Amount Paid on Pick Up', 600, 0, 139050),
(30, 'KINGSDELIGHT', '2013-11-11', '1011', 'Mr Emmanuel', 0, 1500, 137550),
(31, 'HEADOFFICE', '2013-11-13', 'pickup_id', 'Amount Paid on Pick Up', 1000, 0, 138550),
(32, 'HEADOFFICE', '2013-11-13', 'pickup_id', 'Amount Paid on Pick Up', 800, 0, 139350),
(33, 'HEADOFFICE', '2013-11-13', 'HO35', 'Bola Joko', 1000, 0, 140350),
(34, 'HEADOFFICE', '2013-11-13', 'pickup_id', 'Amount Paid on Pick Up', 900, 0, 141250),
(35, 'Ogudu', '2013-12-26', 'OGPItem', 'Items Purchase', 0, 12000, 129250),
(36, 'HEADOFFICE', '2013-12-29', 'HO51', 'Mr Jacob Aganga', 500, 0, 169750),
(37, 'HEADOFFICE', '2013-12-29', 'pickup_id', 'Amount Paid on Pick Up', 1300, 0, 171050),
(38, 'HEADOFFICE', '2014-02-19', '1011', 'Mr Badmus', 0, 5000, 49588400),
(39, 'HEADOFFICE', '2014-02-19', '1022', '5', 0, 500, 49588000),
(40, 'HEADOFFICE', '2014-03-18', '1011', 'Bishop', 0, 7000, 49664000),
(41, 'HEADOFFICE', '2014-03-18', '1011', 'Bishop', 0, 6500, 49657600),
(42, 'HEADOFFICE', '2014-03-18', '1011', 'Bishop', 0, 6000, 49651600),
(43, 'HEADOFFICE', '2014-03-18', '1011', 'Mr Femi', 0, 4000, 49647600),
(44, 'HEADOFFICE', '2014-03-18', '1011', 'Mr Femi', 0, 2000, 49645600),
(45, 'HEADOFFICE', '2014-03-18', 'pickup_id', 'Amount Paid on Pick Up', 1900, 0, 49647400),
(46, 'HEADOFFICE', '2014-03-24', 'pickup_id', 'Amount Paid on Pick Up', 150, 0, 49647600),
(47, 'HEADOFFICE', '2014-03-27', 'pickup_id', 'Amount Paid on Pick Up', 1650, 0, 49649200),
(48, 'HEADOFFICE', '2014-05-01', 'HO75', 'Mrs Kemi Mary', 280, 0, 49649500),
(49, 'HEADOFFICE', '2014-05-01', 'pickup_id', 'Amount Paid on Pick Up', 976.5, 0, 49650500),
(50, 'HEADOFFICE', '2014-05-01', 'pickup_id', 'Amount Paid on Pick Up', 400, 0, 49650500),
(51, 'HEADOFFICE', '2014-05-04', 'pickup_id', 'Amount Paid on Pick Up', 950, 0, 49651500),
(52, 'HEADOFFICE', '2014-05-10', 'pickup_id', 'Amount Paid on Pick Up', 1000, 0, 49652500),
(53, 'Ogudu', '2014-05-10', 'OGPItem', 'Items Purchase', 0, 6000, 49647500),
(54, 'Ogudu', '2014-05-10', 'OGPItem', 'Items Purchase', 0, 5000, 49643500),
(55, 'HEADOFFICE', '2014-07-07', 'HO96', 'DEJI SUNDAY', 700, 0, 49684200),
(56, 'HEADOFFICE', '2014-07-07', 'HO97', 'Mr Jacob Aganga', 150, 0, 49684300),
(57, 'HEADOFFICE', '2014-07-07', 'HO99', 'Mrs Kemi Mary', 600, 0, 49684900),
(58, 'HEADOFFICE', '2014-07-22', 'HO100', 'DEJI SUNDAY', 1000, 0, 49685900);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `des` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `des`) VALUES
(1, 'Thank you very much! pls come again!!!<br>\r\n---- Business Hour ----<br>\r\nMon-Fri: 8:00 AM - 6:00 PM - Sat<br>\r\nSun : Closed<br>\r\n--------------------------------------------------<br>\r\nThe Company''s liability with respect to any lost \r\nor damaged article shall not exceed 7 times our \r\ncharge for processing it. Please make all \r\ncomplaints within 24 hours of collection stating \r\ninvoice number, tag number and color. We\r\ncannot accept for returns after 24 hours.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `custid`
--

CREATE TABLE IF NOT EXISTS `custid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inv` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `branch` varchar(20) DEFAULT NULL,
  `regdate` varchar(10) DEFAULT NULL,
  `regno` varchar(10) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `custtype` varchar(15) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `day` varchar(10) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `phoneno` varchar(12) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`branch`, `regdate`, `regno`, `surname`, `firstname`, `custtype`, `address`, `state`, `country`, `day`, `month`, `gender`, `phoneno`, `email`) VALUES
('HEADOFFICE', '2014-01-06', 'LS1', 'Test, John', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '8561111111', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2', 'Aunt, Joke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS3', 'Eze, Onyebuchi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33550906', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS4', 'Adefolaju, Segun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29420101', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS5', 'Yetunde, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23188303', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS6', 'Bamgbose, Deji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28851017', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS7', 'Osuare, Esther', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36978260', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS8', 'Agwu, Agbai', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33658100', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS9', 'Omolayo, Adeniji (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38498515', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS10', 'Ogbe, Moses', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33725729', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS11', 'Lambo, Lanre', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS12', 'Chief .f., Akinmurele', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34034000', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS13', 'Julliet, Morgan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33524554', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS14', 'Prince, Emma  Unachukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34742499', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS15', 'Shakeerah, Afunku', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23048583', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS16', 'Abraham, Dele', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34700121', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS17', 'Omole, Olusoji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33085334', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS18', 'Onyekwere, Bede .c.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34096626', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS19', 'Pamie, George', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33212546', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS20', 'Adediji, Olu .i.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23030083', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS21', 'Olumide, Adebayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23850144', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS22', 'Sangobunmi, Yinka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33324858', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS23', 'Ogbunugwu, Arinze', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34543259', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS24', 'Iroh, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23079533', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS25', 'Engr., Ike.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23269944', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS26', 'Onyegu, Ray', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22907628', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS27', 'Erinle, Patricia', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37129761', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS28', 'Ogundeji, Olayinka (mrs)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55157235', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS29', 'Ibrahim, Olaide', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33308379', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS30', 'Nnadi, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33201729', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS31', 'Ogbonifo, Iyen', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS32', 'Christabel, Onyejekwe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33330555', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS33', 'Igbigbe, John (pastor)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23211699', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS34', 'Olarinoye, Yinka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23389272', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS35', 'Olanrewaju, T. E. (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27443170', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS36', 'Kalejaiye, Olanrewaju', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36592022', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS37', 'Amiolemen, Wilson', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-83425233', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS38', 'Uboh, Kenedy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-70988088', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS39', 'Obi, Ndidi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33151609', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS40', 'Opara, John', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23076120', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS41', 'Oligbo, Christopher', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23686627', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS42', 'Balogun, Segun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33080415', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS43', 'Opaleye, Mr. & Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23292020', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS44', 'Akeju, Sola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52234991', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS45', 'Adewunmi, Femi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-88981811', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS46', 'Busari, Dejare', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08027482104', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS47', 'Fatola, Lateef (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33066629', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS48', 'Onwuka, Emeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34083054', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS49', 'Shola, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33261862', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS50', 'Da-silva, Bayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23222484', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS51', 'Kari, Abubakar', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22920488', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS52', 'Ntukokwu, Chukwuemeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33295951', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS53', 'Eze, Okechukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35903890', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS54', 'Oyenuga, Ikeoluwapo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-31201907', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS55', 'Okun, Jerry', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-63200160', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS56', 'Olaku, Nkiruka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-42036593', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS57', 'Ehendia, Francis', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08023026534', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS58', 'Kehinde, Temitope', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08028157621', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS59', 'Amadi, Comfort', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08029727785', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS60', 'Orolu, Tope (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23039457', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS61', 'Oyiga, George', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33260906', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS62', 'Osho, Babatunde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23164348', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS63', 'Daddy, Ajulo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08034881776', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS64', 'Gadzama, Musa (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32004001', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS65', 'Pastor Supo, Oluwasakin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23035013', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS66', 'Onanuga, Ade', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33006361', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS67', 'Nwagwu, Onyinye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33236723', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS68', 'Nwankwo, Chinwe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55920600', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS69', 'Adebayo, Folake (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25951144', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS70', 'Koleoluwa, Abiodun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23382853', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS71', 'Benson, Tunde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23211026', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS72', 'Kayode, Ibitoye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS73', 'Pastor, Popoola David', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37184676', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS74', 'Pastor, Adesanya', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23033916', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS75', 'Pastor, Agboola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23033925', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS76', 'Florence, Adekola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS77', 'Pastor, Marcus Akimboni', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23246562', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS78', 'Pastor, Ajila', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-34030302', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS79', 'Robinson, Irene', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33803630', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS80', 'Ademola, Okulaja', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28284500', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS81', 'Wani, Miss', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-74462249', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS82', 'Titi, Adegbile (mrs)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39093875', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS83', 'Okeh, James Bunmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS84', 'Dada, Ayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53079698', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS85', 'Chukwu, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33007396', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS86', 'Nsikaka, David', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23183078', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS87', 'Ernest, Nweke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS88', 'Adebowale, Ajayi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-88224379', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS89', 'Remi, Adeyola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS90', 'Ashaye, Morenike (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37470133', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS91', 'Ifejuana, Ore', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS92', 'Isioma, Victor', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS93', 'Gloria, Mrs Obiora', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS94', 'God''sfavour, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS95', 'Abayomi, Captain', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33084380', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS96', 'Pastor Ebun, Adegboruwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33212616', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS97', 'Soetan, Toye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23150567', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS98', 'Seun, Famodu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS99', 'Rhodes, Yomi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33671408', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS100', 'Kyrian, Onwuzunke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS101', 'Rev, Nwanma', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34720525', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS102', 'Kolajo, Toyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-54541433', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS103', 'Giwa, Fatou', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-84433461', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS104', 'Chibuzo, Aghaji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22014650', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS105', 'Omoigui, Michael', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23128331', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS106', 'Adebanjo, Dr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23090863', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS107', 'Gboyega, Ajagbe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28833080', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS108', 'Anyaegbuna, Nonso', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08033894894', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS109', 'Zico, Mr', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33447483', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS110', 'Odibeli, Christian.a', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-26142418', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS111', 'Atunde, Mr.john', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37219501', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS112', 'Nwakanma, Eze', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29292405', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS113', 'Akiyode, Olukayode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-66751350', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS114', 'Mr, Michael', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS115', 'Ojugbeli, Chuks', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33609742', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS116', 'Kunle, Kuton', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS117', 'Oduntan, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-99990741', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS118', 'Koiki, Adekunle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23283407', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS119', 'Akanji, Idris', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08035593323', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS120', 'Ereku, Weyinmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-2345338', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS121', 'Ashiru, Olanrewaju', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33137490', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS122', 'Pastor, Yinka Lahanmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34096445', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS123', 'Elgoche, Lizzy (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38227318', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS124', 'Prof, Alo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22903841', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS125', 'Anene, Ifeanyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-82397490', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS126', 'Prof., Adeyeye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33263684', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS127', 'Ajayi, Bunmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34880519', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS128', 'Peters, Tomi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60665946', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS129', 'Faseun, Yomi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34021044', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS130', 'Paul, Ben', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08023019272', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS131', 'Johnson, Patricia', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34043122', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS132', 'Onochie, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34294416', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS133', 'Omotilewa, Yomi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23136945', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS134', 'Olafenwa, Titi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08-23185790', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS135', 'Ohuakanma, Kades', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-42353869', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS136', 'Ogunbadejo, Bunmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33044055', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS137', 'Lenin, Mr. & Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-34022376', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS138', 'Igho, Enitan (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-50806272', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS139', 'Odusanya, Tunde (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08023191604', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS140', 'Akeju, Sunday', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23226591', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS141', 'Olofin, S. A. (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23052269', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS142', 'Chibuna, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33487072', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS143', 'Taylor, Bisi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33005396', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS144', 'Adegbite, Ade (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-65000600', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS145', 'Obasi, Oluchi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29159406', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS146', 'Ladipo, Tolu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08023118931', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS147', 'Ezeh, Chidi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33006206', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS148', 'Esan, Leye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38063912', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS149', 'Prof, Eghagha', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23220939', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS150', 'Chejieh, Charles', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23044028', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS151', 'Alhaji, Yunusa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-25397626', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS152', 'Pastor Ayo, Igandan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34022061', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS153', 'Oworu, Endurance', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-35064663', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS154', 'Ashiru, Kunle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23078272', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS155', 'Zaid, Mr. & Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23024147', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS156', 'Femi, Adebayo (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23519798', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS157', 'Oladipupo, Kolawole', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23507381', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS158', 'Pastor, Tope Akinbola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23257719', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS159', 'Aguda, Liasu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38356176', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS160', 'Ajayi, Afolabi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-41685762', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS161', 'Thomas, Mulikat', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23137673', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS162', 'Ashiwaju, Tope', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33298353', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS163', 'Prof, Oyebode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33131935', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS164', 'Adeyemo, Bola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23408507', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS165', 'Ayinde, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33045918', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS166', 'Ajumobi, Henry', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34728969', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS167', 'Babajide, Adebayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23178210', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS168', 'Adegboye, Omotayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-75805629', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS169', 'Ejike, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33000620', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS170', 'Akinyemi, Bobby', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37123082', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS171', 'Pastor Tunde, Oyeluyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-55557700', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS172', 'Shokunbi, Wale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33073967', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS173', 'Dahunsi, Tunji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23050918', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS174', 'Adeniran, Rotimi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28762999', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS175', 'Deji, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23720664', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS176', 'Pastor, Emeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33229198', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS177', 'Harith, Sulaiman', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35300327', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS178', 'Jude, Chinedu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-28562340', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS179', 'Oluwo, Wale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23312184', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS180', 'Lawson, Sopakiriba', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25018879', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS181', 'Sulyman, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33198150', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS182', 'Adegoke, Funsho', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33017658', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS183', 'Oluwole, Ayodeji (dr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33008352', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS184', 'Udechukwu, Ralu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55145040', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS185', 'Adekunle, Debo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60624135', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS186', 'Babatunde, Mr. & Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33043004', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS187', 'Akisanya, Olaide', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33016157', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS188', 'Akpenyi, Esther', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28789457', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS189', 'Dr., Opeibi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33122200', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS190', 'Ndanusa, Musa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33138051', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS191', 'Ademola, Adeoye Feyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33292527', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS192', 'Omisore, Seun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23673099', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS193', 'Akinwowo, T. A.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23225961', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS194', 'Quadri, Prince', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-30878980', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS195', 'Sunday, Ukabam', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22234262', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS196', 'Christopher, Olumuyiwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39324222', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS197', 'Okon, Uwem', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24202037', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS198', 'Ayanlowo, O. J. (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55099444', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS199', 'Adedipe, Adegboyega', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33338339', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS200', 'Agbanusi, S. C. (col)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35876620', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS201', 'Michael, Okereke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-38905281', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS202', 'Oshinowo, Damilola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23230347', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS203', 'Ailara, Rafiq', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35856441', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS204', 'Boyo, James', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-58818366', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS205', 'Omoregie, Bisi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-26618161', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS206', 'Akpenyi, Oghor', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22910199', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS207', 'Okoro, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33085457', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS208', 'Bamidele, Raphael', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28585720', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS209', 'Adeniyi, Yemi (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23131601', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS210', 'Omogbehin, Oye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34455928', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS211', 'Ibukun, Dosumu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS212', 'Ekong, Horgan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34964772', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS213', 'Eniola, Jegede', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33078383', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS214', 'Adekoya, Biola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23045013', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS215', 'Chetachi, Ugwunwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35109855', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS216', 'Pat, Ohimain', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-23031377', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS217', 'Alphonsus, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33040833', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS218', 'Eziukwu, Uzo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37232457', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS219', 'Prof, Otubanjo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33059576', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS220', 'Ekwomadu, Emma', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23126034', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS221', 'Kuponiyi, Leke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23416061', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS222', 'Aromiwura, Kunle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33326526', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS223', 'Lawanson, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23193367', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS224', 'Ogunlewe, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23221780', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS225', 'Olatunji, Mrs. O.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-25803017', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS226', 'Musa, Bashir', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-35376605', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS227', 'Olufowobi, Abiodun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60934000', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS228', 'Akalugwu, N.h', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35384244', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS229', 'Fowler, Ayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23163448', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS230', 'Egbuniwe, Uche', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS231', 'Liman, Bello', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33462156', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS232', 'Fajemirokun, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33250878', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS233', 'Mamman, Elisha', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34383444', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS234', 'Pastor, Femi Kayode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23043411', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS235', 'Pastor, Timothy Akanwo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23033920', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS236', 'Omotayo, Joseph', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '01-4196643', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS237', 'Unuigue, Yinka (mrs)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23017411', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS238', 'Mrs., Ben', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23177901', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS239', 'Engr., Igwe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23269944', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS240', 'Ademeto, Segun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33539071', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS241', 'Egwuatu, K. C.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37008501', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS242', 'Dada, E. O. (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23141485', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS243', 'Ananti, Vincent', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33061156', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS244', 'Dr., Oboh', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23061932', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS245', 'Oluwatobiloba, Olamide', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-51576388', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS246', 'Ichekwai, Fred', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37237758', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS247', 'Akisanya, Olubukola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33234057', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS248', 'Olushola, Grace', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23467703', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS249', 'Oboth, Sylvester', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-30137121', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS250', 'Effiong, A.o', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33158177', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS251', 'Longe, Damilola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23451814', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS252', 'Aunt, Grace', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33053658', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS253', 'Stephen, Agada', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-65298110', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS254', 'Onuh, Gowon', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33237591', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS255', 'Obasanmi, Wisdom', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-33835953', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS256', 'Kareem, Deborah', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36398125', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS257', 'Ademola, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-86212957', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS258', 'St., David', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23137926', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS259', 'Richard, Ayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-25527398', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS260', 'Adelusi, Bola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23537989', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS261', 'Taiwo, Damilola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23307097', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS262', 'Bassey, Tom', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27242797', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS263', 'Okonji, Isioma', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24717850', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS264', 'Ohanusi, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33812015', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS265', 'Dako, Charles', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33221106', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS266', 'Doherty, Olumuyiwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33128567', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS267', 'Agbaje, Olugbenga', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33282756', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS268', 'Philips, Dada', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-86459490', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS269', 'Tarka, Edith', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33011133', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS270', 'Obe, Olusegun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23134137', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS271', 'Borha, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33026020', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS272', 'Arinze, Chris', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34366345', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS273', 'Oputa, Augustine (prince)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36666547', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS274', 'Gboyega, Bello', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34090117', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS275', 'Aderoju, Ope-ajayi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22228642', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS276', 'Ukaiwe, Adebowale (pst.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23051696', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS277', 'Da-silva, Morenike', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23060395', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS278', 'Martins, Adelola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23127825', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS279', 'Peter, Oyadogha', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33212542', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS280', 'Arogundade, Olasupo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-57164217', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS281', 'Obi, Ebele', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33605512', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS282', 'Princess, Olateru', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-51501417', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS283', 'Tayo, Kaffo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35526429', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS284', 'Araga, Julius', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-87187778', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS285', 'Olowoyo, Adeniyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22228582', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS286', 'Hassan, Aliyu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33031946', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS287', 'Madu, Boniface', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36962854', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS288', 'Victor, Isioma', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53381339', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS289', 'Olukoya, Olatubosun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55283540', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS290', 'Omoigui, Osa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-58281711', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS291', 'Biney, Kayode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28192043', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS292', 'Olubode, Arch.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23179700', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS293', 'Ajetumobi, Paul', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33056414', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS294', 'Ekanem, Irene', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33136676', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS295', 'Enabulele, Jolly', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23082495', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS296', 'Faseun, Olasupo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-2874402', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS297', 'Gloria Mrs, Chukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23189843', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS298', 'Balogun, Titilope (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-28195847', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS299', 'Onyemechi, Gabriel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29336371', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS300', 'Anifowoshe, Adeola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33492817', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS301', 'Benjamin, Olaide', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29628468', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS302', 'Ajiboye, Omolara', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-88224370', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS303', 'Yakubu, Bala', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60080600', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS304', 'Akinlonu, Simeon', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33069052', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS305', 'Odubela, Azeez', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23825568', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS306', 'Essien, Mr. E.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29990710', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS307', 'Okoronkwo, Alezi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23204073', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS308', 'Olisa, Smart', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33130700', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS309', 'Obi, Chinedu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23197006', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS310', 'Ugochukwu, Sunday', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39594315', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS311', 'Shonibare, W.k (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33890488', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS312', 'Ernest, Opara', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33276578', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS313', 'Nimiteym, Duke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37058111', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS314', 'Adeniyi, Taiwo Ayodele', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-28057763', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS315', 'Miss, Ronke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25705643', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS316', 'Nwankpele, Bolaji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23026543', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS317', 'Otun, Idowu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55159938', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS318', 'Ogunfowora, Kamor', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33078139', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS319', 'Adetayo, Foluke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23456606', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS320', 'Ajayi, Eunice', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29548213', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS321', 'Enikanologbon, Abel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33457104', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS322', 'Mayfair, Insurance Brokers', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56625112', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS323', 'Olabanji, Taiwo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24235417', 'you@yourdomain.com');
INSERT INTO `customer` (`branch`, `regdate`, `regno`, `surname`, `firstname`, `custtype`, `address`, `state`, `country`, `day`, `month`, `gender`, `phoneno`, `email`) VALUES
('HEADOFFICE', '2014-01-06', 'LS324', 'Davies, Oyindamola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35026705', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS325', 'Anyaeche, David', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55453904', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS326', 'Mamman, Ishiaku', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-68110199', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS327', 'Ogbeide, Peter', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23102091', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS328', 'Oluwaseyi, Moses', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-31306800', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS329', 'Prof. Folabi, Olumide', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23401887', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS330', 'Anyiam, Angel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24106162', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS331', 'Prof., Susu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33017863', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS332', 'Ayanwale, Olanrewaju', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23034863', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS333', 'Afolayan, Aremu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60980247', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS334', 'Pastor, Innocent', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33341210', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS335', 'Jack, Emem', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23029677', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS336', 'Serrano, Bisi (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23159350', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS337', 'Aderin, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS338', 'Anachusi, Emeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33523390', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS339', 'Oyetola, Tunde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23983441', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS340', 'Awosemo, Victoria', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33291021', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS341', 'Nwilo, Onyeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-80497855', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS342', 'Nurudeen, Kunle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56157397', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS343', 'Olutumida, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-35670803', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS344', 'Prof., Ogunlesi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33353238', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS345', 'Eric, O. J', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29074432', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS346', 'Osanyi, Olaolu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23052675', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS347', 'Onaolapo, Joel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33040114', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS348', 'Adeoye, Olalere', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60912440', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS349', 'Major, Ayeni', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23452790', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS350', 'Adetayo, Remi (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23020004', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS351', 'Omodare, Dayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23070715', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS352', 'Kalu, Vivian (mr. & Mrs)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37456136', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS353', 'Opadokun, Bode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33024171', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS354', 'Ottobong, Nkwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33035515', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS355', 'Shalewa, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-30849416', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS356', 'Ukachukwu, Chidi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34404100', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS357', 'Adamson, Barrister', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23105406', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS358', 'Prof., Chukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33074104', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS359', 'Alex, Nkeaka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-87179511', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS360', 'Kolapo, Abioye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23500928', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS361', 'Chief, Madu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-99434198', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS362', 'Adegunle, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52090369', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS363', 'Talabi, Adeniyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23220294', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS364', 'Aoko, Oluseyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33241417', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS365', 'Dele Thomas, Orogan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23130656', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS366', 'Daniel, Adedayo (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28294873', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS367', 'Ojemba, Mike', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33308292', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS368', 'Uche, Onyiriuka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33223654', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS369', 'Alimi, Folabi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23145690', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS370', 'Uzuh, Chimezie', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37233664', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS371', 'Dako, Joseph', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23879759', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS372', 'Ugochukwu, Benjamin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-59250707', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS373', 'Etuka, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-39182463', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS374', 'Kotin, Noah', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56413399', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS375', 'Orolu, Dayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-68053194', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS376', 'Bassey, Francis', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23269908', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS377', 'Olatunji, Ganiyu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33079019', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS378', 'Juba, Wale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23123207', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS379', 'Gerald, Chukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35739502', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS380', 'Oyewole, Gbenga', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33280314', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS381', 'Akinlabi, Adeyemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53024499', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS382', 'Olaluwoye, Hon.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56068153', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS383', 'Banjo, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23092937', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS384', 'Ogunbanke, Ibukun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23052874', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS385', 'Dapo, Junaid', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24549621', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS386', 'Oshin, Yemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32004771', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS387', 'Ukeje, Comfort', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37727279', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS388', 'Olum, Andrew', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33015926', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS389', 'Nwania, Chikaodili', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33765331', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS390', 'Okere, Felix', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36762262', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS391', 'Anaedu, Donatus', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34881228', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS392', 'Osondu, James', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23166887', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS393', 'Adedugbe, Moji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53315109', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS394', 'Okoli, Chinedu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22245066', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS395', 'Rafiu, Davids', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28417297', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS396', 'Awosanya, Joseph', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23241182', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS397', 'Awere, Dele', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23119833', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS398', 'Egbe, Adeniyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-31340119', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS399', 'Abubakar, Yusuf', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60656028', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS400', 'Ajao, Soji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23251420', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS401', 'Nelson, Okoli', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23128422', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS402', 'Usiholo, Greg', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33245194', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS403', 'Ademuwa, Ayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23159357', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS404', 'Eyo, Ita', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23797316', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS405', 'Osuntubo, Femi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23201423', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS406', 'Fasoranti, Tunde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55117424', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS407', 'Onwudinjo, Ifeanyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23235386', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS408', 'Osinaike, Toyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33290039', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS409', 'Olalekan, Ajibola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27533562', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS410', 'Akinjide, Akinola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24611320', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS411', 'Ojuri, Bukola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25023152', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS412', 'Adedamisi, Pegba Otemolu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23189753', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS413', 'Aderibigbe, Tomi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39105279', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS414', 'Olumuyiwa, Adebiyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23203963', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS415', 'Otinwa, Funmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33051378', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS416', 'Odiase, Victor', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33047166', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS417', 'Agbowo, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-65005980', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS418', 'Osighala, John', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38166308', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS419', 'Unuigbe, Ugah', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37872538', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS420', 'Akeem, Animashaun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25667101', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS421', 'Bankole, Tomori', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-84328280', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS422', 'Akabuike, Joseph', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23147733', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS423', 'Emeh, Henrietta (mrs)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38050954', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS424', 'Oyagha, Sunday', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34071111', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS425', 'Abayomi, Iyiobi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '01-8970166', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS426', 'Alaoma, Chidi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33354499', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS427', 'Banye, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33090949', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS428', 'Udemba, Juanita', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23892195', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS429', 'Adetayo, Kayode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53037504', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS430', 'Dr. Olajide, Funsho', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-64028437', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS431', 'Adebambo, Adegoke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27352131', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS432', 'Taiwo, Lanre', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-62882003', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS433', 'Onwuzurike, Kyrian', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-57114847', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS434', 'Adegbola, Gbenga', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-64690413', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS435', 'Eze Iromaka, Fidelis', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33909520', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS436', 'Onwudinjo, Idowu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23893791', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS437', 'Apampa, Akin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22265421', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS438', 'Keshinro, Tope', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23073793', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS439', 'Agbenohevi, George', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23063110', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS440', 'Fatoki, Sayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55262754', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS441', 'John, Odey', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23506944', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS442', 'Adisa, Tunji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-60547771', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS443', 'Young, Wuraola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23019501', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS444', 'Oluwayelu, Lawrence', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-79029705', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS445', 'Adeyemi, Fanu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29454345', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS446', 'Owoyemi, Gbenga', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23790053', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS447', 'Dotun, Olabode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23506317', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS448', 'Awolowo, Kunle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-76200012', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS449', 'Fehintolu, Idowu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35070093', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS450', 'Okaro, Chioma', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27253689', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS451', 'Mohammed, Ibrahim', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-58680874', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS452', 'Ekwoaba, Joy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33069753', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS453', 'Oboasekhi, Grace', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37143050', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS454', 'Agiode, Steve', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33061394', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS455', 'Uanreroro, Olukayode (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22243099', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS456', 'Onuoha, Ben (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23211293', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS457', 'Abah, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33070953', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS458', 'Osidipe, Shola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-37877247', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS459', 'Okika, Uju', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-33151190', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS460', 'Anaedu, Michael', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23205847', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS461', 'Adewale, Temitope', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23125409', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS462', 'Jimoh, Kaka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-30641614', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS463', 'Osele, Oge', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33433199', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS464', 'Adegboye, Funmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34548304', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS465', 'Akinduro, Yejide', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-82256467', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS466', 'Omoboriowo, Yemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23330896', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS467', 'Ogunleye, ', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32479539', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS468', 'Anamanya, Ifechukwude', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '07068828544', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS469', 'Omodara, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33323906', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS470', 'Imhangbode, Johnson', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23945520', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS471', 'Okoli, Ifeyinwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22228463', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS472', 'Afolabi, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS473', 'Okonji, Chinedu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-68296142', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS474', 'Anifowoshe, Wale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-21001747', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS475', 'Alaka, Ikenna', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60676263', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS476', 'Ibrahim, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37046638', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS477', 'Aderibibge, Oyekan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53145195', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS478', 'Egbas, Ken Ovat', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23020149', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS479', 'Oluwatobi, Olatunde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27254410', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS480', 'Awala, Alero', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23193119', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS481', 'Dawodu, Yemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23431331', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS482', 'Akenuwa, Moses', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-34170377', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS483', 'Abimbola, Valentine', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32086306', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS484', 'Laditan, John', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-50704244', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS485', 'Akinpelu, Lalekan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53357040', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS486', 'Akeju, Temidayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34071327', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS487', 'Oyo, Otome', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23231920', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS488', 'Onabanjo, Seun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-76406518', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS489', 'Bilewu, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-80362419', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS490', 'Ewubare, Biola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-25018169', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS491', 'Ayoade, Bolaji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33565980', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS492', 'Oheri, George', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-39628845', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS493', 'Alhaji, Lawal', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33218764', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS494', 'Bodurin, Fatunke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23339811', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS495', 'Nwonu, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33461547', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS496', 'Are, Ayodeji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36859236', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS497', 'Engr., Nifesi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37852323', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS498', 'Muslih, Bidmos', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34699932', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS499', 'John, Eze Onyebuchi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33348651', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS500', 'Oyekunle, Olamide', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34751065', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS501', 'M., Aboshi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34035426', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS502', 'Chukwudi, James', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08086107196', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS503', 'Bello, A.g', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS504', 'Unaegbunam, Chinasa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33025829', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS505', 'Prof, Denloye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23192250', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS506', 'Badejo, Gbadebo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24169340', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS507', 'Sarah, Titi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-57010853', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS508', 'Fashina, Tolu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23063409', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS509', 'Adewunmi, Yemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08023090865', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS510', 'Adegoke, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-32039132', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS511', 'Lawal, Usman', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28423042', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS512', 'Falamoye, Lucky', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23868183', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS513', 'Pst. Emmanuel, Oladimeji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28315914', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS514', 'Dangana, L.s. (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33245433', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS515', 'Esenowo, Victor', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-63920432', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS516', 'Oniru, Moses', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33128525', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS517', 'Edokpai, Ann', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23068990', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS518', 'Ezekannagha, Uche', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34105528', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS519', 'Akinwale, Akintola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-30217788', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS520', 'Ojo, J.o', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33085093', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS521', 'Omoniyi, Shola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23159297', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS522', 'Abbakareem, Tutu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33460235', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS523', 'Ajoni, Folarin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32467621', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS524', 'Balogun, Folake', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-81243218', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS525', 'Odutuga, Adegbuyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23183381', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS526', 'Okpala, Precious', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23083030', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS527', 'Dr., Adediji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23514928', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS528', 'Anini Pedro, Bamiyo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23226675', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS529', 'Rouge, Joice', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23402173', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS530', 'Amaechi, Obi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23005096', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS531', 'Ogunjemite, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33060297', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS532', 'Abubakar, Zaruq', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55093608', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS533', 'Mohammed, Conference', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-58680874', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS534', 'Enebeli, Pat', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34034046', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS535', 'Aribisala, Olushola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55245342', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS536', 'Anayo, Kc', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-37871720', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS537', 'Enwere, Goddy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37137852', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS538', 'Pastor Gbenga, Olalokun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55352923', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS539', 'Oyewo, Juwon', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37138741', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS540', 'Nnorom, Tony', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33193999', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS541', 'Omotayo, Omotola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23088605', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS542', 'Adeleye, Yomi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34769951', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS543', 'Aderonke, Mr. & Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35235070', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS544', 'Abuachi, Eric Don', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33049029', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS545', 'Soewu, Dapo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37108171', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS546', 'Ojeih, Sunday', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-83904441', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS547', 'Irabor, Donny', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35845316', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS548', 'Ubili, Nnaemeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38202069', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS549', 'Ayebo, Bode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36365407', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS550', 'Ogunjumelo, Bunmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55347256', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS551', 'Omolodun, O.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55271014', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS552', 'Azuka, Ogbolumani', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23134304', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS553', 'Jaiye-simi, Jaiye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-30656960', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS554', 'Dan, Olaoye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34968711', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS555', 'Udenaka, Uche', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35373681', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS556', 'Okigbe, Iyke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22221633', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS557', 'Adeoye, Adewale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25927134', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS558', 'Olaniran, Tosin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29325476', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS559', 'Adeyemi, Akin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53024499', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS560', 'Esangbedo, Peter', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32953707', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS561', 'Osho, Shofola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38007555', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS562', 'Igbeta, Alex', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25893040', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS563', 'Ogbonna, Kelvin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33198962', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS564', 'Dawodu, Wale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23413132', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS565', 'Akingbade, Bukky', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-73655052', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS566', 'Adegoke, Ayodiya', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-67694404', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS567', 'Young, Mimi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-64909408', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS568', 'Chigbo, Inegbu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35491323', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS569', 'Akoyon, Oyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53569114', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS570', 'Odeku, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56570985', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS571', 'Ayeni, Agoro', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27332801', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS572', 'Odusanya, Kenneth', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33047096', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS573', 'Okponung, Godwin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23014426', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS574', 'Ubani, Karen', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-40523110', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS575', 'Olaleye, Bose', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-68229509', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS576', 'Oshodi, Taiwo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23034682', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS577', 'Kekereekun, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23215525', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS578', 'Okemakinde, Oladayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23088859', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS579', 'Enilolobo, Adekola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08023692107', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS580', 'Joel, Israel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37501596', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS581', 'Chief, Johnson', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33135411', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS582', 'Alhaji, Saka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-74656701', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS583', 'Otesanya, Michael', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-66523740', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS584', 'Kayode, Odenike', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-20557644', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS585', 'Eniyangbagbe, Lekan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08056257013', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS586', 'Akindele, Adeyemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-31515358', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS587', 'Chekwube, Amuh', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33810723', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS588', 'Olayiwola, Akeem', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08056119929', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS589', 'Ahmed, Conference', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS590', 'Adesanya, Mr', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23142762', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS591', 'Nwaojigba, Ada', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-54002020', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS592', 'Ikuesan, Wale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55570802', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS593', 'Pastor, Francis', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34828658', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS594', 'Oluwaloju, Niyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29085397', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS595', 'Barrister, Eric Ayalogu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33334549', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS596', 'Vincent, Anthony', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-25204662', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS597', 'Akinlawon, Aina', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-26601797', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS598', 'Oradiwe, Onyeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-51965353', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS599', 'Olalekan, Bada', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23354256', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS600', 'Martins, Funmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23362198', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS601', 'Koya, Adetokunbo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08035734732', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS602', 'Olomojobi, Z.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS603', 'Chukwudi, Onwuasoanya', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-59831082', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS604', 'Okeke, Austin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33787143', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS605', 'Akomiju, Tubosun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33921007', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS606', 'Adebayo, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-73166933', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS607', 'Adegoke, Deji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33045711', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS608', 'Etim, Andy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-69698878', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS609', 'Babalola, Afolabi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23039661', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS610', 'Umah, Fitz-gerald', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33292155', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS611', 'Akinwande, Akinsola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08023024669', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS612', 'Adewale, Niyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60008852', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS613', 'Ope-ajayi, Aderoju', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29998642', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS614', 'Olugosi, Yinka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23181093', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS615', 'Echelon, Drycleaners', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-62876409', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS616', 'Yusuf, Agbolahan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-81943497', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS617', 'Peter, Inegbenose', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23283740', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS618', 'Ademoye, Tobi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-88775037', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS619', 'Ajas, Maxwell', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-30055065', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS620', 'Oyebode, Deji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28160359', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS621', 'Utuama, Ejiro', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-51625762', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS622', 'Anazoeze, Dozie', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34876291', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS623', 'Olatunji, Doyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35214400', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS624', 'Aziken, Austin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37077313', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS625', 'Ameen, S.a', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37221450', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS626', 'Orimoloye, Olushola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33038849', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS627', 'Asuquo, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '01-4057222', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS628', 'Sowemimo, Mr. & Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33138270', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS629', 'Oligbo, Henry', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22227024', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS630', 'Egona, Frank', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23264463', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS631', 'Ayobami, Philips', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35283484', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS632', 'Macfoy, Abiodun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33708354', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS633', 'Udechukwu, Chimezie', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-79047502', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS634', 'Atanda, Lekan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53375180', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS635', 'Oluwalana, Femi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37175322', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS636', 'Aderibigbe, Femi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33049443', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS637', 'Anyanwu, Okechukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37118679', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS638', 'Igwebuike, Ben', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33037172', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS639', 'Isa, Baba', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22233881', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS640', 'Okafor, Bernard', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33800932', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS641', 'Shofolahan, Jide', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-35504646', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS642', 'Marques, Babatunde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23262427', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS643', 'Ogunyale, Dele', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24590050', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS644', 'Livinus, Mary', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37074315', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS645', 'Ezeude, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33225754', 'you@yourdomain.com');
INSERT INTO `customer` (`branch`, `regdate`, `regno`, `surname`, `firstname`, `custtype`, `address`, `state`, `country`, `day`, `month`, `gender`, `phoneno`, `email`) VALUES
('HEADOFFICE', '2014-01-06', 'LS646', 'Oscar, Onwudiwe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33336717', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS647', 'Ogunsola, Opeyemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-61544243', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS648', 'Yetunde, Alabi (sasha', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23238366', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS649', 'Darlington, Olu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33278066', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS650', 'Ariyibi, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23767895', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS651', 'Wale, Butter', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29758893', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS652', 'Godwill, Mercy (mrs)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-98325332', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS653', 'Mrs, Idowu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33187108', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS654', 'Jimoh, Kuburat', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33436061', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS655', 'Odunfa, Kemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-29237048', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS656', 'Iyke, Ejimba', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32163818', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS657', 'Angela, Ekele', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37868780', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS658', 'Rilwan, Tijani', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35856441', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS659', 'Oyebode, Akin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28160359', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS660', 'Maduabuchi, Mercy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34022836', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS661', 'Garba, Y.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33190637', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS662', 'Talabi, Damilola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28400172', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS663', 'Prof, Adejugbe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '0805415214', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS664', 'Obigha, Patrick', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-62940605', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS665', 'Tochukwu, David', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36934822', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS666', 'Echemnu, Uzoma M.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37135067', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS667', 'Ibrahim, Sule (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-5532943', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS668', 'Mba, Tony', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55579010', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS669', 'Obi, Chinwe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08035378158', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS670', 'Michael, Okun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-66557956', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS671', 'Funmi, Kosoko', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33868424', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS672', 'Tosin, Okunrounmu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-62885585', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS673', 'Ricketts, Mr', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-73050161', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS674', 'Emeka, Atuenyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-65521885', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS675', 'Yvonne, Igun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-98986663', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS676', 'Jumoke, Olabanji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56169594', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS677', 'Udaga, Moses', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60325166', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS678', 'Akinola, Tolu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32131868', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS679', 'Umeobi, Samuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33335283', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS680', 'Olaiya, Lekan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22553308', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS681', 'Ademakinwa, Adeolu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-21400118', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS682', 'Osiname, Sope', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '01-7337107', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS683', 'Milton, Sophia', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56241706', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS684', 'Chidi, Charles', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-33787825', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS685', 'Oshiegbu, Blessing', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33918974', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS686', 'Dr, Nneji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23308801', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS687', 'Ezenwajiobi, Tony', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33002718', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS688', 'Adeniyi, Adeogun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-80446066', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS689', 'Okeke, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23135685', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS690', 'Adetunji, Taiwo(mrs)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29994914', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS691', 'Orji, Moses', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35272528', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS692', 'Wilson, Nath', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23024425', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS693', 'Larry, Igbinedion', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33031946', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS694', 'Ajibola, Adekunle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23833609', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS695', 'Ogunmola, Bayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-20954787', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS696', 'Illok, Cyril', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32002649', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS697', 'Muokwelu, Ifechi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37274208', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS698', 'Fowora, Funmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33291344', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS699', 'Mbagwu, Linus', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23236076', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS700', 'Quadri, Joke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56158533', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS701', 'Pastor Niyi, Ajibola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23127474', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS702', 'Karunwi, Kofo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33056262', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS703', 'Falade, Kolade', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33012382', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS704', 'Okwechime, Ugochukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23013146', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS705', 'Ewoma, Chima', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33347282', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS706', 'Adeniyi Adele, Halima (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33109002', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS707', 'Olamiju, Chris', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23375924', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS708', 'Adebayo(dr), Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-51728282', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS709', 'Bayewu, Akin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25018379', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS710', 'Okeke, Uche', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23108487', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS711', 'Tobi, Andrew', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33199071', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS712', 'Akinlade, Bayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23870900', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS713', 'Basil, Ughamadu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-62955818', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS714', 'Adeosun, Samuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33229218', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS715', 'Omiyale, Kemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27611108', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS716', 'Enemor, Ogo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-25397767', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS717', 'Onayinka, Segun (pastor)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27387999', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS718', 'Fred, Chinedu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-88111164', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS719', 'Odunuga, Seun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56148486', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS720', 'Amodu, Kayode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35712646', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS721', 'Ayuba, Joab', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34940135', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS722', 'Ibraim, Gamu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-82362419', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS723', 'Adeyinka, Adesola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-3371199', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS724', 'Alimi, F. A.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23029704', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS725', 'Ojo, J. K. (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37169717', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS726', 'Ohunene, Aliyu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-54525920', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS727', 'Ewata, Olajide Thompson', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS728', 'Inegbenose, Funke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23076974', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS729', 'Tamuno, Jeff', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-64672880', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS730', 'Olubi, Kehinde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56596144', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS731', 'Ekenimoh, Victoria', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22227304', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS732', 'Ogba, Janet (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-82134557', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS733', 'Omotayo, Michael', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33229923', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS734', 'Corporal, Peter', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-6235066', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS735', 'Peters, Adenike (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33004562', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS736', 'Anakebe, Tony', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35802329', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS737', 'Olasele, Gbenga', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55407404', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS738', 'Olaiwola, Akeem', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS739', 'Ikponmwosa, Odiase', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37139850', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS740', 'Eyitayo, Gbenga', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35607072', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS741', 'Egbatehimiro, Bimbo (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS742', 'Eniabitobi, Pastor', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-76769734', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS743', 'Njokede, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-34150888', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS744', 'Ejiogo, Patrick', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-63936367', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS745', 'Ike, Daniel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33160543', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS746', 'Fela, Somoye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33971332', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS747', 'Osibanjo, Moyosore', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60177069', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS748', 'Chinaka, Ikechukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33865822', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS749', 'Uche, Frank', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24470613', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS750', 'Olanrewaju, Aderemilekun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-28000022', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS751', 'Ezenwa, Ada', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS752', 'Oyedeji, Banke (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS753', 'Chief, Shogbesan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38261349', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS754', 'Mabadeje, Mopelola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23103074', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS755', 'John, Ola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29281511', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS756', 'Ogundare, Chidinma', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-54732882', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS757', 'Agbin, Amara', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37007044', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS758', 'Dr. Olaniyi, Rufus', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23043342', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS759', 'Kenny, Seyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37126978', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS760', 'Oyolola, S.a', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23377282', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS761', 'Agbaje, Lara', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23013441', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS762', 'Ogo, Christian', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33061526', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS763', 'Nobis, Tony', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55850523', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS764', 'Prof. Olukemi, Odukoya', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-63444373', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS765', 'Olushola, Tayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23229210', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS766', 'Isiche, Francis', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33228733', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS767', 'Bala, Abubakar', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33542925', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS768', 'Ikem, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23030714', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS769', 'Fagbola, Adepoju', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33009516', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS770', 'Adekoya, Yemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-83326647', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS771', 'Ewebor, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23033537', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS772', 'Utuama, Ona (dr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-54031463', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS773', 'Col. Taiwo, Dele', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23045163', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS774', 'Barakat, Aminat (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-84003600', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS775', 'Ogbonna, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33053332', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS776', 'Mosuro, Ayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33338187', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS777', 'Akinkoye, Modupe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33129070', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS778', 'Inade, Ambrose', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33312850', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS779', 'Ogunbodede, Yemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34014333', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS780', 'Andrew, Gbekeleoluwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-28416670', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS781', 'Ajari, Rachael', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33008880', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS782', 'Pastor, Jonathan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34056062', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS783', 'Durosola, Feyisetan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22903991', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS784', 'Ugochukwu, Anita (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-26303312', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS785', 'Oni, Ayodeji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33047068', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS786', 'Onwuasoanya, Chudi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-59831082', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS787', 'Ishola, Fatai', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33137927', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS788', 'Adeku, Akeem', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23463996', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS789', 'Udaya, Bukola (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-34483441', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS790', 'Asanga, Ime', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53065775', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS791', 'Ugochukwu, Ogbunibala', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33227077', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS792', 'Dr. Onwutalu, Emenike', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23157683', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS793', 'Araka, Martin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33333260', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS794', 'Nubi, Bukky (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-54183668', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS795', 'Omisade, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23297262', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS796', 'Osho, Aderonke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23536595', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS797', 'Asein, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-30678821', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS798', 'Agbor, Davies', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24064442', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS799', 'Prof. Temi, Busari', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23035424', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS800', 'Peter, David', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35127002', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS801', 'Afeez, Akinyemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33724943', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS802', 'Obi, Febian', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23852837', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS803', 'Col., Shobo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-51105986', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS804', 'Inoma, Ifeoma', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33426460', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS805', 'Odukwe, Mr/mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52683744', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS806', 'Olowookere, Olajide', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23998993', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS807', 'Yinusa, Bayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23059746', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS808', 'Peter, Uche', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37775592', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS809', 'Ajibola, Ola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-65756514', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS810', 'Odunubi, Funmi (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23163165', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS811', 'Falomo, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23091020', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS812', 'Adegbite, Aderemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-84287828', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS813', 'Temitope, Maxwaed', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35763566', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS814', 'Olatuja, Folu (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-33675579', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS815', 'Ibitoye, Sunday', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23061852', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS816', 'Oyemade, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23243658', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS817', 'Mogbo, Pascal', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-28165213', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS818', 'Ibekwe, F. V.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-38552260', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS819', 'Orji, Nneka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37765201', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS820', 'John, ', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37251277', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS821', 'Pastor, Sylvester', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-98703669', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS822', 'Obaro, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS823', 'Obasi, Francis', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35801120', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS824', 'Kalu, Sunday', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35749370', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS825', 'Esangbedo, Philip', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23376006', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS826', 'Barrister Esther, Bashorun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34027096', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS827', 'Ayeni, Tolu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34040981', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS828', 'Don, Collins', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35781838', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS829', 'Agbokere, Abiodun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-82147847', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS830', 'Ademiluyi, Bayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22228949', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS831', 'Alabi, S.o', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52260387', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS832', 'Nwabufoh, Ekene', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS833', 'Kayode, Owoduni', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34547712', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS834', 'Alike, Augustine', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37278710', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS835', 'Fadaka, Tony (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39121155', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS836', 'Lesi, Dotun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23228630', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS837', 'Rev., Akpan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33236192', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS838', 'Joseph, Lucky', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-69722741', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS839', 'Nicholas, Chibuzo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33334551', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS840', 'Cod, United', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-62039395', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS841', 'Olayiwola, Olabode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32011168', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS842', 'Oguntoyinbo, Sade', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35031175', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS843', 'Nkechi, Akunne', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33370654', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS844', 'Loraobi, Nig. Ltd', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33470654', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS845', 'Umeweni, Okechukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35763543', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS846', 'Nwosu, Ike', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33401526', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS847', 'Olajide, Latifa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-51192836', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS848', 'Pst. Sanya, Niyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-35778633', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS849', 'Alaka, Izuchukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-91601389', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS850', 'Taiwo, Ajayi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28137171', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS851', 'Ayobami, Ola-ade', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60109720', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS852', 'Collins, Emeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33212483', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS853', 'Nwokolo, Bazee', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52293358', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS854', 'Osikomaiya, Bukola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-29453861', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS855', 'Onoh, Williams', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29055491', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS856', 'Fisher, A. A (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-81240611', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS857', 'Moses, Austin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35773392', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS858', 'Ogo, Pat (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33061536', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS859', 'Akande, Tope', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-36319246', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS860', 'Undie, Maryann', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33338520', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS861', 'Dibia, Priest', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-65254476', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS862', 'Asadu, Uchenna', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32352143', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS863', 'Dr, Adewunmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23293168', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS864', 'Nnabuo, Donald (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34925053', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS865', 'George, Taiwo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-40341943', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS866', 'Alayo, Wale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-3222089', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS867', 'Ib, Aunt', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33032931', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS868', 'Shuni, Ladan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-91466416', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS869', 'Ogunde, Bimbo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52361013', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS870', 'Oguntibeju, Bunmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23013573', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS871', 'Gbenga, Afolayan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-59725315', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS872', 'Ibidun, Paul (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37168604', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS873', 'Fagbamiye, Abayomi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-36740086', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS874', 'Ishola, Wale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34731196', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS875', 'Lanre, Akinsiku', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08023126924', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS876', 'Lawani, Perjikins', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53630974', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS877', 'Alhaji, Ibahim Muazu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS878', 'Dr., Uche', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-42144096', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS879', 'Olorunpomi, Sola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38001330', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS880', 'Etefia, Iddo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52005130', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS881', 'Dalton, Chuks', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33005299', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS882', 'Ekeulu, Chinyere (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23219385', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS883', 'Emeh, Chris', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23181990', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS884', 'Obalana, Olusola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-44580590', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS885', 'Ogunade, Bukky', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-72777028', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS886', 'Uba, Paul', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33076912', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS887', 'Titi, Auntie', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS888', 'Apara, Leye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35360153', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS889', 'Dr., Amusu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23199004', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS890', 'Arowolo, Toyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-77174234', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS891', 'Enakimio, Ihriae', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23117262', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS892', 'Nwandu, Prisca', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-30756357', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS893', 'Miss, Vivian', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34412005', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS894', 'Fagbemi, Yinka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33062711', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS895', 'Omojokun, Toye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33066644', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS896', 'Eze, Gloria', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36535149', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS897', 'Obasi, Stanley', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-20747466', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS898', 'Ola, Segun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23422614', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS899', 'Olukayode, Mr. & Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33162001', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS900', 'Pastor, Oladimeji Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08028315914', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS901', 'Yvonne, Mensah', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-33149702', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS902', 'Ekundayo, Feyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08121493224', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS903', 'Rev. Fr., Ania', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28111778', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS904', 'Oni, Ayodeji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23296859', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS905', 'Momodu, Jullie', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-50528198', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS906', 'Okonkwo, Chineye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38767304', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS907', 'Agu, Ada', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-61165656', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS908', 'Ajisafe, Wonu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23178812', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS909', 'Agboola, Mr & Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55444227', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS910', 'Okenla, Kayode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52124058', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS911', 'Opadokun, Oluwaseun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23767156', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS912', 'Izukanne, Fred', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33340616', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS913', 'Chinagorom, Uzo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23275574', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS914', 'Daniel, Momoh', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55443865', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS915', 'Adesokan, Mr. & Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33236423', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS916', 'Adefarakan, Fisayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60847962', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS917', 'Shopitan, Tosin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-20773456', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS918', 'Lawore, Dipo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23852820', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS919', 'Adeleke, Femi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56320163', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS920', 'Francis, Imanluhe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55110654', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS921', 'Mohammed, Bello', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39515039', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS922', 'Angela, John', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24307955', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS923', 'Adeniba, Ayooluwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27925137', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS924', 'Oshoma (mr.), Dc. Admin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56901004', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS925', 'Fidelis, Joy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55159141', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS926', 'Onagoruwa, Tokunbo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23134606', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS927', 'Ezenwanne, Iyke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-371', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS928', 'Odetola, D. A.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33295252', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS929', 'Adedeji, Abisola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-30726063', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS930', 'Temilade, Remi-adeoye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33215319', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS931', 'Fajemisin, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33197524', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS932', 'Owolabi, Babalola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27505449', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS933', 'Tijani, Bayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-72850308', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS934', 'Omoegun, Bola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-85075114', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS935', 'Haruna, Mutairu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33609558', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS936', 'Fashola, Femi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33069389', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS937', 'Gladys, Pologbo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37134811', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS938', 'Emeh, Mike (pst.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23292737', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS939', 'Dike, F. A', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23270541', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS940', 'Akinrotimi, John', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35751729', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS941', 'Oyelere, Michael', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33707867', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS942', 'Dibia, Uche', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-54345514', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS943', 'Olugboyega, Ademola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22245423', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS944', 'Nwokolo, Felix', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33182382', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS945', 'Olufowobi, Ibidun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-58004309', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS946', 'Dr. Tunde, Giwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28362027', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS947', 'Akoni, Tutu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33014480', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS948', 'Fowler, Wale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-89837313', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS949', 'Okedele, Olanike', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55614805', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS950', 'Eresanara, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33055022', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS951', 'Tahir, Ibrahim', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23036647', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS952', 'Pastor Ayo, Samuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33060073', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS953', 'Adedimila, Yinka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39754037', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS954', 'Ogunlolu, Tinuke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-85833641', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS955', 'Ogunkanmi, Moses', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32375548', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS956', 'Jones, Yomi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33208855', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS957', 'Hycent, Onah', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39121501', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS958', 'Sorinolu, Joshua', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52834776', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS959', 'Olukoye, Oni', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29612261', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS960', 'Oyetunji, Temitayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23218894', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS961', 'Akande, Sumbo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23225376', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS962', 'Ogbunezu, Iyke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33197737', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS963', 'Akinkoye, Mojoyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08134888887', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS964', 'Babayomi, Abey', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-69635594', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS965', 'Folarin, Philip', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-66792408', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS966', 'Modile, A. O', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36676912', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS967', 'Badmus, Olalekan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35473272', 'you@yourdomain.com');
INSERT INTO `customer` (`branch`, `regdate`, `regno`, `surname`, `firstname`, `custtype`, `address`, `state`, `country`, `day`, `month`, `gender`, `phoneno`, `email`) VALUES
('HEADOFFICE', '2014-01-06', 'LS968', 'Oyedele, Leke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-29560027', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS969', 'Sobowale, Adeola (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23021814', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS970', 'Obi, Nkechinyelu (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23053817', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS971', 'Eneduanya, Dickson', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS972', 'Damola, Taiwo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-65522687', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS973', 'Amadi, Nnamdi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33054178', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS974', 'Obiaga, Innocent', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56706715', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS975', 'Ajodo, Matthias', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-66774853', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS976', 'Adekola, Florence', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23108889', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS977', 'Awe, Yomi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-59731543', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS978', 'Odiachi, David', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23189843', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS979', 'Mummy, Alimi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23029704', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS980', 'Jegede, Olumide', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28512941', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS981', 'Omonaiye, Bola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29191358', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS982', 'Kavodel, Uthman (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37159313', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS983', 'Ajala, Temitayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32125065', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS984', 'Johnson, Odunayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37003478', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS985', 'Olusola, Feyisetan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22903991', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS986', 'Akanji, Opeyemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23034627', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS987', 'Bankole, Toyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23149331', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS988', 'Ihedigbo, Victor', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-62776267', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS989', 'Chief, Odogwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-63257388', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS990', 'Ojemakele, Jella', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23079500', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS991', 'Olaleye, Janet', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-26434894', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS992', 'Mareta, Samuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-23245530', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS993', 'Obande, Edwin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34959428', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS994', 'Immanuel, Muna', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28594391', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS995', 'Rev., Martins (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55155734', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS996', 'Lawal, Bashiru', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32443335', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS997', 'Onafowokan, Foluke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33728039', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS998', 'Olugbodi, Kehinde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-65639380', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS999', 'Chibuzo, Ezima', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35806800', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1000', 'Mr, Michael', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-4769595', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1001', 'Olalekan, Lekan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23544195', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1002', 'Mudi, Yusuf', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-57431533', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1003', 'Adeyelu, Daniel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-28381945', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1004', 'Adedoyin, Odutayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34798949', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1005', 'Agrnor, Mbafan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35919686', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1006', 'Emiowe, Ose', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33532535', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1007', 'Odumusi, Lere', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34099649', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1008', 'Akinmade, Lanre', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33804619', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1009', 'Oyeniran, Toyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-83134450', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1010', 'Nwoko, Ada', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-65806267', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1011', 'Olugbodi, Taiwo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-59152081', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1012', 'Ngwu, Tony', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-66186568', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1013', 'Ejekukor, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33007578', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1014', 'Oseni, Bayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23072646', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1015', 'Akintan, Deji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24645611', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1016', 'Ameh, Austin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-89890090', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1017', 'Ayoko, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33746424', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1018', 'Odutayo, Yinka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33558718', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1019', 'Falarunu, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08034880967', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1020', 'Osho, Oloruntola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-98371265', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1021', 'Chinekezi, Ikechi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-77122211', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1022', 'Akinbiyi, Adeyemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33011230', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1023', 'Abu, Augusta', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33491115', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1024', 'Egwuonu, Uche', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33613634', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1025', 'Ini, ', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33602313', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1026', 'Akingbade, Olatunji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23121111', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1027', 'Leo, Sunday', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-31149174', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1028', 'Mr, Dahunsi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-63228281', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1029', 'Sobule, Segun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-95480361', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1030', 'Kpaduwa, Joy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34087696', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1031', 'Bamiduro, Femi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23104426', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1032', 'Afolabi, Martins', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23163786', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1033', 'Aboso, Francis', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34090911', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1034', 'Bayewu, Oluwatosin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24277084', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1035', 'Fowewe, Tunji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23092877', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1036', 'Ijomah, Georgeline', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22557825', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1037', 'Adebayo, Deyo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23419694', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1038', 'Obukeowho, Bright', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22224521', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1039', 'Aju, Gbenro', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38255397', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1040', 'Rev., Kenneth', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34414372', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1041', 'Adegbesan, Olusola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-87259314', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1042', 'Siewe, Toyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23109485', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1043', 'Adewunmi, A. O. (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55147170', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1044', 'Soyingbe, Nike', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '01-8124938', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1045', 'David, Patience', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25415500', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1046', 'Ajulo, Olu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-83212114', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1047', 'Taiwo, Ronke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23453244', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1048', 'Hakeem, Onafowokan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28707641', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1049', 'Osundokun, Akinyemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-97094997', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1050', 'Oluranti, Farinloye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33912148', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1051', 'Adenuga, Lanre', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23220402', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1052', 'Akiyode, Funmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33036868', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1053', 'Abuachi, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33068146', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1054', 'Amazu, Yaweh Drycleaners', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23540400', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1055', 'Solanke, Tolu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-38693492', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1056', 'Akanbi, Eyitayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37036546', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1057', 'Pastor, Kingsley', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33842900', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1058', 'Atujor, Godwin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24240337', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1059', 'Ojelabi, Kunle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-69644040', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1060', 'Gen., Falola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33034565', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1061', 'Ladipo, Kolade', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23880400', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1062', 'Alonge, Peter', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-50531357', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1063', 'Adims, Onyeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53825992', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1064', 'Adedoyin, Seun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56569492', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1065', 'Tobi, Daniel (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-28020876', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1066', 'Aunt, Kemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52049842', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1067', 'Ray, Clemence', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23130550', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1068', 'Ajibola, Dare', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27610767', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1069', 'Abah, Anthony', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-61154890', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1070', 'Augustine, Kadiri', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52008168', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1071', 'Opara, Daniel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33033191', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1072', 'Pastor, Daramola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23137141', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1073', 'Mofunay, Okaka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-84846000', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1074', 'Egbuniwe, Amaka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36977200', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1075', 'Dr., Bakare', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37219799', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1076', 'Oteju, Bayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-63780604', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1077', 'Biodun, Ajayi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29990057', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1078', 'Christopher, Omijie', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23119445', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1079', 'Adinweruka, Tony (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35247683', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1080', 'Pastor Segun, Omotosho', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23122664', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1081', 'Isuma, Chidera', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-58498937', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1082', 'Primus, Enebechi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33071810', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1083', 'Enikanologbon, Olaotan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38159214', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1084', 'Oduwaiye, Taiye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-57454875', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1085', 'Ogunyomi, Femi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-66667177', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1086', 'Olewezi, Aloy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23187038', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1087', 'Titilayo, Ajayi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35660958', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1088', 'Dada, Olugbenga', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08023037251', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1089', 'Ebom, Ann (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-66069984', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1090', 'Chijioke, Anayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-35670786', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1091', 'Iwebor, Reginald', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-84296968', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1092', 'Umeh, Cj', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33245663', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1093', 'Fouad, Dele', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39665523', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1094', 'Kuku, Jamiu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23005710', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1095', 'Mrs Sandra, Ituen', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39771662', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1096', 'Nwaneri, Tony', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33735700', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1097', 'Olowogbemi, John', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23134668', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1098', 'Adelaja, Adekunle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33841550', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1099', 'Adeleye, Joseph', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24620036', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1100', 'Anene, Chidi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-88743483', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1101', 'Mrs, Odusote', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23269482', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1102', 'Akinjemiriye, Omolara', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08030781074', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1103', 'Akindele, Adenike', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34714627', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1104', 'Pastor, Enoch', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33075317', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1105', 'Mohammed, Nuhu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35650485', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1106', 'Osho, Tolu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29400297', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1107', 'Chief, Uzoebo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33771452', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1108', 'Engr., Femi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '01-7633680', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1109', 'Bello, Ajibola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-59809067', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1110', 'Louisa, Kachikwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-51793294', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1111', 'Adamson, Olayinka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28668877', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1112', 'Aiyedun, Adedoyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23030742', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1113', 'Donald, Amaechi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1114', 'Nso, Sam, Ibezim', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-86989750', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1115', 'Kenny, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-26883153', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1116', 'Dele, Ab', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33025900', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1117', 'Paul, Winners', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-72150018', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1118', 'Yejide, Arole', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1119', 'Ifeanyi, Egwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-55956626', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1120', 'Ajibade, Rufus', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55170214', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1121', 'Morgan, Ugwuegbulam', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33343240', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1122', 'Barrister, Chuks', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37266193', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1123', 'Adetola, Adebanjo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-54163640', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1124', 'Ayanbadejo, Bunmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28392910', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1125', 'Williams, King', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33075477', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1126', 'Dr, Longe Jemilade', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33086660', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1127', 'Akinsete, Laolu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-42130856', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1128', 'Martins, Seun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-50596027', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1129', 'Ozoemena, Umeh', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1130', 'Izuchukwu, Modestus', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-61168853', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1131', 'Udechukwu, Jude', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28301532', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1132', 'Oyinze, Ikechukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33148378', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1133', 'Olabode, Kehinde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29748006', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1134', 'Bakare, T V', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08037219799', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1135', 'Adewoye, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32311166', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1136', 'Dr., Owolabi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28594940', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1137', 'Akerele, Oseni', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23018843', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1138', 'Aiseubeogun, George', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33343136', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1139', 'Ologbese, Yomi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-33154021', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1140', 'Umole, Tony', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33095553', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1141', 'Adisa, Adelodun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24516533', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1142', 'Dayo, John', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24793843', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1143', 'Ottun, Oluwaseyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-57933829', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1144', 'Cletus, Tayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-37708674', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1145', 'Otegbade, Olawole', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23567906', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1146', 'Uke, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-65244269', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1147', 'Onagoruwa, Tokunbo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-81172198', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1148', 'Tony, Ogbebor', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-74007753', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1149', 'Olumuyiwa, Yusuf', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23042356', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1150', 'Musa, Sarah', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-51497227', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1151', 'Mekuleyi, Akin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33073779', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1152', 'Owoduni, Lanre', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23141321', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1153', 'Okeke, Ikechukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-54649104', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1154', 'Omolehinwa, Gbenga', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23534447', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1155', 'Akingboju, Adewale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38640565', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1156', 'Mrs, Egwaikhide', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33606789', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1157', 'Egbadon, Michael', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55123006', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1158', 'Okorie, Joy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34023951', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1159', 'Jolaosho, ', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25948338', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1160', 'Olukoya, Olufemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23013911', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1161', 'Ezekwueche, Chuka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34050961', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1162', 'Obasa, Ola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35764709', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1163', 'Fowler, Tunde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33030865', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1164', 'Salawu, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33510965', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1165', 'Alhaji, Agbabiaka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37221450', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1166', 'Konze, Ken', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-74414818', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1167', 'Ekwebo, Wilson (pst.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23553143', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1168', 'Aderoju, J.a', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24629476', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1169', 'Akin, Akinwole', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-65494525', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1170', 'Opara, Chimezie', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56133784', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1171', 'Oladapo, Kayode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25850036', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1172', 'Giwa, Adedamola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34825742', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1173', 'Oshodi, Lekan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23413132', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1174', 'Okonkwo, Obai', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33154339', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1175', 'Kikelomo, Awosika', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33069215', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1176', 'Lasisi, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33503440', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1177', 'Adeniyi, Temi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36697874', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1178', 'Felix, Dirisu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27017469', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1179', 'Dunni, Ogunmusire', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-3062296', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1180', 'Izundu, Charles', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34507155', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1181', 'Adekoya, Biodun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-57557134', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1182', 'Mr & Mrs, Jimoh', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23022023', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1183', 'Olanrewaju, Thomas', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-84224423', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1184', 'Utomi, Ben', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-32786960', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1185', 'Russell, Osi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22224416', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1186', 'Adefala, Femi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33657669', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1187', 'Onuorah, Chinwe (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23044219', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1188', 'Egbuna, Cyprian', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33211693', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1189', 'Odidika, Emeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33597565', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1190', 'Anjorin, Moses', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-87935925', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1191', 'Fagbuji, Jide', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27750855', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1192', 'Omotayo, Kehinde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23465838', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1193', 'Okechukwu, Oke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37118679', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1194', 'Okoye, Ben', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28777040', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1195', 'Ahunanya, Boniface', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29404750', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1196', 'Arogundade, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-85103154', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1197', 'Ayeni, Louis', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23303421', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1198', 'Mr & Mrs, Akpan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23500301', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1199', 'Akinyemi, Bunmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34548415', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1200', 'Ojujoh, Bob', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34746540', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1201', 'Fayemi, Hannah', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-31558044', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1202', 'Adeyemo, Timi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35061190', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1203', 'Oladipo, Omorodion', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-42290075', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1204', 'Odunowo, Kemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35761296', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1205', 'Omorinsola, Gambo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-87518445', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1206', 'Toyin, Oyedola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23148341', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1207', 'Onajin, Seyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33071904', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1208', 'Onayinka, Pastor Segun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27387999', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1209', 'Ademola, Alawuye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55146918', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1210', 'Oyesanya, Oladimeji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23174586', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1211', 'Uwaifo, Peter', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33320003', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1212', 'Prince, Ajose', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33008089', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1213', 'Fakeye, Tolulope', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29528278', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1214', 'Olaleye, Bosola (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33269278', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1215', 'Jegede, Samuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-76023129', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1216', 'Tayo, Adesanya', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27337946', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1217', 'Adekunle, Olowoyo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23225030', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1218', 'Dolapo, Taiwo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39672216', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1219', 'Ogunjumelo, Adewale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-89037219', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1220', 'Barrister, Aji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23312487', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1221', 'Chijioke, Richmond', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35022832', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1222', 'Udoka, Ken', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-26667222', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1223', 'Adekunle, Oluyemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-88224322', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1224', 'Ugochukwu, Ehihigbe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-65701713', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1225', 'Awala, Jolomi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-98292525', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1226', 'Olabokun, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-88666769', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1227', 'Agboluaje, Gbolahan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56021092', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1228', 'Ochogu, Nkiru', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37126068', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1229', 'Adedeji, Adewale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23240497', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1230', 'James, Onyekachi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-62885550', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1231', 'Adeeko, Oluyele', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-36506327', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1232', 'Olaleye, Tayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28339310', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1233', 'Omams, Charles', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-25361933', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1234', 'Oladipo, Kayode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-59183915', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1235', 'Ezenwanne, Chiemeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33246237', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1236', 'Jeff, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33011978', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1237', 'Osho, Funmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33060983', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1238', 'Okupa, Babatunde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33067031', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1239', 'Winston, Charles', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60035130', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1240', 'Onyeri, Uche (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33243042', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1241', 'Owadara, Deji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34089335', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1242', 'Bolarinwa, Halimat', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23265837', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1243', 'Okoronkwo, Samuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60362259', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1244', 'Antai, Uwe Ntama', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23134244', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1245', 'Tu, ', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1246', 'Olowokudejo, Tomiloba', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-94904483', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1247', 'Otuvie, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-64546405', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1248', 'Opara, Victor', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-37440468', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1249', 'Wale, Yellow', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27752046', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1250', 'Agbebiyi, Segun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33115429', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1251', 'Ujah, Steve', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56444128', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1252', 'Ogara, Geofery', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-67903094', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1253', 'Abiola, Adeyele', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33614468', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1254', 'Adejokun, Dapo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33079449', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1255', 'Ladenika, Abiola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-68990836', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1256', 'Chukwuka-eze, Ihunaya', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33690547', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1257', 'Irabor, Martins', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56747637', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1258', 'Pastor, Olaoluwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33441324', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1259', 'Uchenna, John', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-51935127', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1260', 'Durodola, Tosin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-59001986', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1261', 'Ige, Bukola (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33202216', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1262', 'Olorundare, Ademola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23189056', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1263', 'Pastor (mrs.), Ariyibi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33007594', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1264', 'Okungbowa, Nosa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33064803', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1265', 'Haffner, Biodun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23068188', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1266', 'Johnson, Emem', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23301568', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1267', 'Nworah, Austin (pastor)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27782555', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1268', 'Bakare, Dolapo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34233479', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1269', 'Omobo, Helen', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23460268', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1270', 'Soewu, Dewunmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-51583063', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1271', 'Ezebue, Ogechukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23143124', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1272', 'Mr, Olalekan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33617721', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1273', 'Adisa, Owolabi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-26554145', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1274', 'Innocent, Ameh', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23929788', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1275', 'Mba, Ifeanyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-20513998', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1276', 'Henry, Ejiekpe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37185464', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1277', 'Odunlami, Taiwo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25453079', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1278', 'John, Egboh', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-58050568', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1279', 'Oguzie, Jude', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33612869', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1280', 'Nwankpele, Chidi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35771800', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1281', 'Yemisi, David', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28994903', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1282', 'Justin, Babs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-54866609', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1283', 'Oyinlola, Dolapo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23695756', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1284', 'Ikhenebome, Aimieda', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33223074', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1285', 'Williams, Tosin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23171871', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1286', 'Mrs, Akinsete', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-83132788', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1287', 'Dapo, Owoeye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-68911170', 'you@yourdomain.com');
INSERT INTO `customer` (`branch`, `regdate`, `regno`, `surname`, `firstname`, `custtype`, `address`, `state`, `country`, `day`, `month`, `gender`, `phoneno`, `email`) VALUES
('HEADOFFICE', '2014-01-06', 'LS1288', 'Oguntolu, Ayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-82031462', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1289', 'Odulate, J. O', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23534606', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1290', 'Jacob, Jimoh', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-29141499', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1291', 'Akinola, Lekan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23348633', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1292', 'Nwachukwu, Nathan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33047925', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1293', 'Olawoye-robert, Shola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-25600012', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1294', 'Sagoe, Joe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27827902', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1295', 'Adiele, Joseph', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56038713', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1296', 'Akubueze, Okorie', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33022788', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1297', 'Johnson, Mayowa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-33208664', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1298', 'Ausnobs, Care', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56344650', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1299', 'Atuchukwu, Micheal', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39181707', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1300', 'George, Tosin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-62682558', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1301', 'Magdalene, Tom', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-69400973', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1302', 'Dele, Fuad', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08039665523', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1303', 'Henry, Igho', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27571995', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1304', 'Anukwu, Blaise', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-66613592', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1305', 'Okun, Michael', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-66557956', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1306', 'Rev Mrs, Ige', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-62166549', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1307', 'Adeola, Akerele', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23203025', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1308', 'Bayewu, Bolawole', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-39379860', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1309', 'Ikpeme, Peter', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23133373', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1310', 'Mrs, Ubili', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36868111', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1311', 'Osineye, Sesan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23258448', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1312', 'Unknown, ', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1313', 'Okpalla, Elaine', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '01-8954819', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1314', 'Asekomeh, Ayodele', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28734496', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1315', 'Okesola, Olayinka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34480892', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1316', 'Paschal, Okwundu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-25029027', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1317', 'Okeke, Emeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-30214899', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1318', 'Titi, Oyedele', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35128707', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1319', 'Diamond, Wilson', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-63893529', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1320', 'Adeniba, Ayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27925137', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1321', 'Fatoki, Tayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22503418', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1322', 'George, Obi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33005595', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1323', 'Odunibosi, Olufemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33331852', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1324', 'Okpara, Kingsley', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33289146', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1325', 'Adisa, Kolawole', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60552243', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1326', 'Ike, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33355932', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1327', 'Abolade, Temitayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39781814', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1328', 'Iguma, Charles', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33260233', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1329', 'Mrs, Ajayi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23093290', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1330', 'Ajetumobi, Temitayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27248858', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1331', 'Agbajor, Oluwadamiola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-31063805', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1332', 'Soewu, Dipo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-51583063', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1333', 'Koko, Steven', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33055893', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1334', 'Martin, Chukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-26470438', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1335', 'Oladapo, Moses', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29914443', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1336', 'Pachorace, Ekpo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23941539', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1337', 'Collins, Ogbeifun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37002139', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1338', 'Unachukwu, Emeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23236481', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1339', 'Ajulo, David', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34881776', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1340', 'Ademakinwa, Oyinlade', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35356060', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1341', 'Okafor, Gideon', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '70-30055100', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1342', 'Fakeye, Abiodun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-59389542', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1343', 'Dare, Dare', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1344', 'Akerele, Eso', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23764448', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1345', 'Nnorom, Jude', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-55771214', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1346', 'Akpan, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23500301', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1347', 'Adebanjo, Tolu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-54163640', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1348', 'Chibuike, Brendan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-36706670', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1349', 'Akpotive, Notey', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24749929', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1350', 'Edigin, Ben', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23168452', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1351', 'Adeniran, Kunle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23285948', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1352', 'Mrs, Chika', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34362010', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1353', 'Olotu, Oluwasegun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-69748486', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1354', 'Dr., Ologbenla', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23135433', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1355', 'Isaac, Ariekemase', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37158276', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1356', 'Adhekpukoli, Kome', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34644867', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1357', 'Mrs, Yemisi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22228240', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1358', 'Olalekan, Olatawura', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23418802', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1359', 'Seyi, Odupitan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-98119632', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1360', 'Joselle, Enwere', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22924242', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1361', 'Oloyede, Semiu Adedoyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34718725', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1362', 'Miss, Christy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-25434548', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1363', 'Ayasi, Peter', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27209796', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1364', 'Adegbulugbe, Deola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-62230671', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1365', 'Dr (mrs.), Ipaye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33077442', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1366', 'Olunaike, Kunle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23189670', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1367', 'Osho, Jimi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22359787', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1368', 'Oraelosi, Okechukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33038464', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1369', 'Akinseye, Seun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-20659380', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1370', 'Mummy, Smith', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33463671', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1371', 'Omoike, Benedict', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-87833103', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1372', 'Alabi, Johnson', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38493539', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1373', 'Titi, Fifo (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34881235', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1374', 'Dahunsi, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27316469', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1375', 'Uju, ', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27417885', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1376', 'Esan, Olakunke Ayodeji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-57047862', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1377', 'Mrs, Preye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37132429', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1378', 'Abass, Abass', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-37622383', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1379', 'Fasasi, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55170355', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1380', 'Okerekeocha, Uche', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-57397464', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1381', 'Iwuogo, Kennedy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34107281', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1382', 'Mrs Yetunde, Dawodu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-82301456', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1383', 'Alalade, Olayinka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24497337', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1384', 'Avungbeto, Idowu (mr.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23722911', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1385', 'Kristiansen, Shalewa (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-63202653', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1386', 'Hassan, George', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23308124', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1387', 'Wunmi, Olufeko', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29018185', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1388', 'Abiola, Onakomaya', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34389329', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1389', 'Emeka, Odidika', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-07284462', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1390', 'Akpunonu, Vincent', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33872022', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1391', 'Eze, Tracy (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35367410', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1392', 'Wale, Ogundare', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23367112', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1393', 'Adebimpe, Adejo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25266376', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1394', 'Adegbola, Nike', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33233761', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1395', 'Dare, Omotayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-83641954', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1396', 'Solomon, Osewa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28117476', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1397', 'Bright, Nzerem', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34717858', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1398', 'Mr, Bello', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52170966', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1399', 'Godwin, Osagbemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23940802', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1400', 'Dr M.a, Ayoade', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-58435348', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1401', 'Joy, Edoimioya', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33183784', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1402', 'Luke, Jahswill', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55570751', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1403', 'Morayo, Jimoh', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55000233', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1404', 'Olabode, Samuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37160429', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1405', 'Olufemi, Ogunsanwo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-58051168', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1406', 'Gbenga, Omolokun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1407', 'Gbenga, Omolokun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39605014', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1408', 'Obateru, Olusegun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-20306233', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1409', 'Houssouvi, Faith', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-36615565', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1410', 'Mrs., Obafemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1411', 'Chief, Adeniyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23151331', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1412', 'Ola, Wasiu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23059982', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1413', 'Adejuwon, Adeshina', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25820233', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1414', 'Titi, Obadimu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23229200', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1415', 'Ezeobi, Sunday', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33436218', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1416', 'Adenuga, Ronke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-73100528', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1417', 'Aina, Martins', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27647787', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1418', 'Ahisu, Paul', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-69592222', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1419', 'Agboro, Oteri', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-58252295', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1420', 'Adeboye, Adetayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22947308', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1421', 'Dosumu, Michael', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-66316546', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1422', 'Akihigbe, Margret', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27330138', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1423', 'Oladokun, Olajuyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-23175962', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1424', 'Iwuoha, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33008759', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1425', 'Mrs, Coker', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '01-8182470', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1426', 'Olagoke, Niyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-27542399', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1427', 'Okolie, Ebere', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-60455763', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1428', 'Gen. Femi, Williams', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37875848', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1429', 'Mrs, Helen', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34881229', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1430', 'Donald, Akwara', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23389100', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1431', 'Nwosu, Uche', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33418639', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1432', 'Okoro, John', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55570730', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1433', 'Tunde, Yusuf', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-90950428', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1434', 'Edeh, Ebere', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37202335', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1435', 'Ogundipe, Gbolahan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33075300', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1436', 'Oreoluwa, Niran', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23159588', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1437', 'Fadeyibi, Yewande', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23706573', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1438', 'Mrs, Alakija', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33013537', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1439', 'Odesanya, Lekan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-90503920', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1440', 'Dr., Missa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28319138', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1441', 'Elawure, Grace (mrs.)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28635856', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1442', 'Major, Gen. Idehen', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23457133', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1443', 'Barrister, Zion', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-65526701', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1444', 'Lamikanra, Kolawole', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27207086', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1445', 'Atuenyi, Emeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-65521885', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1446', 'Linus, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1447', 'Ude, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-62493735', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1448', 'Oghene, Augustine', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-54499421', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1449', 'Magbagbeola, Gbenga', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33193522', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1450', 'Gbenle, Tolu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-35234855', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1451', 'Keni, John', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-63364662', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1452', 'Funsho, Sanyaolu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27797481', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1453', 'Daniel, Oluwaseun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-67550950', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1454', 'Sulaiman, Funsho', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27117960', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1455', 'Olisa, Onyekachi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34444248', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1456', 'Ajigboye, Bolanle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-42261029', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1457', 'Odogwu(mrs), Uyoyo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53284433', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1458', 'Osidele, Babade', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-57114847', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1459', 'Ogbuke, Mathew', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33221905', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1460', 'Omotunde, Timmy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-36599964', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1461', 'Bukola, Johnson', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33522362', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1462', 'Ottan, Shuaib', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33222146', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1463', 'Dry Cleaner, Seyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29973105', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1464', 'Mrs, Adewale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1465', 'Pastor Omotayo, Daniel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33430910', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1466', 'Adeusi, Stella', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33118121', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1467', 'Gbadamosi, Michael', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23051663', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1468', 'Eze, Charles', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22764826', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1469', 'Akpabot, Patricia', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-83737028', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1470', 'Okerekeocha, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-57397464', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1471', 'Okerekeocha, Obi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-61131925', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1472', 'Egbule, Peter', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-62717777', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1473', 'Opehi, Emiowele', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-33507556', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1474', 'Ndudi, Hezekiah', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33018857', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1475', 'Mary, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60116815', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1476', 'Balogun, Tope', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29070655', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1477', 'Denjonwo, Wale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-81541080', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1478', 'Shade, Johnson', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-65708272', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1479', 'Olamilekan, Esan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-64010839', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1480', 'Arowolo, Ibukun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-64171865', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1481', 'Isreal, Chinwe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23107999', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1482', 'Nama, Nash', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-38113148', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1483', 'Luke, Jahswill', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-73355510', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1484', 'Bakare, Sakeenat', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33483501', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1485', 'Bello, Oluwatoyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-66546523', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1486', 'Shonekan, Babatunde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-91816319', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1487', 'Okorie, Ikechukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53565453', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1488', 'Osigwe, Kenedy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56500998', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1489', 'Emmanuel, Femi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-65884127', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1490', 'Olagbemi, Fola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37544754', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1491', 'Controller, Nuhu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33210999', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1492', 'Mr Jude, Rovan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-69003741', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1493', 'Agu, Emeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33188885', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1494', 'Jolaosho, ', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25948338', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1495', 'Kuburat, A.k', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27701186', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1496', 'Gen, Adeshola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-20581622', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1497', 'Toyobo, Gbekele Oluwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-79396355', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1498', 'Semako, Micheal', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23916748', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1499', 'Kemi, Oruma', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-30224900', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1500', 'Akinlonu, Bisi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34067612', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1501', 'Folarin, Laurence', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-70226476', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1502', 'Olarinde, Olawale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28478278', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1503', 'Mr Lanre, Obe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-85071829', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1504', 'Francis, Timothy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55316504', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1505', 'Babalola, Bunmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53253617', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1506', 'Abdul, Akolade', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08025270284', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1507', 'Ashiru, Olaseni', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-34170570', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1508', 'Ighodalo, Bridget', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28762844', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1509', 'Salako, Bukola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55058303', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1510', 'Adeniji, Dewunmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-04559870', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1511', 'Idehen, Sunday', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33079191', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1512', 'Ojugbeli, Chuks', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37580482', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1513', 'Zokus, Bruno', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27184722', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1514', 'Inioluwa, Shobowale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23021814', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1515', 'Adepoju, Oluwaseyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-92832341', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1516', 'Emeje, Ufy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-66061037', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1517', 'Aremu, Adeyanju', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33012659', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1518', 'Adetayo, Ola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-20301222', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1519', 'Chris, Okereke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-68425469', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1520', 'John, Udoh', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-83901258', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1521', 'Ejiro, Akproroh', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-30849416', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1522', 'Chimezie, Okoye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22220786', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1523', 'John, Salubi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33700033', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1524', 'Ifeanyi, Ashi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-65103634', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1525', 'Buttons, Tosin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-86984918', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1526', 'Ufot, Unyime', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34887338', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1527', 'Thomas, Gbenga', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23105210', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1528', 'Oyekunle, Ayodeji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23131692', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1529', 'Ohia, Joseph', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38265569', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1530', 'Emeh, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37120640', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1531', 'Robert, Tolu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-34945207', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1532', 'Fakande, Ajike', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56965188', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1533', 'Olanrewaju, Dimeji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23050654', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1534', 'Nwofia, Stella', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-63810424', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1535', 'Dosu, Deji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-96883310', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1536', 'Akintobi, Ibukunoluwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27614330', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1537', 'Longe, Jemilade', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33086660', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1538', 'Caroline, Ukwade', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08023255078', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1539', 'Ojo, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23682283', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1540', 'Johnson, John', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-84184582', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1541', 'Offiong, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33732043', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1542', 'Mrs, Joseph', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-72044433', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1543', 'Ogbonnaya, Chima', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23020429', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1544', 'Akolo, Tobi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23681456', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1545', 'Ojuri, Bolaji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23179980', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1546', 'Ariyo, Mamukuyo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-66066287', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1547', 'Kaiyewu, J. A.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23333600', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1548', 'Eyo, Daniel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25923602', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1549', 'Situ, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23216144', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1550', 'Olaosebikan, Kola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23061175', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1551', 'Oyegbade, Aderayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23270433', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1552', 'Joseph, Shina', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-77329273', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1553', 'Akerele, Anthony', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-73296052', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1554', 'Idowu, Onitiri', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23647162', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1555', 'Dangana, L.s', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33245433', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1556', 'Peter, Tor', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-32769299', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1557', 'Nduka, Aliogo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-38876099', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1558', 'Uba, Obinna', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35338046', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1559', 'Lemboye, Taju', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-58401459', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1560', 'Ganiyu, Busoye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22245439', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1561', 'Mrs., Ogunleye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33887347', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1562', 'Banjo, Ronke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-64174601', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1563', 'Okedele, Sumbo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23514529', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1564', 'Adeyemi, Akin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23662675', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1565', 'Ojiako, Kenneth', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39127704', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1566', 'Yaweh, Drycleaners', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23540400', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1567', 'Chinelu, Miss', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-83675414', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1568', 'Okwuosa, Baron', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55660390', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1569', 'Uboma, Elonna', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34901010', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1570', 'Mercy .o., Adaghe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39248035', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1571', 'Abdulahi, Yusuf', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28845471', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1572', 'Hannah, Miss', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23647481', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1573', 'Zibs, Nidra', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-63550986', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1574', 'Aaron, Kadiri', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23423387', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1575', 'Amos, Israel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-72044433', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1576', 'Adeniran, Adeyinka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33122144', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1577', 'Awomosu, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-30918460', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1578', 'Oladapo, Seun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-83296756', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1579', 'Ikponmwosa, Eyimife', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35824028', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1580', 'Igboekweze, Bolanle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33416359', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1581', 'Oyediran, Akeem', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08023193991', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1582', 'Okeagu, Nkiruka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23169619', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1583', 'Johnson, Jumoke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23229954', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1584', 'Okekanye, Olusegun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29481297', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1585', 'Taiwo, Femi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23909799', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1586', 'Babatunde, Adeyemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24055732', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1587', 'Prince, Ebuka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08137303613', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1588', 'Ogunjimi, Seyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-80111655', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1589', 'Folusho, Akinyemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35170321', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1590', 'Onyejekwe, Arinze', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-61242444', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1591', 'Omidiji, Mrs.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-76866475', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1592', 'Oligbo, Samuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23348175', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1593', 'Oligbo, Uba', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25017757', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1594', 'Jolomi, Esisi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22221772', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1595', 'Ide, Mr.', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-41825660', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1596', 'Bayo, Oteju', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23103985', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1597', 'Olaniran, Akin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23416433', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1598', 'Dawodu, Yetunde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-82301456', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1599', 'Elvis, Asoro', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-95212529', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1600', 'Seun, Adedoyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-28282772', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1601', 'Oladimeji, Adisa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23028157', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1602', 'Yemi, Salami', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-84081740', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1603', 'Kofi, Awuah', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08067432735', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1604', 'Prosper, Femi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-36583710', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1605', 'Tumise, Yetunde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32809608', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1606', 'Wilson, Dafe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-90888043', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1607', 'Chizzy, Oluka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-37383502', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1608', 'Dare, Yagboyaju', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-88676536', 'you@yourdomain.com');
INSERT INTO `customer` (`branch`, `regdate`, `regno`, `surname`, `firstname`, `custtype`, `address`, `state`, `country`, `day`, `month`, `gender`, `phoneno`, `email`) VALUES
('HEADOFFICE', '2014-01-06', 'LS1609', 'Sonde, Olumide', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33306561', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1610', 'Godwin, Ndidi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08024919587', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1611', 'Funmi, Adeyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-86324617', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1612', 'Kayode, Onayemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29341593', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1613', 'Keneth, Eyanohonre', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33520725', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1614', 'Mrs, Williams', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1615', 'Okedele, Dapo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1616', 'Zion, Odiru', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1617', 'Akinyele, Tosin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1618', 'Anaba, Moses', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23119756', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1619', 'Babayomi, Leke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-83112299', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1620', 'Boafo, Joseph', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-82282228', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1621', 'Mary, Uche', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37181273', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1622', 'Azodo, Nonso', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52282746', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1623', 'Ojigho, Ojays', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-71750637', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1624', 'Sadiq, Oladapo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56755523', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1625', 'Balogun, Abimbola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1626', 'Mr, Bayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23178210', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1627', 'Bisola, Aminat', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33129099', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1628', 'Ashinze, Paul', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-82714490', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1629', 'Nnadozie, Nnamdi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37746355', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1630', 'Mrs, Odili', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52266240', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1631', 'Sanni, Abdul', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1632', 'Odu, Grace', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33082380', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1633', 'Musa, Bala', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38179479', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1634', 'Onaja, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-63133572', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1635', 'Ekara, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27566566', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1636', 'Chukwuma, Dorothy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35482308', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1637', 'Ogar, Felicia', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32139165', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1638', 'Mapaderun, Adedolapo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24922965', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1639', 'Atanda, Tosin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-63615788', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1640', 'Bobby, Akinyemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37123082', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1641', 'Dorothy, Chukwuma', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35482308', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1642', 'Ademoyega, Tiwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33127287', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1643', 'Anichebe, Anthony', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '0802792284', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1644', 'Olusan, Peter', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55099774', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1645', 'Faleye, Bankole', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-39792812', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1646', 'Pst Supo, Oluwasakin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08023035013', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1647', 'Bayo, Shotanmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08024322566', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1648', 'Arit, Adadevoh', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08023111711', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1649', 'Olatunji, Arikimase', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37158276', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1650', 'Odusote, Abimbola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23020291', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1651', 'Salau, Bolanle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08073166993', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1652', 'Mrs Ronke, Gabriel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23215525', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1653', 'Okonji, Patrick', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23468254', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1654', 'Seyi, Teacher', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1655', 'Ogunshakin, Gbenga', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-31116154', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1656', 'Adejugbe, Micheal', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-54152140', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1657', 'Adelanwa, Femi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-26647491', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1658', 'Adesola, Akin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-66892442', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1659', 'Odiyi(mrs), Oluseye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22224251', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1660', 'Adebiyi, Abiola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29936129', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1661', 'Animashaun, Adewale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34709940', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1662', 'Col, Muhamed', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-61615260', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1663', 'Victor, Henry', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-82135776', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1664', 'Joy, Amayi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23199177', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1665', 'Aluma, Ayedun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23519324', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1666', 'Adekunle, Kayode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-32210608', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1667', 'Chikwendu, Stanley', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-96639561', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1668', 'Obidairo, Bunmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23997565', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1669', 'Dr, J.n Siewe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33080379', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1670', 'Martins, Omo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-36243636', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1671', 'Momoh, Ay', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23179988', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1672', 'Bokini, Patient', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-3639771', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1673', 'Awosanmi, Bode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-37782762', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1674', 'Mr, Robert', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36673508', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1675', 'Mr, Anthony', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27922840', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1676', 'Akpi, Thomas', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23047844', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1677', 'Rasak, Ogbara', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-20306588', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1678', 'Tola (dr), Sunday', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23029001', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1679', 'Adeosun, Kemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-98596929', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1680', 'Malaolu, Adeola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28023132', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1681', 'Olubena, Mark', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33832484', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1682', 'Temilade, Alamu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-73623519', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1683', 'Dr., Madueke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-55680015', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1684', 'Umoye, Lizzy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-84224425', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1685', 'Oyewole, Toyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08024817494', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1686', '(pastor)olowogbemi, John', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23134668', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1687', 'Mrs, Ibiwoye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23515579', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1688', 'Ugwu, Virginus', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34060678', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1689', 'Dayo, Fadayomi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35251055', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1690', 'Mrs, Omotosho', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33525001', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1691', 'Akpan, Oto', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-21220099', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1692', 'Yemisi, Okunrounmu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34737155', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1693', 'Mr, Godwill', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-67637817', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1694', 'Ariyibi, Bisi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23767895', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1695', 'Yusuf, Mutiu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35154974', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1696', 'Mr, Iyke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-67634846', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1697', 'Akinrera, Akin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23138968', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1698', 'Oyewole, Dare', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60405472', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1699', 'Ademoye, Kunle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23101718', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1700', 'Mr, Okitikpi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-55916744', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1701', 'Ife, Miss', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22905797', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1702', 'Tola, Adebanjo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-54163640', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1703', 'Adeyemo, Tolu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08037132063', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1704', 'Victoria, Inko-tariah', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-33322644', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1705', 'Taiwo, Niyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55578561', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1706', 'Fadahunsi, Raymon', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-20264830', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1707', 'Faseyiku, Nelson', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-59705327', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1708', 'Kasali, Tope', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-66310780', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1709', 'Ayeni, Olakunmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37009973', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1710', 'Asekome, Fatima', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32110977', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1711', 'Bolanle, Bankole', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-38594671', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1712', 'Reuben, Rev', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-62379304', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1713', 'Uche, Joseph', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32735507', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1714', 'Beata, Anoreo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-83724788', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1715', 'Dr, Orenuga', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23208769', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1716', 'Mr, Kudus', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25032475', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1717', 'Abolade, Olaiwola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32011168', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1718', 'Erinle, Mathew', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53086778', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1719', 'Bankole, Segun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-77764484', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1720', 'Obisesan, Folami', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-58142080', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1721', 'Omoh, Rachel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33507308', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1722', 'Akinyemi, Sola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55573831', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1723', 'Assagba, Friday', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-93783746', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1724', 'Ndu, Bernard', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23237065', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1725', 'Drycleaners, Wool Care', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-77480717', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1726', 'Apampa, Leye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34355663', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1727', 'Alh Yunusa, Mohammed', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33240676', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1728', 'Ojo, Philip', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34455367', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1729', 'Adeyomoye, Adekunle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23101718', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1730', 'Godewin, Neema', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-38298365', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1731', 'Obasa, Gbenga', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-36515885', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1732', 'Omideyi, Dapo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23066961', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1733', 'Fasina, Larry', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-66503868', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1734', 'Baruwa, Olasukanmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38509533', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1735', 'Olaitan, Owolabi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23495802', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1736', 'Adenugba, Toyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23405242', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1737', 'Ngoli, Tony', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23151064', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1738', 'Nansel, Atinuke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23418631', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1739', 'Igbeta, Titilayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23995275', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1740', 'Oke, Anjorin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23701325', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1741', 'Gift, Anene', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60496461', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1742', 'Joseph, Dosu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-58151258', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1743', 'Gbenga, Kuti', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-20990442', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1744', 'Drycleaner, Jolux', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-83664541', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1745', 'Adelanwa, Taiwo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-38681123', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1746', 'Kuti, Bola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23089236', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1747', 'Akinlade, Moji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36971587', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1748', 'Jamiu, Wale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-36410916', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1749', 'Ojo, Eniola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-74826930', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1750', 'Miss, Anna', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52509382', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1751', 'Akpan, Daniel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22222060', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1752', 'Balogun, Inec', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-26699121', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1753', 'Ajagun, Olorunwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-63398235', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1754', 'Jones, Bobby', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-35221733', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1755', 'Akpe, Austine', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-34137654', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1756', 'Mr, Micheal', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23294957', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1757', 'Lawson, John', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-20992484', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1758', 'Adewale, Toyo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23338767', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1759', 'Oduoye, Omolola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37445342', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1760', 'Awe, Ayoola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-80037963', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1761', 'Onoh, Mr', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1762', 'Mummy, Omo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-27466099', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1763', 'Ogunyemi, Tunde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-67519530', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1764', 'Uka, Chris', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-66553330', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1765', 'Solomon, Demola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28260017', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1766', 'Kpaduwa, Iyke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-67634846', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1767', 'Felicia, John', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32139165', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1768', 'Stainless, Fabric Care', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33851699', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1769', 'Igah, Kc', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-37871720', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1770', 'Akhimie, John', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33845045', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1771', 'A A, Adelaja', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '0805726914', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1772', 'Onoiyi, Mrs Irabor', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55573407', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1773', 'Tiene, Yemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-26625738', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1774', 'Iranloye, Folake', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24923850', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1775', 'Bello, Mr Ope', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-88300242', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1776', 'Oluwafisibe, Olajire', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-87732444', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1777', 'Pastor, Jagun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23094278', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1778', 'Ajibola, Sakeenat', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23053016', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1779', 'Oyesanya, Adekunle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28643842', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1780', 'Lagunju, Dapo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080830006', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1781', 'Esosa, Akioyk', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-87596571', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1782', 'Adedeji, Adekunle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-33666144', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1783', 'Olusoga, Jimmy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-82744834', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1784', 'Yinka, Owokade', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-80833684', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1785', 'Williams, Bankole', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34549552', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1786', 'Shonubi, Yemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23151137', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1787', 'Illo, Ibrahim', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1788', 'Chris, Chris', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34414635', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1789', 'Chimezie, Ajonumah', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34028989', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1790', 'Komolafe, Adeyemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23057246', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1791', 'Oludipe, Olatunde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23180231', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1792', 'Pastor, Popoola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34914638', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1793', 'Olajide, Chris', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35866383', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1794', 'Agwu, Joshua', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-35287624', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1795', 'Honda, Raymond', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-88740840', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1796', 'Fred, Yamala', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23269888', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1797', 'Jegede, Tope', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39213163', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1798', 'Obasemo, Toyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38639224', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1799', 'Bishi, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23706573', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1800', 'Ogunseitan, Toyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23297117', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1801', 'Utuama, Monday', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32752150', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1802', 'Oguike, Paul', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-37427533', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1803', 'Ojetola, Austin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-89743302', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1804', 'Sunday, Idowu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-57010430', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1805', 'Okunola, Olabanji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33087241', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1806', 'Okerekeocha, Chinedu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28289399', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1807', 'Becky, Ms', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-37776677', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1808', 'Abdulrazaq, Toyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35024462', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1809', 'Balance, Edet', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-62787003', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1810', 'Mr, Babashina', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-81222220', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1811', 'Mrs, Busari', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37133600', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1812', 'Mr, Linus', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-83009000', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1813', 'Mr Balogun, M.o', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33533724', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1814', 'Silva, Anita', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29085433', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1815', 'John, Ezomoh', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29032878', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1816', 'David, Apaflo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-84887912', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1817', 'Ayeni, Feyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-70385558', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1818', 'Oji, Chibuzo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-03191202', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1819', 'Fayokun, Tunji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32192046', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1820', 'Mr, Akinyemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-26812795', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1821', 'Nwaogbe, Uchenna', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1822', 'Abegunde, Busayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60106367', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1823', 'Christopher, Okobi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-21359167', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1824', 'Mr, Tunde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-84776037', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1825', 'Prince, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-65884127', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1826', 'Adeyi(rev), Ademola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-85103154', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1827', 'Athans, Icheen', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-34499206', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1828', 'Mr, Uzoma', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-85536223', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1829', 'Sadudeen, Ibrahim', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24688224', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1830', 'Omoh, Irabo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55573407', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1831', 'A(mr), Femi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-98033838', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1832', 'Jack, Joh', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23296151', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1833', 'Ayobami, Saliu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-66360121', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1834', 'Nwuka, Eric', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32426842', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1835', 'Mr, Olugbenga', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-72559901', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1836', 'Miss, Emem', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-68797128', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1837', 'Elisha, Ntia', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-64494212', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1838', 'Mr Babatunde, Jaji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23322421', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1839', 'Olayinka, Esan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-26889172', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1840', 'Omoigui, Soji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39600839', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1841', 'Mr Jones, Listowel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24322562', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1842', 'Mr, Jones', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1843', 'Lef, Kudi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1844', 'Mopelola, Ajayi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1845', 'Okoh, Mary', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-65506764', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1846', 'Akwe, Yves', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-26110689', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1847', 'Drycleaner, Ladi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-02863082', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1848', 'Oluwatoni, Akanle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-20083210', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1849', 'Dosu, Amos', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-57274733', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1850', 'Asuelime, Kikelomo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-58056321', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1851', 'Uzoebo, Nnwanne', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37190362', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1852', 'Iyadi, Tonia', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-38035942', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1853', 'Olayinka, Saheed', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-81972031', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1854', 'Tomi, Niyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-33023107', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1855', 'Mr, Olorunloju', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-81992712', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1856', 'Timileyin, Kolawole', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-29078801', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1857', 'Mrs, Idris', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23046484', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1858', 'Danielle, Toyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23297117', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1859', 'Krakue, Kayode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39601172', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1860', 'Abdullahi, Yusuf', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23626409', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1861', 'Umeh, Ugochukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23258561', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1862', 'Rotimi, Philips', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33017387', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1863', 'Atigal, Godwin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23376448', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1864', 'Mrs, Ibokete', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33070703', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1865', 'Tosin, Idowu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33444432', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1866', 'Banks, Kunle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35636048', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1867', 'Olu-otudeko, Godwin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37142804', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1868', 'Majekodunmi, Oluwatoba', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-26585363', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1869', 'Samuel, Rita', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-32830083', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1870', 'Aina, Wunmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22138365', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1871', 'Nwosa, Gilbert', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34881198', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1872', 'Adeyemi, Adewole', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-20676097', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1873', 'Okonkwo, Angela', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-26686968', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1874', 'Mayowa, Atanselu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22234929', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1875', 'Onyejekwe, Adaeze', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33253428', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1876', 'Dr, Alabi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-95816035', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1877', 'Mrs Esther, Adebayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-83790035', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1878', 'Apupazieh, Frances', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29787540', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1879', 'Adeyemo, Mayowa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28323356', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1880', 'Achi, Celestine', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37197175', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1881', 'Mrs, Joke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23138939', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1882', 'Bassey, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1883', 'Ajakaiye, Emma', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-33794841', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1884', 'Ita, Daniel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25923602', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1885', 'Ofodile, William', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-84593429', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1886', 'Oseromi, Jide', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-34486909', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1887', 'Godwin, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36160655', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1888', 'Funsho, Tunde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-25516851', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1889', 'Ogundeyi, Muyiwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-85473079', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1890', 'Ajibola, Adeniyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23127474', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1891', 'Mrs, Odunlami', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1892', 'Misse, Olamide', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23599908', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1893', 'James, Mbonu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-84845121', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1894', 'Alfred, Mr', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-24039047', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1895', 'Okoye, Godfray', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33070778', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1896', 'Silva, Ayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-72803730', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1897', 'Clark, Godwin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33524294', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1898', 'Ogunshola, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08186707007', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1899', 'John, Agbejoye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-33283013', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1900', 'Oge, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35698926', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1901', 'Okobo, Chioma', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-63617362', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1902', 'Olaogun, Bukky', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-82227759', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1903', 'Samson, Oko', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52700598', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1904', 'Biyi, Mrs Alice', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-62365481', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1905', 'Onwuachi, Veronica', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-98444815', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1906', 'Mbanafo, Kanu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-84050856', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1907', 'Abayomi, Hannah', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27723985', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1908', 'Okafor, Linda', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-63689743', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1909', 'Oyenuga, Wole', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34740713', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1910', 'Akinbode, Dotun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-66633619', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1911', 'Stephen, Aladelusi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08032821805', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1912', 'Nwokolo, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-35205636', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1913', 'Eki, Joy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56664814', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1914', 'Aguohus, Joshua', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-35287624', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1915', 'Ogbe, Monday', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60630729', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1916', 'Adeyemi, Nike', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-87163673', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1917', 'Martin, Folake', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22226742', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1918', 'Dr(mrs), Odumosu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23033676', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1919', 'Leke, Yomi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-83712299', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1920', 'Abikoye, Mr Anthony', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33042708', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1921', 'Ololade, Akinlagun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-06200202', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1922', 'Baruwa, Sunkanmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38509533', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1923', 'Mazi, Kingsley', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33220142', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1924', 'Udaya, Chukwuemeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25726006', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1925', 'Taiwo, Ibukun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27337411', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1926', 'Ogunlana, Damilare', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-36729360', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1927', 'Ezeilo, Austine', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08033076965', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1928', 'Fasan, Prof', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33339585', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1929', 'Shola, Akingbade', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37531497', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1930', 'Yaro, Ada', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-95478888', 'you@yourdomain.com');
INSERT INTO `customer` (`branch`, `regdate`, `regno`, `surname`, `firstname`, `custtype`, `address`, `state`, `country`, `day`, `month`, `gender`, `phoneno`, `email`) VALUES
('HEADOFFICE', '2014-01-06', 'LS1931', 'Ayodele, Adeniyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52771178', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1932', 'Osinubi, Yinka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23159818', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1933', 'Alara, Dimeji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-60515920', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1934', 'Drycleanners, Wash And Care', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37116342', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1935', 'Bada, Oladejo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-57501235', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1936', 'Akran, Senami', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32453824', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1937', 'Alhassan, Sufiano', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33012219', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1938', 'Shina, Ajayi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-90942343', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1939', 'Kola, Dr Awere', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-38333780', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1940', 'Banjo, Wale', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-51266074', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1941', 'M.o, Adedayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33560285', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1942', 'Effiong, Ubong', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55129968', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1943', 'Edirin, Eghagha', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-20388477', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1944', 'Yinka, Balogun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52282344', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1945', 'Adedoja, Bello', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23119052', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1946', 'Omoidowu, Pius', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-64631999', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1947', 'Oluwagbemiga, James', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37452110', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1948', 'Bamidele, Odupitan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-99442717', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1949', 'Adeleke, Adefowope', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36042505', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1950', 'John, Pastor', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23211699', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1951', 'Bello, Kunle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28475486', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1952', 'Mr, Nature', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-35042794', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1953', 'Fynecountry, Moyo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23460449', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1954', 'Agbabiaka, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-84805699', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1955', 'Kappo, Bright', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-31024734', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1956', 'Unknown, Desmond', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-68229894', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1957', 'Adegiwa, Mr', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23335509', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1958', 'Olalekan, Adebayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23274541', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1959', 'Effion, Blessing', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-33296762', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1960', 'Mr, Olamide', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-30101312', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1961', 'Mrs, Grace', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33082380', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1962', 'Raji, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-92022342', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1963', 'Raji, Rasheedat', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25455766', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1964', 'Ajiga, Kayode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34189170', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1965', 'Collins, Uche', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-80600414', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1966', 'Oyebade, Kayode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37150482', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1967', 'Adeyemo, Tosin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-32613280', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1968', 'Kankam, Kwame', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-09619519', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1969', 'Filani(mrs), Bose', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-69341436', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1970', 'Mrs, Nellie', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-96310592', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1971', 'Agbara, Onyeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-36010221', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1972', 'Onum, Andrew', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-64001525', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1973', 'Larayetan, Rapheal', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52797073', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1974', 'Shile, Onigemo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52959605', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1975', 'Mr, Sam', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34455511', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1976', 'Efosa, Grace', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08100209252', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1977', 'Mrs, Kike Asuelime', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-58056221', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1978', 'Sanyaolu, Seun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-60925889', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1979', 'Ifeanyi, James', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33137734', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1980', 'Ukochovwera, Stella', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37600898', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1981', 'Mr, Zico', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33447483', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1982', 'Oyeyemi, Aitokhuehi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23983648', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1983', 'Dr(mrs), Eso', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33060983', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1984', 'Mrs, Odunuga', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-00711810', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1985', 'Turner, Kole', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-57027416', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1986', 'Idowu, Ayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23213543', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1987', 'Afere, Samuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29041510', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1988', 'Odunlami, Kehinde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34032880', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1989', 'Opeyemi, Mayowa(mrs)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23150932', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1990', 'Olawale, Kehinde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-97561061', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1991', 'Samuel, Akpan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55501320', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1992', 'Lawal, Biola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-86409612', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1993', 'Mr, Obina', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-30222035', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1994', 'Ashaka, Reuben', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-67982332', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1995', 'Adekoya, Adegboyega', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-66344222', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1996', 'Williams, Adewole', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-62777425', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1997', 'Akinbade, Lola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-68360164', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1998', 'Justice, Chibuzor', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-69704856', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS1999', 'Ogunbunmi, Bamidele', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23220372', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2000', 'Mr, Obun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33702201', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2001', 'Mr Olajide, Koyejo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34727362', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2002', 'Osho, Ronke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23546595', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2003', 'Effiok, Ezekiel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-85601682', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2004', 'Mr, Kenneth', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-98681228', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2005', 'Mrs, Comfort', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55739235', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2006', 'Dr, Joe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-30833017', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2007', 'Ogbeche, Joseph', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-80527278', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2008', 'Umezuruike, Jesse', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33416398', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2009', 'Armstrong, Benjamin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23766076', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2010', 'Ndema, Chuks', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-61623981', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2011', 'Okobi, Francis', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-38212101', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2012', 'Prince, Martins', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-69645055', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2013', 'Olajobi, Muftau', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-65857703', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2014', 'Ugwu, Christian', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52808821', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2015', 'Felix, Olufayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-68444675', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2016', 'Pastor Nzeaka, Emeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33229198', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2017', 'Agwu, Eunice', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35225882', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2018', 'Yousuph, Tola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-35072088', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2019', 'Ola, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60109720', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2020', 'Tobun, Grace', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23467703', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2021', 'Mrs, Olowu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-74617075', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2022', 'Mrs, Ladi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33088047', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2023', 'Akinwunmi, Fiyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34340804', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2024', 'Nwaru, Kay', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33853380', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2025', 'Kachikwu, John', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33045912', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2026', 'Dada, Olusegun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23119619', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2027', 'Igwe, Anthony', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-96004424', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2028', 'Drycleaners, Clean Image', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23942562', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2029', 'Nyamnyam, Effiong', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-87069355', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2030', 'Jones, Listowel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24322562', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2031', 'Obhiojie, Bernice', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-56020360', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2032', 'Odupitan, Tunde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52125841', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2033', 'Ayanwola, Gbade', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53030660', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2034', 'Shonibare, Yemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33049342', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2035', 'Adekunle, Adedotun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55484065', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2036', 'Mr Mohammed, Yusuf', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-37671982', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2037', 'Iromaka(mrs), Tonia', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2038', 'Majekodunmi, Mrs', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2039', 'Goddon, Jolly', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-3857420', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2040', 'Frankalli, Michell', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-75867571', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2041', 'Mary, Igudi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-80207347', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2042', 'Emeka, Enemchukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23300088', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2043', 'Keffas, Samuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-76080620', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2044', 'Awofisibe, Olajire', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23014787', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2045', 'Okolocha, Irene', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33218381', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2046', 'Anthony, Onyeahielam', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-60644469', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2047', 'Adesanya, Clement', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56210670', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2048', 'Ifedolapo, Busari', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37133600', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2049', 'Mrs, Kenny', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35208357', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2050', 'Mr, Demilade', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-72221440', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2051', 'Ajiboye, Tolu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52262400', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2052', 'Ukeje, Oc', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23641022', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2053', 'Bright, Arome', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-65103714', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2054', 'Godwin, Iroh', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-58584439', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2055', 'Aro, Kuburat', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23403897', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2056', 'Mr Seyi, Adewunmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-88981811', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2057', 'Engr Uchenna, Okongwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33062212', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2058', 'Okocha, Vincent', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-90707107', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2059', 'Ofili, Tina', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-62109465', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2060', 'Brig Gen, Patrick', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33034565', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2061', 'Domingo, Tola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-94459054', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2062', 'Dr, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33043524', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2063', 'Mrs, Sokan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23530719', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2064', 'Olaogun, Bisi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23038598', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2065', 'Prosper, Patrick', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-32411983', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2066', 'Chioma, Michelle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-72295649', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2067', 'Sholeye, Abdulsalam', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-64537969', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2068', 'Fatai, Ahmed', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2069', 'Barrister, Hope', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34932230', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2070', 'Dp, George', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33354101', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2071', 'Ekeoba, Eni', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-52463239', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2072', 'Pastor, John', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23134668', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2073', 'Tayo, Helen', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-99033427', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2074', 'Anegbe, Freda', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-68028522', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2075', 'Dagogo, Aisha', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37202620', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2076', 'Agbeniga, Samuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-68877772', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2077', 'Mr, Debo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37255994', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2078', 'Kunleyin, Ola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-84931076', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2079', 'Nwogu, Gerald', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32492040', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2080', 'Olasode, Tunde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-66760672', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2081', 'Ihesiulo, Amarachi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-63964718', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2082', 'Falola, Moyo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-68143580', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2083', 'Akeju, Rotimi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23898724', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2084', 'Asogwa, Uchenna', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33129514', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2085', 'Akinade, Tolulope', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-94423821', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2086', 'Okoye, Rose (mrs)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37871563', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2087', 'Adebayo, Tobi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-34570758', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2088', 'Sylvanus, Nnaemeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-93201123', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2089', 'Soyinka, Babatunde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-26554208', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2090', 'Izu, Monday', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60272714', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2091', 'Jimoh, Kazeem', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23118307', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2092', 'Adeniji, Tope', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36307787', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2093', 'Olabanji, Jude', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-61920622', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2094', 'Eigbogbo, Edmund', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-30563446', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2095', 'Ladipo, Kudi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '07065939697', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2096', 'Adekunle, Ademola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56266807', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2097', 'Nwofia, Oge', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39572266', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2098', 'Igbi, Joel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22840062', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2099', 'Mr, Giwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2100', 'Uche, Patrick', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-66537569', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2101', 'Egbeyemi, Olumuyiwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32740529', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2102', 'Bello, Toyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-66546523', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2103', 'Antia, Daniel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-37041106', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2104', 'Oni, Turayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27200921', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2105', 'Akinde, Fumbi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28270738', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2106', 'Udechukwu, Edith', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34481159', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2107', 'Solomon, Landi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2108', 'Hakeem, Sedelu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-37186629', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2109', 'Ottun, Yinka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08023020422', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2110', 'Steve, Osai', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56431360', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2111', 'Erunse, Damilare', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-72221440', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2112', 'Ejike, Fred', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08038456601', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2113', 'Tunde, Adeleke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34718231', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2114', 'Ikechukwu, Okoye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2115', 'Ishola, Bukky', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2116', 'Onipede, Tosin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-80888288', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2117', 'Chuma, Uzochukwu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-58441218', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2118', 'Shobande, Jide', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24507538', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2119', 'Zubi, Abaje', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-82666878', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2120', 'Mrs, Osagie', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2121', 'Orji, Onyekachi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-62360392', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2122', 'Akeiso, Peace (mrs)', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-79169126', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2123', 'Onanuga, Bisi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-52003849', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2124', 'Aderemi, Atimise', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23000812', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2125', 'Martins, Uche', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-36920010', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2126', 'Emmanuel, Joseph', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-32942244', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2127', 'Mrs, Martins', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55159623', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2128', 'Chinedu, Igigo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-67455315', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2129', 'Tunde, Martins', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-32346732', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2130', 'Victor, Onyeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-88784161', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2131', 'Omoniyi, Tope', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-83077789', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2132', 'Makanjuola, Tayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-29114461', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2133', 'Omosola, Lizzy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33377247', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2134', 'Olorunwa, Israel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-63398235', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2135', 'Akpan, Samuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-55501320', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2136', 'Miss, Abariko', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34953884', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2137', 'Seth, Omoseye', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23073207', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2138', 'Adeyemi, Esther', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-61972128', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2139', 'Atta, Abdulrasheed', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-39224900', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2140', 'Mr, Oparah', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37273833', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2141', 'Fasan, Tayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-25001200', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2142', 'Okeke, Ebuka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33289675', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2143', 'Mr, Elliot', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2144', 'Kayode, Teniola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-57798072', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2145', 'Mr, Ademuwagun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34880393', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2146', 'Otudeko, Olu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37142804', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2147', 'Jesuga, Kemisola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-25341143', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2148', 'Idibia, Daniel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32664114', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2149', 'Adedayo, Oluwaseun', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-99445777', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2150', 'Naboya, Aisha', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-64870540', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2151', 'Adegunle, Funke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-86150055', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2152', 'Audu, Pastor', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39629907', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2153', 'Moses, Ifeanyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-61217762', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2154', 'Egwaikhide, Oluwatoyin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-63187973', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2155', 'Okolo, Ezra', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-98706646', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2156', 'Onafowokan, Hakeem', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28707641', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2157', 'Mr Femi, Idowu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-08680403', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2158', 'Pastor, Bukola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23120662', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2159', 'Disu, Kehinde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34309285', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2160', 'Awolola, Nicholas', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-27194442', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2161', 'Gen S.a, Adebayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-61247292', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2162', 'Jada, Musa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-72835046', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2163', 'Ali, Franklin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-66477454', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2164', 'Akinkuotu, Ronke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-67648080', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2165', 'Olaoye, Daniel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34965711', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2166', 'Oluwafemi, Oluwasola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-87183481', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2167', 'Olusi, Kola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32305090', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2168', 'Akanle, Oluwasanmi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-38178196', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2169', 'Prince, Godwill', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-26084464', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2170', 'Onome, Ekediare', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24127486', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2171', 'Olayemi, Tope', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-84373664', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2172', 'Orjiako, Elvis', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33370640', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2173', 'Mr, Joseph', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2174', 'Pastor, Oke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-67723660', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2175', 'Akinwunmi, Tosin', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53385213', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2176', 'Osho, Ademilola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-63087360', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2177', 'Hajiat, Ayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-30723674', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2178', 'Toriola, Olajumoke', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38416598', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2179', 'Olukorede, Kolawole', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-24295087', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2180', 'Sigha, Ngozi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55606711', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2181', 'Akpan, Augustus', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-36347004', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2182', 'Ogunde, Remi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-71999000', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2183', 'Olaiya, Olalekan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22553308', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2184', 'Otemuyiwa, Kehinde', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-32779236', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2185', 'Udoh, Jeremiah', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-33794675', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2186', 'Oluwafemi, Johnson', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-54126620', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2187', 'Babatunde, Olasumbo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28386418', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2188', 'Adewole, Blessing', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-66531809', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2189', 'Akingbade, Sola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37531497', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2190', 'Adesona, Debo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56459046', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2191', 'Adesanya, Kunle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-55221213', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2192', 'Fakoya, Onyeka', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-54129416', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2193', 'Agu, Joshua', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-84987134', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2194', 'Abariko, Doris', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34953884', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2195', 'Olubode, Taiwo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-66889682', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2196', 'Drycleaners, Triokmelon', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35262737', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2197', 'Azeez, Dupe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-61610066', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2198', 'Ojumu, Taiwo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-24623342', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2199', 'Mrs, Adelaja', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-57269140', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2200', 'Amao, Ade', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-28374404', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2201', 'Olawoyin, Moses', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-62676437', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2202', 'Hassan, Femi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-65258265', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2203', 'Alake, Shola', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-38628019', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2204', 'Mr, Bongo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-86601110', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2205', 'Igboanugo, James', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37245643', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2206', 'Babatunde, Azees', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08020693635', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2207', 'Badaru, Shina', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2208', 'Jacob, Jane', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-75224229', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2209', 'Ugonabor, Emmanuel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33064359', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2210', 'Teko, Kunle', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-29209465', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2211', 'Agbaike, Helen', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-39483598', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2212', 'Kayode, Lekan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-57414192', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2213', 'Andrew, Chris', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23216082', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2214', 'Chinaka, Abel', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37397665', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2215', 'Godwin, Nwokede', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-33462618', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2216', 'Muhamed, Nasir', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-85386932', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2217', 'Abu, Hassan', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-80236882', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2218', 'Ayeni, Yemi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '80-', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2219', 'Lagmoy Ventures, Drycleaner', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '08023108849', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2220', 'Chibuzor, Kamma', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-68983457', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2221', 'Sunday, Ogazi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-62677686', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2222', 'Borh, Tayo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23391290', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2223', 'Ernest, Akobundu', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34211874', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2224', 'Seyanu, Mr', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-35171349', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2225', 'Ayeni, Kayode', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23038286', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2226', 'Miss, Toyosi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23338767', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2227', 'Giwa, S.a', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23001299', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2228', 'Onwuejeogwu, Nonyelim', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-55631962', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2229', 'Idris, Alli', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-77555598', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2230', 'Clare, Idigo', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33237282', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2231', 'Engr Alabi, Kenny', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-34622725', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2232', 'Funbi, Sokoya', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-86010586', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2233', 'Idowu, Feyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56441524', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2234', 'Mrs, Ngozi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-60021212', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2235', 'Aimiosior, Pius', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-56077136', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2236', 'Mrs, Cugkod', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23602216', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2237', 'Okereke, Igwe', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-31034824', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2238', 'Mr, Kofi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-32244694', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2239', 'Juliet, Ete', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-84008720', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2240', 'Oluwajana, Gbenga', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-37917210', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2241', 'Adebiyi, Tessy', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '070-25001457', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2242', 'Olajide, Akinbiyi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-23189390', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2243', 'Igun (mrs), Ifeoluwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-96258124', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2244', 'Nasir, Mohammed', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-85386932', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2245', 'Ojo, Ayandeji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-53430809', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2246', 'Bolajoko, Ogini', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-22222576', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2247', 'Tega, Tega', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-25103788', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2248', 'Hotel, Mainland', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '081-28990865', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2249', 'Ugochukwu, Okami', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-38025650', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2250', 'Owolabi, Muyiwa', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-82213598', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2251', 'Abolade, Bolaji', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-33815073', 'you@yourdomain.com'),
('HEADOFFICE', '2014-01-06', 'LS2252', 'Mr, Obi', 'null', 'Regular', '', 'Lagos', 'Nigeria', '1', '2', 'Male', '080-99876636', 'you@yourdomain.com');

-- --------------------------------------------------------

--
-- Table structure for table `customercreditlimit`
--

CREATE TABLE IF NOT EXISTS `customercreditlimit` (
  `regno` varchar(20) NOT NULL,
  `creditlimit` int(10) NOT NULL,
  `regdate` date NOT NULL,
  PRIMARY KEY (`regno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customercreditlimit`
--

INSERT INTO `customercreditlimit` (`regno`, `creditlimit`, `regdate`) VALUES
('HQS14', 70000, '2014-12-19'),
('LV12', 20000, '2014-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `branch` varchar(20) NOT NULL,
  `regdate` varchar(20) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `custtype` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `phoneno` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `creditlimit` int(10) DEFAULT NULL,
  PRIMARY KEY (`regno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`branch`, `regdate`, `regno`, `surname`, `firstname`, `custtype`, `address`, `state`, `country`, `day`, `month`, `gender`, `phoneno`, `email`, `creditlimit`) VALUES
('HEADOFFICE', '2013-12-12', 'ECHE1', 'DEJI', 'SUNDAY', 'Regular', 'Ketu', 'Lagos', 'Nigeria', '25', '12', 'Male', '08067676565', 'ayus@yahoo.com', NULL),
('HEADOFFICE_SALES', '2014-12-19', 'HQS14', 'ThankGod', 'Ukachukwu', 'Retail', '', '', 'Nigeria', 'Select', 'Select', '', NULL, '', 70000),
('HEADOFFICE_SALES', '2014-12-20', 'HQS16', 'Ibe', 'Moses', 'Retail', '', '', 'Nigeria', 'Select', 'Select', '', NULL, '', NULL),
('HEADOFFICE_SALES', '2014-12-20', 'HQS17', 'Igwe', 'Moses', 'Retail', '', '', 'Nigeria', 'Select', 'Select', '', NULL, '', NULL),
('HEADOFFICE_SALES', '2014-12-21', 'HQS18', 'Okeke', 'Ibe', 'Retail', '', '', 'Nigeria', 'Select', 'Select', '', NULL, '', NULL),
('HEADOFFICE_SALES', '2014-12-21', 'HQS19', 'Okeke', 'Ibe', 'Retail', '', '', 'Nigeria', 'Select', 'Select', '', NULL, '', NULL),
('HEADOFFICE_SALES', '2014-12-14', 'HQS20', 'CIC', 'Onitsha', 'Distributor', NULL, NULL, 'Nigeria', 'Select', 'Select', NULL, NULL, NULL, NULL),
('HEADOFFICE', '2014-05-04', 'LV12', 'Mr Raji Fashola', 'null', 'Regular', 'Ketu', 'Ekiti', 'Nigeria', '15', '2', 'Male', '08062841500', 'you@yourdomain.com', 20000),
('HAVILAHGOLD', '2013-09-06', 'LV3', 'Mr Jacob', 'Aganga', 'Regular', '12, Samora Street, Ketu', 'Lagos', 'Nigeria', '2', '4', 'Male', '08054565456', 'you@yourdomain.com', NULL),
('KINGSDELIGHT', '2013-09-10', 'LV4', 'Mrs Kemi', 'Mary', 'Regular', '117, Allen Avenue', 'Kaduna', 'Nigeria', '17', '7', 'Female', '08054546655', 'you@yourdomain.com', NULL),
('HAVILAHGOLD', '2013-09-17', 'LV5', 'femi', 'femi', 'Regular', '117, Allen Avenue', 'Gombe', 'Nigeria', '17', '7', 'Male', '08054546654', 'you@yourdomain.com', NULL),
('HAVILAHGOLD', '2013-09-17', 'LV6', 'James', 'John', 'Regular', '117, Allen Avenue', 'Gombe', 'Nigeria', '17', '7', 'Male', '0805454661', 'you@yourdomain.com', NULL),
('HEADOFFICE', '2013-11-06', 'LV7', 'Mr James', 'Badmus', 'Package', 'Ikeja', 'Lagos', 'Nigeria', '16', '4', 'Male', '08054546657', 'you@yourdomain.com', NULL),
('HEADOFFICE', '2013-11-13', 'LV8', 'Shakirat', 'Alade', 'Regular', 'Lagos', 'Lagos', 'Nigeria', '12', '7', 'Male', '08123908003', 'you@yourdomain.com', NULL),
('HEADOFFICE', '2013-11-13', 'LV9', 'Bola', 'Joko', 'Regular', 'ogudu', 'Lagos', 'Nigeria', '1', '1', 'Female', '08023908003', 'bola_joko@yahoo.com', NULL),
('HEADOFFICE', '2014-05-29', 'MW14', 'Mr Kelvin', 'Kelvin', 'Package', '117, Allen Avenue', 'Enugu', 'Nigeria', '9', '3', 'Male', '08062841501', 'you@yourdomain.com', NULL),
('HEADOFFICE', '2014-01-07', 'Org10', 'Mr Johnson', 'null', 'Regular', '31, Aideyan Street', 'Edo', 'Nigeria', '18', '2', 'Male', '08086413030', 'you@yourdomain.com', NULL),
('HEADOFFICE', '2014-05-01', 'Org11', 'Mr John Macho', 'null', 'Staff', '117, Allen Avenue', 'Kano', 'Nigeria', '15', '10', 'Male', '08062841509', 'you@yourdomain.com', NULL),
('HEADOFFICE', '2014-05-10', 'Org13', 'Mr Bright', 'Adams', 'Regular', '117, Allen Avenue', 'Lagos', 'Nigeria', '12', '4', 'Male', '08062841597', 'you@yourdomain.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `custpackage`
--

CREATE TABLE IF NOT EXISTS `custpackage` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `custno` varchar(20) NOT NULL,
  `name` varchar(70) NOT NULL,
  `totalpics` int(50) NOT NULL,
  `total` float NOT NULL,
  `amtpaid` float NOT NULL,
  `balance` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `custpackage`
--

INSERT INTO `custpackage` (`id`, `date`, `custno`, `name`, `totalpics`, `total`, `amtpaid`, `balance`) VALUES
(1, '2013-11-06', 'LV3', 'Mr Jacod', -15520, 13000, 1300, 0),
(2, '2013-12-29', 'LV7', 'Mr James Badmus', -3147, 13000, 10000, 3000),
(3, '2013-12-29', 'LV9', 'Bola', 30, 13000, 0, 13000),
(4, '2013-12-29', 'ECHE1', 'DEJI', -14670, 34000, 0, 34000),
(5, '2014-05-29', 'MW14', 'Mr Kelvin', 45, 21500, 20000, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `custpref`
--

CREATE TABLE IF NOT EXISTS `custpref` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `customerno` varchar(20) NOT NULL,
  `preference` varchar(70) NOT NULL,
  `priority` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dailybalances`
--

CREATE TABLE IF NOT EXISTS `dailybalances` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(50) NOT NULL,
  `balance` double NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `dailybalances`
--

INSERT INTO `dailybalances` (`id`, `branch_id`, `balance`, `date`) VALUES
(1, 'HEADOFFICE_SALES', 20000, '2014-12-19'),
(2, 'HEADOFFICE_SALES', 20000, '2014-12-20'),
(3, 'HEADOFFICE_SALES', 20000, '2014-12-21'),
(4, 'HEADOFFICE_SALES', 20000, '2014-12-22'),
(5, 'HEADOFFICE_SALES', 20000, '2014-12-23'),
(6, 'HEADOFFICE_SALES', 20000, '2014-12-24'),
(7, 'HEADOFFICE_SALES', 20000, '2014-12-25'),
(8, 'HEADOFFICE_SALES', 20000, '2014-12-26');

-- --------------------------------------------------------

--
-- Table structure for table `dailyinvoicetotal`
--

CREATE TABLE IF NOT EXISTS `dailyinvoicetotal` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(50) NOT NULL,
  `dateinvoice` date NOT NULL,
  `totalinvoice` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `dailyinvoicetotal`
--

INSERT INTO `dailyinvoicetotal` (`id`, `branch_id`, `dateinvoice`, `totalinvoice`) VALUES
(1, 'HEADOFFICE_SALES', '2014-11-18', 0),
(2, 'HEADOFFICE_SALES', '2014-11-20', 0),
(3, 'HEADOFFICE_SALES', '2014-12-19', 2),
(4, 'HEADOFFICE_SALES', '2014-12-20', 6),
(5, 'HEADOFFICE_SALES', '2014-12-21', 2),
(6, 'HEADOFFICE_SALES', '2014-12-22', 0),
(7, 'HEADOFFICE_SALES', '2014-12-23', 1),
(8, 'HEADOFFICE_SALES', '2014-12-24', 1),
(9, 'HEADOFFICE_SALES', '2014-12-25', 0),
(10, 'HEADOFFICE_SALES', '2014-12-26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE IF NOT EXISTS `deposit` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `branch` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `tellerno` varchar(50) NOT NULL,
  `depositor` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `bank` varchar(50) NOT NULL,
  `account` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `branch`, `date`, `tellerno`, `depositor`, `amount`, `bank`, `account`) VALUES
(1, 'Ogudu', '2013-09-08', '342334', 'Femi', 10000, 'GTBank', 'Cash-At-Hand'),
(2, 'HeadOffice', '2013-10-16', '54456', 'Femi', 5000, 'GTBank', 'Package Customers');

-- --------------------------------------------------------

--
-- Table structure for table `depositarch`
--

CREATE TABLE IF NOT EXISTS `depositarch` (
  `id` int(20) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `tellerno` varchar(50) NOT NULL,
  `depositor` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `bank` varchar(50) NOT NULL,
  `account` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `depositarch`
--

INSERT INTO `depositarch` (`id`, `branch`, `date`, `tellerno`, `depositor`, `amount`, `bank`, `account`) VALUES
(3, 'HEADOFFICE', '2014-02-04', '554', 'deji', 5000, 'GTBank', 'Cash-At-Hand'),
(3, 'HEADOFFICE_ADMIN', '2014-11-24', '6989556', 'hjgljfhgdgf', 7000000000, 'GTBank', 'Cash-At-Hand');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE IF NOT EXISTS `discount` (
  `custid` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `disc` int(3) NOT NULL,
  PRIMARY KEY (`custid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`custid`, `name`, `disc`) VALUES
('LV3', 'Mr Jacob', 5),
('LV4', 'Mrs Kemi', 10),
('LV5', 'femi', 10),
('LV6', 'James', 7),
('LV9', 'Bola', 10);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `branch` varchar(20) NOT NULL,
  `expense_date` date NOT NULL,
  `accountname` varchar(50) NOT NULL,
  `receiver` varchar(70) NOT NULL,
  `address` varchar(70) NOT NULL,
  `phoneno` varchar(12) NOT NULL,
  `total_amount` float NOT NULL,
  `description` varchar(70) NOT NULL,
  `amountpaid` float NOT NULL,
  `balance` float NOT NULL,
  `approved_by` varchar(50) NOT NULL,
  `type` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `branch`, `expense_date`, `accountname`, `receiver`, `address`, `phoneno`, `total_amount`, `description`, `amountpaid`, `balance`, `approved_by`, `type`) VALUES
(1, 'Ogudu', '2013-09-07', 'Cash-at-Hand', 'Mr Deji', 'Ojota', '08056545456', 5000, 'For Transportation', 2000, 0, 'MD', 'Transportation Expense'),
(3, 'Ogudu', '2013-09-07', 'Cash-at-Hand', 'Mr Agama', 'Ojota', '09087876765', 3000, 'Telephone', 3000, 0, 'MD', 'Telephone office'),
(4, 'KINGSDELIGHT ', '2013-09-24', 'Cash-at-Hand', 'Deji', 'Ketu', '08054546655', 2000, 'Transportation', 1500, 500, 'MD', 'Transportation Expense'),
(5, 'KINGSDELIGHT', '2013-11-11', 'Cash-at-Hand', 'Mr Emmanuel', 'Ojota', '08054546655', 2000, 'Transportation', 1500, 0, 'MD', 'Transportation Expense'),
(6, 'HEADOFFICE', '2014-02-19', 'Fidelity Bank', 'Mr Badmus', 'ketu', '08065654543', 5000, 'pay', 5000, 0, 'md', 'Casual Workers'),
(7, 'HEADOFFICE', '2014-03-18', 'Fidelity Bank', 'Bishop', 'ketu', '08062841507', 7000, 'Transportation', 7000, 0, 'Mr Deji', 'Transportation Expense'),
(8, 'HEADOFFICE', '2014-03-18', 'Fidelity Bank', 'Bishop', 'ketu', '08062841507', 6500, 'Transportation', 6500, 0, 'Mr Deji', 'Advertising  Express'),
(9, 'HEADOFFICE', '2014-03-18', 'Fidelity Bank', 'Bishop', 'ketu', '08062841507', 6500, 'Advert', 6000, 500, 'Mr Deji', 'Advertising  Express'),
(10, 'HEADOFFICE', '2014-03-18', 'Fidelity Bank', 'Mr Femi', 'ketu', '08062841507', 4000, 'Advert', 4000, 0, 'Mr Deji', 'Advertising  Express'),
(11, 'HEADOFFICE', '2014-03-18', 'Fidelity Bank', 'Mr Femi', 'ketu', '08062841507', 2000, 'Advert', 2000, 0, 'Mr Deji', 'Advertising  Express');

-- --------------------------------------------------------

--
-- Table structure for table `expensesarch`
--

CREATE TABLE IF NOT EXISTS `expensesarch` (
  `id` int(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `expense_date` date NOT NULL,
  `accountname` varchar(50) NOT NULL,
  `receiver` varchar(70) NOT NULL,
  `address` varchar(70) NOT NULL,
  `phoneno` varchar(12) NOT NULL,
  `total_amount` float NOT NULL,
  `description` varchar(70) NOT NULL,
  `amountpaid` float NOT NULL,
  `balance` float NOT NULL,
  `approved_by` varchar(50) NOT NULL,
  `type` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expensesarch`
--

INSERT INTO `expensesarch` (`id`, `branch`, `expense_date`, `accountname`, `receiver`, `address`, `phoneno`, `total_amount`, `description`, `amountpaid`, `balance`, `approved_by`, `type`) VALUES
(2, 'Ogudu', '2013-09-07', 'Cash-at-Hand', 'Mr Agama', '117, Allen Avenue', '08078787676', 5000, 'Recharge Card', 1000, 4000, 'MD', 'Telephone office');

-- --------------------------------------------------------

--
-- Table structure for table `extracharge`
--

CREATE TABLE IF NOT EXISTS `extracharge` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `regdate` date NOT NULL,
  `extra_charge_name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `extracharge`
--

INSERT INTO `extracharge` (`id`, `regdate`, `extra_charge_name`, `description`, `price`) VALUES
(1, '2013-09-06', 'Iron Stain', 'Iron Stain', 600),
(2, '2013-09-08', 'Stain', 'Iron Stain', 300);

-- --------------------------------------------------------

--
-- Table structure for table `extrainfo`
--

CREATE TABLE IF NOT EXISTS `extrainfo` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `invoiceid` varchar(50) NOT NULL,
  `extra` varchar(50) NOT NULL,
  `qty` int(20) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fixedasset`
--

CREATE TABLE IF NOT EXISTS `fixedasset` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `branch` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `cost` float NOT NULL,
  `location` varchar(20) NOT NULL,
  `depreciation` float NOT NULL,
  `nbv` float NOT NULL,
  `account` varchar(20) NOT NULL,
  `lastdepre` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fixedasset`
--

INSERT INTO `fixedasset` (`id`, `branch`, `date`, `name`, `description`, `cost`, `location`, `depreciation`, `nbv`, `account`, `lastdepre`) VALUES
(1, 'OGUDU', '2013-09-07', 'Computer System', 'HP Dual Cire', 90000, 'Ogudu', 20, 57600, 'Office Equipments', '2013-12-26'),
(2, 'HEADOFFICE', '2013-10-16', 'Motor Vehicle', 'Motor Vehicle', 500000, 'Ikrja', 15, 500000, 'Motor Vehicle', '2013-10-16');

-- --------------------------------------------------------

--
-- Table structure for table `fundexpenses`
--

CREATE TABLE IF NOT EXISTS `fundexpenses` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `expense_date` date NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hangeranalysis`
--

CREATE TABLE IF NOT EXISTS `hangeranalysis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `invoiceno` varchar(20) NOT NULL,
  `tagnumber` varchar(20) NOT NULL,
  `hungpacks` int(20) NOT NULL,
  `folded` int(20) NOT NULL,
  `nohangers` int(20) NOT NULL,
  `presser` varchar(20) NOT NULL,
  `collatedby` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hangeranalysis`
--

INSERT INTO `hangeranalysis` (`id`, `branch`, `date`, `invoiceno`, `tagnumber`, `hungpacks`, `folded`, `nohangers`, `presser`, `collatedby`) VALUES
(1, 'Ogudu', '2013-09-08', 'OG3', 'TC-555-01', 2, 1, 2, 'James', 'DEJI');

-- --------------------------------------------------------

--
-- Table structure for table `hoqexpenses`
--

CREATE TABLE IF NOT EXISTS `hoqexpenses` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `expense_date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `purpose` varchar(70) NOT NULL,
  `amountpaid` float NOT NULL,
  `balance` int(11) NOT NULL,
  `type` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `hoqexpenses`
--

INSERT INTO `hoqexpenses` (`id`, `expense_date`, `amount`, `purpose`, `amountpaid`, `balance`, `type`) VALUES
(1, '2014-12-20', 2000, 'Feeding of Boys', 2000, 98000, 'shop'),
(2, '2014-12-21', 5000, 'Feeding of Boys', 5000, 95000, 'shop');

-- --------------------------------------------------------

--
-- Table structure for table `hoqexpensesbal`
--

CREATE TABLE IF NOT EXISTS `hoqexpensesbal` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `expense_date` date NOT NULL,
  `balance` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `hoqexpensesbal`
--

INSERT INTO `hoqexpensesbal` (`id`, `expense_date`, `balance`) VALUES
(12, '2014-12-17', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `initialinsp`
--

CREATE TABLE IF NOT EXISTS `initialinsp` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `branch` varchar(20) NOT NULL,
  `tagno` varchar(20) NOT NULL,
  `item` varchar(20) NOT NULL,
  `itemtype` varchar(20) NOT NULL,
  `indexcode` varchar(20) NOT NULL,
  `day` varchar(20) NOT NULL,
  `tdate` date NOT NULL,
  `operator` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `initialinsp`
--

INSERT INTO `initialinsp` (`id`, `branch`, `tagno`, `item`, `itemtype`, `indexcode`, `day`, `tdate`, `operator`, `remark`) VALUES
(1, 'Ogudu', 'TC-555-01', 'Shirt', 'Casuals', 'L', 'Sunday', '2013-09-08', 'DEJI', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `invid`
--

CREATE TABLE IF NOT EXISTS `invid` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `inv` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `invid`
--

INSERT INTO `invid` (`id`, `inv`) VALUES
(1, 'inv'),
(2, 'hi'),
(3, 'hi'),
(4, 'hi'),
(5, 'hi'),
(6, 'hi'),
(7, 'hi'),
(8, 'hi'),
(9, 'hi'),
(10, 'hi'),
(11, 'hi'),
(12, 'hi'),
(13, 'hi'),
(14, 'hi'),
(15, 'hi'),
(16, 'hi'),
(17, 'hi'),
(18, 'hi'),
(19, 'hi'),
(20, 'hi'),
(21, 'hi'),
(22, 'hi'),
(23, 'hi'),
(24, 'hi'),
(25, 'hi'),
(26, 'hi'),
(27, 'hi'),
(28, 'hi'),
(29, 'hi'),
(30, 'hi'),
(31, 'hi'),
(32, 'hi'),
(33, 'hi'),
(34, 'hi'),
(35, 'hi'),
(36, 'hi'),
(37, 'hi'),
(38, 'hi'),
(39, 'hi'),
(40, 'hi'),
(41, 'hi'),
(42, 'hi'),
(43, 'hi'),
(44, 'hi'),
(45, 'hi'),
(46, 'hi'),
(47, 'hi'),
(48, 'hi'),
(49, 'hi'),
(50, 'hi'),
(51, 'hi'),
(52, 'hi'),
(53, 'hi'),
(54, 'hi'),
(55, 'hi'),
(56, 'hi'),
(57, 'hi'),
(58, 'hi'),
(59, 'hi'),
(60, 'hi'),
(61, 'hi'),
(62, 'hi'),
(63, 'hi'),
(64, 'hi'),
(65, 'hi'),
(66, 'hi'),
(67, 'hi'),
(68, 'hi'),
(69, 'hi'),
(70, 'hi'),
(71, 'hi'),
(72, 'hi'),
(73, 'hi'),
(74, 'hi'),
(75, 'hi'),
(76, 'hi'),
(77, 'hi'),
(78, 'hi'),
(79, 'hi'),
(80, 'hi'),
(81, 'hi'),
(82, 'hi'),
(83, 'hi'),
(84, 'hi'),
(85, 'hi'),
(86, 'hi'),
(87, 'hi'),
(88, 'hi'),
(89, 'hi'),
(90, 'hi'),
(91, 'hi'),
(92, 'hi'),
(93, 'hi'),
(94, 'hi'),
(95, 'hi'),
(96, 'hi'),
(97, 'hi'),
(98, 'hi'),
(99, 'hi'),
(100, 'hi'),
(101, 'hi'),
(102, 'hi'),
(103, 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `invid2`
--

CREATE TABLE IF NOT EXISTS `invid2` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `inv` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `invid2`
--

INSERT INTO `invid2` (`id`, `inv`) VALUES
(1, 'hi'),
(2, 'hi'),
(3, ''),
(4, ''),
(5, 'hi'),
(6, 'hi'),
(7, 'hi'),
(8, 'hi'),
(9, 'hi'),
(10, 'hi'),
(11, 'hi'),
(12, 'hi'),
(13, 'hi'),
(14, 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `invid3`
--

CREATE TABLE IF NOT EXISTS `invid3` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `inv` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `invid3`
--

INSERT INTO `invid3` (`id`, `inv`) VALUES
(1, 'hi'),
(2, 'hi'),
(3, 'hi'),
(4, 'hi'),
(5, 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `invoicearch`
--

CREATE TABLE IF NOT EXISTS `invoicearch` (
  `date` varchar(20) NOT NULL,
  `invoiceid` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `custname` varchar(70) NOT NULL,
  `custid` varchar(20) NOT NULL,
  `custtype` varchar(20) NOT NULL,
  `tagno` varchar(20) NOT NULL,
  `totalqty` int(20) NOT NULL,
  `discount` float NOT NULL,
  `type` varchar(20) NOT NULL,
  `grandtotal` float NOT NULL,
  `amtpaid` float NOT NULL,
  `balance` float NOT NULL,
  `ready` varchar(50) NOT NULL,
  `staff` varchar(20) NOT NULL,
  `reason` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoicearch`
--

INSERT INTO `invoicearch` (`date`, `invoiceid`, `branch`, `custname`, `custid`, `custtype`, `tagno`, `totalqty`, `discount`, `type`, `grandtotal`, `amtpaid`, `balance`, `ready`, `staff`, `reason`) VALUES
('2013-09-07', 'OG8', 'OGUDU', 'Mr Jacod Aganga', 'LV3', 'Regular', 'TC-555-01', 3, 100, '', 300, 0, 200, '2013-09-07', 'DEJI', 'reason'),
('2013-09-07', 'OG8', 'OGUDU', 'Mr Jacod Aganga', 'LV3', 'Regular', 'TC-555-01', 3, 100, '', 300, 0, 200, '2013-09-07 Tue 5.00PM', 'DEJI', 'test'),
('2013-09-29', 'HO132', 'HEADOFFICE', 'Mrs Kemi Mary', 'LV4', 'Regular', 'TC-555-01', 7, 0, '', 750, 0, 0, '2013-09-26 Thur 5.00PM', 'DEJI', 'Just trying');

-- --------------------------------------------------------

--
-- Table structure for table `invoicebody`
--

CREATE TABLE IF NOT EXISTS `invoicebody` (
  `itemid` int(50) NOT NULL AUTO_INCREMENT,
  `branch` varchar(20) NOT NULL,
  `indate` date NOT NULL,
  `custid` varchar(20) NOT NULL,
  `invoiceid` varchar(20) NOT NULL,
  `items` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `qty` int(20) NOT NULL,
  `pcs` int(20) NOT NULL,
  `totalqty` int(20) NOT NULL,
  `des` varchar(50) NOT NULL,
  `color` varchar(20) NOT NULL,
  `total` float NOT NULL,
  `admin` varchar(20) NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=244 ;

--
-- Dumping data for table `invoicebody`
--

INSERT INTO `invoicebody` (`itemid`, `branch`, `indate`, `custid`, `invoiceid`, `items`, `price`, `qty`, `pcs`, `totalqty`, `des`, `color`, `total`, `admin`) VALUES
(1, 'OGUDU', '2013-09-04', 'ECHE1', 'OG3', 'Ladies skirt suit 3 pc', 700, 2, 3, 6, '', ' Black Orange', 1400, 'DEJI'),
(2, 'OGUDU', '2013-09-05', 'ECHE1', 'OG4', 'Men Suit 3 PCS', 700, 2, 3, 6, '', ' Green', 1400, 'DEJI'),
(3, 'OGUDU', '2013-09-05', 'ECHE1', 'OG4', 'Men Suit 3 PCS', 700, 1, 3, 3, '', ' Tan Maroon', 700, 'DEJI'),
(4, 'OGUDU', '2013-09-06', 'ECHE1', 'OG5', 'Men Suit 3 PCS', 700, 1, 3, 3, '', ' Tan Black', 700, 'DEJI'),
(5, 'OGUDU', '2013-09-06', 'ECHE1', 'OG5', 'Trousers', 100, 1, 1, 1, '', ' Tan', 100, 'DEJI'),
(6, 'OGUDU', '2013-09-06', 'ECHE1', 'OG5', 'Waist Coat', 100, 1, 1, 1, '', ' Orange Violet', 100, 'DEJI'),
(7, 'OGUDU', '2013-09-07', 'LV3', 'OG6', 'Men Suit 2 PCS', 600, 1, 2, 2, '', ' Green', 600, 'DEJI'),
(8, 'OGUDU', '2013-09-07', 'LV3', 'OG6', 'Men Suit 2 PCS', 600, 2, 2, 4, '', ' Tan Black', 1200, 'DEJI'),
(9, 'OGUDU', '2013-09-07', 'LV3', 'OG6', 'Trousers', 100, 2, 1, 2, '', ' Tan Black', 200, 'DEJI'),
(10, 'OGUDU', '2013-09-07', 'LV3', 'OG6', 'Trousers', 100, 1, 1, 1, '', ' Black', 100, 'DEJI'),
(11, 'OGUDU', '2013-09-07', 'ECHE1', 'OG7', 'Trousers', 100, 2, 1, 2, '', ' Tan Black', 200, 'DEJI'),
(12, 'HEADOFFICE', '2013-09-10', 'ECHE1', 'HO9', 'Trousers', 100, 2, 1, 2, '', ' Green Orange', 200, 'AYODEJI'),
(13, 'HEADOFFICE', '2013-09-10', 'ECHE1', 'HO9', 'Trousers', 100, 1, 1, 1, '', ' Black', 100, 'AYODEJI'),
(14, 'MARIGOLD1', '2013-09-10', 'LV3', 'MGA4', 'Mens Suit 2 Pc', 600, 2, 2, 4, '', ' Tan', 1200, 'JAMES'),
(15, 'MARIGOLD1', '2013-09-10', 'LV3', 'MGA4', 'Mens Suit 2 Pc', 600, 2, 2, 4, '', ' Violet Purple', 1200, 'JAMES'),
(16, 'MARIGOLD2', '2013-09-10', 'LV4', 'MGB2', 'Mens Suit 2 Pc', 600, 1, 2, 2, '', ' Green', 600, 'PAUL'),
(17, 'MARIGOLD2', '2013-09-10', 'LV4', 'MGB2', 'Sweater', 200, 1, 1, 1, '', ' Black', 200, 'PAUL'),
(18, 'MARIGOLD2', '2013-09-10', 'LV4', 'MGB2', 'Church Gown Large', 250, 1, 1, 1, '', ' Violet', 250, 'PAUL'),
(19, 'MARIGOLD1', '2013-09-11', 'LV3', 'MGA5', 'Mens Suit 2 Pc', 600, 1, 2, 2, '', ' Green', 600, 'PAUL'),
(20, 'MARIGOLD1', '2013-09-11', 'LV3', 'MGA5', 'Trousers Corduroy', 150, 2, 1, 2, '', ' Black', 300, 'PAUL'),
(21, 'HEADOFFICE', '2013-09-17', 'ECHE1', 'HO10', 'Mens Suit 2 Pc', 600, 1, 2, 2, '', ' Maroon', 600, 'DEJI'),
(22, 'HEADOFFICE', '2013-09-17', 'ECHE1', 'HO10', 'Ladies Shorts', 100, 2, 1, 2, '', ' Green Orange', 200, 'DEJI'),
(23, 'HEADOFFICE', '2013-09-17', 'ECHE1', 'HO10', 'T-Shirt', 100, 1, 1, 1, '', ' Orange', 100, 'DEJI'),
(24, 'HAVILAHGOLD', '2013-09-20', 'LV5', 'HG6', 'Mens Suit 2 Pc', 600, 1, 2, 2, '', ' Green', 600, 'PAUL'),
(27, 'HEADOFFICE', '2013-09-20', 'ECHE1', 'HO11', 'Dress Suit ', 150, 1, 2, 2, '', ' Black', 150, 'DEJI'),
(28, 'HAVILAHGOLD', '2013-09-20', 'LV5', 'HG7', 'Mens Suit 2 Pc', 600, 2, 2, 4, '', ' Tan Green', 1200, 'PAUL'),
(29, 'HAVILAHGOLD', '2013-09-20', 'LV5', 'HG7', 'Trousers', 100, 1, 1, 1, '', ' Green', 100, 'PAUL'),
(30, 'HAVILAHGOLD', '2013-09-20', 'LV5', 'HG7', 'Trousers', 700, 1, 1, 1, ' Iron Stain', ' Green', 700, 'PAUL'),
(31, 'HAVILAHGOLD', '2013-09-21', 'LV4', 'HG8', 'Church Gown Large', 250, 1, 1, 1, '', ' Orange', 250, 'PAUL'),
(32, 'HAVILAHGOLD', '2013-09-21', 'LV4', 'HG8', 'DC Boubou/ Kaftan + Skirt/wrapper/trouser', 200, 1, 2, 2, '', ' Violet', 200, 'PAUL'),
(33, 'HAVILAHGOLD', '2013-09-21', 'LV4', 'HG8', 'DC Aso Oke Women 2 pc Gele/Ipele', 250, 1, 2, 2, '', ' Orange', 250, 'PAUL'),
(34, 'HAVILAHGOLD', '2013-09-21', 'LV4', 'HG8', 'Bed Sheet + 2 pillow case', 250, 2, 3, 6, '', ' Orange Black', 500, 'PAUL'),
(35, 'HEADOFFICE', '2013-09-23', 'LV4', 'HO11', 'LD Casual Men Suit  2 pc', 600, 1, 2, 2, '', ' Black', 600, 'DEJI'),
(36, 'HEADOFFICE', '2013-09-23', 'LV4', 'HO11', 'Church Gown Large', 250, 2, 1, 2, '', ' Orange Violet', 500, 'DEJI'),
(37, 'HEADOFFICE', '2013-09-24', 'ECHE1', 'HO12', 'Mens Suit 2 Pc', 600, 2, 2, 4, '', ' Biege Maroon', 1200, 'PAUL'),
(38, 'HEADOFFICE', '2013-09-24', 'ECHE1', 'HO12', 'DC Boubou/ Kaftan + Skirt/wrapper/trouser', 200, 2, 2, 4, '', ' Tan Black', 400, 'PAUL'),
(39, 'HEADOFFICE', '2013-09-24', 'LV4', 'HO13', 'HAND GLOVE', 50, 2, 1, 2, '', ' Maroon Maroon', 100, 'DEJI'),
(40, 'HEADOFFICE', '2013-09-24', 'LV4', 'HO13', 'Men Native 2 pc', 150, 2, 2, 4, '', '', 300, 'DEJI'),
(41, 'HEADOFFICE', '2013-09-24', 'LV4', 'HO13', 'Agbada only', 350, 1, 1, 1, '', ' Green', 350, 'DEJI'),
(42, 'HAVILAHGOLD', '2013-09-26', 'LV4', 'HG9', 'Mens Suit 3 Pc', 600, 1, 3, 3, '', ' Black', 600, 'PAUL'),
(43, 'HAVILAHGOLD', '2013-09-26', 'LV4', 'HG9', 'Bath Robe Terry', 200, 2, 1, 2, '', '', 400, 'PAUL'),
(44, 'HAVILAHGOLD', '2013-09-26', 'LV4', 'HG9', 'Winter Jacket', 600, 2, 1, 2, '', ' Gold Biege', 1200, 'PAUL'),
(59, 'HEADOFFICE', '2013-10-16', 'LV4', 'HO29', 'LD Casual Men Suit  2 pc', 600, 1, 2, 2, '', ' Tan', 600, 'DEJI'),
(60, 'HEADOFFICE', '2013-10-16', 'LV4', 'HO29', 'LD Casual Men Suit  2 pc', 600, 2, 2, 4, '', ' Gold  Maroon Black', 1200, 'DEJI'),
(61, 'HEADOFFICE', '2013-10-16', 'LV4', 'HO29', 'Boubou/ Kaftan + Skirt/wrapper/trouser', 200, 1, 2, 2, '', ' Violet', 200, 'DEJI'),
(62, 'HEADOFFICE', '2013-10-29', 'ECHE1', 'HO30', 'LD Casual Men Suit  2 pc', 600, 1, 2, 2, '', ' Black', 600, 'PAUL'),
(63, 'HEADOFFICE', '2013-10-29', 'ECHE1', 'HO30', 'DC Men Native 2pc', 150, 1, 2, 2, '', ' Orange', 150, 'PAUL'),
(64, 'HEADOFFICE', '2013-10-29', 'ECHE1', 'HO30', 'Boubou/ Kaftan + Scarf', 150, 2, 2, 4, '', ' Orange Violet', 300, 'PAUL'),
(65, 'HEADOFFICE', '2013-11-05', 'LV3', 'HO31', 'Mens Suit 3 Pc', 600, 1, 3, 3, '', ' Orange', 600, 'PAUL'),
(66, 'HEADOFFICE', '2013-11-05', 'LV3', 'HO31', 'Mens Suit 3 Pc', 600, 1, 3, 3, '', ' Black', 600, 'PAUL'),
(67, 'HEADOFFICE', '2013-11-05', 'LV3', 'HO31', 'LD Trouser', 100, 1, 1, 1, '', ' Biege', 100, 'PAUL'),
(68, 'HEADOFFICE', '2013-11-05', 'LV3', 'HO31', 'Ladies Trousers', 100, 1, 1, 1, '', ' Orange', 100, 'PAUL'),
(69, 'HEADOFFICE', '2013-11-06', 'LV3', 'HO32', 'LD Casual Men Suit  2 pc', 600, 1, 2, 2, '', ' Black', 600, 'PAUL'),
(70, 'HEADOFFICE', '2013-11-06', 'LV3', 'HO32', 'T-Shirt', 100, 2, 1, 2, '', ' Maroon', 200, 'PAUL'),
(71, 'HEADOFFICE', '2013-11-06', 'LV3', 'HO32', 'DC Aso Oke Men 2 pc', 600, 2, 2, 4, '', ' Orange', 1200, 'PAUL'),
(72, 'HEADOFFICE', '2013-11-06', 'LV3', 'HO32', 'DC Boubou/ Kaftan + Skirt/wrapper/trouser', 200, 1, 2, 2, '', ' Green', 200, 'PAUL'),
(73, 'KINGSDELIGHT', '2013-11-11', 'LV4', 'KD3', 'LD Casual Men Suit  2 pc', 600, 1, 2, 2, '', ' Tan', 600, 'PAUL'),
(74, 'KINGSDELIGHT', '2013-11-11', 'LV4', 'KD3', 'T-Shirt', 100, 2, 1, 2, '', ' Gold', 200, 'PAUL'),
(75, 'KINGSDELIGHT', '2013-11-11', 'LV4', 'KD3', 'DC Aso Oke Men 3 pc', 600, 1, 3, 3, '', ' Tan', 600, 'PAUL'),
(76, 'KINGSDELIGHT', '2013-11-11', 'LV4', 'KD3', 'DC Aso Oke Men 3 pc', 600, 1, 3, 3, '', ' Tan', 600, 'PAUL'),
(77, 'KINGSDELIGHT', '2013-11-11', 'LV4', 'KD4', 'Sweater', 200, 2, 1, 2, '', ' Tan', 400, 'PAUL'),
(78, 'KINGSDELIGHT', '2013-11-11', 'LV4', 'KD4', 'Winter Coat', 600, 1, 1, 1, '', ' Black Green', 600, 'PAUL'),
(79, 'KINGSDELIGHT', '2013-11-11', 'LV4', 'KD4', 'DC Aso Oke Men 2 pc', 600, 1, 2, 2, '', ' Green', 600, 'PAUL'),
(80, 'HEADOFFICE', '2013-11-13', 'LV8', 'HO33', 'Mens Suit 3 Pc', 600, 2, 3, 6, '', ' Black', 1200, 'DEJI'),
(81, 'HEADOFFICE', '2013-11-13', 'LV8', 'HO33', 'Shirts', 100, 2, 1, 2, '', ' Green Multi-Color', 200, 'DEJI'),
(82, 'HEADOFFICE', '2013-11-13', 'LV8', 'HO33', 'Duvet Only', 400, 1, 1, 1, '', ' Green', 400, 'DEJI'),
(83, 'HEADOFFICE', '2013-11-13', 'LV8', 'HO34', 'Ladies skirt suit 2 pc', 600, 1, 2, 2, '', ' Grey', 600, 'DEJI'),
(84, 'HEADOFFICE', '2013-11-13', 'LV8', 'HO34', 'Ladies Trousers', 100, 2, 2, 4, '', ' Black Black', 200, 'DEJI'),
(85, 'HEADOFFICE', '2013-11-13', 'LV8', 'HO34', 'Dress', 100, 1, 1, 1, '', ' Pink', 100, 'DEJI'),
(86, 'HEADOFFICE', '2013-11-13', 'LV9', 'HO35', 'Ladies skirt suit 2 pc', 600, 2, 2, 4, '', ' Grey', 1200, 'DEJI'),
(87, 'HEADOFFICE', '2013-11-13', 'LV9', 'HO35', 'Ladies Trousers', 100, 2, 1, 2, '', ' Black', 200, 'DEJI'),
(88, 'HEADOFFICE', '2013-11-13', 'LV9', 'HO35', 'Dress Evening Fancy', 100, 1, 1, 1, '', ' Pink', 100, 'DEJI'),
(89, 'HEADOFFICE', '2013-11-21', 'LV5', 'HO36', 'Mens Suit 2 Pc', 600, 2, 2, 4, '', ' Black', 1200, 'PAUL'),
(90, 'HEADOFFICE', '2013-11-21', 'LV5', 'HO36', 'Winter Coat', 600, 1, 1, 1, '', ' Tan', 600, 'PAUL'),
(91, 'HEADOFFICE', '2013-11-21', 'LV5', 'HO36', 'T-Shirt', 100, 1, 1, 1, '', ' Black', 100, 'PAUL'),
(92, 'HEADOFFICE', '2013-11-21', 'LV5', 'HO36', 'HAND GLOVE', 50, 1, 1, 1, '', ' Red', 50, 'PAUL'),
(93, 'HEADOFFICE', '2013-11-21', 'LV5', 'HO36', 'DC Men Native 2pc', 150, 1, 2, 2, '', ' Black', 150, 'PAUL'),
(94, 'HEADOFFICE', '2013-11-21', 'ECHE1', 'HO37', 'Mens Suit 2 Pc', 600, 1, 2, 2, '', ' Black', 600, 'PAUL'),
(95, 'HEADOFFICE', '2013-11-21', 'ECHE1', 'HO37', 'HAND GLOVE', 50, 1, 1, 1, '', ' Orange', 50, 'PAUL'),
(96, 'HEADOFFICE', '2013-11-21', 'ECHE1', 'HO37', 'Trousers Corduroy', 150, 1, 1, 1, '', ' Violet', 150, 'PAUL'),
(97, 'HEADOFFICE', '2013-11-21', 'ECHE1', 'HO37', 'DC Boubou/ Kaftan + Skirt/wrapper/trouser', 200, 1, 2, 2, '', ' Green', 200, 'PAUL'),
(98, 'HEADOFFICE', '2013-11-21', 'ECHE1', 'HO37', 'Women Native 3pc', 250, 1, 3, 3, '', ' Violet', 250, 'PAUL'),
(99, 'HEADOFFICE', '2013-11-26', 'ECHE1', 'HO38', 'Mens Suit 2 Pc', 600, 1, 2, 2, '', ' Black', 600, 'PAUL'),
(100, 'HEADOFFICE', '2013-11-26', 'ECHE1', 'HO38', 'Church Gown Large', 250, 1, 1, 1, '', ' Green', 250, 'PAUL'),
(101, 'HEADOFFICE', '2013-11-26', 'ECHE1', 'HO38', 'Church Gown Large', 250, 2, 1, 2, '', ' Violet', 500, 'PAUL'),
(102, 'HEADOFFICE', '2013-12-05', 'LV3', 'HO39', 'Mens Suit 2 Pc', 600, 1, 2, 2, '', ' Maroon', 600, 'PAUL'),
(103, 'HEADOFFICE', '2013-12-05', 'LV3', 'HO39', 'Mens Suit 2 Pc', 600, 1, 2, 2, '', ' Black', 600, 'PAUL'),
(104, 'HEADOFFICE', '2013-12-05', 'LV3', 'HO39', 'Bed Sheet + 4 pillow case', 300, 1, 5, 5, '', ' Green', 300, 'PAUL'),
(105, 'HEADOFFICE', '2013-12-05', 'LV3', 'HO39', 'T-Shirt', 100, 1, 1, 1, '', ' Biege', 100, 'PAUL'),
(106, 'HEADOFFICE', '2013-12-05', 'LV3', 'HO39', 'Church Gown Large', 250, 1, 1, 1, '', ' Green', 250, 'PAUL'),
(107, 'HEADOFFICE', '2013-12-05', 'LV6', 'HO40', 'Camisole', 50, 1, 1, 1, '', ' Black', 50, 'PAUL'),
(108, 'HEADOFFICE', '2013-12-05', 'LV6', 'HO40', 'LD Trouser', 100, 1, 1, 1, '', ' Green', 100, 'PAUL'),
(109, 'HEADOFFICE', '2013-12-05', 'LV6', 'HO40', 'Bed Sheet + 4 pillow case', 300, 1, 5, 5, '', ' Black', 300, 'PAUL'),
(110, 'HEADOFFICE', '2013-12-05', 'LV6', 'HO40', 'Boubou/ Kaftan + Skirt/wrapper/trouser', 200, 1, 2, 2, '', ' Orange', 200, 'PAUL'),
(111, 'HEADOFFICE', '2013-12-15', 'LV4', 'HO41', 'Trousers Corduroy', 150, 1, 1, 1, '', ' Tan', 150, 'PAUL'),
(112, 'HEADOFFICE', '2013-12-15', 'LV4', 'HO41', 'DC Boubou/ Kaftan + Skirt/wrapper/trouser', 200, 1, 2, 2, '', ' Orange', 200, 'PAUL'),
(113, 'HEADOFFICE', '2013-12-25', 'LV4', 'HO42', 'Trousers Corduroy', 150, 2, 1, 2, '', ' Black Black', 300, 'PAUL'),
(114, 'HEADOFFICE', '2013-12-29', 'LV7', 'HO43', 'Mens Suit 2 Pc', 2, 1, 2, 2, '', ' Orange', 2, 'DEJI'),
(115, 'HEADOFFICE', '2013-12-29', 'LV7', 'HO44', 'Mens Suit 2 Pc', 2, 2, 2, 4, '', ' Orange', 4, 'DEJI'),
(116, 'HEADOFFICE', '2013-12-29', 'LV7', 'HO44', 'Mens Suit 2 Pc', 2, 2, 2, 4, '', ' Orange', 4, 'DEJI'),
(117, 'HEADOFFICE', '2013-12-29', 'LV7', 'HO46', 'Trousers Corduroy', 1, 4, 1, 4, '', ' Orange', 4, 'DEJI'),
(118, 'HEADOFFICE', '2013-12-29', 'LV7', 'HO46', 'Trousers Corduroy', 1, 4, 1, 4, '', ' Orange', 4, 'DEJI'),
(119, 'HEADOFFICE', '2013-12-29', 'LV7', 'HO47', 'Trousers Corduroy', 1, 5, 1, 5, '', ' Orange', 5, 'DEJI'),
(120, 'HEADOFFICE', '2013-12-29', 'LV7', 'HO47', 'Trousers Corduroy', 1, 5, 1, 5, '', ' Orange', 5, 'DEJI'),
(121, 'HEADOFFICE', '2013-12-29', 'LV7', 'HO49', 'Trousers Corduroy', 1, 6, 1, 6, '', ' Orange', 6, 'DEJI'),
(122, 'HEADOFFICE', '2013-12-29', 'LV7', 'HO49', 'Trousers Corduroy', 1, 6, 1, 6, '', ' Orange', 6, 'DEJI'),
(123, 'HEADOFFICE', '2013-12-29', 'LV7', 'HO50', 'Kg Garment', 1, 6, 1, 6, '', ' Orange', 6, 'DEJI'),
(124, 'HEADOFFICE', '2013-12-29', 'LV3', 'HO51', 'LD Casual Men Suit  2 pc', 600, 1, 2, 2, '', ' Orange', 600, 'DEJI'),
(125, 'HEADOFFICE', '2013-12-29', 'LV3', 'HO51', 'Bed Sheet + 4 pillow case', 300, 1, 5, 5, '', ' Tan', 300, 'DEJI'),
(126, 'HEADOFFICE', '2013-12-29', 'LV3', 'HO51', 'Shirts', 100, 2, 1, 2, '', ' Green Orange', 200, 'DEJI'),
(127, 'HEADOFFICE', '2013-12-29', 'LV3', 'HO51', 'HAND GLOVE', 50, 1, 1, 1, '', ' Maroon', 50, 'DEJI'),
(128, 'HEADOFFICE', '2013-12-29', 'LV3', 'HO51', 'HAND GLOVE', 650, 1, 1, 1, ' Iron Stain', ' Violet', 650, 'DEJI'),
(130, 'HEADOFFICE', '2014-01-11', 'LV5', 'HO52', 'Shorts', 100, 1, 1, 1, '', ' Black', 100, 'DEJI'),
(131, 'HEADOFFICE', '2014-01-21', 'LV7', 'HO53', 'LD Casual Men Suit  2 pc', 600, 2, 2, 4, '', ' Maroon', 1200, 'PAUL'),
(132, 'HEADOFFICE', '2014-01-21', 'LV7', 'HO53', 'Towel Large', 150, 1, 1, 1, '', ' Orange', 150, 'PAUL'),
(133, 'HEADOFFICE', '2014-01-21', 'LV7', 'HO53', 'Towel Large', 150, 1, 1, 1, '', ' Violet', 150, 'PAUL'),
(134, 'HEADOFFICE', '2014-01-21', 'LV7', 'HO53', 'DC Boubou/ Kaftan + Skirt/wrapper/trouser', 200, 1, 2, 2, '', ' Green', 200, 'PAUL'),
(135, 'HEADOFFICE', '2014-02-03', 'LV4', 'HO54', 'LD Casual Men Suit  2 pc', 600, 2, 2, 4, '', ' Tan', 1200, 'PAUL'),
(136, 'HEADOFFICE', '2014-02-03', 'LV4', 'HO54', 'Towel Large', 150, 1, 1, 1, '', ' Black', 150, 'PAUL'),
(137, 'HEADOFFICE', '2014-02-05', 'ECHE1', 'HO55', 'LD Casual Men Suit  2 pc', 600, 2, 2, 4, '', ' Green', 1200, 'DEJI'),
(138, 'HEADOFFICE', '2014-02-05', 'ECHE1', 'HO55', 'Church Gown Large', 250, 3, 1, 3, '', ' Tan', 750, 'DEJI'),
(139, 'HEADOFFICE', '2014-02-05', 'LV3', 'HO56', 'Sport Jacket', 100, 1, 1, 1, '', ' Orange', 100, 'DEJI'),
(140, 'HEADOFFICE', '2014-02-05', 'LV3', 'HO56', 'Academic Gown', 250, 2, 1, 2, '', ' Orange Violet', 500, 'DEJI'),
(141, 'HEADOFFICE', '2014-02-05', 'LV3', 'HO56', 'Bed Sheet + 2 pillow case', 250, 1, 3, 3, '', ' Orange', 250, 'DEJI'),
(142, 'HEADOFFICE', '2014-02-05', 'LV4', 'HO57', 'Sport Jacket', 100, 1, 1, 1, '', ' Green', 100, 'DEJI'),
(143, 'HEADOFFICE', '2014-02-05', 'LV4', 'HO57', 'Towel Large', 150, 1, 1, 1, '', ' Black', 150, 'DEJI'),
(144, 'HEADOFFICE', '2014-02-07', 'LV6', 'HO58', 'Mens Suit 2 Pc', 600, 1, 2, 2, '', ' Black', 600, 'DEJI'),
(145, 'HEADOFFICE', '2014-02-11', 'LV4', 'HO59', 'LD Casual Men Suit  2 pc', 600, 1, 2, 2, '', ' Black', 600, 'PAUL'),
(146, 'HEADOFFICE', '2014-03-08', 'LV5', 'HO60', 'Trousers Corduroy', 150, 1, 1, 1, '', ' Orange', 150, 'PAUL'),
(147, 'HEADOFFICE', '2014-03-18', 'LV5', 'HO61', 'LD Casual Men Suit  2 pc', 600, 2, 2, 4, '', ' Tan', 1200, 'DEJI'),
(148, 'HEADOFFICE', '2014-03-18', 'LV5', 'HO61', 'Church Gown Large', 250, 2, 1, 2, '', ' Black Green', 500, 'DEJI'),
(149, 'HEADOFFICE', '2014-03-18', 'LV5', 'HO61', 'LD Trouser', 100, 2, 1, 2, '', ' Maroon Biege', 200, 'DEJI'),
(150, 'HEADOFFICE', '2014-03-24', 'LV5', 'HO62', 'LD Casual Men Suit  2 pc', 600, 2, 2, 4, '', ' Purple', 1200, 'PAUL'),
(151, 'HEADOFFICE', '2014-03-24', 'LV5', 'HO62', 'T-Shirt', 100, 2, 1, 2, '', ' Black', 200, 'PAUL'),
(152, 'HEADOFFICE', '2014-03-24', 'LV5', 'HO62', 'Sweater', 200, 2, 1, 2, '', ' Maroon', 400, 'PAUL'),
(153, 'HEADOFFICE', '2014-03-24', 'LV4', 'HO63', 'Mens Suit 2 Pc', 600, 2, 2, 4, '', ' Maroon', 1200, 'PAUL'),
(154, 'HEADOFFICE', '2014-03-24', 'LV4', 'HO63', 'DC Men Native 2pc', 150, 2, 2, 4, '', ' Orange', 300, 'PAUL'),
(155, 'HEADOFFICE', '2014-03-25', 'ECHE1', 'HO64', 'Mens Suit 2 Pc', 600, 1, 2, 2, '', ' Yellow', 600, 'PAUL'),
(156, 'HEADOFFICE', '2014-03-25', 'ECHE1', 'HO64', 'Ladies skirt suit 3 pc', 600, 1, 3, 3, 'Beeds, bad ZIP', ' Green', 600, 'PAUL'),
(157, 'HEADOFFICE', '2014-03-25', 'ECHE1', 'HO64', 'Ladies Trousers', 100, 1, 1, 1, '', ' Black', 100, 'PAUL'),
(158, 'HEADOFFICE', '2014-03-25', 'ECHE1', 'HO64', 'Skirt', 100, 3, 1, 3, '', ' Tan Maroon Black', 300, 'PAUL'),
(159, 'HEADOFFICE', '2014-03-27', 'LV4', 'HO65', 'LD Casual Men Suit  2 pc', 600, 2, 2, 4, '', ' Maroon', 1200, 'DEJI'),
(160, 'HEADOFFICE', '2014-03-27', 'LV4', 'HO65', 'T-Shirt', 100, 2, 1, 2, '', ' Biege', 200, 'DEJI'),
(161, 'HEADOFFICE', '2014-03-27', 'LV4', 'HO65', 'Church Gown Large', 250, 1, 1, 1, '', ' Black', 250, 'DEJI'),
(162, 'HEADOFFICE', '2014-04-01', 'LV4', 'HO66', 'LD Casual Men Suit  2 pc', 600, 2, 2, 4, '', ' Green', 1200, 'PAUL'),
(163, 'HEADOFFICE', '2014-04-01', 'LV4', 'HO66', 'Women Native 3pc', 250, 2, 3, 6, '', ' Black Green', 500, 'PAUL'),
(164, 'HEADOFFICE', '2014-04-01', 'LV4', 'HO66', 'DC Aso Oke Men 3 pc', 600, 3, 3, 9, '', ' Black', 1800, 'PAUL'),
(165, 'HEADOFFICE', '2014-04-12', 'LV4', 'HO67', 'LD Casual Men Suit  2 pc', 600, 1, 2, 2, '', ' Green', 600, 'DEJI'),
(166, 'HEADOFFICE', '2014-04-13', 'LV3', 'HO68', 'Mens Suit 2 Pc', 600, 1, 2, 2, '', ' Black', 600, 'DEJI'),
(167, 'HEADOFFICE', '2014-04-13', 'LV3', 'HO68', 'Kg Garment', 100, 4, 1, 4, '', ' Green', 400, 'DEJI'),
(168, 'HEADOFFICE', '2014-04-13', 'LV5', 'HO69', 'Sport Jacket', 100, 3, 1, 3, '', ' Maroon Tan', 300, 'DEJI'),
(169, 'HEADOFFICE', '2014-04-13', 'LV6', 'HO70', 'LD Casual Men Suit  2 pc', 600, 1, 2, 2, '', ' Tan', 600, 'DEJI'),
(170, 'HEADOFFICE', '2014-04-22', 'LV3', 'HO71', 'Sport Jacket', 100, 2, 1, 2, '', ' Orange', 200, 'PAUL'),
(171, 'HEADOFFICE', '2014-04-22', 'LV3', 'HO71', 'LD Casual Men Suit  2 pc', 600, 3, 2, 6, '', ' Black', 1800, 'PAUL'),
(172, 'HEADOFFICE', '2014-04-30', 'LV6', 'HO72', 'LD Casual Men Suit  2 pc', 600, 2, 2, 4, '', ' Maroon', 1200, 'PAUL'),
(173, 'HEADOFFICE', '2014-04-30', 'LV6', 'HO72', 'Church Gown Large', 250, 2, 1, 2, '', ' Black Green', 500, 'PAUL'),
(174, 'HEADOFFICE', '2014-05-01', 'Org11', 'HO73', 'Trousers', 100, 4, 1, 4, '', ' Maroon', 400, 'DEJI'),
(175, 'HEADOFFICE', '2014-05-01', 'LV6', 'HO74', 'Sweater', 200, 2, 1, 2, '', ' Green Orange', 400, 'DEJI'),
(176, 'HEADOFFICE', '2014-05-01', 'LV6', 'HO74', 'T-Shirt', 100, 4, 1, 4, '', ' Maroon', 400, 'DEJI'),
(177, 'HEADOFFICE', '2014-05-01', 'LV6', 'HO74', 'Church Gown Large', 250, 1, 1, 1, '', ' Black', 250, 'DEJI'),
(178, 'HEADOFFICE', '2014-05-01', 'LV4', 'HO75', 'Skirts Narrow Pleat', 100, 4, 1, 4, '', ' Orange', 400, 'DEJI'),
(179, 'HEADOFFICE', '2014-05-01', 'Org11', 'HO76', 'LD Casual Men Suit  2 pc', 600, 5, 2, 10, '', ' Maroon Tan', 3000, 'DEJI'),
(180, 'HEADOFFICE', '2014-05-01', 'ECHE1', 'HO77', 'LD Casual Men Suit  2 pc', 600, 1, 2, 2, '', ' Maroon', 600, 'PAUL'),
(181, 'HEADOFFICE', '2014-05-01', 'ECHE1', 'HO77', 'Church Gown Large', 250, 1, 1, 1, '', ' Black', 250, 'PAUL'),
(182, 'HEADOFFICE', '2014-05-01', 'ECHE1', 'HO77', 'DC Boubou/ Kaftan + Skirt/wrapper/trouser', 200, 2, 2, 4, '', ' Maroon Green', 400, 'PAUL'),
(183, 'HEADOFFICE', '2014-05-04', 'LV4', 'HO78', 'LD Casual Men Suit  2 pc', 600, 2, 2, 4, '', ' Tan', 1200, 'DEJI'),
(184, 'HEADOFFICE', '2014-05-04', 'LV4', 'HO78', 'Bed Sheet + 2 pillow case', 250, 1, 3, 3, '', ' Black', 250, 'DEJI'),
(185, 'HEADOFFICE', '2014-05-04', 'LV3', 'HO79', 'Bed Sheet + 1pillow case', 200, 2, 2, 4, '', ' Tan Violet', 400, 'PAUL'),
(186, 'HEADOFFICE', '2014-05-04', 'LV3', 'HO79', 'DC Boubou/ Kaftan + Skirt/wrapper/trouser', 200, 2, 2, 4, '', ' Tan', 400, 'PAUL'),
(187, 'HEADOFFICE', '2014-05-04', 'LV5', 'HO80', 'T-Shirt', 100, 2, 1, 2, '', ' Gold', 200, 'PAUL'),
(188, 'HEADOFFICE', '2014-05-04', 'LV5', 'HO80', 'Dress Suit ', 150, 2, 2, 4, '', ' Black', 300, 'PAUL'),
(189, 'HEADOFFICE', '2014-05-04', 'Org10', 'HO81', 'LD Casual Men Suit  2 pc', 600, 2, 2, 4, '', ' Biege', 1200, 'DEJI'),
(190, 'HEADOFFICE', '2014-05-04', 'Org10', 'HO81', 'Church Gown Large', 250, 2, 1, 2, '', ' Black', 500, 'DEJI'),
(191, 'HEADOFFICE', '2014-05-04', 'Org10', 'HO81', 'Women Native 3pc', 250, 2, 3, 6, '', ' Orange', 500, 'DEJI'),
(192, 'HEADOFFICE', '2014-05-09', 'LV4', 'HO82', 'LD Casual Men Suit  2 pc', 600, 2, 2, 4, '', ' Gold', 1200, 'DEJI'),
(193, 'HEADOFFICE', '2014-05-09', 'LV4', 'HO82', 'DC Men Native 2pc', 150, 2, 2, 4, '', ' Black Green', 300, 'DEJI'),
(194, 'HEADOFFICE', '2014-05-09', 'LV4', 'HO82', 'Church Gown Small', 250, 2, 1, 2, '', ' Maroon', 500, 'DEJI'),
(196, 'HEADOFFICE', '2014-05-10', 'Org13', 'HO83', 'Mens Suit 2 Pc', 600, 3, 2, 6, 'missing button', ' Green Orange', 1800, 'TOSIN'),
(199, 'HEADOFFICE', '2014-05-10', 'Org13', 'HO83', 'Shirts', 100, 5, 1, 5, 'Color run', ' Black', 500, 'TOSIN'),
(200, 'HEADOFFICE', '2014-05-10', 'Org13', 'HO83', 'Men Native 2 pc', 150, 2, 2, 4, '', ' White', 300, 'TOSIN'),
(201, 'HEADOFFICE', '2014-05-22', 'LV6', 'HO84', 'Mens Suit 2 Pc', 600, 2, 2, 4, '', ' Tan', 1200, 'DEJI'),
(202, 'HEADOFFICE', '2014-05-22', 'LV6', 'HO84', 'Dress Suit ', 150, 2, 2, 4, '', ' Biege', 300, 'DEJI'),
(203, 'HEADOFFICE', '2014-05-29', 'MW14', 'HO85', 'LD Casual Men Suit  2 pc', 2, 2, 2, 4, '', ' Black', 4, 'PAUL'),
(204, 'HEADOFFICE', '2014-05-29', 'MW14', 'HO85', 'Church Gown Large', 1, 1, 1, 1, '', ' Maroon', 1, 'PAUL'),
(205, 'HEADOFFICE', '2014-06-08', 'ECHE1', 'HO86', 'Bed Sheet', 150, 1, 1, 1, '', ' Maroon', 150, 'DEJI'),
(206, 'HEADOFFICE', '2014-06-08', 'ECHE1', 'HO87', 'LD Casual Men Suit  2 pc', 600, 1, 2, 2, '', ' Green', 600, 'DEJI'),
(207, 'HEADOFFICE', '2014-06-08', 'ECHE1', 'HO87', 'Church Gown Large', 250, 3, 1, 3, '', ' Maroon Tan', 750, 'DEJI'),
(208, 'HEADOFFICE', '2014-06-08', 'ECHE1', 'HO87', 'Towel Large', 150, 2, 1, 2, '', ' Biege', 300, 'DEJI'),
(209, 'HEADOFFICE', '2014-06-10', 'ECHE1', 'HO88', 'Mens Suit 2 Pc', 600, 1, 2, 2, '', ' Tan', 600, 'DEJI'),
(210, 'HEADOFFICE', '2014-06-24', 'ECHE1', 'HO89', 'Mens Suit 2 Pc', 600, 3, 2, 6, '', ' Tan', 1800, 'PAUL'),
(211, 'HEADOFFICE', '2014-06-24', 'ECHE1', 'HO89', 'Church Gown Large', 250, 1, 1, 1, '', ' Black', 250, 'PAUL'),
(212, 'HEADOFFICE', '2014-06-24', 'LV5', 'HO90', 'Church Gown Large', 250, 2, 1, 2, '', ' Black', 500, 'PAUL'),
(213, 'HEADOFFICE', '2014-06-24', 'LV5', 'HO90', 'T-Shirt', 100, 2, 1, 2, '', ' Tan', 200, 'PAUL'),
(214, 'OJO-ESTATE', '2014-06-29', 'LV12', 'OE12', 'Trousers Corduroy', 150, 2, 1, 2, '', ' Green', 300, 'PAUL'),
(215, 'OJO-ESTATE', '2014-06-29', 'LV12', 'OE12', 'Church Gown Large', 250, 3, 1, 3, '', ' Black', 750, 'PAUL'),
(217, 'OJO-ESTATE', '2014-06-29', 'LV3', 'OE13', 'Church Gown Large', 250, 2, 1, 2, '', ' Green', 500, 'PAUL'),
(218, 'OJO-ESTATE', '2014-06-29', 'LV3', 'OE13', 'T-Shirt', 100, 2, 1, 2, '', ' Green Black', 200, 'PAUL'),
(219, 'OJO-ESTATE', '2014-06-29', 'LV3', 'OE13', 'LD Trouser', 100, 2, 1, 2, '', ' Orange', 200, 'PAUL'),
(220, 'HEADOFFICE', '2014-07-01', 'LV3', 'HO91', 'Trousers', 100, 1, 1, 1, '', ' Maroon', 100, 'PAUL'),
(221, 'HEADOFFICE', '2014-07-04', 'LV3', 'HO92', 'LD Casual Men Suit  2 pc', 600, 2, 2, 4, '', ' Orange', 1200, 'PAUL'),
(222, 'HEADOFFICE', '2014-07-04', 'LV4', 'HO93', 'Mens Suit 2 Pc', 600, 2, 2, 4, '', ' Black', 1200, 'PAUL'),
(223, 'HEADOFFICE', '2014-07-04', 'LV3', 'HO94', 'Mens Suit 2 Pc', 600, 2, 2, 4, '', ' Maroon', 1200, 'PAUL'),
(224, 'HEADOFFICE', '2014-07-04', 'LV12', 'HO95', 'Bed Sheet', 150, 6, 1, 6, '', ' Black', 900, 'PAUL'),
(229, 'HEADOFFICE', '2014-07-07', 'ECHE1', 'HO96', 'Bed Sheet + 4 pillow case', 300, 2, 5, 10, '', ' Green Orange', 600, 'PAUL'),
(230, 'HEADOFFICE', '2014-07-07', 'ECHE1', 'HO96', 'Men Native 2 pc', 150, 2, 2, 4, '', ' Violet', 300, 'PAUL'),
(231, 'HEADOFFICE', '2014-07-07', 'LV3', 'HO97', 'Trousers', 100, 2, 1, 2, '', ' Tan', 200, 'PAUL'),
(232, 'HEADOFFICE', '2014-07-07', 'ECHE1', 'HO98', 'LD Casual Men Suit  2 pc', 600, 3, 2, 6, '', ' Green', 1800, 'PAUL'),
(233, 'HEADOFFICE', '2014-07-07', 'LV4', 'HO99', 'LD Casual Men Suit  2 pc', 600, 2, 2, 4, '', ' Maroon', 1200, 'PAUL'),
(234, 'HEADOFFICE', '2014-07-07', 'LV4', 'HO99', 'T-Shirt', 100, 2, 1, 2, '', ' Green', 200, 'PAUL'),
(235, 'HEADOFFICE', '2014-07-07', 'LV4', 'HO99', 'Dress Suit ', 150, 2, 2, 4, '', ' Maroon', 300, 'PAUL'),
(236, 'HEADOFFICE', '2014-07-22', 'ECHE1', 'HO100', 'Mens Suit 2 Pc', 600, 3, 2, 6, '', ' Tan', 1800, 'PAUL'),
(237, 'HEADOFFICE', '2014-07-22', 'ECHE1', 'HO100', 'Towel Medium', 200, 2, 1, 2, '', ' Green', 400, 'PAUL'),
(238, 'HEADOFFICE', '2014-07-22', 'ECHE1', 'HO100', 'Towel Medium', 200, 2, 1, 2, '', ' Green', 400, 'PAUL'),
(239, 'HEADOFFICE', '2014-07-22', 'ECHE1', 'HO100', 'Towel Medium', 200, 1, 1, 1, '', ' Tan', 200, 'PAUL'),
(240, 'HEADOFFICE', '2014-08-06', 'LV3', 'HO101', 'LD Casual Men Suit  2 pc', 600, 2, 2, 4, '', ' Green', 1200, 'PAUL'),
(241, 'HEADOFFICE', '2014-08-07', 'ECHE1', 'HO102', 'Trousers', 100, 2, 1, 2, '', ' Black', 200, 'PAUL'),
(242, 'HEADOFFICE', '2014-08-07', 'ECHE1', 'HO102', 'Church Gown Large', 250, 3, 1, 3, '', ' Maroon', 750, 'PAUL'),
(243, 'HEADOFFICE', '2014-08-07', 'ECHE1', 'HO102', 'DC Agbada only', 250, 2, 1, 2, '', ' Purple', 500, 'PAUL');

-- --------------------------------------------------------

--
-- Table structure for table `invoicebody2`
--

CREATE TABLE IF NOT EXISTS `invoicebody2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `branch` varchar(20) NOT NULL,
  `custid` varchar(20) NOT NULL,
  `invoiceid` varchar(20) NOT NULL,
  `itemid` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `qty` int(20) NOT NULL,
  `pricetype` varchar(20) NOT NULL,
  `totaldiscount` double DEFAULT '0',
  `totalshadow` double DEFAULT '0',
  `total` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `invoicebody2`
--

INSERT INTO `invoicebody2` (`id`, `branch`, `custid`, `invoiceid`, `itemid`, `price`, `qty`, `pricetype`, `totaldiscount`, `totalshadow`, `total`) VALUES
(1, 'HEADOFFICE_SALES', 'HQS14', 'HQS-1', '-80 yds SIN -1.0MM', 1400, 13, 'retail', 0, 0, 18200),
(3, 'HEADOFFICE_SALES', 'HQS20', 'HQS-42', '-80 yds SIN - 10MM', 1300, 23, 'wholesale', 0, 0, 29900),
(6, 'HEADOFFICE_SALES', 'HQS20', 'HQS-43', '-80 yds SIN - 10MM', 1300, 23, 'wholesale', 0, 0, 29900),
(7, 'HEADOFFICE_SALES', 'HQS20', 'HQS-43', '-80 yds SIN - 1.5MM', 1750, 89, 'wholesale', 0, 0, 155750),
(8, 'HEADOFFICE_SALES', 'HQS16', 'HQS-44', '-80 yds SIN - 10MM', 11000, 12, 'retail', 0, 0, 132000),
(9, 'HEADOFFICE_SALES', 'HQS16', 'HQS-44', '100 yds SIN --4MM', 7000, 23, 'retail', 0, 0, 161000),
(10, 'HEADOFFICE_SALES', 'HQS16', 'HQS-45', 'HKF CHINA THICK FLEX', 300, 14, 'retail', 0, 0, 4200),
(11, 'HEADOFFICE_SALES', 'HQS16', 'HQS-45', '100 yds SIN --16MM', 24500, 14, 'retail', 0, 0, 343000),
(12, 'HEADOFFICE_SALES', 'HQS17', 'HQS-46', '100 yds SIN --35MM', 59000, 20, 'retail', 0, 0, 1180000),
(13, 'HEADOFFICE_SALES', 'HQS18', 'HQS-47', '-80 yds SIN - 10MM', 11000, 10, 'retail', 0, 1000, 111000),
(14, 'HEADOFFICE_SALES', 'HQS19', 'HQS-48', '-80 yds SIN - 10MM', 11000, 13, 'retail', 0, 0, 143000),
(15, 'HEADOFFICE_SALES', 'HQS18', 'HQS-49', '-80 yds SIN - 2.5MM', 2800, 40, 'retail', 0, 0, 112000),
(16, 'HEADOFFICE_SALES', 'ECHE1', 'HQS-50', 'ALW NEWCITY 16MM', 1700, 188, 'retail', 0, 0, 319600),
(17, 'HEADOFFICE_SALES', 'ECHE1', 'HQS-50', '-80 yds SIN - 2.5MM', 2800, 60, 'retail', 0, 0, 168000);

-- --------------------------------------------------------

--
-- Table structure for table `invoiceday`
--

CREATE TABLE IF NOT EXISTS `invoiceday` (
  `invoiceid` varchar(20) NOT NULL,
  `invday` varchar(20) NOT NULL,
  PRIMARY KEY (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoiceday`
--

INSERT INTO `invoiceday` (`invoiceid`, `invday`) VALUES
('HG10', 'Mon'),
('HG11', 'Mon'),
('HG6', 'Mon'),
('HG7', 'Mon'),
('HG8', 'Tue'),
('HG9', 'Sat'),
('HO10', 'Thur'),
('HO100', 'Thursday'),
('HO101', 'Friday'),
('HO11', 'Wed'),
('HO12', 'Thur'),
('HO13', 'Thur'),
('HO29', 'Fri'),
('HO30', 'Thur'),
('HO31', 'Thur'),
('HO32', 'Fri'),
('HO33', 'Fri'),
('HO34', 'Wed'),
('HO35', 'Fri'),
('HO36', 'Sat'),
('HO37', 'Sat'),
('HO38', 'Thur'),
('HO39', 'Sat'),
('HO40', 'Sat'),
('HO41', 'Wed'),
('HO42', 'Fri'),
('HO43', 'Tue'),
('HO44', 'Tue'),
('HO46', 'Tue'),
('HO47', 'Tue'),
('HO49', 'Tue'),
('HO50', 'Tue'),
('HO51', 'Tue'),
('HO52', 'Tue'),
('HO53', 'Thur'),
('HO54', 'Wed'),
('HO55', 'Fri'),
('HO57', 'Fri'),
('HO58', 'Mon'),
('HO59', 'Thur'),
('HO60', 'Mon'),
('HO61', 'Thur'),
('HO62', 'Wed'),
('HO63', 'Wed'),
('HO64', 'Thur'),
('HO65', 'Sat'),
('HO66', 'Thur'),
('HO67', 'Wed'),
('HO68', 'Tue'),
('HO69', 'Tue'),
('HO70', 'Tue'),
('HO71', 'Thur'),
('HO72', 'Fri'),
('HO73', 'Sat'),
('HO74', 'Sat'),
('HO75', 'Sat'),
('HO76', 'Sat'),
('HO77', 'Sat'),
('HO78', 'Tue'),
('HO79', 'Thursday'),
('HO80', 'Wednesday'),
('HO81', 'Friday'),
('HO82', 'Monday'),
('HO83', 'Monday'),
('HO84', 'Saturday'),
('HO85', 'Saturday'),
('HO86', 'Tuesday'),
('HO87', 'Tuesday'),
('HO88', 'Tuesday'),
('HO89', 'Thursday'),
('HO9', 'Thur'),
('HO90', 'Thursday'),
('HO91', 'Thursday'),
('HO93', 'Sunday'),
('HO94', 'Sunday'),
('HO95', 'Sunday'),
('HO96', 'Thursday'),
('HO97', 'Friday'),
('HO98', 'Wednesday'),
('HO99', 'Wednesday'),
('KD3', 'Wed'),
('KD4', 'Wed'),
('MGA4', 'Thur'),
('MGA5', 'Fri'),
('MGB2', 'Thur'),
('OE12', 'Tuesday'),
('OE13', 'Tuesday'),
('OG3', 'Sat'),
('OG4', 'Sat'),
('OG5', 'Mon'),
('OG6', 'Tue'),
('OG7', 'Tue'),
('OG8', 'Tue');

-- --------------------------------------------------------

--
-- Table structure for table `invoicegen`
--

CREATE TABLE IF NOT EXISTS `invoicegen` (
  `branch_id` varchar(50) NOT NULL,
  `maxnumber` int(10) NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoicegen`
--

INSERT INTO `invoicegen` (`branch_id`, `maxnumber`) VALUES
('B25', 0),
('CA1', 0),
('HOSR', 4),
('HQS', 50),
('PLZ', 0),
('WH', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoicegentender`
--

CREATE TABLE IF NOT EXISTS `invoicegentender` (
  `branch_id` varchar(50) NOT NULL,
  `maxnumber` int(10) NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoicegentender`
--

INSERT INTO `invoicegentender` (`branch_id`, `maxnumber`) VALUES
('B25', 0),
('CA1', 0),
('HQS', 2),
('PLZ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE IF NOT EXISTS `issues` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `qty` int(20) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `date`, `name`, `qty`, `price`, `total`) VALUES
(1, '2013-12-28', 'Chemical', 2, 500, 1000),
(2, '2014-05-10', 'Chemical', 4, 500, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE IF NOT EXISTS `journal` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `naration` varchar(50) NOT NULL,
  `debitacct` varchar(50) NOT NULL,
  `creditacct` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `journal`
--

INSERT INTO `journal` (`id`, `date`, `naration`, `debitacct`, `creditacct`, `amount`) VALUES
(1, '2013-09-08', 'From sales to petty cash', 'Petty Cash', 'Cash-At-Hand', 500);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE IF NOT EXISTS `loan` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `staff` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `payterm` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`id`, `date`, `staff`, `amount`, `payterm`) VALUES
(1, '2013-09-08', 'Ogundipe Ayodeji', 4000, '50%');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=259 ;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `username`, `date`, `time`) VALUES
(1, 'paul', '2014-02-06', '00:00:00'),
(2, 'paul', '2014-02-06', '00:00:00'),
(3, 'deji', '2014-02-06', '00:00:00'),
(4, 'deji', '2014-02-06', '00:00:00'),
(5, 'deji', '2014-02-05', '00:00:00'),
(6, 'deji', '2014-02-05', '00:00:00'),
(7, 'deji', '2014-02-05', '00:00:00'),
(8, 'deji', '2014-02-05', '00:00:00'),
(9, 'deji', '2014-02-05', '13:16:21'),
(10, 'deji', '2014-02-05', '13:21:48'),
(11, 'deji', '2014-02-05', '13:35:26'),
(12, 'paul', '2014-02-05', '13:35:39'),
(13, 'paul', '2014-02-05', '13:36:50'),
(14, 'deji', '2014-02-05', '22:25:06'),
(15, 'paul', '2014-02-05', '22:27:15'),
(16, 'paul', '2014-02-05', '22:28:46'),
(17, 'paul', '2014-02-05', '22:29:10'),
(18, 'deji', '2014-02-05', '10:37:15 PM'),
(19, 'paul', '2014-02-05', '10:39:32 PM'),
(20, 'deji', '2014-02-05', '10:40:2 PM'),
(21, 'deji', '2014-02-06', '11:37:38 AM'),
(22, 'deji', '2014-02-07', '0:14:50 PM'),
(23, 'deji', '2014-02-07', '2:34:29 PM'),
(24, 'deji', '2014-02-07', '3:6:5 PM'),
(25, 'deji', '2014-02-07', '3:12:43 PM'),
(26, 'deji', '2014-02-07', '7:27:35 PM'),
(27, 'deji', '2014-02-07', '8:18:18 PM'),
(28, 'deji', '2014-02-07', '9:25:33 PM'),
(29, 'deji', '2014-02-08', '9:48:42 AM'),
(30, 'deji', '2014-02-08', '4:38:48 PM'),
(31, 'deji', '2014-02-08', '6:3:28 PM'),
(32, 'deji', '2014-02-08', '6:55:47 PM'),
(33, 'paul', '2014-02-08', '8:15:1 PM'),
(34, 'deji', '2014-02-08', '8:15:14 PM'),
(35, 'deji', '2014-02-09', '6:35:11 PM'),
(36, 'paul', '2014-02-11', '8:41:50 AM'),
(37, 'deji', '2014-02-11', '5:51:47 PM'),
(38, 'deji', '2014-02-11', '7:57:42 PM'),
(39, 'paul', '2014-02-11', '11:10:51 PM'),
(40, 'paul', '2014-02-11', '11:14:36 PM'),
(41, 'deji', '2014-02-12', '0:15:39 AM'),
(42, 'paul', '2014-02-12', '6:19:16 AM'),
(43, 'deji', '2014-02-14', '8:45:31 PM'),
(44, 'deji', '2014-02-14', '8:47:32 PM'),
(45, 'paul', '2014-02-14', '8:48:14 PM'),
(46, 'paul', '2014-02-14', '8:49:3 PM'),
(47, 'paul', '2014-02-14', '9:19:43 PM'),
(48, 'deji', '2014-02-14', '9:20:33 PM'),
(49, 'deji', '2014-02-19', '7:11:56 AM'),
(50, 'deji', '2014-03-08', '8:30:35 AM'),
(51, 'paul', '2014-03-08', '9:43:4 AM'),
(52, 'deji', '2014-03-08', '9:45:14 AM'),
(53, 'deji', '2014-03-18', '2:37:47 PM'),
(54, 'deji', '2014-03-18', '2:38:59 PM'),
(55, 'deji', '2014-03-18', '2:39:45 PM'),
(56, 'deji', '2014-03-18', '2:44:2 PM'),
(57, 'paul', '2014-03-24', '7:52:43 PM'),
(58, 'paul', '2014-03-24', '7:55:45 PM'),
(59, 'paul', '2014-03-24', '9:14:7 PM'),
(60, 'paul', '2014-03-25', '9:14:49 AM'),
(61, 'deji', '2014-03-25', '9:39:42 AM'),
(62, 'deji', '2014-03-25', '9:43:47 AM'),
(63, 'paul', '2014-03-25', '0:21:38 PM'),
(64, 'paul', '2014-03-25', '0:49:41 PM'),
(65, 'deji', '2014-03-27', '11:6:30 AM'),
(66, 'deji', '2014-03-27', '11:9:14 AM'),
(67, 'deji', '2014-03-27', '11:18:5 AM'),
(68, 'deji', '2014-03-27', '0:30:45 PM'),
(69, 'paul', '2014-04-01', '11:50:17 AM'),
(70, 'paul', '2014-04-01', '0:46:42 PM'),
(71, 'deji', '2014-04-07', '11:43:49 AM'),
(72, 'deji', '2014-04-07', '11:57:59 AM'),
(73, 'deji', '2014-04-12', '4:20:25 PM'),
(74, 'deji', '2014-04-12', '6:31:52 PM'),
(75, 'deji', '2014-04-12', '6:53:58 PM'),
(76, 'deji', '2014-04-12', '7:6:30 PM'),
(77, 'deji', '2014-04-13', '0:45:40 AM'),
(78, 'deji', '2014-04-13', '0:54:36 AM'),
(79, 'deji', '2014-04-13', '1:2:16 AM'),
(80, 'deji', '2014-04-13', '1:4:35 AM'),
(81, 'paul', '2014-04-13', '1:7:57 AM'),
(82, 'deji', '2014-04-13', '5:30:36 PM'),
(83, 'paul', '2014-04-13', '6:5:44 PM'),
(84, 'paul', '2014-04-13', '7:12:48 PM'),
(85, 'deji', '2014-04-14', '11:49:0 AM'),
(86, 'paul', '2014-04-14', '0:43:20 PM'),
(87, 'paul', '2014-04-14', '1:17:1 PM'),
(88, 'paul', '2014-04-14', '1:18:12 PM'),
(89, 'deji', '2014-04-14', '3:8:53 PM'),
(90, 'paul', '2014-04-14', '3:14:10 PM'),
(91, 'paul', '2014-04-14', '3:15:0 PM'),
(92, 'paul', '2014-04-14', '3:16:2 PM'),
(93, 'paul', '2014-04-14', '3:17:55 PM'),
(94, 'paul', '2014-04-14', '8:55:40 PM'),
(95, 'deji', '2014-04-14', '8:59:11 PM'),
(96, 'deji', '2014-04-16', '0:53:41 PM'),
(97, 'paul', '2014-04-16', '0:56:5 PM'),
(98, 'paul', '2014-04-22', '1:37:39 PM'),
(99, 'paul', '2014-04-25', '0:12:17 PM'),
(100, 'deji', '2014-04-30', '0:5:43 PM'),
(101, 'paul', '2014-04-30', '11:50:24 PM'),
(102, 'deji', '2014-05-01', '0:7:0 PM'),
(103, 'paul', '2014-05-01', '3:22:51 PM'),
(104, 'deji', '2014-05-01', '4:21:11 PM'),
(105, 'deji', '2014-05-02', '4:6:12 PM'),
(106, 'deji', '2014-05-03', '0:57:35 PM'),
(107, 'deji', '2014-05-04', '11:11:18 AM'),
(108, 'deji', '2014-05-04', '11:21:39 AM'),
(109, 'deji', '2014-05-04', '11:35:58 AM'),
(110, 'paul', '2014-05-04', '1:47:15 PM'),
(111, 'deji', '2014-05-04', '2:18:59 PM'),
(112, 'paul', '2014-05-04', '5:6:15 PM'),
(113, 'paul', '2014-05-05', '7:34:37 AM'),
(114, 'paul', '2014-05-05', '7:35:25 AM'),
(115, 'deji', '2014-05-05', '7:50:27 AM'),
(116, 'paul', '2014-05-05', '0:41:45 PM'),
(117, 'deji', '2014-05-05', '0:42:55 PM'),
(118, 'paul', '2014-05-07', '0:9:28 PM'),
(119, 'deji', '2014-05-07', '0:25:1 PM'),
(120, 'deji', '2014-05-07', '0:26:53 PM'),
(121, 'deji', '2014-05-07', '0:33:56 PM'),
(122, 'deji', '2014-05-08', '4:19:15 PM'),
(123, 'deji', '2014-05-08', '4:21:29 PM'),
(124, 'deji', '2014-05-08', '4:25:23 PM'),
(125, 'deji', '2014-05-09', '0:8:40 AM'),
(126, 'deji', '2014-05-09', '0:53:20 AM'),
(127, 'deji', '2014-05-09', '0:54:41 AM'),
(128, 'deji', '2014-05-09', '9:21:48 AM'),
(129, 'deji', '2014-05-09', '9:56:48 AM'),
(130, 'deji', '2014-05-09', '1:47:51 PM'),
(131, 'deji', '2014-05-09', '1:47:51 PM'),
(132, 'deji', '2014-05-09', '2:38:4 PM'),
(133, 'paul', '2014-05-10', '8:9:14 AM'),
(134, 'paul', '2014-05-10', '1:32:18 PM'),
(135, 'deji', '2014-05-10', '1:33:0 PM'),
(136, 'tosin', '2014-05-10', '1:58:12 PM'),
(137, 'tosin', '2014-05-10', '4:20:43 PM'),
(138, 'deji', '2014-05-10', '4:41:34 PM'),
(139, 'deji', '2014-05-10', '5:41:18 PM'),
(140, 'deji', '2014-05-12', '5:56:16 PM'),
(141, 'deji', '2014-05-12', '6:0:50 PM'),
(142, 'deji', '2014-05-13', '0:45:27 PM'),
(143, 'deji', '2014-05-13', '0:48:29 PM'),
(144, 'deji', '2014-05-13', '1:5:25 PM'),
(145, 'paul', '2014-05-13', '1:47:29 PM'),
(146, 'deji', '2014-05-20', '9:49:37 AM'),
(147, 'deji', '2014-05-20', '3:28:33 PM'),
(148, 'deji', '2014-05-22', '0:15:41 PM'),
(149, 'deji', '2014-05-22', '0:30:14 PM'),
(150, 'deji', '2014-05-22', '1:32:10 PM'),
(151, 'paul', '2014-05-27', '1:54:47 PM'),
(152, 'paul', '2014-05-29', '9:42:52 AM'),
(153, 'paul', '2014-05-29', '9:42:52 AM'),
(154, 'paul', '2014-05-29', '9:42:52 AM'),
(155, 'paul', '2014-05-29', '10:20:37 AM'),
(156, 'deji', '2014-05-29', '10:57:29 AM'),
(157, 'deji', '2014-05-29', '11:11:55 AM'),
(158, 'paul', '2014-05-31', '11:1:4 AM'),
(159, 'deji', '2014-05-31', '11:17:53 AM'),
(160, 'deji', '2014-06-01', '6:4:6 PM'),
(161, 'deji', '2014-06-01', '6:7:24 PM'),
(162, 'deji', '2014-06-01', '6:8:25 PM'),
(163, 'deji', '2014-06-01', '6:25:55 PM'),
(164, 'deji', '2014-06-01', '6:40:17 PM'),
(165, 'deji', '2014-06-05', '0:33:9 PM'),
(166, 'deji', '2014-06-08', '5:14:25 PM'),
(167, 'paul', '2014-06-08', '5:21:46 PM'),
(168, 'deji', '2014-06-08', '5:24:37 PM'),
(169, 'deji', '2014-06-10', '5:5:10 PM'),
(170, 'paul', '2014-06-12', '8:3:28 PM'),
(171, 'deji', '2014-06-13', '6:3:1 PM'),
(172, 'deji', '2014-06-18', '0:22:42 PM'),
(173, 'paul', '2014-06-24', '11:47:22 AM'),
(174, 'paul', '2014-06-25', '9:28:29 PM'),
(175, 'paul', '2014-06-25', '9:33:7 PM'),
(176, 'paul', '2014-06-25', '9:34:30 PM'),
(177, 'paul', '2014-06-26', '11:41:56 AM'),
(178, 'paul', '2014-06-26', '10:41:55 PM'),
(179, 'paul', '2014-06-29', '0:39:53 PM'),
(180, 'paul', '2014-06-29', '0:41:7 PM'),
(181, 'paul', '2014-06-29', '0:42:52 PM'),
(182, 'paul', '2014-06-29', '0:49:5 PM'),
(183, 'paul', '2014-06-29', '0:50:41 PM'),
(184, 'paul', '2014-06-29', '0:53:45 PM'),
(185, 'paul', '2014-06-29', '0:55:24 PM'),
(186, 'paul', '2014-06-29', '0:55:39 PM'),
(187, 'paul', '2014-06-29', '0:55:49 PM'),
(188, 'paul', '2014-06-29', '0:56:21 PM'),
(189, 'paul', '2014-06-29', '1:38:5 PM'),
(190, 'paul', '2014-06-29', '1:46:27 PM'),
(191, 'paul', '2014-06-29', '2:29:14 PM'),
(192, 'paul', '2014-06-29', '3:22:55 PM'),
(193, 'paul', '2014-06-30', '2:32:39 AM'),
(194, 'paul', '2014-06-30', '2:37:30 AM'),
(195, 'DEJI', '2014-06-30', '2:42:58 AM'),
(196, 'deji', '2014-06-30', '2:46:13 AM'),
(197, 'paul', '2014-07-01', '8:34:55 AM'),
(198, 'paul', '2014-07-01', '8:39:40 AM'),
(199, 'paul', '2014-07-01', '8:41:41 AM'),
(200, 'paul', '2014-07-02', '0:28:32 PM'),
(201, 'paul', '2014-07-03', '0:38:35 PM'),
(202, 'paul', '2014-07-04', '4:0:1 AM'),
(203, 'paul', '2014-07-04', '4:17:39 AM'),
(204, 'paul', '2014-07-04', '5:14:2 AM'),
(205, 'paul', '2014-07-05', '11:48:58 AM'),
(206, 'paul', '2014-07-05', '2:43:18 PM'),
(207, 'paul', '2014-07-07', '2:38:30 AM'),
(208, 'paul', '2014-07-07', '3:6:12 AM'),
(209, 'paul', '2014-07-07', '3:8:25 AM'),
(210, 'paul', '2014-07-07', '0:56:39 PM'),
(211, 'paul', '2014-07-07', '0:57:35 PM'),
(212, 'paul', '2014-07-07', '1:0:0 PM'),
(213, 'paul', '2014-07-07', '1:0:51 PM'),
(214, 'paul', '2014-07-07', '1:1:24 PM'),
(215, 'paul', '2014-07-07', '1:2:41 PM'),
(216, 'paul', '2014-07-07', '2:31:22 PM'),
(217, 'paul', '2014-07-07', '10:9:42 PM'),
(218, 'paul', '2014-07-08', '2:12:28 AM'),
(219, 'deji', '2014-07-08', '4:58:47 AM'),
(220, 'deji', '2014-07-09', '2:27:14 AM'),
(221, 'paul', '2014-07-11', '7:29:43 AM'),
(222, 'paul', '2014-07-13', '9:45:56 AM'),
(223, 'paul', '2014-07-13', '9:48:7 AM'),
(224, 'deji', '2014-07-17', '4:49:24 AM'),
(225, 'paul', '2014-07-17', '4:49:33 AM'),
(226, 'paul', '2014-07-22', '2:17:32 AM'),
(227, 'paul', '2014-08-06', '11:9:49 PM'),
(228, 'deji', '2014-08-06', '11:27:55 PM'),
(229, 'paul', '2014-08-06', '11:50:6 PM'),
(230, 'paul', '2014-08-07', '3:36:7 AM'),
(231, 'paul', '2014-08-07', '6:5:54 AM'),
(232, 'paul', '2014-08-07', '7:0:36 AM'),
(233, 'deji', '2014-08-09', '4:3:25 AM'),
(234, 'deji', '2014-08-09', '4:27:38 AM'),
(235, 'deji', '2014-08-09', '5:16:49 AM'),
(236, 'paul', '2014-08-09', '6:28:53 AM'),
(237, 'deji', '2014-08-09', '6:29:40 AM'),
(238, 'deji', '2014-08-09', '6:30:46 AM'),
(239, 'deji', '2014-08-09', '6:31:13 AM'),
(240, 'deji', '2014-08-09', '6:31:20 AM'),
(241, 'deji', '2014-08-09', '8:16:19 AM'),
(242, 'deji', '2014-08-09', '8:19:7 AM'),
(243, 'femi', '2014-08-09', '8:28:2 AM'),
(244, 'deji', '2014-08-09', '8:31:32 AM'),
(245, 'deji', '2014-08-10', '6:40:38 AM'),
(246, 'deji', '2014-08-11', '7:31:39 AM'),
(247, 'deji', '2014-08-11', '7:32:39 AM'),
(248, 'deji', '2014-08-13', '2:7:35 AM'),
(249, 'deji', '2014-09-09', '2:28:0 AM'),
(250, 'clever', '2014-09-24', '2:24:41 PM'),
(251, 'clever', '2014-09-24', '8:32:18 AM'),
(252, 'clever', '2014-09-24', '11:16:8 AM'),
(253, 'clever', '2014-09-24', '1:31:40 PM'),
(254, 'clever', '2014-09-25', '1:5:41 AM'),
(255, 'clever', '2014-09-25', '5:49:4 AM'),
(256, 'clever', '2014-09-25', '5:49:35 AM'),
(257, 'clever', '2014-09-29', '5:14:53 AM'),
(258, 'clever', '2014-09-29', '5:49:8 AM');

-- --------------------------------------------------------

--
-- Table structure for table `odicproducts`
--

CREATE TABLE IF NOT EXISTS `odicproducts` (
  `product_id` varchar(100) NOT NULL,
  `product_desc` varchar(100) NOT NULL,
  `price` float(10,2) NOT NULL,
  `lowerpriceretail` float(10,2) NOT NULL,
  `higherpriceretail` float(10,2) NOT NULL,
  `wholesaleprice` float(10,2) NOT NULL,
  `lowerpricewholesale` float(10,2) NOT NULL,
  `higherpricewholesale` float(10,2) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odicproducts`
--

INSERT INTO `odicproducts` (`product_id`, `product_desc`, `price`, `lowerpriceretail`, `higherpriceretail`, `wholesaleprice`, `lowerpricewholesale`, `higherpricewholesale`) VALUES
('-80 yds SIN - 1.5MM', '1.5mm ODIC Single Wire', 1900.00, 1900.00, 1800.00, 1800.00, 1800.00, 1900.00),
('-80 yds SIN - 10MM', '10mm ODIC Single Wire', 11000.00, 10500.00, 11000.00, 1300.00, 1300.00, 1400.00),
('-80 yds SIN - 16MM', '16mm ODIC Single Wire', 17000.00, 16500.00, 17000.00, 16500.00, 16500.00, 16900.00),
('-80 yds SIN - 2.5MM', '2.5mm ODIC Single Wire', 2800.00, 2750.00, 2850.00, 2750.00, 2750.00, 2750.00),
('-80 yds SIN - 25MM', '25mm ODIC Single Wire', 32000.00, 31500.00, 32000.00, 30000.00, 30000.00, 32000.00),
('-80 yds SIN - 35MM', '35mm ODIC Single Wire', 48000.00, 47000.00, 49000.00, 47000.00, 47000.00, 48000.00),
('-80 yds SIN -- 4MM', '4mm ODIC Single Wire', 4500.00, 4400.00, 4600.00, 4200.00, 4000.00, 4400.00),
('-80 yds SIN -- 6MM', '6mm ODIC Single Wire', 6300.00, 6200.00, 6500.00, 6200.00, 6000.00, 6300.00),
('-80 yds SIN -1.0MM', '1.0mm ODIC Single Wire', 1400.00, 1400.00, 1200.00, 1200.00, 1200.00, 1300.00),
('100 yds SIN --10MM', '10mm ODIC Single Wire', 17000.00, 16900.00, 17000.00, 16800.00, 16800.00, 17000.00),
('100 yds SIN --16MM', '16mm ODIC Single Wire', 24500.00, 24000.00, 25000.00, 23000.00, 23000.00, 24000.00),
('100 yds SIN --25MM', '25mm ODIC Single Wire', 38000.00, 37000.00, 38000.00, 36000.00, 35000.00, 37000.00),
('100 yds SIN --35MM', '35mm ODIC Single Wire', 59000.00, 57000.00, 60000.00, 57000.00, 56500.00, 58000.00),
('100 yds SIN --4MM', '4mm ODIC Single Wire', 7000.00, 6900.00, 7000.00, 6800.00, 6800.00, 7000.00),
('100 yds SIN --6MM', '6mm ODIC Single Wire', 9000.00, 8900.00, 9000.00, 8800.00, 8800.00, 9000.00),
('100 yds SIN -1.0MM', '1.0mm ODIC Single Wire', 1900.00, 1900.00, 2000.00, 1900.00, 1800.00, 1900.00),
('100 yds SIN -1.5MM', '1.5mm ODIC Single Wire', 2900.00, 2900.00, 3000.00, 2900.00, 2800.00, 2900.00),
('100 yds SIN -2.5MM', '2.5mm ODIC Single Wire', 4200.00, 4000.00, 4200.00, 4200.00, 4000.00, 4200.00),
('80yds SIN New-1.0MM', '1.0mm Newcity Single Wire', 1200.00, 1150.00, 1300.00, 1150.00, 1100.00, 1200.00),
('80yds SIN New-1.5MM', '1.5mm Newcity Single Wire', 1400.00, 1350.00, 1500.00, 1350.00, 1350.00, 1400.00),
('80yds SIN New-10MM', '10mm Newcity Single Wire', 9500.00, 9500.00, 10000.00, 9500.00, 9400.00, 9500.00),
('80yds SIN New-16MM', '16mm Newcity Single Wire', 14000.00, 13500.00, 15000.00, 13500.00, 13000.00, 14000.00),
('80yds SIN New-2.5MM', '2.5mm Newcity Single Wire', 2400.00, 2350.00, 2500.00, 2350.00, 2350.00, 2400.00),
('80yds SIN New-4MM', '4mm Newcity Single Wire', 3800.00, 3800.00, 4000.00, 3800.00, 3800.00, 3900.00),
('80yds SIN New-6MM', '6mm Newcity Single Wire', 5800.00, 5800.00, 6000.00, 5800.00, 5700.00, 5800.00),
('ALC- 100MM (AAC)', 'Aluminium conductor 100mm (AAC)', 138.00, 138.00, 138.00, 137.00, 137.00, 137.00),
('ALC- 50MM (AAC)', 'Aluminium conductor 50mm (AAC)', 77.00, 77.00, 77.00, 77.00, 77.00, 77.00),
('ALC- 70MM (AAC)', 'Aluminium conductor 70mm (AAC)', 110.00, 110.00, 110.00, 110.00, 110.00, 110.00),
('ALW CHINA 16MM', 'Aluminium-wire China 16mm', 700.00, 700.00, 700.00, 650.00, 650.00, 680.00),
('ALW NEWCITY 16MM', 'Aluminium-wire Newcity 16mm', 1700.00, 1700.00, 2000.00, 1700.00, 1700.00, 1900.00),
('ALW NEWCITY 25MM', 'Aluminium-wire Newcity 25mm', 4000.00, 4000.00, 4500.00, 4000.00, 3900.00, 4000.00),
('ALW NEWCITY 6.0MM', 'Aluminium-wire Newcity 6mm', 700.00, 650.00, 700.00, 650.00, 650.00, 700.00),
('ALW ODIC 16MM Big', 'Aluminium-wire Odic 16mm Big', 4000.00, 4000.00, 4000.00, 4000.00, 4000.00, 4000.00),
('ALW ODIC 16MM Small', 'Aluminium-wire Odic 16mm Small', 2500.00, 2500.00, 2600.00, 2500.00, 2400.00, 2500.00),
('ALW ODIC 25MM B PVC', 'Aluminium-wire Odic 25mm B PVC', 7000.00, 7000.00, 7000.00, 7000.00, 6500.00, 7000.00),
('ALW ODIC 25MM S PVC', 'Aluminium-wire Odic 25mm S PVC', 6500.00, 6500.00, 6500.00, 6500.00, 6500.00, 6500.00),
('ALW ODIC 25MM Small', 'Aluminium-wire Odic 25mm Small', 6000.00, 6000.00, 6000.00, 6000.00, 5800.00, 6000.00),
('ALW ODIC 6MM', 'Aluminium-wire Odic 6mm', 1300.00, 1300.00, 1400.00, 1300.00, 1200.00, 1300.00),
('ALW RECLYNE 16MM', 'Aluminium-wire Reclyne 16mm', 170.00, 170.00, 170.00, 170.00, 170.00, 170.00),
('ALW RECLYNE 25MM', 'Aluminium-wire Reclyne 25mm', 220.00, 220.00, 220.00, 210.00, 210.00, 210.00),
('ALW RECLYNE 35MM', 'Aluminium-wire Reclyne 35mm', 320.00, 310.00, 320.00, 310.00, 310.00, 310.00),
('ALW RECLYNE 50MM', 'Aluminium-wire Reclyne 50mm', 430.00, 430.00, 440.00, 430.00, 430.00, 430.00),
('ALW RECLYNE 70MM', 'Aluminium-wire Reclyne 70mm', 580.00, 580.00, 580.00, 580.00, 580.00, 580.00),
('FW CHINA 1.0M TW-Big', 'Flatwire China 1mm Twin-Big', 1100.00, 1100.00, 1200.00, 1100.00, 1050.00, 1100.00),
('FW CHINA 1.0M TW-Med', 'Flatwire China 1mm Twin-Medium', 800.00, 800.00, 800.00, 800.00, 800.00, 800.00),
('FW CHINA 1.0M TW-Sma', 'Flatwire China 1mm Twin-Small', 600.00, 600.00, 650.00, 600.00, 600.00, 600.00),
('FW CHINA 1.5MM x 3C', 'Flatwire China 1.5mm x 3core', 1400.00, 1300.00, 1500.00, 1300.00, 1300.00, 1400.00),
('FW CHINA 2.5MM x 3C', 'Flatwire China 2.5mm x 3core', 1900.00, 1900.00, 2000.00, 1900.00, 1900.00, 1900.00),
('FW CHINA T/E 1.0MM', 'Flatwire China 1.0mm T/E', 750.00, 750.00, 800.00, 750.00, 700.00, 750.00),
('FW CHINA T/E 1.5MM', 'Flatwire China 1.5mm T/E', 1300.00, 1250.00, 1400.00, 1250.00, 1250.00, 1300.00),
('FW CHINA T/E 2.5MM', 'Flatwire China 2.5mm T/E', 1550.00, 1500.00, 1600.00, 1500.00, 1500.00, 1550.00),
('FW CHINA T/E 4MM', 'Flatwire China 4mm T/E', 3200.00, 3200.00, 3300.00, 3200.00, 3100.00, 3200.00),
('FW NEW 1.0MM x 3C', 'Flatwire Newcity 1.0MM x 3C', 3500.00, 3400.00, 3500.00, 3400.00, 3300.00, 3400.00),
('FW NEW 1.5MM x 3C', 'Flatwire Newcity 1.5MM x 3C', 5500.00, 5400.00, 5500.00, 5400.00, 5300.00, 5400.00),
('FW NEW 1MM-TW', 'Flatwire New 1mm Twin', 2500.00, 2400.00, 2500.00, 2400.00, 2400.00, 2400.00),
('FW NEW 2.5MM x 3C', 'Flatwire Newcity 2.5MM x 3C', 7500.00, 7400.00, 7500.00, 7400.00, 7300.00, 7400.00),
('FW NEW T/E 1.5MM', 'Flatwire Newcity 1.5mm T/E', 4800.00, 4700.00, 5000.00, 4700.00, 4700.00, 4800.00),
('FW NEW T/E 2.5MM', 'Flatwire Newcity 2.5mm T/E', 5800.00, 5700.00, 6000.00, 5700.00, 5700.00, 5800.00),
('FW NEW T/E 4.0MM', 'Flatwire Newcity 4.0mm T/E', 11500.00, 11000.00, 12000.00, 11000.00, 11000.00, 11500.00),
('FW ODIC 1.0MM x 3C', 'Flatwire Odic 1.0mm x 3core', 4300.00, 4300.00, 4500.00, 4300.00, 4200.00, 4300.00),
('FW ODIC 1.5MM x 3C', 'Flatwire Odic 1.5mm x 3core', 6500.00, 6000.00, 6500.00, 6000.00, 6000.00, 6500.00),
('FW ODIC 1MM-TW(Big)', 'Flatwire Odic 1mm Twin (Big)', 2900.00, 2800.00, 3000.00, 2800.00, 2800.00, 2900.00),
('FW ODIC 1MM-TW(Small)', 'Flatwire Odic 1mm Twin (Small)', 22000.00, 22000.00, 23000.00, 22000.00, 22000.00, 22000.00),
('FW ODIC 2.5MM x 3C', 'Flatwire Odic 2.5mm x 3core', 8500.00, 8000.00, 8500.00, 8000.00, 8000.00, 8500.00),
('FW ODIC 4MM x 3C', 'Flatwire Odic 4mm x 3core', 13000.00, 12500.00, 13000.00, 12500.00, 12500.00, 12500.00),
('FW ODIC T/E 1.0MM', 'Flatwire Odic 1.0mm T/E', 3800.00, 3700.00, 4000.00, 3700.00, 3500.00, 3700.00),
('FW ODIC T/E 1.5MM', 'Flatwire Odic 1.5mm T/E', 5700.00, 5600.00, 5700.00, 5600.00, 5600.00, 5600.00),
('FW ODIC T/E 2.5MM', 'Flatwire Odic 2.5mm T/E', 7000.00, 7000.00, 7000.00, 7000.00, 6800.00, 7000.00),
('HFK 4mm x 4C FLEX', 'HKF 4mm x 4core Flex', 4000.00, 3800.00, 4000.00, 3700.00, 3700.00, 3800.00),
('HFK 6mm x 4C FX TRS', 'HFK 6mm x 4core Flex TRS', 13000.00, 12500.00, 13500.00, 12500.00, 12500.00, 13000.00),
('HKF 10mm x 4cFLETRS', 'HKF 10mm x 4core Flex TRS', 23500.00, 23000.00, 24000.00, 23000.00, 23000.00, 23500.00),
('HKF 2.5mm x 3C FLEX', 'HKF 2.5 x 3core Flex', 2300.00, 2200.00, 2300.00, 2200.00, 2100.00, 2000.00),
('HKF CHINA THICK FLEX', 'HKF China Thick Flex', 300.00, 250.00, 350.00, 250.00, 250.00, 300.00),
('New 0.5mm x 2C FLEX', 'Newcity 0.5 x 2core Flex', 700.00, 700.00, 700.00, 700.00, 700.00, 700.00),
('New 2.5mm x 3C FLEX', 'Newcity 2.5 x 3core Flex', 2300.00, 2300.00, 2500.00, 2300.00, 2300.00, 2300.00),
('New 2.5mm x 4C FLEX', 'Newcity 2.5 x 4core Flex', 2800.00, 2800.00, 2900.00, 2800.00, 2800.00, 2800.00),
('New 4mm x 4C FLEX', 'Newcity 4 x 4core Flex', 4500.00, 4500.00, 4500.00, 4400.00, 4400.00, 4400.00),
('New 6mm x 4C FLEX', 'Newcity 6 x 4core Flex', 6500.00, 6500.00, 6500.00, 6400.00, 6400.00, 6400.00),
('Newcity 1.5 x 3core', 'Newcity 1.5 x 3core Flex', 1700.00, 1700.00, 1700.00, 1700.00, 1700.00, 1700.00),
('Odic 0.5mm x 2C FLEX', 'Odic 0.5 x 2core Flex', 2500.00, 2400.00, 2500.00, 2400.00, 2400.00, 2400.00),
('Odic 1.5mm x 3C FLEX', 'Odic 1.5 x 3core Flex', 13500.00, 13500.00, 14000.00, 13000.00, 12500.00, 13500.00),
('Odic 2.5mm x 3C FLEX', 'Odic 2.5 x 3core Flex', 24000.00, 23500.00, 24500.00, 23500.00, 23000.00, 23500.00),
('Odic 2.5mm x 4C FLEX', 'Odic 2.5 x 4core Flex', 28000.00, 28000.00, 28500.00, 27000.00, 27000.00, 27500.00),
('Odic 4mm x 4C FLEX', 'Odic 4 x 4core Flex', 42000.00, 41500.00, 42000.00, 41000.00, 40000.00, 41000.00),
('Odic 6mm x 4C FLEX', 'Odic 6 x 4core Flex', 62000.00, 60000.00, 62000.00, 60000.00, 59500.00, 61000.00),
('OHB- 11KV LIGHT ARR', '11KV Lightning Arrester', 6500.00, 6500.00, 6500.00, 6000.00, 6000.00, 6500.00),
('OHB- 33KV LIGHT ARR', '33KV Lightning Arrester', 16500.00, 16500.00, 16500.00, 16500.00, 16500.00, 16500.00),
('SCB-  2P x 100YD', 'Super Comm. 2pair x 100ysd', 1200.00, 1200.00, 1300.00, 1200.00, 1200.00, 1200.00),
('SCB-  CAT 5E', 'Super Comm. CAT 5E', 5500.00, 5000.00, 6000.00, 5000.00, 5000.00, 5500.00),
('SCB-  CAT 6E', 'Super Comm. CAT 6E', 13500.00, 13500.00, 13500.00, 13500.00, 13500.00, 13500.00),
('SCB-  DROP WIRE', 'Super Comm. DROP WIRE', 2000.00, 1900.00, 2200.00, 2000.00, 1900.00, 2000.00),
('SCB-  F8 100P', 'Super Comm.100pair FIGURE 8', 930.00, 930.00, 930.00, 930.00, 930.00, 930.00),
('SCB-  F8 10P', 'Super Comm.10pair FIGURE 8', 150.00, 150.00, 150.00, 150.00, 150.00, 150.00),
('SCB-  F8 20P', 'Super Comm.20pair FIGURE 8', 220.00, 220.00, 220.00, 220.00, 220.00, 220.00),
('SCB-  F8 30P', 'Super Comm.30pair FIGURE 8', 250.00, 250.00, 250.00, 250.00, 250.00, 250.00),
('SCB- PF 100P', 'Super Comm.100pair P.F', 950.00, 950.00, 950.00, 950.00, 950.00, 950.00),
('SCB- PF 10P', 'Super Comm.10pair P.F', 150.00, 150.00, 150.00, 150.00, 150.00, 150.00),
('SCB- PF 200P', 'Super Comm.200pair P.F', 1500.00, 1500.00, 1500.00, 1500.00, 1500.00, 1500.00),
('SCB- PF 20P', 'Super Comm.10pair P.F', 230.00, 230.00, 230.00, 230.00, 230.00, 230.00),
('SCB- PF 30P', 'Super Comm.30pair P.F', 270.00, 270.00, 270.00, 270.00, 270.00, 270.00),
('SCB- PF 50P', 'Super Comm.50pair P.F', 400.00, 400.00, 400.00, 400.00, 400.00, 400.00),
('SCB- PFA 100P', 'Super Comm.100pair PFA', 1250.00, 1250.00, 1250.00, 1250.00, 1250.00, 1250.00),
('SCB- PFA 10P', 'Super Comm.10pair PFA', 250.00, 250.00, 250.00, 250.00, 250.00, 250.00),
('SCB- PFA 20P', 'Super Comm.20pair PFA', 350.00, 350.00, 350.00, 350.00, 350.00, 350.00),
('SCB- PFA 30P', 'Super Comm.30pair PFA', 400.00, 400.00, 400.00, 400.00, 400.00, 400.00),
('SCB- PFA 50P', 'Super Comm.50pair PFA', 580.00, 580.00, 580.00, 580.00, 580.00, 580.00),
('SCB- TV CABLE', 'Super Comm.TELEVISION CABLE', 2200.00, 2000.00, 2500.00, 2000.00, 2000.00, 2200.00);

-- --------------------------------------------------------

--
-- Table structure for table `odicproductscic`
--

CREATE TABLE IF NOT EXISTS `odicproductscic` (
  `product_id` varchar(100) NOT NULL,
  `product_desc` varchar(100) NOT NULL,
  `wholesaleprice` float(10,2) NOT NULL,
  `lowerpricewholesale` float(10,2) NOT NULL,
  `higherpricewholesale` float(10,2) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odicproductscic`
--

INSERT INTO `odicproductscic` (`product_id`, `product_desc`, `wholesaleprice`, `lowerpricewholesale`, `higherpricewholesale`) VALUES
('-80 yds SIN - 1.5MM', '1.5mm ODIC Single Wire', 1750.00, 1700.00, 1750.00),
('-80 yds SIN - 10MM', '10mm ODIC Single Wire', 10500.00, 10500.00, 11000.00),
('-80 yds SIN - 16MM', '16mm ODIC Single Wire', 16500.00, 16500.00, 16500.00),
('-80 yds SIN - 2.5MM', '2.5mm ODIC Single Wire', 2750.00, 2700.00, 2750.00),
('-80 yds SIN - 25MM', '25mm ODIC Single Wire', 28000.00, 28000.00, 28000.00),
('-80 yds SIN - 35MM', '35mm ODIC Single Wire', 42000.00, 42000.00, 42000.00),
('-80 yds SIN -- 4MM', '4mm ODIC Single Wire', 4400.00, 4400.00, 4400.00),
('-80 yds SIN -- 6MM', '6mm ODIC Single Wire', 6000.00, 6000.00, 6000.00),
('-80 yds SIN -1.0MM', '1.0mm ODIC Single Wire', 1300.00, 1300.00, 1400.00),
('100 yds SIN --10MM', '10mm ODIC Single Wire', 16500.00, 16500.00, 16500.00),
('100 yds SIN --16MM', '16mm ODIC Single Wire', 23000.00, 23000.00, 23000.00),
('100 yds SIN --25MM', '25mm ODIC Single Wire', 35000.00, 35000.00, 35000.00),
('100 yds SIN --35MM', '35mm ODIC Single Wire', 49000.00, 49000.00, 49000.00),
('100 yds SIN --4MM', '4mm ODIC Single Wire', 6800.00, 6800.00, 6800.00),
('100 yds SIN --6MM', '6mm ODIC Single Wire', 8800.00, 8800.00, 8800.00),
('100 yds SIN -1.0MM', '1.0mm ODIC Single Wire', 1800.00, 1800.00, 1800.00),
('100 yds SIN -1.5MM', '1.5mm ODIC Single Wire', 2800.00, 2800.00, 2900.00),
('100 yds SIN -2.5MM', '2.5mm ODIC Single Wire', 4100.00, 4000.00, 4100.00),
('80yds SIN New-1.0MM', '1.0mm Newcity Single Wire', 1100.00, 1100.00, 1150.00),
('80yds SIN New-1.5MM', '1.5mm Newcity Single Wire', 1350.00, 1300.00, 1350.00),
('80yds SIN New-2.5MM', '2.5mm Newcity Single Wire', 2350.00, 2300.00, 2350.00),
('80yds SIN New-4MM', '4mm Newcity Single Wire', 3700.00, 3700.00, 3700.00),
('ALW CHINA 16MM', 'Aluminium-wire China 16mm', 650.00, 650.00, 650.00),
('ALW NEWCITY 16MM', 'Aluminium-wire Newcity 16mm', 1600.00, 1600.00, 1700.00),
('FW CHINA 1.0M TW-Big', 'Flatwire China 1mm Twin-Big', 1100.00, 1100.00, 1100.00),
('FW CHINA 1.0M TW-Med', 'Flatwire China 1mm Twin-Medium', 800.00, 800.00, 850.00),
('FW CHINA 1.0M TW-Sma', 'Flatwire China 1mm Twin-Small', 600.00, 600.00, 650.00),
('FW CHINA 2.5MM x 3C', 'Flatwire China 2.5mm x 3core', 2300.00, 2300.00, 2300.00),
('FW CHINA T/E 1.5MM', 'Flatwire China 1.5mm T/E', 1250.00, 1250.00, 1350.00),
('FW CHINA T/E 2.5MM', 'Flatwire China 2.5mm T/E', 1500.00, 1500.00, 1550.00),
('FW CHINA T/E 4MM', 'Flatwire China 4mm T/E', 3550.00, 3550.00, 3550.00),
('FW ODIC 1.0MM x 3C', 'Flatwire Odic 1.0mm x 3core', 3800.00, 3800.00, 3800.00),
('FW ODIC 1.5MM x 3C', 'Flatwire Odic 1.5mm x 3core', 6500.00, 6500.00, 6500.00),
('FW ODIC 1MM-TW(Big)', 'Flatwire Odic 1mm Twin (Big)', 2650.00, 2650.00, 2650.00),
('FW ODIC 2.5MM x 3C', 'Flatwire Odic 2.5mm x 3core', 8500.00, 8500.00, 8500.00),
('FW ODIC 4MM x 3C', 'Flatwire Odic 4mm x 3core', 12500.00, 12500.00, 12500.00),
('FW ODIC T/E 2.5MM', 'Flatwire Odic 2.5mm T/E', 7000.00, 7000.00, 7000.00);

-- --------------------------------------------------------

--
-- Table structure for table `ourinvoice`
--

CREATE TABLE IF NOT EXISTS `ourinvoice` (
  `date` date NOT NULL,
  `invoiceid` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `custname` varchar(70) NOT NULL,
  `custid` varchar(20) NOT NULL,
  `custtype` varchar(20) NOT NULL,
  `tagno` varchar(100) NOT NULL,
  `totalqty` int(20) NOT NULL,
  `discount` float NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `grandtotal` float NOT NULL,
  `amtpaid` float NOT NULL,
  `balance` float NOT NULL,
  `ready` varchar(30) NOT NULL,
  `staff` varchar(20) NOT NULL,
  `verify` varchar(20) NOT NULL,
  PRIMARY KEY (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ourinvoice`
--

INSERT INTO `ourinvoice` (`date`, `invoiceid`, `branch`, `custname`, `custid`, `custtype`, `tagno`, `totalqty`, `discount`, `type`, `grandtotal`, `amtpaid`, `balance`, `ready`, `staff`, `verify`) VALUES
('2013-09-27', 'HG10', 'HAVILAHGOLD', 'Mrs Kemi Mary', 'LV4', 'Regular', 'TC-555-01', 9, 0, '', 1950, 0, 1950, '2013-09-29 Mon 5.00PM', 'PAUL', 'Verified'),
('2013-09-27', 'HG11', 'HAVILAHGOLD', 'Mrs Kemi Mary', 'LV4', 'Regular', 'TC-555-01', 8, 0, '', 600, 500, 100, '2013-09-29 Mon 5.00PM', 'PAUL', 'Not Verified'),
('2013-09-20', 'HG6', 'HAVILAHGOLD', 'femi femi', 'LV5', 'Regular', 'TC-555-01', 2, 0, '', 600, 0, 600, '2013-09-22 Mon 5.00PM', 'PAUL', 'Verified'),
('2013-09-20', 'HG7', 'HAVILAHGOLD', 'femi femi', 'LV5', 'Regular', 'TC-555-01', 6, 0, '', 2000, 0, 2000, '2013-09-22 Mon 5.00PM', 'PAUL', 'Not Verified'),
('2013-09-21', 'HG8', 'HAVILAHGOLD', 'Mrs Kemi Mary', 'LV4', 'Regular', 'TC-555-01', 11, 0, '', 1200, 500, 700, '2013-09-23 Tue 5.00PM', 'PAUL', 'Not Verified'),
('2013-09-26', 'HG9', 'HAVILAHGOLD', 'Mrs Kemi Mary', 'LV4', 'Regular', 'TC-555-01', 7, 0, '', 2200, 0, 0, '2013-09-28 Sat 5.00PM', 'PAUL', 'Verified'),
('2013-09-17', 'HO10', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'TC-555-01', 5, 0, '', 900, 500, 400, '2013-09-17 Thur 5.00PM', 'DEJI', 'Not Verified'),
('2014-07-22', 'HO100', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'HO100-1-11', 11, 0, '', 2800, 1000, 1800, '2014-07-24 Thu 5.00PM', 'PAUL', 'Not Verified'),
('2014-08-06', 'HO101', 'HEADOFFICE', 'Mr Jacob Aganga', 'LV3', 'Regular', 'HO101-1-4', 4, 60, '', 1200, 0, 1140, '2014-08-08 Fri 5.00PM', 'PAUL', 'Not Verified'),
('2013-09-29', 'HO102', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'TC-555-01', 5, 0, '', 900, 500, 400, '2013-09-17 Thur 5.00PM', 'DEJI', 'Not Verified'),
('2013-09-23', 'HO11', 'HEADOFFICE', 'Mrs Kemi Mary', 'LV4', 'Regular', 'TC-555-01', 6, 0, '', 1250, 400, 850, '2013-09-25 Wed 5.00PM', 'DEJI', 'Not Verified'),
('2013-09-29', 'HO112', 'HEADOFFICE', 'Mrs Kemi Mary', 'LV4', 'Regular', 'TC-555-01', 6, 0, '', 1250, 400, 850, '2013-09-25 Wed 5.00PM', 'DEJI', 'Not Verified'),
('2013-09-29', 'HO12', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'TC-555-01', 8, 0, '', 1600, 0, 1600, '2013-09-26 Thur 5.00PM', 'PAUL', 'Not Verified'),
('2013-09-24', 'HO13', 'HEADOFFICE', 'Mrs Kemi Mary', 'LV4', 'Regular', 'TC-555-01', 7, 0, '', 750, 0, 0, '2013-09-26 Thur 5.00PM', 'DEJI', 'Verified'),
('2013-10-16', 'HO29', 'HEADOFFICE', 'Mrs Kemi Mary', 'LV4', 'Regular', 'TC-555-01', 8, 0, '', 2000, 1200, 0, '2013-10-18 Fri 5.00PM', 'DEJI', 'Verified'),
('2013-10-29', 'HO30', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'TC-555-01', 8, 0, '', 1050, 0, 0, '2013-10-31 Thur 5.00PM', 'PAUL', 'Verified'),
('2013-11-05', 'HO31', 'HEADOFFICE', 'Mr Jacob Aganga', 'LV3', 'Regular', 'TC-555-01', 8, 0, '', 1400, 0, 0, '2013-11-07 Thur 5.00PM', 'PAUL', 'Verified'),
('2013-11-06', 'HO32', 'HEADOFFICE', 'Mr Jacob Aganga', 'LV3', 'Regular', 'TC-555-01', 10, 0, '', 2200, 0, 2200, '2013-11-08 Fri 5.00PM', 'PAUL', 'Not Verified'),
('2013-11-13', 'HO33', 'HEADOFFICE', 'Shakirat Alade', 'LV8', 'Regular', 'HO33', 9, 0, '', 1800, 0, 1000, '2013-11-15 Fri 5.00PM', 'DEJI', 'Verified'),
('2013-11-13', 'HO34', 'HEADOFFICE', 'Bola Joko', 'LV9', 'Regular', 'HO34', 7, 0, '', 900, 0, 0, '2013-11-13 Wed 5.00PM', 'DEJI', 'Not Verified'),
('2013-11-13', 'HO35', 'HEADOFFICE', 'Bola Joko', 'LV9', 'Regular', 'HO35', 7, 0, '', 1500, 1000, 500, '2013-11-15 Fri 5.00PM', 'DEJI', 'Not Verified'),
('2013-11-21', 'HO36', 'HEADOFFICE', 'femi femi', 'LV5', 'Regular', 'HO36', 9, 0, '', 2100, 0, 2100, '2013-11-23 Sat 5.00PM', 'PAUL', 'Not Verified'),
('2013-11-21', 'HO37', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'HO37', 9, 0, '', 1250, 0, 1250, '2013-11-23 Sat 5.00PM', 'PAUL', 'Not Verified'),
('2013-11-26', 'HO38', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'HO38', 5, 0, '', 1350, 0, 1350, '2013-11-28 Thur 5.00PM', 'PAUL', 'Not Verified'),
('2013-12-05', 'HO39', 'HEADOFFICE', 'Mr Jacob Aganga', 'LV3', 'Regular', 'HO39', 11, 0, '', 1850, 0, 1850, '2013-12-07 Sat 5.00PM', 'PAUL', 'Not Verified'),
('2013-12-05', 'HO40', 'HEADOFFICE', 'James John', 'LV6', 'Regular', 'HO40', 9, 0, '', 650, 0, 650, '2013-12-07 Sat 5.00PM', 'PAUL', 'Not Verified'),
('2013-12-16', 'HO41', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'HO41', 3, 0, '', 350, 0, 350, '2013-12-18 Wed 5.00PM', 'PAUL', 'Not Verified'),
('2013-12-25', 'HO42', 'HEADOFFICE', 'Mrs Kemi Mary', 'LV4', 'Regular', 'HO42', 2, 0, '', 300, 0, 300, '2013-12-27 Fri 5.00PM', 'PAUL', 'Not Verified'),
('2013-12-29', 'HO43', 'HEADOFFICE', 'Mr James Badmus', 'LV7', 'Package', 'HO43', 2, 0, '', 2, 0, 2, '2013-12-31 Tue 5.00PM', 'DEJI', 'Not Verified'),
('2013-12-29', 'HO44', 'HEADOFFICE', 'Mr James Badmus', 'LV7', 'Package', 'HO44', 4, 0, '', 4, 0, 4, '2013-12-31 Tue 5.00PM', 'DEJI', 'Not Verified'),
('2013-12-29', 'HO46', 'HEADOFFICE', 'Mr James Badmus', 'LV7', 'Package', 'HO46', 4, 0, '', 4, 0, 4, '2013-12-31 Tue 5.00PM', 'DEJI', 'Not Verified'),
('2013-12-29', 'HO47', 'HEADOFFICE', 'Mr James Badmus', 'LV7', 'Package', 'HO47', 5, 0, '', 5, 0, 5, '2013-12-31 Tue 5.00PM', 'DEJI', 'Not Verified'),
('2013-12-29', 'HO49', 'HEADOFFICE', 'Mr James Badmus', 'LV7', 'Package', 'HO49', 6, 0, '', 6, 0, 6, '2013-12-31 Tue 5.00PM', 'DEJI', 'Not Verified'),
('2013-12-29', 'HO50', 'HEADOFFICE', 'Mr James Badmus', 'LV7', 'Package', 'HO50', 6, 0, '', 6, 0, 6, '2013-12-31 Tue 5.00PM', 'DEJI', 'Not Verified'),
('2013-12-29', 'HO51', 'HEADOFFICE', 'Mr Jacob Aganga', 'LV3', 'Regular', 'HO51', 11, 0, '', 1800, 500, 0, '2013-12-31 Tue 5.00PM', 'DEJI', 'Not Verified'),
('2014-01-11', 'HO52', 'HEADOFFICE', 'femi femi', 'LV5', 'Regular', 'HO52', 1, 0, '', 100, 0, 100, '2014-01-13 Tue 5.00PM', 'DEJI', 'Not Verified'),
('2014-01-21', 'HO53', 'HEADOFFICE', 'Mr James Badmus', 'LV7', 'Package', 'HO53', 8, 200, 'Small Starch', 1700, 700, 800, '2014-01-23 Thur 5.00PM', 'PAUL', 'Not Verified'),
('2014-02-03', 'HO54', 'HEADOFFICE', 'Mrs Kemi Mary', 'LV4', 'Regular', 'HO54', 5, 0, '', 1350, 0, 1350, '2014-02-05 Wed 5.00PM', 'PAUL', 'Not Verified'),
('2014-02-05', 'HO55', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'HO55', 7, 0, '', 1950, 0, 1950, '2014-02-07 Fri 5.00PM', 'DEJI', 'Not Verified'),
('2014-02-05', 'HO57', 'HEADOFFICE', 'Mrs Kemi Mary', 'LV4', 'Regular', 'GREEN 7432 6844 3214 4422', 2, 0, '', 250, 0, 250, '2014-02-07 Fri 5.00PM', 'DEJI', 'Not Verified'),
('2014-02-07', 'HO58', 'HEADOFFICE', 'James John', 'LV6', 'Regular', 'HO58', 2, 0, '', 600, 0, 600, '2014-02-09 Mon 5.00PM', 'DEJI', 'Not Verified'),
('2014-02-11', 'HO59', 'HEADOFFICE', 'Mrs Kemi Mary', 'LV4', 'Regular', 'HO59', 2, 0, '', 600, 0, 600, '2014-02-13 Thur 5.00PM', 'PAUL', 'Not Verified'),
('2014-03-08', 'HO60', 'HEADOFFICE', 'femi femi', 'LV5', 'Regular', 'HO60', 1, 0, '', 150, 0, 0, '2014-03-10 Mon 5.00PM', 'PAUL', 'Not Verified'),
('2014-03-18', 'HO61', 'HEADOFFICE', 'femi femi', 'LV5', 'Regular', 'HO61', 8, 0, '', 1900, 0, 0, '2014-03-20 Thur 5.00PM', 'DEJI', 'Not Verified'),
('2014-03-24', 'HO62', 'HEADOFFICE', 'femi femi', 'LV5', 'Regular', 'HO62', 8, 0, '', 1800, 0, 1800, '2014-03-26 Wed 5.00PM', 'PAUL', 'Not Verified'),
('2014-03-24', 'HO63', 'HEADOFFICE', 'Mrs Kemi Mary', 'LV4', 'Regular', 'HO63', 8, 0, '', 1500, 0, 1500, '2014-03-26 Wed 5.00PM', 'PAUL', 'Not Verified'),
('2014-03-25', 'HO64', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'HO64', 9, 0, '', 1600, 0, 1600, '2014-03-27 Thur 5.00PM', 'PAUL', 'Not Verified'),
('2014-03-27', 'HO65', 'HEADOFFICE', 'Mrs Kemi Mary', 'LV4', 'Regular', 'HO65', 7, 0, '', 1650, 0, 0, '2014-03-29 Sat 5.00PM', 'DEJI', 'Not Verified'),
('2014-04-01', 'HO66', 'HEADOFFICE', 'Mrs Kemi Mary', 'LV4', 'Regular', 'HO66', 19, 0, '', 3500, 0, 3500, '2014-04-03 Thur 5.00PM', 'PAUL', 'Not Verified'),
('2014-04-12', 'HO67', 'HEADOFFICE', 'Mrs Kemi Mary', 'LV4', 'Regular', 'HO67', 2, 150, '', 600, 0, 450, '2014-04-14 Wed 5.00PM', 'DEJI', 'Not Verified'),
('2014-04-13', 'HO68', 'HEADOFFICE', 'Mr Jacob Aganga', 'LV3', 'Regular', 'HO68', 6, 50, '', 1000, 0, 0, '2014-04-15 Tue 5.00PM', 'DEJI', 'Not Verified'),
('2014-04-13', 'HO69', 'HEADOFFICE', 'femi femi', 'LV5', 'Regular', 'HO69', 3, 30, '', 300, 0, 270, '2014-04-15 Tue 5.00PM', 'DEJI', 'Not Verified'),
('2014-04-13', 'HO70', 'HEADOFFICE', 'James John', 'LV6', 'Regular', 'HO70', 2, 42, '', 600, 0, 558, '2014-04-15 Tue 5.00PM', 'DEJI', 'Not Verified'),
('2014-04-22', 'HO71', 'HEADOFFICE', 'Mr Jacob Aganga', 'LV3', 'Regular', 'HO71', 8, 100, '', 2000, 0, 1900, '2014-04-24 Thur 5.00PM', 'PAUL', 'Not Verified'),
('2014-04-30', 'HO72', 'HEADOFFICE', 'James John', 'LV6', 'Regular', 'HO72', 6, 119, '', 1700, 0, 1581, '2014-05-02 Fri 5.00PM', 'PAUL', 'Not Verified'),
('2014-05-01', 'HO73', 'HEADOFFICE', 'Mr John Macho ', 'Org11', 'Staff', 'HO73', 4, 0, '', 400, 0, 0, '2014-05-03 Sat 5.00PM', 'DEJI', 'Not Verified'),
('2014-05-01', 'HO74', 'HEADOFFICE', 'James John', 'LV6', 'Regular', 'HO74', 7, 73.5, '', 1050, 0, 0, '2014-05-03 Sat 5.00PM', 'DEJI', 'Not Verified'),
('2014-05-01', 'HO75', 'HEADOFFICE', 'Mrs Kemi Mary', 'LV4', 'Regular', 'HO75', 4, 40, '', 400, 280, 80, '2014-05-03 Sat 5.00PM', 'DEJI', 'Not Verified'),
('2014-05-01', 'HO76', 'HEADOFFICE', 'Mr John Macho ', 'Org11', 'Staff', 'HO76', 10, 0, '', 3000, 0, 3000, '2014-05-03 Sat 5.00PM', 'DEJI', 'Not Verified'),
('2014-05-01', 'HO77', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'HO77', 7, 62.5, '', 1250, 0, 1187.5, '2014-05-03 Sat 5.00PM', 'PAUL', 'Not Verified'),
('2014-05-04', 'HO78', 'HEADOFFICE', 'Mr James Badmus', 'LV7', 'Package', 'HO78', 7, 0, '', 1450, 0, 1450, '2014-05-06 Tue 5.00PM', 'DEJI', 'Not Verified'),
('2014-05-04', 'HO79', 'HEADOFFICE', 'Mr Jacob Aganga', 'LV3', 'Regular', 'HO79', 8, 40, '', 800, 0, 760, '2014-05-08 Thursday 5.00PM', 'PAUL', 'Not Verified'),
('2014-05-04', 'HO80', 'HEADOFFICE', 'femi femi', 'LV5', 'Regular', 'HO80', 6, 50, '', 500, 0, 450, '2014-05-07 Wed 5.00PM', 'PAUL', 'Not Verified'),
('2014-05-04', 'HO81', 'HEADOFFICE', 'Mr Johnson ', 'Org10', 'Regular', 'HO81', 12, 66, '', 2200, 0, 2134, '2014-05-09 Fri 5.00PM', 'DEJI', 'Not Verified'),
('2014-05-09', 'HO82', 'HEADOFFICE', 'Mrs Kemi Mary', 'LV4', 'Regular', 'HO82', 10, 200, '', 2000, 0, 1800, '2014-05-12 Mon 5.00PM', 'DEJI', 'Not Verified'),
('2014-05-10', 'HO83', 'HEADOFFICE', 'Mr Bright Adams', 'Org13', 'Regular', 'HO83', 15, 130, 'Light Starch', 2600, 0, 1470, '2014-05-12 Mon 5.00PM', 'TOSIN', 'Not Verified'),
('2014-05-22', 'HO84', 'HEADOFFICE', 'James John', 'LV6', 'Regular', 'HO84', 8, 105, '', 1500, 0, 1395, '2014-05-24 Sat 5.00PM', 'DEJI', 'Not Verified'),
('2014-05-29', 'HO85', 'HEADOFFICE', 'Mr Kelvin Kelvin', 'MW14', 'Package', 'HO85', 5, 0, '', 5, 0, 5, '2014-05-31 Sat 5.00PM', 'PAUL', 'Not Verified'),
('2014-06-08', 'HO86', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'HO86', 1, 0, '', 150, 0, 150, '2014-06-10 Tue 5.00PM', 'DEJI', 'Not Verified'),
('2014-06-08', 'HO87', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'HO87', 7, 0, '', 1650, 0, 1650, '2014-06-10 Tue 5.00PM', 'DEJI', 'Not Verified'),
('2014-06-10', 'HO88', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'HO88', 2, 0, '', 600, 0, 600, '2012-06-12 Tue 5.00PM', 'DEJI', 'Not Verified'),
('2014-06-24', 'HO89', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'HO89', 7, 0, '', 2050, 0, 2050, '2014-06-26 Thu 5.00PM', 'PAUL', 'Not Verified'),
('2013-09-10', 'HO9', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'TC-555-01', 3, 0, '', 300, 0, 0, '2013-09-10 Thur 5.00PM', 'AYODEJI', 'Verified'),
('2014-06-24', 'HO90', 'HEADOFFICE', 'femi femi', 'LV5', 'Regular', 'HO90', 4, 70, '', 700, 0, 630, '2014-06-26 Thu 5.00PM', 'PAUL', 'Not Verified'),
('2014-07-01', 'HO91', 'HEADOFFICE', 'Mr Jacob Aganga', 'LV3', 'Regular', 'HO91-1-1', 1, 5, '', 100, 0, 95, '2014-07-03 Thu 5.00PM', 'PAUL', 'Not Verified'),
('2013-09-29', 'HO92', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'TC-555-01', 3, 0, '', 300, 0, 300, '2013-09-10 Thur 5.00PM', 'AYODEJI', 'Not Verified'),
('2014-07-04', 'HO93', 'HEADOFFICE', 'Mrs Kemi Mary', 'LV4', 'Regular', 'HO93', 4, 120, '', 1200, 0, 1080, '2014-07-06 Sun 5.00PM', 'PAUL', 'Not Verified'),
('2014-07-04', 'HO94', 'HEADOFFICE', 'Mr Jacob Aganga', 'LV3', 'Regular', 'HO94-1-4', 4, 60, '', 1200, 0, 1140, '2014-07-06 Sun 5.00PM', 'PAUL', 'Not Verified'),
('2014-07-04', 'HO95', 'HEADOFFICE', 'Mr Raji Fashola ', 'LV12', 'Regular', 'HO95-1-6', 6, 0, '', 900, 0, 900, '2014-07-06 Sun 5.00PM', 'PAUL', 'Not Verified'),
('2014-07-07', 'HO96', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'HO96-1-14', 14, 0, '', 900, 700, 200, '2014-07-10 Thu 5.00PM', 'PAUL', 'Not Verified'),
('2014-07-07', 'HO97', 'HEADOFFICE', 'Mr Jacob Aganga', 'LV3', 'Regular', 'HO97', 2, 10, '', 200, 150, 40, '2014-07-11 Fri 5.00PM', 'PAUL', 'Not Verified'),
('2014-07-07', 'HO98', 'HEADOFFICE', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'HO98-1-6', 6, 0, '', 1800, 0, 1800, '2014-07-09 Wed 5.00PM', 'PAUL', 'Not Verified'),
('2014-07-07', 'HO99', 'HEADOFFICE', 'Mrs Kemi Mary', 'LV4', 'Regular', 'HO99-1-10', 10, 170, '', 1700, 600, 930, '2014-07-09 Wed 5.00PM', 'PAUL', 'Not Verified'),
('2014-12-24', 'HQS-50', 'HEADOFFICE_SALES', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'ECHE1', 487600, 0, 'Regular', 487600, 487600, 0, 'READY', 'tosin', 'Not Verified'),
('2013-11-11', 'KD3', 'KINGSDELIGHT', 'Mrs Kemi Mary', 'LV4', 'Regular', 'KD3', 10, 0, '', 2000, 0, 2000, '2013-11-13 Wed 5.00PM', 'PAUL', 'Not Verified'),
('2013-11-11', 'KD4', 'KINGSDELIGHT', 'Mrs Kemi Mary', 'LV4', 'Regular', 'KD4', 5, 0, '', 1600, 0, 0, '2013-11-13 Wed 5.00PM', 'PAUL', 'Not Verified'),
('2013-09-10', 'MGA4', 'HAVILAHGOLD', 'Mr Jacod Aganga', 'LV3', 'Regular', 'TC-555-01', 8, 0, '', 2400, 0, 2400, '2013-09-10 Thur 5.00PM', 'JAMES', 'Not Verified'),
('2013-09-11', 'MGA5', 'HAVILAHGOLD', 'Mr Jacob Aganga', 'LV3', 'Regular', 'TC-555-01', 4, 0, '', 900, 0, 0, '2013-09-11 Fri 5.00PM', 'PAUL', 'Verified'),
('2013-09-10', 'MGB2', 'KINGSDELIGHT', 'Mrs Kemi Mary', 'LV4', 'Regular', 'TC-555-01', 4, 0, '', 1050, 1000, 50, '2013-09-10 Thur 5.00PM', 'PAUL', 'Not Verified'),
('2014-06-29', 'OE12', 'OJO-ESTATE', 'Mr Raji Fashola ', 'LV12', 'Regular', 'OE12-1-5', 5, 52.5, '', 1050, 0, 997.5, '2014-07-01 Tue 5.00PM', 'PAUL', 'Not Verified'),
('2014-06-29', 'OE13', 'OJO-ESTATE', 'Mr Jacob Aganga', 'LV3', 'Regular', 'OE13-1-6', 6, 45, '', 900, 0, 855, '2014-07-01 Tue 5.00PM', 'PAUL', 'Not Verified'),
('2013-09-05', 'OG3', 'OGUDU', 'deji SUNDAY', 'ECHE1', 'Regular', 'TA-22-OA', 6, 10, '', 1400, 0, 400, '2013-09-05 Sat 5.00PM', 'DEJI', 'Not Verified'),
('2013-09-05', 'OG4', 'OGUDU', 'deji SUNDAY', 'ECHE1', 'Regular', 'TA-22-OA', 9, 0, '', 2100, 0, 2100, '2013-09-05 Sat 5.00PM', 'DEJI', 'Not Verified'),
('2013-09-06', 'OG5', 'OGUDU', 'deji SUNDAY', 'ECHE1', 'Regular', 'TA-22-OA', 5, 0, '', 900, 500, 400, '2013-09-06 Mon 5.00PM', 'DEJI', 'Verified'),
('2013-09-07', 'OG6', 'OGUDU', 'Mr Jacod Aganga', 'LV3', 'Staff', 'TC-555-01', 9, 0, '', 2100, 0, 2100, '2013-09-07 Tue 5.00PM', 'DEJI', 'Not Verified'),
('2013-09-07', 'OG7', 'OGUDU', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'TC-555-01', 2, 0, '', 200, 50, 150, '2013-09-07 Tue 5.00PM', 'DEJI', 'Not Verified');

-- --------------------------------------------------------

--
-- Table structure for table `ourinvoice2`
--

CREATE TABLE IF NOT EXISTS `ourinvoice2` (
  `date` date NOT NULL,
  `invoiceid` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `custname` varchar(70) NOT NULL,
  `custid` varchar(20) NOT NULL,
  `custtype` varchar(20) NOT NULL,
  `tagno` varchar(100) NOT NULL,
  `totalqty` int(20) NOT NULL,
  `discount` float NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `grandtotal` float NOT NULL,
  `amtpaid` float NOT NULL,
  `balance` float NOT NULL,
  `ready` varchar(30) NOT NULL,
  `staff` varchar(20) NOT NULL,
  `verify` varchar(20) NOT NULL,
  `status` varchar(15) NOT NULL,
  `supplied` varchar(10) NOT NULL,
  `postedstatus` varchar(10) NOT NULL,
  PRIMARY KEY (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ourinvoice2`
--

INSERT INTO `ourinvoice2` (`date`, `invoiceid`, `branch`, `custname`, `custid`, `custtype`, `tagno`, `totalqty`, `discount`, `type`, `grandtotal`, `amtpaid`, `balance`, `ready`, `staff`, `verify`, `status`, `supplied`, `postedstatus`) VALUES
('2014-12-20', 'HQS-42', 'HEADOFFICE_SALES', 'CIC Onitsha', 'HQS20', 'Distributor', 'HQS20', 29900, 0, 'Distributor', 29900, 29900, 0, 'READY', 'tosin', 'Not Verified', 'uncompleted', 'none', 'notposted'),
('2014-12-20', 'HQS-43', 'HEADOFFICE_SALES', 'CIC Onitsha', 'HQS20', 'Distributor', 'HQS20', 185650, 0, 'Distributor', 185650, 185650, 0, 'READY', 'tosin', 'Not Verified', 'uncompleted', 'none', 'notposted'),
('2014-12-20', 'HQS-44', 'HEADOFFICE_SALES', 'Ibe Moses', 'HQS16', 'Retail', 'HQS16', 293000, 0, 'Retail', 293000, 293000, 0, 'READY', 'tosin', 'Not Verified', 'uncompleted', 'none', 'notposted'),
('2014-12-20', 'HQS-45', 'HEADOFFICE_SALES', 'Ibe Moses', 'HQS16', 'Retail', 'HQS16', 347200, 0, 'Retail', 347200, 347200, 0, 'READY', 'tosin', 'Not Verified', 'uncompleted', 'none', 'notposted'),
('2014-12-20', 'HQS-46', 'HEADOFFICE_SALES', 'Igwe Moses', 'HQS17', 'Retail', 'HQS17', 1180000, 0, 'Retail', 1180000, 0, 1180000, 'READY', 'tosin', 'Not Verified', 'uncompleted', 'none', 'notposted'),
('2014-12-21', 'HQS-47', 'HEADOFFICE_SALES', 'Okeke Ibe', 'HQS18', 'Retail', 'HQS18', 111000, 0, 'Retail', 111000, 111000, 0, 'READY', 'tosin', 'Not Verified', 'completed', 'none', 'notposted'),
('2014-12-21', 'HQS-48', 'HEADOFFICE_SALES', 'Okeke Ibe', 'HQS19', 'Retail', 'HQS19', 143000, 0, 'Retail', 143000, 143000, 0, 'READY', 'tosin', 'Not Verified', 'uncompleted', 'none', 'notposted'),
('2014-12-23', 'HQS-49', 'HEADOFFICE_SALES', 'Okeke Ibe', 'HQS18', 'Retail', 'HQS18', 112000, 0, 'Retail', 112000, 112000, 0, 'READY', 'Dave9316', 'Not Verified', 'uncompleted', 'none', 'notposted'),
('2014-12-24', 'HQS-50', 'HEADOFFICE_SALES', 'DEJI SUNDAY', 'ECHE1', 'Regular', 'ECHE1', 487600, 0, 'Regular', 487600, 487600, 0, 'READY', 'tosin', 'Not Verified', 'completed', 'none', 'posted');

-- --------------------------------------------------------

--
-- Table structure for table `ourinvoiceotherdetails`
--

CREATE TABLE IF NOT EXISTS `ourinvoiceotherdetails` (
  `invoiceid` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `custid` varchar(20) NOT NULL,
  `totalshadow` double DEFAULT '0',
  `invoicetype` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ourinvoiceotherdetails`
--

INSERT INTO `ourinvoiceotherdetails` (`invoiceid`, `branch`, `custid`, `totalshadow`, `invoicetype`) VALUES
('HQS-1', 'HEADOFFICE_SALES', 'HQS14', 0, 'Cash'),
('HQS-42', 'HEADOFFICE_SALES', 'HQS20', 0, 'Cash'),
('HQS-43', 'HEADOFFICE_SALES', 'HQS20', 0, 'Cash'),
('HQS-44', 'HEADOFFICE_SALES', 'HQS16', 0, 'Cash'),
('HQS-45', 'HEADOFFICE_SALES', 'HQS16', 0, 'Cash'),
('HQS-46', 'HEADOFFICE_SALES', 'HQS17', 0, 'Credit'),
('HQS-47', 'HEADOFFICE_SALES', 'HQS18', 100, 'Cash'),
('HQS-48', 'HEADOFFICE_SALES', 'HQS19', 0, 'Cash'),
('HQS-49', 'HEADOFFICE_SALES', 'HQS18', 0, 'Cash'),
('HQS-50', 'HEADOFFICE_SALES', 'ECHE1', 0, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `packagehistory`
--

CREATE TABLE IF NOT EXISTS `packagehistory` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `custname` varchar(50) NOT NULL,
  `packtype` int(20) NOT NULL,
  `amount` float NOT NULL,
  `gbal` int(20) NOT NULL,
  `amtpaid` float NOT NULL,
  `balance` float NOT NULL,
  `staff` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `packagehistory`
--

INSERT INTO `packagehistory` (`id`, `date`, `custname`, `packtype`, `amount`, `gbal`, `amtpaid`, `balance`, `staff`) VALUES
(1, '2013-11-06', 'Mr Jacod', -4470, 13000, -4470, 1300, 0, 'PAUL'),
(2, '2013-12-29', 'Mr James Badmus', 5, 13000, 5, 10000, 300, 'DEJI'),
(3, '2013-12-29', 'Mr James Badmus', 5, 13000, 5, 10000, 3000, 'DEJI'),
(4, '2014-05-29', 'Mr Kelvin', 50, 21500, 50, 20000, 1500, 'PAUL');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `branch` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `accountname` varchar(50) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `address` varchar(70) NOT NULL,
  `phoneno` varchar(12) NOT NULL,
  `prev_balance` float NOT NULL,
  `description` varchar(70) NOT NULL,
  `amountpaid` float NOT NULL,
  `balance` float NOT NULL,
  `paid_by` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `branch`, `date`, `accountname`, `vendor`, `address`, `phoneno`, `prev_balance`, `description`, `amountpaid`, `balance`, `paid_by`) VALUES
(1, 'Ogudu', '2013-09-07', 'Cash-at-Hand', 'Mr Deji', 'Ojota', '08067545432', 3000, 'Balance for transportation', 3000, 0, 'Deji'),
(2, 'Ogudu', '2013-09-07', 'Cash-at-Hand', 'Ayodeji', 'null', '08054546655', 200, 'balance', 200, 0, 'Seji'),
(3, 'HEADOFFICE', '2014-02-19', 'Cash-At-Hand', 'Mr Emmanuel', 'ketu', '08065654543', 500, 'pay', 500, 0, 'md');

-- --------------------------------------------------------

--
-- Table structure for table `paymentarch`
--

CREATE TABLE IF NOT EXISTS `paymentarch` (
  `id` int(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `accountname` varchar(50) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `address` varchar(70) NOT NULL,
  `phoneno` varchar(12) NOT NULL,
  `prev_balance` float NOT NULL,
  `description` varchar(70) NOT NULL,
  `amountpaid` float NOT NULL,
  `balance` float NOT NULL,
  `paid_by` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payrecords`
--

CREATE TABLE IF NOT EXISTS `payrecords` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `month` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `names` varchar(70) NOT NULL,
  `basicsalary` float NOT NULL,
  `medical` float NOT NULL,
  `transport` float NOT NULL,
  `feeding` float NOT NULL,
  `housing` float NOT NULL,
  `utility` float NOT NULL,
  `cleaning` float NOT NULL,
  `pension` float NOT NULL,
  `odedut` float NOT NULL,
  `tax` float NOT NULL,
  `loan` float NOT NULL,
  `grosspay` float NOT NULL,
  `netpay` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `payrecords`
--

INSERT INTO `payrecords` (`id`, `month`, `year`, `names`, `basicsalary`, `medical`, `transport`, `feeding`, `housing`, `utility`, `cleaning`, `pension`, `odedut`, `tax`, `loan`, `grosspay`, `netpay`) VALUES
(1, 'Aug', '2013', 'Mr Ajiboye Lawrence', 50000, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 50000, 0, 48000),
(2, 'Jan', '2014', 'Mr Ajiboye Lawrence', 100000, 0, 0, 0, 0, 0, 3000, 2000, 5000, 1500, 0, 103000, 94500),
(3, 'Feb', '2014', 'Emmanuel Nelson', 50000, 3000, 2500, 3500, 2500, 1500, 0, 5000, 0, 5000, 0, 63000, 53000),
(4, 'Jan', '2014', 'Emmanuel Nelson', 50000, 3000, 2500, 3500, 2500, 1500, 0, 5000, 0, 5000, 0, 63000, 53000),
(5, 'Jan', '2014', 'Mr Ajiboye Lawrence', 100000, 0, 0, 0, 0, 0, 3000, 2000, 5000, 1500, 0, 103000, 94500),
(6, 'Jan', '2014', 'Mr Ajiboye Lawrence', 60000, 0, 0, 0, 0, 0, 5000, 0, 400, 0, 0, 65000, 64600),
(7, 'Jan', '2014', 'deji Ayodeji', 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60000, 60000);

-- --------------------------------------------------------

--
-- Table structure for table `paysolution`
--

CREATE TABLE IF NOT EXISTS `paysolution` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `branch` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `account` varchar(50) NOT NULL,
  `employee` varchar(70) NOT NULL,
  `basicsalary` double NOT NULL,
  `medical` double NOT NULL,
  `transport` double NOT NULL,
  `feeding` double NOT NULL,
  `housing` double NOT NULL,
  `utility` double NOT NULL,
  `cleaning` double NOT NULL,
  `pension` double NOT NULL,
  `odedut` double NOT NULL,
  `tax` double NOT NULL,
  `loan` double NOT NULL,
  `grosspay` double NOT NULL,
  `netpay` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `paysolution`
--

INSERT INTO `paysolution` (`id`, `branch`, `date`, `account`, `employee`, `basicsalary`, `medical`, `transport`, `feeding`, `housing`, `utility`, `cleaning`, `pension`, `odedut`, `tax`, `loan`, `grosspay`, `netpay`) VALUES
(1, 'HEADOFFICE', '2014-02-07', 'GTBank', 'Mr Ajiboye Lawrence', 50000, 0, 0, 0, 0, 0, 600, 0, 600, 0, 0, 50600, 50000),
(2, 'HEADOFFICE', '2014-02-07', 'GTBank', 'Mr Ajiboye Lawrence', 60000, 0, 0, 0, 0, 0, 5000, 0, 400, 0, 0, 65000, 64600),
(3, 'HEADOFFICE', '2014-02-07', 'GTBank', 'Mr Ajiboye Lawrence', 100000, 0, 0, 0, 0, 0, 3000, 2000, 5000, 1500, 0, 103000, 94500),
(4, 'HEADOFFICE', '2014-02-07', 'GTBank', 'Emmanuel Nelson', 50000, 3000, 2500, 3500, 2500, 1500, 0, 5000, 0, 5000, 0, 63000, 53000),
(5, 'HEADOFFICE', '2014-02-08', 'GTBank', 'james james', 60000, 0, 0, 0, 0, 0, 5000, 7000, 0, 3000, 0, 65000, 55000),
(7, 'HEADOFFICE', '2014-02-08', 'GTBank', 'deji Ayodeji', 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60000, 60000),
(8, 'HEADOFFICE', '2014-02-08', 'GTBank', 'Ajiboye Ajiboye', 40000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40000, 40000),
(9, 'HEADOFFICE', '2014-02-08', 'GTBank', 'Mr Ajiboye Lawrence', 80000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80000, 80000),
(10, 'HEADOFFICE', '2014-02-08', 'GTBank', 'deji Ayodeji', 300000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300000, 300000),
(11, 'HEADOFFICE', '2014-02-08', 'GTBank', 'Mr Ajiboye Lawrence', 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60000, 60000),
(12, 'HEADOFFICE', '2014-02-08', 'GTBank', 'Emmanuel Nelson', 50000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50000, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `paytax`
--

CREATE TABLE IF NOT EXISTS `paytax` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `govagency` varchar(70) NOT NULL,
  `description` varchar(70) NOT NULL,
  `totalamount` float NOT NULL,
  `amtpaid` float NOT NULL,
  `balance` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `paytax`
--

INSERT INTO `paytax` (`id`, `date`, `govagency`, `description`, `totalamount`, `amtpaid`, `balance`) VALUES
(1, '2013-09-08', 'Lagos State', 'Tax Payment', 6000, 2000, 4000);

-- --------------------------------------------------------

--
-- Table structure for table `pension`
--

CREATE TABLE IF NOT EXISTS `pension` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `employee` varchar(70) NOT NULL,
  `month` varchar(15) NOT NULL,
  `year` varchar(5) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pension`
--

INSERT INTO `pension` (`id`, `employee`, `month`, `year`, `amount`) VALUES
(1, 'Emmanuel Nelson', 'Jan', '2014', 5000),
(2, 'Mr Ajiboye Lawrence', 'Jan', '2014', 2000),
(3, 'Mr Ajiboye Lawrence', 'Jan', '2014', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pickup`
--

CREATE TABLE IF NOT EXISTS `pickup` (
  `pickupid` int(11) NOT NULL AUTO_INCREMENT,
  `branch` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `custname` varchar(70) NOT NULL,
  `invoiceid` varchar(20) NOT NULL,
  `custtype` varchar(20) NOT NULL,
  `prevbal` float NOT NULL,
  `description` varchar(20) NOT NULL,
  `amtpaid` float NOT NULL,
  `balance` float NOT NULL,
  `status` varchar(20) NOT NULL,
  `staff` varchar(20) NOT NULL,
  PRIMARY KEY (`pickupid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `pickup`
--

INSERT INTO `pickup` (`pickupid`, `branch`, `date`, `custname`, `invoiceid`, `custtype`, `prevbal`, `description`, `amtpaid`, `balance`, `status`, `staff`) VALUES
(1, 'OGUDU', '2013-09-06', 'deji SUNDAY', 'OG3', 'Regular', 1400, 'paid', 1000, 400, 'Items Not Collected', 'DEJI'),
(2, 'HAVILAHGOLD', '2013-09-11', 'Mr Jacob Aganga', 'MGA5', 'Regular', 900, 'Paid In Full', 900, 0, 'All Items Collected', 'PAUL'),
(3, 'HEADOFFICE', '2013-09-24', 'Mrs Kemi Mary', 'HO13', 'Regular', 750, 'Paid In Full', 750, 0, 'All Items Collected', 'DEJI'),
(4, 'HAVILAHGOLD', '2013-09-26', 'Mrs Kemi Mary', 'HG9', 'Regular', 2200, 'Paid In Full', 2200, 0, 'All Items Collected', 'PAUL'),
(5, 'HEADOFFICE', '2013-10-16', 'Mrs Kemi Mary', 'HO29', 'Regular', 800, 'Paid In Full', 800, 0, 'All Items Collected', 'DEJI'),
(6, 'HEADOFFICE', '2013-10-16', 'DEJI SUNDAY', 'HO9', 'Regular', 300, 'Paid In Full', 300, 0, 'All Items Collected', 'DEJI'),
(7, 'HEADOFFICE', '2013-10-29', 'DEJI SUNDAY', 'HO30', 'Regular', 1050, 'Paid In Full', 1050, 0, 'All Items Collected', 'PAUL'),
(8, 'HEADOFFICE', '2013-11-06', 'Mr Jacob Aganga', 'HO31', 'Regular', 1400, 'Paid In Full', 1400, 0, 'All Items Collected', 'PAUL'),
(9, 'KINGSDELIGHT', '2013-11-11', 'Mrs Kemi Mary', 'KD4', 'Regular', 1600, 'Part Payment', 1000, 600, 'Items Not Collected', 'PAUL'),
(10, 'KINGSDELIGHT', '2013-11-11', 'Mrs Kemi Mary', 'KD4', 'Regular', 600, 'Paid In Full', 600, 0, 'All Items Collected', 'PAUL'),
(12, 'HEADOFFICE', '2013-11-13', 'Shakirat Alade', 'HO33', 'Regular', 800, 'Paid In Full', 800, 0, 'All Items Collected', 'DEJI'),
(13, 'HEADOFFICE', '2013-11-13', 'Bola Joko', 'HO34', 'Regular', 900, 'Paid In Full', 900, 0, 'All Items Collected', 'DEJI'),
(14, 'HEADOFFICE', '2013-12-29', 'Mr Jacob Aganga', 'HO51', 'Regular', 1300, 'Paid in full', 1300, 0, 'All Items Collected', 'DEJI'),
(15, 'HEADOFFICE', '2014-03-18', 'femi femi', 'HO61', 'Regular', 1900, 'Full Payment', 1900, 0, 'All Items Collected', 'DEJI'),
(16, 'HEADOFFICE', '2014-03-24', 'femi femi', 'HO60', 'Regular', 150, 'Paid', 150, 0, 'All Items Collected', 'PAUL'),
(17, 'HEADOFFICE', '2014-03-27', 'Mrs Kemi Mary', 'HO65', 'Regular', 1650, 'Full Payment', 1650, 0, 'All Items Collected', 'DEJI'),
(18, 'HEADOFFICE', '2014-05-01', 'James John', 'HO74', 'Regular', 976.5, 'Full Payment', 976.5, 0, 'All Items Collected', 'DEJI'),
(19, 'HEADOFFICE', '2014-05-01', 'Mr John Macho ', 'HO73', 'Staff', 400, 'Full Payment', 400, 0, 'All Items Collected', 'DEJI'),
(20, 'HEADOFFICE', '2014-05-04', 'Mr Jacob Aganga', 'HO68', 'Regular', 950, 'Full Payment', 950, 0, 'All Items Collected', 'DEJI'),
(21, 'HEADOFFICE', '2014-05-10', 'Mr Bright Adams', 'HO83', 'Regular', 2470, 'Full Payment', 1000, 1470, 'Items Not Collected', 'DEJI');

-- --------------------------------------------------------

--
-- Table structure for table `pickuparch`
--

CREATE TABLE IF NOT EXISTS `pickuparch` (
  `branch` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `pickupid` int(20) NOT NULL,
  `custname` varchar(70) NOT NULL,
  `invoiceid` varchar(20) NOT NULL,
  `custtype` varchar(20) NOT NULL,
  `prevbal` float NOT NULL,
  `description` varchar(20) NOT NULL,
  `amtpaid` float NOT NULL,
  `balance` float NOT NULL,
  `status` varchar(20) NOT NULL,
  `staff` varchar(20) NOT NULL,
  `reason` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickuparch`
--

INSERT INTO `pickuparch` (`branch`, `date`, `pickupid`, `custname`, `invoiceid`, `custtype`, `prevbal`, `description`, `amtpaid`, `balance`, `status`, `staff`, `reason`) VALUES
('OGUDU', '2013-09-07', 2, 'deji SUNDAY', 'OG5', 'Regular', 400, 'Paid In Full', 400, 0, 'All Items Collected', 'DEJI', 'test'),
('HEADOFFICE', '2013-11-13', 11, 'Shakirat Alade', 'HO33', 'Regular', 1800, 'Part Payment', 1000, 800, 'Items Not Collected', 'DEJI', 'Just trying to test');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` varchar(3) DEFAULT NULL,
  `regdate` varchar(10) DEFAULT NULL,
  `itemid` varchar(6) DEFAULT NULL,
  `itemname` varchar(41) DEFAULT NULL,
  `category` varchar(16) DEFAULT NULL,
  `pieces` varchar(1) DEFAULT NULL,
  `price1` varchar(4) DEFAULT NULL,
  `price2` varchar(1) DEFAULT NULL,
  `price3` varchar(1) DEFAULT NULL,
  `price4` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `regdate` date NOT NULL,
  `itemid` varchar(20) NOT NULL,
  `itemname` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `pieces` int(20) NOT NULL,
  `price` float NOT NULL,
  `price2` float NOT NULL,
  `price3` float NOT NULL,
  `price4` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=128 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `regdate`, `itemid`, `itemname`, `category`, `pieces`, `price`, `price2`, `price3`, `price4`) VALUES
(1, '2013-09-09', 'Item11', 'Blouse', 'Blouse', 1, 150, 100, 300, 1),
(3, '2013-09-09', 'Item11', 'Child Suit 2 Pc', 'Child', 2, 400, 400, 400, 2),
(4, '2013-09-09', 'Item11', 'Child Jacket', 'Child', 1, 100, 100, 100, 1),
(5, '2013-09-09', 'Item11', 'Child Trousers', 'Child', 1, 100, 100, 100, 1),
(6, '2013-09-09', 'Item11', 'Child Shirt', 'Child', 1, 100, 100, 100, 1),
(7, '2013-09-09', 'Item11', 'Child Sweater', 'Child', 1, 100, 100, 100, 1),
(8, '2013-09-09', 'Item11', 'Child Dress', 'Child', 1, 100, 100, 100, 1),
(9, '2013-09-09', 'Item11', 'Child Dress long', 'Child', 1, 100, 100, 100, 1),
(10, '2013-09-09', 'Item11', 'Child Dress fancy', 'Child ', 1, 100, 100, 100, 1),
(11, '2013-09-09', 'Item11', 'Christening outfit', 'Child', 1, 100, 100, 100, 1),
(12, '2013-09-09', 'Item11', 'Child Suit 3 Pc', 'Child', 3, 450, 450, 450, 3),
(13, '2013-09-09', 'Item11', 'LD Child Native 2 pc', 'Child', 2, 150, 150, 150, 2),
(14, '2013-09-09', 'Item11', 'DC Child Tie', 'Child', 1, 70, 70, 70, 1),
(15, '2013-09-09', 'Item11', 'LD Child Native 3 pc', 'Child', 3, 200, 200, 200, 3),
(16, '2013-09-09', 'Item11', 'DC Men Native 3pc', 'DC_Men_Natives', 3, 350, 350, 350, 3),
(17, '2013-09-09', 'Item11', 'DC Men Native 2pc', 'DC_Men_Natives', 2, 150, 150, 150, 2),
(18, '2013-09-09', 'Item11', 'DC Agbada only', 'DC_Men_Natives', 1, 250, 250, 250, 1),
(19, '2013-09-09', 'Item11', 'DC Native cap', 'DC_Men_Natives', 1, 100, 100, 100, 1),
(20, '2013-09-09', 'Item11', 'DC Kaftan', 'DC_Men_Natives', 1, 150, 150, 150, 1),
(21, '2013-09-09', 'Item11', 'DC Native top', 'DC_Men_Natives', 1, 150, 150, 150, 1),
(22, '2013-09-09', 'Item11', 'DC Aso Oke Men 2 pc', 'DC_Men_Natives', 2, 600, 600, 600, 2),
(23, '2013-09-09', 'Item11', 'DC Aso Oke Men 3 pc', 'DC_Men_Natives', 3, 600, 600, 600, 3),
(24, '2013-09-09', 'Item11', 'DC Shirt ', 'DC Shirt ', 1, 100, 100, 100, 1),
(25, '2013-09-09', 'Item11', 'DC Women Native 2pc', 'DC_Women_Natives', 2, 150, 150, 150, 2),
(26, '2013-09-09', 'Item11', 'DC Women Natives 3pc', 'DC_Women_Natives', 3, 250, 250, 250, 3),
(27, '2013-09-09', 'Item11', 'DC Head Tie', 'DC_Women_Natives', 1, 100, 100, 100, 1),
(28, '2013-09-09', 'Item11', 'DC Boubou/ Kaftan + Scarf', 'DC_Women_Natives', 2, 150, 150, 150, 2),
(29, '2013-09-09', 'Item11', 'DC Boubou/ Kaftan + Skirt/wrapper/trouser', 'DC_Women_Natives', 2, 200, 200, 200, 2),
(30, '2013-09-09', 'Item11', 'DC George Wrapper 2pc', 'DC_Women_Natives', 2, 200, 200, 200, 2),
(31, '2013-09-09', 'Item11', 'DC Kaftan', 'DC_Women_Natives', 1, 100, 100, 100, 1),
(32, '2013-09-09', 'Item11', 'DC Native top', 'DC_Women_Natives', 1, 100, 100, 100, 1),
(33, '2013-09-09', 'Item11', 'DC Aso Oke Women 2 pc Gele/Ipele', 'DC_Women_Natives', 2, 250, 250, 250, 2),
(34, '2013-09-09', 'Item11', 'DC Aso Oke  1 pc Gele', 'DC_Women_Natives', 1, 250, 250, 250, 1),
(35, '2013-09-09', 'Item11', 'DC Aso Oke Women 2pc Iro/Buba  ', 'DC_Women_Natives', 2, 250, 250, 250, 2),
(36, '2013-09-09', 'Item11', 'DC Aso Oke Women 3pc ', 'DC_Women_Natives', 3, 250, 250, 250, 3),
(37, '2013-09-09', 'Item11', 'Dress', 'Dress', 1, 100, 100, 100, 1),
(38, '2013-09-09', 'Item11', 'Dress Suit 2 pc', 'Dress', 2, 400, 400, 400, 2),
(39, '2013-09-09', 'Item11', 'Dress Party', 'Dress', 1, 200, 200, 200, 1),
(40, '2013-09-09', 'Item11', 'Dress Evening Fancy', 'Dress', 1, 100, 100, 100, 1),
(41, '2013-09-09', 'Item11', 'Dress Pleated', 'Dress', 1, 100, 100, 100, 1),
(42, '2013-09-09', 'Item11', 'Wedding Gown', 'Dress', 1, 600, 600, 600, 1),
(43, '2013-09-09', 'Item11', 'Dress Suit ', 'Dress_Suits', 2, 150, 150, 150, 2),
(44, '2013-09-09', 'Item11', 'Blanket Small', 'HouseHold', 1, 400, 400, 400, 1),
(45, '2013-09-09', 'Item11', 'Blanket Medium', 'HouseHold', 1, 450, 450, 450, 1),
(46, '2013-09-09', 'Item11', 'Blanket Large', 'HouseHold', 1, 550, 550, 550, 1),
(47, '2013-09-09', 'Item11', 'Bed Sheet', 'HouseHold', 1, 150, 150, 150, 1),
(48, '2013-09-09', 'Item11', 'Bed Sheet + 2 pillow case', 'HouseHold', 3, 250, 250, 250, 3),
(49, '2013-09-09', 'Item11', 'Pillow case 2 pc', 'HouseHold', 2, 100, 100, 100, 2),
(50, '2013-09-09', 'Item11', 'Bed Sheet + 4 pillow case', 'HouseHold', 5, 300, 300, 300, 5),
(51, '2013-09-09', 'Item11', 'Bed Sheet + 1pillow case', 'HouseHold', 2, 200, 200, 200, 2),
(52, '2013-09-09', 'Item11', 'Pillow case 1 pc', 'HouseHold', 1, 100, 100, 100, 1),
(53, '2013-09-09', 'Item11', 'Jacket', 'Jacket', 1, 100, 100, 100, 1),
(54, '2013-09-09', 'Item11', 'Outer Jacket Long', 'Jacket', 1, 100, 100, 100, 1),
(55, '2013-09-09', 'Item11', 'Kg Garment', 'Kg_Garment', 1, 100, 100, 100, 1),
(56, '2013-09-09', 'Item11', 'Duvet Only', 'Kg_Garment', 1, 400, 400, 400, 1),
(57, '2013-09-09', 'Item11', 'Curtains', 'Kg_Garment', 1, 600, 600, 600, 1),
(58, '2013-09-09', 'Item11', 'Ladies Trousers', 'Ladies_Pants', 1, 100, 100, 100, 1),
(59, '2013-09-09', 'Item11', 'Ladies Shorts', 'Ladies_Pants', 1, 100, 100, 100, 1),
(60, '2013-09-09', 'Item11', 'Church Gown Small', 'Laundry', 1, 250, 250, 250, 1),
(61, '2013-09-09', 'Item11', 'Church Gown Large', 'Laundry', 1, 250, 250, 250, 1),
(62, '2013-09-09', 'Item11', 'Academic Gown', 'Laundry', 1, 250, 250, 250, 1),
(63, '2013-09-09', 'Item11', 'Lawyer Robe', 'Laundry', 1, 250, 250, 250, 1),
(64, '2013-09-09', 'Item11', 'Towel Large', 'Laundry', 1, 150, 150, 150, 1),
(65, '2013-09-09', 'Item11', 'Towel Medium', 'Laundry', 1, 200, 200, 200, 1),
(66, '2013-09-09', 'Item11', 'Hand Towel', 'Laundry', 1, 100, 100, 100, 1),
(67, '2013-09-09', 'Item11', 'Face Towel', 'Laundry', 1, 100, 100, 100, 1),
(68, '2013-09-09', 'Item11', 'Wrapper Ankara', 'Laundry', 1, 100, 100, 100, 1),
(69, '2013-09-09', 'Item11', 'Teddy Bear', 'Laundry', 1, 250, 250, 250, 1),
(70, '2013-09-09', 'Item11', 'Face Cap', 'Laundry', 1, 70, 70, 70, 1),
(71, '2013-09-09', 'Item11', 'Night Gown', 'Laundry', 1, 100, 100, 100, 1),
(72, '2013-09-09', 'Item11', 'Underwear Slip', 'Laundry', 1, 100, 100, 100, 1),
(73, '2013-09-09', 'Item11', 'Overall', 'Laundry', 1, 150, 150, 150, 1),
(74, '2013-09-09', 'Item11', 'Bath Robe Terry', 'Laundry', 1, 200, 200, 200, 1),
(75, '2013-09-09', 'Item11', 'Bath Robe Belt', 'Laundry', 1, 200, 200, 200, 1),
(76, '2013-09-09', 'Item11', 'Track Suit', 'Laundry', 1, 150, 150, 150, 1),
(77, '2013-09-09', 'Item11', 'FOOT MAT', 'Laundry', 1, 200, 200, 200, 1),
(78, '2013-09-09', 'Item11', 'MOFFLAR', 'Laundry', 1, 100, 100, 100, 1),
(79, '2013-09-09', 'Item11', 'Men Native 3 pc', 'LD_Men_Natives', 3, 250, 250, 250, 3),
(80, '2013-09-09', 'Item11', 'Men Native 2 pc', 'LD_Men_Natives', 2, 150, 150, 150, 2),
(81, '2013-09-09', 'Item11', 'Agbada only', 'LD_Men_Natives', 1, 350, 350, 350, 1),
(82, '2013-09-09', 'Item11', 'Native cap', 'LD_Men_Natives', 1, 100, 100, 100, 1),
(83, '2013-09-09', 'Item11', 'Native top', 'LD_Men_Natives', 1, 150, 150, 150, 1),
(84, '2013-09-09', 'Item11', 'LD Kaftan ', 'LD_Men_Natives', 1, 150, 150, 150, 1),
(85, '2013-09-09', 'Item11', 'LD Trouser', 'LD_Pants', 1, 100, 100, 100, 1),
(86, '2013-09-09', 'Item11', 'Pyjamas', 'LD_Pants', 2, 100, 100, 100, 2),
(87, '2013-09-09', 'Item11', 'Shirts', 'LD_Shirts', 1, 100, 100, 100, 1),
(88, '2013-09-09', 'Item11', 'Women Native  2pc', 'LD_Women_Natives', 2, 150, 150, 150, 2),
(89, '2013-09-09', 'Item11', 'Women Native 3pc', 'LD_Women_Natives', 3, 250, 250, 250, 3),
(90, '2013-09-09', 'Item11', 'Boubou/ Kaftan + Scarf', 'LD_Women_Natives', 2, 150, 150, 150, 2),
(91, '2013-09-09', 'Item11', 'Boubou/ Kaftan + Skirt/wrapper/trouser', 'LD_Women_Natives', 2, 200, 200, 200, 2),
(92, '2013-09-09', 'Item11', 'Kaftan', 'LD_Women_Natives', 1, 100, 100, 100, 1),
(93, '2013-09-09', 'Item11', 'Native top', 'LD_Women_Natives', 1, 100, 100, 100, 1),
(94, '2013-09-09', 'Item11', 'Trousers', 'Men_Pants', 1, 100, 100, 100, 1),
(95, '2013-09-09', 'Item11', 'Trousers Corduroy', 'Men_Pants', 1, 150, 150, 150, 1),
(96, '2013-09-09', 'Item11', 'Jeans Trousers', 'Men_Pants', 1, 150, 150, 150, 1),
(97, '2013-09-09', 'Item11', 'Shorts', 'Men_Pants', 1, 100, 100, 100, 1),
(98, '2013-09-09', 'Item11', 'Mens Suit 2 Pc', 'Men_Suits', 2, 600, 600, 600, 2),
(99, '2013-09-09', 'Item11', 'Mens Suit 3 Pc', 'Men_Suits', 3, 600, 600, 600, 3),
(100, '2013-09-09', 'Item11', 'Waist Coat', 'Men_Suits', 1, 200, 200, 200, 1),
(101, '2013-09-09', 'Item11', 'LD Casual Men Suit  2 pc', 'Men_Suits', 2, 600, 600, 600, 2),
(102, '2013-09-09', 'Item11', 'VAILS', 'Others', 1, 100, 100, 100, 1),
(103, '2013-09-09', 'Item11', 'MOFFLAR', 'Others', 1, 100, 100, 100, 1),
(104, '2013-09-09', 'Item11', 'FLAG', 'Others', 1, 100, 100, 100, 1),
(105, '2013-09-09', 'Item11', 'HAND GLOVE', 'OverCoat', 1, 50, 50, 50, 1),
(106, '2013-09-09', 'Item11', 'Ladies Trouser Suit 2 pc', 'Pant_Suit', 2, 600, 600, 600, 2),
(107, '2013-09-09', 'Item11', 'Ladies Trouser Suit 3 pc', 'Pant_Suit', 3, 600, 600, 600, 3),
(108, '2013-09-09', 'Item11', 'Jump Suit', 'Pant_Suit', 1, 300, 300, 300, 1),
(109, '2013-09-09', 'Item11', 'Winter Jacket', 'RainCoat', 1, 600, 600, 600, 1),
(110, '2013-09-09', 'Item11', 'Winter Coat', 'RainCoat', 1, 600, 600, 600, 1),
(111, '2013-09-09', 'Item11', 'Rain Coat', 'RainCoat', 1, 450, 450, 450, 1),
(112, '2013-09-09', 'Item11', 'Ladies skirt suit 2 pc', 'Skirt_Suits', 2, 600, 600, 600, 2),
(113, '2013-09-09', 'Item11', 'Ladies skirt suit 3 pc', 'Skirt_Suits', 3, 600, 600, 600, 3),
(114, '2013-09-09', 'Item11', 'LD Casual Women Suit 2 pc', 'Skirt_Suits', 2, 500, 500, 500, 2),
(115, '2013-09-09', 'Item11', 'Skirt', 'Skirts', 1, 100, 100, 100, 1),
(116, '2013-09-09', 'Item11', 'Skirts Narrow Pleat', 'Skirts', 1, 100, 100, 100, 1),
(117, '2013-09-09', 'Item11', 'Skirts Medium Pleat', 'Skirts', 1, 100, 100, 100, 1),
(118, '2013-09-09', 'Item11', 'Sport Jacket', 'Sports_jkt', 1, 100, 100, 100, 1),
(119, '2013-09-09', 'Item11', 'Sweater', 'Sweaters', 1, 200, 200, 200, 1),
(120, '2013-09-09', 'Item11', 'T-Shirt', 'T_Shirts', 1, 100, 100, 100, 1),
(121, '2013-09-09', 'Item11', 'Tie', 'TieAndMisc', 1, 70, 70, 70, 1),
(122, '2013-09-09', 'Item11', 'Bow Tie', 'TieAndMisc', 1, 70, 70, 70, 1),
(123, '2013-09-09', 'Item11', 'Scarf', 'TieAndMisc', 1, 70, 70, 70, 1),
(124, '2013-11-06', 'item11', 'Testing Item', 'Men_Suits', 1, 300, 300, 350, 1),
(125, '2013-11-06', 'item11', 'Testing Item2', 'Men_Suits', 1, 500, 500, 500, 1),
(126, '2013-11-06', 'item11', 'Testing Item3', 'Men_Suits', 1, 500, 500, 500, 1),
(127, '2013-11-13', 'item11', 'Duvet Large', 'Kg_Garment', 1, 500, 500, 500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `qty` int(20) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  `amtpaid` float NOT NULL,
  `balance` float NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `staff` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `date`, `name`, `qty`, `price`, `total`, `amtpaid`, `balance`, `vendor`, `staff`) VALUES
(1, '2013-09-06', 'Chemical', 12, 600, 7200, 7000, 0, 'Ayodeji', 'DEJI'),
(2, '2013-10-29', 'Staple Pin', 12, 500, 6000, 5000, 1000, 'Ayodeji', 'DEJI'),
(3, '2013-12-26', 'Chemical', 24, 500, 12000, 12000, 0, 'Ayodeji', 'DEJI'),
(4, '2014-05-10', 'Industral Bleach', 12, 500, 6000, 5000, 1000, 'Ayodeji', 'DEJI'),
(5, '2014-05-10', 'Chemical', 5, 1000, 5000, 4000, 1000, 'Ayodeji', 'DEJI');

-- --------------------------------------------------------

--
-- Table structure for table `raw`
--

CREATE TABLE IF NOT EXISTS `raw` (
  `date` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `qty` int(20) NOT NULL,
  `price` float NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `raw`
--

INSERT INTO `raw` (`date`, `name`, `qty`, `price`, `amount`) VALUES
('2013-09-06', 'Chemical', 10, 1000, 7500),
('2013-09-28', 'A4 Printing Paper', 0, 0, 0),
('2013-09-28', 'Antichlor Chemical', 0, 0, 0),
('2013-09-28', 'Ariel Detergent', 0, 0, 0),
('2013-09-28', 'Bar Soap', 0, 0, 0),
('2013-09-28', 'Bleach', 0, 0, 0),
('2013-09-28', 'Bullet', 0, 0, 0),
('2013-09-28', 'Carrier Bag', 0, 0, 0),
('2013-09-28', 'Cellotape', 0, 0, 0),
('2013-09-28', 'Clipboard file', 0, 0, 0),
('2013-09-28', 'Collar Guide', 0, 0, 0),
('2013-09-28', 'Comfort Softner', 0, 0, 0),
('2013-09-28', 'Decolour', 0, 0, 0),
('2013-09-28', 'Diesel', 0, 0, 0),
('2013-09-28', 'Disposable Cup', 0, 0, 0),
('2013-09-28', 'EZ-Oh Iron Cleaner', 0, 0, 0),
('2013-09-28', 'Face Mask', 0, 0, 0),
('2013-09-28', 'File Jacket', 0, 0, 0),
('2013-09-28', 'Grease & oil ', 0, 0, 0),
('2013-09-28', 'Hand Towel', 0, 0, 0),
('2013-09-28', 'Hangers', 0, 0, 0),
('2013-09-28', 'HT-Button Tag', 0, 0, 0),
('2013-09-28', 'HT-Commitment Tag', 0, 0, 0),
('2013-09-28', 'HT-Hangers Tag', 0, 0, 0),
('2013-09-28', 'HT-Repair Tag', 0, 0, 0),
('2013-09-28', 'HT-Special Attenttion Tag', 0, 0, 0),
('2013-09-28', 'Industral Bleach', 12, 500, 6000),
('2013-09-28', 'Ink Remover', 0, 0, 0),
('2013-09-28', 'Iron Shoe', 0, 0, 0),
('2013-09-28', 'Jacket Holder', 0, 0, 0),
('2013-09-28', 'Liguid Detergent', 0, 0, 0),
('2013-09-28', 'Masking Cellotape', 0, 0, 0),
('2013-09-28', 'Mildew A', 0, 0, 0),
('2013-09-28', 'Mildew B', 0, 0, 0),
('2013-09-28', 'National Iron', 0, 0, 0),
('2013-09-28', 'Native ID-Blue', 0, 0, 0),
('2013-09-28', 'Native ID-Green', 0, 0, 0),
('2013-09-28', 'Native ID-Pink', 0, 0, 0),
('2013-09-28', 'Native ID-Purple', 0, 0, 0),
('2013-09-28', 'Native ID-Red', 0, 0, 0),
('2013-09-28', 'Native ID-White', 0, 0, 0),
('2013-09-28', 'Native ID-Yellow', 0, 0, 0),
('2013-09-28', 'Native Nylon', 0, 0, 0),
('2013-09-28', 'Package Receipt', 0, 0, 0),
('2013-09-28', 'Paper Clip', 0, 0, 0),
('2013-09-28', 'Payment Voucher(PV)', 0, 0, 0),
('2013-09-28', 'Perklone', 0, 0, 0),
('2013-09-28', 'Petty Cash Voucher', 0, 0, 0),
('2013-09-28', 'Powder starch', 0, 0, 0),
('2013-09-28', 'Printing Roll Blue', 0, 0, 0),
('2013-09-28', 'Printing Roll Pink', 0, 0, 0),
('2013-09-28', 'Printing Roll White', 0, 0, 0),
('2013-09-28', 'Protein Revomer', 0, 0, 0),
('2013-09-28', 'Roll Nylon', 0, 0, 0),
('2013-09-28', 'Rust Remover', 0, 0, 0),
('2013-09-28', 'Shoulder Guard', 0, 0, 0),
('2013-09-28', 'Skit Clip', 0, 0, 0),
('2013-09-28', 'Spotting Bursh', 0, 0, 0),
('2013-09-28', 'Spray Starch', 0, 0, 0),
('2013-09-28', 'Spraying Can', 0, 0, 0),
('2013-09-28', 'Spraying Can Cover', 0, 0, 0),
('2013-09-28', 'Staple Pin', 12, 500, 6000),
('2013-09-28', 'Steam Iron', 0, 0, 0),
('2013-09-28', 'Tag-Blue', 0, 0, 0),
('2013-09-28', 'Tag-Green', 0, 0, 0),
('2013-09-28', 'Tag-Pink', 0, 0, 0),
('2013-09-28', 'Tag-Purple', 0, 0, 0),
('2013-09-28', 'Tag-Red', 0, 0, 0),
('2013-09-28', 'Tag-Staff', 0, 0, 0),
('2013-09-28', 'Tag-Yellow', 0, 0, 0),
('2013-09-28', 'Tie Cardboard', 0, 0, 0),
('2013-09-28', 'Tie Nylon', 0, 0, 0),
('2013-09-28', 'Trouser Liner', 0, 0, 0),
('2013-09-28', 'T-Shirt  Nylon', 0, 0, 0),
('2013-09-28', 'T-Shirt Band', 0, 0, 0),
('2013-09-28', 'T-shirt Cardboard', 0, 0, 0),
('2013-09-28', 'WayBill Booklet', 0, 0, 0),
('2014-02-11', 'Special Soap', 12, 500, 6000);

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE IF NOT EXISTS `receipts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiptsno` varchar(10) DEFAULT NULL,
  `custid` varchar(50) NOT NULL,
  `custname` varchar(100) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`id`, `receiptsno`, `custid`, `custname`, `amount`, `date`) VALUES
(1, '003', 'HQS14', 'ThankGod Ukachukwu', 450000, '2014-12-20'),
(2, '004', 'HQS14', 'ThankGod Ukachukwu', 50000, '2014-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `receiptsgen`
--

CREATE TABLE IF NOT EXISTS `receiptsgen` (
  `branch_id` varchar(50) NOT NULL,
  `maxnumber` int(10) NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receiptsgen`
--

INSERT INTO `receiptsgen` (`branch_id`, `maxnumber`) VALUES
('HQS', 0);

-- --------------------------------------------------------

--
-- Table structure for table `recid`
--

CREATE TABLE IF NOT EXISTS `recid` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `inv` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `recid`
--

INSERT INTO `recid` (`id`, `inv`) VALUES
(1, 'hi'),
(2, 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `tel`
--

CREATE TABLE IF NOT EXISTS `tel` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `tel` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tel`
--

INSERT INTO `tel` (`id`, `tel`) VALUES
(1, 'Marigold Hall And KingDelight Hall, Babcock University Ilishan Remo, Ogun State, Nigeria. West Africa<br>\r\nTel: 08128355391, 08125258437,  0812525843709'),
(2, 'Marigold Hall And KingDelight Hall, Babcock University Ilishan Remo, Ogun State, Nigeria. in Lagos.<br>\r\nTel: 08128355391, 08125258437'),
(3, 'Marigold Hall And KingDelight Hall, Babcock University Ilishan Remo, Ogun State, Nigeria.<br>\r\nTel: 08128355391, 08125258437, 08125258437');

-- --------------------------------------------------------

--
-- Table structure for table `temputilInteger`
--

CREATE TABLE IF NOT EXISTS `temputilInteger` (
  `branch_id` varchar(50) NOT NULL,
  `util_name` varchar(50) NOT NULL,
  `util_value` int(10) NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userinvoices`
--

CREATE TABLE IF NOT EXISTS `userinvoices` (
  `username` varchar(50) NOT NULL,
  `lastloginday` date NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `invoiceNo` int(10) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE IF NOT EXISTS `vendor` (
  `date` date NOT NULL,
  `vendorid` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(70) NOT NULL,
  `phoneno` varchar(12) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`vendorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`date`, `vendorid`, `name`, `address`, `phoneno`, `state`, `country`, `gender`, `email`, `type`) VALUES
('2013-09-06', 'LV2', 'Ayodeji', '117, Allen Avenue', '09087876565', 'Lagos', 'Nigeria', 'Male', 'you@yourdomain.com', 'supplier');

-- --------------------------------------------------------

--
-- Table structure for table `vid`
--

CREATE TABLE IF NOT EXISTS `vid` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `inv` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `voidedinvoicenosales`
--

CREATE TABLE IF NOT EXISTS `voidedinvoicenosales` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `branch` varchar(20) NOT NULL,
  `invoiceid` varchar(20) NOT NULL,
  `dateinvoice` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `warehousetender`
--

CREATE TABLE IF NOT EXISTS `warehousetender` (
  `date` date NOT NULL,
  `tenderid` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `totalitems` int(3) NOT NULL,
  `authorizer` varchar(100) DEFAULT NULL,
  `holder` varchar(100) DEFAULT NULL,
  `staff` varchar(20) NOT NULL,
  `approved` tinyint(1) DEFAULT '0',
  `supplied` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`tenderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehousetender`
--

INSERT INTO `warehousetender` (`date`, `tenderid`, `branch`, `totalitems`, `authorizer`, `holder`, `staff`, `approved`, `supplied`) VALUES
('2014-11-21', 'HQS-2', 'HEADOFFICE_SALES', 1, '', '', 'Ike6952', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `warehousetenderbody`
--

CREATE TABLE IF NOT EXISTS `warehousetenderbody` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `branch` varchar(20) NOT NULL,
  `invoiceid` varchar(20) NOT NULL,
  `itemid` varchar(100) NOT NULL,
  `itemdesc` varchar(100) NOT NULL,
  `qty` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `warehousetenderbody`
--

INSERT INTO `warehousetenderbody` (`id`, `branch`, `invoiceid`, `itemid`, `itemdesc`, `qty`) VALUES
(1, 'HEADOFFICE_SALES', 'HQS-2', '-80 yds SIN - 1.5MM', '1.5mm ODIC Single Wire', 500);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE IF NOT EXISTS `withdraw` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `branch` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `chequeno` varchar(20) NOT NULL,
  `withdrawal` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `bank` varchar(20) NOT NULL,
  `account` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `branch`, `date`, `chequeno`, `withdrawal`, `amount`, `bank`, `account`) VALUES
(1, 'HeadOffice', '2013-10-16', '2345', 'Deji', 1000, 'Cash-At-Hand', 'GTBank'),
(4, 'HEADOFFICE', '2014-03-08', '45444', 'deji femi', 5000, 'Cash-At-Hand', 'First Bank'),
(5, 'HEADOFFICE', '2014-03-08', '45444', 'deji femi', 5000, 'Cash-At-Hand', 'GTBank'),
(6, 'HEADOFFICE', '2014-03-18', 'Exp-Form', 'Mr Deji', 6000, 'Cash-at-hand', 'Fidelity Bank'),
(7, 'HEADOFFICE', '2014-03-18', 'Exp-Form', 'Mr Deji', 4000, 'Cash-at-hand', 'Fidelity Bank'),
(8, 'HEADOFFICE', '2014-03-18', 'Exp-Form', 'Mr Deji', 2000, 'Advertising  Express', 'Fidelity Bank');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawarch`
--

CREATE TABLE IF NOT EXISTS `withdrawarch` (
  `id` int(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `chequeno` varchar(20) NOT NULL,
  `withdrawal` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `bank` varchar(20) NOT NULL,
  `account` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdrawarch`
--

INSERT INTO `withdrawarch` (`id`, `branch`, `date`, `chequeno`, `withdrawal`, `amount`, `bank`, `account`) VALUES
(9, 'HEADOFFICE_ADMIN', '2014-11-26', '33221', 'mr olu', 400000, 'Cash-At-Hand', 'GTBank');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
