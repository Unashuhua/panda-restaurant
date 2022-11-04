-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2021-12-10 17:50:16
-- 服务器版本： 10.4.21-MariaDB
-- PHP 版本： 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `Restaurant`
--

-- --------------------------------------------------------

--
-- 表的结构 `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `family_name` varchar(20) NOT NULL,
  `phonenumber` int(10) NOT NULL,
  `reserved_time` datetime NOT NULL,
  `booking_day` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `booking`
--

INSERT INTO `booking` (`booking_id`, `first_name`, `family_name`, `phonenumber`, `reserved_time`, `booking_day`) VALUES
(1, 'linxx', 'ssx', 890675444, '2021-12-19 05:19:00', '2021-12-09'),
(2, 'linxx', 'ssx', 896426518, '2021-12-25 06:22:00', '2021-12-09'),
(3, 'shxnsk', 'osixm', 892056094, '2021-12-25 06:24:00', '2021-12-09'),
(4, 'shxnsk', 'osixm', 892056094, '2021-12-25 06:24:00', '2021-12-09'),
(5, 'shxnsk', 'osixm', 892056094, '2021-12-25 06:24:00', '2021-12-09'),
(6, 'shxnsk', 'osixm', 892056094, '2021-12-25 06:24:00', '2021-12-09'),
(7, 'shxnsk', 'osixm', 892056094, '2021-12-25 06:24:00', '2021-12-09'),
(8, 'sxd', 'dfg', 8906542, '2021-12-11 06:31:00', '2021-12-09'),
(9, 'sxd', 'dfg', 8906542, '2021-12-11 06:31:00', '2021-12-09'),
(10, 'sxd', 'dfg', 8906542, '2021-12-11 06:31:00', '2021-12-09'),
(11, 'sxd', 'dfg', 8906542, '2021-12-11 06:31:00', '2021-12-09'),
(12, 'sxd', 'dfg', 8906542, '2021-12-11 06:31:00', '2021-12-09'),
(13, 'sxd', 'dfg', 8906542, '2021-12-11 06:31:00', '2021-12-09'),
(14, 'sxd', 'dfg', 8906542, '2021-12-11 06:31:00', '2021-12-09'),
(15, 'sxd', 'dfg', 8906542, '2021-12-11 06:31:00', '2021-12-09'),
(16, 'Shuhua', 'Lin', 89657890, '2021-12-15 07:44:00', '2021-12-09');

-- --------------------------------------------------------

--
-- 表的结构 `menue`
--

CREATE TABLE `menue` (
  `dish_id` int(10) NOT NULL,
  `dish_name` varchar(80) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` varchar(5000) NOT NULL,
  `Price` float NOT NULL,
  `Type` varchar(80) NOT NULL,
  `Main_ingredient` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `menue`
--

INSERT INTO `menue` (`dish_id`, `dish_name`, `image`, `description`, `Price`, `Type`, `Main_ingredient`) VALUES
(166, 'Cucumber salad', 'http://localhost:8080/project/image/dish/Cucumber.jpeg', 'Cold cucumber has a crisp and refreshing taste, simple operation, and rich nutritional value.', 5.5, 'cold dish', 20),
(167, 'Peanuts in Vinegar', 'http://localhost:8080/project/image/dish/Peanuts.webp\n', 'Peanuts in Vinegar are traditional Han nationality dishes in Shanxi Province. They belong to cold dishes, whose main ingredients are peanuts, vinegar, and coriander. ', 5.5, 'cold dish', 19),
(168, 'Blueberry Yam', 'http://localhost:8080/project/image/dish/Blueberry.jpeg', 'Blueberry yam, also known as blueberry yam puree, is made of blueberry, yam, cream and so on. It is a cold dish that is delicious and healthy in summer, and is suitable for all ages.\r\n', 6.5, 'cold dish', 24),
(169, 'sauteed tofu in hot and spicy sauce', 'http://localhost:8080/project/image/dish/mapotofu.webp\n', 'Sauteed tofu in hot and spicy sauce, one of the traditional famous dishes in Sichuan Province, belongs to Sichuan cuisine. The main ingredient is tofu, the auxiliary ingredients are: garlic sprouts, beef froth (other meats are also acceptable), and the seasonings are: watercress, chili noodles and pepper noodles , Soy sauce, light soy sauce, dark soy sauce, sugar, starch, etc. The hemp comes from Sichuan pepper, and the spicy comes from chili noodles. This dish is spicy, spicy, fresh, fragrant, hot, green, tender, and crisp. The display is vivid and vivid. Today, Mapo Tofu has traveled across the oceans and settled in the United States, Canada, the United Kingdom, France, Vietnam, Singapore, Malaysia, Japan, Australia and other countries. International famous dishes.\r\n', 7.2, 'hot dish\r\n', 21),
(170, 'Hot and sour potato shreds\r\n', 'http://localhost:8080/project/image/dish/potato.jpeg\n', 'Hot and sour potato shreds are dishes made with potatoes, peppers, white vinegar, green onions, ginger, etc. They are bright in color, sour and spicy.\r\n', 7.2, 'hot dish', 3),
(171, 'Stir-fried yellow beef\r\n', 'http://localhost:8080/project/image/dish/beef.jpeg\n', 'Stir-fried yellow beef is a dish made of beef, green pepper, red pepper and other ingredients. It has a strong fragrance and delicious taste, which is very attractive.\r\n', 11, 'hot dish', 3),
(172, 'Steamed sea bass\r\n', 'http://localhost:8080/project/image/dish/luyu.jpeg\n', 'Steamed sea bass is one of the traditional and famous dishes in Guangdong Province. It belongs to Cantonese cuisine and one of the seafood recipes. It uses sea bass as the main ingredient. The cooking skills of steamed sea bass are mainly steamed dishes. The taste is salty and fresh.', 12, 'hot dish\r\n', 4),
(173, 'wonton', 'http://localhost:8080/project/image/dish/wonton.jpeg\n', 'Wonton is a traditional folk noodle dish that originated in China. It is wrapped in thin noodles with meat fillings, cooked after being cooked, and usually eaten with soup.\r\n', 4.5, 'main food\r\n', 17),
(174, 'rice', 'http://localhost:8080/project/image/dish/rice.webp', 'Rice is one of the protagonists in the daily diet of Chinese people, and the staple food of China. The main ingredient is starch\r\n', 2, 'main food\r\n', 18),
(175, 'Fried Dumpling\r\n', 'http://localhost:8080/project/image/dish/guotie.jpeg\n', 'Fried Dumpling is a kind of Han snack, originated in Jinan, Shandong. It is a small fried stuffed food that is exquisitely made and tastes exquisite. It is usually made of pork stuffing and is accompanied by different fresh vegetables according to the season.\r\n', 8.8, 'main food\r\n', 17),
(176, 'Yangchun noodles\r\n', 'http://localhost:8080/project/image/dish/yangchun.webp\n', 'Plain Noodles soup is clear and fresh, light and refreshing. It is a major feature of Yangzhou. \r\n', 4.5, 'main food\r\n', 23),
(177, 'tomato egg soup\r\n', 'http://localhost:8080/project/image/dish/tomatosoup.webp', 'The tomato egg soup has a novel method, beautiful color and delicious taste, and it is also soup and dish. A must-have dish for housewives.\r\n', 7.5, 'soup', 16),
(178, 'tofu soup\r\n', 'http://localhost:8080/project/image/dish/toufu.jpeg\n', 'Tofu soup is rich in nutrients, high in inorganic salt, low in fat, and low in calories. Throughout the ages, it has been very popular.\r\n', 7.5, 'soup', 21),
(179, 'milk tea\r\n', 'http://localhost:8080/project/image/dish/milktea.jpeg\n', 'Tasting the advantages and disadvantages of milk tea is also carried out in the four aspects of tea color, aroma, shape and taste, and you need to taste it carefully before you can appreciate the beauty of its taste. First, suck the milk tea into your mouth and leave it for a few seconds; enjoy a cool or warm feeling. Finally, swallow slowly into the throat; reach the spleen and stomach.\r\n', 3.5, 'drink', 25),
(180, 'Carrot juice\r\n', 'http://localhost:8080/project/image/dish/huluobo.webp\n', 'Carrot juice is a vegetable juice made by squeezing fresh carrots as the main raw material. Carrots are rich in various nutrients such as carotene, which have various functions such as improving eyesight, beautifying, and enhancing immunity.\r\n', 3.5, 'drink', 16);

-- --------------------------------------------------------

--
-- 表的结构 `Purchase`
--

CREATE TABLE `Purchase` (
  `purchase_id` int(10) NOT NULL,
  `supplier_id` int(10) NOT NULL,
  `ingredient_id` int(10) NOT NULL,
  `weight(kg)` float NOT NULL,
  `Data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `Purchase`
--

INSERT INTO `Purchase` (`purchase_id`, `supplier_id`, `ingredient_id`, `weight(kg)`, `Data`) VALUES
(1, 2, 3, 7.2, '2021-12-01'),
(2, 3, 4, 13.3, '2021-12-01'),
(3, 4, 2, 8.2, '2021-12-02'),
(4, 2, 12, 8.2, '2021-12-03'),
(5, 4, 3, 7, '2021-12-03');

-- --------------------------------------------------------

--
-- 表的结构 `Stock`
--

CREATE TABLE `Stock` (
  `ingredient_id` int(10) NOT NULL,
  `ingredient` varchar(80) NOT NULL,
  `weight(kg)` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `Stock`
--

INSERT INTO `Stock` (`ingredient_id`, `ingredient`, `weight(kg)`) VALUES
(1, 'chicken', 10),
(2, 'pork', 7.5),
(3, 'beef', 9),
(4, 'fish', 8.2),
(5, 'beansprouts', 3.2),
(6, 'broccoli', 7),
(7, 'carrot', 7.2),
(8, 'pepper', 6),
(9, 'garlic', 2),
(10, 'ginger', 8.3),
(11, 'leek', 9.3),
(12, 'mushroom', 7.3),
(13, 'onion', 5),
(14, 'egg', 15),
(15, 'potato', 7),
(16, 'tomato', 12),
(17, 'dumpling', 7.8),
(18, 'rice', 13.3),
(19, 'peanut', 3),
(20, 'cucumber', 8.3),
(21, 'tofu', 4.5),
(22, 'pain', 8),
(23, 'noodle', 8.2),
(24, 'fish', 6.3),
(25, 'milk', 6);

-- --------------------------------------------------------

--
-- 表的结构 `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(10) NOT NULL,
  `suppllier_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `suppllier_name`) VALUES
(1, 'LIDLE'),
(2, 'ALDI'),
(3, 'Rongs'),
(4, 'TESCO'),
(5, 'Super Value');

--
-- 转储表的索引
--

--
-- 表的索引 `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- 表的索引 `menue`
--
ALTER TABLE `menue`
  ADD PRIMARY KEY (`dish_id`),
  ADD KEY `Main_ingredient` (`Main_ingredient`);

--
-- 表的索引 `Purchase`
--
ALTER TABLE `Purchase`
  ADD PRIMARY KEY (`purchase_id`),
  ADD KEY `supplier_id` (`supplier_id`,`ingredient_id`),
  ADD KEY `ingredient_id` (`ingredient_id`);

--
-- 表的索引 `Stock`
--
ALTER TABLE `Stock`
  ADD PRIMARY KEY (`ingredient_id`),
  ADD KEY `ingredient_id` (`ingredient_id`);

--
-- 表的索引 `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `menue`
--
ALTER TABLE `menue`
  MODIFY `dish_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- 使用表AUTO_INCREMENT `Purchase`
--
ALTER TABLE `Purchase`
  MODIFY `purchase_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `Stock`
--
ALTER TABLE `Stock`
  MODIFY `ingredient_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 限制导出的表
--

--
-- 限制表 `menue`
--
ALTER TABLE `menue`
  ADD CONSTRAINT `menue_ibfk_1` FOREIGN KEY (`Main_ingredient`) REFERENCES `Stock` (`ingredient_id`);

--
-- 限制表 `Purchase`
--
ALTER TABLE `Purchase`
  ADD CONSTRAINT `Purchase_ibfk_1` FOREIGN KEY (`ingredient_id`) REFERENCES `Stock` (`ingredient_id`),
  ADD CONSTRAINT `Purchase_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
