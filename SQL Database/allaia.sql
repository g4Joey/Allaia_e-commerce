-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 21, 2025 at 07:25 PM
-- Server version: 8.0.39
-- PHP Version: 8.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egohvfeg_allaia`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `customerid` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `customerid`, `product_code`, `quantity`) VALUES
(36, 'vfs60bcktlrdn2sbglni9u0lg7', 'A23678', 2),
(43, 'vfs60bcktlrdn2sbglni9u0lg7', 'A65657', 1),
(46, '23n5rmegbjv7blhr90poc3uiek', 'A56566', 1),
(48, 'vfs60bcktlrdn2sbglni9u0lg7', 'A56566', 1),
(51, 'bee9a4e518948785e2be358709df0716', 'A23678', 2),
(52, '7ukd0lg8rs68ntmsegvcqa2pr1', 'A507349', 1),
(53, 'q516r5aaupdd9piv84q7mr04ir', 'A860094', 1),
(54, 'q516r5aaupdd9piv84q7mr04ir', 'A930158', 1),
(55, 'q516r5aaupdd9piv84q7mr04ir', 'A917726', 1),
(56, '7m87590qbvhvnkggu62n8dklp1', 'A860094', 1),
(57, '7m87590qbvhvnkggu62n8dklp1', 'A23678', 1),
(58, '7m87590qbvhvnkggu62n8dklp1', 'A79780', 1),
(59, '7m87590qbvhvnkggu62n8dklp1', 'A56566', 1),
(60, '7m87590qbvhvnkggu62n8dklp1', 'A499488', 1),
(61, '7m87590qbvhvnkggu62n8dklp1', 'A917726', 1),
(62, 'v1se6knv7nkeaerm6nj1nlav72', 'A917726', 1),
(63, 'eq4bvdecmpb3f48032fpt5ije1', 'A828664', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `id` int NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `useremail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `postal` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`id`, `firstname`, `lastname`, `useremail`, `password`, `phone`, `country`, `postal`, `city`, `address`) VALUES
(1, 'Olateju', 'Olawoore', 'olawooreteju@gmail.com', 'password', '0903005103', 'Nigeria', '201101', 'Ibadan', 'Toro memorial, Idere'),
(2, 'Joshua', 'Azu', 'Krist6023@gmail.com', 'morenikeji', '0200526969', 'Nigeria', '233683', 'accra', 'AQ 27, MARKER ALY, AGRIC'),
(3, 'Joshua', 'Azu', 'G4boys@gmail.com', 'dingdong', '3029492094', 'Nigeria', '233454', 'Takoradi', 'Marker Close4');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'SUBSCRIBED'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `status`) VALUES
(1, 'olawooreteju@gmail.com', 'SUBSCRIBED'),
(2, 'tejuola4khrist@gmail.com', 'SUBSCRIBED'),
(3, 'admin@admin.com', 'SUBSCRIBED');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `code` varchar(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `slideshow` varchar(11) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `category`, `brand`, `stock`, `image`, `price`, `description`, `slideshow`) VALUES
(1, 'A23678', 'Airpods 2024', 'Accessories', 'Apple', '11', 'airpods.jpg', '3459.99', 'Sunt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus', 'yes'),
(3, 'A79780', 'Alexa Speaker', 'Accessories', 'Alexa', '9', 'alexa.jpg', '1000.99', 'Sunt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligend…', 'no'),
(5, 'A56566', 'Google Mouse', 'Accessories', 'Apple', '10', 'mouse.jpg', '2399.99', 'el optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligend…', 'yes'),
(6, 'A499488', 'Camera 13px', 'Accessories', 'Canon', '5', '62fbc71c9616d.jpg', '2498', '<p>el optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligend…</p><p>el optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligend…<br></p>', 'yes'),
(7, 'A860094', 'Iphone 16 plus', 'Phone', 'Apple', '10', '6799dc3389727.jpeg', '20999', '<p>One of the latest</p>', 'no'),
(8, 'A930158', 'Iphone 16 Pro Max', 'Phone', 'Apple', '10', '6799dc73e5a39.jpeg', '25999.99', '<p>Latest</p>', 'no'),
(9, 'A917726', 'Playstation 5 pro', 'Accessories', 'Sony', '10', '6799e002b9349.jpeg', '15999', '<p>Latest playstaion console</p>', 'no'),
(10, 'A828664', 'Samsung Smart Fridge', 'Electronics', 'Samsung', '10', '6799e16781b6f.jpeg', '30000', '<p>Samsung - 31 cu. ft. Mega Capacity 3-Door French Door Refrigerator with External Water and Ice Dispenser - Stainless Steel</p>', 'no'),
(11, 'A507349', 'Dell Inspiron 15 3000 ', 'Laptops', 'Dell', '10', '6799e24e7123f.jpeg', '10000', '<p>Dell Inspiron 15 3000 15.6\" Laptop, Intel Core I5, 8Gb, 256Gb SSD</p>', 'no'),
(12, 'A698176', 'ipad pro 2024', 'Laptops', 'Apple', '20', '6799e3f843465.jpeg', '29000', '<p>Latest ipad pro</p>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `product_brand`
--

CREATE TABLE `product_brand` (
  `id` int NOT NULL,
  `brand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_brand`
--

INSERT INTO `product_brand` (`id`, `brand`) VALUES
(1, 'Apple'),
(2, 'Alexa'),
(3, 'Sony'),
(4, 'Canon'),
(5, 'Dell'),
(6, 'Samsung');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category`) VALUES
(1, 'Electronics'),
(2, 'Phone'),
(3, 'Accessories'),
(4, 'Laptops');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int NOT NULL,
  `reference_no` varchar(255) NOT NULL,
  `customerid` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `paymentmethod` varchar(255) NOT NULL,
  `billing` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `reference_no`, `customerid`, `customer_email`, `product_name`, `product_image`, `product_price`, `qty`, `total_price`, `date`, `time`, `method`, `paymentmethod`, `billing`, `status`) VALUES
(1, 'HPMCOD62f6a6c1a6d45', '1', 'olawooreteju@gmail.com', 'Playstation 4', '565900', '565900', '2', '1131800', '12/08/2022', '08:15:13 pm', 'Delivery', 'Cash On Delivery', 'Toro memorial, Idere, Ibadan, Nigeria', 'Delivered'),
(2, 'HPMCOD62f6a6c1a6d45', '1', 'olawooreteju@gmail.com', 'Airpods 2021', '34599.99', '34599.99', '2', '69199.98', '12/08/2022', '08:15:13 pm', 'Delivery', 'Cash On Delivery', 'Toro memorial, Idere, Ibadan, Nigeria', 'Delivered'),
(3, 'HPMCOP62f6a799862fd', '1', 'olawooreteju@gmail.com', 'Iphone 13 Pro Max', '435999.99', '435999.99', '2', '871999.98', '12/08/2022', '08:18:49 pm', 'Pickup', 'Cash On PickUp', 'Toro memorial, Idere, Ibadan, Nigeria', 'Delivered'),
(4, 'HPMCOD62f75a673e49c', '1', 'olawooreteju@gmail.com', 'Playstation 4', 'playstation.jpg', '565900', '1', '565900', '13/08/2022', '09:01:43 am', 'Delivery', 'Cash On Delivery', 'Toro memorial, Idere, Ibadan, Nigeria', 'Delivered'),
(5, 'HPMCOD62f75a673e49c', '1', 'olawooreteju@gmail.com', 'Alexa Speaker', 'alexa.jpg', '39999.99', '3', '119999.97', '13/08/2022', '09:01:43 am', 'Delivery', 'Cash On Delivery', 'Toro memorial, Idere, Ibadan, Nigeria', 'Delivered'),
(6, 'HPMCOD62f75a673e49c', '1', 'olawooreteju@gmail.com', 'Iphone 13 Pro Max', 'phone.jpg', '435999.99', '2', '871999.98', '13/08/2022', '09:01:43 am', 'Delivery', 'Cash On Delivery', 'Toro memorial, Idere, Ibadan, Nigeria', 'Delivered'),
(7, 'ODL822525215', '2', 'Krist6023@gmail.com', 'Airpods 2021', 'airpods.jpg', '34599.99', '2', '69199.98', '28/01/2025', '03:26:00 pm', 'delivery', 'paystack', '', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `useremail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `username`, `useremail`, `password`, `role`) VALUES
(1, 'Admin', 'admin@admin.com', 'password', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int NOT NULL,
  `customerid` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `customerid`, `product_code`) VALUES
(24, 'vfs60bcktlrdn2sbglni9u0lg7', 'A23678'),
(25, 'vfs60bcktlrdn2sbglni9u0lg7', 'A43765'),
(26, '7m87590qbvhvnkggu62n8dklp1', 'A860094'),
(27, 'alif1i5j35o2laer0jpclg2rfp', 'A828664'),
(28, 'eq4bvdecmpb3f48032fpt5ije1', 'A828664');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_brand`
--
ALTER TABLE `product_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_brand`
--
ALTER TABLE `product_brand`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
