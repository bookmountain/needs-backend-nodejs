-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-11-16 08:04:38
-- 伺服器版本： 10.4.14-MariaDB
-- PHP 版本： 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `needs`
--

-- --------------------------------------------------------

--
-- 資料表結構 `ads_data`
--

CREATE TABLE `ads_data` (
  `id` int(11) NOT NULL,
  `ads_id` int(11) NOT NULL,
  `clicks_day` int(11) DEFAULT NULL,
  `impressions_day` int(11) DEFAULT NULL,
  `days_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `ads_data`
--

INSERT INTO `ads_data` (`id`, `ads_id`, `clicks_day`, `impressions_day`, `days_date`) VALUES
(1, 1, 33, 153, '2020-11-03'),
(2, 1, 22, 133, '2020-11-04'),
(3, 1, 45, 200, '2020-11-05'),
(4, 1, 78, 416, '2020-11-06'),
(5, 1, 35, 301, '2020-11-07'),
(6, 1, 45, 399, '2020-11-08'),
(7, 1, 65, 522, '2020-11-09'),
(8, 2, 64, 780, '2020-11-03'),
(9, 2, 45, 213, '2020-11-04'),
(10, 2, 75, 987, '2020-11-05'),
(11, 2, 45, 920, '2020-11-06'),
(12, 2, 93, 2100, '2020-11-07'),
(13, 2, 23, 440, '2020-11-08'),
(14, 2, 32, 688, '2020-11-09'),
(15, 3, 74, 880, '2020-11-03'),
(16, 3, 55, 603, '2020-11-04'),
(17, 3, 38, 791, '2020-11-05'),
(18, 3, 99, 1165, '2020-11-06'),
(19, 3, 54, 773, '2020-11-07'),
(20, 3, 68, 872, '2020-11-08'),
(21, 3, 63, 1200, '2020-11-09'),
(22, 4, NULL, NULL, '2020-11-09'),
(23, 5, NULL, NULL, '2020-11-09');

-- --------------------------------------------------------

--
-- 資料表結構 `ads_in_progress`
--

CREATE TABLE `ads_in_progress` (
  `sid` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `title_ads` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `budget` int(11) NOT NULL,
  `bid` int(11) DEFAULT NULL,
  `start_date` date NOT NULL DEFAULT current_timestamp(),
  `end_date` date NOT NULL DEFAULT current_timestamp(),
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productid1` int(11) NOT NULL,
  `productid2` int(11) NOT NULL,
  `productid3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `ads_in_progress`
--

INSERT INTO `ads_in_progress` (`sid`, `merchant_id`, `title_ads`, `budget`, `bid`, `start_date`, `end_date`, `img`, `productid1`, `productid2`, `productid3`) VALUES
(1, 12, '2021手帳展', 7000, 8, '2020-09-11', '2020-09-16', 'ads1.jpg', 26, 13, 19),
(2, 12, '雙11購物節', 15000, 17, '2020-09-01', '2020-09-09', 'ads2.jpg', 23, 15, 16),
(3, 12, '聖誕狂歡', 10000, 12, '2020-08-31', '2020-09-03', 'ads3.jpg', 14, 12, 21);

-- --------------------------------------------------------

--
-- 資料表結構 `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `outline` text COLLATE utf8_unicode_ci NOT NULL,
  `detial` text COLLATE utf8_unicode_ci NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `article`
--

INSERT INTO `article` (`id`, `title`, `image`, `outline`, `detial`, `create_at`) VALUES
(1, '手帳展！超過一千種商品\r\n75折起', 'http://localhost:5000/articleImg/Classic/899129dbd090c48a7d9611f487ec37d9-700x700.jpg', '每年讓文具迷瘋狂的手帳展來啦！即\r\n日起搶先推出「2021手帳展」全...', '', '2020-11-02 18:46:04'),
(2, '日本文具控轟動話題的灰色筆記本的魅力大公開', 'http://localhost:5000/articleImg/Classic/MonochromeNotebook_03-700x560.jpg', '日本知名文具品牌KOKUYO的產品向來令文具控們怦然心動，最新推...', '', '2020-11-02 18:46:49'),
(3, '三菱鉛筆uni系列4款得獎商品 文具控一定要收齊！', 'http://localhost:5000/articleImg/Classic/uniball_one.jpg', '三菱鉛筆近期出了好幾款新品，每一種都讓文具控愛不釋手，這次和大家介紹4款兼具實用性與美觀性的商品，還分別獲得了2020文具總選舉獎、GOOD DESIGN BEST100、GOOD DESIGN AWARD、2020文房具屋大賞，真的是太優秀了。', '', '2020-11-02 18:47:17'),
(4, '辦公室收納好物 都收進WORKERS’BOX 吧', 'http://localhost:5000/articleImg/Classic/8fa8c6140a5f5294aef248060cb59c79-700x525.jpg', '據說乾淨整潔的辦公環境能讓工作效率翻倍，但應該不少上班族都有辦...', '', '2020-11-02 18:47:42');

-- --------------------------------------------------------

--
-- 資料表結構 `brand_info`
--

CREATE TABLE `brand_info` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `brand_story` text COLLATE utf8_unicode_ci NOT NULL,
  `index_img` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'json',
  `activity` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'html string',
  `reply_speed` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '小時/日',
  `delivery_days` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '日',
  `bg_img` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'json',
  `bg_color` text COLLATE utf8_unicode_ci NOT NULL,
  `main_productId` text COLLATE utf8_unicode_ci NOT NULL,
  `main_activitiesId` text COLLATE utf8_unicode_ci NOT NULL,
  `brandStory_img` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `brandStory_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `brand_info`
--

INSERT INTO `brand_info` (`id`, `merchant_id`, `template_id`, `brand_story`, `index_img`, `activity`, `reply_speed`, `delivery_days`, `bg_img`, `bg_color`, `main_productId`, `main_activitiesId`, `brandStory_img`, `brandStory_text`) VALUES
(1, 11, 1, '嗨！我們是一張紙，一個來自泰國的環保和Zakka友好的固定品牌。可重複使用的包裝紙，筆記本，禮品盒，賀卡等。可持續發展的理念融入了我們的環境。僅適用於產品本身，而是改變消費者的行為。', 'apiecesofpaper_300x300.jpg', '', '12 小時', '10 日', '', '#ffff', '2', '3', '', '123123123456'),
(2, 12, 9, '', 'pommedepin111_300x300.jpg', '', '2 小時', '3 日', 'b814731d-97df-43bd-8a24-945f72d34f0f.jpeg', '#323232', '0', '0', '4d534c69-c5c1-4722-8b77-7380b955ef2f.jpeg', ''),
(3, 3, 1, '《 禮拜文房具 》發起人是《 ADC STUDIO 》 的創辦人 Karen，並由五位好朋友一起組成。Karen 收集許多歐、美、日當代與經典絕版的文具，是個重度文具迷。 店裡提供的商品以歐洲、美國與日本的文具為主，多是具有悠久歷史的品牌，而且在市場上長期販售，且經得起時間考驗的經典文具。 目前已陸續加入自有品牌與selection兩種系列商品，台灣有著許多優秀的文具製造廠，我們藉著這個優勢並結合自己的專長，期待未來能夠成為一個國際性的品牌，目前正朝著這條道路前進中...', '5oodaily_300x300.jpg', '', '12 小時', '7 日', '', '', '0', '0', '', ''),
(4, 1, 1, '「一分之一」， 就是獨一無二。想傳達對手帳以及文具的想法，用工作室的型式開了一間文具店，希望更多人能夠因此而了解文具的美好。', 'mukukoubou_300x300.jpg', '', '5 小時', '3 日', '', '', '0', '0', '', ''),
(5, 13, 3, '', 'mukukoubou_300x300.jpg', '', '', '', '', '123', '123', '12', '', ''),
(6, 14, 3, '因著保護種子的本能「遇濕則收/遇乾則放」的姿態松果象徵著愛的理由加上一層一層的外形如同我們多元的手作商品堆疊起來成為一個完整飽滿的松果為的就是將這份因愛而生的質感及品味分享傳遞【希望這個品牌以花草為出發，讓品味在生活上不斷延伸】不只有花束及盆花商品，再加以結合手作感，讓花以更多元的樣貌呈現。花，不再只是大自然的配件，透過松果，而能是建立人與人之間更親密的媒介，讓手作的溫度感染更多的人。', 'dimanche_300x300.jpg', '', '', '', '', '', '0', '0', '', ''),
(7, 15, 6, '', 'twtbmister_300x300.jpg', '', '', '', '', '', '0', '0', '', ''),
(8, 100, 3, '', 'needs_300x300.png', '', '', '', '', '', '0', '0', '', ''),
(9, 6, 2, '愛治文具房-充滿文具的房間 愛治是我奶奶的名字。\r\n\r\n                小時候因為父母忙碌也有段時間沒有住在一起，因此奶奶教了我許多生活的道理，處事的方法。溫暖待人是最重要的。今年我的奶奶九十歲了還是很健康的陪在我們家人的身邊：） 希望這家生活文具店能夠像奶奶一樣一直一直在彰化陪著大家走下去~', '', '', '', '', 'background_1.jpg', '', '0', '0', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `channel_login_type`
--

CREATE TABLE `channel_login_type` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `last_active` timestamp NOT NULL DEFAULT current_timestamp(),
  `login_type` enum('no','yes','','') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `channel_message`
--

CREATE TABLE `channel_message` (
  `id` int(11) NOT NULL,
  `room` text NOT NULL,
  `to_name` text NOT NULL,
  `message` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `channel_message`
--

INSERT INTO `channel_message` (`id`, `room`, `to_name`, `message`, `timestamp`) VALUES
(19, 'toolstoliveby', 'Petty Lin', 'wefwefwef', '2020-11-16 02:38:00'),
(20, 'toolstoliveby', '飛天小女警', 'hjhkhiio', '2020-11-16 02:40:00'),
(21, 'toolstoliveby', 'Petty Lin', 'dfsdf', '2020-11-16 02:40:00'),
(22, 'toolstoliveby', '飛天小女警', 'yhy', '2020-11-16 02:41:00'),
(23, 'toolstoliveby', 'Petty Lin', 'sadasd', '2020-11-16 02:41:00'),
(24, 'toolstoliveby', 'Petty Lin', 'zdfsdf', '2020-11-16 02:41:00'),
(25, 'toolstoliveby', '飛天小女警', 'yayayayadsd', '2020-11-16 02:41:00');

-- --------------------------------------------------------

--
-- 資料表結構 `contracts`
--

CREATE TABLE `contracts` (
  `id` int(11) NOT NULL,
  `contract_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `plan_id` int(11) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `payment_type` int(11) NOT NULL COMMENT '1:信用卡, 2:ATM轉帳',
  `paid_time` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `contracts`
--

INSERT INTO `contracts` (`id`, `contract_id`, `merchant_id`, `start_date`, `end_date`, `plan_id`, `amount`, `payment_type`, `paid_time`, `created_at`, `updated_at`) VALUES
(1, 'M2020082401', 3, '2020-09-01', '2020-12-31', 2, '6000', 1, '2020-11-03 03:27:10', '2020-09-01 20:52:54', '2020-09-01 20:58:47'),
(2, 'M2020082402', 4, '2020-09-01', '2020-12-31', 2, '6000', 2, '2020-11-03 03:27:10', '2020-09-01 20:57:03', '2020-09-01 20:58:47'),
(3, 'M2020082403', 5, '2020-09-01', '2020-12-31', 2, '6000', 2, '2020-11-03 03:27:10', '2020-09-01 20:57:03', '2020-09-01 20:58:47'),
(4, 'M2020082404', 6, '2020-09-01', '2020-10-31', 1, '3000', 2, '2020-11-03 03:27:10', '2020-09-01 20:57:03', '2020-09-01 20:58:47'),
(5, 'M2020082405', 7, '2020-09-01', '2020-09-30', 1, '1500', 2, '2020-11-03 03:27:10', '2020-09-01 20:57:03', '2020-09-01 20:58:47'),
(6, 'M2020082406', 8, '2020-09-01', '2020-09-30', 1, '1500', 2, '2020-11-03 03:27:10', '2020-09-01 20:57:03', '2020-09-01 20:58:47'),
(7, 'M2020082407', 12, '2020-09-01', '2020-10-31', 1, '3000', 1, '2020-08-17 03:27:10', '2020-09-01 20:57:03', '2020-09-01 20:58:47'),
(8, 'M2020082408', 10, '2020-09-01', '2020-12-31', 1, '4500', 1, '2020-08-20 03:27:10', '2020-09-01 20:57:03', '2020-09-01 20:58:47'),
(16, 'M2020103101', 12, '2020-11-01', '2020-11-30', 1, '1500', 2, NULL, '2020-09-09 11:38:07', '2020-09-09 11:38:07'),
(17, 'M2020113001', 12, '2020-12-01', '2020-12-31', 1, '1500', 2, NULL, '2020-09-09 11:38:07', '2020-09-09 11:38:07'),
(18, 'M2020090903', 7, '2021-01-01', '2020-02-29', 1, '30000', 2, '2020-11-03 03:27:10', '2020-09-09 11:38:07', '2020-09-09 23:43:43'),
(20, 'M2020090904', 1, '2020-10-01', '2020-10-31', 1, '1750', 1, '2020-11-03 03:27:10', '2020-09-09 14:36:07', '2020-09-09 23:42:36'),
(21, 'M2020091001', 6, '2020-11-01', '2020-11-30', 1, '3000', 1, '2020-11-03 03:27:10', '2020-09-10 09:11:34', '2020-09-10 09:16:54');

-- --------------------------------------------------------

--
-- 資料表結構 `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `age` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `credit_card` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `e_coin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `me_coin` int(11) NOT NULL DEFAULT 33,
  `fe_coin` int(11) NOT NULL DEFAULT 45,
  `shopping_record` int(10) NOT NULL DEFAULT 11,
  `return_product` int(3) NOT NULL DEFAULT 0,
  `avatar` text COLLATE utf8_unicode_ci NOT NULL DEFAULT 'avatar_300x300.jpg',
  `creat_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `customers`
--

INSERT INTO `customers` (`id`, `customer_id`, `name`, `gender`, `birthday`, `age`, `phone_number`, `address`, `email`, `credit_card`, `password`, `e_coin`, `me_coin`, `fe_coin`, `shopping_record`, `return_product`, `avatar`, `creat_date`) VALUES
(1, 'C1000', '瞿佩思', '女', '1990-01-01', '40', '0987766765', '雲林縣莿桐鄉埔尾村004鄰油車７０之３號', 'sherry@gmail.com', '1223-XXXX-XXXX-3332', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '43', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:17:10'),
(2, 'C1001', '喻蓉文', '女', '2009-09-11', '11', '0904992612', '花蓮縣壽豐鄉志學村017鄰忠孝１４３之１', 'kitty2300@yahoo.com.tw', '1345-XXXX-XXXX-5449', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', '234', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:17:10'),
(3, 'C1002', '糜嘉怡', '女', '1989-07-20', '31', '0992558964', '花蓮縣壽豐鄉水璉村007鄰水璉路８４巷２之１號', 'candy@gmail.com', '1335-XXXX-XXXX-5439', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '309', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:17:10'),
(4, 'C1003', '張婷媗', '女', '1988-09-02', '32', '0934567876', '新北市中和區中原里005鄰光中路２１號之１', 'cindy0034@yahoo.com.tw', '1325-XXXX-XXXX-5429', '74b84e7cba402acd701fe45dbba49e3bdbf51279', '50', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:25:02'),
(5, 'C1004', '許慧媛', '女', '1985-04-10', '35', '0934234899', '新北市中和區嘉穗里005鄰愛利街５５號六樓', 'mandy46375@yahoo.com.tw', '1265-XXXX-XXXX-5319', 'e035f6fc20fc7244636817ec401a9b20434b4550', '30', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:25:02'),
(6, 'C1005', '林璟雯', '女', '1990-06-22', '30', '0988765987', '新北市中和區泰安里041鄰景安路５８號', 'alona.tjy@gmail.com', '1165-XXXX-XXXX-5129', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '50', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:25:02'),
(7, 'C1006', '張可嵐', '女', '1993-09-02', '27', '0935456765', '新北市樹林區南園里006鄰佳園路三段１７３號之２', 'kiki2030@yahoo.com.tw', '1565-XXXX-XXXX-5239', 'fa56f6306375cc1acfc18c9d27ca53f59ce98064', '100', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:25:02'),
(8, 'C1007', '陳婧琪', '女', '1980-07-15', '40', '0923767383', '新北市樹林區山佳里018鄰新興街１號四樓', 'toby3737@yahoo.com.tw', '1765-XXXX-XXXX-5139', '7d60ede675bdd06968021408b630ce3f83bae86e', '37', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:25:02'),
(9, 'C1008', '王玥婷', '女', '1990-06-02', '30', '0928876393', '新北市樹林區山佳里018鄰新興街１之１號七樓', 'rebecca83898@yahoo.com.tw', '1865-XXXX-XXXX-0499', '0440726038d527416efa063ce92bfe89ffeb980e', '87', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:25:02'),
(10, 'C1009', '張瀅心', '女', '1987-10-18', '33', '0929008989', '新北市五股區五股里011鄰中興路四段４８巷８號三樓', 'Alice@gmail.com.tw', '2365-XXXX-XXXX-4499', '3d7bb2fe8e57c23fd59a0789e0c4c27ef7d0bb09', '32', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:25:02'),
(12, 'C1011', '蕭凌薇', '女', '1976-09-09', '44', '0976372849', '新北市五股區福德里002鄰登林路４６巷２號四樓', 'W09030034@gmail.com.tw', NULL, '6bdbfa2ee339c46cd53821e0b4a196747b2b8993', '45', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:25:02'),
(13, 'C1012', '張美蓮', '女', '1955-04-19', '65', '0998383291', '新北市八里區訊塘里012鄰頂罟一路５０號二樓', 'gydy33@yahoo.com.tw', NULL, '431fd8817b87d3d66d96bdec7eab748eb8b987ec', '30', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:25:02'),
(14, 'C1013', '許雅芙', '女', '1996-04-10', '24', '0938272930', '新北市八里區訊塘里012鄰頂罟一路５０號十三樓', 'windy1212@yahoo.com.tw', NULL, '6770fd4cc5f028394f0937e23d3bff22d3afdac8', '39', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:25:02'),
(15, 'C1014', '林雨婷', '女', '1984-06-27', '36', '0988776373', '臺中市西屯區林厝里002鄰科園一路８號', '33Amy@yahoo.com.tw', NULL, 'bea35f897cd2648f17335f7cf792ee79eae8ba2e', '202', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:25:02'),
(16, 'C1015', '張姝瑗', '女', '1972-11-02', '48', '0998098999', '臺中市西屯區協和里006鄰安和路２７之７號', 'Turna783@yahoo.com.tw', NULL, 'b063710d35b1df19e1ddc3d4bdf43b85126fca80', '120', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:25:02'),
(17, 'C1016', '陳穎娟', '女', '1975-09-15', '45', '0934565474', '臺中市西屯區福和里005鄰中工三路２５７號二樓之２', 'Annie202@yahoo.com.tw', NULL, 'bcf6f56266d0dfd3918b44444e1fc45a9a626942', '98', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:25:02'),
(18, 'C1017', '王凌菲', '女', '1991-06-12', '29', '0998303292', '臺中市清水區橋頭里028鄰民治一街２８號', 'Nini303@yahoo.com.tw', NULL, '5917f6ac7cc50fe10d326757f50342abc171e482', '27', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:25:02'),
(19, 'C1018', '張檀雅', '女', '1985-11-18', '35', '0987383988', '臺中市清水區南社里031鄰仁愛路８３巷２８號', 'Mima2920@gmail.com.tw', NULL, '9ebe299167d341a6b3d1822aba32e3f32398969f', '320', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:25:02'),
(20, 'C1019', '王倩雪', '女', '2001-04-12', '19', '0998733932', '臺中市大甲區文武里003鄰德興路２０８之１號', 'Nina9877@yahoo.com.tw', NULL, 'eec88ed090972d590375dcf362a51f2be976a4ec', '90', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:25:02'),
(21, 'C1020', '林茹雪', '女', '1973-06-09', '47', '0920202393', '臺中市大甲區頂店里021鄰雁門路２９０巷６０弄２８號', 'uni9487@gmail.com.tw', NULL, '8f32cb601093c61fc0d142852fa488359f9b62b1', '33', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-02 17:25:02'),
(22, 'C1021', '哈囉', '男', '2020-08-05', '0', '0920469817', '台北市士林區中華路75號', 'sam@gmail.tw', NULL, '0f2941ce57253d145212215be57dae5d58d29f81', '33', 33, 45, 11, 0, 'avatar_300x300.jpg', '2020-09-08 20:38:24');

-- --------------------------------------------------------

--
-- 資料表結構 `customer_subscribes`
--

CREATE TABLE `customer_subscribes` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `customer_subscribes`
--

INSERT INTO `customer_subscribes` (`id`, `customer_id`, `merchant_id`) VALUES
(1, 1, 13),
(2, 1, 14),
(3, 5, 9),
(4, 2, 14),
(5, 1, 15),
(6, 1, 100);

-- --------------------------------------------------------

--
-- 資料表結構 `customer_wishlist`
--

CREATE TABLE `customer_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `customer_wishlist`
--

INSERT INTO `customer_wishlist` (`id`, `customer_id`, `product_id`) VALUES
(1, 1, 17),
(2, 1, 15),
(3, 1, 13),
(4, 1, 7),
(5, 1, 9),
(6, 1, 11),
(7, 2, 25),
(8, 2, 15),
(9, 2, 36),
(10, 2, 35),
(11, 1, 33),
(12, 2, 30);

-- --------------------------------------------------------

--
-- 資料表結構 `deposit_table`
--

CREATE TABLE `deposit_table` (
  `sid` int(11) NOT NULL,
  `order_number` int(11) NOT NULL,
  `store_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `campaign` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `budget` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `campaign_style` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clicks` int(11) DEFAULT NULL,
  `impression` int(11) DEFAULT NULL,
  `ctr` int(11) DEFAULT NULL,
  `avg_cpc` int(11) DEFAULT NULL,
  `total_cost` int(11) DEFAULT NULL,
  `start_date` date NOT NULL DEFAULT current_timestamp(),
  `end_date` date NOT NULL DEFAULT current_timestamp(),
  `duration_days` int(11) DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `deposit_table`
--

INSERT INTO `deposit_table` (`sid`, `order_number`, `store_name`, `campaign`, `budget`, `status`, `campaign_style`, `clicks`, `impression`, `ctr`, `avg_cpc`, `total_cost`, `start_date`, `end_date`, `duration_days`, `img`) VALUES
(1, 200829001, '喵吉星 Miao Stelle', '發大財', 1000, '暫停', '首頁輪播', 157, 899, 0, 12, 0, '2020-08-31', '2020-09-03', 0, 'photo-1546493918-8bcb44f37c8e.jpeg'),
(2, 200901001, '品墨良行', '憂鬱小生', 1500, '啟用', '首頁輪播', 228, 4125, 0, 17, 0, '2020-09-01', '2020-09-09', 8, 'photo-1551893476-7d5023fef9dc.jpeg'),
(3, 200731002, '小品雅集', '紙膠帶大全', 500, '暫停', '推薦商品', 253, 1121, 0, 9, 0, '2020-07-30', '2020-08-07', 0, 'photo-1551894115-beaa6b8931cc.jpeg'),
(4, 200831003, '小品雅集', '雅集小生活', 1800, '暫停', '首頁輪播', 544, 4746, 0, 8, 0, '2020-08-31', '2020-09-10', 11, 'photo-1554757391-032b3376581c.jpeg'),
(5, 200911001, '小鹿文具所', '小鹿亂撞', 700, '啟用', '推薦商品', 114, 754, 0, 8, 0, '2020-09-11', '2020-09-16', 6, 'photo-1562247527-8b6db642ee3b.jpeg'),
(6, 200903001, '直物生活文具', '衝動購直物', 800, '啟用', '首頁輪播', 419, 2173, 0, 10, 0, '2020-09-17', '2020-09-25', 8, 'photo-1457298483369-0a95d2b17fcd.jpeg'),
(7, 200825001, '木匠兄妹', '大膽雕民', 500, '暫停', '首頁輪播', 143, 1775, 0, 15, 0, '2020-08-25', '2020-08-30', 5, 'photo-1511285605577-4d62fb50d2f7.jpeg'),
(29, 200903001, '小品雅集', '小雅細亞', 500, '暫停', '推薦商品', NULL, NULL, NULL, NULL, NULL, '2020-09-17', '2020-09-25', NULL, 'photo-1546493918-8bcb44f37c8e.jpeg');

-- --------------------------------------------------------

--
-- 資料表結構 `e_points_logs`
--

CREATE TABLE `e_points_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `e_points` int(11) NOT NULL COMMENT '增加為正數，減少為負數',
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `e_points_logs`
--

INSERT INTO `e_points_logs` (`id`, `customer_id`, `e_points`, `note`, `created_at`) VALUES
(1, 2, 12, '', '2020-08-30 16:05:17'),
(2, 3, 165, '', '2020-08-30 16:05:17'),
(3, 1, 29, '', '2020-08-30 16:05:17'),
(4, 2, 66, '', '2020-08-30 16:05:17'),
(5, 1, 99, '', '2020-08-30 16:05:17'),
(6, 1, 33, '', '2020-08-30 16:05:17'),
(7, 1, 25, '', '2020-08-30 16:05:17'),
(8, 2, 30, '', '2020-08-30 16:05:17'),
(9, 3, 28, '', '2020-08-30 16:05:17'),
(10, 2, 15, '', '2020-08-30 16:05:17'),
(11, 2, 15, '', '2020-08-30 16:05:18'),
(12, 2, 66, '', '2020-08-30 16:05:18'),
(13, 1, 29, '', '2020-08-30 16:05:18'),
(14, 1, 29, '', '2020-08-30 16:05:18'),
(15, 2, 16, '', '2020-08-30 16:05:18'),
(16, 3, 23, '', '2020-08-30 16:05:18'),
(17, 2, 32, '', '2020-08-30 16:05:18'),
(18, 3, 16, '', '2020-08-30 16:05:18'),
(19, 2, 26, '', '2020-08-30 16:05:18'),
(20, 2, 8, '', '2020-08-30 16:05:18'),
(21, 3, 22, '', '2020-08-30 16:05:18'),
(22, 3, 15, '', '2020-08-30 16:05:18'),
(23, 1, 8, '', '2020-08-30 16:05:18'),
(24, 3, 22, '', '2020-08-30 16:05:18'),
(25, 1, 23, '', '2020-08-30 16:05:18'),
(26, 3, 15, '', '2020-08-30 16:05:18'),
(27, 2, 16, '', '2020-08-30 16:05:18'),
(28, 1, 8, '', '2020-08-30 16:05:18'),
(29, 3, 66, '', '2020-08-30 16:05:18'),
(30, 3, 8, '', '2020-08-30 16:05:18'),
(31, 2, 66, '', '2020-08-30 16:05:18'),
(32, 2, 18, '', '2020-08-30 16:05:18'),
(33, 2, 8, '', '2020-08-30 16:05:18'),
(34, 3, 198, '', '2020-08-30 16:05:18'),
(35, 2, 66, '', '2020-08-30 16:05:18');

-- --------------------------------------------------------

--
-- 資料表結構 `information`
--

CREATE TABLE `information` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL DEFAULT 100,
  `status` text COLLATE utf8_unicode_ci NOT NULL DEFAULT '重要通知',
  `inform` text COLLATE utf8_unicode_ci NOT NULL,
  `more` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `information`
--

INSERT INTO `information` (`id`, `merchant_id`, `status`, `inform`, `more`) VALUES
(1, 13, '重要通知', '最強優惠預告在這裡❗\r\n馬上打開購物清單，把你的購物車都裝滿\r\n你，準備好立即搶超狂優惠了嗎？', '36大銀行信用卡 最高回饋18.5%\r\n刷卡買儲值 加碼最高回饋16%\r\n愛別講理 送禮吧?\r\n立即前往?http://bit.ly/2YHLIe0\r\n【怎麼買都划算 送禮最高CP值採購攻略】\r\n步驟1 挑選喜歡的禮物 / 儲值金\r\n步驟2 把禮物都放進購物車\r\n步驟3 00點立即結帳優惠通通賺到手'),
(2, 14, '重要通知', '【雙11 絕不退讓 超狂優惠】\r\n通通給我聽好了! 11/3-11/20 P&G年度最下殺！獨家加碼5%回饋！', '11月儲值狂贈千萬加碼金\r\n立即獲得→ https://pse.is/38bpdu\r\n刷指定卡滿5千起最高回饋27%\r\n前往挑戰→ https://pse.is/38gt8p\r\n9大行動支付最高回饋20%\r\n一鍵支付→ https://pse.is/39msjp\r\n不囉嗦! 回饋直接送爆!\r\n你還不搶嗎?'),
(3, 15, '重要通知', '【雙11 絕不退讓 超狂優惠】\r\n通通給我聽好了! 這次只有三個重點~~', '11月儲值狂贈千萬加碼金\r\n立即獲得→ https://pse.is/38bpdu\r\n刷指定卡滿5千起最高回饋27%\r\n前往挑戰→ https://pse.is/38gt8p\r\n9大行動支付最高回饋20%\r\n一鍵支付→ https://pse.is/39msjp\r\n不囉嗦! 回饋直接送爆!\r\n你還不搶嗎?'),
(4, 100, '重要通知', '取貨選全家 拿鐵帶回家(限量)', '活動期間內單筆消費滿$290之全家便利商店取貨訂單，於取件時間內完成取貨，且該筆訂單無任何取消/退貨/退款，並完成登記。(註: 每一帳號限領一次)'),
(5, 100, '重要通知', '票券優惠5%☀ 天天限額最高享11%', '揪過來！揪過來！\r\n景點門票、當地遊券、餐券等任一票券商品，通通享優惠！\r\n\r\n11/01-11/20 訂購票券商品，即可參加下列活動：\r\n\r\n【活動一】買就折！筆筆享5%現折優惠\r\n不限付款方式！不限金額！不限次數！\r\n輸入折扣碼「needs11」即享5%折扣優惠！\r\n\r\n【活動二】比手速！天天限額！最高享11%優惠\r\n連續20天！每日0:00開始限額11名！！！\r\n滿1,111元，輸入折扣碼「needs123」享最高11%優惠！');

-- --------------------------------------------------------

--
-- 資料表結構 `last_id`
--

CREATE TABLE `last_id` (
  `id` int(11) NOT NULL,
  `last_customer` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'C1000',
  `last_merchant` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'M1000',
  `last_merchant_contact` varchar(7) COLLATE utf8_unicode_ci NOT NULL COMMENT 'M1000-1',
  `last_order_number` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '2020100701'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `last_id`
--

INSERT INTO `last_id` (`id`, `last_customer`, `last_merchant`, `last_merchant_contact`, `last_order_number`) VALUES
(1, 'C1021', 'M1016', 'M1016-1', '2020090956');

-- --------------------------------------------------------

--
-- 資料表結構 `member question`
--

CREATE TABLE `member question` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 1,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `member question`
--

INSERT INTO `member question` (`id`, `customer_id`, `question`, `answer`) VALUES
(1, 1, '帳戶被凍結了?', '當系統偵測到帳戶有以下幾種不當使用行為時，帳戶即會遭受凍結：\r\n※ 帳戶使用/交易行為\r\n\r\n詐騙或影響交易安全\r\n\r\n非本人下單\r\n\r\n經認證之手機號碼持續連繫未果\r\n\r\n擾亂平台或使用者之行為\r\n\r\n建立假訂單\r\n- 自買自賣（例：相同姓名、裝置、地址等開分身之行為）\r\n- 洗評價、銷量或者折扣碼、信用卡紅利\r\n\r\n濫用運費補助、折扣碼、E coin'),
(2, 1, 'NEEDS會員制度', 'NEEDS會員升等需同時滿足兩個條件：消費金額與訂單張數(不含退貨、退款或取消訂單)。\r\n消費後的訂單狀態為『完成訂單』時，NEEDS會員可至活動系統查詢累積記錄。\r\n累積消費期效內，消費金額及下單數將持續累加。\r\n(例：若累積消費3,000元及訂單3張，將升等銀NEEDS會員，於銀NEEDS會員的時間內，如再新增消費12,000元並新成立7張訂單，將升等為金NEEDS會員)\r\n2020/10/1起，積分將重新計算，原會員等級可延續至2020/12/31。\r\n於2021/1/1之會員籍別，將依2020/10月 ~ 2020/12月累積之訂單與消費金額為準。'),
(3, 1, '生日折價券該如何獲得？', '只要您加入會員，並確認生日資訊填寫完整，在您當月生日的前3天 (如4/15生日，會在3/29發送)，系統就會自動發送2張生日折價券給您。\r\n※一年僅限獲得一次'),
(4, 1, '如何修改個人資料?', '請點選官網右上的「會員」後點選左邊的「我的帳號」\r\n即可編輯會員資料'),
(5, 1, '商品問題如何發問？', '請您在欲發問的商品頁面, 點選右方按鈕即可即時詢問客服 ');

-- --------------------------------------------------------

--
-- 資料表結構 `merchants`
--

CREATE TABLE `merchants` (
  `id` int(10) UNSIGNED NOT NULL,
  `merchant_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `brand_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand_en_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_id` int(8) DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `merchants`
--

INSERT INTO `merchants` (`id`, `merchant_id`, `brand_name`, `brand_en_name`, `company_name`, `tax_id`, `tel`, `address`, `created_at`, `updated_at`) VALUES
(1, 'M1000', '一分之一工作室', 'oneoveronestudio', '', 75903607, '', '', '2020-09-07 12:05:13', '2020-09-07 12:05:13'),
(2, 'M1001', '喵吉星 Miao Stelle', 'miaostelle', '', NULL, '', '', '2020-09-07 12:05:13', '2020-09-07 12:05:13'),
(3, 'M1002', '禮拜文房具', 'toolstoliveby', '禮拜文房具有限公司', 53943107, '02-27099804', '臺北市大安區安和路2段64號3樓', '2020-09-07 12:05:13', '2020-09-07 12:05:13'),
(4, 'M1003', '小品雅集', 'tylee', '小品雅集社', 41072549, '02-27079737', '台北市大安區復興南路二段78巷76 號1樓', '2020-09-07 12:05:13', '2020-09-07 12:05:13'),
(5, 'M1004', '直物生活文具', 'plain', '直物生活文具店', 31947446, '0975-875120', '台北市中正區羅斯福路三段210巷8弄10號', '2020-09-07 12:05:13', '2020-09-07 12:05:13'),
(6, 'M1005', '愛治文具房', 'aiyabungu', '愛治文具房', 72445468, '', '彰化縣彰化市長安街76巷7-2號1樓', '2020-09-07 12:05:13', '2020-09-07 12:05:13'),
(7, 'M1006', '小鹿文具所', 'deerforest', '小鹿文具所', 72740779, '', '桃園市桃園區新民街50號', '2020-09-07 12:05:13', '2020-09-07 12:05:13'),
(8, 'M1007', '嗨賴文具', 'highlights1992', '嗨賴文具工作室', 82234977, '0965-662321', '新竹市北區江山街26-2號', '2020-09-07 12:05:13', '2020-09-07 12:05:13'),
(9, 'M1008', '木匠兄妹', 'carpenter', '木匠兄妹科技有限公司', 27851290, '02-2555-9908', '台中市后里區舊圳路4-12號', '2020-09-07 12:05:13', '2020-09-07 12:05:13'),
(10, 'M1009', '品墨良行', 'pinmo', '品墨設計工作室', NULL, '02-23968366', '台北市大安區潮州街94號2樓', '2020-09-07 12:05:13', '2020-09-07 12:05:13'),
(11, 'M1010', 'A PIECE(S) OF PAPER', 'apiecesofpaper', '', NULL, '02-27099804', '', '2020-10-08 17:33:29', '2020-10-08 17:33:29'),
(12, 'M1012', '松果手感\r\nPomme De Pin', 'pommedepin111', '松果手感', NULL, '02-27099804', '台北市信義區虎林街232巷66弄2號2樓', '2020-10-08 17:38:19', '2020-10-08 17:38:19'),
(13, 'M1013', 'MUKU工房', 'M1013', '', NULL, '', '', '2020-11-03 07:16:22', '2020-11-03 07:16:22'),
(14, 'M1014', 'DIMANCHE', 'M1014', '', NULL, '', '', '2020-11-03 07:16:22', '2020-11-03 07:16:22'),
(15, 'M1015', 'MISTER', 'M1015', '', NULL, '', '', '2020-11-03 20:56:42', '2020-11-03 07:16:22'),
(100, '100', 'NEEDS', '', '', NULL, '', '', '2020-11-04 13:22:54', '2020-11-04 13:22:54');

-- --------------------------------------------------------

--
-- 資料表結構 `merchant_contacts`
--

CREATE TABLE `merchant_contacts` (
  `id` int(11) NOT NULL,
  `merchant_contact_id` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `merchant_contacts`
--

INSERT INTO `merchant_contacts` (`id`, `merchant_contact_id`, `merchant_id`, `name`, `mobile`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'M1001-1', 1, 'Petty Lin', '', 'plin@qmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2020-10-29 23:23:54', '2020-10-29 23:23:54'),
(2, 'M1003-1', 4, 'Iris Chang', '', 'ichang@qmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2020-09-07 12:06:49', '2020-09-07 12:06:49'),
(3, 'M1004-1', 5, 'Tiffany Wang', '', 'twang@qmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2020-09-07 12:06:49', '2020-09-07 12:06:49'),
(4, 'M1005-1', 6, 'Angela Lee', '', 'alee@qmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2020-09-07 12:06:49', '2020-09-07 12:06:49'),
(5, 'M1006-1', 7, 'Mandy Chen', '', 'mchen@qmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2020-09-07 12:06:49', '2020-09-07 12:06:49'),
(6, 'M1007-1', 8, 'Ruby Yo', '', 'ryo@qmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2020-09-07 12:06:49', '2020-09-07 12:06:49'),
(7, 'M1008-1', 9, 'Lily Wen', '', 'lwen@qmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2020-09-07 12:06:49', '2020-09-07 12:06:49'),
(8, 'M1009-1', 10, 'Amada Haung', '', 'ahaung@qmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2020-09-07 12:06:49', '2020-09-07 12:06:49'),
(9, 'M1011-1', 12, 'Flora Tsai', '', 'ftsai@qmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2020-10-08 17:41:29', '2020-10-08 17:41:29'),
(13, 'M1014-1', 13, 'Snoopy Chou', '0911222333', 'schou@qmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2020-11-03 07:16:22', '2020-11-03 07:16:22'),
(14, 'M1016-1', 101, 'gggg', '09102890380', 'hkjkl@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2020-11-12 11:34:28', '2020-11-12 11:34:28');

-- --------------------------------------------------------

--
-- 資料表結構 `merchant_data`
--

CREATE TABLE `merchant_data` (
  `id` int(11) NOT NULL,
  `merchant_id` varchar(11) NOT NULL,
  `number_fans` int(11) NOT NULL,
  `number_browse` int(11) NOT NULL,
  `number_order` int(11) NOT NULL,
  `number_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `merchant_data`
--

INSERT INTO `merchant_data` (`id`, `merchant_id`, `number_fans`, `number_browse`, `number_order`, `number_date`) VALUES
(1, 'M1002', 35, 899, 22, '2020-11-01'),
(2, 'M1002', 24, 642, 34, '2020-11-02'),
(3, 'M1002', 30, 777, 38, '2020-11-03'),
(4, 'M1002', 44, 872, 50, '2020-11-04'),
(5, 'M1002', 25, 445, 19, '2020-11-05'),
(6, 'M1002', 28, 516, 25, '2020-11-06'),
(7, 'M1002', 54, 542, 12, '2020-10-31');

-- --------------------------------------------------------

--
-- 資料表結構 `merchant_income_week`
--

CREATE TABLE `merchant_income_week` (
  `id` int(11) NOT NULL,
  `merchant_id` varchar(11) NOT NULL,
  `income` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `merchant_income_week`
--

INSERT INTO `merchant_income_week` (`id`, `merchant_id`, `income`, `date`) VALUES
(1, 'M1002', 156000, '2020-10-25'),
(2, 'M1002', 155420, '2020-10-26'),
(3, 'M1002', 186840, '2020-10-27'),
(4, 'M1002', 142200, '2020-10-28'),
(5, 'M1002', 176300, '2020-10-29'),
(6, 'M1002', 180560, '2020-10-30'),
(7, 'M1002', 168200, '2020-10-31'),
(8, 'M1002', 19578, '2020-11-01'),
(9, 'M1002', 13084, '2020-11-02'),
(10, 'M1002', 17084, '2020-11-03'),
(11, 'M1002', 18950, '2020-11-04'),
(12, 'M1002', 21768, '2020-11-05'),
(13, 'M1002', 16982, '2020-11-06');

-- --------------------------------------------------------

--
-- 資料表結構 `merchant_types`
--

CREATE TABLE `merchant_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `merchant_types`
--

INSERT INTO `merchant_types` (`id`, `type`) VALUES
(1, '生活/文創'),
(2, '服裝/飾品');

-- --------------------------------------------------------

--
-- 資料表結構 `needs_manager`
--

CREATE TABLE `needs_manager` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creat_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `needs_manager`
--

INSERT INTO `needs_manager` (`id`, `name`, `account`, `password`, `department`, `birthday`, `phone_number`, `photo`, `creat_date`) VALUES
(1, '飛天小女警', 'echen', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '營業部', '1991-04-15', '0988383299', '', '2020-09-02 16:43:52'),
(2, '張書山', 'book33', '7c4a8d09ca3762af61e59520943dc26494f8941b', '活動行銷部', '1995-05-15', '0945372838', '', '2020-09-02 16:43:52'),
(3, '涂瀞予', 'alonatu', '7c4a8d09ca3762af61e59520943dc26494f8941b', '銷售部', '1995-07-25', '0920392831', '', '2020-09-02 16:43:52'),
(4, '楊子瑩', 'cherry', '7c4a8d09ca3762af61e59520943dc26494f8941b', '產品部', '1995-08-22', '0998743003', '', '2020-09-02 16:43:52'),
(5, '王薏雯', 'winnie', '60149a289a3623cd214943af2892e103f4bddafb', '行政部', '1993-03-13', '0912876944', '', '2020-09-02 16:43:52'),
(6, '陳柏輝', 'anna', '7c4a8d09ca3762af61e59520943dc26494f8941b', '客服部', '2020-12-10', '0956-567-894', '', '2020-11-04 10:23:34');

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `merchant_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `order_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'YmdHis{id}',
  `delivery_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `e_discount_log_id` int(10) UNSIGNED DEFAULT NULL,
  `discount` double DEFAULT 0,
  `amount` double NOT NULL,
  `e_bonus_log_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:待付款; 1:待出貨; 2:已出貨; 3:已送達; 4:已取貨; 5:退貨中; 6:已退貨;',
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`id`, `merchant_id`, `customer_id`, `order_number`, `delivery_id`, `payment_id`, `e_discount_log_id`, `discount`, `amount`, `e_bonus_log_id`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '2020083001', 1, 1, 0, 0, 1195, 1, 1, NULL, '2020-08-30 16:05:17', '2020-11-08 14:56:17'),
(2, 3, 3, '2020083002', 2, 2, 0, 0, 16560, 2, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:17'),
(3, 2, 1, '202008303', 3, 3, 0, 0, 2910, 3, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:17'),
(4, 3, 2, '202008304', 4, 4, 0, 0, 6660, 4, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:17'),
(5, 3, 1, '202008305', 5, 5, 0, 0, 9960, 5, 2, '', '2020-08-30 16:05:17', '2020-08-30 16:05:17'),
(6, 1, 1, '202008306', 6, 6, 0, 0, 3320, 6, 1, '', '2020-08-30 16:05:17', '2020-08-30 16:05:17'),
(7, 1, 1, '202008307', 7, 7, 0, 0, 2540, 7, 1, '', '2020-08-30 16:05:17', '2020-08-30 16:05:17'),
(8, 1, 2, '202008308', 8, 8, 0, 0, 3020, 8, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:17'),
(9, 1, 3, '202008309', 9, 9, 0, 0, 2840, 9, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:17'),
(10, 1, 2, '2020083010', 10, 10, 0, 0, 1540, 10, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:17'),
(11, 2, 2, '2020083011', 11, 11, 0, 0, 1485, 11, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(12, 3, 2, '2020083012', 12, 12, 0, 0, 6660, 12, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(13, 2, 1, '2020083013', 13, 13, 0, 0, 2910, 13, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(14, 2, 1, '2020083014', 14, 14, 0, 0, 2910, 14, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(15, 1, 2, '2020083015', 15, 15, 0, 0, 1620, 15, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(16, 2, 3, '2020083016', 16, 16, 0, 0, 2330, 16, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(17, 2, 2, '2020083017', 17, 17, 0, 0, 3200, 17, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(18, 1, 3, '2020083018', 18, 18, 0, 0, 1620, 18, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(19, 1, 2, '2020083019', 19, 19, 0, 0, 2620, 19, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(20, 1, 2, '2020083020', 20, 20, 0, 0, 840, 20, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(21, 1, 3, '2020083021', 21, 21, 0, 0, 2240, 21, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(22, 2, 3, '2020083022', 22, 22, 0, 0, 1485, 22, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(23, 1, 1, '2020083023', 23, 23, 0, 0, 840, 23, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(24, 1, 3, '2020083024', 24, 24, 0, 0, 2240, 24, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(25, 2, 1, '2020083025', 25, 25, 0, 0, 2330, 25, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(26, 2, 3, '2020083026', 26, 26, 0, 0, 1485, 26, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(27, 1, 2, '2020083027', 27, 27, 0, 0, 1620, 27, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(28, 1, 1, '2020083028', 28, 28, 0, 0, 840, 28, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(29, 3, 3, '2020083029', 29, 29, 0, 0, 6660, 29, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(30, 1, 3, '2020083030', 30, 30, 0, 0, 840, 30, 1, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(31, 3, 2, '2020083031', 31, 31, 0, 0, 6660, 31, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(32, 2, 2, '2020083032', 32, 32, 0, 0, 1775, 32, 2, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(33, 1, 2, '2020083033', 33, 33, 0, 0, 840, 33, 1, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(34, 3, 3, '2020083034', 34, 34, 0, 0, 19860, 34, 1, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(35, 3, 2, '2020083035', 35, 35, 0, 0, 6660, 35, 0, '', '2020-08-30 16:05:17', '2020-08-30 16:05:18'),
(46, 1, 1, '2020090746', 46, 46, NULL, 0, 2370, NULL, 0, NULL, '2020-09-07 22:26:52', '2020-09-07 22:26:52'),
(47, 1, 1, '2020090747', 57, 47, NULL, 0, 1029, NULL, 0, NULL, '2020-09-07 22:49:08', '2020-09-07 22:49:08'),
(48, 2, 3, '2020090848', 58, 48, NULL, 0, 1485, NULL, 0, NULL, '2020-09-08 11:39:29', '2020-09-08 11:39:29'),
(55, 12, 3, '2020090955', 55, 55, NULL, 0, 4740, NULL, 1, NULL, '2020-09-09 14:44:27', '2020-09-09 14:44:27'),
(56, 12, 1, '2020090956', 56, 56, NULL, 0, 6610, NULL, 0, NULL, '2020-09-09 16:19:36', '2020-09-09 16:19:36'),
(61, 0, 0, '', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '2020-10-31 10:35:01', '2020-10-31 10:35:01'),
(64, 12, 3, '2020110601', 64, 64, NULL, 0, 540, NULL, 1, NULL, '2020-11-06 01:48:59', '2020-11-06 01:48:59'),
(65, 12, 2, '2020110602', 65, 65, NULL, 0, 360, NULL, 3, NULL, '2020-11-06 02:08:07', '2020-11-06 02:08:07'),
(66, 12, 1, '2020110603', NULL, 66, NULL, 0, 1280, NULL, 0, NULL, '2020-11-06 02:53:49', '2020-11-06 02:53:49'),
(67, 12, 2, '2020110604', 66, 67, NULL, 0, 1280, NULL, 4, NULL, '2020-11-06 03:03:56', '2020-11-06 03:03:56'),
(93, 1, 6, '2020110993', 101, 96, NULL, 0, 1620, NULL, 0, NULL, '2020-11-09 21:24:17', '2020-11-09 21:24:17'),
(103, 1, 6, '20201109103', 111, 106, NULL, 0, 1620, NULL, 1, NULL, '2020-11-09 21:54:34', '2020-11-09 14:59:59'),
(104, 1, 6, '20201109104', 112, 107, NULL, 0, 1620, NULL, 0, NULL, '2020-11-09 22:11:44', '2020-11-09 22:11:44'),
(105, 3, 6, '20201109105', 113, 108, NULL, 0, 9900, NULL, 0, NULL, '2020-11-09 22:58:59', '2020-11-09 22:58:59'),
(106, 1, 6, '20201111106', 114, 109, NULL, 0, 840, NULL, 1, NULL, '2020-11-11 14:15:44', '2020-11-11 06:16:07'),
(111, 3, 6, '20201113111', 119, 114, NULL, 0, 9950, NULL, 0, NULL, '2020-11-13 12:49:58', '2020-11-13 12:49:58'),
(112, 3, 6, '20201113112', 120, 115, NULL, 0, 9950, NULL, 0, NULL, '2020-11-13 12:50:10', '2020-11-13 12:50:10'),
(113, 3, 6, '20201113113', 121, 116, NULL, 0, 9950, NULL, 0, NULL, '2020-11-13 12:50:12', '2020-11-13 12:50:12'),
(115, 1, 6, '20201113115', 123, 118, NULL, 0, 840, NULL, 0, NULL, '2020-11-13 13:02:15', '2020-11-13 13:02:15'),
(116, 3, 6, '20201113116', 124, 119, NULL, 0, 3300, NULL, 0, NULL, '2020-11-13 13:02:42', '2020-11-13 13:02:42'),
(117, 1, 6, '20201113117', 125, 120, NULL, 0, 840, NULL, 0, NULL, '2020-11-13 13:04:22', '2020-11-13 13:04:22'),
(118, 3, 6, '20201113118', 126, 121, NULL, 0, 6300, NULL, 0, NULL, '2020-11-13 13:06:22', '2020-11-13 13:06:22'),
(119, 3, 6, '20201113119', 127, 122, NULL, 0, 9950, NULL, 1, NULL, '2020-11-13 13:10:27', '2020-11-13 05:10:49'),
(120, 3, 6, '20201113120', 128, 123, NULL, 0, 31500, NULL, 1, NULL, '2020-11-13 13:44:19', '2020-11-13 05:44:53'),
(121, 3, 6, '20201113121', 129, 124, NULL, 0, 3300, NULL, 1, NULL, '2020-11-13 15:37:12', '2020-11-13 07:37:41'),
(122, 3, 1, '20201116122', 130, 125, NULL, 0, 16550, NULL, 1, NULL, '2020-11-16 00:36:45', '2020-11-15 16:37:14');

-- --------------------------------------------------------

--
-- 資料表結構 `order_deliveries`
--

CREATE TABLE `order_deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0 COMMENT '0: 備貨中; 1: 已發貨; 2: 已送達; 3: 已取貨; 4: 退貨中; 5: 已退貨;\r\n6: 無配送'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `order_deliveries`
--

INSERT INTO `order_deliveries` (`id`, `type`, `price`, `full_name`, `address`, `phone_number`, `note`, `status`) VALUES
(1, '宅配', 60, '喻蓉文', '287-01 屏東縣南州鄉崇陽街956巷200號', '0911222333', '', 3),
(2, '宅配', 60, '糜嘉怡', '795 新竹市東區豐盛路二段735巷599號', '0911222333', '', 3),
(3, '7-11', 60, '瞿佩思', '667 連江縣北竿鄉北濱路八段120巷978號', '0911222333', '', 0),
(4, '宅配', 60, '喻蓉文', '315 新竹縣湖口鄉裕孝三路822巷447弄879號', '0911222333', '', 4),
(5, '宅配', 60, '瞿佩思', '485-16 南投縣仁愛鄉涵碧街八段553巷501弄105號', '0911222333', '', 6),
(6, '7-11', 60, '瞿佩思', '259-00 南投縣集集鎮興竹路五段159巷470號58樓', '0911222333', '', 3),
(7, '宅配', 60, '瞿佩思', '118-40 宜蘭縣頭城鎮文萊街五段554巷666弄609號27樓', '0911222333', '', 3),
(8, '宅配', 60, '喻蓉文', '918-02 連江縣北竿鄉大平街236巷157弄50號', '0911222333', '', 2),
(9, '7-11', 60, '糜嘉怡', '704-45 臺中市后里區天泉一路三段51巷113號', '0911222333', '', 0),
(10, '7-11', 60, '喻蓉文', '762-35 嘉義縣大埔鄉長園二街八段51號', '0911222333', '', 2),
(11, '宅配', 60, '喻蓉文', '613-60 新竹市東區幸福五街八段795巷471號77樓', '0911222333', '', 0),
(12, '宅配', 60, '喻蓉文', '695 臺南市白河區中山西路479號88樓', '0911222333', '', 0),
(13, '7-11', 60, '瞿佩思', '052-60 澎湖縣白沙鄉水汴一街260巷887弄202號', '0911222333', '', 0),
(14, '7-11', 60, '瞿佩思', '348-11 屏東縣佳冬鄉東信路107號', '0911222333', '', 0),
(15, '宅配', 60, '喻蓉文', '096 花蓮縣新城鄉永勝街三段366巷602號', '0911222333', '', 0),
(16, '7-11', 60, '糜嘉怡', '190 新竹市香山區久安二街269巷62弄603號96樓', '0911222333', '', 0),
(17, '宅配', 60, '喻蓉文', '864-97 連江縣南竿鄉南勢十街八段448巷375弄844號', '0911222333', '', 0),
(18, '7-11', 60, '糜嘉怡', '134 彰化縣大城鄉國慶路57巷720號33樓', '0911222333', '', 0),
(19, '7-11', 60, '喻蓉文', '533-84 桃園市平鎮區太原三路七段589巷4弄290號', '0911222333', '', 0),
(20, '宅配', 60, '喻蓉文', '390-65 花蓮縣富里鄉立功路五段7號50樓', '0911222333', '', 0),
(21, '宅配', 60, '糜嘉怡', '457 苗栗縣大湖鄉光華六街八段390巷102弄861號', '0911222333', '', 0),
(22, '宅配', 60, '糜嘉怡', '356-25 新北市汐止區平生路961號', '0911222333', '', 0),
(23, '7-11', 60, '瞿佩思', '339-80 苗栗縣造橋鄉嘉安八路八段10號', '0911222333', '', 0),
(24, '宅配', 60, '糜嘉怡', '316 嘉義縣東石鄉崇陽街968巷511號', '0911222333', '', 0),
(25, '宅配', 60, '瞿佩思', '083 高雄市橋頭區復華四路432巷487弄44號56樓', '0911222333', '', 0),
(26, '宅配', 60, '糜嘉怡', '402 高雄市內門區新興海埔地五路150號', '0911222333', '', 0),
(27, '7-11', 60, '喻蓉文', '136-20 屏東縣東港鎮新北六路七段686巷885弄483號95樓', '0911222333', '', 0),
(28, '宅配', 60, '瞿佩思', '707-86 桃園市中壢區坤成路二段965巷892弄356號93樓', '0911222333', '', 0),
(29, '宅配', 60, '糜嘉怡', '630-10 臺北市士林區蘇港路二段128號', '0911222333', '', 0),
(30, '宅配', 60, '糜嘉怡', '356-08 臺中市大甲區土地公嶺路二段819巷381號10樓', '0911222333', '', 5),
(31, '7-11', 60, '喻蓉文', '987 連江縣北竿鄉重化街二段557巷112弄100號', '0911222333', '', 4),
(32, '7-11', 60, '喻蓉文', '727 金門縣金城鎮文學街七段461號', '0911222333', '', 6),
(33, '7-11', 60, '喻蓉文', '932-97 桃園市龜山區雙十街五段72巷609號', '0911222333', '', 5),
(34, '宅配', 60, '糜嘉怡', '262-05 金門縣金寧鄉廣安二街三段962巷864號', '0911222333', '', 3),
(35, '宅配', 60, '喻蓉文', '757-71 嘉義縣新港鄉大庄村田中路九段106巷159弄344號82樓', '0911222333', '', 2),
(55, '宅配', 60, '糜嘉怡', '356-08 臺中市大甲區土地公嶺路二段819巷381號10樓', '0940843739', NULL, 0),
(56, '宅配', 60, '瞿佩思', '339-80 苗栗縣造橋鄉嘉安八路八段10號', '0912325288', NULL, 2),
(58, '宅配', 60, '糜嘉怡', '630-10 臺北市士林區蘇港路二段128號', '0937333389', NULL, 0),
(64, '宅配', 60, '糜嘉怡', '630-10 臺北市士林區蘇港路二段128號', '0937333388', NULL, 1),
(65, '7-11', 60, '喻蓉文', '932-97 桃園市龜山區雙十街五段72巷609號', '0938575819', NULL, 3),
(66, '宅配', 0, '喻蓉文', '932-97 桃園市龜山區雙十街五段72巷609號', '0938-57-5819', NULL, 0),
(101, '宅配', 60, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(111, '宅配', 60, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(112, '宅配', 60, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(113, '宅配', 0, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(114, '宅配', 60, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(115, '宅配', 0, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(116, '宅配', 0, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(117, '宅配', 0, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(119, '宅配', 0, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(120, '宅配', 0, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(121, '宅配', 0, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(122, '宅配', 0, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(123, '宅配', 60, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(124, '宅配', 0, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(125, '宅配', 60, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(126, '宅配', 0, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(127, '宅配', 0, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(128, '宅配', 0, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(129, '宅配', 0, '林璟雯', '新北市中和區泰安里041鄰景安路５８號', '0988765987', '', 0),
(130, '宅配', 0, '瞿佩思', '雲林縣莿桐鄉埔尾村004鄰油車７０之３號', '0987766765', '', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `order_evaluations`
--

CREATE TABLE `order_evaluations` (
  `comment_id` int(11) UNSIGNED NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `buyer_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `seller_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `order_evaluations`
--

INSERT INTO `order_evaluations` (`comment_id`, `merchant_id`, `product_id`, `customer_id`, `order_id`, `star`, `buyer_message`, `seller_message`) VALUES
(1, 2, 2, 2, '1', 4, '老闆人很好，出貨迅速，商品品質也很好，老闆很好說話，回覆也很即時，購買經驗愉快！', '小店每天最開心的事莫過於看到親的好評，親的好評就像是清泉一樣滋潤我們的心田，小店會更加的珍惜親的好評，不斷的改進自己，完善自己，力求讓小店的服務做得更好，店鋪做得更大，也是為了讓親能夠更好的更快的買到自己的喜歡的寶貝。你的好評就是對我們最大的肯定和鼓勵，希望親再次關顧我們的店鋪，檢驗小店的進步。'),
(2, 2, 2, 12, '15', 4, NULL, '小店每天最開心的事莫過於看到親的好評，親的好評就像是清泉一樣滋潤我們的心田，小店會更加的珍惜親的好評，不斷的改進自己，完善自己，力求讓小店的服務做得更好，店鋪做得更大，也是為了讓親能夠更好的更快的買到自己的喜歡的寶貝。你的好評就是對我們最大的肯定和鼓勵，希望親再次關顧我們的店鋪，檢驗小店的進步。'),
(3, 3, 5, 2, '1', 4, NULL, NULL),
(4, 2, 2, 13, '16', 4, NULL, '小店每天最開心的事莫過於看到親的好評，親的好評就像是清泉一樣滋潤我們的心田，小店會更加的珍惜親的好評，不斷的改進自己，完善自己，力求讓小店的服務做得更好，店鋪做得更大，也是為了讓親能夠更好的更快的買到自己的喜歡的寶貝。你的好評就是對我們最大的肯定和鼓勵，希望親再次關顧我們的店鋪，檢驗小店的進步。'),
(5, 3, 5, 14, '17', 4, '出貨速度ok,信任的賣家,包裝超級仔細,值得信賴和推薦,大推~大推~讚！讚！', '多麼焦急的等待就是為了看到現在的結果，親的好評對小店來說是多麼重要，它是對小店服務的肯定，更是對小店工作的默默支持，它不僅激發了小店追求更高標準的潛力，也是對小店最大的報酬，讓小店感覺到一切的付出都是那麼的值得，感謝親的支持，相信小店會做的更好，因為有親。也希望親時刻記得有小店這樣的一位期待者在期待親的再次光臨！'),
(6, 13, 6, 1, '3', 5, '出貨快速，包裝密實，品質不錯，價格實惠，容易安排，值得推薦。', '非常感謝親對小店的支持，希望親永遠記得有親陪伴在你的身邊，小店時刻準備著再次為親服務。'),
(7, 15, 3, 1, '3', 4, NULL, '再一次感謝親對小店的支持，希望親永遠記得有親陪伴在你的身邊，小店時刻準備著再次為親服務。'),
(8, 14, 4, 1, '3', 5, NULL, NULL),
(9, 2, 2, 10, '4', 4, '包裝完整，品項良好沒有缺損或異常，而且寄貨迅速，兩三天就到了，到貨會貼心提醒，值得推薦的好賣家喔！！！！\r\n', '小店每天最開心的事莫過於看到親的好評，親的好評就像是清泉一樣滋潤我們的心田，小店會更加的珍惜親的好評，不斷的改進自己，完善自己，力求讓小店的服務做得更好，店鋪做得更大，也是為了讓親能夠更好的更快的買到自己的喜歡的寶貝。你的好評就是對我們最大的肯定和鼓勵，希望親再次關顧我們的店鋪，檢驗小店的進步。'),
(10, 4, 4, 8, '6', 5, '收到，品質不錯，與賣家描述的一致、滿意，符合期望值～～下次還會需要會在來買的～很優質的賣家。\r\n', '再一次感謝親對小店的支持，希望親永遠記得有親陪伴在你的身邊，小店時刻準備著再次為親服務。'),
(11, 2, 4, 9, '5', 4, '出貨速度很快，商品品質很棒，包裝完整，很滿意，有機會會再回購！\r\n', '小店每天最開心的事莫過於看到親的好評，親的好評就像是清泉一樣滋潤我們的心田，小店會更加的珍惜親的好評，不斷的改進自己，完善自己，力求讓小店的服務做得更好，店鋪做得更大，也是為了讓親能夠更好的更快的買到自己的喜歡的寶貝。你的好評就是對我們最大的肯定和鼓勵，希望親再次關顧我們的店鋪，檢驗小店的進步。'),
(12, 1, 2, 7, '7', 5, '質感不錯，賣家出貨快速，推薦購買～～～CP值高～～～推推，好用\r\n', '當小店看到好評的那一瞬間，我感動了，因為親的肯定就是對小店最大的支持和鼓勵。親的好評對小店來說就是一盞明燈，時刻指引著小店向更高的標準前進，為了達到親的更高要求，小店時刻不斷的改正、完善自己，這也是對小店可愛的顧客----你---最大的回報。小店時刻會記得親的支持，希望親也記得有一個期待者在時刻期待你的再次光臨。'),
(13, 1, 3, 7, '7', 4, '買了很多次他家的東西了，出貨速度很快，產品也沒什麼問題\r\n', '當小店看到好評的那一瞬間，我感動了，因為親的肯定就是對小店最大的支持和鼓勵。親的好評對小店來說就是一盞明燈，時刻指引著小店向更高的標準前進，為了達到親的更高要求，小店時刻不斷的改正、完善自己，這也是對小店可愛的顧客----你---最大的回報。小店時刻會記得親的支持，希望親也記得有一個期待者在時刻期待你的再次光臨。'),
(14, 1, 2, 5, '12', 5, '商品質感不錯，幾乎跟照片一樣，出貨速度也很快，可以值得再回購的店家。\r\n', '當小店看到好評的那一瞬間，我感動了，因為親的肯定就是對小店最大的支持和鼓勵。親的好評對小店來說就是一盞明燈，時刻指引著小店向更高的標準前進，為了達到親的更高要求，小店時刻不斷的改正、完善自己，這也是對小店可愛的顧客----你---最大的回報。小店時刻會記得親的支持，希望親也記得有一個期待者在時刻期待你的再次光臨。'),
(15, 1, 2, 6, '13', 4, '超快就收到東西很便宜，顏色也很漂亮，非常實用，還會再回購是個好賣家\r\n', '當小店看到好評的那一瞬間，我感動了，因為親的肯定就是對小店最大的支持和鼓勵。親的好評對小店來說就是一盞明燈，時刻指引著小店向更高的標準前進，為了達到親的更高要求，小店時刻不斷的改正、完善自己，這也是對小店可愛的顧客----你---最大的回報。小店時刻會記得親的支持，希望親也記得有一個期待者在時刻期待你的再次光臨。'),
(16, 3, 3, 3, '10', 5, '超讚的出貨速度，超讚的服務和賣家包裝非常仔細，超讚的商品，謝謝\r\n', '多麼焦急的等待就是為了看到現在的結果，親的好評對小店來說是多麼重要，它是對小店服務的肯定，更是對小店工作的默默支持，它不僅激發了小店追求更高標準的潛力，也是對小店最大的報酬，讓小店感覺到一切的付出都是那麼的值得，感謝親的支持，相信小店會做的更好，因為有親。也希望親時刻記得有小店這樣的一位期待者在期待親的再次光臨！'),
(17, 3, 2, 3, '10', 4, '寄貨速度快，收到商品跟圖片一模一樣，物超所值，有需要會在回購\r\n', '多麼焦急的等待就是為了看到現在的結果，親的好評對小店來說是多麼重要，它是對小店服務的肯定，更是對小店工作的默默支持，它不僅激發了小店追求更高標準的潛力，也是對小店最大的報酬，讓小店感覺到一切的付出都是那麼的值得，感謝親的支持，相信小店會做的更好，因為有親。也希望親時刻記得有小店這樣的一位期待者在期待親的再次光臨！'),
(18, 2, 3, 4, '11', 5, '小巧美觀，很適合放在包包裡，方便很多，謝謝老闆，非常時期出門寄貨，速度很快', '每次的好評都讓小店感動，小店會更加珍惜！也感謝親給小店提出寶貴的建議，小店會更加努力提供一個優質服務的平台，讓您購得放心。'),
(19, 3, 2, 4, '11', 5, '讚讚讚的好賣家，超讚的出貨速度，商品品質是很棒的，下次有機會還會再回購，3Q~\r\n', '多麼焦急的等待就是為了看到現在的結果，親的好評對小店來說是多麼重要，它是對小店服務的肯定，更是對小店工作的默默支持，它不僅激發了小店追求更高標準的潛力，也是對小店最大的報酬，讓小店感覺到一切的付出都是那麼的值得，感謝親的支持，相信小店會做的更好，因為有親。也希望親時刻記得有小店這樣的一位期待者在期待親的再次光臨！'),
(20, 2, 3, 5, '9', 4, '品質很好 有機會會在回購\r\n', '每次的好評都讓小店感動，小店會更加珍惜！也感謝親給小店提出寶貴的建議，小店會更加努力提供一個優質服務的平台，讓您購得放心。'),
(21, 3, 3, 5, '9', 3, '速度比想像中快，CP值很不錯，雖然購買的東西不多，但賣家還是很用心的包裝(裡面的塑膠保護墊比商品還要多哈哈)如果有需要，會再度光臨！賣家辛苦了！\r\n', '多麼焦急的等待就是為了看到現在的結果，親的好評對小店來說是多麼重要，它是對小店服務的肯定，更是對小店工作的默默支持，它不僅激發了小店追求更高標準的潛力，也是對小店最大的報酬，讓小店感覺到一切的付出都是那麼的值得，感謝親的支持，相信小店會做的更好，因為有親。也希望親時刻記得有小店這樣的一位期待者在期待親的再次光臨！'),
(22, 2, 3, 7, '14', 4, '老闆人很好，出貨迅速，商品品質也很好，老闆很好說話，回覆也很即時，購買經驗愉快！', '每次的好評都讓小店感動，小店會更加珍惜！也感謝親給小店提出寶貴的建議，小店會更加努力提供一個優質服務的平台，讓您購得放心。'),
(23, 2, 3, 12, '15', 5, '真的很棒的出貨品 速度也算快 佛心賣家\r\n', '每次的好評都讓小店感動，小店會更加珍惜！也感謝親給小店提出寶貴的建議，小店會更加努力提供一個優質服務的平台，讓您購得放心。'),
(24, 2, 4, 13, '16', 3, '讚讚讚的好賣家，超讚的出貨速度，商品品質是很棒的，下次有機會還會再回購，3Q~\r\n', '每次的好評都讓小店感動，小店會更加珍惜！也感謝親給小店提出寶貴的建議，小店會更加努力提供一個優質服務的平台，讓您購得放心。'),
(25, 2, 2, 14, '17', 5, NULL, '每次的好評都讓小店感動，小店會更加珍惜！也感謝親給小店提出寶貴的建議，小店會更加努力提供一個優質服務的平台，讓您購得放心。'),
(26, 2, 1, 10, '18', 5, '讚讚讚的好賣家，超讚的出貨速度，商品品質是很棒的，下次有機會還會再回購，3Q~\r\n', '每次的好評都讓小店感動，小店會更加珍惜！也感謝親給小店提出寶貴的建議，小店會更加努力提供一個優質服務的平台，讓您購得放心。'),
(27, 4, 6, 11, '2', 5, '出貨快速，包裝密實，品質不錯，價格實惠，容易安排，值得推薦。', '再一次感謝親對小店的支持，希望親永遠記得有親陪伴在你的身邊，小店時刻準備著再次為親服務。'),
(28, 4, 3, 6, '8', 4, '老闆人很好，出貨迅速，商品品質也很好，老闆很好說話，回覆也很即時，購買經驗愉快！', '再一次感謝親對小店的支持，希望親永遠記得有親陪伴在你的身邊，小店時刻準備著再次為親服務。'),
(29, 3, 3, 6, '8', 5, '質感優質 推~', '多麼焦急的等待就是為了看到現在的結果，親的好評對小店來說是多麼重要，它是對小店服務的肯定，更是對小店工作的默默支持，它不僅激發了小店追求更高標準的潛力，也是對小店最大的報酬，讓小店感覺到一切的付出都是那麼的值得，感謝親的支持，相信小店會做的更好，因為有親。也希望親時刻記得有小店這樣的一位期待者在期待親的再次光臨！');

-- --------------------------------------------------------

--
-- 資料表結構 `order_payments`
--

CREATE TABLE `order_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1: 信用卡; 2: ATM;3:貨到付款',
  `status` tinyint(4) NOT NULL COMMENT '0: 未付款; 1: 已付款; 2: 退款中; 3: 已退款;\r\n4: 付款失敗',
  `paid_time` datetime DEFAULT NULL,
  `atm_virtual_account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `atm_expired_at` datetime DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `order_payments`
--

INSERT INTO `order_payments` (`id`, `type`, `status`, `paid_time`, `atm_virtual_account`, `atm_expired_at`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2020-11-09 03:05:00', NULL, NULL, '{\"Status\":\"SUCCESS\",\"Message\":\"授權成功\",\"Result\":{\"MerchantID\":\"MS116335033\",\"Amt\":1195,\"TradeNo\":\"20110911045130329\",\"MerchantOrderNo\":\"1604890545790\",\"RespondType\":\"JSON\",\"IP\":\"36.228.143.32\",\"EscrowBank\":\"HNCB\",\"PaymentType\":\"CREDIT\",\"PayTime\":\"2020-11-0911:04:51\",\"RespondCode\":\"00\",\"Auth\":\"581785\",\"Card6No\":\"400022\",\"Card4No\":\"1111\",\"Exp\":\"2502\",\"TokenUseStatus\":0,\"InstFirst\":0,\"InstEach\":0,\"Inst\":0,\"ECI\":\"\",\"PaymentMethod\":\"CREDIT\"}}', '2020-08-30 16:05:17', '2020-11-09 03:05:00'),
(2, 3, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:17', '2020-08-30 16:05:17'),
(3, 1, 1, NULL, NULL, NULL, NULL, '2020-08-30 16:05:17', '2020-08-30 16:05:17'),
(4, 1, 2, NULL, NULL, NULL, NULL, '2020-08-30 16:05:17', '2020-08-30 16:05:17'),
(5, 3, 4, NULL, NULL, NULL, NULL, '2020-08-30 16:05:17', '2020-08-30 16:05:17'),
(6, 2, 1, NULL, NULL, NULL, NULL, '2020-08-30 16:05:17', '2020-08-30 16:05:17'),
(7, 1, 1, NULL, NULL, NULL, NULL, '2020-08-30 16:05:17', '2020-08-30 16:05:17'),
(8, 1, 1, NULL, NULL, NULL, NULL, '2020-08-30 16:05:17', '2020-08-30 16:05:17'),
(9, 2, 4, NULL, NULL, NULL, NULL, '2020-08-30 16:05:17', '2020-08-30 16:05:17'),
(10, 2, 1, NULL, NULL, NULL, NULL, '2020-08-30 16:05:17', '2020-08-30 16:05:17'),
(11, 3, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(12, 3, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(13, 2, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(14, 2, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(15, 3, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(16, 2, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(17, 3, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(18, 2, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(19, 2, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(20, 1, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(21, 3, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(22, 1, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(23, 2, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(24, 3, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(25, 1, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(26, 3, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(27, 2, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(28, 1, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(29, 3, 0, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(30, 3, 3, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(31, 2, 2, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(32, 2, 4, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(33, 2, 3, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(34, 3, 1, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(35, 1, 1, NULL, NULL, NULL, NULL, '2020-08-30 16:05:18', '2020-08-30 16:05:18'),
(46, 2, 1, NULL, NULL, NULL, NULL, '2020-09-07 22:26:52', '2020-09-07 22:26:52'),
(47, 2, 0, NULL, NULL, NULL, NULL, '2020-09-07 22:49:08', '2020-09-07 22:49:08'),
(55, 1, 1, NULL, NULL, NULL, NULL, '2020-09-09 14:44:27', '2020-09-09 14:44:27'),
(56, 2, 0, NULL, NULL, NULL, NULL, '2020-09-08 11:39:29', '2020-09-08 11:39:29'),
(64, 1, 1, NULL, NULL, NULL, NULL, '2020-09-09 16:19:36', '2020-09-09 16:19:36'),
(65, 2, 0, NULL, NULL, NULL, NULL, '2020-11-06 02:07:04', '2020-11-06 02:07:04'),
(66, 2, 0, NULL, NULL, NULL, NULL, '2020-11-06 03:00:23', '2020-11-06 03:00:23'),
(67, 3, 0, NULL, NULL, NULL, NULL, '2020-11-06 03:03:06', '2020-11-06 03:03:06'),
(96, 1, 0, NULL, NULL, NULL, NULL, '2020-11-09 21:24:17', '2020-11-09 21:24:17'),
(106, 1, 2, '2020-11-09 15:00:08', NULL, NULL, '{\"Status\":\"SUCCESS\",\"Message\":\"授權成功\",\"Result\":{\"MerchantID\":\"MS116335033\",\"Amt\":1620,\"TradeNo\":\"20110922595581333\",\"MerchantOrderNo\":\"1604933939572\",\"RespondType\":\"JSON\",\"IP\":\"36.228.143.32\",\"EscrowBank\":\"HNCB\",\"PaymentType\":\"CREDIT\",\"PayTime\":\"2020-11-0922:59:55\",\"RespondCode\":\"00\",\"Auth\":\"584266\",\"Card6No\":\"400022\",\"Card4No\":\"1111\",\"Exp\":\"2202\",\"TokenUseStatus\":0,\"InstFirst\":0,\"InstEach\":0,\"Inst\":0,\"ECI\":\"\",\"PaymentMethod\":\"CREDIT\"}}', '2020-11-09 21:54:34', '2020-11-09 15:00:08'),
(107, 1, 0, NULL, NULL, NULL, NULL, '2020-11-09 22:11:44', '2020-11-09 22:11:44'),
(108, 1, 0, NULL, NULL, NULL, NULL, '2020-11-09 22:58:59', '2020-11-09 22:58:59'),
(109, 1, 2, '2020-11-11 06:16:14', NULL, NULL, '{\"Status\":\"SUCCESS\",\"Message\":\"授權成功\",\"Result\":{\"MerchantID\":\"MS116335033\",\"Amt\":840,\"TradeNo\":\"20111114160271093\",\"MerchantOrderNo\":\"1605075344475\",\"RespondType\":\"JSON\",\"IP\":\"36.228.143.32\",\"EscrowBank\":\"HNCB\",\"PaymentType\":\"CREDIT\",\"PayTime\":\"2020-11-1114:16:02\",\"RespondCode\":\"00\",\"Auth\":\"590059\",\"Card6No\":\"400022\",\"Card4No\":\"1111\",\"Exp\":\"2303\",\"TokenUseStatus\":0,\"InstFirst\":0,\"InstEach\":0,\"Inst\":0,\"ECI\":\"\",\"PaymentMethod\":\"CREDIT\"}}', '2020-11-11 14:15:44', '2020-11-11 06:16:14'),
(110, 1, 0, NULL, NULL, NULL, NULL, '2020-11-13 12:08:06', '2020-11-13 12:08:06'),
(111, 1, 0, NULL, NULL, NULL, NULL, '2020-11-13 12:17:32', '2020-11-13 12:17:32'),
(112, 1, 0, NULL, NULL, NULL, NULL, '2020-11-13 12:38:36', '2020-11-13 12:38:36'),
(113, 1, 0, NULL, NULL, NULL, NULL, '2020-11-13 12:44:35', '2020-11-13 12:44:35'),
(114, 1, 0, NULL, NULL, NULL, NULL, '2020-11-13 12:49:58', '2020-11-13 12:49:58'),
(115, 1, 0, NULL, NULL, NULL, NULL, '2020-11-13 12:50:10', '2020-11-13 12:50:10'),
(116, 1, 0, NULL, NULL, NULL, NULL, '2020-11-13 12:50:12', '2020-11-13 12:50:12'),
(117, 1, 0, NULL, NULL, NULL, NULL, '2020-11-13 12:56:55', '2020-11-13 12:56:55'),
(118, 1, 0, NULL, NULL, NULL, NULL, '2020-11-13 13:02:15', '2020-11-13 13:02:15'),
(119, 1, 0, NULL, NULL, NULL, NULL, '2020-11-13 13:02:42', '2020-11-13 13:02:42'),
(120, 1, 0, NULL, NULL, NULL, NULL, '2020-11-13 13:04:22', '2020-11-13 13:04:22'),
(121, 1, 0, NULL, NULL, NULL, NULL, '2020-11-13 13:06:22', '2020-11-13 13:06:22'),
(122, 1, 2, '2020-11-13 05:10:55', NULL, NULL, '{\"Status\":\"SUCCESS\",\"Message\":\"授權成功\",\"Result\":{\"MerchantID\":\"MS116335033\",\"Amt\":9950,\"TradeNo\":\"20111313104556071\",\"MerchantOrderNo\":\"1605244228118\",\"RespondType\":\"JSON\",\"IP\":\"49.216.42.200\",\"EscrowBank\":\"HNCB\",\"PaymentType\":\"CREDIT\",\"PayTime\":\"2020-11-1313:10:45\",\"RespondCode\":\"00\",\"Auth\":\"597904\",\"Card6No\":\"400022\",\"Card4No\":\"1111\",\"Exp\":\"2203\",\"TokenUseStatus\":0,\"InstFirst\":0,\"InstEach\":0,\"Inst\":0,\"ECI\":\"\",\"PaymentMethod\":\"CREDIT\"}}', '2020-11-13 13:10:27', '2020-11-13 05:10:55'),
(123, 1, 2, '2020-11-13 05:44:59', NULL, NULL, '{\"Status\":\"SUCCESS\",\"Message\":\"授權成功\",\"Result\":{\"MerchantID\":\"MS116335033\",\"Amt\":31500,\"TradeNo\":\"20111313444835452\",\"MerchantOrderNo\":\"1605246260229\",\"RespondType\":\"JSON\",\"IP\":\"49.216.42.200\",\"EscrowBank\":\"HNCB\",\"PaymentType\":\"CREDIT\",\"PayTime\":\"2020-11-1313:44:48\",\"RespondCode\":\"00\",\"Auth\":\"598117\",\"Card6No\":\"400022\",\"Card4No\":\"1111\",\"Exp\":\"2301\",\"TokenUseStatus\":0,\"InstFirst\":0,\"InstEach\":0,\"Inst\":0,\"ECI\":\"\",\"PaymentMethod\":\"CREDIT\"}}', '2020-11-13 13:44:19', '2020-11-13 05:44:59'),
(124, 1, 2, '2020-11-13 07:37:48', NULL, NULL, '{\"Status\":\"SUCCESS\",\"Message\":\"授權成功\",\"Result\":{\"MerchantID\":\"MS116335033\",\"Amt\":3300,\"TradeNo\":\"20111315373664475\",\"MerchantOrderNo\":\"1605253033316\",\"RespondType\":\"JSON\",\"IP\":\"49.216.42.200\",\"EscrowBank\":\"HNCB\",\"PaymentType\":\"CREDIT\",\"PayTime\":\"2020-11-1315:37:36\",\"RespondCode\":\"00\",\"Auth\":\"598645\",\"Card6No\":\"400022\",\"Card4No\":\"1111\",\"Exp\":\"2303\",\"TokenUseStatus\":0,\"InstFirst\":0,\"InstEach\":0,\"Inst\":0,\"ECI\":\"\",\"PaymentMethod\":\"CREDIT\"}}', '2020-11-13 15:37:12', '2020-11-13 07:37:48'),
(125, 1, 2, '2020-11-15 16:37:19', NULL, NULL, '{\"Status\":\"SUCCESS\",\"Message\":\"授權成功\",\"Result\":{\"MerchantID\":\"MS116335033\",\"Amt\":16550,\"TradeNo\":\"20111600370912226\",\"MerchantOrderNo\":\"1605458206178\",\"RespondType\":\"JSON\",\"IP\":\"36.228.144.42\",\"EscrowBank\":\"HNCB\",\"PaymentType\":\"CREDIT\",\"PayTime\":\"2020-11-1600:37:09\",\"RespondCode\":\"00\",\"Auth\":\"601726\",\"Card6No\":\"400022\",\"Card4No\":\"1111\",\"Exp\":\"2502\",\"TokenUseStatus\":0,\"InstFirst\":0,\"InstEach\":0,\"Inst\":0,\"ECI\":\"\",\"PaymentMethod\":\"CREDIT\"}}', '2020-11-16 00:36:45', '2020-11-15 16:37:19');

-- --------------------------------------------------------

--
-- 資料表結構 `order_products`
--

CREATE TABLE `order_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_sku_id` int(10) UNSIGNED NOT NULL,
  `unit_price` double NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_sku_id`, `unit_price`, `quantity`) VALUES
(1, 1, 17, 1135, 1),
(2, 2, 1, 3300, 2),
(3, 2, 2, 3300, 2),
(4, 2, 3, 3300, 1),
(5, 3, 17, 1135, 2),
(6, 3, 40, 290, 2),
(7, 4, 1, 3300, 2),
(8, 5, 1, 3300, 1),
(9, 5, 2, 3300, 2),
(10, 6, 14, 780, 2),
(11, 6, 15, 700, 2),
(12, 6, 19, 300, 1),
(13, 7, 14, 780, 1),
(14, 7, 15, 700, 2),
(15, 7, 19, 300, 1),
(16, 8, 14, 780, 2),
(17, 8, 15, 700, 2),
(18, 9, 14, 780, 1),
(19, 9, 15, 700, 2),
(20, 9, 19, 300, 2),
(21, 10, 14, 780, 1),
(22, 10, 15, 700, 1),
(23, 11, 17, 1135, 1),
(24, 11, 40, 290, 1),
(25, 12, 1, 3300, 1),
(26, 12, 2, 3300, 1),
(27, 13, 17, 1135, 2),
(28, 13, 40, 290, 2),
(29, 14, 17, 1135, 2),
(30, 14, 40, 290, 2),
(31, 15, 14, 780, 2),
(32, 16, 17, 1135, 2),
(33, 17, 17, 1135, 2),
(34, 17, 40, 290, 2),
(35, 17, 41, 290, 1),
(36, 18, 14, 780, 2),
(37, 19, 14, 780, 2),
(38, 19, 15, 700, 1),
(39, 19, 19, 300, 1),
(40, 20, 14, 780, 1),
(41, 21, 14, 780, 1),
(42, 21, 15, 700, 2),
(43, 22, 17, 1135, 1),
(44, 22, 40, 290, 1),
(45, 23, 14, 780, 1),
(46, 24, 14, 780, 1),
(47, 24, 15, 700, 2),
(48, 25, 17, 1135, 2),
(49, 26, 17, 1135, 1),
(50, 26, 40, 290, 1),
(51, 27, 14, 780, 2),
(52, 28, 14, 780, 1),
(53, 29, 1, 3300, 2),
(54, 30, 14, 780, 1),
(55, 31, 1, 3300, 2),
(56, 32, 17, 1135, 1),
(57, 32, 40, 290, 1),
(58, 32, 41, 290, 1),
(59, 33, 14, 780, 1),
(60, 34, 1, 3300, 2),
(61, 34, 2, 3300, 2),
(62, 34, 3, 3300, 2),
(63, 35, 1, 3300, 2),
(64, 64, 69, 2500, 1),
(65, 65, 54, 150, 2),
(66, 66, 115, 1280, 1),
(67, 67, 71, 800, 2),
(68, 46, 24, 270, 3),
(69, 47, 14, 780, 1),
(70, 47, 37, 189, 1),
(71, 48, 17, 1135, 1),
(72, 48, 41, 290, 1),
(84, 55, 1, 3300, 1),
(85, 55, 60, 600, 1),
(86, 56, 58, 264, 2),
(87, 56, 21, 250, 1),
(95, 67, 57, 180, 3),
(112, 93, 14, 780, 2),
(122, 103, 14, 780, 2),
(123, 104, 14, 780, 2),
(124, 105, 2, 3300, 3),
(125, 106, 14, 780, 1),
(126, 111, 1, 3300, 1),
(127, 111, 3, 3325, 2),
(128, 112, 1, 3300, 1),
(129, 112, 3, 3325, 2),
(130, 113, 1, 3300, 1),
(131, 113, 3, 3325, 2),
(132, 115, 14, 780, 1),
(133, 116, 1, 3300, 1),
(134, 117, 14, 780, 1),
(135, 118, 5, 6300, 1),
(136, 119, 1, 3300, 1),
(137, 119, 3, 3325, 2),
(138, 120, 5, 6300, 3),
(139, 120, 7, 6300, 2),
(140, 121, 1, 3300, 1),
(141, 122, 1, 3300, 3),
(142, 122, 3, 3325, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `payment_types`
--

CREATE TABLE `payment_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `payment_types`
--

INSERT INTO `payment_types` (`id`, `name`) VALUES
(1, '信用卡'),
(2, 'ATM轉帳'),
(3, '貨到付款');

-- --------------------------------------------------------

--
-- 資料表結構 `plan_type`
--

CREATE TABLE `plan_type` (
  `id` int(11) NOT NULL,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `plan_type`
--

INSERT INTO `plan_type` (`id`, `name`) VALUES
(1, '標準方案'),
(2, '進階方案');

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `merchant_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL,
  `outline` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: 實體商品; 1: 體驗課程',
  `launch_date` date NOT NULL DEFAULT current_timestamp(),
  `e_points_usable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0:不可用\r\n1:可用',
  `availability` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `products`
--

INSERT INTO `products` (`id`, `merchant_id`, `title`, `categories_id`, `outline`, `description`, `image_path`, `type`, `launch_date`, `e_points_usable`, `availability`, `created_at`) VALUES
(1, 3, 'LABAN CAMBRIDGE 劍橋鋼筆', 22, 'Cambridge BKI，簡單外表，黑白映襯。握持在手，提醒自己掌握住人生的原則，心中的那個倔強少年，長久存在。 德國進口鍍金筆尖 筆尖為空運進口不鏽鋼材質，並施以鍍金。刻有品牌名Laban，以及台灣最高峰—玉山標高3952公尺，質感精緻。 純黑筆蓋，黑白筆桿。 經典的樹脂材質，筆桿的象牙白色，飾以淺淡的米褐細紋，獨樹一格的清爽自在。 在筆記上滑暢書寫，文采和人品相應相成，文質彬彬，然後君子。', '<div data-translate=\"description\"><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://live.staticflickr.com/65535/50186401538_21d39b34df_b.jpg\" data-src=\"https://live.staticflickr.com/65535/50186401538_21d39b34df_b.jpg\"><br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://live.staticflickr.com/65535/50187200017_d35312084c_b.jpg\" data-src=\"https://live.staticflickr.com/65535/50187200017_d35312084c_b.jpg\"><br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://live.staticflickr.com/65535/50187200217_dce8cab302_b.jpg\" data-src=\"https://live.staticflickr.com/65535/50187200217_dce8cab302_b.jpg\"><br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://live.staticflickr.com/65535/50186401718_4c2882e914_b.jpg\" data-src=\"https://live.staticflickr.com/65535/50186401718_4c2882e914_b.jpg\"><br><img class=\"m-libs-lazy m-richtext-el m-richtext-img\" src=\"https://cdn04.pinkoi.com/pinkoi.site/space.gif\" data-src=\"https://live.staticflickr.com/65535/50187200232_72363eda08_b.jpg\"><br><img class=\"m-libs-lazy m-richtext-el m-richtext-img\" src=\"https://cdn04.pinkoi.com/pinkoi.site/space.gif\" data-src=\"https://live.staticflickr.com/65535/50186401608_a514d60755_b.jpg\"><br><img class=\"m-libs-lazy m-richtext-el m-richtext-img\" src=\"https://cdn04.pinkoi.com/pinkoi.site/space.gif\" data-src=\"https://live.staticflickr.com/65535/50187200222_1535503782_b.jpg\"><br>Nothing is black or white.<br>—Nelson Mandela<br><br>年少時信仰非黑即白，世界有絕對的對錯，好人獲賞、壞人遭罰。<br>逐漸長大才懂，喜愛、厭憎、慾望、人情，我們原來都一樣，性格中帶著一點點的白，或少許的黑，交錯成人間深淺明暗的灰。<br><br>Cambridge BKI，簡單外表，黑白映襯。握持在手，提醒自己掌握住人生的原則，心中的那個倔強少年，長久存在。<br><br>德國進口鍍金筆尖<br>筆尖為空運進口不鏽鋼材質，並施以鍍金。刻有品牌名Laban，以及台灣最高峰—玉山標高3952公尺，質感精緻。<br><br>純黑筆蓋，黑白筆桿。<br>經典的樹脂材質，筆桿的象牙白色，飾以淺淡的米褐細紋，獨樹一格的清爽自在。<br>在筆記上滑暢書寫，文采和人品相應相成，文質彬彬，然後君子。<br><br>中型筆桿<br>持握時，散發樹脂材質的輕盈感。特有的設計平衡，重心適中，書寫不費力，長時間使用、手腕也不會感覺疲累。<br><br>細節，彰顯風采<br>天冠同樣鑲嵌金質品牌象徵標誌。不論是收納於胸前口袋，或隨身攜帶，都以天冠獨特的存在感，襯托了優雅氣質。<br><br>手工處理的細膩質感<br>筆夾、筆夾雙金環、以及筆蓋環，分別以鍍金、與金屬飾片裝飾。<br><br>商品說明：<br>收納時長度約14.8cm，取下筆蓋長度約13cm，筆蓋套於筆後長度約17.3cm。<br>筆桿直徑約1.25mm，重量約35g，吸卡兩用上墨。<br>關於筆幅 共有EF(特細)/F(細字)/M(中字)/B(粗字)，可依照個人的書寫習慣挑選。<br><br>上墨方式:<br>吸卡兩用吸墨器式。<br>可搭配卡水便利直接插上使用。<br><br>贈品:<br>★附贈品牌書籤乙組<br>★藍色卡水乙組<br>★吸墨器乙組</div>', 'ST01_800x0.jpg', 0, '2020-10-31', 1, 1, '2020-08-30 16:05:16'),
(2, 3, 'LABAN GALILEO 伽利略鋼筆', 22, '德國進口雙色筆尖，不鏽鋼鍍金的雙色筆尖，帶來彈性的書寫感受，筆尖刻有品牌名Laban，質感精緻。純黑壓克力樹脂筆桿，外層包覆金屬鍍色裝飾。細緻的齒輪圖紋，昭示獨有的哲學—科學跨界，也是掌握在手中、時時磨礪品性的提示。 整枝筆桿重量較重，厚實的重量，掌握在男性偏大的手掌中，倍覺妥貼舒適。中型筆桿 金屬與樹脂材質和諧交錯。筆身較重，持寫時的重心平衡，也經過特殊設計。', '<div data-translate=\"description\"><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://live.staticflickr.com/65535/50172829337_56e6e23a9d_b.jpg\" data-src=\"https://live.staticflickr.com/65535/50172829337_56e6e23a9d_b.jpg\"><br><br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://live.staticflickr.com/65535/50172829142_d034fed28b_b.jpg\" data-src=\"https://live.staticflickr.com/65535/50172829142_d034fed28b_b.jpg\"><br><br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://live.staticflickr.com/65535/50172576056_4dd7e14567_b.jpg\" data-src=\"https://live.staticflickr.com/65535/50172576056_4dd7e14567_b.jpg\"><br><br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://live.staticflickr.com/65535/50172829282_f8339f148e_b.jpg\" data-src=\"https://live.staticflickr.com/65535/50172829282_f8339f148e_b.jpg\"><br><br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://live.staticflickr.com/65535/50172829312_34ee4a2946_b.jpg\" data-src=\"https://live.staticflickr.com/65535/50172829312_34ee4a2946_b.jpg\"><br><br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://live.staticflickr.com/65535/50172630696_24c3bf808a_b.jpg\" data-src=\"https://live.staticflickr.com/65535/50172630696_24c3bf808a_b.jpg\"><br><br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://live.staticflickr.com/65535/50187361036_e3d82efec9_b.jpg\" data-src=\"https://live.staticflickr.com/65535/50187361036_e3d82efec9_b.jpg\"><br><br>Passion is the genesis of genius.<br>熱情是天才的起源—伽利略<br><br>金錢，財富，地位，自由，成功的標準無法量化，但走上成功之路的人，多半在熱愛的領域，以超凡的熱情，為自己打下堅實基礎。<br><br>以沈穩的精緻金屬製成，鏤刻幾何圖紋，握持在手，思索人間，隱而不顯的光芒，正是君子犒賞自身成就的首選。<br><br>德國進口雙色筆尖<br>不鏽鋼鍍金的雙色筆尖，帶來彈性的書寫感受，筆尖刻有品牌名Laban，質感精緻。<br><br>純黑壓克力樹脂筆桿，外層包覆金屬鍍色裝飾。細緻的齒輪圖紋，昭示獨有的哲學—科學跨界，也是掌握在手中、時時磨礪品性的提示。<br><br>整枝筆桿重量較重，厚實的重量，掌握在男性偏大的手掌中，倍覺妥貼舒適。<br><br>中型筆桿 金屬與樹脂材質和諧交錯。筆身較重，持寫時的重心平衡，也經過特殊設計。 握位特殊設計 握位腰身較細，符合握筆時指尖的弧度。<br><br>持握書寫時，能感受到細膩的重心變化。<br><br>冷調幾何學派 筆蓋延伸筆身的透明設計。天冠鏤刻細膩，輕輕觸摸，能感受到隱約的深淺紋路。<br><br>典雅的平衡 筆夾頂端刻上精巧的品牌LOGO，圓滑流暢，兼具機能與視覺之美。<br><br>商品說明：<br>收納時長度約 13.2cm，取下筆蓋長度約12.4cm，筆蓋套於筆後長度約16.1cm。<br>筆桿直徑約11.4cm，重量約42.8g，吸卡兩用上墨。<br>關於筆幅 共有EF(特細)/F(細字)/M(中字)/B(粗字)，可依照個人的書寫習慣挑選。<br><br>上墨方式:<br>吸卡兩用吸墨器式。<br>可搭配卡水便利直接插上使用。<br><br>贈品:<br>★附贈品牌書籤乙組<br>★藍色卡水乙組<br>★吸墨器乙組<br><br>想知道我們近期動態，歡迎到：<br>臉書：Labanpen。IG：Labanpen</div>', 'ST02_800x0.jpg,ST02_800x1.jpg,ST02_800x2.jpg', 0, '2020-10-31', 1, 1, '2020-08-30 16:05:16'),
(3, 3, '歐式復古羽毛筆沾水鋼筆禮盒', 22, '從前車馬很慢，書信很遠，一生只夠愛一個人。用從前的筆寫一封未來的信。六色設計，古銅筆身，復古耐看。五款替換筆頭，針對不同書寫字體。金粉墨水，獨家調配。搭配禮盒，送禮大方得體。首次使用需先去除筆尖保護油。使用棉籤沾上牙膏塗抹在筆尖上，通常為筆尖頭位置，反覆擦拭後使用紙巾擦拭乾淨即可沾墨書寫。（若墨水於筆頭呈現滾珠狀懸掛，則需重複上述步驟。）', '<div data-translate=\"description\">從前車馬很慢，書信很遠，一生只夠愛一個人。<br>用從前的筆寫一封未來的信。<br><br>· 六色設計，古銅筆身，復古耐看。<br>· 五款替換筆頭，針對不同書寫字體。<br>· 金粉墨水，獨家調配。<br>· 搭配禮盒，送禮大方得體。<br><br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://c2.staticflickr.com/2/1793/42082359255_58d915434c_b.jpg\" data-src=\"https://c2.staticflickr.com/2/1793/42082359255_58d915434c_b.jpg\"><br><br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://c2.staticflickr.com/2/1826/41173976330_47658fe657_b.jpg\" data-src=\"https://c2.staticflickr.com/2/1826/41173976330_47658fe657_b.jpg\"><br><br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://c2.staticflickr.com/2/1828/29231835108_ba1cd2f7e8_b.jpg\" data-src=\"https://c2.staticflickr.com/2/1828/29231835108_ba1cd2f7e8_b.jpg\"><br><br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://c1.staticflickr.com/1/838/28235050817_97d5c0b7f5_b.jpg\" data-src=\"https://c1.staticflickr.com/1/838/28235050817_97d5c0b7f5_b.jpg\"><br><br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://c2.staticflickr.com/2/1765/29278421938_72754deea5_b.jpg\" data-src=\"https://c2.staticflickr.com/2/1765/29278421938_72754deea5_b.jpg\"><br><br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://c2.staticflickr.com/2/1761/29231747698_fdbe496c66_b.jpg\" data-src=\"https://c2.staticflickr.com/2/1761/29231747698_fdbe496c66_b.jpg\"><br><br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://c1.staticflickr.com/1/913/43054039082_7fec7d2a53_b.jpg\" data-src=\"https://c1.staticflickr.com/1/913/43054039082_7fec7d2a53_b.jpg\"><br><br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://c2.staticflickr.com/2/1807/28115595467_964c5d96b2_b.jpg\" data-src=\"https://c2.staticflickr.com/2/1807/28115595467_964c5d96b2_b.jpg\"><br><br>藏青色<br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://c1.staticflickr.com/1/883/41297604852_c13f77d658_b.jpg\" data-src=\"https://c1.staticflickr.com/1/883/41297604852_c13f77d658_b.jpg\"><br>酒紅色<br><img class=\"m-richtext-el m-richtext-img lazyloaded\" src=\"https://c1.staticflickr.com/1/863/41297607582_9150a0e13c_b.jpg\" data-src=\"https://c1.staticflickr.com/1/863/41297607582_9150a0e13c_b.jpg\"><br>白色<br><img class=\"m-libs-lazy m-richtext-el m-richtext-img\" src=\"https://cdn04.pinkoi.com/pinkoi.site/space.gif\" data-src=\"https://c1.staticflickr.com/1/799/41297605982_ab0d1f5740_b.jpg\"><br>黑色<br><img class=\"m-libs-lazy m-richtext-el m-richtext-img\" src=\"https://cdn04.pinkoi.com/pinkoi.site/space.gif\" data-src=\"https://c1.staticflickr.com/1/868/39531045790_0c29810dbd_b.jpg\"><br>紫色<br><img class=\"m-libs-lazy m-richtext-el m-richtext-img\" src=\"https://cdn04.pinkoi.com/pinkoi.site/space.gif\" data-src=\"https://c1.staticflickr.com/1/801/41297600892_8c1642e751_b.jpg\"><br><br>8色金粉彩墨15ML：（禮盒墨水皆為黑色、藍色）<br><a class=\"m-richtext-el m-richtext-link\" href=\"https://www.pinkoi.com/product/chhp8zJK?category=3\" target=\"_blank\">www.pinkoi.com/product/chhp8zJK?cat...</a><br><br>首次使用需先去除筆尖保護油。<br>使用棉籤沾上牙膏塗抹在筆尖上，通常為筆尖頭位置，反覆擦拭後使用紙巾擦拭乾淨即可沾墨書寫。<br>（若墨水於筆頭呈現滾珠狀懸掛，則需重複上述步驟。）<br><br>／商品規格／<br>- 顏色: 酒紅、綠色、藏青、白色、紫色、黑色<br>- 規格: 禮盒x1 羽毛筆x1 金粉墨水x1 筆頭x5 筆座x1 <br>- 製作期: 5-7日<br>產地/製造方式<br>台灣</div>', 'ST03_800x0.jpg', 0, '2020-10-31', 1, 1, '2020-08-30 16:05:16'),
(4, 1, 'ARTEX x 印花樂 聯名3入墨水組', 22, '#兩大台灣品牌ARTEXx印花樂#首次合作推出，以ARTEX最暢銷的開心鋼筆系列作為設計，精緻的手工技藝、搭載黃銅製鋼筆所帶來不凡的書寫重量，讓筆身沉穩且具質感；墨水以鬱綠、蒼藍和晨棕三個實用的顏色作為主體，商品的主題圍繞著「山林、海洋、日光」進行設計，象徵著台灣的環境「群山聳立、四面環海、金輝斜照」，搭配18ml的藍色墨水以及精美的包裝，是送禮或收藏最佳的選擇。', '<div class=\"illustratGroup illustratGroup--product\">     <p style=\"text-align: center;\"><iframe width=\"80%\" height=\"500\" src=\"https://www.youtube.com/embed/bJ7zt5ZqScA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></p> <p style=\"text-align: center;\">&nbsp;</p> <p style=\"text-align: center;\"><strong><span style=\"font-size: x-large;\"># 墨 水 控 必 收 清 單 - 大 罐 墨 水 三 入 組#</span></strong></p> <p style=\"text-align: center;\"><strong><span style=\"font-size: x-large;\"><span>&nbsp;</span></span></strong><br> 「蒼湖‧潮藍」、「欉生‧鬱綠」、「朝曦‧晨棕」三種墨色，一次滿足。<br> 除了鋼筆墨水禮盒組，本次也推出了讓文具控跟鋼筆控無法拒絕的，大罐墨水三入組。<br> 三入組當中的墨水不但有禮盒組中的蒼湖‧潮藍以及欉生‧鬱綠之外，<br> 另有一款隱藏版特殊色－「朝曦‧晨棕」，<br> 而且三罐都是30ml 的大罐裝唷！(筆墨組中的墨水是18ml)</p> <p style=\"text-align: center;\">&nbsp;</p> <p style=\"text-align: center;\"><span style=\"font-size: large;\"><span style=\"color: rgb(16, 16, 16); font-family: karla, -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, 微軟正黑體, &quot;microsoft jhenghei&quot;, sans-serif; font-weight: 700;\">耶～跟著嘖嘖一起來開箱吧</span>&nbsp;</span></p> <p style=\"text-align: center;\"><iframe width=\"80%\" height=\"500\" src=\"https://www.youtube.com/embed/9xpFwd-0J60\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></p> <p style=\"text-align: center;\"><span style=\"color: rgb(16, 16, 16); font-family: karla, -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, 微軟正黑體, &quot;microsoft jhenghei&quot;, sans-serif; font-size: 15px; font-weight: 700; text-align: center;\">你沒寫過鋼筆？我到底買鋼筆要幹甚麼？不知道寫起來怎麼樣？來～看看嘖嘖開箱俏皮的介紹吧！</span></p> <p style=\"text-align: center;\"><span style=\"font-size: 1em;\">___________________________________________________________________________________&nbsp;</span></p> <p style=\"text-align: center;\"><strong><span style=\"font-size: large;\"><span style=\"color: rgb(16, 16, 16); font-family: karla, -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, 微軟正黑體, &quot;microsoft jhenghei&quot;, sans-serif; font-weight: 700;\">看 筆 尖 溫 度 老 師 示 範</span></span></strong></p> <p style=\"text-align: center;\"><iframe width=\"80%\" height=\"500\" src=\"https://www.youtube.com/embed/UZWaFDJptvQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></p> <p style=\"text-align: center;\"><span style=\"font-size: 1em;\">___________________________________________________________________________________&nbsp;</span></p> <p style=\"text-align: center;\"><span style=\"font-size: x-large;\"><strong>ARTEX x印花樂｜大罐墨水3入組</strong></span></p> <p style=\"text-align: center;\">&nbsp;<img src=\"https://img.udnfunlife.com/image/product/DS005085/20200703160850795.jpg\" id=\"descpic_38\" alt=\"ARTEX｜大罐墨水3入組(印花樂聯名設計)\" style=\"font-size: 1em;\"></p> <p style=\"text-align: center;\">___________________________________________________________________________________</p> <p style=\"text-align: center;\"><span style=\"font-size: large;\"><strong>墨水從筆尖傾瀉而出的療癒時光&nbsp;</strong></span></p> <p style=\"text-align: center;\">&nbsp;<img src=\"https://img.udnfunlife.com/image/product/DS005085/20200701170306434.jpg\" id=\"descpic_1\" alt=\"\" style=\"font-size: 1em;\"></p> <p style=\"text-align: center;\"><img src=\"https://img.udnfunlife.com/image/product/DS005085/20200701170307818.jpg\" id=\"descpic_2\" alt=\"\"></p> <p style=\"text-align: center;\"><span style=\"color: rgb(16, 16, 16); font-family: karla, -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, 微軟正黑體, &quot;microsoft jhenghei&quot;, sans-serif; font-size: 17.55px; font-weight: 700; text-align: center;\">＂2 0 2 0 最 開 心 的 開 心 鋼 筆 聯 名 系 列＂</span></p> <p style=\"text-align: center;\"><img src=\"https://img.udnfunlife.com/image/product/DS005085/20200702140932926.jpg\" id=\"descpic_6\" alt=\"【集購】ARTEX x印花樂｜鋼筆墨水禮盒｜不用選全帶走\"></p> <p style=\"text-align: center;\"><span style=\"font-size: large;\">兩 大 台 灣 品 牌 A R T E X  x 印 花 樂</span></p> <p style=\"text-align: center;\"><span style=\"font-size: large;\">首次合作推出的聯名鋼筆墨水禮盒與大罐墨水三入組，以ARTEX最暢銷的開心鋼筆系列作為設計，<br> 精緻的手工技藝、搭載黃銅製鋼筆所帶來不凡的書寫重量，讓筆身沉穩且具質感；<br> 墨水以鬱綠、蒼藍和晨棕三個實用的顏色作為主體，<br> 商品的主題圍繞著「山林、海洋、日光」進行設計，<br> 象徵著台灣的環境「群山聳立、四面環海、金輝斜照」，</span></p> <p style=\"text-align: center;\"><img src=\"https://img.udnfunlife.com/image/product/DS005085/20200702141114065.jpg\" id=\"descpic_7\" alt=\"【集購】ARTEX x印花樂｜鋼筆墨水禮盒｜不用選全帶走\" style=\"font-size: 1em;\">&nbsp;</p> <p style=\"text-align: center;\">&nbsp;</p> <p style=\"text-align: center;\"><img src=\"https://img.udnfunlife.com/image/product/DS005085/20200702143939165.jpg\" id=\"descpic_19\" alt=\"【集購】ARTEX x印花樂｜鋼筆墨水禮盒｜不用選全帶走\" style=\"font-size: 1em;\">&nbsp;</p> <p style=\"text-align: center;\"><span style=\"color: rgb(51, 102, 255);\"><span style=\"font-size: large;\">蒼藍的湖水，優雅且寧靜；<br> 藍身黃喙的八哥，一聲驚鳴，劃開了寂靜，<br> 餘音如墨，為下一筆精彩，不停揮毫。</span></span></p> <p style=\"text-align: center;\"><span style=\"font-size: large;\">蒼湖‧潮藍的意象，敘述著台灣這個小島有著許多很優美的湖景，<br>那可能是像日月潭一般的壯闊，也能夠是小時候下雨天的水窪。<br>置入那湖景，彷彿你就坐在湖邊，一隻八哥飛來，劃開了那個寧靜，<br>依著湖景，你笑了，這樣的景致，趣味也優美，是台灣這座小島特有的美麗。</span></p> <p style=\"text-align: center;\"><img src=\"https://img.udnfunlife.com/image/product/DS005085/20200703160949252.jpg\" id=\"descpic_40\" alt=\"ARTEX｜大罐墨水3入組(印花樂聯名設計)\" style=\"font-size: 1em;\">&nbsp;</p> <p style=\"text-align: center;\"><span style=\"font-size: large;\">印花樂的台灣八哥圖騰，以品牌一貫風格的連續禪繞設計手法，<br>包覆著開心鋼筆筆身以及包裝，效果十分可愛且親切。<br>白綠穿插的八哥，整齊的排列在鋼筆上，有一種逗趣且動態的視覺美感，<br>搭配18ml的藍色墨水以及精美的包裝，是送禮或收藏最佳的選擇。</span></p> <p style=\"text-align: center;\">&nbsp;<img src=\"https://img.udnfunlife.com/image/product/DS005085/20200702144318552.jpg\" id=\"descpic_25\" alt=\"【集購】ARTEX x印花樂｜鋼筆墨水禮盒｜不用選全帶走\" style=\"font-size: 1em;\"></p> <p style=\"text-align: center;\">&nbsp;</p> <p style=\"text-align: center;\"><img src=\"https://img.udnfunlife.com/image/product/DS005085/20200702143938412.jpg\" id=\"descpic_18\" alt=\"【集購】ARTEX x印花樂｜鋼筆墨水禮盒｜不用選全帶走\"></p> <p style=\"text-align: center;\"><span style=\"font-size: large;\"><span style=\"color: rgb(51, 153, 102);\">蓊蓊鬱鬱的家園，隨著城市的繁華，<br> 一點一滴的消逝，烏秋從枝頭棲到電線桿，<br> 圍一圈就成了家的雛型，尾羽擺弄著，故鄉與故事隨之叢生。</span></span></p> <p style=\"text-align: center;\"><span style=\"font-size: large;\">欉生‧鬱綠的意象，描寫著城市的開發與變遷，<br>30年前的台灣，開始進入了繁華的經濟起飛年代，<br>我們從鄉下到了都市，映入眼簾的從蓊蓊鬱鬱的家園，逐漸的被電線桿取代，<br>烏秋也從枝頭飛到電線桿。離鄉背井，和身邊的伙伴圍個圈，彷彿看到了家的雛型，<br>我來自的那個故鄉，曾幾何時已經成為嘴上的故事。</span></p> <p style=\"text-align: center;\"><img src=\"https://img.udnfunlife.com/image/product/DS005085/20200703160954575.jpg\" id=\"descpic_41\" alt=\"ARTEX｜大罐墨水3入組(印花樂聯名設計)\"></p> <p style=\"text-align: center;\"><span style=\"font-size: large;\">印花樂的烏秋圈圈圖騰，同樣也是品牌精典的圖案，<br>黃和藍強烈的對比，突顯了來自不同地方人帶著不同的故事，在同一個畫面中卻是和諧的存在，<br>一個一個的圈，也彷彿一個一個的家，溫馨的、可愛的湊在一起。<br>將此設計至於短版鋼筆上，讓整體更顯可愛，也暗喻了現在社會已經是小家庭為主流，<br>但家與家之間，還是可以靠近和諧的相處。<br>搭配18ml的綠色墨水以及精美的包裝，是送禮或收藏最佳的選擇</span>。<img src=\"https://img.udnfunlife.com/image/product/DS005085/20200703161000607.jpg\" id=\"descpic_44\" alt=\"ARTEX｜大罐墨水3入組(印花樂聯名設計)\" style=\"font-size: 1em;\"></p>\\ <p style=\"text-align: center;\"><img src=\"https://img.udnfunlife.com/image/product/DS005085/20200703161317795.jpg\" id=\"descpic_45\" alt=\"ARTEX｜大罐墨水3入組(印花樂聯名設計)\" style=\"font-size: 1em;\">&nbsp;</p> <p style=\"text-align: center;\"><span style=\"font-size: larger;\"><span style=\"color: rgb(128, 0, 0);\">暖和的晨曦，緩緩落在窗邊，透著窗遠望；<br> 田野間，農活正忙，暖黃的手巾被汗水浸溼，<br> 電線桿上的八哥，清唱著田間的故事。</span></span><span style=\"color: rgb(128, 0, 0);\"><br> </span></p> <p style=\"text-align: center;\"><span style=\"font-size: larger;\">朝曦‧晨棕的意象，述說著以農立國的台灣，在天色漸光的田間，溫暖朝陽撫過大地，<br>一群辛苦的農人正忙活於田間的農務，田中的泥土把原本潔白的手巾染的暖黃，<br>辛勤的汗水，把手巾都給浸濕，休息片刻，餘光瞥見電線桿上，一群八哥正在此起彼落的唱著歌。<br>群鳥起飛，這些故事也隨著他們的傳遞，散播出去。</span></p> <p style=\"text-align: center;\"><img src=\"https://img.udnfunlife.com/image/product/DS005085/20200703160943878.jpg\" id=\"descpic_39\" alt=\"ARTEX｜大罐墨水3入組(印花樂聯名設計)\"></p> <p style=\"text-align: center;\">印花樂的手印布＿台灣八哥圖騰，錯置的設計，<br>看似沒有規律，其實攤開會發現，這些圖騰依舊按照一定規律在走，<br>雜而不亂的錯置排放，讓整體設計顯得活潑。配色上棕色與粉色的深淺使用，讓空間及立體感更加明顯。</p> <p style=\"text-align: center;\"><img src=\"https://img.udnfunlife.com/image/product/DS005085/20200703160958833.jpg\" id=\"descpic_42\" alt=\"ARTEX｜大罐墨水3入組(印花樂聯名設計)\"></p> <p style=\"text-align: center;\">&nbsp;</p> </div>', 'ST04_800x0.jpg,ST04_800x1.jpg,ST04_800x2.jpg,ST04_800x3.jpg,ST04_800x4.jpg,ST04_800x5.jpg,ST04_800x6.jpg,ST04_800x7.jpg,ST04_800x8.jpg', 0, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(5, 1, 'HMM原子筆 - 霧黑色 台灣設計文具', 23, '霧黑，神秘中帶點安定的熟成色系，搭配上十二角面筆管，讓筆身觸感潤澤優雅，低調不失率性，深邃的讓人目不轉睛。', '', 'ST05_800x0.jpg,ST05_800x1.jpg,ST05_800x2.jpg,ST05_800x3.jpg,ST05_800x4.jpg,ST05_800x5.jpg,ST05_800x6.jpg,ST05_800x7.jpg\r\n', 0, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(6, 3, 'ARTEX 鍾愛窄版原子筆-Victor/亮黑', 23, NULL, '', 'ST06_800x0.jpg,ST06_800x1.jpg,ST06_800x2.jpg,ST06_800x3.jpg', 0, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(7, 2, '南國的孩子 派特打底章 (10個入)', 24, NULL, '', 'ST07_800x0.jpg,ST07_800x1.jpg,ST07_800x2.jpg,ST07_800x3.jpg', 0, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(8, 3, '南國的孩子 手寫數字章 (22個入)', 24, NULL, '', 'ST08_800x0.jpg,ST08_800x1.jpg,ST08_800x2.jpg,ST08_800x3.jpg,ST08_800x4.jpg,ST08_800x5.jpg', 0, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(9, 1, '片花 - 霧面 PET 紙膠帶', 16, '邊緣的齒孔是我們對底片的強烈印象，「片花」則是以前華人電影圈對預告片或剪輯花絮的稱呼，為了致敬片花的電影畫面感', '', 'PT01_800x0.jpg,PT01_800x1.jpg,PT01_800x2.jpg,PT01_800x3.jpg,PT01_800x4.jpg,PT01_800x5.jpg', 0, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(10, 1, '紙膠帶 - 嚕咪 Luminous (Dark)', 16, '突然想起小時候看螢火蟲的印象，黑漆漆的樹林裡會有無數的小亮點飛來飛去，我們擷取夜晚螢光的概念', '', 'PT02_800x0.jpg,PT02_800x1.jpg,PT02_800x2.jpg,PT02_800x3.jpg,PT02_800x4.jpg,PT02_800x5.jpg,PT02_800x6.jpg,PT02_800x7.jpg', 0, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(11, 3, '薄霧隨筆 - 描圖紙本', 17, NULL, '', 'PT03_800x0.jpg,PT03_800x1.jpg,PT03_800x2.jpg,PT03_800x3.jpg,PT03_800x4.jpg,PT03_800x5.jpg,PT03_800x6.jpg,PT03_800x7.jpg,PT03_800x8.jpg', 0, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(12, 1, '活版印刷盒裝訊息小卡', 17, '四款主題的復古訊息小卡，依古籍上的鉛字花邊為圖案，使用活版印刷印製，壓印產生的凹凸痕跡，為小卡增添獨特質感。可運用於手帳書寫、裝飾禮物、留言卡片、商品陳列、分類標籤⋯⋯等。', '', 'PT04_800x0.jpg,PT04_800x1.jpg,PT04_800x2.jpg,PT04_800x3.jpg,PT04_800x4.jpg,PT04_800x5.jpg,PT04_800x6.jpg,PT04_800x7.jpg,PT04_800x8.jpg', 0, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(13, 1, 'MIDORI Pocket Diary 2021手帳(月雙週)A6歐吉桑', 18, 'MIDORI POCKET DIARY 2021手帳(月雙週)A6-\r\n每翻一頁都有不同的設計圖樣! 讓你玩味一整年的「POCKET DIARY」', '', 'PT05_800x0.jpg,PT05_800x1.jpg,PT05_800x2.jpg,PT05_800x3.jpg,PT05_800x4.jpg,PT05_800x5.jpg,PT05_800x6.jpg', 0, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(14, 3, 'MIDORI Pocket Diary 2021手帳長形(月間)嘉年華', 18, NULL, '', 'PT06_800x0.jpg,PT06_800x1.jpg,PT06_800x2.jpg,PT06_800x3.jpg,PT06_800x4.jpg,PT06_800x5.jpg,PT06_800x6.jpg', 0, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(15, 3, '法國1808s 公證契約 / 法文手寫稿', 9, '每次收藏這種文件搞，除了好好欣賞其筆跡，\r\n流暢飛揚又優雅之外，最愛觀察左上角的郵印和浮雕徽章，每一時期的圖像設計都不太一樣。', '', '301_800x0.jpg,301_800x1.jpg,301_800x2.jpg,301_800x3.jpg,301_800x4.jpg,301_800x5.jpg,301_800x6.jpg,301_800x7.jpg,301_800x8.jpg', 0, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(16, 3, 'Filter017 10th Anniversary Catalog 十周年品牌設計年鑑', 9, '在「混合」概念的思考下，不僅只是視覺圖面上的混合，Filter017更嘗試以東方文化的思維和創意，重新詮釋來自歐美復古視覺和元素', '', '302_800x0.jpg,302_800x1.jpg,302_800x2.jpg,302_800x3.jpg,302_800x4.jpg', 0, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(17, 3, 'BUWU | 書衣收納套', 10, '可作為書本、筆記本、記帳本的外衣，同時也可收納卡片、名片、護照、手機。品牌logo織標處可插入一枝細筆，如果筆比較粗也可用筆蓋勾著。', '', '303_800x0.jpg,303_800x1.jpg,303_800x2.jpg,303_800x3.jpg,303_800x4.jpg', 0, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(18, 1, 'A5/25K花布雙筆插書衣/書套/書皮', 10, NULL, '', '304_800x0.jpg,304_800x1.jpg,304_800x2.jpg,304_800x3.jpg,304_800x4.jpg', 0, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(19, 2, 'Jelly 果凍人 l 插畫造型金屬書籤', 11, '精緻金屬做工，薄而輕巧，導圓角設計不刮手。2款金銀顏色，交換禮物、生日禮物最好選擇。', '', '305_800x0.jpg,305_800x1.jpg,305_800x2.jpg', 0, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(20, 3, '吃飯閱讀貓狗小書簽', 11, 'Don\'t forget to read\r\nDon\'t forget to eat\r\n不要忘記閱讀 好好看一本書\r\n也不要忘記好好吃一頓飯', '', '306_800x0.jpg,306_800x1.jpg,306_800x2.jpg,306_800x3.jpg,306_800x4.jpg,306_800x5.jpg,306_800x6.jpg', 0, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(21, 1, '壓克力/油畫彩繪-富士山系列【1 人成團】', 15, '不管是來秘密製作給情人閨蜜的禮物\r\n還是兩人享受浪漫文青氛圍\r\n增進閨蜜情感都適合', '', 'EC01_800x0.jpg,EC01_800x1.jpg,EC01_800x2.jpg,EC01_800x3.jpg', 1, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(22, 2, '玩浮水畫 縫中式冊子【 1 人成團】', 15, '以體驗為主，結合浮水畫的封面製作，與中式縫法，帶你製書的同時還能一起體驗浮水畫的樂趣', '', 'EC02_800x0.jpg,EC02_800x1.jpg,EC02_800x2.jpg,EC02_800x3.jpg,EC02_800x4.jpg,EC02_800x5.jpg,EC02_800x6.jpg,EC02_800x7.jpg,EC02_800x8.jpg', 1, '2020-10-31', 0, 1, '2020-08-30 16:05:17'),
(23, 12, '致親愛的-信紙本 27入', 19, '還記得嗎？那一年我們寫了那麼多紙條，在學校附近的老文具店買的便宜信紙本，承載著無數青春的回憶。\r\n', '', 'PT07_800x0.jpg,PT07_800x1.jpg,PT07_800x2.jpg,PT07_800x3.jpg,PT07_800x4.jpg,PT07_800x5.jpg,PT07_800x6.jpg,PT07_800x7.jpg,PT07_800x8.jpg,PT07_800x9.jpg,PT07_800x10.jpg,PT07_800x11.jpg,PT07_800x12.jpg,PT07_800x13.jpg,PT07_800x14.jpg', 0, '2020-10-31', 0, 1, '2020-10-14 14:11:37'),
(24, 12, '透明貼紙 - OWL - 防水、防刮、防曬 -任選4張', 20, '因為哈利波特的關係，貓頭鷹開始比較廣泛地被當寵物看待，也掀起了熱潮。後來是在大家的口頭勸戒之下開始畫貓頭鷹。', '', 'PT08_800x0.jpg,PT08_800x1.jpg,PT08_800x2.jpg,PT08_800x3.jpg,PT08_800x4.jpg,PT08_800x5.jpg', 0, '2020-10-31', 0, 1, '2020-10-14 14:19:48'),
(25, 12, '喵星女子穿搭貼紙組', 20, '因為是以外出走跳穿搭為主題，搭配上會以舒適、隨性、活潑為基調，\r\n偶爾搭上牛仔及膝裙、連身吊帶褲、碎花魚尾裙，帶出清新活力女子風格!\r\n', '', 'PT09_800x0.jpg,PT09_800x1.jpg,PT09_800x2.jpg,PT09_800x3.jpg,PT09_800x4.jpg,PT09_800x5.jpg', 0, '2020-11-21', 0, 1, '2020-10-14 14:19:48'),
(26, 12, '花卉明信片組-共6款', 21, '雖然內心是希望大家一直買我的小鹿XDDDD可是中二貓系列也是很ㄎㄧ、非常療癒，所以開放讓大家選擇囉！', '', 'PT10_800x0.jpg,PT10_800x1.jpg,PT10_800x2.jpg,PT10_800x3.jpg,PT10_800x4.jpg,PT10_800x5.jpg', 0, '2020-10-31', 0, 1, '2020-10-14 14:19:48'),
(27, 12, '動物大集合-明信片組', 21, '雖然內心是希望大家一直買我的小鹿XDDDD可是中二貓系列也是很ㄎㄧ、非常療癒，所以開放讓大家選擇囉！', '', 'PT11_800x0.jpg,PT011_800x1.jpg,PT11_800x2.jpg,PT11_800x3.jpg,PT11_800x4.jpg,PT11_800x5.jpg,PT11_800x6.jpg', 0, '2020-10-31', 0, 1, '2020-10-14 14:19:48'),
(28, 12, '手繪植物明信片', 21, '雖然內心是希望大家一直買我的小鹿XDDDD可是中二貓系列也是很ㄎㄧ、非常療癒，所以開放讓大家選擇囉！', '', 'PT12_800x0.jpg,PT12_800x1.jpg,PT12_800x2.jpg,PT12_800x3.jpg,PT12_800x4.jpg,PT12_800x5.jpg\r\n', 0, '2020-10-31', 0, 1, '2020-10-14 14:19:48'),
(29, 12, 'IWI 3 in 1多功能筆-A5墨+粗曠黑', 26, '擁有簡潔的外型，搭配IWI自主開發的三用機芯內含黑色筆芯、紅色筆芯，以及0.5自動鉛筆與橡皮擦，實用性滿點', '', 'ST09_300x1.jpg,ST09_300x2.jpg,ST09_300x3.jpg,ST09_300x4.jpg,ST09_300x5.jpg,ST09_300x6.jpg,ST09_800x0.jpg,ST09_800x1.jpg,ST09_800x2.jpg,ST09_800x3.jpg,ST09_800x4.jpg,ST09_800x5.jpg', 0, '2020-11-28', 0, 1, '2020-10-14 14:28:34'),
(30, 12, 'PAUL & JOE 經典收藏原子筆 ‧藍色西洋菊', 23, '「當時尚走進文具」法國的時尚品牌PAUL & JOE與mark\'s共同開發，最新春夏款結合花與植物，包含象徵品牌精神的經典西洋菊、熱情的粉紅熱帶植物與纖細的花蝴蝶，完美詮釋出春天豐富的生命力', '', 'ST10_800x0.jpg,ST10_800x1.jpg', 0, '2020-10-31', 0, 1, '2020-10-14 14:28:34'),
(31, 12, 'PURE 書源 0.5中性筆 莫蘭迪5色', 23, NULL, '', 'ST11_300x1.jpg,ST11_300x2.jpg,ST11_800x0.jpg,ST11_800x1.jpg,ST11_800x2.jpg,ST11_800x3.jpg,ST11_800x4.jpg,ST11_800x5.jpg', 0, '2020-10-31', 0, 1, '2020-10-14 14:28:34'),
(32, 12, 'LAMY AL-STAR恆星系列 鋼筆墨水禮盒組-2020碧璽藍', 22, '2020 LAMY AL-star 恆星系列推出turmaline，絕美的碧璽藍色彩猶如泳池波光般藍綠色寶石般閃閃耀眼，LAMY AL-star turmaline碧璽也被稱做為繆斯之石', '', 'ST12_300x1.jpg,ST12_300x2.jpg,ST12_300x3.jpg', 0, '2020-10-31', 0, 1, '2020-10-14 14:28:34'),
(33, 12, 'ARTEX life獨白系列筆墨組', 22, NULL, '', 'ST13_300x1.jpg,ST13_300x2.jpg,ST13_300x3.jpg,ST13_300x4.jpg,ST13_300x5.jpg,ST13_300x6.jpg,ST13_800x0.jpg,ST13_800x1.jpg,ST13_800x2.jpg,ST13_800x3.jpg,ST13_800x4.jpg,ST13_800x5.jpg,ST13_800x6.jpg,ST13_800x7.jpg,ST13_800x8.jpg', 0, '2020-10-31', 0, 1, '2020-10-14 14:28:34'),
(34, 12, '敲敲鑰匙圈 一組2入 客製壓印', 14, '●專業性：多年專業皮件設計師教學，以體驗手縫工藝從繁化簡輕鬆上手\r\n●原創性：設計師原創手作皮件，創造差異化商品，很適合送禮自用\r\n●自由配：選牛皮顏色、選蠟線顏色，組合搭配超過30種以上，打造屬於自已的文創商品', '', 'EC03_800x0.jpg,EC03_800x1.jpg,EC03_800x2.jpg', 1, '2020-10-31', 0, 1, '2020-10-14 14:37:37'),
(35, 12, '皮革八重櫻花手作課程', 14, '迎接樱花盛開的季節，親手把盛放的櫻花留著，皮革櫻花永不凋謝，永久保存。除了枝裝皮革櫻花擺件，更可製成飾品配件，配帶出櫻花獨特的美態。', '', 'EC04_800x0.jpg', 1, '2020-10-31', 0, 1, '2020-10-14 14:37:37'),
(36, 12, '乾燥花香氛容器蠟燭&乾燥花香氛蠟片體驗課程', 12, NULL, '', 'EC05_800x0.jpg', 1, '2020-10-31', 0, 1, '2020-10-14 14:37:37'),
(37, 12, '下班隨手作 | 水彩星空畫', 15, '下班隨手作 | 星空畫 還記得小時候隨心所欲的畫畫嗎\r\n星空畫不需要技巧只需要感受，快來揮灑出自己心中的星空夜語吧！', '', 'EC06_800x0.jpg', 1, '2020-10-31', 0, 1, '2020-10-14 14:37:37'),
(38, 12, '復刻花磚 - 禪繞畫x曼陀羅體驗', 15, '曼陀羅（Mandala）一字歷史悠長，來自梵文。指的是圓形之物。在古印度和佛教中，視曼陀羅為宇宙的象徵圖案，以一個不斷循環的圓代表宇宙的持續變化。', '', 'EC07_800x0.jpg,EC07_800x1.jpg,EC07_800x2.jpg,EC07_800x3.jpg,EC07_800x4.jpg', 1, '2020-10-31', 0, 1, '2020-10-14 14:37:37'),
(39, 12, 'Joyce的紙上旅行 - 色鉛筆速寫教學', 15, '吃一口滿滿餡料 幸福感湧上心頭～散步在美味料理 手繪記錄暖心溫度的店舖', '', 'EC08_800x0.jpg', 1, '2020-10-31', 0, 1, '2020-10-14 14:37:37'),
(40, 12, '【Pomme de Pin 松果手感】乾燥花圈手作課程', 13, '忙碌的日子，留一小段時間與花草約會・與自己相處', '', 'EC09_800x0.jpg,EC09_800x1.jpg,EC09_800x2.jpg,EC09_800x3.jpg,EC09_800x4.jpg,EC09_800x5.jpg', 1, '2020-11-01', 0, 1, '2020-10-14 14:37:37'),
(41, 12, '義大利四入經典套裝木桿沾水筆禮盒 | Francesco Rubinato', 22, '義大利設計款沾水筆禮盒\n與您重拾書寫的溫度\n中世紀書寫的美好年代特色文具\n封存於懷舊書寫記憶裡', '', 'ST14_800x0.jpg,ST14_800x1.jpg', 0, '2020-11-01', 0, 1, '2020-11-13 01:14:22');

-- --------------------------------------------------------

--
-- 資料表結構 `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `parent_id`) VALUES
(1, '紙品 | 貼紙', 0),
(2, '筆記本 | 年曆', 0),
(3, '文具用品', 0),
(4, '書籍周邊', 0),
(5, '婚禮週邊', 0),
(6, '生活收納', 0),
(7, '創意小物', 0),
(8, '手作體驗', 0),
(9, '刊物 | 書籍', 4),
(10, '書衣 | 書套', 4),
(11, '書籤', 4),
(12, '蠟燭 | 香氛', 8),
(13, '植栽 | 花藝', 8),
(14, '皮件 | 皮革', 8),
(15, '插畫 | 繪畫 | 寫字', 8),
(16, '紙膠帶', 1),
(17, '便條紙 | 標籤貼', 1),
(18, '筆記本 | 手帳', 2),
(19, '信封|信紙', 1),
(20, '貼紙', 1),
(21, '明信片 | 卡片', 1),
(22, '鋼筆 | 沾水筆 | 墨水', 3),
(23, '中性筆 | 原子筆', 3),
(24, '印章 | 印台', 3),
(25, '圓規', 3),
(26, '功能筆', 3);

-- --------------------------------------------------------

--
-- 資料表結構 `product_skus`
--

CREATE TABLE `product_skus` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `specification` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `sale_price` double DEFAULT NULL,
  `stocks` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `product_skus`
--

INSERT INTO `product_skus` (`id`, `product_id`, `specification`, `price`, `sale_price`, `stocks`) VALUES
(1, 1, 'EF', 4125, 3300, 30),
(2, 1, 'F', 4125, 3300, 40),
(3, 1, 'M', 4150, 3325, 35),
(4, 1, 'B', 4150, 3325, 50),
(5, 2, 'EF', 7875, 6300, 55),
(6, 2, 'F', 7875, 6300, 20),
(7, 2, 'M', 7875, 6300, 30),
(8, 2, 'B', 7875, 6300, 20),
(9, 3, '藏青', 1099, 825, 100),
(10, 3, '酒紅', 1099, 825, 100),
(11, 3, '綠', 1099, 825, 100),
(12, 3, '黑', 1099, 825, 100),
(13, 3, '白', 1099, 825, 100),
(14, 4, '-', 780, NULL, 100),
(15, 5, '-', 700, NULL, 100),
(16, 6, '-', 2100, 1995, 100),
(17, 7, '-', 1135, NULL, 100),
(18, 8, '-', 1135, NULL, 100),
(19, 9, '-', 300, NULL, 100),
(20, 10, '-', 150, NULL, 100),
(21, 11, '-', 250, NULL, 100),
(22, 12, '經典花邊', 270, NULL, 100),
(23, 12, '航空郵件', 270, NULL, 100),
(24, 12, '祝福票券', 270, NULL, 100),
(25, 12, '黑卡花邊', 270, NULL, 100),
(26, 13, '-', 390, NULL, 100),
(27, 14, '-', 210, NULL, 0),
(28, 15, '-', 1500, NULL, 100),
(29, 16, '-', 1980, NULL, 100),
(30, 17, '逐日', 1380, NULL, 100),
(31, 17, '鋤禾', 1380, NULL, 100),
(32, 17, '冉冉', 1380, NULL, 100),
(33, 17, '藍城', 1380, NULL, 100),
(34, 18, '翻滾小熊', 189, NULL, 100),
(35, 18, '柴犬祭典', 189, NULL, 100),
(36, 18, '柴柴物語', 189, NULL, 100),
(37, 18, '小丘綿綿', 189, NULL, 100),
(38, 18, '櫻花雨祭', 189, NULL, 100),
(39, 18, '花的狂想', 189, NULL, 100),
(40, 19, '金', 290, NULL, 100),
(41, 19, '銀', 290, NULL, 100),
(42, 20, '小貓', 189, NULL, 100),
(43, 20, '小狗', 189, NULL, 100),
(44, 21, '2020/11/23(一)13:30~16:30', 1000, NULL, 100),
(45, 21, '2020/11/23(一)18:30~21:30', 1000, NULL, 100),
(46, 21, '2020/11/25(三)13:30~16:30', 1000, NULL, 100),
(47, 21, '2020/11/25(三)18:30~21:30', 1000, NULL, 100),
(48, 21, '2020/11/28(六)09:00~12:00', 1000, NULL, 100),
(49, 21, '2020/11/28(六)13:30~16:30', 1000, NULL, 100),
(50, 22, '2020/11/24(二)14:00~16:00', 950, NULL, 100),
(51, 22, '2020/11/26(四)14:00~16:00', 950, NULL, 100),
(52, 22, '2020/12/01(二)14:00~16:00', 950, NULL, 100),
(53, 22, '2020/12/03(四)14:00~16:00', 950, NULL, 100),
(54, 23, '-', 150, NULL, 100),
(55, 24, '-', 100, NULL, 100),
(56, 25, '-', 100, NULL, 0),
(57, 26, '-', 180, NULL, 100),
(58, 27, '-', 264, NULL, 100),
(59, 28, '-', 160, NULL, 100),
(60, 29, '亮鉻', 600, NULL, 100),
(61, 29, '亮槍', 600, NULL, 100),
(62, 29, '玫瑰金', 600, NULL, 100),
(63, 29, '柔和粉', 600, NULL, 100),
(64, 29, '粗曠黑', 600, NULL, 100),
(65, 29, '礦石金', 600, NULL, 100),
(66, 29, '太空銀', 600, NULL, 100),
(67, 30, '-', 855, 752, 100),
(68, 31, '-', 110, NULL, 100),
(69, 32, '-', 2500, NULL, 100),
(70, 33, 'EF', 800, NULL, 100),
(71, 33, 'F', 800, NULL, 100),
(72, 34, '2020/12/10 (四) 11:00 ~ 11:30', 368, NULL, 10),
(73, 34, '2020/12/10 (四) 13:00 ~ 13:30', 368, NULL, 10),
(74, 34, '2020/12/10 (四) 16:30 ~ 17:00', 368, NULL, 10),
(75, 34, '2020/12/10 (四) 17:30 ~ 18:00', 368, NULL, 10),
(76, 34, '2020/12/11 (五) 11:00 ~ 11:30', 368, NULL, 10),
(77, 34, '2020/12/11 (五) 13:00 ~ 13:30', 368, NULL, 10),
(78, 34, '2020/12/11 (五) 16:30 ~ 17:00', 368, NULL, 10),
(79, 34, '2020/12/11 (五) 17:30 ~ 18:00', 368, NULL, 10),
(80, 34, '2020/12/12 (六) 11:00 ~ 11:30', 368, NULL, 10),
(81, 34, '2020/12/12 (六) 13:00 ~ 13:30', 368, NULL, 10),
(82, 34, '2020/12/12 (六) 16:30 ~ 17:00', 368, NULL, 10),
(83, 34, '2020/12/12 (六) 17:30 ~ 18:00', 368, NULL, 10),
(84, 34, '2020/12/13 (日) 13:00 ~ 13:30', 368, NULL, 10),
(85, 34, '2020/12/13 (日) 16:30 ~ 17:00', 368, NULL, 10),
(86, 34, '2020/12/13 (日) 17:30 ~ 18:00', 368, NULL, 10),
(87, 35, '2020/11/23 (一) 11:00 ~ 15:10', 2775, NULL, 10),
(88, 35, '2020/11/23 (一) 12:00 ~ 16:00', 2775, NULL, 10),
(89, 35, '2020/11/23 (一) 18:00 ~ 22:00', 2775, NULL, 10),
(90, 35, '2020/11/25 (三) 11:00 ~ 15:10', 2775, NULL, 10),
(91, 35, '2020/11/25 (三) 12:00 ~ 16:00', 2775, NULL, 10),
(92, 35, '2020/11/25 (三) 18:00 ~ 22:00', 2775, NULL, 7),
(93, 35, '2020/11/27 (五) 11:00 ~ 15:10', 2775, NULL, 8),
(94, 35, '2020/11/27 (五) 12:00 ~ 16:00', 2775, NULL, 10),
(95, 35, '2020/11/27 (五) 18:00 ~ 22:00', 2775, NULL, 10),
(96, 36, '2020/11/26 (四) 14:30 ~ 16:30', 2000, NULL, 10),
(97, 36, '2020/12/2 (三) 14:30 ~ 16:30', 2000, NULL, 9),
(98, 36, '2020/12/5 (六) 19:00 ~ 21:00', 2000, NULL, 5),
(99, 36, '2020/12/11 (五) 19:00 ~ 21:00', 2000, NULL, 10),
(100, 36, '2020/12/16 (三) 19:00 ~ 21:00', 2000, NULL, 9),
(101, 37, '2020/11/25 (三) 13:30 ~ 15:30', 650, NULL, 0),
(102, 38, '2020/11/28 (六) 14:00 ~ 17:00', 1380, NULL, 1),
(103, 38, '2020/11/29 (日) 14:00 ~ 17:00', 1380, NULL, 1),
(104, 39, '2020/11/28 (六) 13:30 ~ 15:30', 980, NULL, 5),
(105, 39, '2020/11/29 (日) 13:30 ~ 15:30', 980, NULL, 5),
(106, 39, '2020/12/4 (五) 13:30 ~ 15:30', 980, NULL, 5),
(107, 39, '2020/12/5 (六) 13:30 ~ 15:30', 980, NULL, 3),
(108, 39, '2020/12/6 (日) 13:30 ~ 15:30', 980, NULL, 3),
(109, 40, '2020/11/23 (一) 11:00 ~ 19:00', 1280, NULL, 10),
(110, 40, '2020/11/24 (二) 11:00 ~ 19:00', 1280, NULL, 10),
(111, 40, '2020/11/25 (三) 11:00 ~ 19:00', 1280, NULL, 4),
(112, 40, '2020/11/26 (四) 11:00 ~ 19:00', 1280, NULL, 5),
(113, 40, '2020/11/27 (五) 11:00 ~ 19:00', 1280, NULL, 6),
(114, 40, '2020/11/28 (六) 11:00 ~ 19:00', 1280, NULL, 6),
(115, 40, '2020/11/29 (日) 11:00 ~ 19:00', 1280, NULL, 6),
(116, 41, '-', 2500, 2000, 30);

-- --------------------------------------------------------

--
-- 資料表結構 `template`
--

CREATE TABLE `template` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL,
  `unit_price` int(10) NOT NULL,
  `plan_level` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `template`
--

INSERT INTO `template` (`Id`, `name`, `img`, `plan_id`, `unit_price`, `plan_level`) VALUES
(1, 'Alchemy', 'Alchemy.jpg', 2, 2000, 'PRO'),
(2, 'Artisan', 'Artisan.jpg', 1, 1500, 'FREE'),
(3, 'Atlanta', 'Atlanta.png', 2, 2000, 'PRO'),
(4, 'Atlantic', 'Atlantic.png', 1, 1500, 'FREE'),
(5, 'Blockshop', 'Blockshop.png', 2, 2000, 'PRO'),
(6, 'Brodcast', 'Brodcast.jpg', 1, 1500, 'FREE'),
(7, 'Brooklyn', 'Brooklyn.jpg', 1, 1500, 'FREE'),
(8, 'California', 'California.jpg', 1, 1500, 'FREE'),
(9, 'Cascade', 'Cascade.png', 2, 2000, 'PRO'),
(10, 'Colors', 'Colors.jpg', 2, 2000, 'PRO'),
(11, 'Context', 'Context.png', 2, 2000, 'PRO'),
(12, 'Debut', 'Debut.jpg', 2, 2000, 'PRO'),
(13, 'District', 'District.png', 2, 2000, 'PRO'),
(14, 'Spring', 'Spring.jpg', 2, 2000, 'PRO'),
(15, 'Editions', 'Editions.jpg', 2, 2000, 'PRO'),
(16, 'Envy', 'Envy.png', 2, 2000, 'PRO'),
(17, 'Mr.Parker', 'Mr.Parker.jpg', 2, 2000, 'PRO'),
(18, 'Flow', 'Flow.png', 2, 2000, 'PRO'),
(19, 'Galleria', 'Galleria.jpg', 2, 2000, 'PRO'),
(20, 'Grid', 'Grid.png', 2, 2000, 'PRO'),
(21, 'Impulse', 'Impulse.jpg', 2, 2000, 'PRO'),
(22, 'Handy', 'Handy.png', 2, 2000, 'PRO'),
(23, 'Masonar', 'Masonar.jpg', 2, 2000, 'PRO'),
(24, 'Kingdom', 'Kingdom.jpg', 2, 2000, 'PRO'),
(25, 'Mobila', 'Mobila.jpg', 2, 2000, 'PRO'),
(26, 'Minimal', 'Minimal.jpg', 2, 2000, 'PRO'),
(27, 'Mobilur', 'Mobilur.jpg', 2, 2000, 'PRO'),
(28, 'Modular', 'Modular.png', 2, 2000, 'PRO'),
(29, 'Motion', 'Motion.jpg', 2, 2000, 'PRO'),
(30, 'Expression', 'Expression.jpg', 2, 2000, 'PRO'),
(31, 'Pipeline', 'Pipeline.jpg', 2, 2000, 'PRO'),
(32, 'Prestige', 'Prestige.jpg', 2, 2000, 'PRO'),
(33, 'Retina', 'Retina.jpg', 2, 2000, 'PRO'),
(34, 'Serena', 'Serena.png', 2, 2000, 'PRO'),
(35, 'Spilt', 'Spilt.jpg', 2, 2000, 'PRO'),
(36, 'Startup', 'Startup.png', 2, 2000, 'PRO'),
(37, 'Supply', 'Supply.jpg', 2, 2000, 'PRO'),
(38, 'Testament', 'Testament.jpg', 2, 2000, 'PRO'),
(39, 'Trade mark', 'Trade mark.jpg', 2, 2000, 'PRO'),
(40, 'Venue', 'Venue.jpg', 2, 2000, 'PRO'),
(41, 'Vantage', 'Vantage.jpg', 2, 2000, 'PRO'),
(42, 'West', 'West.jpg', 2, 2000, 'PRO');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `ads_data`
--
ALTER TABLE `ads_data`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `ads_in_progress`
--
ALTER TABLE `ads_in_progress`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `brand_info`
--
ALTER TABLE `brand_info`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `channel_login_type`
--
ALTER TABLE `channel_login_type`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `channel_message`
--
ALTER TABLE `channel_message`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contract_id` (`contract_id`);

--
-- 資料表索引 `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`);

--
-- 資料表索引 `customer_subscribes`
--
ALTER TABLE `customer_subscribes`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `customer_wishlist`
--
ALTER TABLE `customer_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `deposit_table`
--
ALTER TABLE `deposit_table`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `e_points_logs`
--
ALTER TABLE `e_points_logs`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `last_id`
--
ALTER TABLE `last_id`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `member question`
--
ALTER TABLE `member question`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brand_en_name` (`brand_en_name`),
  ADD UNIQUE KEY `tax_id` (`tax_id`);

--
-- 資料表索引 `merchant_contacts`
--
ALTER TABLE `merchant_contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `merchant_contact_id` (`merchant_contact_id`);

--
-- 資料表索引 `merchant_data`
--
ALTER TABLE `merchant_data`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `merchant_income_week`
--
ALTER TABLE `merchant_income_week`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `merchant_types`
--
ALTER TABLE `merchant_types`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `needs_manager`
--
ALTER TABLE `needs_manager`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_number` (`order_number`);

--
-- 資料表索引 `order_deliveries`
--
ALTER TABLE `order_deliveries`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `order_evaluations`
--
ALTER TABLE `order_evaluations`
  ADD PRIMARY KEY (`comment_id`);

--
-- 資料表索引 `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `plan_type`
--
ALTER TABLE `plan_type`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product_skus`
--
ALTER TABLE `product_skus`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`Id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `ads_data`
--
ALTER TABLE `ads_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `ads_in_progress`
--
ALTER TABLE `ads_in_progress`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `brand_info`
--
ALTER TABLE `brand_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `channel_login_type`
--
ALTER TABLE `channel_login_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `channel_message`
--
ALTER TABLE `channel_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customer_subscribes`
--
ALTER TABLE `customer_subscribes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customer_wishlist`
--
ALTER TABLE `customer_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `deposit_table`
--
ALTER TABLE `deposit_table`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `e_points_logs`
--
ALTER TABLE `e_points_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `information`
--
ALTER TABLE `information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `last_id`
--
ALTER TABLE `last_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member question`
--
ALTER TABLE `member question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `merchants`
--
ALTER TABLE `merchants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `merchant_contacts`
--
ALTER TABLE `merchant_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `merchant_data`
--
ALTER TABLE `merchant_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `merchant_income_week`
--
ALTER TABLE `merchant_income_week`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `merchant_types`
--
ALTER TABLE `merchant_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `needs_manager`
--
ALTER TABLE `needs_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_deliveries`
--
ALTER TABLE `order_deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_evaluations`
--
ALTER TABLE `order_evaluations`
  MODIFY `comment_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `plan_type`
--
ALTER TABLE `plan_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_skus`
--
ALTER TABLE `product_skus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `template`
--
ALTER TABLE `template`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
