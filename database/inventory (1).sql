-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 03, 2024 at 07:06 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `active`) VALUES
(7, 'Barcode', 2),
(8, 'Marque', 2);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
(5, 'Blue', 2),
(6, 'White', 2),
(7, 'M', 3),
(8, 'L', 3),
(9, 'Green', 2),
(10, 'Black', 2),
(12, 'Grey', 2),
(13, 'S', 3),
(17, 'yellow', 4),
(20, 'small', 6),
(21, 'medium', 6),
(22, 'large', 6);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `active`) VALUES
(15, 'Magasin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`) VALUES
(7, 'Scolaire', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'jdlm', '0', '0', 'Madrid', '758676851', 'sri lanka', 'hello everyone one', 'CAD');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Personid` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `no_employee` int(11) DEFAULT NULL,
  `Credit` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Personid`, `nom`, `prenom`, `no_employee`, `Credit`) VALUES
(10, 'Dowd', 'Sarah', 12959, '50'),
(11, 'Druce', 'Leidei-Jasmine', 11116, '50'),
(12, 'Dubé', 'Sébastien', 11878, '50'),
(13, 'Ducas', 'Isabelle', 11066, '50'),
(14, 'Dumesnil', 'Marc', 36005, '50'),
(15, 'Dumont', 'Isabelle', 11724, '50'),
(16, 'Dupont', 'Caroline', 14327, '50'),
(17, 'Dupuis', 'Catherine', 14067, '50'),
(18, 'Dupuis', 'Sylvie', 14002, '50'),
(19, 'Durocher', 'Névine', 11870, '50'),
(20, 'Emond', 'Marie-Ève', 14006, '117'),
(21, 'Éthier', 'Sophie', 11884, '50'),
(22, 'Filiatrault', 'Nathalie', 14337, '50'),
(23, 'Florescu', 'Dragos', 12584, '50'),
(24, 'Fontaine', 'Naomi', 12917, '50'),
(25, 'Fortin', 'Sylvain', 11309, '50'),
(26, 'Fréchette-Pelletier', 'Marie-Ève', 12058, '50'),
(27, 'Gagné', 'Dave', 11135, '50'),
(28, 'Gagné', 'Marc-Olivier', 11373, '50'),
(29, 'Gagnon', 'Christine', 11136, '50'),
(30, 'Gélinas', 'Catherine', 12761, '50'),
(31, 'Gendron', 'Simon', 14479, '50'),
(32, 'Germain', 'Line', 14009, '50'),
(33, 'Girard', 'Sylvain', 12973, '50'),
(34, 'Goulet', 'Valérie', 11905, '50'),
(35, 'Granger', 'Caroline', 14128, '50'),
(36, 'Harvey', 'Isabelle', 11801, '50'),
(37, 'Hébert', 'Audrey', 11887, '50'),
(38, 'Hince', 'Laurence', 12755, '50'),
(39, 'Hiroux', 'Marie-Hélène', 12777, '50'),
(40, 'Huot', 'Josée', 12681, '50'),
(41, 'Jalbert', 'Marie-Pierre', 12933, '50'),
(42, 'Jernigan', 'Seth', 12269, '50'),
(43, 'Laberge', 'Béatrice', 14007, '50'),
(44, 'Labrèche', 'Raymond', 11037, '50'),
(45, 'Lachapelle', 'Fanny', 11340, '50'),
(46, 'Lahaie', 'Geneviève', 11666, '50'),
(47, 'Lambert-Piquette', 'Benoît', 12344, '50'),
(48, 'Lamontagne', 'Guillaume', 14063, '50'),
(49, 'Lapointe', 'Léandre', 11415, '50'),
(50, 'Laprise', 'Caroline', 11972, '50'),
(51, 'Lebrun', 'Linda', 11607, '50'),
(52, 'Lefebvre', 'Michel', 11879, '50'),
(53, 'Leone', 'Marco', 11913, '50'),
(54, 'Levasseur', 'Josée', 11097, '50'),
(55, 'Longtin', 'Émilie', 14197, '50'),
(56, 'Lortie', 'Alexandre', 11946, '50'),
(57, 'Lukiyanenko', 'Alexandra', 14505, '50'),
(58, 'Marcotte', 'Élise', 14515, '50'),
(59, 'Marcoux', 'France', 12985, '50'),
(60, 'Marquis', 'Olivier', 11300, '50'),
(61, 'Martin', 'Caroline', 11954, '50'),
(62, 'Martinez Hernandez', 'Ivan', 14438, '50'),
(63, 'McCutcheon', 'Danine', 11917, '50'),
(64, 'Mercier', 'Élisabeth', 11723, '50'),
(65, 'Merlini', 'Sarah', 11625, '50'),
(66, 'Morand', 'Félix', 14206, '50'),
(67, 'Mota', 'Amanda', 12166, '50'),
(68, 'Myre', 'Isabelle', 13108, '50'),
(69, 'Nguyen', 'Valérie', 12754, '50'),
(70, 'Normand', 'Mélissa', 11617, '50'),
(71, 'Ouellet', 'Martin', 14480, '50'),
(72, 'Patenaude', 'Karine', 14122, '50'),
(73, 'Pelletier', 'Alain', 12486, '50'),
(74, 'Pereira Lauzier', 'Jonathan', 12504, '50'),
(75, 'Picard', 'Marianne', 11668, '50'),
(76, 'Picard', 'Stéphanie', 14331, '50'),
(77, 'Plouffe', 'Rachel', 12998, '50'),
(78, 'Pozzoli', 'Sandra', 14498, '50'),
(79, 'Proteau', 'Karen', 12688, '50'),
(80, 'Proulx', 'Gabriel', 12235, '50'),
(81, 'Proulx', 'Julie', 11949, '50'),
(82, 'Ratté', 'Kim', 14490, '50'),
(83, 'Rémy', 'Marie-Claude', 11081, '50'),
(84, 'Richard-Larochelle', 'Andréa', 12934, '50'),
(85, 'Robert-Paul', 'Danni', 12605, '50'),
(86, 'Robidas', 'Pascale', 94002, '50'),
(87, 'Robidoux', 'Karine', 12921, '50'),
(88, 'Rousseau', 'Alexandre', 14196, '50'),
(89, 'Roy', 'Valérie', 12882, '50'),
(90, 'Samuel', 'Audrey', 12858, '50'),
(91, 'Savaria', 'Magalie', 11565, '50'),
(92, 'Seccareccia', 'Pascale', 93048, '50'),
(93, 'Séguin', 'Catherine', 11063, '50'),
(94, 'Simard', 'Caroline', 36035, '50'),
(95, 'Sirois', 'Nicolas', 12319, '50'),
(96, 'Slim', 'Mona', 14396, '50'),
(97, 'Sonier', 'Pascale', 14121, '50'),
(98, 'Soucy', 'Isabelle', 11043, '50'),
(99, 'Sparks', 'Rachel', 12857, '50'),
(100, 'Stébenne', 'Joannie', 12765, '50'),
(101, 'St-Onge', 'Philippe', 12236, '50'),
(102, 'St-Pierre', 'Isabelle', 14219, '50'),
(103, 'Sully', 'Samuel Bryan', 14068, '50'),
(104, 'Sylvestre', 'Harry', 12371, '50'),
(105, 'Talbot', 'Frédéric', 12143, '50'),
(106, 'Tchah', 'Salmane', 14532, '50'),
(107, 'Thériault', 'Annie', 14336, '50'),
(108, 'Tobin', 'James', 12411, '50'),
(109, 'Tougas', 'Nadine', 11264, '50'),
(110, 'Tourigny', 'Nancy', 11665, '50'),
(111, 'Tremblay', 'Carol Anne', 12423, '50'),
(112, 'Tremblay', 'Patrick', 12518, '50'),
(113, 'Vaillancourt', 'Ariane', 12404, '50'),
(114, 'Wang', 'Xiaoming', 14059, '50'),
(115, 'Williams', 'Julie', 94087, '50'),
(116, 'Zelaya', 'Gloria', 93100, '50'),
(117, 'Zhen', 'Irene', 14103, '40.91');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Administrator', 'a:36:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:11:\"createStore\";i:17;s:11:\"updateStore\";i:18;s:9:\"viewStore\";i:19;s:11:\"deleteStore\";i:20;s:15:\"createAttribute\";i:21;s:15:\"updateAttribute\";i:22;s:13:\"viewAttribute\";i:23;s:15:\"deleteAttribute\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:11:\"createOrder\";i:29;s:11:\"updateOrder\";i:30;s:9:\"viewOrder\";i:31;s:11:\"deleteOrder\";i:32;s:11:\"viewReports\";i:33;s:13:\"updateCompany\";i:34;s:11:\"viewProfile\";i:35;s:13:\"updateSetting\";}'),
(5, 'Testing', 'a:19:{i:0;s:11:\"createBrand\";i:1;s:11:\"updateBrand\";i:2;s:9:\"viewBrand\";i:3;s:14:\"createCategory\";i:4;s:14:\"updateCategory\";i:5;s:12:\"viewCategory\";i:6;s:11:\"createStore\";i:7;s:11:\"updateStore\";i:8;s:9:\"viewStore\";i:9;s:15:\"createAttribute\";i:10;s:15:\"updateAttribute\";i:11;s:13:\"viewAttribute\";i:12;s:13:\"createProduct\";i:13;s:13:\"updateProduct\";i:14;s:11:\"viewProduct\";i:15;s:11:\"createOrder\";i:16;s:11:\"updateOrder\";i:17;s:9:\"viewOrder\";i:18;s:13:\"updateCompany\";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `customer_name`, `customer_address`, `customer_phone`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge`, `vat_charge_rate`, `vat_charge`, `net_amount`, `discount`, `paid_status`, `user_id`) VALUES
(4, 'BILPR-239D', 'Shafraz', 'kolombo', '0778650336', '1526279725', '450000.00', '13', '58500.00', '10', '45000.00', '553500.00', '', 2, 1),
(5, 'BILPR-0266', 'Chris', 'California', '05552242', '1526358119', '761700.00', '13', '99021.00', '10', '76170.00', '936891.00', '', 2, 1),
(6, 'BILPR-4A66', 'John Smith', 'Saple Address', '2345678', '1606799361', '3400.00', '13', '442.00', '10', '340.00', '4182.00', '', 2, 1),
(7, 'BILPR-1CF9', 'yrdy', 'sfgsfdg', '', '1731612347', '2500.00', '13', '325.00', '10', '250.00', '3075.00', '', 2, 1),
(8, 'BILPR-CC83', 'wang Xiaoming', '12344', '504657888', '1731956379', '5.69', '13', '0.74', '10', '0.57', '7.00', '', 2, 1),
(9, 'BILPR-BD84', '', '', '', '1731961668', '10.00', '13', '1.30', '10', '1.00', '12.30', '', 2, 1),
(10, 'BILPR-5926', '', '', '', '1731961711', '10.00', '13', '1.30', '10', '1.00', '12.30', '', 2, 1),
(11, 'BILPR-6DAD', 'wangx123', 'testad', '', '1731961924', '10.69', '13', '1.39', '10', '1.07', '13.15', '', 1, 1),
(12, 'BILPR-24B4', '', '', '', '1731962579', '16.38', '0', '0', '0', '0', '16.38', '', 1, 1),
(13, 'BILPR-992A', '', '', '', '1732223954', '900.00', '0', '0', '0', '0', '900.00', '', 1, 1),
(14, 'BILPR-0021', '116', '', '', '1732731110', '29.99', '0', '0', '0', '0', '29.99', '', 2, 1),
(15, 'BILPR-94A0', '115', '', '', '1732731255', '7.49', '0', '0', '0', '0', '7.49', '', 2, 1),
(17, 'BILPR-A2FE', '117|50', '', '', '1732734733', '29.99', '0', '0', '0', '0', '29.99', '', 2, 1),
(18, 'BILPR-98B7', '117|50', '', '', '1732734907', '150.00', '0', '0', '0', '0', '150.00', '', 2, 1),
(19, 'BILPR-BAE2', '117|50', '', '', '1732735604', '29.99', '0', '0', '0', '0', '29.99', '', 2, 1),
(20, 'BILPR-C8D0', '116|50', '', '', '1732735627', '29.99', '0', '0', '0', '0', '29.99', '', 2, 1),
(21, 'BILPR-F720', 'Irene Zhen', '870, chemin de Saint-JeanLa Prairie (Québec) J5R 2L5', '450 659-7657', '1732737557', '30.00', '0', '0', '0', '0', '30.00', '', 2, 1),
(22, 'BILPR-02A3', ' ', '870, chemin de Saint-JeanLa Prairie (Québec) J5R 2L5', '450 659-7657', '1732737798', '30.00', '0', '0', '0', '0', '30.00', '', 2, 1),
(23, 'BILPR-7E08', ' ', '870, chemin de Saint-JeanLa Prairie (Québec) J5R 2L5', '450 659-7657', '1732737974', '29.99', '0', '0', '0', '0', '29.99', '', 2, 1),
(24, 'BILPR-119B', ' ', '870, chemin de Saint-JeanLa Prairie (Québec) J5R 2L5', '450 659-7657', '1732738033', '30.00', '0', '0', '0', '0', '30.00', '', 2, 1),
(25, 'BILPR-CFFD', ' ', '870, chemin de Saint-JeanLa Prairie (Québec) J5R 2L5', '450 659-7657', '1732738119', '29.99', '0', '0', '0', '0', '29.99', '', 2, 1),
(26, 'BILPR-F777', ' ', '870, chemin de Saint-JeanLa Prairie (Québec) J5R 2L5', '450 659-7657', '1732738153', '30.00', '0', '0', '0', '0', '30.00', '', 2, 1),
(27, 'BILPR-5E42', 'Irene Zhen', '870, chemin de Saint-JeanLa Prairie (Québec) J5R 2L5', '450 659-7657', '1732738292', '30.00', '0', '0', '0', '0', '30.00', '', 2, 1),
(28, 'BILPR-6C6D', 'Irene Zhen', '', '450 659-7657', '1732738382', '29.99', '0', '0', '0', '0', '29.99', '', 1, 1),
(29, 'BILPR-CB6F', 'Irene Zhen', '870, chemin de Saint-JeanLa Prairie (Québec) J5R 2L5', '450 659-7657', '1732738472', '30.00', '0', '0', '0', '0', '30.00', '', 2, 1),
(30, 'BILPR-1712', 'Irene Zhen', '870, chemin de Saint-JeanLa Prairie (Québec) J5R 2L5', '450 659-7657', '1733169776', '2.90', '0', '0', '0', '0', '2.90', '', 2, 1),
(31, 'BILPR-11B9', 'Irene Zhen', '870, chemin de Saint-JeanLa Prairie (Québec) J5R 2L5', '450 659-7657', '1733169783', '2.90', '0', '0', '0', '0', '2.90', '', 2, 1),
(32, 'BILPR-3D08', 'Irene Zhen', '870, chemin de Saint-JeanLa Prairie (Québec) J5R 2L5', '450 659-7657', '1733175008', '7.49', '0', '0', '0', '0', '7.49', '', 2, 1),
(33, 'BILPR-DE4C', 'Irene Zhen', '870, chemin de Saint-JeanLa Prairie (Québec) J5R 2L5', '450 659-7657', '1733175074', '7.49', '0', '0', '0', '0', '7.49', '', 2, 1),
(34, 'BILPR-CEAA', 'Irene Zhen', '', '450 659-7657', '1733175145', '7.49', '0', '0', '0', '0', '7.49', '', 1, 1),
(35, 'BILPR-A160', 'Irene Zhen', '870, chemin de Saint-JeanLa Prairie (Québec) J5R 2L5', '450 659-7657', '1733251129', '0.80', '0', '0', '0', '0', '0.80', '', 2, 1),
(36, 'BILPR-862C', 'Irene Zhen', '', '450 659-7657', '1733251175', '0.80', '0', '0', '0', '0', '0.80', '', 1, 1),
(37, 'BILPR-49A2', 'Julie Williams', '870, chemin de Saint-JeanLa Prairie (Québec) J5R 2L5', '450 659-7657', '1733251306', '29.99', '0', '0', '0', '0', '29.99', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_item`
--

CREATE TABLE `orders_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_item`
--

INSERT INTO `orders_item` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(6, 4, 8, '3', '150000', '450000.00'),
(7, 5, 11, '13', '900', '11700.00'),
(8, 5, 10, '5', '150000', '750000.00'),
(9, 6, 12, '1', '2500', '2500.00'),
(10, 6, 11, '1', '900', '900.00'),
(11, 7, 12, '1', '2500', '2500.00'),
(12, 8, 14, '1', '5.689', '5.69'),
(13, 9, 15, '2', '5.00', '10.00'),
(14, 10, 15, '2', '5.00', '10.00'),
(18, 11, 14, '1', '5.689', '5.69'),
(19, 11, 15, '1', '5.00', '5.00'),
(21, 12, 14, '2', '5.689', '11.38'),
(22, 12, 15, '1', '5.00', '5.00'),
(24, 13, 11, '1', '900', '900.00'),
(25, 14, 357, '1', '29.99', '29.99'),
(26, 15, 356, '1', '7.49', '7.49'),
(28, 17, 357, '1', '29.99', '29.99'),
(29, 18, 358, '5', '30.00', '150.00'),
(30, 19, 357, '1', '29.99', '29.99'),
(31, 20, 357, '1', '29.99', '29.99'),
(32, 21, 358, '1', '30.00', '30.00'),
(33, 22, 358, '1', '30.00', '30.00'),
(34, 23, 357, '1', '29.99', '29.99'),
(35, 24, 358, '1', '30.00', '30.00'),
(36, 25, 357, '1', '29.99', '29.99'),
(37, 26, 358, '1', '30.00', '30.00'),
(38, 27, 358, '1', '30.00', '30.00'),
(40, 29, 358, '1', '30.00', '30.00'),
(41, 28, 357, '1', '29.99', '29.99'),
(42, 30, 322, '1', '2.90', '2.90'),
(43, 31, 322, '1', '2.90', '2.90'),
(44, 32, 356, '1', '7.49', '7.49'),
(45, 33, 356, '1', '7.49', '7.49'),
(47, 34, 356, '1', '7.49', '7.49'),
(48, 35, 347, '2', '0.40', '0.80'),
(51, 36, 347, '2', '0.40', '0.80'),
(52, 37, 357, '1   ', '29.99', '29.99');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `attribute_value_id` text,
  `brand_id` text NOT NULL,
  `category_id` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
(188, '[Guitar acoustique] Yamaha', 'C40', '49.99', '17', '', 'Guitar acoustic Yamaha avec étuie à guitar', '', '[\"15\"]', '[\"7\"]', 5, 1),
(189, '[Pochette accordéon winnable] winnable', '065479021000', '10.00', '2', '', '13 pochettes format lettre', '', '[\"15\"]', '[\"7\"]', 5, 1),
(190, '[Pochette accordéon ecooffice] ecooffice', '873821003303', '10.00', '1', '', '13 pochettes format lettre', '', '[\"15\"]', '[\"7\"]', 5, 1),
(191, '[Pochette accordéon Pendaflex] Pendaflex', '078973555636', '0.00', '7', '', '7 pochettes format lettre', '', '[\"15\"]', '[\"7\"]', 5, 1),
(192, '[Cahier de note ligné  200 pages Hilroy] Hilroy', '0 6500 13400 3', '4.65', '17', '', '200 pages ligné 24.1 cm x 15.2 cm', '', '[\"15\"]', '[\"7\"]', 5, 1),
(193, '[Carnet croquis 100 feuilles Hilroy studio pro] Hilroy', '065800415201', '4.00', '29', '', '100 feuilles, 50lb papier 27.9 x 21.5 cm', '', '[\"15\"]', '[\"7\"]', 5, 1),
(194, '[Cahier de note ligné 80 pages Hilroy] Hilroy', '065800131217', '2.65', '12', '', 'Cahier 80 pages 26.6 cm X 20,3 cm', '', '[\"15\"]', '[\"7\"]', 5, 1),
(195, '[Cahier de note ligné 300 pages] Hilroy', '043100069096', '7.45', '18', '', '24.1 cm x 15.2 cm', '', '[\"15\"]', '[\"7\"]', 5, 1),
(196, '[cahier canada 32 pages ligné] Hilroy', '065800126923', '1.50', '38', '', '27.6 cm x 21.2 cm', '', '[\"15\"]', '[\"7\"]', 5, 1),
(197, '[paquet de 20 feuilles papier quadrillé hilroy] Hilroy', '065800052611', '1.60', '28', '', '27.6 x 21.3 cm', '', '[\"15\"]', '[\"7\"]', 5, 1),
(198, '[cahier de note 3 sujet 108 pages lignées] Hilroy', '065800131118', '2.00', '21', '', '26.6 cm x 20.3 cm', '', '[\"15\"]', '[\"7\"]', 5, 1),
(199, '[paquet de 200 feuilles lignées] Hilroy', '065800052338', '6.90', '7', '', '27.6cm x 21.2 cm', '', '[\"15\"]', '[\"7\"]', 5, 1),
(200, '[cahier quadrillé 80 pages Hilroy] Hilroy', '065800130050', '2.00', '23', '', '26,6 x 20,3 cm', '', '[\"15\"]', '[\"7\"]', 5, 1),
(201, '[Crayon à la mine HB] Staedtler', '13246', '0.25', '2', '', 'Crayon à la mine HB', '', '[\"15\"]', '[\"7\"]', 5, 1),
(202, '[Pouce mine vert ICY] Pentel ', '072512254486', '2.00', '20', '', 'Pouce mine vert ICY', '', '[\"15\"]', '[\"7\"]', 5, 1),
(203, '[Pouce mine mauve ICY] Pentel ', '072512092392', '2.00', '12', '', 'Pouce mine mauve ICY', '', '[\"15\"]', '[\"7\"]', 5, 1),
(204, '[Pouce mine bleu ICY] Pentel ', '072512092422', '2.00', '18', '', 'Pouce mine bleu ICY', '', '[\"15\"]', '[\"7\"]', 5, 1),
(205, '[Pouce mine noir ICY] Pentel ', '072512092309', '2.00', '8', '', 'Pouce mine noir ICY', '', '[\"15\"]', '[\"7\"]', 5, 1),
(206, '[Pouce mine Paper Mate assorti] Paper Mate', '', '0.35', '17', '', 'Pouce mine Paper Mate assorti', '', '[\"15\"]', '[\"7\"]', 5, 1),
(207, '[Pouce mine bleu et turquoise ComfortMate ULTRA] Pape Mate-ComfortMate ULTRA', '', '1.50', '5', '', 'Pouce mine bleu et turquoise ComfortMate ULTRA', '', '[\"15\"]', '[\"7\"]', 5, 1),
(208, '[Pouce mine rouge et mauve ComfortMate ULTRA] Paper Mate-ComfortMate ULTRA', '', '1.50', '7', '', 'Pouce mine rouge et mauve ComfortMate ULTRA', '', '[\"15\"]', '[\"7\"]', 5, 1),
(209, '[Pouce mine BIC assorti] BIC', '', '0.25', '39', '', 'Pouce mine BIC assorti', '', '[\"15\"]', '[\"7\"]', 5, 1),
(210, '[Pouce mine BIC Atlantis et Pilot G-2] BIC et Pilot', '4902505276101', '1.50', '10', '', 'Pouce mine BIC Atlantis et Pilot G-2', '', '[\"15\"]', '[\"7\"]', 5, 1),
(211, '[Pouce mine bleu Pentel] Pentel ', '072512063057', '1.50', '10', '', 'Pouce mine bleu Pentel', '', '[\"15\"]', '[\"7\"]', 5, 1),
(212, '[Pouce mine bleu PROGREX] Pilot', '4902505373428', '1.00', '20', '', 'Pouce mine bleu PROGREX', '', '[\"15\"]', '[\"7\"]', 5, 1),
(213, '[Pouce mine noir PROGREX] Pilot', '4902505377839', '1.00', '20', '', 'Pouce mine noir PROGREX', '', '[\"15\"]', '[\"7\"]', 5, 1),
(214, '[Pouce mine noir Super Grip] Pilot', '4902505154287', '1.50', '10', '', 'Pouce mine noir Super Grip', '', '[\"15\"]', '[\"7\"]', 5, 1),
(215, '[Pouce mine Integra assorti] Integra', '', '0.45', '12', '', 'Pouce mine Integra assorti', '', '[\"15\"]', '[\"7\"]', 5, 1),
(216, '[Pouce mine H-165] Pilot', '4902505159800', '1.50', '15', '', 'Pouce mine H-165', '', '[\"15\"]', '[\"7\"]', 5, 1),
(217, '[Triplus fineliner assorti] Staedtler', '', '1.00', '32', '', 'Triplus fineliner assorti', '', '[\"15\"]', '[\"7\"]', 5, 1),
(218, '[Stylo bleu R.S.V.P.] Pentel ', '072512068656', '2.50', '4', '', 'Stylo bleu R.S.V.P.', '', '[\"15\"]', '[\"7\"]', 5, 1),
(219, '[Stylo rouge R.S.V.P.] Pentel ', '072512068625', '2.50', '16', '', 'Stylo rouge R.S.V.P.', '', '[\"15\"]', '[\"7\"]', 5, 1),
(220, '[Stylo vert R.S.V.P.] Pentel ', '072512068687', '2.50', '6', '', 'Stylo vert R.S.V.P.', '', '[\"15\"]', '[\"7\"]', 5, 1),
(221, '[Stylo rose R.S.V.P.] Pentel ', '072512068717', '2.50', '2', '', 'Stylo rose R.S.V.P.', '', '[\"15\"]', '[\"7\"]', 5, 1),
(222, '[Stylo mauve R.S.V.P.] Pentel ', '072512068779', '2.50', '5', '', 'Stylo mauve R.S.V.P.', '', '[\"15\"]', '[\"7\"]', 5, 1),
(223, '[Stylo cyan R.S.V.P.] Pentel ', '072512068748', '2.50', '6', '', 'Stylo cyan R.S.V.P.', '', '[\"15\"]', '[\"7\"]', 5, 1),
(224, '[Stylo noir R.S.V.P.] Pentel ', '072512068595', '2.50', '7', '', 'Stylo noir R.S.V.P.', '', '[\"15\"]', '[\"7\"]', 5, 1),
(225, '[Taille-crayon Mars Lumograph] Staedtler', '031901922535', '3,20', '10', '', 'Taille-crayon Mars Lumograph', '', '[\"15\"]', '[\"7\"]', 5, 1),
(226, '[Taille-crayon Clean Grip] Maped', '3154140141110', '1.80', '20', '', 'Taille-crayon Clean Grip', '', '[\"15\"]', '[\"7\"]', 5, 1),
(227, '[Stylo correcteur Wite-Out] BIC', '', '3,10', '7', '', 'Stylo correcteur Wite-Out', '', '[\"15\"]', '[\"7\"]', 5, 1),
(228, '[Taille-crayon lapin] Maped', '3154140176112', '2.60', '9', '', 'Taille-crayon lapin', '', '[\"15\"]', '[\"7\"]', 5, 1),
(229, '[Serviette (Ikea)] 22703', 'CI-111630-7', '3,25', '6', '', 'Nettoyer', '', '[\"15\"]', '[\"7\"]', 5, 1),
(230, '[Toile cartonée] DeSerres', 'CC1114', '5.00', '6', '', 'Toile cartonée de luxe pour tous les médiums', '', '[\"15\"]', '[\"7\"]', 5, 1),
(231, '[Carnet de croquis Studio Pro] Hilroy', '6580041520', '4.00', '4', '', 'Un papier polyvalent pour fusains, pastels et stylos', '', '[\"15\"]', '[\"7\"]', 5, 1),
(232, '[Craie blanche] Crayola', '063652140609', '9.00', '2', '', 'Craie blance sans poussière', '', '[\"15\"]', '[\"7\"]', 5, 1),
(233, '[Bâton de colle] Lepage', '061083638191', '1.45', '10', '', 'Petit 20g', '', '[\"15\"]', '[\"7\"]', 5, 1),
(234, '[Trombones] ACCO', '050505725229', '1.40', '4', '', 'Petit 100', '', '[\"15\"]', '[\"7\"]', 5, 1),
(235, '[Trombones] ACCO', '050505725236', '4.00', '5', '', 'Grand 100', '', '[\"15\"]', '[\"7\"]', 5, 1),
(236, '[Distributeur de trombones] ', '065956083019', '1.90', '4', '', '', '', '[\"15\"]', '[\"7\"]', 5, 1),
(237, '[Doigtiers] Swingline', '074711540322', '1.00', '2', '', '12 px', '', '[\"15\"]', '[\"7\"]', 5, 1),
(238, '[Doigtirers] Offix', '064474720468', '1.00', '1', '', '(ouvertt)', '', '[\"15\"]', '[\"7\"]', 5, 1),
(239, '[Stylo Inkjoy] PaperMate', '', '2.50', '7', '', 'Assortis', '', '[\"15\"]', '[\"7\"]', 5, 1),
(240, '[Élastiques] Dixon', '072067890672', '2.45', '2', '', '113g', '', '[\"15\"]', '[\"7\"]', 5, 1),
(241, '[Élastiques sans latex] Alliance rubber company', '620583421995', '3.78', '4', '', 'Assortis', '', '[\"15\"]', '[\"7\"]', 5, 1),
(242, '[Planche à pince] Geo', '067004148114', '4.75', '10', '', 'Couleurs', '', '[\"15\"]', '[\"7\"]', 5, 1),
(243, '[Planche à pince] Geo', '067004861181', '3.00', '4', '', 'Carton', '', '[\"15\"]', '[\"7\"]', 5, 1),
(244, '[Classeur à 7 pochettes] Pendaflex', '078973555636', '12.40', '3', '', '', '', '[\"15\"]', '[\"7\"]', 5, 1),
(245, '[Couverture de rapport transparente givrée] GBC impact', '078910433614', '2.00', '12', '', '', '', '[\"15\"]', '[\"7\"]', 5, 1),
(246, '[Porte-documents] FileMode', '620583932804', '5.60', '14', '', 'Assortis couleurs', '', '[\"15\"]', '[\"7\"]', 5, 1),
(247, '[Windowfile 13 pochettes] Winnable', '065479021000', '10.00', '4', '', 'format lettre', '', '[\"15\"]', '[\"7\"]', 5, 1),
(248, '[Cartable reliure de présentation 1 1/2 pouce] GEO', '067004015744', '4.50', '13', '', '', '', '[\"15\"]', '[\"7\"]', 5, 1),
(249, '[Cartable 1 1/2 pouce] Hilroy', '065800045743', '6.00', '5', '', '400 feuilles, ultra résistance', '', '[\"15\"]', '[\"7\"]', 5, 1),
(250, '[Cartable reliure de présentation 1 pouce] GEO', '067004010985', '4.00', '1', '', '', '', '[\"15\"]', '[\"7\"]', 5, 1),
(251, '[Cartable 1 pouce FILEMODE] FileMode', '620583646237', '4.75', '1', '', '', '', '[\"15\"]', '[\"7\"]', 5, 1),
(252, '[Cartable reliure 1 pouce ENVI] ENVI', '050505135394', '3.00', '4', '', '175 feuilles', '', '[\"15\"]', '[\"7\"]', 5, 1),
(253, '[Cartable 2 pouces HILROY] Hilroy', '065800045767', '7.00', '4', '', '525 feuilles, ultra résistance', '', '[\"15\"]', '[\"7\"]', 5, 1),
(254, '[Cartable reliure 2 pouces ENVI] ENVI', '050505138210', '10,25', '1', '', '480 feuilles', '', '[\"15\"]', '[\"7\"]', 5, 1),
(255, '[Cartable économique Corporate express] Corporate express', '054249035019', '6.00', '1', '', '375 feuilles', '', '[\"15\"]', '[\"7\"]', 5, 1),
(256, '[Cartable reliure de présentation 2 pouce] GEO', '067004209990', '8.00', '2', '', '', '', '[\"15\"]', '[\"7\"]', 5, 1),
(257, '[Couverture s de présentation fermeture a pince] Selectum', '057447482104', '1,10', '4', '', 'format legal', '', '[\"15\"]', '[\"7\"]', 5, 1),
(258, '[Cartable noir] Aucun', '064128934517', '4.75', '2', '', 'Format légal', '', '[\"15\"]', '[\"7\"]', 5, 1),
(259, '[Papier de construction] Crayola', '063652200501', '6.00', '8', '', '120 feuilles de 22cmx30cm', '', '[\"15\"]', '[\"7\"]', 5, 1),
(260, '[Stencil pour géométrie] Buffalo', '069762000680', '1.00', '5', '', '24 formes differentes', '', '[\"15\"]', '[\"7\"]', 5, 1),
(261, '[Bescherelle] Hurtubise', '9782896475872', '18.50', '1', '', 'Dictionnaire de verbe', '', '[\"15\"]', '[\"7\"]', 5, 1),
(262, '[Dictionnaire de poche ] Larousse', '9782035915740', '10.00', '8', '', 'Français et Anglais', '', '[\"15\"]', '[\"7\"]', 5, 1),
(263, '[Dictionnaire de poche micro] Le Robert', '9782321010517', '13.75', '1', '', 'Françcais', '', '[\"15\"]', '[\"7\"]', 5, 1),
(264, '[Dictionnaire de poche] Le Robert', '9782321006923', '10.00', '2', '', 'Anglais', '', '[\"15\"]', '[\"7\"]', 5, 1),
(265, '[The Merriam-Webster Dictionary] Merriam-Webster', '9780877792956', '10.00', '4', '', 'Anglais', '', '[\"15\"]', '[\"7\"]', 5, 1),
(266, '[Dictionnaire] Larousse', '9782035837325', '10.00', '4', '', 'Français-Espagnol', '', '[\"15\"]', '[\"7\"]', 5, 1),
(267, '[Cartes à jouer] Rocky', 'Aucun', '2.40', '9', '', 'cartes à jouer', '', '[\"15\"]', '[\"7\"]', 5, 1),
(268, '[¨Post-it] Post-it', 'Aucun', '1.80', '13', '', 'En forme de cœur rose et bleu, en forme d\'étoile jaune et rose, en forme de bulle jaune et bleu, en forme de fleur jaune, en forme de pomme jaune', '', '[\"15\"]', '[\"7\"]', 5, 1),
(269, '[Post-it] Highland', 'Aucun', '0.25', '24', '', 'rectangulaire jaune', '', '[\"15\"]', '[\"7\"]', 5, 1),
(270, '[Memo pads ] Mead', '043100453543', '0.85', '8', '', 'carnet de note', '', '[\"15\"]', '[\"7\"]', 5, 1),
(271, '[Memo book] Hilroy', '065800424524', '3.35', '4', '', 'carnet de note', '', '[\"15\"]', '[\"7\"]', 5, 1),
(272, '[classeur transparent] aucun', 'aucun', '1.50', '2', '', 'classeur d\'objet transparent', '', '[\"15\"]', '[\"7\"]', 5, 1),
(273, '[cahier de notes admirablement conçus] Winnable', '065479562015', '4.55', '9', '', 'cahier de notes', '', '[\"15\"]', '[\"7\"]', 5, 1),
(274, '[Fiches lignées] Oxford', '078787901148', '9.35', '9', '', 'feuille aide-mémoire multicolore 4x6', '', '[\"15\"]', '[\"7\"]', 5, 1),
(275, '[Fiches lignées] Oxford', '078787031043', '1.75', '7', '', 'feuille aide-mémoire blanc 3x5', '', '[\"15\"]', '[\"7\"]', 5, 1),
(276, '[Tablette de couleur] Offismart', '873821001279', '3.00', '2', '', 'cahier de notes à 3 couleurs 5x8', '', '[\"15\"]', '[\"7\"]', 5, 1),
(277, '[Staedtler crayon non permanent fine-small] Staedtler', '4007817304303', '2.60', '78', '', 'marqueur non permanent fine bleu, noir, vert, rouge', '', '[\"15\"]', '[\"7\"]', 5, 1),
(278, '[Crayon Pilot] Pilot', '4902505322730', '1.50', '19', '', 'Crayon Pilot Frixion rouge, blue, violet, vert, orange', '', '[\"15\"]', '[\"7\"]', 5, 1),
(279, '[Staedtler crayon permanent fine-moyen] Staedtler', '4007817319079', '2.60', '39', '', 'marqueur permanent fine-moyene bleu noir, rouge, vert', '', '[\"15\"]', '[\"7\"]', 5, 1),
(280, '[Staedtler crayon correctable] Staedtler', '4007817305010', '1.60', '39', '', 'marqueur noir correctable', '', '[\"15\"]', '[\"7\"]', 5, 1),
(281, '[Stylo] BIC', 'aucun', '0.10', '44', '', 'Stylo noir, bleu, rouge', '', '[\"15\"]', '[\"7\"]', 5, 1),
(282, '[Colle d\'école] Elmer\'s', '061550603073', '4,20', '1', '', '120mL', '', '[\"15\"]', '[\"7\"]', 5, 1),
(283, '[Chemises format Lettre] Hilroy', '065800559615', '65.29', '3', '', 'Chemises format Lettre réversible', '', '[\"15\"]', '[\"7\"]', 5, 1),
(284, '[Chemises format legal] ', '', '0,00', '5', '', 'Chemises format Legal  blonde', '', '[\"15\"]', '[\"7\"]', 5, 1),
(285, '[Chemises format lettre] ', '', '0,00', '18', '', 'Chemises format lettre', '', '[\"15\"]', '[\"7\"]', 5, 1),
(286, '[PILOT Fineliner] pilot', '4902505085956', '0.75', '13', '', 'rouge, vert, bleu', '', '[\"15\"]', '[\"7\"]', 5, 1),
(287, '[papermate inkjoy 1.0m] papermate', '', '0.75', '22', '', '300 rt, red and black', '', '[\"15\"]', '[\"7\"]', 5, 1),
(288, '[stylo zebra JIMNIE medium] JIMNIE', '045888441101', '0.75', '7', '', 'Black and blue', '', '[\"15\"]', '[\"7\"]', 5, 1),
(289, '[pilot vball grip 0.5] pilot', '4902505322822', '1,10', '29', '', 'black, red , green', '', '[\"15\"]', '[\"7\"]', 5, 1),
(290, '[pilot vball grip 0.7] pilot', '4902505322907', '1,10', '14', '', 'black', '', '[\"15\"]', '[\"7\"]', 5, 1),
(291, '[pilot hi-tecpoint v5 rt] pilot', '4902505342868', '1,10', '10', '', '', '', '[\"15\"]', '[\"7\"]', 5, 1),
(292, '[uni-ball vision elite] uni', '070530004762', '1,10', '9', '', 'black, green, blue', '', '[\"15\"]', '[\"7\"]', 5, 1),
(293, '[big atlantis comfort] big', '', '1,10', '2', '', 'red, blue, black', '', '[\"15\"]', '[\"7\"]', 5, 1),
(294, '[Fiches lignées] Oxford', '078787031043', '1.75', '6', '', 'Blanc', '', '[\"15\"]', '[\"7\"]', 5, 1),
(295, '[Fiches lignées] Oxford', '078787901148', '9.35', '9', '', 'Couleurs assorties', '', '[\"15\"]', '[\"7\"]', 5, 1),
(296, '[cahier de notes admirablement conçus] Winnable', '065479562015', '4.55', '42', '', '160 pages, Lignées, perforées', '', '[\"15\"]', '[\"7\"]', 5, 1),
(297, '[Contenant pour crayons en plastique] ', '', '1.50', '35', '', '4 cases', '', '[\"15\"]', '[\"7\"]', 5, 1),
(298, '[Stylo inkjoy] PaperMate', '', '0.75', '22', '', 'noir et rouge', '', '[\"15\"]', '[\"7\"]', 5, 1),
(299, '[Étui à crayon] Louis Garneau', '067004203301', '8.00', '3', '', 'Étui à crayon', '', '[\"15\"]', '[\"7\"]', 5, 1),
(300, '[Étui à crayon] Louis Garneau', '067004219616', '8.00', '5', '', 'Étui à crayon', '', '[\"15\"]', '[\"7\"]', 5, 1),
(301, '[Étui à crayon] Louis Garneau', '067004192292', '8.00', '3', '', 'Étui à crayon', '', '[\"15\"]', '[\"7\"]', 5, 1),
(302, '[Étui à crayon] Five Star', '043100504306', '7.75', '5', '', 'Étui à crayon', '', '[\"15\"]', '[\"7\"]', 5, 1),
(303, '[Étui à crayon] Off Track', '067004172072', '9.00', '5', '', 'Étui à crayon', '', '[\"15\"]', '[\"7\"]', 5, 1),
(304, '[Étui à crayon] ORO', '067004200232', '9.00', '3', '', 'Étui à crayon', '', '[\"15\"]', '[\"7\"]', 5, 1),
(305, '[Étui à crayon] Five star', '043100503705', '6.75', '13', '', 'Étui à crayon', '', '[\"15\"]', '[\"7\"]', 5, 1),
(306, '[Étui à crayon Geocan] Louis Garneau', '067004232936', '13,30', '4', '', 'Étui à crayon Geocan', '', '[\"15\"]', '[\"7\"]', 5, 1),
(307, '[Étui à crayon] Geo', '067004201765', '9.75', '4', '', 'Étui à crayon', '', '[\"15\"]', '[\"7\"]', 5, 1),
(308, '[Étui à crayon] ORO', '067004233339', '9.00', '3', '', 'Étui à crayon', '', '[\"15\"]', '[\"7\"]', 5, 1),
(309, '[Étui à crayon] Louis Garneau', '067004312096', '12,30', '1', '', 'Étui à crayon', '', '[\"15\"]', '[\"7\"]', 5, 1),
(310, '[Étui à crayon] Winnable', '065479008018', '7.40', '6', '', 'Étui à crayon', '', '[\"15\"]', '[\"7\"]', 5, 1),
(311, '[Étui à crayon] Merangue', '068488062040', '7,25', '2', '', 'Étui à crayon', '', '[\"15\"]', '[\"7\"]', 5, 1),
(312, '[Étui à crayon] Merangue', '068488035228', '2.75', '2', '', 'Étui à crayon', '', '[\"15\"]', '[\"7\"]', 5, 1),
(313, '[Étui à crayon] Off Track', '067004231953', '6,15', '2', '', 'Étui à crayon', '', '[\"15\"]', '[\"7\"]', 5, 1),
(314, '[Étui à crayon] Corrosif', '067004290035', '6.00', '6', '', 'Étui à crayon', '', '[\"15\"]', '[\"7\"]', 5, 1),
(315, '[Tableau effaçable magnétique] Quartet', '034138038697', '12,20', '3', '', 'Tableau effaçable magnétique', '', '[\"15\"]', '[\"7\"]', 5, 1),
(316, '[Bonnet de bain en Lycra] Aquam', '799162840332', '7.00', '6', '', 'Bonnet de bain en Lycra', '', '[\"15\"]', '[\"7\"]', 5, 1),
(317, '[Bonnet de bain en silicone] Aquam', '799162800428', '8.00', '1', '', 'Bonnet de bain en silicone', '', '[\"15\"]', '[\"7\"]', 5, 1),
(318, '[Assainiissant à main] Wish', '191554602199', '2.50', '8', '', 'Assainiissant à main', '', '[\"15\"]', '[\"7\"]', 5, 1),
(319, '[Calculatrice] Merangue', '068488015725', '0,00', '4', '', 'Calculatrice', '', '[\"15\"]', '[\"7\"]', 5, 1),
(320, '[Calculatrice] Sharp', '074000019799', '20.00', '5', '', 'Calculatrice', '', '[\"15\"]', '[\"7\"]', 5, 1),
(321, '[Épingles à babillard] Westcott', '065956035643', '1.50', '4', '', 'Épingles à babillard', '', '[\"15\"]', '[\"7\"]', 5, 1),
(322, '[Punaises] ACCO', '050505716050', '2.90', '3', '', 'Punaises', '', '[\"15\"]', '[\"7\"]', 5, 1),
(323, '[Mirroir magnétique] Merangue', '068488062682', '4.00', '23', '', 'Mirroir magnétique', '', '[\"15\"]', '[\"7\"]', 5, 1),
(324, '[Écouvillon de clarinette] Twigg', 'XXXXX', '4.75', '1', '', 'Écouvillon de clarinette', '', '[\"15\"]', '[\"7\"]', 5, 1),
(325, '[Règle de 30cm] Westcott', '065956408126', '0.50', '25', '', 'Règle de 30cm', '', '[\"15\"]', '[\"7\"]', 5, 1),
(326, '[Règle de 15cm] Westcott', '065956408065', '0.25', '13', '', 'Règle de 15cm', '', '[\"15\"]', '[\"7\"]', 5, 1),
(327, '[Étui à crayon] Louis Garneau', '067004184235', '8.00', '8', '', 'Étui à crayon', '', '[\"15\"]', '[\"7\"]', 5, 1),
(328, '[Règle de 30cm flex] Westcott', '065956143812', '1.00', '63', '', 'Règle de 30cm flex', '', '[\"15\"]', '[\"7\"]', 5, 1),
(329, '[Règle de 15cm flex] Westcott', '065956159899', '0.50', '86', '', 'Règle de 15cm flex', '', '[\"15\"]', '[\"7\"]', 5, 1),
(330, '[Mouilleur d\'enveloppe] Quality Park', '085227460677', '3.50', '4', '', 'Mouilleur d\'enveloppe', '', '[\"15\"]', '[\"7\"]', 5, 1),
(331, '[Stylo gelocity] Bic', '070330355651', '14.00', '2', '', 'Stylo gelocity', '', '[\"15\"]', '[\"7\"]', 5, 1),
(332, '[Stylo Inkjoy] PaperMate', '071641033795', '3.00', '10', '', 'Stylo Inkjoy', '', '[\"15\"]', '[\"7\"]', 5, 1),
(333, '[Recharge Stylo Bleu] Pentel RSVP', '072512056394', '1.40', '34', '', 'Recharge Stylo Bleu', '', '[\"15\"]', '[\"7\"]', 5, 1),
(334, '[Recharge Stylo Mauve] Pentel RSVP', '072512058190', '1.40', '35', '', 'Recharge Stylo Mauve', '', '[\"15\"]', '[\"7\"]', 5, 1),
(335, '[Recharge Stylo Noir] Pentel RSVP', '072512056332', '1.40', '35', '', 'Recharge Stylo Noir', '', '[\"15\"]', '[\"7\"]', 5, 1),
(336, '[Recharge Stylo Rouge] Pentel RSVP', '072512056363', '1.40', '33', '', 'Recharge Stylo Rouge', '', '[\"15\"]', '[\"7\"]', 5, 1),
(337, '[Compas Avancée] Staedtler', '031901949846', '8.00', '7', '', 'Compas Avancée', '', '[\"15\"]', '[\"7\"]', 5, 1),
(338, '[Rapporteur d\'angle] Staedtler', '031901902254', '0.75', '1', '', 'Rapporteur d\'angle', '', '[\"15\"]', '[\"7\"]', 5, 1),
(339, '[Compas Avancée] Staedtler', '031901531775', '18.00', '14', '', '', '', '[\"15\"]', '[\"7\"]', 5, 1),
(340, '[Trousse scolaire] Staedtler', '031901949891', '9.50', '2', '', 'Trousse scolaire', '', '[\"15\"]', '[\"7\"]', 5, 1),
(341, '[Marqueur M Lumocolor] Staedtler', '4007817310380', '9.50', '10', '', 'Marqueur M Lumocolor', '', '[\"15\"]', '[\"7\"]', 5, 1),
(342, '[Marqueur Effaçable] Staedtler', '4007817305188', '12.00', '9', '', 'Marqueur Effaçable', '', '[\"15\"]', '[\"7\"]', 5, 1),
(343, '[Stylo feutre Fin] Staedtler', '031901951917', '10.00', '4', '', 'Stylo feutre Fin', '', '[\"15\"]', '[\"7\"]', 5, 1),
(344, '[Porte Mine] PaperMate', '071641177475', '5.00', '7', '', 'Porte Mine', '', '[\"15\"]', '[\"7\"]', 5, 1),
(345, '[Stylo effaçable 3x] Pilot Frixion', '067897004719', '9.00', '9', '', 'Stylo effaçable 3x', '', '[\"15\"]', '[\"7\"]', 5, 1),
(346, '[Stylo effaçable 4x] Pilot Frixion', '067897004450', '12.00', '4', '', 'Stylo effaçable 4x', '', '[\"15\"]', '[\"7\"]', 5, 1),
(347, '[Équerre] ', '065956004458', '0.40', '25', '', 'Équerre', '', '[\"15\"]', '[\"7\"]', 5, 1),
(348, '[Stylo Bleu] Bic', '070330184886', '5.50', '3', '', 'Stylo Bleu', '', '[\"15\"]', '[\"7\"]', 5, 1),
(349, '[Stylo noir Gelocity] Bic', '070330314405', '5.50', '9', '', 'Stylo noir Gelocity', '', '[\"15\"]', '[\"7\"]', 5, 1),
(350, '[Aimant] Maped', '3154140512002', '2.50', '3', '', 'Aimant', '', '[\"15\"]', '[\"7\"]', 5, 1),
(351, '[Mini agrafeuse] Westcott', '065956142181', '4.60', '5', '', 'Mini agrafeuse', '', '[\"15\"]', '[\"7\"]', 5, 1),
(352, '[Agrafeuse standard] Westcott', '065956060515', '9.50', '3', '', 'Agrafeuse standard', '', '[\"15\"]', '[\"7\"]', 5, 1),
(353, '[Carnet à croquis 100 feuilles Bienfang] Bienfang', '079946158915', '13.29', '3', '', '216 mm x 279 mm', '', '[\"15\"]', '[\"7\"]', 5, 1),
(354, '[Lunette de piscine] FlowAquam', '799162827951', '0.00', '2', '', 'adult', '', '[\"15\"]', '[\"7\"]', 5, 1),
(355, '[paquet de 5 sharpie ultra fine noire] Sharpie', '071641376656', '7.49', '2', '', '', '', '[\"15\"]', '[\"7\"]', 5, 1),
(356, '[paquet de 5 sharpie ultra fine couleur] Sharpie', '071641376755', '7.49', '0', '', '', '', '[\"15\"]', '[\"7\"]', 5, 1),
(357, '[paquet de 24 sharpie couleur] Sharpie', '071641098664', '29.99', '-7', '', '', '', '[\"15\"]', '[\"7\"]', 5, 1),
(358, '[efface de tableau noire Finney] Finney', 'XXXXX', '30.00', '-14', '', 'use dry', '', '[\"15\"]', '[\"7\"]', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(5, 'Magasin Scolaire', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'super admin', '$2y$10$yfi5nUQGXUZtMdl27dWAyOd/jMOmATBpiUvJDmUu9hJ5Ro6BE5wsK', 'admin@admin.com', 'john', 'doe', '65646546', 1),
(11, 'shafraz', '$2y$10$LK91ERpEJxortR86lkDjwu7MClazgIrvDqehqOnq5ZKm30elKAkUa', 'shafraz@gmail.com', 'mohamed', 'nizam', '0778650669', 1),
(12, 'jsmith', '$2y$10$WLS.lZeiEfyXYfR0l/wkXeRRuqazsgIAMC9//L44J4KkZGbbqcKYC', 'jsmith@sample.com', 'John', 'Smith', '2345678', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(7, 6, 4),
(8, 7, 4),
(9, 8, 4),
(10, 9, 5),
(11, 10, 5),
(12, 11, 5),
(13, 12, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Personid`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Personid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
