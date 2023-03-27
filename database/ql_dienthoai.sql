-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2023 at 10:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ql_dienthoai`
--
CREATE DATABASE IF NOT EXISTS `ql_dienthoai` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `ql_dienthoai`;

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MAHD` int(10) NOT NULL,
  `MASP` char(50) NOT NULL,
  `DONGIA` int(30) NOT NULL,
  `SOLUONG` int(30) NOT NULL,
  `TONGITEN` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `MASP` char(50) NOT NULL,
  `TENSP` varchar(50) DEFAULT NULL,
  `DONGIA` int(10) NOT NULL,
  `HINHANH` varchar(50) DEFAULT NULL,
  `SOLUONG` int(10) NOT NULL,
  `TONGTIEN` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MAHD` int(10) NOT NULL,
  `TENKH` varchar(50) NOT NULL,
  `TONGTIEN` int(50) NOT NULL,
  `NGAYLAPHD` date NOT NULL,
  `SDT` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phanloai`
--

CREATE TABLE `phanloai` (
  `MALOAI` char(30) NOT NULL,
  `TENLOAI` varchar(50) NOT NULL,
  `HINHANH` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phanloai`
--

INSERT INTO `phanloai` (`MALOAI`, `TENLOAI`, `HINHANH`) VALUES
('IP', 'Iphone', 'Iphone.png'),
('OP', 'oppo', 'oppo.png'),
('SS', 'samsung', 'samsung.png'),
('XAM', 'xiaomi', 'xiaomi.png');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MASP` char(50) NOT NULL,
  `TENSP` varchar(100) NOT NULL,
  `DONGIA` int(11) NOT NULL,
  `SOLUONG` int(11) NOT NULL,
  `HINHANH` varchar(100) DEFAULT NULL,
  `MALOAI` char(30) DEFAULT NULL,
  `MOTA` varchar(500) DEFAULT NULL,
  `CHITIET` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MASP`, `TENSP`, `DONGIA`, `SOLUONG`, `HINHANH`, `MALOAI`, `MOTA`, `CHITIET`) VALUES
('01', 'Điện thoại iPhone SE 128GB (2022) ', 12000000, 1, 'iphonese2022.png', 'IP', 'Màn hình\r\nCông nghệ màn hình:IPS LCD\r\nĐộ phân giải:HD (750 x 1334 Pixels)\r\nMàn hình rộng:4.7\" - Tần \r\nĐộ sáng tối đa:625 nits\r\nCamera trước\r\nĐộ phân giải:7 MP\r\nDung lượng pin:\r\n\r\n2018 mAh\r\nLoại pin:Li-Ion\r\nHỗ trợ sạc tối đa:20 W\r\nHệ điều hành:\r\niOS 15\r\nChip xử lý (CPU):\r\nApple A15 Bionic 6 nhân\r\nChip đồ họa (GPU):\r\nApple GPU 4 nhân', 'Những thông tin mới nhất về các dòng iPhone vừa ra mắt luôn mang được sự mong chờ và nhiều sự háo hức của người hâm mộ. Có thể nói rằng chiếc iPhone SE là dòng smartphone kích thước nhỏ, mang đến sự cơ động nhưng sở hữu cấu hình mạnh mẽ. Song liệu thế hệ thứ 3 có những điểm nào nổi bật, iPhone SE 2022 có giá bao nhiêu và khi nào ra mắt? Hãy cùng chúng tôi tìm hiểu nhé!'),
('02', 'Điện thoại iPhone 11 128GB', 13000000, 1, 'iphone11.png', 'IP', 'Màn hình\r\nCông nghệ màn hình:IPS LCD\r\nĐộ phân giải:Liquid Retina (828 x 1792 Pixels)\r\nMàn hình rộng:6.1\" - Tần số quét 60 Hz\r\nĐộ sáng tối đa:625 nits\r\nCamera trước\r\nĐộ phân giải:12 MP\r\nDung lượng pin:3110 mAh\r\nLoại pin:Li-Ion\r\nHỗ trợ sạc tối đa:18 W\r\nHệ điều hành:\r\niOS 15\r\nChip xử lý (CPU):Apple A13 Bionic 6 nhân\r\nChip đồ họa (GPU):Apple GPU 4 nhân', 'iPhone 11 sở hữu hiệu năng khá mạnh mẽ, ổn định trong thời gian dài nhờ được trang bị chipset A13 Bionic. Màn hình LCD 6.1 inch sắc nét cùng chất lượng hiển thị Full HD của máy cho trải nghiệm hình ảnh mượt mà và có độ tương phản cao. Hệ thống camera hiện đại được tích hợp những tính năng công nghệ mới kết hợp với viên Pin dung lượng 3110mAh, giúp nâng cao trải nghiệm của người dùng.'),
('03', 'Điện thoại iPhone 12 128GB ', 14500000, 1, 'iphone12.png', 'IP', 'Màn hình\r\nCông nghệ màn hình:OLED\r\nĐộ phân giải:Super Retina XDR (1170 x 2532 Pixels)\r\nMàn hình rộng:6.1\" - Tần số quét 60 Hz\r\nĐộ sáng tối đa:1200 nits\r\nCamera trước\r\nĐộ phân giải:2 camera 12 MP\r\nDung lượng pin:2815 mAh\r\nLoại pin:Li-Ion\r\nHỗ trợ sạc tối đa:20 W\r\nHệ điều hành:iOS 15\r\nChip xử lý (CPU):Apple A14 Bionic 6 nhân\r\nChip đồ họa (GPU):Apple GPU 4 nhân', 'iPhone 12 hiện nay là cái tên “sốt xình xịch” bởi đây là một trong 4 siêu phẩm vừa được ra mắt của Apple với những đột phá về cả thiết kế lẫn cấu hình. Phiên bản Apple iPhone 12 128GB chính là một trong những chiếc iPhone được săn đón nhất bởi dung lượng bộ nhớ khủng, cho phép bạn thoải mái với vô vàn ứng dụng.'),
('04', 'Điện thoại iPhone 13 128GB', 20000000, 2, 'iphone13.png', 'IP', 'Màn hình\r\nCông nghệ màn hình:OLED6.1\"Super Retina XDR\r\nĐộ phân giải:Super Retina XDR (1170 x 2532 Pixels)\r\nMàn hình rộng:6.1\" - Tần số quét 60 Hz\r\nĐộ sáng tối đa:1200 nits\r\nCamera trước\r\nĐộ phân giải:12 MP\r\nDung lượng pin:3240 mAh\r\nLoại pin:Li-Ion\r\nHỗ trợ sạc tối đa:20 W\r\nHệ điều hành:iOS 15\r\nChip xử lý (CPU):Apple A15 Bionic\r\nChip đồ họa (GPU):Apple GPU 4 nhân', 'Cuối năm 2020, bộ 4 iPhone 12 đã được ra mắt với nhiều cái tiến. Sau đó, mọi sự quan tâm lại đổ dồn vào sản phẩm tiếp theo – iPhone 13. Vậy iP 13 sẽ có những gì nổi bật, hãy tìm hiểu ngay sau đây nhé!'),
('05', 'OPPO Reno8 T 5G (8GB - 128GB)', 9990000, 3, 'oppoa15.png', 'OP', 'Màn hình\r\nCông nghệ màn hình:\r\nAMOLED\r\nĐộ phân giải:\r\nFull HD+ (1080 x 2412 Pixels)\r\nMàn hình rộng:\r\n6.7\" - Tần số quét 120 Hz\r\nĐộ sáng tối đa:\r\n800 nits\r\nMặt kính cảm ứng:\r\n\r\nKính cường lực AGC DT-Star2\r\nCamera sau\r\nĐộ phân giải:\r\nChính 108 MP & Phụ 2 MP, 2 MP\r\nQuay phim:\r\n\r\nFullHD 1080p@30fpsHD 720p@30fps\r\nĐèn Flash:\r\nCó\r\nTính năng:\r\nAI Camera\r\nChuyên nghiệp (Pro)\r\nHDR\r\nToàn cảnh (Panorama)\r\nQuay video hiển thị kép\r\nBan đêm (Night Mode)', 'OPPO Reno8 T sở hữu thông số hiệu năng mạnh mẽ khi được trang bị bộ vi xử lý thế hệ mới của Snapdragon 695. Điện thoại OPPO mới này sở hữu tấm nền AMOLED 6.7 inch thế hệ mới mang lại chất lượng hình ảnh siêu sắc nét và sống động tới từng chi tiết.\r\nDung lượng Pin điện thoại Reno8 T 5G lên tới 4800mAh cùng thông số bộ nhớ đạt 8GB RAM và 128GB ROM giúp người dùng có thể thoải mái trải nghiệm mà không cần lo về vấn đề năng lượng hay bộ nhớ lưu trữ trong quá trình sử dụng.'),
('06', 'Điện thoại OPPO A96', 6000000, 12, 'oppoa96.png', 'OP', 'Màn hình\r\nCông nghệ màn hình:\r\nIPS LCD\r\nĐộ phân giải:\r\nFull HD+ (1080 x 2412 Pixels)\r\nMàn hình rộng:\r\n6.59\" - Tần số quét 90 Hz\r\nĐộ sáng tối đa:\r\n600 nits\r\nMặt kính cảm ứng:\r\nKính cường lực Panda\r\nCamera sau\r\nĐộ phân giải:\r\nChính 50 MP & Phụ 2 MP\r\nQuay phim:\r\nHD 720p@30fpsFullHD 1080p@30fps\r\nĐèn Flash:\r\nCó\r\nTính năng:\r\nChuyên nghiệp (Pro)\r\nHDR\r\nToàn cảnh (Panorama)\r\nNhãn dán (AR Stickers)\r\nLàm đẹp\r\nBan đêm (Night Mode)', 'Nhờ sở hữu thân hình mỏng nhẹ thanh tao và quyến rũ, cùng với phần cứng cao cấp mạnh mẽ bên trong đã giúp cho điện thoại OPPO A96 trở thành chiếc smartphone 5G tuyệt vời cho người dùng công nghệ Việt trong năm 2022.\r\n\r\nPhong cách OPPO A96 quyến rũ từ thân hình đến màu sắc\r\nNếu nói về chiếc smartphone mang ngoại hình quyến rũ nhất trong năm 2022, OPPO A96 hẳn chính là cái tên rất được nhắc đến. Chiếc máy sở hữu thân hình sang trọng và h'),
('07', 'Điện thoại OPPO Reno8 T ', 8500000, 5, 'opporeno8t.png', 'OP', 'Màn hình\r\nCông nghệ màn hình:\r\nAMOLED\r\nĐộ phân giải:\r\nFull HD+ (1080 x 2400 Pixels)\r\nMàn hình rộng:\r\n6.4\" - Tần số quét 90 Hz\r\nĐộ sáng tối đa:\r\n600 nits\r\nMặt kính cảm ứng:\r\nKính cường lực Corning Gorilla Glass 5\r\nCamera sau\r\nĐộ phân giải:\r\nChính 100 MP & Phụ 2 MP, 2 MP\r\nQuay phim:\r\nFullHD 1080p@30fpsHD 720p@30fps\r\nĐèn Flash:\r\nCó\r\nTính năng:\r\nAI Camera\r\nChuyên nghiệp (Pro)\r\nToàn cảnh (Panorama)\r\nQuay video hiển thị kép', 'OPPO Reno8 T sở hữu thông số hiệu năng mạnh mẽ khi được trang bị bộ vi xử lý thế hệ mới của Snapdragon 695. Điện thoại OPPO mới này sở hữu tấm nền AMOLED 6.7 inch thế hệ mới mang lại chất lượng hình ảnh siêu sắc nét và sống động tới từng chi tiết.\r\n\r\nDung lượng Pin điện thoại Reno8 T 5G lên tới 4800mAh cùng thông số bộ nhớ đạt 8GB RAM và 128GB ROM giúp người dùng có thể thoải mái trải nghiệm mà không cần lo về vấn đề năng lượng hay bộ nhớ lưu trữ trong quá trình sử dụng.'),
('08', 'OPPO Reno 7 Pro 5G', 1100000, 3, 'opporeno7pro.png', 'OP', 'Màn hình\r\nCông nghệ màn hình:\r\nAMOLED\r\nĐộ phân giải:\r\nFull HD+ (1080 x 2400 Pixels)\r\nMàn hình rộng:\r\n6.5\" - Tần số quét 90 Hz\r\nĐộ sáng tối đa:\r\n920 nits\r\nMặt kính cảm ứng:\r\nKính cường lực Corning Gorilla Glass 5\r\nCamera sau\r\nĐộ phân giải:\r\nChính 50 MP & Phụ 8 MP, 2 MP\r\nQuay phim:\r\nHD 720p@30fps\r\nFullHD 1080p@60fps\r\n4K 2160p@30fps\r\nFullHD 1080p@30fps\r\nFullHD 1080p@120fps\r\nHD 720p@240fps\r\nHD 720p@60fps\r\nĐèn Flash:\r\nCó\r\nTính năng:\r\nQuay video hiển thị kép\r\nChống rung', 'Điện thoại OPPO Reno7 Pro 5G là mẫu điện thoại mới thuộc dòng OPPO Reno với thiết kế cùng hiệu năng vượt trội. Điện thoại OPPO Reno7 Pro 5G sở hữu màu sắc với hiệu ứng đẹp mắt, khung viền vuông vức. Máy được trang bị màn hình 6,5 inch cùng tần số quét 90Hz mang lại những trải nghiệm hình ảnh mượt mà. Hiệu năng điện thoại đáp ứng mọi nhu câu sử dụng với con chip MediaTek 1200-MAX cùng viên pin 4500 mah hỗ trợ sạc nhanh công suất 65W.'),
('09', 'Điện thoại Samsung Galaxy S22 Ultra 5G 128GB ', 2500000, 3, 'samsunggalaxys22ultra.png', 'SS', 'Màn hình\r\nCông nghệ màn hình:\r\nDynamic AMOLED 2X\r\nĐộ phân giải:\r\n2K+ (1440 x 3088 Pixels)\r\nMàn hình rộng:\r\n6.8\" - Tần số quét 120 Hz\r\nĐộ sáng tối đa:\r\n1750 nits\r\nMặt kính cảm ứng:\r\nKính cường lực Corning Gorilla Glass Victus+\r\nCamera sau\r\nĐộ phân giải:\r\nChính 108 MP & Phụ 12 MP, 10 MP, 10 MP\r\nQuay phim:\r\nFullHD 1080p@240fps\r\nFullHD 1080p@60fps\r\nFullHD 1080p@30fps\r\n4K 2160p@30fps\r\n4K 2160p@60fps\r\nHD 720p@30fps\r\n8K 4320p@24fps\r\nHD 720p@960fps\r\nĐèn Flash:\r\nĐèn LED kép\r\n', 'Đúng như các thông tin được đồn đoán trước đó, mẫu flagship mới của gả khổng lồ Hàn Quốc được ra mắt với tên gọi là Samsung Galaxy S22 Ultra với nhiều cải tiến đáng giá. Mẫu điện thoại cao cấp đến từ Samsung này có nhiều thay đổi từ thiết kế, cấu hình cho đến camera. Vậy siêu phẩm này có gì mới, giá bao nhiêu và có nên mua không? Hãy cùng tìm hiểu chi tiết ngay bên dưới nhé!\r\n\r\nDự kiến vào tháng 2 năm 2023, Samsung sẽ cho ra mắt siêu phẩm S23 Ultra mà có thể quý khách sẽ quan tâm! Click vào link'),
('10', 'Điện thoại Samsung Galaxy Z Flip4 128GB', 18500000, 20, 'samsunggalaxyzflip4.png', 'SS', 'Màn hình\r\nCông nghệ màn hình:\r\nChính: Dynamic AMOLED 2X, Phụ: Super AMOLED\r\nĐộ phân giải:\r\nChính: FHD+ (2640 x 1080 Pixels) x Phụ: (260 x 512 Pixels)\r\nMàn hình rộng:\r\nChính 6.7\" & Phụ 1.9\" - Tần số quét 120 Hz\r\nĐộ sáng tối đa:\r\n1200 nits\r\nMặt kính cảm ứng:\r\nChính: Ultra Thin Glass & Phụ: Corning Gorilla Glass Victus+\r\nCamera sau\r\nĐộ phân giải:\r\n2 camera 12 MP\r\nQuay phim:\r\nFullHD 1080p@60fps\r\nFullHD 1080p@30fps\r\n4K 2160p@30fps\r\n4K 2160p@60fps\r\nHD 720p@30fps\r\n\r\n\r\n', 'Tiếp tục là một mẫu smartphone màn hình gập độc đáo, đầy lôi cuốn và mới mẻ từ hãng công nghệ Hàn Quốc, dự kiến sẽ có tên là Samsung Galaxy Z Flip 4 với nhiều nâng cấp. Đây hứa hẹn sẽ là một siêu phẩm bùng nổ trong thời gian tới và thu hút được sự quan tâm của đông đảo người dùng với nhiều cải tiến từ ngoại hình, camera, bộ vi xử lý và viên pin được nâng cấp.'),
('11', 'Điện thoại Samsung Galaxy A33 5G 6GB', 7000000, 10, 'samsunggalaxya33.png', 'SS', 'Màn hình\r\nCông nghệ màn hình:\r\nSuper AMOLED\r\nĐộ phân giải:\r\nFull HD+ (1080 x 2400 Pixels)\r\nMàn hình rộng:\r\n6.4\" - Tần số quét 90 Hz\r\nĐộ sáng tối đa:\r\n800 nits\r\nMặt kính cảm ứng:\r\nKính cường lực Corning Gorilla Glass 5\r\nCamera sau\r\nĐộ phân giải:\r\nChính 48 MP & Phụ 8 MP, 5 MP, 2 MP\r\nQuay phim:\r\nHD 720p@30fps\r\nFullHD 1080p@60fps\r\n4K 2160p@30fps\r\nFullHD 1080p@30fps\r\nĐèn Flash:\r\nCó\r\nTính năng:\r\nChuyên nghiệp (Pro)\r\nTự động lấy nét (AF)\r\nChạm lấy nét\r\nNhận diện khuôn mặt', 'Samsung Galaxy A23 được trang bị cấu hình vượt trội với con chip Snapdragon 695 5G cùng viên pin 5000 mAh thoải mái trải nghiệm. Màn hình 6.6 inch LCD mang lại khả năng hiển thị rõ nét. Điểm đặc biệt, mẫu điện thoại Samsung này còn được trang bị kết nối 5G đầy tiện lợi.'),
('12', 'Điện thoại Samsung Galaxy A53 5G 128GB', 5800000, 30, 'samsungagalaxya53.png', 'SS', 'Màn hình\r\n\r\nCông nghệ màn hình:\r\n\r\nSuper AMOLED\r\nĐộ phân giải:\r\nFull HD+ (1080 x 2400 Pixels)\r\nMàn hình rộng:\r\n\r\n6.5\" - Tần số quét 120 Hz\r\nĐộ sáng tối đa:\r\n800 nits\r\nMặt kính cảm ứng:\r\n\r\nKính cường lực Corning Gorilla Glass 5\r\nCamera sau\r\n\r\nĐộ phân giải:\r\nChính 64 MP & Phụ 12 MP, 5 MP, 5 MP\r\nQuay phim:\r\n\r\nFullHD 1080p@60fps\r\n\r\nFullHD 1080p@30fps\r\n\r\n4K 2160p@30fps\r\n\r\nHD 720p@30fps\r\n\r\nĐèn Flash:\r\n\r\nCó\r\nTính năng:\r\n\r\nQuay Siêu chậm (Super Slow Motion)\r\n\r\nAI Camera\r\n\r\nChuyên nghiệp (Pro)\r\n\r\nHDR\r\n\r\n', 'Tiếp nối sự thành công của dòng điện thoại tầm trung – giá rẻ, gã khổng lồ Hàn Quốc lại cho ra mắt tiếp thế hệ tiếp theo mang tên Samsung Galaxy A53 với nhiều ưu điểm nổi bật. Sản phẩm mang hiệu suất tốt, sẵn sàng mang đến cho bạn những giây phút trải nghiệm chơi game, xem phim mượt mà. Vậy điện thoại này có gì hấp dẫn, giá bao nhiêu? Cùng tìm hiểu chi tiết nhé!'),
('13', 'Điện thoại Xiaomi Redmi Note 11S', 5600000, 8, 'xiaomiredminote11s.png', 'XAM', 'Màn hình\r\nCông nghệ màn hình:\r\nAMOLED\r\nĐộ phân giải:\r\nFull HD+ (1080 x 2400 Pixels)\r\nMàn hình rộng:\r\n6.43\" - Tần số quét 90 Hz\r\nĐộ sáng tối đa:\r\n1000 nits\r\nMặt kính cảm ứng:\r\nKính cường lực Corning Gorilla Glass 3\r\nCamera sau\r\nĐộ phân giải:\r\nChính 108 MP & Phụ 8 MP, 2 MP, 2 MP\r\nQuay phim:\r\nFullHD 1080p@30fpsHD 720p@30fps\r\nĐèn Flash:\r\nCó\r\nTính năng:\r\nAI Camera\r\nChuyên nghiệp (Pro)\r\nHDR\r\nToàn cảnh (Panorama)\r\nBan đêm (Night Mode)\r\nTrôi nhanh thời gian (Time Lapse)\r\nLàm ', 'Xiaomi Redmi Note 11S sở hữu một thiết kế cuốn hút với các đường nét hoàn thiện tỉ mỉ. Điện thoại sở hữu màn hình kích thước 6.43 inch cùng độ tần số quét 90Hz mang lại các chuyển động ổn định và mượt mà. Bên trong thiết bị sẽ chạy trên con chip MediaTek Helio G96CPU cùng bộ nhớ RAM lên đến 8GB.'),
('14', 'Điện thoại Xiaomi 11T  256GB', 8500000, 12, 'xiaomi11t.png', 'XAM', 'Màn hình\r\nCông nghệ màn hình:\r\nAMOLED\r\nĐộ phân giải:\r\nFull HD+ (1080 x 2400 Pixels)\r\nMàn hình rộng:\r\n6.67\" - Tần số quét 120 Hz\r\nĐộ sáng tối đa:\r\n1000 nits\r\nMặt kính cảm ứng:\r\nKính cường lực Corning Gorilla Glass Victus\r\nCamera sau\r\nĐộ phân giải:\r\nChính 108 MP & Phụ 8 MP, 5 MP\r\nQuay phim:\r\nFullHD 1080p@60fps\r\n4K 2160p@30fps\r\nFullHD 1080p@30fps\r\nĐèn Flash:\r\nCó\r\nTính năng:\r\nTự động lấy nét (AF)\r\nChạm lấy nét\r\nNhận diện khuôn mặt\r\nHDR\r\nToàn cảnh (Panorama)\r\nChống run', 'Một biến thể khác của siêu phẩm Xiaomi 11T vừa được hãng điện thoại Xiaomi ra mắt và người dùng sẽ trông chờ hơn vào sản phẩm này. Được biết đây là phiên bản giảm cấp về hiệu năng nhằm dễ tiếp cận hơn đến các phân khúc khách hàng thấp hơn, song về trải nghiệm bạn sẽ bất ngờ vì không có quá nhiều sự khác biệt.'),
('15', 'Điện thoại Xiaomi 12T 5G 128GB ', 11000000, 5, 'xiaomi12t.png', 'XAM', 'Màn hình\r\nCông nghệ màn hình:\r\nAMOLED\r\nĐộ phân giải:\r\n1.5K (1220 x 2712 Pixels)\r\nMàn hình rộng:\r\n6.67\" - Tần số quét 120 Hz\r\nĐộ sáng tối đa:\r\n500 nits\r\nMặt kính cảm ứng:\r\nKính cường lực Corning Gorilla Glass 5\r\nCamera sau\r\nĐộ phân giải:\r\nChính 108 MP & Phụ 8 MP, 2 MP\r\nQuay phim:\r\nFullHD 1080p@60fps\r\nFullHD 1080p@30fps\r\n4K 2160p@30fps\r\nHD 720p@30fps\r\nĐèn Flash:\r\nCó\r\nTính năng:\r\nAI Camera\r\nChuyên nghiệp (Pro)\r\nChạm lấy nét\r\nNhận diện khuôn mặt\r\nHDR\r\nToàn cảnh (Pan', 'Xiaomi 12T là sản phẩm được nhiều tín đồ công nghệ đánh giá cao với màn hình AMOLED 6.67 inch độ phân giải cao, tần số quét 120Hz, chip MediaTek Dimensity 8100-Ultra, RAM 8GB và bộ nhớ trong 128GB. Thêm vào đó camera chính 108MP hỗ trợ chống rung OIS và sạc nhanh 120W cho trải nghiệm sử dụng cực chất. '),
('16', 'Điện thoại Xiaomi 11 Lite 5G NE ', 7600000, 10, 'xiaomi11lite.png', 'XAM', 'Màn hình\r\nCông nghệ màn hình:\r\nAMOLED\r\nĐộ phân giải:\r\nFull HD+ (1080 x 2400 Pixels)\r\nMàn hình rộng:\r\n6.55\" - Tần số quét 90 Hz\r\nĐộ sáng tối đa:\r\n800 nits\r\nMặt kính cảm ứng:\r\nKính cường lực Corning Gorilla Glass 5\r\nCamera sau\r\nĐộ phân giải:\r\nChính 64 MP & Phụ 8 MP, 5 MP\r\nQuay phim:\r\nFullHD 1080p@60fps\r\nFullHD 1080p@30fps\r\n4K 2160p@30fps\r\nHD 720p@30fps\r\nĐèn Flash:\r\nCó\r\nTính năng:\r\nAI Camera\r\nTự động lấy nét (AF)\r\nChạm lấy nét\r\nNhận diện khuôn mặt\r\nHDR\r\nToàn cảnh (', 'Mi 11 Lite 5G NE là chiếc smartphone tầm trung mới được ra mắt. Với thiết kế trẻ trung, màu sắc đa dạng cùng với cấu hình mạnh mẽ và màn hình ấn tượng đây là chiếc điện thoại thông minh hỗ trợ mạng 5G mỏng nhẹ nhất của Xiaomi. Đặc biệt với giá thành rẻ, sản phẩm chắc chắn sẽ thu hút được đông đảo khách hàng lựa chọn.');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `TENKH` char(50) NOT NULL,
  `MATKHAU` char(50) NOT NULL,
  `EMAIL` char(50) NOT NULL,
  `SODT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`TENKH`, `MATKHAU`, `EMAIL`, `SODT`) VALUES
('7', '8', '8', 8),
('9', '7', '7', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD UNIQUE KEY `MAHD` (`MAHD`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD KEY `MASP` (`MASP`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MAHD`);

--
-- Indexes for table `phanloai`
--
ALTER TABLE `phanloai`
  ADD PRIMARY KEY (`MALOAI`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MASP`),
  ADD KEY `MALOAI` (`MALOAI`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`TENKH`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `phanloai`
--
ALTER TABLE `phanloai`
  ADD CONSTRAINT `fk_htk_maloai` FOREIGN KEY (`MALOAI`) REFERENCES `sanpham` (`MALOAI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
