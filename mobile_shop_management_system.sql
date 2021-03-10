-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2021 at 04:14 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobile_shop_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(5) NOT NULL,
  `customer_name` varchar(20) DEFAULT NULL,
  `customer_gender` varchar(6) DEFAULT NULL,
  `customer_email` varchar(20) DEFAULT NULL,
  `customer_contact_no` int(11) DEFAULT NULL,
  `customer_address` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_gender`, `customer_email`, `customer_contact_no`, `customer_address`) VALUES
(1, 'Naeem Hossain', 'male', 'naeem123@gmail.com', 1355566688, 'Azimpur,Dhaka'),
(2, 'Shawon Barman', 'male', 'shawon345@gmail.com', 1311122299, 'keraniganj, Dhaka'),
(3, 'Atikur Rahman', 'male', 'atik39@gmail.com', 1722112211, 'lalbag, Dhaka'),
(4, 'Farzana Akter', 'female', 'farzana876@gmail.com', 1756565656, 'farmgate, Dhaka'),
(5, 'Sakal Sarkar', 'male', 'sakalsarkar12@gmail.', 1355567777, 'Saikhira,Khulna'),
(6, 'Sakib Hossain', 'male', 'sakin444@gmail.com', 1355577444, 'Sutrapur,Dhaka'),
(7, 'Jesica Rahman', 'female', 'jesica5544@gmail.com', 1855577999, 'Lokkhi Bazar,Dhaka'),
(8, 'Urmi Jamal', 'female', 'urmi018@gmail.com', 1822299111, 'Azimpur,Dhaka'),
(9, 'Anik Barman', 'male', 'anik017@gmail.com', 1722557799, 'Rajabazar,Dhaka'),
(10, 'Rashed Ahmed', 'male', 'rashed5588@gmail.com', 2147483647, 'Bonani,Dhaka'),
(11, 'Tomori Khan', 'female', 'tomori8866@gmail.com', 1899664411, 'kolabagan,Dhaka'),
(12, 'Tasneem Sara', 'female', 'sara5431@gmail.com', 1922211166, 'Science Lab,Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `em_id` int(5) NOT NULL,
  `em_name` varchar(20) DEFAULT NULL,
  `em_gender` varchar(6) DEFAULT NULL,
  `em_email` varchar(20) DEFAULT NULL,
  `em_contact_no` int(11) DEFAULT NULL,
  `em_address` varchar(25) DEFAULT NULL,
  `em_salary` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`em_id`, `em_name`, `em_gender`, `em_email`, `em_contact_no`, `em_address`, `em_salary`) VALUES
(1001, 'Anik Hossain', 'male', 'anik34@gmail.com', 1921111118, 'azimpur,Dhaka', '15000.00'),
(1002, 'Saikat Hasan', 'male', 'saikat455@gmail.com', 1825555518, 'farmgate,Dhaka', '15500.00'),
(1003, 'Piyush Islam', 'male', 'piyush34@gmail.com', 1921133338, 'keraniganj,Dhaka', '14000.00'),
(1004, 'Jesmin Akter', 'female', 'jesmin411@gmail.com', 1311155558, 'azimpur,Dhaka', '16000.00');

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

CREATE TABLE `mobile` (
  `company_name` varchar(15) DEFAULT NULL,
  `company_series` varchar(15) DEFAULT NULL,
  `model_no` varchar(15) DEFAULT NULL,
  `imei_number` int(15) NOT NULL,
  `ram(GB)` int(2) DEFAULT NULL,
  `rom(GB)` int(3) DEFAULT NULL,
  `display_size(inchi)` decimal(3,2) DEFAULT NULL,
  `display_quality` varchar(15) DEFAULT NULL,
  `processor` varchar(30) DEFAULT NULL,
  `battery_capacity(mah)` int(4) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `price` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mobile`
--

INSERT INTO `mobile` (`company_name`, `company_series`, `model_no`, `imei_number`, `ram(GB)`, `rom(GB)`, `display_size(inchi)`, `display_quality`, `processor`, `battery_capacity(mah)`, `color`, `price`) VALUES
('Xiaomi', 'Redmi', 'Note 8', 121231178, 4, 64, '6.30', 'IPS LCD', 'Snapdragon 665', 4000, 'Crystal Green', '18000.00'),
('Xiaomi', 'Redmi', 'Note 8 pro', 121231188, 6, 64, '6.53', 'IPS LCD', 'Mediatek Helio G90T', 4020, 'White', '19999.00'),
('Xiaomi', 'Redmi', 'Note 8 pro', 121231189, 6, 128, '6.53', 'IPS LCD', 'Mediatek Helio G90T', 4020, 'Black', '22000.00'),
('Xiaomi', 'Redmi', 'Note 9s', 121231238, 6, 64, '6.67', 'IPS LCD', 'Snapdragon 720G', 5020, 'Aurora Blue', '22999.00'),
('Xiaomi', 'Redmi', 'Note 9 pro', 121231248, 6, 128, '6.67', 'IPS LCD', 'Snapdragon 720G', 5020, 'Interstellar Gray', '24999.00'),
('Xiaomi', 'Redmi', 'Note 9 pro max', 121231258, 6, 128, '6.67', 'IPS LCD', 'Snapdragon 720G', 5020, 'Aurora Blue', '25999.00'),
('Xiaomi', 'Redmi', 'k30', 121231311, 6, 128, '6.67', 'IPS LCD', 'Snapdragon 730G', 4500, 'Purple', '25500.00'),
('Xiaomi', 'Redmi', 'k30 pro', 121231321, 6, 128, '6.67', 'Super AMOLED', 'Snapdragon 865', 4700, 'Neon Blue', '46500.00'),
('Xiaomi', 'Mi', '10 Lite Zoom', 121231357, 6, 128, '6.57', 'Super AMOLED', 'Snapdragon 765G', 4160, 'Blue', '35500.00'),
('Xiaomi', 'Mi', '10 Youth 5G', 121231367, 6, 128, '6.57', 'Super AMOLED', 'Snapdragon 765G', 4160, 'Orange', '29500.00'),
('Xiaomi', 'Poco', 'X2', 121232559, 6, 128, '6.67', 'IPS LCD', 'Snapdragon 730G', 4500, 'Purple', '24000.00'),
('Xiaomi', 'Poco', 'M2 pro', 121232569, 6, 128, '6.67', 'IPS LCD', 'Snapdragon 720G', 5000, 'Two Shades of Black', '22500.00'),
('Xiaomi', 'Poco', 'F2 pro', 121232579, 6, 128, '6.67', 'Super AMOLED', 'Snapdragon 865', 4700, 'Phantom White', '46000.00'),
('Samsung', 'Galaxy M', '01s', 121233360, 3, 32, '6.20', 'PLS TFT', 'Mediatek Helio P22', 4000, 'Light Blue', '12500.00'),
('Samsung', 'Galaxy M', '31s', 121233370, 6, 128, '6.50', 'Super AMOLED', 'Exynos 9611', 6000, 'Black', '26500.00'),
('Samsung', 'Galaxy M', '51', 121233380, 6, 128, '6.70', 'Super AMOLED', 'Snapdragon 720G', 6000, 'Black', '31000.00'),
('Samsung', 'Galaxy A', '21s', 121233991, 4, 64, '6.50', 'PLS TFT', 'Exynos 850', 4020, 'Black', '16500.00'),
('Samsung', 'Galaxy A', '51', 121233993, 6, 128, '6.60', 'Super AMOLED', 'Exynos 9611', 5000, 'White', '27000.00'),
('Samsung', 'Galaxy A', '71', 121233995, 6, 128, '6.70', 'Super AMOLED', 'Snapdragon 765G', 5020, 'White', '38000.00'),
('Samsung', 'Galaxy Note', '20 Ultra 5G', 121298722, 12, 256, '6.90', 'Dynamic AMOLED ', 'Exynos 990', 5020, 'Mystic Bronze', '128000.00'),
('Asus', 'ROG', 'Phone II ZS660K', 272798754, 12, 256, '6.59', 'Super AMOLED', 'Snapdragon 855+', 6000, 'Matte Black', '75000.00'),
('Asus', 'ROG', 'Phone 3 Strix', 272798764, 12, 256, '6.59', 'Super AMOLED', 'Snapdragon 865', 6000, 'Black Glare', '85000.00'),
('Apple', 'Iphone', '11', 272798842, 8, 128, '6.10', 'Liquid Retina I', 'Apple A13 Bionic', 3110, 'Black', '91000.00'),
('Apple', 'Iphone', '11 pro', 272798845, 8, 128, '6.10', 'Super Retina XD', 'Apple A13 Bionic', 4110, 'Black', '134000.00'),
('Apple', 'Iphone', '11 pro max', 272798847, 12, 128, '6.40', 'Super Retina XD', 'Apple A13 Bionic', 4500, 'Black', '154000.00');

-- --------------------------------------------------------

--
-- Table structure for table `paymentbill`
--

CREATE TABLE `paymentbill` (
  `pb_id` int(5) NOT NULL,
  `pb_date` varchar(10) DEFAULT NULL,
  `customer_id` int(5) DEFAULT NULL,
  `customer_name` varchar(20) DEFAULT NULL,
  `customer_contact_no` int(12) DEFAULT NULL,
  `purchase_mobile_imei_no` int(15) DEFAULT NULL,
  `purchase_mobile_company` varchar(15) DEFAULT NULL,
  `purchase_mobile_series` varchar(15) DEFAULT NULL,
  `purchase_mobile_model` varchar(15) DEFAULT NULL,
  `purchase_mobile_price` decimal(9,2) DEFAULT NULL,
  `total_paid_amount` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paymentbill`
--

INSERT INTO `paymentbill` (`pb_id`, `pb_date`, `customer_id`, `customer_name`, `customer_contact_no`, `purchase_mobile_imei_no`, `purchase_mobile_company`, `purchase_mobile_series`, `purchase_mobile_model`, `purchase_mobile_price`, `total_paid_amount`) VALUES
(222, '22-11-2019', 1, 'Naeem Hossain', 1355566688, 121231189, 'Xiaomi', 'Redmi', 'Note 8 pro', '22000.00', '22000.00'),
(333, '18-09-2020', 2, 'Shawon Barman', 1311122299, 272798764, 'Asus', 'ROG', 'Phone 3 Strix', '85000.00', '85000.00'),
(444, '24-08-2020', 4, 'Farzana Akter', 1756565656, 121233370, 'Samsung', 'Galaxy M', 'M31s', '26500.00', '26500.00'),
(555, '25-09-2020', 5, 'Sakal Sarkar', 1355567777, 121231258, 'Xiaomi', 'Redmi', 'Note 9 pro max', '25999.00', '26000.00'),
(666, '28-10-2020', 7, 'Jesica Rahmanr', 1855577999, 272798847, 'Apple', 'Iphone', '11 pro max', '154000.00', '154000.00'),
(777, '21-09-2020', 8, 'Urmi Jamal', 1822299111, 121233993, 'Samsung', 'Galaxy A', '51', '27000.00', '27000.00');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `customer_id` int(5) DEFAULT NULL,
  `purchase_mobile_imei_no` int(15) DEFAULT NULL,
  `purchase_date` varchar(10) DEFAULT NULL,
  `paid_amount` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`customer_id`, `purchase_mobile_imei_no`, `purchase_date`, `paid_amount`) VALUES
(1, 121231189, '22-11-2019', '22000.00'),
(2, 272798764, '18-09-2020', '85000.00'),
(4, 121233370, '24-08-2020', '26500.00'),
(5, 121231258, '25-09-2020', '25999.00'),
(7, 272798847, '28-10-2020', '154000.00'),
(8, 121233993, '21-09-2020', '27000.00');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(5) NOT NULL,
  `room_number` int(5) DEFAULT NULL,
  `mobile_imei_number` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `room_number`, `mobile_imei_number`) VALUES
(1001, 101, 121231178),
(1002, 101, 121231178),
(1003, 101, 121231178),
(1004, 101, 121231178),
(1005, 101, 121231178),
(1006, 101, 121231188),
(1007, 101, 121231188),
(1008, 101, 121231188),
(1009, 101, 121231188),
(1010, 101, 121231188),
(1011, 101, 121231188),
(1012, 101, 121231188),
(1013, 101, 121231188),
(1014, 101, 121231188),
(1015, 101, 121231188),
(1016, 101, 121231189),
(1017, 101, 121231189),
(1018, 101, 121231189),
(1019, 101, 121231189),
(1020, 101, 121231189),
(1021, 101, 121231189),
(1022, 101, 121231238),
(1023, 101, 121231238),
(1024, 101, 121231238),
(1025, 101, 121231238),
(1026, 101, 121231238),
(1027, 101, 121231238),
(1028, 101, 121231248),
(1029, 101, 121231248),
(1030, 101, 121231248),
(1031, 101, 121231258),
(1032, 101, 121231258),
(1033, 101, 121231258),
(1034, 101, 121231258),
(1035, 101, 121231258),
(1036, 101, 121231258),
(1037, 101, 121231311),
(1038, 101, 121231311),
(1039, 101, 121231311),
(1040, 101, 121231311),
(1041, 101, 121231321),
(1042, 101, 121231321),
(1043, 101, 121231321),
(1044, 101, 121231321),
(1045, 101, 121231321),
(1046, 101, 121231357),
(1047, 101, 121231357),
(1048, 101, 121231357),
(1049, 101, 121231367),
(1050, 101, 121231367),
(1051, 101, 121231367),
(1052, 101, 121231367),
(1053, 101, 121231367),
(1054, 101, 121231367),
(1055, 101, 121232559),
(1056, 101, 121232559),
(1057, 101, 121232559),
(1058, 101, 121232559),
(1059, 101, 121232559),
(1060, 101, 121232569),
(1061, 101, 121232569),
(1062, 101, 121232569),
(1063, 101, 121232569),
(1064, 101, 121232569),
(1065, 101, 121232579),
(1066, 101, 121232579),
(1067, 102, 121233360),
(1068, 102, 121233360),
(1069, 102, 121233360),
(1070, 102, 121233370),
(1071, 102, 121233370),
(1072, 102, 121233370),
(1073, 102, 121233370),
(1074, 102, 121233370),
(1075, 102, 121233370),
(1076, 102, 121233370),
(1077, 102, 121233380),
(1078, 102, 121233380),
(1079, 102, 121233991),
(1080, 102, 121233991),
(1081, 102, 121233991),
(1082, 102, 121233991),
(1083, 102, 121233991),
(1084, 102, 121233991),
(1085, 102, 121233991),
(1086, 102, 121233991),
(1087, 102, 121233995),
(1088, 102, 121233995),
(1089, 102, 121233995),
(1090, 102, 121233995),
(1091, 102, 121298722),
(1092, 102, 121298722),
(1093, 102, 121298722),
(1094, 102, 121298722),
(1095, 102, 121298722),
(1096, 103, 272798754),
(1097, 103, 272798754),
(1098, 103, 272798754),
(1099, 103, 272798754),
(1100, 103, 272798764),
(1101, 103, 272798764),
(1102, 103, 272798764),
(1103, 103, 272798764),
(1104, 103, 272798764),
(1105, 103, 272798764),
(1106, 103, 272798764),
(1107, 103, 272798842),
(1108, 103, 272798842),
(1109, 103, 272798842),
(1110, 103, 272798845),
(1111, 103, 272798845),
(1112, 103, 272798845),
(1113, 103, 272798845),
(1114, 103, 272798847),
(1115, 103, 272798847),
(1116, 103, 272798847),
(1117, 103, 272798847),
(1118, 103, 272798847),
(1119, 103, 272798847);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(5) NOT NULL,
  `supplier_name` varchar(20) DEFAULT NULL,
  `supplier_email` varchar(20) DEFAULT NULL,
  `supplier_contact_no` int(11) DEFAULT NULL,
  `supplier_address` varchar(30) DEFAULT NULL,
  `supply_mobile_imei_number` int(15) DEFAULT NULL,
  `supply_date` varchar(10) DEFAULT NULL,
  `supply_total_mobile` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `supplier_email`, `supplier_contact_no`, `supplier_address`, `supply_mobile_imei_number`, `supply_date`, `supply_total_mobile`) VALUES
(101, 'Akash Kumar', 'akash34@gmail.com', 1911111888, 'Bongsal,Dhaka', 121231188, '22-10-2019', 25),
(102, 'Anurag Bashu', 'anurag311@gmail.com', 1812222888, 'Bongsal,Dhaka', 121231258, '22-12-2019', 20),
(103, 'Hashal Patal', 'hashal651@gmail.com', 1321128777, 'Bongsal,Dhaka', 121231321, '09-05-2020', 15),
(104, 'Emon Hossain', 'emon7676@gmail.com', 1999117788, 'Rampura,Dhaka', 121232579, '12-06-2020', 30),
(105, 'Nitish Rana', 'nitish456@gmail.com', 1999222882, 'Azimpur,Dhaka', 121233370, '13-07-2020', 30),
(106, 'Sawkat Hasan', 'sawkat566@gmail.com', 1992211119, 'Mohammadpur,Dhaka', 121298722, '17-07-2020', 18),
(107, 'Fahim Ahmed', 'fahim77566@gmail.com', 1321212121, 'Kakrail,Dhaka', 272798764, '20-08-2020', 35),
(108, 'Yeasin Rohoman', 'yeasin9911@gmail.com', 1899888442, 'Satkhira,Khulna', 272798847, '27-08-2020', 32);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`em_id`);

--
-- Indexes for table `mobile`
--
ALTER TABLE `mobile`
  ADD PRIMARY KEY (`imei_number`);

--
-- Indexes for table `paymentbill`
--
ALTER TABLE `paymentbill`
  ADD PRIMARY KEY (`pb_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `em_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
