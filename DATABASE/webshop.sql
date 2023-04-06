-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2023 at 04:33 PM
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
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(10) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `id_catalog` int(32) NOT NULL,
  `catalogName` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id_catalog`, `catalogName`, `description`) VALUES
(1, 'Laptop', 'laptop'),
(2, 'Headphone', 'tai nghe');

-- --------------------------------------------------------

--
-- Table structure for table `img_list`
--

CREATE TABLE `img_list` (
  `id_img` int(32) NOT NULL,
  `id_product` int(32) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id_order` int(32) NOT NULL,
  `id_product` int(32) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `unitCost` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_order` int(32) NOT NULL,
  `dateCreate` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_user` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(32) NOT NULL,
  `id_catalog` int(32) NOT NULL,
  `productName` varchar(64) NOT NULL,
  `productOption` varchar(64) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `discount` int(10) DEFAULT NULL,
  `image_link` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `id_catalog`, `productName`, `productOption`, `price`, `discount`, `image_link`, `content`) VALUES
(3, 1, 'MacBook Pro 16 inch M2 Pro 2023', 'RAM 16 GB - SSD 512 GB', '65990000.0000', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302149/s16/macbook-pro-16-inch-m2-pro-thumb-xam-650x650.png', 'MacBook Pro 16 inch với chip M2 Pro và M2 Max đưa sức mạnh và tốc độ lên một tầm cao mới, dù đang được cắm sạc hay chạy bằng pin. Với màn hình Liquid Retina XDR tuyệt đẹp, tất cả các cổng kết nối bạn cần và thời lượng pin dùng cả ngày, 1 chiếc máy tính xách tay chuyên nghiệp này sẽ đồng hành cùng bạn ở bất cứ nơi đâu.'),
(4, 1, 'MacBook Pro 14 inch M2 Pro 2023', 'RAM 16 GB - SSD 512 GB', '52990000.0000', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302146/s16/macbook-pro-14-inch-m2-pro-thumb-xam-1-650x650.png', 'MacBook Pro 14 inch với chip M2 Pro và M2 Max đưa sức mạnh và tốc độ lên một tầm cao mới, dù đang được cắm sạc hay chạy bằng pin. Với màn hình Liquid Retina XDR tuyệt đẹp, tất cả các cổng kết nối bạn cần và thời lượng pin dùng cả ngày, 1chiếc máy tính xách tay chuyên nghiệp này sẽ đồng hành cùng bạn ở bất cứ nơi đâu.'),
(5, 1, 'MacBook Air M2 2022 10-core GPU', 'RAM 16 GB - SSD 512 GB', '46990000.0000', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-va%CC%80ng-650x650.png', 'Siêu mạnh mẽ với chip M2 thế hệ tiếp theo, MacBook Air được thiết kế mới, kết hợp giữa hiệu năng đáng kinh ngạc và thời lượng pin lên đến 18 giờ trong vỏ nhôm mỏng ấn tượng.1'),
(6, 1, 'MacBook Air M2 2022 10-core GPU', 'RAM 8 GB - SSD 512 GB', '39990000.0000', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-va%CC%80ng-650x650.png', 'Siêu mạnh mẽ với chip M2 thế hệ tiếp theo, MacBook Air được thiết kế mới, kết hợp giữa hiệu năng đáng kinh ngạc và thời lượng pin lên đến 18 giờ trong vỏ nhôm mỏng ấn tượng.1'),
(7, 1, 'MacBook Air M2 2022 8-core GPU', 'RAM 8 GB - SSD 256 GB', '32990000.0000', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-va%CC%80ng-650x650.png', 'Siêu mạnh mẽ với chip M2 thế hệ tiếp theo, MacBook Air được thiết kế mới, kết hợp giữa hiệu năng đáng kinh ngạc và thời lượng pin lên đến 18 giờ trong vỏ nhôm mỏng ấn tượng'),
(8, 1, 'MacBook Pro 13 inch M2 2022', 'RAM 8 GB - SSD 256 GB', '35990000.0000', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-pro-m2-2022-bac-650x650.png', '• Chip M2 với CPU, GPU và hiệu năng máy học thế hệ tiếp theo\r\n\r\n• CPU 8 lõi và GPU 10 lõi tốc độ cao để đảm đương những luồng công việc cường độ nặng\r\n\r\n• Neural Engine 16 lõi cho các tác vụ sử dụng công nghệ máy học tiên tiến \r\n\r\n• Bộ nhớ thống nhất lên đến 24GB giúp bạn làm mọi thứ đều trôi chảy\r\n\r\n• Nhanh hơn 43 phần trăm khi hợp nhất các hình ảnh thành một bức tranh toàn cảnh2\r\n\r\n• Tốc độ chơi game nhanh hơn tới 39%2\r\n\r\n• Hệ thống tản nhiệt chủ động mang lại hiệu năng tuyệt vời\r\n\r\n• Hoạt động bền bỉ cả ngày dài với thời lượng pin lên đến 20 giờ1\r\n\r\n• Màn hình Retina 13.3 inch với độ sáng 500 nit và dải màu rộng P3, cho hình ảnh sống động và chi tiết ấn tượng3\r\n\r\n• Camera FaceTime HD với bộ xử lý tín hiệu hình ảnh tiên tiến để bạn trông đẹp hơn trong các cuộc gọi video\r\n\r\n• Ba micrô phối hợp chất lượng chuẩn studio thu giọng nói của bạn rõ hơn\r\n\r\n• Kết nối không dây nhanh với Wi-Fi 6\r\n\r\n• Hai cổng Thunderbolt để sạc và kết nối phụ kiện\r\n\r\n• Bàn phím Magic Keyboard có đèn nền với Touch Bar và Touch ID, giúp mở khóa và thanh toán an toàn hơn\r\n\r\n• Ổ lưu trữ SSD siêu nhanh giúp mở các ứng dụng và tập tin chỉ trong tích tắc \r\n\r\n• macOS Monterey cho phép bạn kết nối, chia sẻ và sáng tạo theo cách chưa từng có, giữa tất cả các thiết bị Apple của bạn\r\n\r\n• Hiện có màu xám bạc và bạc '),
(9, 1, 'MacBook Pro 13 inch M2 2022', 'RAM 8 GB - SSD 512 GB', '41990000.0000', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282885/s16/apple-pro-m2-2022-10-core-gpu-xam-650x650.png', '• Chip M2 với CPU, GPU và hiệu năng máy học thế hệ tiếp theo\r\n\r\n• CPU 8 lõi và GPU 10 lõi tốc độ cao để đảm đương những luồng công việc cường độ nặng\r\n\r\n• Neural Engine 16 lõi cho các tác vụ sử dụng công nghệ máy học tiên tiến \r\n\r\n• Bộ nhớ thống nhất lên đến 24GB giúp bạn làm mọi thứ đều trôi chảy\r\n\r\n• Nhanh hơn 43 phần trăm khi hợp nhất các hình ảnh thành một bức tranh toàn cảnh2\r\n\r\n• Tốc độ chơi game nhanh hơn tới 39%2\r\n\r\n• Hệ thống tản nhiệt chủ động mang lại hiệu năng tuyệt vời\r\n\r\n• Hoạt động bền bỉ cả ngày dài với thời lượng pin lên đến 20 giờ1\r\n\r\n• Màn hình Retina 13.3 inch với độ sáng 500 nit và dải màu rộng P3, cho hình ảnh sống động và chi tiết ấn tượng3\r\n\r\n• Camera FaceTime HD với bộ xử lý tín hiệu hình ảnh tiên tiến để bạn trông đẹp hơn trong các cuộc gọi video\r\n\r\n• Ba micrô phối hợp chất lượng chuẩn studio thu giọng nói của bạn rõ hơn\r\n\r\n• Kết nối không dây nhanh với Wi-Fi 6\r\n\r\n• Hai cổng Thunderbolt để sạc và kết nối phụ kiện\r\n\r\n• Bàn phím Magic Keyboard có đèn nền với Touch Bar và Touch ID, giúp mở khóa và thanh toán an toàn hơn\r\n\r\n• Ổ lưu trữ SSD siêu nhanh giúp mở các ứng dụng và tập tin chỉ trong tích tắc \r\n\r\n• macOS Monterey cho phép bạn kết nối, chia sẻ và sáng tạo theo cách chưa từng có, giữa tất cả các thiết bị Apple của bạn\r\n\r\n• Hiện có màu xám bạc và bạc '),
(10, 1, 'MacBook Pro 13 inch M2 2022', 'RAM 16 GB - SSD 512 GB', '38890000.0000', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/283464/s16/apple-macbook-pro-m2-2022-16gb-xa%CC%81m-650x650.png', '• Chip M2 với CPU, GPU và hiệu năng máy học thế hệ tiếp theo\r\n\r\n• CPU 8 lõi và GPU 10 lõi tốc độ cao để đảm đương những luồng công việc cường độ nặng\r\n\r\n• Neural Engine 16 lõi cho các tác vụ sử dụng công nghệ máy học tiên tiến \r\n\r\n• Bộ nhớ thống nhất lên đến 24GB giúp bạn làm mọi thứ đều trôi chảy\r\n\r\n• Nhanh hơn 43 phần trăm khi hợp nhất các hình ảnh thành một bức tranh toàn cảnh2\r\n\r\n• Tốc độ chơi game nhanh hơn tới 39%2\r\n\r\n• Hệ thống tản nhiệt chủ động mang lại hiệu năng tuyệt vời\r\n\r\n• Hoạt động bền bỉ cả ngày dài với thời lượng pin lên đến 20 giờ1\r\n\r\n• Màn hình Retina 13.3 inch với độ sáng 500 nit và dải màu rộng P3, cho hình ảnh sống động và chi tiết ấn tượng3\r\n\r\n• Camera FaceTime HD với bộ xử lý tín hiệu hình ảnh tiên tiến để bạn trông đẹp hơn trong các cuộc gọi video\r\n\r\n• Ba micrô phối hợp chất lượng chuẩn studio thu giọng nói của bạn rõ hơn\r\n\r\n• Kết nối không dây nhanh với Wi-Fi 6\r\n\r\n• Hai cổng Thunderbolt để sạc và kết nối phụ kiện\r\n\r\n• Bàn phím Magic Keyboard có đèn nền với Touch Bar và Touch ID, giúp mở khóa và thanh toán an toàn hơn\r\n\r\n• Ổ lưu trữ SSD siêu nhanh giúp mở các ứng dụng và tập tin chỉ trong tích tắc \r\n\r\n• macOS Monterey cho phép bạn kết nối, chia sẻ và sáng tạo theo cách chưa từng có, giữa tất cả các thiết bị Apple của bạn\r\n\r\n• Hiện có màu xám bạc và bạc '),
(11, 1, 'MacBook Air M1 2020 8-Core GPU', 'RAM 16 GB - SSD 512 GB', '31390000.0000', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-gold-thumb-650x650.png', 'Máy tính xách tay mỏng và nhẹ nhất của Apple, nay siêu mạnh mẽ với chip Apple M1. Xử lý công việc giúp bạn với CPU 8 lõi nhanh như chớp. Đưa các ứng dụng và game có đồ họa khủng lên một tầm cao mới với GPU 8 lõi. Đồng thời, tăng tốc các tác vụ máy học với Neural Engine 16 lõi. Tất cả gói gọn trong một thiết kế không quạt, không tiếng ồn, thời lượng pin dài nhất từ trước đến nay lên đến 18 giờ.1 MacBook Air. Vẫn cực kỳ cơ động. Mà mạnh mẽ hơn nhiều.'),
(12, 1, 'MacBook Pro 16 inch M1 Pro 2021', 'RAM 16 GB - SSD 1 TB', '53790000.0000', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/macbook-pro-16-m1-pro-2021-bac-650x650.png', '• Chip M1 Max hoặc M1 Pro do Apple thiết kế tạo ra một cú nhảy vọt về hiệu năng máy học, CPU và GPU\r\n\r\n• CPU lên đến 10 lõi cho hiệu năng nhanh hơn đến 2x, xử lý các luồng công việc chuyên nghiệp nhanh hơn bao giờ hết3\r\n\r\n• GPU lên đến 32 lõi với tốc độ xử lý đồ họa nhanh hơn đến 4x cho các ứng dụng và game có đồ họa khủng3\r\n\r\n• Neural Engine 16 lõi cho hiệu năng máy học nhanh hơn đến 5x3\r\n\r\n• Thời lượng pin lâu hơn, lên đến 21 giờ1\r\n\r\n• Bộ nhớ thống nhất lên đến 64GB giúp bạn làm việc gì cũng nhanh chóng và trôi chảy\r\n\r\n• Ổ lưu trữ SSD siêu nhanh lên đến 8TB giúp mở các ứng dụng và tập tin chỉ trong tích tắc\r\n\r\n• Màn hình Liquid Retina XDR 16 inch sắc nét với Extreme Dynamic Range và tỷ lệ tương phản cực cao2\r\n\r\n• Camera FaceTime HD 1080p với bộ xử lý tín hiệu hình ảnh tiên tiến cho các cuộc gọi video sắc nét hơn\r\n\r\n• Hệ thống âm thanh 6 loa với loa trầm khử lực\r\n\r\n• Ba micro phối hợp chuẩn studio thu giọng nói của bạn rõ hơn\r\n\r\n• Ba cổng Thunderbolt 4, cổng HDMI, khe thẻ nhớ SDXC, jack cắm tai nghe, cổng MagSafe 3\r\n\r\n• Wi-Fi 6 thế hệ mới giúp kết nối nhanh hơn\r\n\r\n• Bàn phím Magic Keyboard có đèn nền và Touch ID giúp mở khóa và thanh toán an toàn hơn macOS Monterey cho phép bạn kết nối, chia sẻ và sáng tạo hơn bao giờ hết, với các bản cập nhật FaceTime mới đầy thú vị và Safari đã được thiết kế lại\r\n\r\n• Hiện có màu xám bạc và bạc'),
(13, 1, 'MacBook Pro 14 inch M1 Pro 2021', 'RAM 16 GB - SSD 1 TB', '49790000.0000', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253703/s16/apple-macbook-pro-14-m1-pro-2021-xam-thumb-650x650.png', '• Chip M1 Max hoặc M1 Pro do Apple thiết kế tạo ra một cú nhảy vọt về hiệu năng máy học, CPU và GPU\r\n\r\n• CPU lên đến 10 lõi cho hiệu năng nhanh hơn đến 3.7x, xử lý các luồng công việc chuyên nghiệp nhanh hơn bao giờ hết3\r\n\r\n• GPU lên đến 32 lõi với tốc độ xử lý đồ họa nhanh hơn đến 13x cho các ứng dụng và game có đồ họa khủng3\r\n\r\n• Neural Engine 16 lõi cho hiệu năng máy học nhanh hơn đến 11x3\r\n\r\n• Thời lượng pin lâu hơn, lên đến 17 giờ1\r\n\r\n• Bộ nhớ thống nhất lên đến 64GB giúp bạn làm việc gì cũng nhanh chóng và trôi chảy\r\n\r\n• Ổ lưu trữ SSD siêu nhanh lên đến 8TB giúp mở các ứng dụng và tập tin chỉ trong tích tắc\r\n\r\n• Màn hình Liquid Retina XDR 14 inch sắc nét với Extreme Dynamic Range và tỷ lệ tương phản cực cao2\r\n\r\n• Camera FaceTime HD 1080p với bộ xử lý tín hiệu hình ảnh tiên tiến cho các cuộc gọi video sắc nét hơn\r\n\r\n• Hệ thống âm thanh 6 loa với loa trầm khử lực\r\n\r\n• Ba micro phối hợp chuẩn studio thu giọng nói của bạn rõ hơn\r\n\r\n• Ba cổng Thunderbolt 4, cổng HDMI, khe thẻ nhớ SDXC, jack cắm tai nghe, cổng MagSafe 3\r\n\r\n• Wi-Fi 6 thế hệ mới giúp kết nối nhanh hơn\r\n\r\n• Bàn phím Magic Keyboard có đèn nền và Touch ID giúp mở khóa và thanh toán an toàn hơn macOS Monterey cho phép bạn kết nối, chia sẻ và sáng tạo hơn bao giờ hết, với các bản cập nhật FaceTime mới đầy thú vị và Safari đã được thiết kế lại\r\n\r\n• Hiện có màu xám bạc và bạc'),
(14, 1, 'MacBook Pro 16 inch M1 Pro 2021', 'RAM 16 GB - SSD 512 GB', '49790000.0000', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253636/s16/macbook-pro-16-m1-pro-2021-bac-650x650.png', '• Chip M1 Max hoặc M1 Pro do Apple thiết kế tạo ra một cú nhảy vọt về hiệu năng máy học, CPU và GPU\r\n\r\n• CPU lên đến 10 lõi cho hiệu năng nhanh hơn đến 2x, xử lý các luồng công việc chuyên nghiệp nhanh hơn bao giờ hết3\r\n\r\n• GPU lên đến 32 lõi với tốc độ xử lý đồ họa nhanh hơn đến 4x cho các ứng dụng và game có đồ họa khủng3\r\n\r\n• Neural Engine 16 lõi cho hiệu năng máy học nhanh hơn đến 5x3\r\n\r\n• Thời lượng pin lâu hơn, lên đến 21 giờ1\r\n\r\n• Bộ nhớ thống nhất lên đến 64GB giúp bạn làm việc gì cũng nhanh chóng và trôi chảy\r\n\r\n• Ổ lưu trữ SSD siêu nhanh lên đến 8TB giúp mở các ứng dụng và tập tin chỉ trong tích tắc\r\n\r\n• Màn hình Liquid Retina XDR 16 inch sắc nét với Extreme Dynamic Range và tỷ lệ tương phản cực cao2\r\n\r\n• Camera FaceTime HD 1080p với bộ xử lý tín hiệu hình ảnh tiên tiến cho các cuộc gọi video sắc nét hơn\r\n\r\n• Hệ thống âm thanh 6 loa với loa trầm khử lực\r\n\r\n• Ba micro phối hợp chuẩn studio thu giọng nói của bạn rõ hơn\r\n\r\n• Ba cổng Thunderbolt 4, cổng HDMI, khe thẻ nhớ SDXC, jack cắm tai nghe, cổng MagSafe 3\r\n\r\n• Wi-Fi 6 thế hệ mới giúp kết nối nhanh hơn\r\n\r\n• Bàn phím Magic Keyboard có đèn nền và Touch ID giúp mở khóa và thanh toán an toàn hơn macOS Monterey cho phép bạn kết nối, chia sẻ và sáng tạo hơn bao giờ hết, với các bản cập nhật FaceTime mới đầy thú vị và Safari đã được thiết kế lại\r\n\r\n• Hiện có màu xám bạc và bạc'),
(15, 1, 'MacBook Pro 14 inch M1 Pro 2021 14-Core ', 'RAM 16 GB - SSD 512 GB', '42790000.0000', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253581/s16/apple-macbook-pro-14-m1-pro-2021-bac-thumb-650x650.png', '• Chip M1 Max hoặc M1 Pro do Apple thiết kế tạo ra một cú nhảy vọt về hiệu năng máy học, CPU và GPU\r\n\r\n• CPU lên đến 10 lõi cho hiệu năng nhanh hơn đến 3.7x, xử lý các luồng công việc chuyên nghiệp nhanh hơn bao giờ hết3\r\n\r\n• GPU lên đến 32 lõi với tốc độ xử lý đồ họa nhanh hơn đến 13x cho các ứng dụng và game có đồ họa khủng3\r\n\r\n• Neural Engine 16 lõi cho hiệu năng máy học nhanh hơn đến 11x3\r\n\r\n• Thời lượng pin lâu hơn, lên đến 17 giờ1\r\n\r\n• Bộ nhớ thống nhất lên đến 64GB giúp bạn làm việc gì cũng nhanh chóng và trôi chảy\r\n\r\n• Ổ lưu trữ SSD siêu nhanh lên đến 8TB giúp mở các ứng dụng và tập tin chỉ trong tích tắc\r\n\r\n• Màn hình Liquid Retina XDR 14 inch sắc nét với Extreme Dynamic Range và tỷ lệ tương phản cực cao2\r\n\r\n• Camera FaceTime HD 1080p với bộ xử lý tín hiệu hình ảnh tiên tiến cho các cuộc gọi video sắc nét hơn\r\n\r\n• Hệ thống âm thanh 6 loa với loa trầm khử lực\r\n\r\n• Ba micro phối hợp chuẩn studio thu giọng nói của bạn rõ hơn\r\n\r\n• Ba cổng Thunderbolt 4, cổng HDMI, khe thẻ nhớ SDXC, jack cắm tai nghe, cổng MagSafe 3\r\n\r\n• Wi-Fi 6 thế hệ mới giúp kết nối nhanh hơn\r\n\r\n• Bàn phím Magic Keyboard có đèn nền và Touch ID giúp mở khóa và thanh toán an toàn hơn macOS Monterey cho phép bạn kết nối, chia sẻ và sáng tạo hơn bao giờ hết, với các bản cập nhật FaceTime mới đầy thú vị và Safari đã được thiết kế lại\r\n\r\n• Hiện có màu xám bạc và bạc'),
(16, 1, 'MacBook Pro 13 inch M1 2020', 'RAM 16 GB - SSD 512 GB', '36290000.0000', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/231255/s16/macbook-pro-13-spgry-m1-thumb-650x650.png', 'Chip Apple M1 định nghĩa lại MacBook Pro 13 inch. Sở hữu CPU 8 lõi xử lý siêu tốc các luồng công việc phức hợp trong lĩnh vực hình ảnh, mã hóa, biên tập video cùng nhiều việc khác. GPU 8 lõi siêu mạnh xử lý gọn các tác vụ đồ họa khủng và chạy game siêu mượt. Neural Engine 16 lõi tiên tiến tăng cường sức mạnh công nghệ máy học tích hợp trong các ứng dụng yêu thích của bạn. Bộ nhớ thống nhất siêu nhanh cho mọi hoạt động mượt mà. Và thời lượng pin dài nhất từng có trên máy Mac, lên đến 20 giờ.1 Đây chính là chiếc máy tính xách tay chuyên nghiệp thịnh hành nhất của Apple. Hiệu năng cao hơn hẳn, pro hơn hẳn.'),
(17, 1, 'MacBook Air M1 2020 7-Core GPU', 'RAM 8 GB - SSD 256 GB', '18590000.0000', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/231244/s16/macbook-air-m1-2020-spacegray-thumb-650x650.png', 'Máy tính xách tay mỏng và nhẹ nhất của Apple, nay siêu mạnh mẽ với chip Apple M1. Xử lý công việc giúp bạn với CPU 8 lõi nhanh như chớp. Đưa các ứng dụng và game có đồ họa khủng lên một tầm cao mới với GPU 8 lõi. Đồng thời, tăng tốc các tác vụ máy học với Neural Engine 16 lõi. Tất cả gói gọn trong một thiết kế không quạt, không tiếng ồn, thời lượng pin dài nhất từ trước đến nay lên đến 18 giờ.1 MacBook Air. Vẫn cực kỳ cơ động. Mà mạnh mẽ hơn nhiều.'),
(18, 1, 'MacBook Air M1 2020 7-Core GPU', 'RAM 16 GB - SSD 256 GB', '25790000.0000', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/239552/s16/macbook-air-m1-2020-gold-thumb-650x650.png', 'Máy tính xách tay mỏng và nhẹ nhất của Apple, nay siêu mạnh mẽ với chip Apple M1. Xử lý công việc giúp bạn với CPU 8 lõi nhanh như chớp. Đưa các ứng dụng và game có đồ họa khủng lên một tầm cao mới với GPU 8 lõi. Đồng thời, tăng tốc các tác vụ máy học với Neural Engine 16 lõi. Tất cả gói gọn trong một thiết kế không quạt, không tiếng ồn, thời lượng pin dài nhất từ trước đến nay lên đến 18 giờ.1 MacBook Air. Vẫn cực kỳ cơ động. Mà mạnh mẽ hơn nhiều.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `phone`, `address`) VALUES
(1, 'Hoanghuy', '061199', '', NULL),
(11, 'b1702724', '061199', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id_catalog`);

--
-- Indexes for table `img_list`
--
ALTER TABLE `img_list`
  ADD PRIMARY KEY (`id_img`),
  ADD KEY `fk_img_list_id_product` (`id_product`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id_order`,`id_product`),
  ADD KEY `fk_orderdetail_product` (`id_product`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_user_fk` (`id_user`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `product_catalog_fk` (`id_catalog`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id_catalog` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `img_list`
--
ALTER TABLE `img_list`
  ADD CONSTRAINT `fk_img_list_id_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON DELETE CASCADE,
  ADD CONSTRAINT `img_list_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `fk_orderdetail_order` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`),
  ADD CONSTRAINT `fk_orderdetail_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `id_user_fk` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_catalog_fk` FOREIGN KEY (`id_catalog`) REFERENCES `catalog` (`id_catalog`),
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_catalog`) REFERENCES `catalog` (`id_catalog`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
