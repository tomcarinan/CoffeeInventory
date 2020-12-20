-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2020 at 02:19 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

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
(1, 'Tom', '111', 'tom@gmail.com', 'Tanauan', 'Bilogbilog', 'Batangas', '09111111111'),
(2, 'Mike', '222', 'mike@gmail.com', 'Calamba', 'Calamba', 'Laguna', '09222222222'),
(3, 'Cristel', '333', 'Cristel@gmail.com', 'Tiaong', 'Tiaong', 'Laguna', '09333333333'),
(4, 'jasthine', '444', 'jaja@gmail.com', 'Malvar', 'Sanpedro1', 'Batangas', '09444444444');

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

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `employee_name`, `office_number`, `employee_email`, `gender`, `dateofbirth`, `address`, `mobilenumber`) VALUES
(1, 'mae', '5555', 'Mae@gmail.com', 'Female', '2001-05-27', 'Sanpedro', '09555555555'),
(2, 'telay', '6666', 'telay@gmail.com', 'Female', '2000-02-16', 'tiaong', '09555555555');

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
(1, '1');

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
(1, '123', 'Iced Caramel Brulée Latte', '180', '50', 'beans for Iced Caramel Brulée Latte', 'Cold Drinks', '2020-12-01', '2021-12-08', 'love beans', 'Brulée', 'Carinan'),
(2, '4576', 'Iced Chestnut Praline Latte', '230', '20', 'beans and chestnut for Iced Chestnut Praline Latte', 'Cold Drinks', '2020-12-01', '2021-12-01', 'lover beans', 'Chestnut praline', 'Andal'),
(3, '678', 'Iced Coconutmilk Cascara Latte', '250', '20', 'coconut and beans for  Cascara Latte', 'Cold Drinks', '2020-12-10', '2021-12-29', 'beans lover', 'cascara', 'Guitierez'),
(4, '890', 'Caffè Americano', '140', '30', 'beans for caffe americano', 'Hot Drinks', '2020-12-29', '2021-12-30', 'hot caffee', 'ameriii', 'Veniales'),
(5, '234', 'Blonde Roast', '210', '20', 'beans for Blonde Roast', 'Hot Drinks', '2020-12-29', '2021-12-27', 'hot beans', 'blondeee', 'Andal'),
(6, '145', 'Caffè Misto', '205', '20', 'beans for Caffè Misto', 'Hot Drinks', '2020-12-09', '2020-12-31', 'hot coffee', 'misto', 'Andal'),
(7, '157', 'Caramel Brulée Frappuccino', '190', '20', 'beans and milk for brulee frappe', 'Frappes', '2020-12-29', '2021-12-28', 'frappeyum', 'brulee', 'Guitierez'),
(8, '189', 'Peppermint Mocha Frappuccino', '190', '20', 'beans for Peppermint Mocha Frappe', 'Frappes', '2020-12-27', '2021-12-19', 'frapee lover', 'mochaa', 'Carinan'),
(9, '276', ' White Chocolate Mocha Frappuccino', '260', '20', 'beans and chocolate for mocha frappe', 'Frappes', '2020-12-28', '2021-12-29', 'frapeeloves', 'chocomocha', 'Veniales'),
(10, '237', 'BBQ Potato Chips', '90', '40', 'BBQ Potato Chips', 'Snacks & Sweets', '2020-12-28', '2021-10-03', 'chippies', 'Potato Chips', 'Carinan'),
(11, '543', 'Butter Gourmet Popcorn', '150', '40', 'Butter Gourmet Popcorn', 'Snacks & Sweets', '2020-12-21', '2020-12-31', 'snacksloves', ' Popcorns', 'Andal'),
(12, '654', 'Iced Lemon Pound Cake', '540', '5', 'Iced Lemon Pound Cake', 'Bakery', '2020-12-15', '2020-12-31', 'lava java', 'cakessection', 'Carinan'),
(13, '540', 'Chocolate Croissant', '653', '6', 'Chocolate Croissant', 'Bakery', '2020-12-06', '2020-12-16', 'lava java', 'cakesection', 'Andal'),
(14, '344', 'Salted Caramel Tart', '490', '2', 'Salted Caramel Tart', 'Bakery', '2020-12-07', '2020-12-25', 'lava java', 'cakesection', 'Veniales');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `saleid` int(11) NOT NULL,
  `INID` int(11) NOT NULL,
  `Cid` int(11) NOT NULL,
  `Customer_name` varchar(50) NOT NULL,
  `Total_QTY` varchar(50) NOT NULL,
  `Payment_method` varchar(50) NOT NULL,
  `Payment_number` varchar(11) NOT NULL,
  `Total_bill` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Balance` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`saleid`, `INID`, `Cid`, `Customer_name`, `Total_QTY`, `Payment_method`, `Payment_number`, `Total_bill`, `Status`, `Balance`) VALUES
(1, 1, 1, 'Tom', '4.0', 'Card', '09999999999', '560.0', 'Paid', '5000.0'),
(2, 1, 2, 'Mike', '2.0', 'Gcash', '09123123123', '420.0', 'Paid', '0.0'),
(3, 1, 3, 'Cristel', '2.0', 'Gcash', '09111111111', '360.0', 'Paid', '0.0');

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
  `mobile_number` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sid`, `supplier_name`, `office_number`, `supplier_email`, `city`, `product`, `billing_address`, `shipping`, `mobile_number`) VALUES
(1, 'Carinan', '1111', 'Carinan@gmail.com', 'Tanauan', 'Hotcoffee', 'Bilogbilog', 'Batangas', '09999999999'),
(2, 'Andal', '2222', 'Andal@gmail.com', 'Calamba', 'Frappe', 'Calamba', 'Batangas', '09888888888'),
(3, 'Guitierez', '3333', 'Guitierez', 'Tiaong', 'Snacks', 'Tiaong', 'Laguna', '09777777777'),
(4, 'Veniales', '4444', 'Veniales', 'Malvar', 'Bread', 'Malvar', 'Batangas', '09666666666');

-- --------------------------------------------------------

--
-- Table structure for table `total_bill`
--

CREATE TABLE `total_bill` (
  `Id` int(11) NOT NULL,
  `Total_bill` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD PRIMARY KEY (`cid`);

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
-- Indexes for table `total_bill`
--
ALTER TABLE `total_bill`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `extra`
--
ALTER TABLE `extra`
  MODIFY `exid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `saleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `total_bill`
--
ALTER TABLE `total_bill`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
