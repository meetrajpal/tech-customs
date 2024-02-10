-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2023 at 04:21 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techcustoms`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabinet`
--

CREATE TABLE `cabinet` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` enum('nzxt','ant esports','lian li','antec','phanteks','msi') NOT NULL,
  `size` enum('full_tower','mid_tower','mini_tower','sff','usff') NOT NULL,
  `fan` tinyint(1) NOT NULL,
  `rgb` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cabinet`
--

INSERT INTO `cabinet` (`id`, `name`, `brand`, `size`, `fan`, `rgb`, `price`, `img`) VALUES
(8, 'H7 ELITE', 'nzxt', 'mid_tower', 4, 1, 18659, ''),
(9, 'Graffiti ', 'ant esports', 'mid_tower', 1, 1, 4638, ''),
(10, 'Odyssey X Black', 'lian li', 'full_tower', 0, 1, 44340, ''),
(11, 'Torque', 'antec', 'mid_tower', 0, 1, 36298, ''),
(12, 'Enthoo Evolv X Glass', 'phanteks', 'mid_tower', 3, 1, 23638, ''),
(13, 'MPG SEKIRA 500X', 'msi', 'mid_tower', 1, 1, 17699, '');

--
-- Triggers `cabinet`
--
DELIMITER $$
CREATE TRIGGER `cabinet-cards` AFTER INSERT ON `cabinet` FOR EACH ROW BEGIN
	INSERT INTO shop_cards (name, brand, category, price, img) VALUES (new.name, new.brand, 'Cabinet', new.price, new.img);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `cooler`
--

CREATE TABLE `cooler` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` enum('coolermaster','corsair','nxzt','Be Quite','Noctua','msi','Thermaltake','Asus') NOT NULL,
  `type` enum('Liquid Cooler','Air Cooler') NOT NULL,
  `fan` tinyint(1) NOT NULL,
  `rgb` tinyint(1) NOT NULL,
  `rpm` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cooler`
--

INSERT INTO `cooler` (`id`, `name`, `brand`, `type`, `fan`, `rgb`, `rpm`, `price`, `img`) VALUES
(1, 'Noctua NH-D15', 'Noctua', 'Air Cooler', 2, 0, 1500, 13599, ''),
(2, 'be quiet! Dark Rock Pro 4', 'Be Quite', 'Air Cooler', 2, 0, 1500, 24300, ''),
(3, 'Cooler Master Hyper 212 Black Edition', 'coolermaster', 'Air Cooler', 1, 0, 2000, 10600, ''),
(4, 'Corsair H115i RGB Platinum', 'corsair', 'Air Cooler', 2, 1, 2400, 19900, ''),
(6, 'Corsair iCUE H150i Elite Capellix', 'corsair', 'Liquid Cooler', 3, 1, 1900, 24000, ''),
(7, 'NZXT Kraken X73', 'nxzt', 'Liquid Cooler', 3, 1, 2000, 26500, ''),
(8, 'Cooler Master MasterLiquid ML360R ', 'coolermaster', 'Liquid Cooler', 3, 1, 2000, 11200, ''),
(9, 'Thermaltake Floe DX RGB 360', 'Thermaltake', 'Liquid Cooler', 3, 1, 1500, 15499, ''),
(10, 'ASUS ROG Ryujin 360', 'Asus', 'Liquid Cooler', 3, 1, 2000, 33500, '');

-- --------------------------------------------------------

--
-- Table structure for table `cpu`
--

CREATE TABLE `cpu` (
  `id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `socket` enum('LGA','PGA') NOT NULL,
  `max_clock_speed` float NOT NULL,
  `ram` enum('ddr3','ddr4','ddr5','ddr6') NOT NULL,
  `brand` enum('intel','amd') NOT NULL DEFAULT 'intel',
  `gpu` varchar(255) NOT NULL,
  `cores` tinyint(5) NOT NULL,
  `threads` tinyint(5) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cpu`
--

INSERT INTO `cpu` (`id`, `model`, `socket`, `max_clock_speed`, `ram`, `brand`, `gpu`, `cores`, `threads`, `price`, `img`) VALUES
(9, 'i7-12700K', 'LGA', 5, 'ddr5', 'intel', 'Intel® UHD Graphics 770', 12, 20, 31990, ''),
(10, 'i7-11700K', 'LGA', 5, 'ddr4', 'intel', 'Intel® UHD Graphics 750', 8, 16, 28733, ''),
(11, 'i9-13900K', 'LGA', 5.8, 'ddr5', 'intel', 'Intel® UHD Graphics 770', 24, 32, 58000, ''),
(12, 'i9-12900K', 'LGA', 5.2, 'ddr5', 'intel', 'Intel® UHD Graphics 771', 16, 24, 47698, ''),
(13, 'i9-11900K', 'LGA', 5.3, 'ddr4', 'intel', 'Intel® UHD Graphics 750', 8, 16, 37298, ''),
(14, 'Ryzen 5 7600X', 'PGA', 5.3, 'ddr5', 'amd', 'Radeon Graphics', 6, 12, 35350, ''),
(15, 'Ryzen 7 7800X3D', 'PGA', 5, 'ddr5', 'amd', '', 8, 16, 44899, ''),
(16, 'Ryzen 7 7700X', 'PGA', 5.4, 'ddr5', 'amd', 'Radeon Graphics', 8, 16, 45230, ''),
(17, 'Ryzen 9 7950X3D', 'PGA', 5.7, 'ddr5', 'amd', 'Radeon Graphics', 16, 32, 67499, ''),
(20, 'Ryzen 9 7900X', 'LGA', 5.6, 'ddr5', 'amd', 'Radeon Graphics', 12, 24, 62230, ''),
(21, 'i5-13600K', 'LGA', 5.1, 'ddr5', 'intel', 'Intel® UHD Graphics 770', 14, 20, 32899, ''),
(22, 'i5-12600K', 'LGA', 4.9, 'ddr5', 'intel', 'Intel® UHD Graphics 770', 10, 16, 28593, ''),
(23, 'i5-11600K', 'LGA', 4.9, 'ddr4', 'intel', 'Intel® UHD Graphics 750', 6, 12, 23999, ''),
(24, 'i7-13700K', 'LGA', 5.4, 'ddr5', 'intel', 'Intel® UHD Graphics 770', 16, 24, 42999, '');

--
-- Triggers `cpu`
--
DELIMITER $$
CREATE TRIGGER `cpu-cards` AFTER INSERT ON `cpu` FOR EACH ROW BEGIN
	INSERT INTO shop_cards (name, brand, category, price, img) VALUES (new.model, new.brand, 'Processor', new.price, new.img);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`id`, `username`, `content`, `createtime`) VALUES
(1, 'john', 'Hello guys', '2023-05-03 20:47:17'),
(2, 'khush', 'Hello everyone\nI have an issue in connecting my local network.\ncan anyone help me please?\nthanks', '2023-05-03 20:48:56'),
(3, 'john', 'Hey Khush,\njust try to configure your local network IP settings in network adapter options.\nthat should work\n', '2023-05-03 20:52:03'),
(4, 'khush', 'ok let me try\n', '2023-05-03 20:52:37'),
(5, 'khush', 'thanks for help John\neverything works absolutely fine now\nappreciated your help 👍', '2023-05-03 20:56:57'),
(8, 'aaa', 'Hello Guys\n', '2023-05-04 06:14:16'),
(9, 'khush', 'Hi abc', '2023-05-04 06:14:32'),
(10, 'khush', 'hello', '2023-05-04 08:30:33'),
(11, 'john', 'hey khush', '2023-05-04 08:30:41'),
(12, 'john', 'hii\n', '2023-05-04 09:39:26'),
(13, 'khush', 'hey john\n', '2023-05-04 09:39:27'),
(16, 'tushir', 'hi khush', '2023-05-04 09:42:02'),
(19, 'khush', 'Hey People', '2023-05-04 14:39:26'),
(31, 'meetrajpal', 'hii', '2023-10-23 13:40:09');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery`) VALUES
('res\\img\\gallary\\galitem (1).jpg'),
('res\\img\\gallary\\galitem (2).jpg'),
('res\\img\\gallary\\galitem (3).jpg'),
('res\\img\\gallary\\galitem (4).jpg'),
('res\\img\\gallary\\galitem (5).jpg'),
('res\\img\\gallary\\galitem (6).jpg'),
('res\\img\\gallary\\galitem (7).jpg'),
('res\\img\\gallary\\galitem (8).jpg'),
('res\\img\\gallary\\galitem (9).jpg'),
('res\\img\\gallary\\galitem (10).jpg'),
('res\\img\\gallary\\galitem (11).jpg'),
('res\\img\\gallary\\galitem (12).jpg'),
('res\\img\\gallary\\galitem (13).jpg'),
('res\\img\\gallary\\galitem (14).jpg'),
('res\\img\\gallary\\galitem (15).jpg'),
('res\\img\\gallary\\galitem (16).jpg'),
('res\\img\\gallary\\galitem (17).jpg'),
('res\\img\\gallary\\galitem (18).jpg'),
('res\\img\\gallary\\galitem (19).jpg'),
('res\\img\\gallary\\galitem (20).jpg'),
('res\\img\\gallary\\galitem (21).jpg'),
('res\\img\\gallary\\galitem (22).jpg'),
('res\\img\\gallary\\galitem (23).jpg'),
('res\\img\\gallary\\galitem (24).jpg'),
('res\\img\\gallary\\galitem (25).jpg'),
('res\\img\\gallary\\galitem (26).jpg'),
('res\\img\\gallary\\galitem (27).jpg'),
('res\\img\\gallary\\galitem (28).jpg'),
('res\\img\\gallary\\galitem (29).jpg'),
('res\\img\\gallary\\galitem (30).jpg'),
('res\\img\\gallary\\galitem (31).jpg'),
('res\\img\\gallary\\galitem (32).jpg'),
('res\\img\\gallary\\galitem (33).jpg'),
('res\\img\\gallary\\galitem (34).jpg'),
('res\\img\\gallary\\galitem (35).jpg'),
('res\\img\\gallary\\galitem (36).jpg'),
('res\\img\\gallary\\galitem (37).jpg'),
('res\\img\\gallary\\galitem (38).jpg'),
('res\\img\\gallary\\galitem (39).jpg'),
('res\\img\\gallary\\galitem (40).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gpu`
--

CREATE TABLE `gpu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` enum('msi','nvidea','gigabyte','asus') NOT NULL,
  `chipset` enum('nvidia','amd','intel') NOT NULL,
  `vram` tinyint(2) NOT NULL,
  `max_clock_speed` int(11) NOT NULL,
  `type` enum('gddr3','gddr4','gddr5','gddr5x','gddr6') NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gpu`
--

INSERT INTO `gpu` (`id`, `name`, `brand`, `chipset`, `vram`, `max_clock_speed`, `type`, `price`, `img`) VALUES
(3, 'GeForce RTX 3090', 'nvidea', 'nvidia', 24, 2, 'gddr6', 174999, ''),
(4, 'GeForce RTX 3080', 'msi', 'nvidia', 12, 2, 'gddr6', 152999, ''),
(5, 'GeForce RTX 3070', 'msi', 'nvidia', 8, 2, 'gddr6', 59499, ''),
(6, 'Radeon RX 6900 XT OC', 'asus', 'amd', 16, 2, 'gddr6', 160500, ''),
(7, 'GeForce RTX 3060 Ti', 'gigabyte', 'nvidia', 8, 2, 'gddr6', 41500, ''),
(8, 'Radeon RX 6800 XT OC', 'asus', 'amd', 16, 2, 'gddr6', 74990, ''),
(9, 'GeForce GTX 1660 Super', 'msi', 'nvidia', 6, 2, 'gddr6', 32740, ''),
(10, 'Radeon RX 6700 X', 'asus', 'amd', 12, 2, 'gddr6', 37990, ''),
(11, 'GeForce GTX 1660 Super', 'asus', 'nvidia', 6, 2, 'gddr5x', 29990, '');

--
-- Triggers `gpu`
--
DELIMITER $$
CREATE TRIGGER `gpu-cards` AFTER INSERT ON `gpu` FOR EACH ROW BEGIN

Declare name varchar(255);
set name =CONCAT(new.name," ",new.vram,("gb"));

	INSERT INTO shop_cards (name, brand, category, price, img) VALUES (name, new.brand, 'Graphics Card', new.price, new.img);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `keyboard`
--

CREATE TABLE `keyboard` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` enum('razer','corsair','hyperx','logitech','daskeyboard') NOT NULL,
  `mechanism` enum('mechanical','membrane','mecha-membrane') NOT NULL,
  `rgb` tinyint(1) NOT NULL,
  `connectivity` enum('wired','wireless','both','') NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keyboard`
--

INSERT INTO `keyboard` (`id`, `name`, `brand`, `mechanism`, `rgb`, `connectivity`, `price`, `img`) VALUES
(2, 'G512 RGB', 'logitech', 'mechanical', 1, 'wireless', 9995, ''),
(3, 'K95 RGB platinum XT', 'corsair', 'mechanical', 1, 'wired', 21700, ''),
(4, 'Huntsman Elite', 'razer', 'mechanical', 1, 'wired', 20499, ''),
(5, '4 Professional', 'daskeyboard', 'mechanical', 0, 'wired', 33599, '');

--
-- Triggers `keyboard`
--
DELIMITER $$
CREATE TRIGGER `keyboard-cards` AFTER INSERT ON `keyboard` FOR EACH ROW BEGIN
	INSERT INTO shop_cards (name, brand, category, price, img) VALUES (new.name, new.brand, 'Keyboard', new.price, new.img);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `monitor`
--

CREATE TABLE `monitor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` enum('msi','asus','lg','acer','dell') NOT NULL,
  `size` varchar(4) NOT NULL,
  `resolution` varchar(128) NOT NULL,
  `refresh_rate` varchar(8) NOT NULL,
  `aspect_ratio` varchar(8) NOT NULL,
  `type` enum('led','lcd','oled','curved','ips','va') NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monitor`
--

INSERT INTO `monitor` (`id`, `name`, `brand`, `size`, `resolution`, `refresh_rate`, `aspect_ratio`, `type`, `price`, `img`) VALUES
(8, 'UltraSharp U2720Q', 'dell', '27', '3840 x 2160 pixels\r\n', '60', '16:9', 'ips', 75000, ''),
(9, 'ROG Swift PG279QZ', 'asus', '27', '2560 x 1440 pixels\r\n', '165', '16:9', 'ips', 85999, ''),
(10, 'R240HY', 'acer', '49', '3840 x 1080 pixels\r\n', '144', '32:9', 'va', 89990, ''),
(11, '34WK95U-W', 'lg', '34', '5120 x 2160 pixels\r\n', '60', '21:9', 'ips', 61000, '');

--
-- Triggers `monitor`
--
DELIMITER $$
CREATE TRIGGER `monitor-cards` AFTER INSERT ON `monitor` FOR EACH ROW BEGIN

declare name varchar(255);

set name = CONCAT(new.name, " ", new.size, "inch ", new.resolution);

	INSERT INTO shop_cards (name, brand, category, price, img) VALUES (name, new.brand, 'Monitor', new.price, new.img);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `motherboard`
--

CREATE TABLE `motherboard` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` enum('msi','asus','gigabyte','asrock') NOT NULL,
  `chipset` varchar(255) NOT NULL,
  `socket` enum('LGA','PGA') NOT NULL,
  `ram_slots` tinyint(1) NOT NULL,
  `ram_type` enum('ddr3','ddr4','ddr5','ddr6') NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `motherboard`
--

INSERT INTO `motherboard` (`id`, `name`, `brand`, `chipset`, `socket`, `ram_slots`, `ram_type`, `price`, `img`) VALUES
(5, 'ROG Strix Z690-E Gaming WiFi', 'asus', 'B660', 'LGA', 4, 'ddr5', 40000, ''),
(6, 'MPG Z690 Carbon WiFi', 'msi', 'Intel Z690', 'LGA', 4, 'ddr5', 38320, ''),
(7, 'AORUS Master DDR5', 'gigabyte', 'B660', 'LGA', 4, 'ddr5', 46320, ''),
(8, 'Z690 Taichi', 'asrock', 'Intel Z690', 'LGA', 4, 'ddr5', 37520, ''),
(9, 'ROG Maximus Z690 Hero (Wi-Fi)', 'asus', 'Z690', 'LGA', 4, 'ddr5', 64000, ''),
(10, 'AORUS Master Z690', 'gigabyte', 'Intel Z690', 'PGA', 4, 'ddr5', 48000, ''),
(11, 'ROG Maximus XIII Hero Z590', 'asus', 'Intel Z590', 'PGA', 4, 'ddr4', 42320, ''),
(12, 'AORUS Z590 Master', 'gigabyte', 'Intel Z590', 'PGA', 4, 'ddr4', 48000, ''),
(13, 'MPG B560I Gaming Edge WiFi', 'msi', 'Intel B560', 'PGA', 2, 'ddr4', 17520, ''),
(14, 'Prime Z590-A', 'asus', 'ASUS Prime Z590-A', 'PGA', 4, 'ddr4', 31200, '');

--
-- Triggers `motherboard`
--
DELIMITER $$
CREATE TRIGGER `motherboard-cards` AFTER INSERT ON `motherboard` FOR EACH ROW BEGIN
	INSERT INTO shop_cards (name, brand, category, price, img) VALUES (new.name, new.brand, 'motherboard', new.price, new.img);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `mouse`
--

CREATE TABLE `mouse` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` enum('razer','logitech g','steelseries','glorious') NOT NULL,
  `conectivity` enum('wired','wireless','both','') NOT NULL,
  `rgb` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mouse`
--

INSERT INTO `mouse` (`id`, `name`, `brand`, `conectivity`, `rgb`, `price`, `img`) VALUES
(1, 'Pro Wireless', 'logitech g', 'wireless', 0, 10995, ''),
(2, 'DeathAdder V2', 'razer', 'wired', 1, 12499, ''),
(3, 'Rival 600', 'steelseries', 'both', 1, 9999, ''),
(4, 'Model O', 'glorious', 'wired', 1, 11499, '');

--
-- Triggers `mouse`
--
DELIMITER $$
CREATE TRIGGER `mouse-cards` AFTER INSERT ON `mouse` FOR EACH ROW BEGIN
	INSERT INTO shop_cards (name, brand, category, price, img) VALUES (new.name, new.brand, 'Mouse', new.price, new.img);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ram`
--

CREATE TABLE `ram` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` enum('hyperx','corsair','xpg','G.skill','Kingston','adata','Team T-force','Crucial','Patriot') NOT NULL,
  `type` enum('ddr3','ddr4','ddr5','ddr6') NOT NULL,
  `frequency` enum('1066','1333','1600','1866','2133','2400','2666','3200','4800','5200','6000','6400','3600') NOT NULL,
  `size` tinyint(3) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ram`
--

INSERT INTO `ram` (`id`, `name`, `brand`, `type`, `frequency`, `size`, `price`, `img`) VALUES
(4, 'Vengeance LPX', 'corsair', 'ddr4', '3200', 8, 3573, ''),
(5, 'Ripjaws V', 'G.skill', 'ddr4', '3200', 16, 11399, ''),
(7, 'HyperX Fury', 'Kingston', 'ddr4', '3200', 16, 11350, ''),
(8, 'Ballistix', 'Crucial', 'ddr4', '3200', 16, 11999, ''),
(9, 'Vulcan', 'Team T-force', 'ddr4', '3200', 16, 10999, ''),
(10, ' XPG Spectrix D60G', 'adata', 'ddr4', '3200', 16, 12399, ''),
(11, 'Viper Steel', 'Patriot', 'ddr4', '3200', 16, 10999, ''),
(12, 'Dominator Platinum RGB', 'corsair', 'ddr4', '3200', 16, 22999, ''),
(13, 'Predator', 'hyperx', 'ddr4', '3200', 16, 14999, '');

--
-- Triggers `ram`
--
DELIMITER $$
CREATE TRIGGER `ram-cards` AFTER INSERT ON `ram` FOR EACH ROW BEGIN

DECLARE name varchar(255);
set name =CONCAT(new.name," ",new.size,("gb"));

	INSERT INTO shop_cards (name, brand, category, price, img) VALUES (name, new.brand, 'RAM', new.price, new.img);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `shop_cards`
--

CREATE TABLE `shop_cards` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `img` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `sale` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_cards`
--

INSERT INTO `shop_cards` (`id`, `name`, `brand`, `category`, `price`, `img`, `link`, `sale`) VALUES
(2, 'Deathadder V2', 'Razer', 'mouse', 5000, 'res/img/cards/mouse/Razer DeathAdder V2.png', 'https://www.amazon.in/Razer-DeathAdder-Gaming-Mouse-RZ01-03210100-R3M1/dp/B081QX9V2Y', 1),
(12, 'UltraSharp U2720Q 27inch 3840 x 2160 pixels', 'dell', 'Monitor', 75000, 'res/img/cards/monitor/UltraSharp U2720Q.png', 'https://www.amazon.com/Dell-UltraSharp-U2720Q-Backlit-Monitor/dp/B086H26XWV', 0),
(13, 'ROG Swift PG279Q 27inch 2560 x 1440 pixels', 'asus', 'Monitor', 85999, 'res/img/cards/monitor/ASUS ROG Swift PG279QZ.png', 'https://www.amazon.in/PG279Q-27-inch-Monitor-Display-Connectivity/dp/B017EVR2VM', 0),
(14, 'R240HY 49inch 3840 x 1080 pixels', 'acer', 'Monitor', 89990, 'res/img/cards/monitor/Acer R240HY.png', 'https://www.flipkart.com/acer-49-inch-curved-full-hd-led-backlit-va-panel-monitor-ei491cr-1800r-dfhd-3840-x-1080-32-9-aspect-ratio-i/p/itm42188654c049c', 0),
(15, '34WK95U-W 34inch 5120 x 2160 pixels', 'lg', 'Monitor', 61000, 'res/img/cards/monitor/LG 34WK95U-W.png', 'https://www.amazon.com/LG-34WK95U-W-34-Class-UltraWide/dp/B07FT8ZBMR', 0),
(16, 'G512 RGB', 'logitech', 'Keyboard', 9995, 'res/img/cards/keyboard/Logitech G512 RGB.png', 'https://www.amazon.in/Logitech-G512-Mechanical-Keyboard-Black/dp/B07BVCSRXL', 0),
(17, 'K95 RGB platinum XT', 'corsair', 'Keyboard', 21700, 'res/img/cards/keyboard/Corsair K95 RGB Platinum XT.png', 'https://www.amazon.in/Corsair-Platinum-Mechanical-Keyboard-Backlit/dp/B082GR814B', 0),
(18, 'Huntsman Elite', 'razer', 'Keyboard', 20499, 'res/img/cards/keyboard/Razer Huntsman Elite.png', 'https://www.amazon.in/Razer-Huntsman-Mini-Keyboard-RZ03-03390200-R3M1/dp/B089SP45YC/', 0),
(19, '4 Professional', 'daskeyboard', 'Keyboard', 33599, 'res/img/cards/keyboard/Das Keyboard 4 Professional.png', 'https://www.amazon.in/Das-Keyboard-Professional-Mechanical-DASK4MKPROCLI/dp/B00JI2APZQ', 0),
(20, 'Pro Wireless', 'logitech g', 'Mouse', 10995, 'res/img/cards/mouse/Logitech G Pro Wireless.png', 'https://www.amazon.in/Logitech-Wireless-Lightweight-Programmable-POWERPLAY-Compatible/dp/B07M5DK18R', 0),
(22, 'Rival 600', 'steelseries', 'Mouse', 9999, 'res/img/cards/mouse/SteelSeries Rival 600.png', 'https://www.amazon.in/SteelSeries-Steelseries-Truemove3-Lift-Off-Distance/dp/B078W926JQ', 0),
(23, 'Model O', 'glorious', 'Mouse', 11499, 'res/img/cards/mouse/Glorious Model O.png', 'https://www.amazon.in/Glorious-PC-Gaming-Race-GOM-Black/dp/B07VMM5LKH', 0),
(28, 'i7-12700K', 'intel', 'Processor', 31990, 'res/img/cards/cpu/i7-12700K.png', 'https://www.amazon.in/Intel-i7-12700K-Desktop-Processor-Unlocked/dp/B09FXNVDBJ', 0),
(29, 'i7-11700K', 'intel', 'Processor', 28733, 'res/img/cards/cpu/i7-11700K.png', 'https://www.amazon.in/Intel-i7-11700K-Processor-Integrated-Graphics/dp/B08X6ND3WP', 0),
(30, 'i9-13900K', 'intel', 'Processor', 58000, 'res/img/cards/cpu/i9-13900K.png', 'https://www.amazon.in/Intel%C2%AE-CoreTM-i9-13900K-Processor-Cache/dp/B0BG67ZG5R', 0),
(31, 'i9-12900K', 'intel', 'Processor', 47698, 'res/img/cards/cpu/i9-12900K.png', 'https://www.amazon.in/Intel-i9-12900K-Desktop-Processor-Unlocked/dp/B09FXDLX95', 0),
(32, 'i9-11900K', 'intel', 'Processor', 37298, 'res/img/cards/cpu/i9-11900K.png', 'https://www.flipkart.com/intel-i9-11900k-5-3-ghz-upto-lga-1200-socket-8-cores-16-threads-desktop-processor/p/itm63f764d2b6edc', 0),
(33, 'Ryzen 5 7600X', 'amd', 'Processor', 35350, 'res/img/cards/cpu/Ryzen 5 7600X.png', 'https://www.amazon.in/AMD-7600X-12-Thread-Unlocked-Processor/dp/B0BBJDS62N/', 0),
(34, 'Ryzen 7 7800X3D', 'amd', 'Processor', 44899, 'res/img/cards/cpu/Ryzen 7 7800X3D.png', 'https://golchhait.com/products/amd-ryzen%E2%84%A2-7-7800x3d-gaming-processor?variant=44003222683877&currency=INR', 0),
(35, 'Ryzen 7 7700X', 'amd', 'Processor', 45230, 'res/img/cards/cpu/Ryzen 7 7700X.png', 'https://www.amazon.in/AMD-7700X-Desktop-Processor-100-100000591WOF/dp/B0BBHHT8LY/', 0),
(36, 'Ryzen 9 7950X3D', 'amd', 'Processor', 67499, 'res/img/cards/cpu/Ryzen 9 7950X3D.png', 'https://www.amazon.in/AMD-Desktop-Processor-Threads-100-100000908WOF/dp/B0BTRH9MNS', 0),
(37, 'Ryzen 9 7900X', 'amd', 'Processor', 62230, 'res/img/cards/cpu/Ryzen 9 7900X.png', 'https://www.amazon.in/AMD-7900X-Desktop-Processor-100-100000589WOF/dp/B0BBJ59WJ4/', 0),
(40, '970 Pro', 'samsung', 'storage_drive', 10499, 'res/img/cards/storage/samsung 970 PRO.png', 'https://www.amazon.in/Samsung-970-Pro-PCIe-NVMe/dp/B07BYHGNB5', 0),
(41, 'SN750 1TB', 'wdblack', 'storage_drive', 29800, 'res/img/cards/storage/WD SN750.png', 'https://www.amazon.in/Western-Digital-SN750-Solid-State/dp/B07M64QXMN', 0),
(42, '860 EVO 500GB', 'samsung', 'storage_drive', 36039, 'res/img/cards/storage/samsung 860 EVO.png', 'https://www.flipkart.com/samsung-860-evo-500-gb-laptop-desktop-internal-solid-state-drive-ssd-mz-76e500bw/p/itmf29fsy7vd2rrs', 0),
(43, 'MX500 500GB', 'crucial', 'storage_drive', 12900, 'res/img/cards/storage/crusial MX500.png', 'https://www.amazon.in/Crucial-MX500-500GB-2-5-inch-SSD/dp/B0786QNS9B', 0),
(44, 'ROG Strix Z690-E Gaming WiFi', 'asus', 'motherboard', 40000, 'res/img/cards/mb/ROG Strix Z690-E Gaming WiFi.png', 'https://www.amazon.in/ASUS-ROG-Motherboard-Combo-Sink-Ethernet/dp/B09LQNPYWD', 0),
(45, 'MPG Z690 Carbon WiFi', 'msi', 'motherboard', 38320, 'res/img/cards/mb/MPG Z690 Carbon WiFi.png', 'https://www.amazon.in/MSI-MPG-Z690-Carbon-Motherboard/dp/B09HK8HMX3', 0),
(46, 'AORUS Master Z690 DDR5', 'gigabyte', 'motherboard', 46320, 'res/img/cards/mb/AORUS Master Z690.png', 'https://www.amazon.in/GIGABYTE-Z690-AORUS-Thunderbolt-Motherboard/dp/B09J64TBJG', 0),
(47, 'Z690 Taichi', 'asrock', 'motherboard', 37520, 'res/img/cards/mb/Z690 Taichi.png', 'https://www.amazon.in/ASROCK-Z690-LGA1700-Crossfire-Motherboard/dp/B09JM6ZR9L', 0),
(48, 'ROG Maximus Z690 Hero (Wi-Fi)', 'asus', 'motherboard', 64000, 'res/img/cards/mb/ROG Maximus Z690 Hero (Wi-Fi).png', 'https://www.amazon.in/ASUS-ROG-Z690-Motherboard-Thunderbolt/dp/B09LQPCBJG/ref=asc_df_B09LQPCBJG/', 0),
(50, 'ROG Maximus XIII Hero Z590', 'asus', 'motherboard', 42320, 'res/img/cards/mb/ROG Maximus XIII Hero Z590.png', 'https://www.amazon.in/ROG-Maximus-XIII-Hero-Motherboard/dp/B08D3PQKYD', 0),
(51, 'AORUS Z590 Master', 'gigabyte', 'motherboard', 48000, 'res/img/cards/mb/AORUS Master DDR5.png', 'https://www.amazon.in/GIGABYTE-Z590-AORUS-Motherboard-Thunderbolt/dp/B083HZ86V5', 0),
(52, 'MPG B560I Gaming Edge WiFi', 'msi', 'motherboard', 17520, 'res/img/cards/mb/MPG B560I Gaming Edge WiFi.png', 'https://www.amazon.in/MSI-B560I-Gaming-Edge-Motherboard/dp/B08YJYV2DN', 0),
(53, 'Prime Z590-A', 'asus', 'motherboard', 31200, 'res/img/cards/mb/Prime Z590-A.png', 'https://www.amazon.in/MSI-Gaming-Motherboard-LGA1200-Support/dp/B08VH6RM1N/', 0),
(55, 'i5-13600K', 'intel', 'Processor', 33000, 'res/img/cards/cpu/i5-13600K.png', 'https://www.amazon.in/Intel-i5-13600K-Desktop-Processor-P-cores/dp/B0BCDR9M33/', 0),
(56, 'Ryzen 9 7900X', 'intel', 'Processor', 62230, 'res/img/cards/cpu/Ryzen 9 7900X.png', 'https://www.amazon.in/AMD-7900X-Desktop-Processor-100-100000589WOF/dp/B0BBJ59WJ4/', 0),
(58, 'Intel i5-12600K', 'intel', 'Processor', 28593, 'res/img/cards/cpu/i5-12600K.png', 'https://www.flipkart.com/intel-i5-12600k-4-9-ghz-upto-lga1700-socket-10-cores-16-threads-desktop-processor/p/itm6c7a07d5d0ae8', 0),
(59, 'Intel i5-11600K', 'intel', 'Processor', 23999, 'res/img/cards/cpu/i5-11600K.png', 'https://www.amazon.in/Intel-i5-11600KF-Desktop-Processor-Unlocked/dp/B08X62BTJD/', 0),
(60, 'Intel i7-13700K', 'intel', 'Processor', 42999, 'res\\img\\cards/cpu/i7-13700K.png', 'https://www.amazon.in/Intel-i7-13700K-Desktop-Processor-P-cores/dp/B0BCF57FL5', 0),
(61, 'H7 ELITE', 'nzxt', 'Cabinet', 18659, 'res\\img\\cards\\cabinate\\H7 Elite.png', 'https://www.amazon.in/Elite-Mid-Tower-Computer-Gaming-Cabinet/dp/B0B17LKSVP/', 0),
(62, 'Graffiti ', 'ant esports', 'Cabinet', 4638, 'res\\img\\cards\\cabinate\\Ant Esport Graffiti.png', 'https://www.amazon.in/Ant-Esports-Graffiti-Computer-Cabinet/dp/B09X5PTR7W', 0),
(63, 'Odyssey X Black', 'lian li', 'Cabinet', 44340, 'res\\img\\cards\\cabinate\\Lion Li Odessy.png', 'https://www.amazon.in/Lian-Li-Odyssey-Black-Motherboard/dp/B0995Q6TND', 0),
(64, 'Torque', 'antec', 'Cabinet', 36298, 'res\\img\\cards\\cabinate\\Antec Torque.png', 'https://www.amazon.in/Antec-Aluminum-Micro-ATX-Motherboard-Tempered/dp/B07HG9KZVX/', 0),
(65, 'Enthoo Evolv X Glass', 'phanteks', 'Cabinet', 23638, 'res\\img\\cards\\cabinate\\Phanteks Enthoo Evolv X (E-ATX) Mid Tower Cabinet With Dual Side Tempered Glass Window (Matte White).png', 'https://www.amazon.in/Phanteks-PH-ES518XTG_DBK01-Tempered-Windows-Digital/dp/B07GY26TZJ', 0),
(66, 'MPG SEKIRA 500X', 'msi', 'Cabinet', 17699, 'res\\img\\cards\\cabinate\\Msi MPG Sekira 100R.png', 'https://www.amazon.in/MSI-MPG-SEKIRA-500X-Preinstalled/dp/B07V462M6M', 0),
(67, 'Vengeance LPX 8gb', 'corsair', 'RAM', 3573, 'res\\img\\cards\\ram\\Corsair Vengeance LPX.png', 'https://www.amazon.in/CORSAIR-Vengeance-1x8GB-3200MHZ-Desktop/dp/B07PNW4Q3F', 0),
(68, 'GeForce RTX 3090 24gb', 'nvidea', 'Graphics Card', 174999, 'res\\img\\cards\\gpu\\nvidia GeForce RTX 3090.png', 'https://www.amazon.in/GeForce-RTX-3090-Founders-Graphics/dp/B08HR6ZBYJ', 0),
(69, 'GeForce RTX 3080 12gb', 'msi', 'Graphics Card', 152999, 'res\\img\\cards\\gpu\\msi GeForce RTX 3080.png', 'https://www.flipkart.com/msi-nvidia-geforce-rtx-3080-gaming-z-trio-12g-lhr-12-gb-gddr6x-graphics-card/p/itm52aac4a566f21', 0),
(70, 'GeForce RTX 3070 8gb', 'msi', 'Graphics Card', 59499, 'res\\img\\cards\\gpu\\msi GeForce RTX 3070.png', 'https://www.flipkart.com/msi-nvidia-geforce-rtx-3070-ventus-3x-8g-oc-lhr-8-gb-gddr6-graphics-card/p/itmf83f1693c4c29', 0),
(71, 'Radeon RX 6900 XT OC 16gb', 'asus', 'Graphics Card', 160500, 'res\\img\\cards\\gpu\\asus Radeon RX 6900 XT OC.png', 'https://www.amazon.in/ASUS-Graphics-DisplayPort-All-Aluminum-Reinforced/dp/B08R81J62G', 0),
(72, 'GeForce RTX 3060 Ti 8gb', 'gigabyte', 'Graphics Card', 41500, 'res\\img\\cards\\gpu\\gigabyte GeForce RTX 3060 Ti.png', 'https://www.amazon.in/GIGABYTE-REV2-0-WINDFORCE-GV-N306TGAMING-OC-8GD/dp/B09BKBJ14W/', 0),
(73, 'Radeon RX 6800 XT OC 16gb', 'asus', 'Graphics Card', 74990, 'res\\img\\cards\\gpu\\asus Radeon RX 6800 XT OC.png', 'https://www.amazon.in/ASUS-Graphics-DisplayPort-All-Aluminum-Reinforced/dp/B08P3ZN62G', 0),
(74, 'GeForce GTX 1660 Super 6gb', 'msi', 'Graphics Card', 32740, 'res\\img\\cards\\gpu\\msi GeForce RTX 3080.png', 'https://www.amazon.in/MSI-GeForce-192-bit-Support-Graphics/dp/B07ZHDZ1K6', 0),
(75, 'Radeon RX 6700 XT 12gb', 'asus', 'Graphics Card', 37990, 'res\\img\\cards\\gpu\\asus Radeon RX 6700 X.png', 'https://www.amazon.in/ASUS-Standard-DisplayPort-Axial-tech-Technology/dp/B08YWRFSQB/ref=asc_df_B08YWRFSQB/?tag=googleshopdes-21&linkCode=df0&hvadid=545889081560&hvpos=&hvnetw=g&hvrand=5638538910941382561&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9145612&hvtargid=pla-1286140586362&psc=1', 0),
(76, 'GeForce GTX 1660 Super 6gb', 'asus', 'Graphics Card', 29990, 'res\\img\\cards\\gpu\\asus GeForce GTX 1660 Super.png', 'https://www.amazon.in/Gaming-GeForce-Overclocked-Graphics-TUF-GTX1660S-O6G-GAMING/dp/B081SPGMBD', 0),
(77, 'Ripjaws V 16gb', 'G.skill', 'RAM', 11399, 'res\\img\\cards\\ram\\G.Skill Ripjaws V.png', 'https://www.amazon.in/G-SKILL-Ripjaws-16GB-288-Pin-SDRAM/dp/B0171GQXME', 0),
(79, 'HyperX Fury 16gb', 'Kingston', 'RAM', 11350, 'res\\img\\cards\\ram\\Kingston HyperX Fury.png', 'https://www.amazon.in/Kingston-Technology-HyperX-HX426C16FB-16/dp/B06XKSPXHV', 0),
(80, 'Ballistix 16gb', 'Crucial', 'RAM', 11999, 'res\\img\\cards\\ram\\Crucial Ballistix.jpg', 'https://www.amazon.in/Crucial-Ballistix-Desktop-Gaming-BL2K8G32C16U4B/dp/B083TRRT16', 0),
(81, 'Vulcan 16gb', 'Team T-force', 'RAM', 10999, 'Res\\image\\Cards\\ram\\Team T-Force Vulcan.png', 'https://www.amazon.in/TeamGroup-T-Force-3200MHz-Enhanced-Dissipation/dp/B09GBJSXBC/', 0),
(82, ' XPG Spectrix D60G 16gb', 'adata', 'RAM', 12399, 'res\\img\\cards\\ram\\Adata XPG Spectrix.jpg', 'https://www.amazon.in/ADATA-SPECTRIX-Desktop-Memory-AX4U320016G16A-ST60/dp/B092RL61SZ/', 0),
(83, 'Viper Steel 16gb', 'Patriot', 'RAM', 10999, 'res\\img\\cards\\ram\\Patriot Viper Steel.jpg', 'https://www.amazon.in/Patriot-Viper-4133MHz-Performance-Memory/dp/B07KXBRR24', 0),
(84, 'Dominator Platinum RGB 16gb', 'corsair', 'RAM', 22999, 'res\\img\\cards\\ram\\Corsair Dominator Platinum.png', 'https://www.amazon.in/Corsair-Dominator-Platinum-PC4-25600-Desktop/dp/B07N3HT852', 0),
(85, 'HyperX Predator 16gb', 'Kingston', 'RAM', 14999, 'res\\img\\cards\\ram\\HyperX Predator.jpg', 'https://www.amazon.in/HyperX-Predator-Technology-HX432C16PB3AK2-16/dp/B07GL6CLTT', 0),
(86, 'ASUS ROG Ryujin 360', 'Asus', 'Cooler', 33499, 'res\\img\\cards\\cooler\\ASUS ROG Ryujin 360.png', 'ASUS ROG Ryujin 360', 0),
(88, 'be quiet! BK022 Dark Rock Pro 4', 'Be Quiet!', 'Cooler', 24299, 'res\\img\\cards\\cooler\\be quiet! Dark Rock Pro 4.png', 'https://www.amazon.in/BK022-Cooler-6-Pole-Silent-Wings135mm/dp/B07BY6F8D9?th=1', 1),
(89, 'Cooler Master Hyper 212 Black Edition', 'Cooler Master', 'Cooler', 8755, 'res\\img\\cards\\cooler\\Cooler Master Hyper 212 Black Edition.png', 'https://www.amazon.in/Cooler-Master-RR-212S-20PK-R1-Contact-Silencio/dp/B07H25DYM3', 0),
(91, 'Cooler Master MasterLiquid ML360R', 'Cooler Master', 'Cooler', 18500, 'res\\img\\cards\\cooler\\Cooler Master MasterLiquid ML360R.png', 'https://www.amazon.in/Cooler-Master-MLX-D36M-A20PC-R1-MasterLiquid-Independently-Controlled/dp/B07DV29GYN', 1),
(92, 'Corsair H115i RGB Platinum', 'Corsair', 'Cooler', 15990, 'res\\img\\cards\\cooler\\Corsair H115i RGB Platinum.png', 'https://www.amazon.in/Corsair-Hydro-Platinum-Liquid-Cooler/dp/B07JWB5BSP', 1),
(93, 'Corsair iCUE H150i Elite Capellix', 'Corsair', 'Cooler', 25567, 'res\\img\\cards\\cooler\\Corsair iCUE H150i Elite Capellix.png', 'https://www.amazon.in/Cooler-Custom-LEDs-120mm-Fans-360mm-Radiator-Commander-Controller/dp/B09HDWQKV8/', 1),
(94, 'Noctua NH-D15', 'Noctua', 'Cooler', 8761, 'res\\img\\cards\\cooler\\Noctua NH-D15.png', 'https://www.amazon.in/noctua-NH-D15-Heatpipe-CPU-Cooler/dp/B00L7UZMAK', 1),
(95, 'NZXT Kraken X73', 'NZXT', 'Cooler', 26499, 'res\\img\\cards\\cooler\\NZXT Kraken X73.png', 'NZXT Kraken X73', 1),
(96, 'Thermaltake Floe DX RGB 360', 'Thermaltake', 'Cooler', 37459, 'res\\img\\cards\\cooler\\Thermaltake Floe DX RGB 360.png', 'Thermaltake Floe DX RGB 360', 1),
(97, 'Seasonic Focus gx 750', 'Seasonic', 'SMPS', 11990, 'res\\img\\cards\\smps\\focus gx 750.png', 'https://www.amazon.com/Seasonic-GX-750-Full-Modular-Application-SSR-750FX/dp/B077J9G9CH', 1),
(98, 'Cooler Master MWE 650 Gold V2 Power Supply', 'Cooler Master', 'SMPS', 5224, 'res\\img\\cards\\smps\\mwe gold 650wv2.png', 'https://www.amazon.in/Cooler-Master-Certified-Modular-Supply/dp/B08H2NC11T', 1),
(99, 'Corsair RM850X Power Supply', 'Corsair', 'SMPS', 14980, 'res\\img\\cards\\smps\\rm850x.png', 'https://www.amazon.in/CORSAIR-RM850x-Certified-Modular-Supply/dp/B079H5WNXN', 1),
(100, 'Toughpower Grand RGB 850W', 'Thermaltake', 'SMPS', 18990, 'res\\img\\cards\\smps\\tuf power grand rgb850w.png', 'https://www.amazon.com/Thermaltake-Toughpower-256-Color-Warranty-PS-TPG-0850FPCGUS-R/dp/B01MQU6CWU?th=1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `smps`
--

CREATE TABLE `smps` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` enum('corsair','seasonic','thermaltake','cooler master') NOT NULL,
  `watts` int(5) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smps`
--

INSERT INTO `smps` (`id`, `name`, `brand`, `watts`, `price`, `img`) VALUES
(3, 'RM850x', 'corsair', 850, 17999, ''),
(4, 'Focus GX-750', 'seasonic', 750, 35099, ''),
(5, 'Toughpower Grand RGB 850W', 'thermaltake', 850, 36039, ''),
(6, 'MWE Gold 650W V2', 'cooler master', 650, 14199, '');

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` enum('samsung','adata','wdblack','crucial') NOT NULL,
  `hdd_type` enum('hdd','ssd') NOT NULL,
  `interface` enum('sata','m2sata','nvme') NOT NULL,
  `capacity_gb` int(11) NOT NULL,
  `pci` enum('PCIe-4','PCIe-5','PCIe-6','PCle-3','none') NOT NULL,
  `read_speed` int(11) NOT NULL,
  `write_speed` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`id`, `name`, `brand`, `hdd_type`, `interface`, `capacity_gb`, `pci`, `read_speed`, `write_speed`, `price`, `img`) VALUES
(5, '970 PRO', 'samsung', 'ssd', 'nvme', 1024, 'PCle-3', 3500, 2700, 10499, ''),
(6, 'SN750', 'wdblack', 'ssd', 'nvme', 2048, 'PCle-3', 3470, 3000, 29800, ''),
(7, '860 EVO', 'samsung', 'ssd', 'sata', 500, 'none', 550, 520, 3598, ''),
(8, 'MX500', 'crucial', 'ssd', 'sata', 1024, 'none', 560, 510, 12900, '');

--
-- Triggers `storage`
--
DELIMITER $$
CREATE TRIGGER `storage-cards` AFTER INSERT ON `storage` FOR EACH ROW BEGIN

declare name varchar(255);
declare size int;
declare type varchar(20);
set type = "GB";
set size = new.capacity_gb;


if (new.capacity_gb > 1024) THEN
	set type = "TB";
    set size = size / 1024;
END IF;

set name =CONCAT(new.name," ",size,type);

	INSERT INTO shop_cards (name, brand, category, price, img) VALUES (new.name, new.brand, 'storage_drive', new.price, new.img);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `email`, `password`, `date`) VALUES
(10, 'khush', 'khush', 'khush@gmail.com', '12345678', '2023-05-04 09:43:40'),
(13, 'Tushir Prajapati', 'tushir', 'tushir@123.com', '12345678', '2023-05-04 09:41:40'),
(14, 'Meet Rajpal', 'meetrajpal', 'meetrajpal.linkedin@gmail.com', '123', '2023-10-23 13:12:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabinet`
--
ALTER TABLE `cabinet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cooler`
--
ALTER TABLE `cooler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gpu`
--
ALTER TABLE `gpu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keyboard`
--
ALTER TABLE `keyboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motherboard`
--
ALTER TABLE `motherboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mouse`
--
ALTER TABLE `mouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_cards`
--
ALTER TABLE `shop_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smps`
--
ALTER TABLE `smps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cabinet`
--
ALTER TABLE `cabinet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cooler`
--
ALTER TABLE `cooler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cpu`
--
ALTER TABLE `cpu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `gpu`
--
ALTER TABLE `gpu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `keyboard`
--
ALTER TABLE `keyboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `monitor`
--
ALTER TABLE `monitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `motherboard`
--
ALTER TABLE `motherboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mouse`
--
ALTER TABLE `mouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ram`
--
ALTER TABLE `ram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `shop_cards`
--
ALTER TABLE `shop_cards`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `smps`
--
ALTER TABLE `smps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
