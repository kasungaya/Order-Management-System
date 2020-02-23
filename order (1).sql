-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2017 at 04:01 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `order`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `telephone` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nic` varchar(10) NOT NULL,
  `type` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `address`, `telephone`, `email`, `nic`, `type`, `image`) VALUES
('11111', '1111', '111', 1111, '1111', '11111', 'WHOLE SALE', 'C:/Users/Kasun/Downloads/50c0758b271a608b1fe02db329b5e9b3.jpg'),
('354453', 'kamal', 'sfgsggs', 765364446, 'fhdfhdh', '456453453', 'WHOLE SALE', 'C:/Users/Kasun/Downloads/50c0758b271a608b1fe02db329b5e9b3.jpg'),
('45', 'dd', 'aa', 11, 'aa', '65', 'WHOLE SALE', 'C:/Users/Rakshitha Kasun/Desktop/ST2PROJECT/images/20160115-things-never-to-but-at-supermarket-.jpg'),
('4545', 'kalindu', 'malane', 54561231, 'effsfsc', '5656232', 'WHOLE SALE', 'C:/Users/Kasun/Downloads/74ba7b1d7a4176fd23c17965a4859d7c.jpg'),
('4654', 'galkasun', 'angoda', 715116579, 'kasuna@gmail.com', '5698979', 'WHOLE SALE', 'C:/Users/Kasun/Downloads/50c0758b271a608b1fe02db329b5e9b3.jpg'),
('6987', 'Mihiranga', 'malabe', 76536446, 'kalinduQ', '666416', 'WHOLE SALE', 'C:/Users/Kasun/Downloads/74ba7b1d7a4176fd23c17965a4859d7c.jpg'),
('false', 'mmmmsex', 'hjgbg', 451, 'agrggarg', '511515151', 'WHOLE SALE', 'C:/Users/Kasun/Downloads/74ba7b1d7a4176fd23c17965a4859d7c.jpg'),
('fgsgdg', 'ASAD', 'dgfdsdfadf', 123456789, 'hhjjjj@gmail.com', '963663668V', 'WHOLE SALE', 'C:/Users/Kasun/Downloads/50c0758b271a608b1fe02db329b5e9b3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` varchar(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `adress` varchar(45) NOT NULL,
  `telephone` decimal(10,0) NOT NULL,
  `email` varchar(45) NOT NULL,
  `nic` varchar(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `image` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `adress`, `telephone`, `email`, `nic`, `category`, `image`) VALUES
('123', 'qweq', 'sasdas', '12321', 'adsaa', '313312', 'Manager', 'C:/Users/Rakshitha Kasun/Desktop/itp project/31668ap.png'),
('34', 'mr perera', 'malabe', '7745698', 'rgmail.com', '9546987', 'Director', 'C:/Users/Rakshitha Kasun/Desktop/ST2PROJECT/screen520x924.jpeg'),
('65', 'rata', 'ampara', '77', 'kk', '95478', 'Manager', 'C:/Users/Rakshitha Kasun/Desktop/ST2PROJECT/240_F_101396173_vbb8geMIsaPGhJTj7c31z4LZjodDYa8J.jpg'),
('aa', 'aa', 'aa', '11', 'rr', '14', 'Manager', 'C:/Users/Rakshitha Kasun/Desktop/cgm/beautiful-green-tree.jpg'),
('en16539778', 'chamara', 'mathugama', '773707359', 'chagmail.com', '962440606', 'Dealer', ''),
('IT16122192', 'RAKSHITHAKASUN', 'AMPARA', '773559351', 'RKASUN10@GMAIL.COM', '9548', 'Manager', 'C:/Users/Rakshitha Kasun/Desktop/00 ITP images/Canteen_Employess/apple-exec-tim-cook-56c594403df78c763fa4f45f.jpg'),
('it1614', 'malsha', 'ghjk', '1943', 'malsha@', '5357v', 'Director', 'C:/Users/Rakshitha Kasun/Desktop/ST2PROJECT/img/download.jpg'),
('it16540972', 'Nipuna Piumal', '3rdlane,milikasal,divulapitiya', '771790750', 'nipu.piumalgmail.com', '951450057v', 'Dealer', '');

-- --------------------------------------------------------

--
-- Table structure for table `loginorder`
--

CREATE TABLE `loginorder` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginorder`
--

INSERT INTO `loginorder` (`username`, `password`, `type`) VALUES
('hrmmanager', '12345', 'hrmmanager'),
('cashier', '12345', 'cashier'),
('productmanager', '12345', 'productmanager'),
('customermanager', '12345', 'customermanager'),
('suppliermanager', '12345', 'suppliermanager');

-- --------------------------------------------------------

--
-- Table structure for table `pos`
--

CREATE TABLE `pos` (
  `idno` int(11) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `discount` float NOT NULL,
  `subtot` varchar(100) NOT NULL,
  `grandtot` varchar(100) NOT NULL,
  `billno` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pos`
--

INSERT INTO `pos` (`idno`, `sku`, `name`, `price`, `qty`, `discount`, `subtot`, `grandtot`, `billno`) VALUES
(1, '', 'SOAP', 50, 2, 0, '', '', ''),
(2, 'b502', 'SOAP', 50, 2, 0, '', '', ''),
(3, 'b502', 'SOAP', 50, 3, 0, '', '', ''),
(4, 'b502', 'SOAP', 50, 2, 40, '100.00', '', ''),
(5, 'b502', 'SOAP', 50, 2, 0, '100.00', '100.00', ''),
(6, 'b502', 'SOAP', 50, 2, 0, '100.00', '100.00', 'INV19490'),
(7, 'B502', 'SOAP', 100, 2, 0, '200.00', '200.00', 'INV351428'),
(8, '123', 'toothpaste', 20, 5, 0, '100.00', '100.00', 'INV40153'),
(9, '123', 'toothpaste', 20, 2, 0, '40.00', '40.00', 'INV152954'),
(10, '123', 'toothpaste', 20, 5, 0, '100.00', '100.00', 'INV923912'),
(11, 'B502', 'SOAP', 100, 4, 0, '400.00', '500.00', 'INV923912'),
(12, '123', 'toothpaste', 20, 10, 0, '200.00', '200.00', 'INV752827');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `supplier`, `quantity`, `store`, `type`, `image`) VALUES
('123', 'toothpaste', 20, 'unilever', 10000, '2ndfloor', 'grossery items', 'C:/Users/Rakshitha Kasun/Desktop/ST2PROJECT/img/download.jpg'),
('B502', 'SOAP', 100, 'UNILEVER', 50000, '2NDFLOOR5THCUBORD', 'grossery items', 'C:/Users/Rakshitha Kasun/Desktop/ST2PROJECT/img/pink-soap.jpg'),
('B504', 'SOAP', 50, 'CARGILS', 8000, '2NDFLOOR8THCUBORD', 'grossery items', 'C:/Users/Rakshitha Kasun/Desktop/ST2PROJECT/img/pink-soap.jpg'),
('B506', 'SOAP', 60, 'KOHOMBA', 7000, '1STFLOOR', 'grossery items', 'C:/Users/Rakshitha Kasun/Desktop/ST2PROJECT/img/pink-soap.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `adress` varchar(100) NOT NULL,
  `telephone` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nic` varchar(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `adress`, `telephone`, `email`, `nic`, `category`, `image`) VALUES
('45', 'll', 'aa', 11, 'aa', '164789', 'WHOLE SALE', 'C:/Users/Rakshitha Kasun/Desktop/marketing/10798836.jpg'),
('65435', 'kjbkj', 'jhhhb', 5454, 'kjbjkb', '444', 'WHOLE SALE', 'C:/Users/Rakshitha Kasun/Desktop/00 ITP images/Canteen_Employess/apple-exec-tim-cook-56c594403df78c763fa4f45f.jpg'),
('aa', 'aa', 'aa', 14, 'aa', 'aa', 'Manager', 'C:/Users/Rakshitha Kasun/Desktop/ST2PROJECT/images/20160115-things-never-to-but-at-supermarket-.jpg'),
('iuj', 'hjk', 'aghj', 897, 'haj', '789', 'toys', 'C:/Users/Rakshitha Kasun/Desktop/00 ITP images/Drivers/telematics-happy-driver-van-morale.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos`
--
ALTER TABLE `pos`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pos`
--
ALTER TABLE `pos`
  MODIFY `idno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
