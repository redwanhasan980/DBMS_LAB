-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2025 at 06:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `ApplicationID` varchar(20) NOT NULL,
  `BudgetYear` int(11) NOT NULL,
  `AllocatedBudget` decimal(15,2) DEFAULT NULL,
  `DepartmentNameShortHand` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`ApplicationID`, `BudgetYear`, `AllocatedBudget`, `DepartmentNameShortHand`) VALUES
('cse20170305', 2017, 300000.00, 'CSE'),
('cse20180308', 2018, 320000.00, 'CSE'),
('eee20170306', 2017, 200000.00, 'EEE'),
('eee20190309', 2019, 250000.00, 'EEE'),
('iict20170304', 2017, 250000.00, 'SWE'),
('swe20180307', 2018, 270000.00, 'SWE');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `AccessionNumber` varchar(50) NOT NULL,
  `Title` varchar(200) DEFAULT NULL,
  `AuthorEditor` varchar(150) DEFAULT NULL,
  `Edition` varchar(50) DEFAULT NULL,
  `Volume` varchar(50) DEFAULT NULL,
  `PlaceOfPublication` varchar(100) DEFAULT NULL,
  `Publisher` varchar(100) DEFAULT NULL,
  `DateOfPublication` date DEFAULT NULL,
  `Source` varchar(100) DEFAULT NULL,
  `Binding` varchar(50) DEFAULT NULL,
  `Pagination` int(11) DEFAULT NULL,
  `BillNumber` varchar(50) DEFAULT NULL,
  `BillDate` date DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `AvailableCopy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`AccessionNumber`, `Title`, `AuthorEditor`, `Edition`, `Volume`, `PlaceOfPublication`, `Publisher`, `DateOfPublication`, `Source`, `Binding`, `Pagination`, `BillNumber`, `BillDate`, `ISBN`, `AvailableCopy`) VALUES
('I002535', 'The programming Language of Oracle', 'Ivan Bayross', '3rd', '1', 'BPB', 'NewDelhi', '2005-03-12', 'purchase', 'PB', 415, '20210094', '2015-03-23', '8178569647', 18),
('I002536', 'Database System Concepts', 'Abraham Silberschatz', '6th', '1', 'New York', 'McGraw-Hill', '2019-05-15', 'purchase', 'HB', 1376, '20210095', '2019-06-10', '9780078022159', 12),
('I002537', 'Operating System Concepts', 'Abraham Silberschatz', '9th', '1', 'New York', 'Wiley', '2018-03-20', 'purchase', 'HB', 976, '20210096', '2018-04-12', '9781119456339', 10),
('I002538', 'Introduction to Algorithms', 'Cormen, Leiserson, Rivest, Stein', '3rd', '1', 'Cambridge', 'MIT Press', '2009-07-31', 'purchase', 'HB', 1312, '20210097', '2009-08-15', '9780262033848', 15),
('I002539', 'Computer Networks', 'Andrew S. Tanenbaum', '5th', '1', 'Boston', 'Pearson', '2010-04-01', 'purchase', 'PB', 960, '20210098', '2010-05-10', '9780132126953', 8),
('I002540', 'Software Engineering', 'Ian Sommerville', '10th', '1', 'London', 'Pearson', '2015-09-10', 'purchase', 'HB', 832, '20210099', '2015-10-01', '9780133943030', 14),
('I002541', 'Digital Design', 'M. Morris Mano', '5th', '1', 'New Jersey', 'Pearson', '2013-06-22', 'purchase', 'HB', 720, '20210100', '2013-07-15', '9780132774208', 9),
('I002542', 'Electrical Machinery', 'P. S. Bimbhra', '7th', '1', 'Delhi', 'Khanna Publishers', '2017-08-14', 'purchase', 'HB', 940, '20210101', '2017-09-01', '9788174092352', 11),
('I002543', 'Signals and Systems', 'Alan V. Oppenheim', '2nd', '1', 'New Jersey', 'Prentice Hall', '1996-02-15', 'purchase', 'PB', 957, '20210102', '1996-03-01', '9780138147570', 13),
('I002544', 'Discrete Mathematics and Its Applications', 'Kenneth H. Rosen', '7th', '1', 'New York', 'McGraw-Hill', '2011-01-20', 'purchase', 'HB', 1072, '20210103', '2011-02-01', '9780073383095', 16),
('I002545', 'Artificial Intelligence: A Modern Approach', 'Stuart Russell, Peter Norvig', '3rd', '1', 'Upper Saddle River', 'Pearson', '2010-12-11', 'purchase', 'HB', 1152, '20210104', '2011-01-05', '9780136042594', 7),
('I002546', 'Computer Organization and Design', 'David A. Patterson', '5th', '1', 'San Francisco', 'Morgan Kaufmann', '2013-03-15', 'purchase', 'HB', 784, '20210105', '2013-04-01', '9780124077263', 12),
('I002547', 'Principles of Electrical Engineering', 'V. K. Mehta', '6th', '1', 'Delhi', 'S. Chand', '2015-07-20', 'purchase', 'HB', 852, '20210106', '2015-08-01', '9788121922997', 9),
('I002548', 'Embedded Systems: Introduction to ARM Cortex-M Microcontrollers', 'Jonathan W. Valvano', '2nd', '1', 'Austin', 'CreateSpace', '2012-05-05', 'purchase', 'PB', 1024, '20210107', '2012-06-01', '9781463590154', 7),
('I002549', 'Power System Analysis', 'John J. Grainger', '2nd', '1', 'New York', 'McGraw-Hill', '1994-11-10', 'purchase', 'HB', 800, '20210108', '1994-12-01', '9780070359581', 10),
('I002550', 'Computer Graphics: Principles and Practice', 'Foley, van Dam', '3rd', '1', 'Boston', 'Addison-Wesley', '2013-01-18', 'purchase', 'HB', 1152, '20210109', '2013-02-01', '9780321399526', 8),
('I002551', 'Control Systems Engineering', 'Norman S. Nise', '7th', '1', 'Hoboken', 'Wiley', '2015-09-25', 'purchase', 'PB', 1200, '20210110', '2015-10-10', '9781118170512', 11),
('I002552', 'Data Structures and Algorithms in Java', 'Robert Lafore', '2nd', '1', 'New York', 'Sams Publishing', '2002-06-12', 'purchase', 'PB', 832, '20210111', '2002-07-01', '9780672324536', 14),
('I002553', 'Microprocessor Architecture, Programming, and Applications', 'Ramesh S. Gaonkar', '5th', '1', 'Delhi', 'Penram International', '2002-03-15', 'purchase', 'HB', 720, '20210112', '2002-04-01', '9788176252293', 9),
('I002554', 'Electrical Machines', 'A. K. Sawhney', '7th', '1', 'Delhi', 'Dhanpat Rai & Sons', '2010-05-10', 'purchase', 'HB', 1120, '20210113', '2010-06-01', '9788177008100', 13),
('I002555', 'Machine Learning', 'Tom M. Mitchell', '1st', '1', 'New York', 'McGraw-Hill', '1997-03-12', 'purchase', 'PB', 414, '20210114', '1997-04-01', '9780070428072', 10);

-- --------------------------------------------------------

--
-- Table structure for table `bookrequisition`
--

CREATE TABLE `bookrequisition` (
  `RequisitionID` varchar(20) NOT NULL,
  `ApplicationID` varchar(20) DEFAULT NULL,
  `BookTitle` varchar(200) DEFAULT NULL,
  `AuthorName` varchar(150) DEFAULT NULL,
  `Publisher` varchar(100) DEFAULT NULL,
  `Edition` varchar(50) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `PricePerUnit` decimal(10,2) DEFAULT NULL,
  `TotalPrice` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookrequisition`
--

INSERT INTO `bookrequisition` (`RequisitionID`, `ApplicationID`, `BookTitle`, `AuthorName`, `Publisher`, `Edition`, `ISBN`, `Quantity`, `PricePerUnit`, `TotalPrice`) VALUES
('REQ001', 'iict20170304', 'Database System Concepts', 'Abraham Silberschatz', 'McGraw-Hill', '6th', '9780078022159', 5, 4500.00, 22500.00),
('REQ002', 'cse20170305', 'Operating System Concepts', 'Abraham Silberschatz', 'Wiley', '9th', '9781119456339', 3, 5000.00, 15000.00),
('REQ003', 'swe20180307', 'Introduction to Algorithms', 'Cormen, Leiserson, Rivest, Stein', 'MIT Press', '3rd', '9780262033848', 4, 6000.00, 24000.00),
('REQ004', 'eee20170306', 'Power System Analysis', 'John J. Grainger', 'McGraw-Hill', '2nd', '9780070359581', 2, 5200.00, 10400.00),
('REQ005', 'cse20180308', 'Computer Networks', 'Andrew S. Tanenbaum', 'Pearson', '5th', '9780132126953', 6, 4000.00, 24000.00),
('REQ006', 'iict20170304', 'Software Engineering', 'Ian Sommerville', 'Pearson', '10th', '9780133943030', 3, 4500.00, 13500.00),
('REQ007', 'eee20190309', 'Electrical Machines', 'A. K. Sawhney', 'Dhanpat Rai & Sons', '7th', '9788177008100', 4, 4800.00, 19200.00),
('REQ008', 'cse20170305', 'Discrete Mathematics and Its Applications', 'Kenneth H. Rosen', 'McGraw-Hill', '7th', '9780073383095', 5, 4200.00, 21000.00),
('REQ009', 'swe20180307', 'Artificial Intelligence: A Modern Approach', 'Stuart Russell, Peter Norvig', 'Pearson', '3rd', '9780136042594', 2, 5500.00, 11000.00),
('REQ010', 'eee20170306', 'Control Systems Engineering', 'Norman S. Nise', 'Wiley', '7th', '9781118170512', 3, 4700.00, 14100.00);

-- --------------------------------------------------------

--
-- Table structure for table `classification`
--

CREATE TABLE `classification` (
  `AccessionNumber` varchar(30) NOT NULL,
  `SubjectCategory` varchar(100) DEFAULT NULL,
  `DeweyDecimalNumber` decimal(10,2) DEFAULT NULL,
  `CutterCode` varchar(50) DEFAULT NULL,
  `CallNumber` varchar(50) DEFAULT NULL,
  `LocationCode` varchar(50) DEFAULT NULL,
  `CatalogEntryDate` date DEFAULT NULL,
  `CatalogedBy` varchar(100) DEFAULT NULL,
  `Barcode` varchar(50) DEFAULT NULL,
  `SpineLabel` varchar(100) DEFAULT NULL,
  `shelfId` varchar(20) DEFAULT NULL,
  `shelfCol` int(11) DEFAULT NULL,
  `shelfRow` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classification`
--

INSERT INTO `classification` (`AccessionNumber`, `SubjectCategory`, `DeweyDecimalNumber`, `CutterCode`, `CallNumber`, `LocationCode`, `CatalogEntryDate`, `CatalogedBy`, `Barcode`, `SpineLabel`, `shelfId`, `shelfCol`, `shelfRow`) VALUES
('I002535', 'Programming', 5.13, 'B25', '005.13 B25', 'LOC01', '2023-08-01', 'Librarian1', 'BC002535', 'SP002535', 'S01', 1, 1),
('I002536', 'Database', 5.74, 'S55', '005.74 S55', 'LOC01', '2023-08-02', 'Librarian1', 'BC002536', 'SP002536', 'S01', 1, 2),
('I002537', 'Operating Systems', 5.43, 'S55', '005.43 S55', 'LOC01', '2023-08-03', 'Librarian2', 'BC002537', 'SP002537', 'S01', 1, 3),
('I002538', 'Algorithms', 5.10, 'C66', '005.1 C66', 'LOC02', '2023-08-04', 'Librarian2', 'BC002538', 'SP002538', 'S02', 2, 1),
('I002539', 'Networking', 4.60, 'T18', '004.6 T18', 'LOC02', '2023-08-05', 'Librarian3', 'BC002539', 'SP002539', 'S02', 2, 2),
('I002540', 'Software Engineering', 5.10, 'S66', '005.1 S66', 'LOC02', '2023-08-06', 'Librarian3', 'BC002540', 'SP002540', 'S02', 2, 3),
('I002541', 'Digital Design', 621.39, 'M66', '621.39 M66', 'LOC03', '2023-08-07', 'Librarian1', 'BC002541', 'SP002541', 'S03', 3, 1),
('I002542', 'Electrical Machinery', 621.30, 'B46', '621.3 B46', 'LOC03', '2023-08-08', 'Librarian1', 'BC002542', 'SP002542', 'S03', 3, 2),
('I002543', 'Signals & Systems', 621.38, 'O65', '621.38 O65', 'LOC03', '2023-08-09', 'Librarian2', 'BC002543', 'SP002543', 'S03', 3, 3),
('I002544', 'Discrete Mathematics', 511.30, 'R64', '511.3 R64', 'LOC04', '2023-08-10', 'Librarian2', 'BC002544', 'SP002544', 'S04', 4, 1),
('I002545', 'Artificial Intelligence', 6.30, 'R87', '006.3 R87', 'LOC04', '2023-08-11', 'Librarian3', 'BC002545', 'SP002545', 'S04', 4, 2),
('I002546', 'Computer Organization', 4.10, 'P28', '004.1 P28', 'LOC04', '2023-08-12', 'Librarian3', 'BC002546', 'SP002546', 'S04', 4, 3),
('I002547', 'Electrical Engineering', 621.30, 'M44', '621.3 M44', 'LOC05', '2023-08-13', 'Librarian1', 'BC002547', 'SP002547', 'S05', 5, 1),
('I002548', 'Embedded Systems', 629.89, 'V25', '629.892 V25', 'LOC05', '2023-08-14', 'Librarian1', 'BC002548', 'SP002548', 'S05', 5, 2),
('I002549', 'Power Systems', 621.30, 'G72', '621.3 G72', 'LOC05', '2023-08-15', 'Librarian2', 'BC002549', 'SP002549', 'S05', 5, 3),
('I002550', 'Computer Graphics', 6.60, 'F65', '006.6 F65', 'LOC06', '2023-08-16', 'Librarian2', 'BC002550', 'SP002550', 'S06', 6, 1),
('I002551', 'Control Systems', 621.30, 'N57', '621.3 N57', 'LOC06', '2023-08-17', 'Librarian3', 'BC002551', 'SP002551', 'S06', 6, 2),
('I002552', 'Data Structures in Java', 5.13, 'L23', '005.133 L23', 'LOC06', '2023-08-18', 'Librarian3', 'BC002552', 'SP002552', 'S06', 6, 3),
('I002553', 'Microprocessors', 621.38, 'G25', '621.38 G25', 'LOC07', '2023-08-19', 'Librarian1', 'BC002553', 'SP002553', 'S07', 7, 1),
('I002554', 'Electrical Machines', 621.30, 'S29', '621.3 S29', 'LOC07', '2023-08-20', 'Librarian1', 'BC002554', 'SP002554', 'S07', 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentNameShortHand` varchar(20) NOT NULL,
  `DepartmentName` varchar(100) NOT NULL,
  `DepartmentHeadName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentNameShortHand`, `DepartmentName`, `DepartmentHeadName`) VALUES
('CSE', 'Computer Science and Engineering', 'Md Masum'),
('EEE', 'Electrical and Electronics Engineering', 'Dr Ifte Khairul Amin'),
('SWE', 'Software Engineering', 'Dr Abdul Momin');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `TeacherID` varchar(20) NOT NULL,
  `TeacherName` varchar(150) DEFAULT NULL,
  `DepartmentNameShortHand` varchar(20) DEFAULT NULL,
  `Designation` varchar(100) DEFAULT NULL,
  `Signature` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`TeacherID`, `TeacherName`, `DepartmentNameShortHand`, `Designation`, `Signature`) VALUES
('cse55583', 'Rakshit Kumar Acharjee', 'CSE', 'Assistant Professor', 'rakshit'),
('cse55586', 'Mishal khan', 'CSE', 'Lecturer', 'mishal'),
('eee55585', 'Dr Ifte Khairul Amin', 'EEE', 'Professor', 'amin'),
('eee55588', 'Rasheduzzajaman', 'EEE', 'Assistant Professor', 'rashed'),
('swe55584', 'Mahfuzur Rahman Emon', 'SWE', 'Lecturer', 'emon'),
('swe55587', 'Sayma Sultana', 'SWE', 'Assistant Professor', 'sayma');

-- --------------------------------------------------------

--
-- Table structure for table `facultyborrowing`
--

CREATE TABLE `facultyborrowing` (
  `BorrowID` varchar(20) NOT NULL,
  `TeacherID` varchar(20) DEFAULT NULL,
  `AccessionNumber` varchar(30) DEFAULT NULL,
  `BorrowDate` date DEFAULT NULL,
  `ReturnDate` date DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facultyborrowing`
--

INSERT INTO `facultyborrowing` (`BorrowID`, `TeacherID`, `AccessionNumber`, `BorrowDate`, `ReturnDate`, `Status`) VALUES
('B001', 'cse55583', 'I002536', '2025-08-01', '2025-08-15', 'Returned'),
('B002', 'swe55584', 'I002535', '2025-08-03', '2025-08-17', 'Returned'),
('B003', 'eee55585', 'I002542', '2025-08-05', '2025-08-19', 'Borrowed'),
('B004', 'cse55586', 'I002537', '2025-08-06', '2025-08-20', 'Returned'),
('B005', 'swe55587', 'I002538', '2025-08-07', '2025-08-21', 'Borrowed'),
('B006', 'eee55588', 'I002544', '2025-08-08', '2025-08-22', 'Borrowed'),
('B007', 'cse55583', 'I002552', '2025-08-09', '2025-08-23', 'Returned'),
('B008', 'swe55584', 'I002540', '2025-08-10', '2025-08-24', 'Returned'),
('B009', 'eee55585', 'I002547', '2025-08-11', '2025-08-25', 'Borrowed'),
('B010', 'cse55586', 'I002539', '2025-08-12', '2025-08-26', 'Returned');

-- --------------------------------------------------------

--
-- Table structure for table `outsidebookentry`
--

CREATE TABLE `outsidebookentry` (
  `EntryID` varchar(20) NOT NULL,
  `StudentRegNumber` varchar(20) DEFAULT NULL,
  `BookTitle` varchar(200) DEFAULT NULL,
  `EntryStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `outsidebookentry`
--

INSERT INTO `outsidebookentry` (`EntryID`, `StudentRegNumber`, `BookTitle`, `EntryStatus`) VALUES
('O001', '2020131047', 'Database System Concepts', 'Issued'),
('O002', '2020331049', 'Operating System Concepts', 'Returned'),
('O003', '2018431051', 'Computer Networks', 'Issued'),
('O004', '2018431052', 'Introduction to Algorithms', 'Returned'),
('O005', '2018811048', 'Power System Analysis', 'Issued'),
('O006', '2019011050', 'Electrical Machines', 'Returned'),
('O007', '2020331049', 'Software Engineering', 'Issued'),
('O008', '2019011051', 'Data Structures and Algorithms in Java', 'Returned'),
('O009', '2019111052', 'Control Systems Engineering', 'Issued'),
('O010', '2020431050', 'Machine Learning', 'Returned');

-- --------------------------------------------------------

--
-- Table structure for table `procurement`
--

CREATE TABLE `procurement` (
  `ProcurementID` varchar(20) NOT NULL,
  `RequisitionID` varchar(20) DEFAULT NULL,
  `VendorID` varchar(20) DEFAULT NULL,
  `ProcurementApprovalDate` date DEFAULT NULL,
  `DeliveryDate` date DEFAULT NULL,
  `HandoverDateToIICT` date DEFAULT NULL,
  `BookReceivingRecord` varchar(200) DEFAULT NULL,
  `ShelvingStatus` varchar(100) DEFAULT NULL,
  `ProcurementStatus` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `procurement`
--

INSERT INTO `procurement` (`ProcurementID`, `RequisitionID`, `VendorID`, `ProcurementApprovalDate`, `DeliveryDate`, `HandoverDateToIICT`, `BookReceivingRecord`, `ShelvingStatus`, `ProcurementStatus`) VALUES
('P001', 'REQ001', 'V001', '2025-08-01', '2025-08-05', '2025-08-06', 'Received', 'Shelved', 'Completed'),
('P002', 'REQ002', 'V002', '2025-08-02', '2025-08-06', '2025-08-07', 'Received', 'Pending', 'Completed'),
('P003', 'REQ003', 'V003', '2025-08-03', '2025-08-08', '2025-08-09', 'Received', 'Shelved', 'Completed'),
('P004', 'REQ004', 'V004', '2025-08-04', '2025-08-09', '2025-08-10', 'Received', 'Shelved', 'Pending'),
('P005', 'REQ005', 'V005', '2025-08-05', '2025-08-10', '2025-08-11', 'Received', 'Pending', 'Completed'),
('P006', 'REQ006', 'V006', '2025-08-06', '2025-08-11', '2025-08-12', 'Received', 'Shelved', 'Completed'),
('P007', 'REQ007', 'V007', '2025-08-07', '2025-08-12', '2025-08-13', 'Received', 'Shelved', 'Pending'),
('P008', 'REQ008', 'V008', '2025-08-08', '2025-08-13', '2025-08-14', 'Received', 'Pending', 'Completed'),
('P009', 'REQ009', 'V009', '2025-08-09', '2025-08-14', '2025-08-15', 'Received', 'Shelved', 'Completed'),
('P010', 'REQ010', 'V010', '2025-08-10', '2025-08-15', '2025-08-16', 'Received', 'Shelved', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentRegNumber` varchar(20) NOT NULL,
  `StudentName` varchar(150) DEFAULT NULL,
  `PhoneNumber` varchar(15) DEFAULT NULL,
  `DepartmentNameShortHand` varchar(20) DEFAULT NULL,
  `Session` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentRegNumber`, `StudentName`, `PhoneNumber`, `DepartmentNameShortHand`, `Session`) VALUES
('2018331049', 'Nafisa Rahman', '01720000002', 'CSE', '2018-19'),
('2018331050', 'Shahriar Karim', '01720000003', 'CSE', '2018-19'),
('2018431051', 'Mahfuz Ahmed', '01720000004', 'CSE', '2019-20'),
('2018431052', 'Rakib Hasan', '01720000005', 'CSE', '2019-20'),
('2018531053', 'Nusrat Jahan', '01720000006', 'CSE', '2020-21'),
('2018531054', 'Lamia Akter', '01720000007', 'CSE', '2020-21'),
('2018811048', 'Rumana Akter', '01730000001', 'EEE', '2018-19'),
('2018911049', 'Arif Hossain', '01730000002', 'EEE', '2019-20'),
('2019011050', 'Shamima Begum', '01730000003', 'EEE', '2020-21'),
('2019011051', 'Tanzim Reza', '01730000004', 'EEE', '2020-21'),
('2019111052', 'Fahim Ahmed', '01730000005', 'EEE', '2021-22'),
('2019111053', 'Sadia Islam', '01730000006', 'EEE', '2021-22'),
('2020131047', 'Md Redwan Hasan', '01700000022', 'SWE', '2020-21'),
('2020231048', 'Tanvir Hasan', '01710000001', 'SWE', '2020-21'),
('2020331049', 'Fahim Rahman', '01710000002', 'SWE', '2021-22'),
('2020431050', 'Sadia Akter', '01710000003', 'SWE', '2021-22'),
('2020531051', 'Rafiq Islam', '01710000004', 'SWE', '2022-23'),
('2020631052', 'Imran Hossain', '01710000005', 'SWE', '2022-23'),
('2020731053', 'Raihana Akter', '01710000006', 'SWE', '2023-24'),
('2020831054', 'Sabbir Rahman', '01710000007', 'SWE', '2023-24'),
('2021431048', 'Jahidul Islam', '01720000001', 'CSE', '2024-25');

-- --------------------------------------------------------

--
-- Table structure for table `studentborrowing`
--

CREATE TABLE `studentborrowing` (
  `BorrowID` varchar(20) NOT NULL,
  `StudentRegNumber` varchar(20) DEFAULT NULL,
  `AccessionNumber` varchar(30) DEFAULT NULL,
  `BorrowDate` date DEFAULT NULL,
  `ReturnDate` date DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentborrowing`
--

INSERT INTO `studentborrowing` (`BorrowID`, `StudentRegNumber`, `AccessionNumber`, `BorrowDate`, `ReturnDate`, `Status`) VALUES
('SB001', '2018331049', 'I002536', '2025-08-01', '2025-08-15', 'Returned'),
('SB002', '2018431051', 'I002537', '2025-08-03', '2025-08-17', 'Issued'),
('SB003', '2018531053', 'I002538', '2025-08-05', '2025-08-20', 'Returned'),
('SB004', '2018811048', 'I002539', '2025-08-07', '2025-08-21', 'Issued'),
('SB005', '2019011050', 'I002540', '2025-08-09', '2025-08-23', 'Returned'),
('SB006', '2020131047', 'I002541', '2025-08-10', '2025-08-24', 'Issued'),
('SB007', '2020331049', 'I002542', '2025-08-12', '2025-08-26', 'Returned'),
('SB008', '2020431050', 'I002543', '2025-08-14', '2025-08-28', 'Issued'),
('SB009', '2020531051', 'I002544', '2025-08-16', '2025-08-30', 'Returned'),
('SB010', '2020631052', 'I002545', '2025-08-18', '2025-09-01', 'Issued');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `VendorID` varchar(20) NOT NULL,
  `VendorName` varchar(150) DEFAULT NULL,
  `QuotationDetails` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`VendorID`, `VendorName`, `QuotationDetails`) VALUES
('V001', 'Ahasania Mission Book Distribution House', 'Quotation approved for CSE, EEE, SWE books'),
('V002', 'Bengal Book House', 'Quotation approved for technical books'),
('V003', 'Mukti Publishing House', 'Quotation approved for computer science books'),
('V004', 'Prothoma Prokashon', 'Quotation approved for engineering books'),
('V005', 'Sheba Prokashoni', 'Quotation approved for mathematics books'),
('V006', 'Anny Prokashoni', 'Quotation approved for management books'),
('V007', 'Adhunik Prokashoni', 'Quotation approved for science books'),
('V008', 'Rupali Prokashoni', 'Quotation approved for literature books'),
('V009', 'Bangla Academy Publications', 'Quotation approved for academic books'),
('V010', 'Shikha Prokashoni', 'Quotation approved for reference books');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`ApplicationID`),
  ADD KEY `DepartmentNameShortHand` (`DepartmentNameShortHand`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`AccessionNumber`);

--
-- Indexes for table `bookrequisition`
--
ALTER TABLE `bookrequisition`
  ADD PRIMARY KEY (`RequisitionID`),
  ADD KEY `ApplicationID` (`ApplicationID`);

--
-- Indexes for table `classification`
--
ALTER TABLE `classification`
  ADD PRIMARY KEY (`AccessionNumber`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentNameShortHand`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`TeacherID`),
  ADD KEY `DepartmentNameShortHand` (`DepartmentNameShortHand`);

--
-- Indexes for table `facultyborrowing`
--
ALTER TABLE `facultyborrowing`
  ADD PRIMARY KEY (`BorrowID`),
  ADD KEY `TeacherID` (`TeacherID`),
  ADD KEY `AccessionNumber` (`AccessionNumber`);

--
-- Indexes for table `outsidebookentry`
--
ALTER TABLE `outsidebookentry`
  ADD PRIMARY KEY (`EntryID`),
  ADD KEY `StudentRegNumber` (`StudentRegNumber`);

--
-- Indexes for table `procurement`
--
ALTER TABLE `procurement`
  ADD PRIMARY KEY (`ProcurementID`),
  ADD KEY `RequisitionID` (`RequisitionID`),
  ADD KEY `VendorID` (`VendorID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentRegNumber`),
  ADD KEY `DepartmentNameShortHand` (`DepartmentNameShortHand`);

--
-- Indexes for table `studentborrowing`
--
ALTER TABLE `studentborrowing`
  ADD PRIMARY KEY (`BorrowID`),
  ADD KEY `StudentRegNumber` (`StudentRegNumber`),
  ADD KEY `AccessionNumber` (`AccessionNumber`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`VendorID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `application_ibfk_1` FOREIGN KEY (`DepartmentNameShortHand`) REFERENCES `department` (`DepartmentNameShortHand`);

--
-- Constraints for table `bookrequisition`
--
ALTER TABLE `bookrequisition`
  ADD CONSTRAINT `bookrequisition_ibfk_1` FOREIGN KEY (`ApplicationID`) REFERENCES `application` (`ApplicationID`);

--
-- Constraints for table `classification`
--
ALTER TABLE `classification`
  ADD CONSTRAINT `classification_ibfk_1` FOREIGN KEY (`AccessionNumber`) REFERENCES `book` (`AccessionNumber`) ON DELETE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`DepartmentNameShortHand`) REFERENCES `department` (`DepartmentNameShortHand`);

--
-- Constraints for table `facultyborrowing`
--
ALTER TABLE `facultyborrowing`
  ADD CONSTRAINT `facultyborrowing_ibfk_1` FOREIGN KEY (`TeacherID`) REFERENCES `faculty` (`TeacherID`),
  ADD CONSTRAINT `facultyborrowing_ibfk_2` FOREIGN KEY (`AccessionNumber`) REFERENCES `book` (`AccessionNumber`);

--
-- Constraints for table `outsidebookentry`
--
ALTER TABLE `outsidebookentry`
  ADD CONSTRAINT `outsidebookentry_ibfk_1` FOREIGN KEY (`StudentRegNumber`) REFERENCES `student` (`StudentRegNumber`);

--
-- Constraints for table `procurement`
--
ALTER TABLE `procurement`
  ADD CONSTRAINT `procurement_ibfk_1` FOREIGN KEY (`RequisitionID`) REFERENCES `bookrequisition` (`RequisitionID`),
  ADD CONSTRAINT `procurement_ibfk_2` FOREIGN KEY (`VendorID`) REFERENCES `vendor` (`VendorID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`DepartmentNameShortHand`) REFERENCES `department` (`DepartmentNameShortHand`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
