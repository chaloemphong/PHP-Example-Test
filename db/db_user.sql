-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2017 at 02:46 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_user`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `AnswerID` int(11) NOT NULL,
  `QuestionID` int(100) NOT NULL,
  `Answer` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`AnswerID`, `QuestionID`, `Answer`) VALUES
(0, 0, ''),
(1, 2, 'การเรียงลำดับข้อมูล'),
(2, 2, 'การเชื่อมโยงหลายมิติ'),
(3, 2, 'การกรองข้อมูล'),
(4, 2, 'ผลรวมอัตโนมัติ'),
(5, 3, 'แถบสถานะ'),
(6, 3, 'แถบตัวอักษร'),
(7, 3, 'แถบสูตรคำนวณ'),
(8, 3, 'แถบเครื่องมือวาดภาพ'),
(9, 4, 'ตรึงแถว'),
(10, 4, 'เลื่อนหน้ากระดาษ'),
(11, 4, 'ตรึงคอลัมน์'),
(12, 4, 'ตรึงคอลัมน์และตรึงแถว'),
(13, 5, 'หน้าหลัก > จัดรูปแบบตามเงื่อนไข> เลือกแถบข้อมูล'),
(14, 5, 'หน้าหลัก > จัดรูปแบบตามเงื่อนไข >เลือกชุดไอคอน'),
(15, 5, 'หน้าหลัก>จัดรูปแบบตามเงื่อนไข> เลือกแถบสี'),
(16, 5, 'แทรก >แผนภูมิ'),
(17, 6, 'การจัดเรียงข้อมูล'),
(18, 6, 'จัดรูปแบบตัวอักษร'),
(19, 6, 'ตรึงข้อมูล'),
(20, 6, 'สลับคอลัมน์'),
(21, 7, 'ฟังก์ชั่น SUM'),
(22, 7, 'ฟังก์ชั่น IF'),
(23, 7, 'ฟังก์ชั่น MAX'),
(24, 7, 'ฟังก์ชั่น MIN'),
(25, 8, '=MAX(C2:C7)'),
(26, 8, '=IF(B2<=100,\"ไม่ผลิต\")'),
(27, 8, '=IF(B2<=100,\"ผลิต\",\"ไม่ผลิต\")'),
(28, 8, '=SUM(B2<=100,\"ผลิต\",\"ไม่ผลิต\")'),
(29, 9, 'การอ้างอิงแบบแน่นอน'),
(30, 9, 'การอ้างอิงแบบผสม'),
(31, 9, 'การอ้างอิงแบบสัมพันธ์'),
(32, 9, 'การอ้างอิงแบบระบุตำแหน่ง'),
(33, 10, 'การอ้างอิงแบบผสม'),
(34, 10, 'การอ้างอิงแบบสัมพันธ์'),
(35, 10, 'การอ้างอิงเซลล์ในแผ่นงานอื่น'),
(36, 10, 'การอ้างอิงแบบระบุตำแหน่ง'),
(37, 11, 'แถบเมนูการจัดการ'),
(38, 11, 'แถบเครื่องมือรูปแบบ'),
(39, 11, 'แถบสถานะ'),
(40, 11, 'แถบชื่อเรื่อง'),
(41, 12, '13,484 คอลัมน์'),
(42, 12, '15,380 คอลัมน์'),
(43, 12, '16,384 คอลัมน์'),
(44, 12, '12,480 คอลัมน์'),
(45, 13, 'Shift+F11'),
(46, 13, 'Shift+F10'),
(47, 13, 'Shift+HOME'),
(48, 13, 'Ctrl + C'),
(49, 14, 'เป็นโปรแกรมที่สามารถออกแบบได้เป็นอย่างดี'),
(50, 14, 'เป็นโปรแกรมจัดการข้อมูลในตารางเป็นอย่างดี'),
(51, 14, 'เป็นโปรแกรมตกแต่งรูปภาพเป็นอย่างดี'),
(52, 14, 'เป็นโปรแกรมสามารถพิมพ์เอกสาร'),
(53, 15, 'None'),
(54, 15, 'Count'),
(55, 15, 'Average'),
(56, 15, 'Sum'),
(57, 16, '9'),
(58, 16, '10'),
(59, 16, '12'),
(60, 16, '14'),
(61, 17, '2 ลักษณะ'),
(62, 17, '4 ลักษณะ'),
(63, 17, '3 ลักษณะ'),
(64, 17, '5 ลักษณะ'),
(65, 18, 'เปิดชีตใหม่'),
(66, 18, 'ยกเลิกการคัดลอก'),
(67, 18, 'สลับข้อมูลในเซลล์'),
(68, 18, 'ปิดโปรแกรม'),
(69, 19, 'บันทึกข้อมูล'),
(70, 19, 'แก้ไขข้อมูล'),
(71, 19, 'ปิดโปรแกรม'),
(72, 19, 'เปิดหน้าเอกสารใหม่'),
(73, 20, 'คอลัมน์ที่A ช่องที่9'),
(74, 20, 'คอลัมน์ที่A แถวที่9'),
(75, 20, 'คอลัมน์ที่9 แถวA'),
(76, 20, 'ช่องที่A แถว9'),
(77, 21, 'E1หารA1คูณB1บวกC1หารD1'),
(78, 21, 'A1คูณB1บวกC1หารD1คูณE1หาร2'),
(79, 21, 'A1หารB1บวกC1คูณD1คูณE1ยกกำลังสอง'),
(80, 21, 'A1คูณB1บวกC1หารD1คูณE1ยกกำลังสอง'),
(81, 22, 'คลิกขวา -> ซ่อน'),
(82, 22, ' ลักษณะของแบบอักษร'),
(83, 22, 'คลิกขวา -> จัดรูปแบบเซลล์'),
(84, 22, ' ขนาด'),
(85, 23, 'ชิดขวา'),
(86, 23, 'ขวาล่าง'),
(87, 23, 'กลางเซลล์'),
(88, 23, 'ชิดซ้าย'),
(89, 24, 'ชิดขวา'),
(90, 24, 'กลางเซลล์'),
(91, 24, 'ชิดซ้าย'),
(92, 24, 'ขวาล่าง');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `QuestionID` int(11) NOT NULL,
  `Question` varchar(500) NOT NULL,
  `AnswerTrue` varchar(300) NOT NULL,
  `img` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`QuestionID`, `Question`, `AnswerTrue`, `img`) VALUES
(2, 'หมายถึงข้อใด', 'ผลรวมอัตโนมัติ', '758.png'),
(3, 'ในภาพคือแถบเครื่องมืออะไร', 'แถบสูตรคำนวณ', '145.png'),
(4, 'ในภาพคือเครื่องมือนี้มีไว้สำหรับทำอะไร', 'ตรึงคอลัมน์และตรึงแถว', '15.jpg'),
(5, 'ถ้าต้องการผลลัพธ์ดังในรูปภาพเราจะต้องทำอย่างไร', 'หน้าหลัก > จัดรูปแบบตามเงื่อนไข> เลือกแถบข้อมูล', '1.png'),
(6, 'เครื่องมือนี้มีไว้สำหรับทำอะไร', 'การจัดเรียงข้อมูล', '785.jpg'),
(7, 'ในภาพ เซลล์ C2 ใช้ฟังก์ชั่นอะไรในการคำนวณ', 'ฟังก์ชั่น IF', '165.jpg'),
(8, 'ถ้าต้องการผลลัพธ์ดังภาพ เงื่อนไขคือถ้าสินค้าคงเหลือ \"มากกว่า100 ไม่ผลิต\" จะเขียนสูตรคำนวณอย่างไร', '=IF(B2<=100,\"ผลิต\",\"ไม่ผลิต\")', '98.jpg'),
(9, 'ในภาพคือการอ้างอิงข้อมูลในลักษณะใด', 'การอ้างอิงแบบแน่นอน', '96.jpg'),
(10, 'ในภาพคือการอ้างอิงในรูปแบบใด', 'การอ้างอิงเซลล์ในแผ่นงานอื่น', '12.jpg'),
(11, ' ในภาพคือแถบเครื่องมืออะไร', 'แถบชื่อเรื่อง', '967.jpg'),
(12, 'Microsoft Excel 2013 มีทั้งหมดกี่คอลัมน์', '16,384 คอลัมน์', ''),
(13, 'ถ้าเราต้องการเพิ่ม Worksheet เราสามารถกดปุ่มใดในคีย์บอร์ด', 'Shift+F11', ''),
(14, 'ข้อใดคือคุณสมบัติของโปรแกรม Microsoft Excel', 'เป็นโปรแกรมจัดการข้อมูลในตารางเป็นอย่างดี', ''),
(15, 'ฟังก์ชั่นที่ใช้ในการการนับคือข้อใด', 'Count', ''),
(16, '5*2+(8/2) การจัดลำดับในการคำนวณผลลัพธ์ คือข้อใด', '14', ''),
(17, 'การอ้างอิงข้อมูลแบบออกเป็นกี่ลักษณะ', '3 ลักษณะ', ''),
(18, 'เมื่อเรากดปุ่ม F4 บนคีย์บอร์ด', 'ปิดโปรแกรม', ''),
(19, 'เมื่อเรากดปุ่ม F2 ในเซลล์จะเกิดอะไรขึ้น', 'แก้ไขข้อมูล', ''),
(20, 'ตำแหน่ง A9 หมายถึงข้อใด', 'คอลัมน์ที่A แถวที่9', ''),
(21, '=((A1*B1)+(C1/D1)*E1^2)หมายความว่าอย่างไร', 'A1คูณB1บวกC1หารD1คูณE1ยกกำลังสอง', ''),
(22, 'การซ่อนหรือแสดงข้อมูล กระทำได้โดย ? ', 'คลิกขวา -> ซ่อน', ''),
(23, 'ข้อมูลประเภทข้อความ ปกติจะอยู่ส่วนใดของเซลล์ที่ป้อน', 'ชิดซ้าย', ''),
(24, 'ข้อมูลประเภทตัวเลข ปกติจะอยู่ส่วนใดของเซลล์ที่ป้อน', 'ชิดขวา', '');

-- --------------------------------------------------------

--
-- Table structure for table `userscore`
--

CREATE TABLE `userscore` (
  `num` int(11) NOT NULL,
  `Score_frist` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userscore`
--

INSERT INTO `userscore` (`num`, `Score_frist`) VALUES
(1, 0),
(2, 2),
(3, 5),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 4),
(9, 1),
(10, 1),
(11, 5),
(12, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`AnswerID`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`QuestionID`);

--
-- Indexes for table `userscore`
--
ALTER TABLE `userscore`
  ADD PRIMARY KEY (`num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `QuestionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `userscore`
--
ALTER TABLE `userscore`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
