-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2020 at 07:31 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffeeinventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `INID` varchar(50) NOT NULL,
  `Product_Name` varchar(50) NOT NULL,
  `Bar_code` varchar(50) NOT NULL,
  `qty` varchar(50) NOT NULL,
  `Unit_Price` varchar(50) NOT NULL,
  `Total_Price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `office_number` varchar(50) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `billing_address` varchar(50) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `mobile_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `customer_name`, `office_number`, `customer_email`, `city`, `billing_address`, `shipping`, `mobile_number`) VALUES
(2, 'Tom Carinan', 'N/a', 'N/a', 'Tanauan City', 'Tanauan City', 'Tanauan City', '0947-785-7845'),
(3, 'Jaja Veniales', 'N/a', 'N/a', 'Malvar', 'Malvar', 'Malvar', '0956-789-8521'),
(4, 'Cristel gutierrez', 'N/a', 'N/a', 'San Pablo City', 'San Pablo City', 'San Pablo City', '0936-784-1547'),
(5, 'Mike Andal', 'N/a', 'N/a', 'Calamba City', 'Calamba City', 'Calamba City', '0945-754-8710');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(11) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `office_number` varchar(50) NOT NULL,
  `employee_email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dateofbirth` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobilenumber` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

CREATE TABLE `extra` (
  `exid` int(11) NOT NULL,
  `val` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `extra`
--

INSERT INTO `extra` (`exid`, `val`) VALUES
(1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `barcode` varchar(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `mfdate` varchar(50) NOT NULL,
  `expdate` varchar(50) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `brand_name` varchar(50) NOT NULL,
  `supplier_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `barcode`, `product_name`, `unit_price`, `quantity`, `description`, `category`, `mfdate`, `expdate`, `company_name`, `brand_name`, `supplier_name`) VALUES
(1, '1000', 'Coffee', '70', '1', '', 'Hot Drinks', '2020-12-05', '2021-12-05', '', '', 'Mr. Tomasito Blagag'),
(2, '1001', 'Fresh Ginger Tea', '70', '1', '', 'Hot Drinks', '2020-12-05', '2021-12-05', '', '', 'Mr. Tomasito Blagag'),
(3, '1002', 'Fruit Tea', '80', '1', '', 'Hot Drinks', '2020-12-05', '2021-12-05', '', '', 'Mr. Tomasito Blagag'),
(4, '2000', 'Iced Tea ', '100', '1', '', 'Cold Drinks', '2020-12-05', '2021-12-05', '', '', 'Mr. Tomasito Blagag'),
(5, '2001', 'Iced Coffee', '120', '1', '', 'Cold Drinks', '2020-12-05', '2021-12-05', '', '', 'Mr. Tomasito Blagag'),
(6, '2002', 'Sparkling Water', '75', '1', '', 'Cold Drinks', '2020-12-05', '2021-12-05', '', '', 'Mr. Tomasito Blagag'),
(7, '3000', 'Java Chip ', '260', '1', '', 'Frappes', '2020-12-05', '2021-12-05', '', '', 'Mr. Tomasito Blagag'),
(8, '3001', 'Triple Mocha', '270', '', '', 'Frappes', '2020-12-05', '2021-12-05', '', '', 'Mr. Tomasito Blagag'),
(9, '3002', 'Vanila Cream', '250', '1', '', 'Frappes', '2020-12-05', '2021-12-05', '', '', 'Mr. Tomasito Blagag'),
(10, '4000', 'Butter Croissant', '120', '1', '', 'Bakery', '2020-12-05', '2021-12-05', '', '', 'Mr. Tomasito Blagag'),
(11, '4001', 'Choco Butternut', '1', '70', '', 'Bakery', '2020-12-05', '2021-12-05', '', '', 'Mr. Tomasito Blagag'),
(12, '4002', 'Four Cheese Flatbread', '170', '1', '', 'Bakery', '2020-12-05', '2021-12-05', '', '', 'Mr. Tomasito Blagag'),
(13, '4002', 'Cinnamon Danish', '130', '1', '', 'Bakery', '2020-12-05', '2021-12-05', '', '', 'Mr. Tomasito Blagag'),
(14, '5000', 'Mango Dragonfruit', '125', '1', '', 'Snacks & Sweets', '2020-12-05', '2021-12-05', '', '', 'Mr. Tomasito Blagag'),
(15, '5001', 'BBQ Potato Chips', '1', '120', '', 'Snacks & Sweets', '2020-12-05', '2021-12-05', '', '', 'Mr. Tomasito Blagag'),
(16, '5002', 'Dipped Madeleines', '1', '110', '', 'Snacks & Sweets', '2020-12-05', '2021-12-05', '', '', 'Mr. Tomasito Blagag');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `saleid` int(11) NOT NULL,
  `INID` int(11) NOT NULL,
  `Cid` int(11) NOT NULL,
  `Customer_Name` varchar(50) NOT NULL,
  `Total_Qty` varchar(50) NOT NULL,
  `Total_Bill` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Balance` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `sid` int(11) NOT NULL,
  `supplier_name` varchar(50) NOT NULL,
  `office_number` varchar(50) NOT NULL,
  `supplier_email` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `product` varchar(50) NOT NULL,
  `billing_address` varchar(50) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `mobile_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sid`, `supplier_name`, `office_number`, `supplier_email`, `city`, `product`, `billing_address`, `shipping`, `mobile_number`) VALUES
(1, 'Mr. Tomasito Blagag', 'N/a', 'N/a', 'Taguig City', 'Coffee ', 'Taguig City', 'Taguig City', '0956-784-5784');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `cid` (`cid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`exid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`saleid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `extra`
--
ALTER TABLE `extra`
  MODIFY `exid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `saleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
