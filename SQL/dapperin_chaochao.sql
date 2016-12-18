-- phpMyAdmin SQL Dump
-- version 4.4.15
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 18, 2016 at 11:43 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dapperin_chaochao`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `user_id` int(8) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(80) NOT NULL,
  `display_name` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Member'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`user_id`, `username`, `password`, `email`, `display_name`, `status`) VALUES
(1, 'a', '1', 'a@hotmail.com', 'A1', 'Member'),
(2, 'aigdy', '1234', 'arinofjung@hotmail.com', 'AIGDY9', 'Member'),
(3, 'newfml', '1234', 'newnuk@gmail.com', 'NEW22', 'Admin'),
(4, 'S', '78', 'kunhong7827@gmail.com', 'AOY78', 'Member'),
(7, 'QQ', 'QQ', 'QQ@gmail.com', 'QQ', 'Member'),
(8, '111', '111', '111@gmail.com', '1112', 'Member'),
(11, 'Aoy', '1234', 'Aoy@gmail.com', 'Aoyz78', 'Member'),
(12, 'Groot', '1234', 'Groot@gmail.com', 'AMGroot', 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` int(10) NOT NULL,
  `user_id` int(8) NOT NULL,
  `user_id_friend` int(8) NOT NULL,
  `name` varchar(25) NOT NULL,
  `tel` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `question_id` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `choice1` text COLLATE utf8_unicode_ci NOT NULL,
  `choice2` text COLLATE utf8_unicode_ci NOT NULL,
  `choice3` text COLLATE utf8_unicode_ci NOT NULL,
  `choice4` text COLLATE utf8_unicode_ci NOT NULL,
  `answer` int(5) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `question`, `choice1`, `choice2`, `choice3`, `choice4`, `answer`, `datetime`) VALUES
(1, 'หลังจากที่เบคแฮมโดนใบแดงแล้วไปไหน', 'ไปตรวจสุขภาพ', 'ไปเป็นทหาร', 'ไปนอกสนาม', 'กลับบ้าน', 2, '2016-12-18 13:33:01'),
(2, 'เกาะอะไรมีแต่คนมอง ', 'เกาะร้าง', 'เกาะเสม็ด', 'เกาะอกหลุด', 'เกาะขาม', 3, '2016-12-18 13:33:06'),
(3, 'ซุปอะไรมีสารอาหารมากที่สุด', 'ซุปไก่สกัด', 'ซุปเห็ด', 'ซุปข้าวโพด', 'ซุปซุปเปอร์มาร์เกต ', 4, '2016-12-18 13:33:10'),
(4, 'ทำไมคำว่า Coca-Cola ถึงต้องใช้ซีตัวใหญ่', 'ถ้าเป็นซีเล็กก็กลายเป็นปลาทูน่าอ่ะเด่ะ ', 'มันสวยไง', 'อยากให้มันใหญ่', 'ไม่รู้เค้าตั้งมา', 1, '2016-12-18 13:33:14'),
(5, 'จระเข้โดนตัดหางเป็นอะไร', 'จิ้งจก', 'ตุ๊กแก', 'หูด', 'แผล', 4, '2016-12-18 13:33:25'),
(6, 'แปดโมงเช้าวันอังคาร ร้องยังไง ? ', 'ถามปาล์มมี่', 'แปดโมงเข้าวันอังคาร ถึงเวลาจะจากลา.....', 'ประเทศไทยรวมเลือดเนื้อชาติเชื้อไทย ', 'อยากจะร้องดังๆ', 3, '2016-12-18 13:33:35'),
(7, 'พี่มากพานางนากขึ้นรถเมล์จะเสียเงินเท่าไร', '8 บาท', '6 บาท 50 สตางค์', '10 บาท', '7 บาท', 2, '2016-12-18 13:33:41'),
(8, 'จระเข้เป็นหลานของใคร ? ', 'หลานยายมี', 'หลานตาแฉ่ม', 'หลานจักรยาน', 'หลานตาโอ๊ต', 3, '2016-12-18 13:33:46'),
(9, 'คนที่ตายไปแล้ว คุณคิดว่าเขาไปสบายหรือไปลำบาก', 'ไปสบาย', 'ไปลำบาก', 'ไปแบบกลางๆ', 'ไม่รู้สิไม่เคยตาย', 1, '2016-12-18 13:33:53'),
(10, 'ปลาอะไรเอ๋ยอึไม่ออกาย ', 'ปลาซิว', 'ปลาเก๋า', 'ปลาเทวดา', 'ปลาไส้ตัน', 4, '2016-12-18 13:33:57'),
(11, 'เรื่องอะไรที่คุณคิดว่ากวนที่สุด', 'เรื่องตลก', 'เรื่องชาวบ้าน', 'เรื่องอะไร ผมจะบอกคุณ', 'เรื่องของกูสิคะ', 3, '2016-12-18 13:34:06'),
(12, 'ตั้งแต่ ก.ท.ม. - เชียงใหม่ถ้าขับรถมาจะมีกี่โค้ง', '8 โค้ง', '4 โค้ง', '2 โค้ง', 'ไม่รู้อ่ะ', 3, '2016-12-18 13:34:12'),
(13, 'ผลไม้อะไรเปลือกแข็งที่สุดในโลก', 'ขนุน', 'ทุเรียน', 'เงาะกระป๋อง', 'ลำไย', 3, '2016-12-18 13:39:14'),
(14, 'ห้องอะไรเอ่ยไม่ต้อนรับคนจีน', 'ห้องละมาด', 'ห้องสวดมนต์', 'ห้องรับแขก', 'ห้องดับจิต', 3, '2016-12-18 13:39:48'),
(15, 'ทำไมญาติคนตาย ถึงไม่นิยมนำกาแฟมาเป็นเครื่องเซ่น ข้างโลงศพ แต่จะเป็นของคาว-หวาน ', 'เพราะความเชื่อโบราณ ว่า " จะทำให้ตายตาไม่หลับ "', 'เพราะความเชื่อโบราณ ว่า " ไม่ควรนำของดำไหว้ศพ "', 'เพราะความเชื่อโบราณ ว่า " กาแฟเป็นของคนเป็น "', 'เพราะความเชื่อโบราณ ว่า " กาแฟเป็นสัญลักษณ์ของความขมขื่น "', 1, '2016-12-18 13:47:43'),
(16, 'สมมติว่าคุณเป็นเจ้าของร้านอาหารร้านหนึ่ง ทั้งร้านมีโต๊ะอาหาร 4 โต๊ะ ..โต๊ะหนึ่ง โต๊ะสองเพิ่งสั่งอาหารโต๊ะสามจ่ายเงินเเล้วแต่โต๊ะสี่เบี้ยว คุณจะทำอย่างไร ', 'สั่งเครีย', 'กระทืบ', 'จัดให้ตรง', 'ตามไปทวง', 3, '2016-12-18 13:48:58'),
(17, 'ถ้าคุณไปหาเสียงแสดงว่าเสียงของคุณหายไปไหน', 'หายไปคูหา', 'หายไปไหนไม่รู้', 'ไม่ได้หายไปไหน', 'หายไปเลือกตั้ง', 3, '2016-12-18 13:49:45'),
(18, 'ถ้าคุณไปหาเสียงแสดงไปหาเสียงของใคร', 'ของตัวเอง', 'ของหัวหน้าพรรค', 'ของนายก', 'ถูกทุกข้อ', 4, '2016-12-18 13:49:57'),
(19, 'ถ้าคุณเสียงหายคุณจะไปหาใคร', 'ดีเจ', 'หัวหน้าพรรค', 'ของนายก', 'หมอ', 4, '2016-12-18 13:49:30'),
(20, 'ส้มโชกุน คนที่ให้กำเนิดเป็นโชกุนจากประเทศอะไร', 'จีน', 'ญี่ปุ่น', 'เกาหลี', 'ไม่เกี่ยวกับโชกุน', 4, '2016-12-18 13:47:55'),
(21, 'ส้มโชกุนที่จังหวัดอะไร', 'นนทบุรี', 'กรุงเทพ', 'เชียงใหม่', 'สุโขทัย', 4, '2016-12-18 13:48:14'),
(22, 'ส้มเช้ง สามช่าเกิดที่จังหวัดอะไร', 'นนทบุรี', 'กรุงเทพ', 'เชียงใหม่', 'ผิดทุกข้อ', 2, '2016-12-18 13:49:16'),
(23, 'ถ้าพระจำศีลแสดงว่าพระทำอะไรอยู่', 'รักษาศีล', 'อาราธนาศีล', 'ท่องศีล', 'ถูกทุกข้อ', 1, '2016-12-18 13:48:46'),
(24, 'ถ้าจุดยากันยุงในบ้านจะ กันยุงเข้า หรือ กันยุงออก', 'กันยุงเข้า', 'กันยุงออก', 'กันยุงหนาว', 'ไม่กันอะไรเลย', 1, '2016-12-18 13:48:03'),
(25, 'ถ้าเมารถแล้วขับ ตำจรวจจะจับหรือไม่', 'ไม่จับ เพราะ ไม่ได้ขับ', 'จับ เพราะเป็นอาชญากรรม', 'ไม่จับ เพราะไม่ได้เมาเหล้า', 'จับหรือไม่จับก็ได้', 3, '2016-12-18 13:40:25'),
(26, 'ถ้าเราใช้น้ำยาล้างเล็บล้างไป 2 เล็บเราจะเหลือกี่เล็บ', '8 เล็บ', '18 เล็บ', '2 เล็บ', '10', 4, '2016-12-18 13:45:09'),
(27, 'โรงเรียนอะไรมีแต่ความรัก', 'โรงเรียนชายล้วน', 'โรงเรียนหญิงล้วน', 'โรงเรียนคนตาบอด', 'โรงเรียนสอนทำขนม', 3, '2016-12-18 13:50:31'),
(28, 'ตุ๊กกี้ กับ โก๊ะตี๋ ใครสูงกว่ากัน', 'โก๊ะตี๋', 'ตุ๊กกี้', 'เท่ากัน', 'ใครจะสูงเท่าไหร่ก้ได้ไม่เกี่ยวกับเรา', 1, '2016-12-18 13:46:28'),
(29, 'ตุ๊กกี้ กับเสนาหอย ใครสูงกว่ากัน', 'เสนาหอย', 'ตุ๊กกี้', 'โก๊ะตี๋', 'สูงเท่ากัน', 1, '2016-12-18 13:47:10'),
(30, 'ตุ๊กกี้ กับเสือเตี้ย มาราโดน่า ใครสูงกว่ากัน', 'ตุ๊กกี้', 'เสือเตี้ย มาราโดน่า', 'เสนาหอย', 'สูงเท่ากัน', 2, '2016-12-18 13:47:26'),
(31, ' ตุ๊กกี้ กับ โดราเอม่อน ใครสูงกว่ากัน', 'โดเรม่อน', 'โดเรมี่', 'ตุ๊กกี้', 'สูงเท่ากัน', 3, '2016-12-18 13:48:08'),
(32, 'ฟุตบอลโลก 2018 ประเทศไหนเป็นเจ้าภาพ', 'จีน', 'ฝรั่งเศษ', 'รัสเซีย', 'สหรัฐอเมริกา', 3, '2016-12-18 13:48:24'),
(33, 'ฟุตบอลโลก 2010 ประเทศไหนเป็นเจ้าภาพ', 'อังกฤษ', 'อินโดนีเซีย', 'ญี่ปุ่น', 'แอฟริกาใต้', 4, '2016-12-18 13:48:41'),
(34, 'ฟุตบอลโลก 2014 ประเทศไหนไม่ได้เป็นเจ้าภาพ', 'ประเทศอะไรก็ได้ที่ไม่ใช่อิตาลี', 'ประเทศอะไรก็ได้ที่ไม่ใช่อังกฤษ', 'ประเทศอะไรก็ได้ที่ไม่ใช่บราซิล', 'ประเทศอะไรก็ได้ที่ไม่ใช่จีน', 3, '2016-12-18 13:49:12'),
(35, 'ไพ่ 1 สำรับ มีอักษรภาษาอังกฤษกี่ตัว', '1ตัว', '2ตัว', '3ตัว', '4ตัว', 4, '2016-12-17 16:25:21'),
(36, 'ไปสุราษฎร์เจอหินตา หินยาย สรุปว่าหินตา เป็นเพศอะไร', 'เพศชาย', 'เพศหญิง', 'ไม่มีเพศ', 'กระเทย', 3, '2016-12-18 13:49:33'),
(37, 'เมาคลี เป็นลูกอะไร', 'หมาป่า', 'สิงโต', 'ลูกคน', 'ลูกลิง', 3, '2016-12-18 13:49:58'),
(38, 'ช้างแอฟริกา จะมีงาเฉพาะเพศไหน', 'ทั้ง 2 เพศ', 'เพศผู้', 'เพศเมีย', 'เพศเมียตอนโตเต็มวัย', 1, '2016-12-18 13:49:46'),
(39, 'น้ำพริกหนุ่ม ทำมาจากพริกอะไร', 'พริกสวน', 'พริกชี้ฟ้า', 'พริกหนุ่ม', 'ไม่เกี่ยวกับชื่อพริก', 3, '2016-12-18 13:50:08'),
(40, 'การลอยอังคาร ต้องลอยวันไหน', 'วันที่ 2 ของเดือน', 'วันที่ 13 ของเดือน', 'วันอังคาร', 'วันไหนก็ได้', 4, '2016-12-18 13:50:53'),
(41, 'ลูกสาวกำนัน แสดงว่ากำนันเป็นพ่อ หรือเป็นแม่', 'เป็นพ่อ', 'เป็นแม่', 'ไม่เกี่ยวกัน', 'เป็นได้ทั้งสอง ทั้งพ่อและแม่', 4, '2016-12-18 13:52:04'),
(42, 'โลโก้ยาหม่องตราถ้วยทอง คนถือถ้วยทอง เป็นผู้หญิงหรือผู้ชาย', 'ผู้ชาย', 'ผู้หญิง', 'ไม่มี', 'ลิง', 3, '2016-12-18 13:52:22'),
(43, 'ซีอิ๋วดำ มีสีอะไร', 'สีขาว', 'สีน้ำตาล', 'สีดำ', 'สีใส', 3, '2016-12-18 13:51:17'),
(44, 'ถ้าเรามีสามน้า แสดงว่าแม่เราต้องไม่เป็นลูกคนโต หรือ ไม่เป็นลูกคนเล็ก', 'ไม่เป็นลูกคนเล็ก', 'ไม่เป็นลูกคนโต', 'เป็นลูกคนโต', 'เป็นลุกคนเล็ก', 1, '2016-12-18 13:52:45'),
(45, 'ถ้าเรามีสามน้า แสดงว่าย่าต้องมีลูกอย่างน้อยกี่คน', '1 คน', '2 คน', '3 คน', 'ไม่เกี่ยว', 4, '2016-12-18 13:53:02'),
(46, 'ถ้าเราเป็นหลานของ 3 น้า น้าของ 3 น้าจะเป็นอะไรกับเรา', 'ย่า', 'ยาย', 'ป้า', 'น้า', 2, '2016-12-18 13:53:16'),
(47, 'ถ้ารดไฟบนรถไฟ อะไรเปียก', 'รถไฟ', 'ไฟ', 'พื้น', 'ไม่มีอะไีรเปียก', 3, '2016-12-18 13:53:33'),
(48, 'โรตีสายไหม เป็นโรตีสายไหม', 'เป็นโรตีสาย', 'เกือบสาย', 'ไม่สาย', 'เป็นโรตีเฉยๆ', 4, '2016-12-18 13:53:49'),
(49, ' ผู้สูงอายุ ต้องมีอายุเท่าไหร่ขึ้นไป', '55', '60', '65', '70', 2, '2016-12-18 13:50:38'),
(50, 'ถ้าคนอายุ 65 สูง 145 จะต้องเรียกว่าผู้สูงอายุ หรือ ผู้เตี้ยอายุ', 'ผู้สูงอายุ', 'ผู้เตี้ยอายุ', 'ไม่เกี่ยวกัน', 'เรียกได้สองอยาง', 1, '2016-12-18 13:50:20'),
(51, 'พระถังซัมจั๋ง กับ พระถังซัมซุง อะไรมาจากเกาหลี??', 'จีวร', 'มือถือ', 'รองเท้า', 'ไม่มี', 4, '2016-12-18 13:54:13'),
(54, 'แม่นาค เป็นคนจังหวัดอะไร', 'สุพรรณ', 'กรุงเทพ', 'นนทบุรี', 'อยุธยา', 2, '2016-12-18 16:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE IF NOT EXISTS `score` (
  `id_score` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `datetime_score` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id_score`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `user_id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id_score` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;