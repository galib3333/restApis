-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2023 at 08:51 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `dinner`
--

CREATE TABLE `dinner` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `imageSrc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dinner`
--

INSERT INTO `dinner` (`id`, `name`, `price`, `description`, `imageSrc`) VALUES
(1, 'Spaghetti Bolognese', 12.99, 'Classic Italian pasta dish with savory meat sauce and Parmesan cheese.', 'assets/img/Spaghetti-Bolognese.jpg'),
(2, 'Grilled Salmon Fillet', 15.99, 'Tender grilled salmon fillet served with steamed vegetables and lemon butter sauce.', 'assets/img/Grilled-Salmon-Fillet.jpg'),
(3, 'Chicken Alfredo Pasta', 14.49, 'Creamy Alfredo sauce with grilled chicken and fettuccine pasta.', 'assets/img/Chicken-Alfredo-Pasta.jpg'),
(4, 'Margherita Pizza', 11.99, 'Classic pizza with tomato sauce, fresh mozzarella cheese, basil, and olive oil.', 'assets/img/Margherita-Pizza.jpg'),
(5, 'Steakhouse Ribeye Steak', 19.99, 'Juicy and flavorful ribeye steak cooked to perfection, served with mashed potatoes.', 'assets/img/Steakhouse-Ribeye-Steak.jpg'),
(6, 'Vegetable Stir-Fry', 10.99, 'A medley of fresh vegetables stir-fried with tofu in a savory sauce.', 'assets/img/Vegetable-Stir-Fry.jpg'),
(7, 'Beef Tacos', 8.99, 'Soft tacos filled with seasoned ground beef, lettuce, cheese, and salsa.', 'assets/img/Beef-Tacos.jpg'),
(8, 'Shrimp Scampi', 16.99, 'Succulent shrimp sautéed in garlic and butter, served over linguine pasta.', 'assets/img/Shrimp-Scampi.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dinner`
--
ALTER TABLE `dinner`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dinner`
--
ALTER TABLE `dinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
