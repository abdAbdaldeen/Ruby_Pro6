-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2021 at 10:36 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pro6`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categorie_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categorie_id`, `name`, `img_name`, `description`) VALUES
(8, 'Watches', '1612455564+watch6.jpg', 'A watch is a portable timepiece intended to be carried or worn by a person. It is designed to keep a consistent movement despite the motions caused by the persons activities…'),
(9, 'Jewelry', '1612455832+jewelry6.jpg', 'They often serve ceremonial, religious, magical, or funerary purposes and are also used as symbols of wealth and status, given that they are commonly made of precious metals and stones.'),
(10, 'Rings', '1612455928+ring6.jpg', 'Rings always fit snugly around or in the part of the body they ornament, so bands worn loosely, like a bracelet, are not rings  Rings may be made of almost any hard material..');

-- --------------------------------------------------------

--
-- Table structure for table `marketplaces`
--

CREATE TABLE `marketplaces` (
  `Marketplace_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketplaces`
--

INSERT INTO `marketplaces` (`Marketplace_id`, `categorie_id`, `name`, `img_name`, `description`) VALUES
(5, 8, 'Time Center', '1612456153+time center.png', 'Shop from Time Center Online Store, Browse the best watches brands, pay COD or Credit Card. Shop your favorite watches online with the latest promotions and discounts. 100% original watches. Free Delivery 2 days. Credit Card(Visa, Master) Cash On Delivery.'),
(6, 9, 'Pandora', '1612456220+pandora.jpg', 'Pandora  is a Danish jewellery manufacturer and retailer founded in 1982 by Per Enevoldsen. The company started as a family-run jewellery shop in Copenhagen. Pandora is known for its customizable charm bracelets, designer rings, necklaces and watches.'),
(7, 10, 'Swarovski', '1612456450+swarovski.jpg', 'The Worlds Largest Fashion Store. Find More of the Fashion You Love. Search thousands of fashion stores in one place. 5Million Fashion Products. International Shipping. Easy Returns. Find The Best Sales. Latest Trends. Get Sale Alerts. Over 12,000 Designers.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `quantity`) VALUES
(14, 6, 16, 3),
(15, 6, 10, 1),
(16, 6, 8, 8),
(17, 6, 22, 2),
(18, 11, 10, 1),
(19, 11, 16, 1),
(23, 11, 20, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `Marketplace_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `discount_price` float DEFAULT NULL,
  `description` longtext NOT NULL,
  `is_hot` binary(1) NOT NULL,
  `img_name` longtext NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `Marketplace_id`, `name`, `price`, `discount_price`, `description`, `is_hot`, `img_name`) VALUES
(8, 7, 'Golden Ring', 630, 0, 'A classic solitaire is the ideal choice for a traditional woman who wants a ring that will never go out of style. Available from Amazon.com, this diamond solitaire has it all. Set in 14k yellow gold, a 1/2 carat round cut diamond is simple and elegant. This ring comes in sizes four through nine and retails for about .', 0x31, '1612456687+ring5.jpg'),
(9, 7, 'Infinity Ring', 400, 350, 'An infinity ring has a similar significance it symbolizes love that goes on and on forever. But instead of a perpetual circle of diamonds, the infinity rings design incorporates the infinity sign, or figure 8, to signify that infinite relationship.', 0x30, '1612457109+ring4.jpg'),
(10, 7, 'Pearl Ring', 500, 300, 'Known as the stone of sincerity pearls are thought to symbolize faith, charity, innocence, integrity, loyalty, harmony, perfection and purity. Unlike the past, when the pearl set in an engagement and wedding ring was very popular, pearl engagement rings are relatively uncommon today.', 0x31, '1612457205+ring3.jpg'),
(11, 7, 'Blue Ring', 470, 0, 'Blue. Blue is the color of royalty. .Blue gemstone engagement rings, such as sapphires, symbolize peace and tranquility. They are said to bring good communication, harmony and respect into relationships.', 0x31, '1612457291+ring1.jpg'),
(12, 7, 'Luxury Ring', 1000, 850, 'Gold can be classic, or it can be ultra-modern. If you love contemporary style, look for a gold ring with stunning lines and plenty of sparkle. The Twisting Split Shank Contemporary Ring from Amazon.com features a 0.8-carat, round-cut diamond in a spectacular asymmetrical setting with 0.5 carats of tiny diamonds. Available in your choice of 14k white, yellow, or rose gold, it comes in sizes four through 9.5. ', 0x31, '1612457430+ring6.jpg'),
(13, 7, 'Rose Gold Ring', 500, 0, 'For a unique choice, choose a ring with rose gold and a non-traditional gem. The Round-Cut Ara Ring from Gemvara is a beautiful option that features a six-millimeter, round-cut pink sapphire set atop a gleaming 14k rose gold band. You can customize the ring with your choice of center gem if a pink sapphire isnt your style.', 0x30, '1612457869+ring2.jpg'),
(14, 6, 'Emerald Necklace', 800, 0, 'The Emerald Necklace consists of a 1,100-acre (4.5 km2; 450 ha) chain of parks linked by parkways and waterways in Boston and Brookline, Massachusetts. It was designed by landscape architect Frederick Law Olmsted, and gets its name from the way the planned chain appears to hang from the neck of the Boston peninsula.', 0x30, '1612458045+jewelry2.jpg'),
(16, 6, 'Red set', 500, 0, 'In red gemstones, the most common secondary hues are purple and orange. Connoisseurs consider a pure red or red with just a hint of purple to be the top quality in red gems. As the hue moves further from this ideal, value drops. That doesn’t mean that purple reds and orange reds aren’t beautiful in their own right. In fact, few gems approach the ideal red.', 0x30, '1612458222+jewelry1.jpg'),
(17, 6, 'Earrings', 250, 0, 'An earring is jewelry you wear on your ear. Your favorite earrings might be tiny white pearls, or they might be long feathers that dangle to your shoulders. An earring is any kind of ring, stud, hoop, or dangling decoration that you clip on your earlobe or hook through a hole pierced in your ear.', 0x31, '1612458341+jewelry3.jpg'),
(18, 6, 'Blue Set', 950, 700, 'Blue Topaz Necklace - Gold Topaz Pendant - Tear Drop Necklace - Tiny Topaz Jewelry - December Birthstone\r\n\r\nTopaz is known as a stone of love and good fortune.\r\nTopaz is the birthstone for the month of November and makes a lovely birthday gift.', 0x31, '1612458455+jewelry4.jpg'),
(19, 6, 'Infinity Necklace', 300, 0, 'The meaning behind an infinity necklace is actually quite beautiful - it symbolizes eternity, empowerment, and everlasting love.', 0x30, '1612458574+jewelry5.jpg'),
(20, 6, 'Emerald Choker', 900, 0, 'Necklace: length 11 inches, with extra 3.5 inch chain extension; .375\" inch wide\r\nSilver tone necklace with prong set sparkling crystal rhinestones\r\nGreat for weddings, prom, special occasions and everyday.\r\nFashion trending choker necklace\r\nEach item is packaged in a lovely gift box with a non tarnish jewelers fiber pad. To extend the life of your jewelry avoid contact with water and chemicals such as soap and household cleaners, and store in a jewelry box or bag', 0x31, '1612458787+jewelry6.jpg'),
(22, 5, 'Pink Watch', 900, 0, 'A watch is something personal. Everyone has their own taste in design and style. Therefore, we do not want to say what a good or bad watch is, but what the signs of a quality watch are in general. And how these signs are easily identifiable. A little side note is that we are mainly looking at an affordable watch', 0x30, '1612458939+watch5.jpg'),
(23, 5, 'Gold Watch', 1555, 0, 'New Hot high quality Rolex- Luxury brand Men Women Quartz Watch Fashion Gift Gold Casual Mens Womens Watches 9999 Orders', 0x30, '1612459051+watch4.jpg'),
(24, 5, 'Luxury Watch', 900, 0, 'New Women Fashion Stainless steel Rolex Wrist Wathch Female Casual Love Tower Rhinestone Pendant Watches Gifts Zegarek Damski', 0x30, '1612459165+watch6.jpg'),
(25, 5, 'Violet Watch', 570, 0, '2020 Women Watches Clearance Sale Women Watches Nylon Strap Rolex Watches Casual Fashion Ladies Wristwatches Montre Femme.', 0x30, '1612459243+watch1.jpg'),
(26, 5, 'Classic Watch', 560, 500, 'Zegarki Damskie Womens Casual Rolex Leather Band Newv Strap Watch Analog Wrist Watch Relojes Para Mujer Часы Женские Наручные', 0x30, '1612459318+watch2.jpg'),
(27, 5, 'Silver Watch', 599.99, 0, 'Womens Casual Bracelet Watch Rolex Mesh Belt Band Fashion Wrist Watches часы женские наручные montre femme relojes para mujer', 0x30, '1612459360+watch3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_role` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `img_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_role`, `email`, `password`, `name`, `img_name`) VALUES
(3, 'admin', 'a', 'a', 'abdel rahman', 'default.jpg'),
(4, 'admin', 'aaaa', '123', 'test', 'default.jpg'),
(6, 'admin', 'a@gmail.co', 'a', 'Abdel rahman Abdaldeen', '1612685957+myimgLB2.png'),
(8, 'user', 'a@gmail.com', 'Z6FbpWfQ9q7iwWP', 'test@123', 'default.jpg'),
(9, 'user', 'abd@abd.co', 'Z6FbpWfQ9q7iwWP', 'aabd', 'default.jpg'),
(10, 'user', 'osos@gmail.com', 'Asas1212', 'osos', 'default.jpg'),
(11, 'user', 'abdaldeen@gmail.com', 'CCi757WNyQVSCqv', 'abd', '1612691530+myimgLB2.png'),
(12, 'user', 'slameh@gmail.com', 'Asas1212', 'slameh', '1612691800+1-1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categorie_id`);

--
-- Indexes for table `marketplaces`
--
ALTER TABLE `marketplaces`
  ADD PRIMARY KEY (`Marketplace_id`),
  ADD KEY `fkIdx_75` (`categorie_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fkIdx_84` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fkIdx_51` (`Marketplace_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categorie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `marketplaces`
--
ALTER TABLE `marketplaces`
  MODIFY `Marketplace_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `marketplaces`
--
ALTER TABLE `marketplaces`
  ADD CONSTRAINT `FK_74` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`categorie_id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_83` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_50` FOREIGN KEY (`Marketplace_id`) REFERENCES `marketplaces` (`Marketplace_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
