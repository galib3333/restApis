-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2023 at 11:26 AM
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
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `imageSrc` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `description`, `price`, `imageSrc`, `category_id`) VALUES
(1, 'Fluffy Pancakes', 'Delicious, fluffy pancakes served with maple syrup and fresh berries.', 8.99, 'assets/img/Fluffy-Pancakes.jpg', 1),
(2, 'Veggie Omelette', 'A healthy omelette filled with sautéed vegetables and topped with cheese.', 9.99, 'assets/img/Vegetable-Omelette.jpg', 1),
(3, 'Crispy Waffles', 'Crispy waffles served with whipped cream, chocolate sauce, and strawberries.', 7.99, 'assets/img/Crispy-Waffles.jpeg', 1),
(4, 'Cinnamon French Toast', 'Slices of bread dipped in cinnamon and egg mixture, toasted to perfection.', 6.99, 'assets/img/Cinnamon-French-Toast.jpg', 1),
(5, ' Berry Yogurt Parfait', 'Layers of yogurt, granola, and fresh berries topped with honey.', 5.99, 'assets/img/Berry-Yogurt-Parfait.jpg', 1),
(6, 'Hearty Breakfast Burrito', 'A hearty breakfast burrito with scrambled eggs, sausage, cheese, and salsa.', 8.49, 'assets/img/Hearty-Breakfast-Burrito.jpg', 1),
(7, 'Green Smoothie', 'A healthy green smoothie made with spinach, banana, and almond milk.', 5.49, 'assets/img/Green-Smoothie.jpg', 1),
(8, 'Blueberry Muffins', 'Freshly baked blueberry muffins, perfect for a morning treat.', 3.99, 'assets/img/Blueberry-Muffins.jpg', 1),
(9, 'Grilled Steak', 'Tender and juicy steak, seasoned and grilled to perfection. Served with your choice of side dishes.', 19.99, 'assets/img/menu-4.jpg', 2),
(10, 'BBQ Ribs', 'Finger-licking good BBQ ribs, slow-cooked to smoky perfection. Comes with coleslaw and cornbread.', 16.99, 'assets/img/menu-8.jpg', 2),
(11, 'Bacon-Wrapped Chicken', ' Succulent chicken breasts wrapped in crispy bacon and glazed with a sweet and savory sauce.', 14.49, 'assets/img/menu-1.jpg', 2),
(12, 'Spicy Buffalo Wings', 'Crispy and spicy buffalo wings served with celery sticks and blue cheese dressing.', 10.99, 'assets/img/menu-5.jpg', 2),
(13, 'Steak and Shrimp Combo', 'The best of both worlds – a juicy steak paired with grilled shrimp and your choice of sides.', 22.99, 'assets/img/menu-2.jpg', 2),
(14, 'Beef Stir-Fry', ' Sliced beef cooked with mixed vegetables in a savory stir-fry sauce. Served with steamed rice.', 11.99, 'assets/img/menu-6.jpg', 2),
(15, 'Sausage Platter', 'A variety of sausages, grilled and served with mustard, sauerkraut, and artisan bread.', 13.49, 'assets/img/menu-3.jpg', 2),
(16, 'Chicken Chili Pizza', 'Succulent chicken breasts wrapped in crispy bacon and glazed with a sweet and savory sauce.', 25.99, 'assets/img/menu-7.jpg', 2),
(17, 'Spaghetti Bolognese', 'A classic Italian pasta dish with savory meat sauce and Parmesan cheese.', 12.99, 'assets/img/Spaghetti-Bolognese.jpg', 3),
(18, 'Grilled Salmon Fillet', 'Tender grilled salmon fillet served with steamed vegetables and lemon butter sauce.', 15.99, 'assets/img/Grilled-Salmon-Fillet.jpg', 3),
(19, 'Chicken Alfredo Pasta', 'Creamy Alfredo sauce with grilled chicken and fettuccine pasta.', 14.49, 'assets/img/Chicken-Alfredo-Pasta.jpg', 3),
(20, 'Margherita Pizza', 'Classic pizza with tomato sauce, fresh mozzarella cheese, basil, and olive oil.', 11.99, 'assets/img/Margherita-Pizza.jpg', 3),
(21, 'Steakhouse Ribeye Steak', 'Juicy and flavorful ribeye steak cooked to perfection, served with mashed potatoes.', 19.99, 'assets/img/Steakhouse-Ribeye-Steak.jpg', 3),
(22, 'Vegetable Stir-Fry', 'A medley of fresh vegetables stir-fried with tofu in a savory sauce.', 10.99, 'assets/img/Vegetable-Stir-Fry.jpg', 3),
(23, 'Beef Tacos', 'Soft tacos filled with seasoned ground beef, lettuce, cheese, and salsa.', 8.99, 'assets/img/Beef-Tacos.jpg', 3),
(25, 'Shrimp Scampi', 'Succulent shrimp sautéed in garlic and butter, served over linguine pasta.', 16.99, 'assets/img/Shrimp-Scampi.jpg', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
