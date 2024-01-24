-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2024 at 03:20 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `prod_qty` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(14, '2', '6', '1', '2024-01-14 11:48:44', '2024-01-14 11:48:44'),
(20, '1', '6', '1', '2024-01-19 00:44:07', '2024-01-19 00:44:07'),
(21, '1', '7', '1', '2024-01-19 00:44:37', '2024-01-19 00:44:37');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_descrip` varchar(191) NOT NULL,
  `meta_keywords` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'BÀN THỜ CÔNG GIÁO', 'ban-tho-cong-giao', 'Bàn Thờ Công Giáo được làm từ gỗ tự nhiên tại Cửa Hàng Công Giáo với chất lượng đảm bảo, mẫu mã đa dạng, giá thành phù hợp nhất trên thị trường. Tổng hợp những mẫu bàn thờ công giáo đẹp nhất, mang đến nhiều lựa chọn cho khách hàng.', 0, 1, '1704651000.jpg', 'BÀN THỜ CÔNG GIÁO', 'gỗ, kim loại, trang trí', 'bàn thờ', '2024-01-07 11:10:00', '2024-01-21 07:16:37'),
(2, 'Ảnh Đức Mẹ', 'ke-ban-tho-chua', 'Đức Mẹ Maria được coi là đấng tối cao, là Mẹ Thiên Chúa theo Kitô giáo. Hãy cùng ngắm nhìn những hình ảnh mẹ Maria đáng kính trong bài viết này cùng những lời chúc bình an tới mọi người', 0, 1, '1705848506.jpg', 'Ảnh', 'Tráng gương', 'Ảnh', '2024-01-07 11:22:22', '2024-01-21 07:48:26'),
(3, 'Tràng hạt 50', 'toa-tho-cong-dao', 'CHUỖI TRÀNG HẠT MÂN CÔI 50 HẠT TRẮNG - QUÀ TẶNG CÔNG GIÁO', 0, 1, '1705848755.jpg', 'Vòng cổ', 'Dây dù', 'Vòng cổ', '2024-01-07 11:27:46', '2024-01-21 07:52:35'),
(4, 'Tượng nhỏ', 'tuong-cong-giao', 'Tổng hợp những mẫu Tượng công giáo đẹp, đa dạng với nhiều mẫu mã, kích thước khác nhau. Tượng các thánh, mẫu mã nhiều loại, nhiều kích thước khác nhau. Mua tượng công giáo giao hàng tận nơi, vận chuyển toàn quốc.', 0, 1, '1705848970.jpg', 'Tượng Công Giáo', 'Cẩm thạch', 'Tượng', '2024-01-07 11:28:44', '2024-01-21 07:56:10'),
(6, 'Tràng hạt đeo tay', 'trang_hat_deo_tay', 'Tràng hạt đeo tay màu sắc nhã nhặn, sắc nét hài hoà, nam nữ, người lớn tuổi đều đeo được\r\nLà vật phẩm ý nghĩa, mang bình an, may mắn cho các Kito hữu\r\nThích hợp dùng trong các dịp lễ, kỷ niệm, đọc kinh cầu nguyện', 0, 1, '1705849418.jpg', 'Tràng hạt công giáo', 'Đá , gỗ , màu sắc đa dạng', 'Tràng hạt', '2024-01-21 07:31:04', '2024-01-21 08:03:38'),
(7, 'Sách Công Giáo', 'trang_hat_deo_tayeaf', 'Tủ Sách Công Giáo –  nơi bạn có thể tìm mua cho mình những cuốn sách hay về Thiên Chúa và các Thánh. Hãy làm giàu tầm hồn của bạn bằng cách đọc sách mỗi ngày. Tủ Sách Công Giáo đem đến cho bạn kho tàng kiến thức vô tận, nơi bạn có thể gặp gỡ Thầy Giêsu và hãy để Ngài ngỏ lời với bạn.', 0, 1, '1705849920.jpg', 'Sách', 'Sách hay để mọi người cùng nhau tìm hiểu về giáo lý Công giáo , Chúa , Đức Mẹ và các thánh', 'Sách', '2024-01-21 07:34:15', '2024-01-21 08:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_11_17_081147_create_categories_table', 1),
(7, '2023_12_06_052956_create_products_table', 1),
(8, '2023_12_22_201831_create_carts_table', 2),
(9, '2023_12_24_033126_create_orders_table', 3),
(10, '2023_12_24_033613_create_orders_item_table', 3),
(11, '2024_01_05_194317_create_wishlists_table', 4),
(12, '2024_01_12_154340_create_ratings_table', 5),
(14, '2024_01_13_150733_create_reviews_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `fname` varchar(191) DEFAULT NULL,
  `lname` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address1` varchar(191) DEFAULT NULL,
  `address2` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `pincode` varchar(191) NOT NULL,
  `total_price` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `message` varchar(191) DEFAULT NULL,
  `tracking_no` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `total_price`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(1, '2', 'sdfgs', 'sdf', '123hs@gmail.com', '0905509905', '76', '12', 'Núi Thành', 'adscadc', 'Hà An', '123456789', '12600000', 0, NULL, 'sharma6484', '2024-01-11 11:19:11', '2024-01-11 11:19:11'),
(2, '2', 'sdfgs', 'sdf', '123hs@gmail.com', '0905509905', '76', '12', 'Núi Thành', 'adscadc', 'Hà An', '123456789', '7550000', 0, NULL, 'sharma8032', '2024-01-11 11:20:29', '2024-01-11 11:20:29'),
(3, '2', 'sdfgs', 'sdf', '123hs@gmail.com', '0905509905', '76', '12', 'Núi Thành', 'adscadc', 'Hà An', '123456789', '5050001', 0, NULL, 'sharma8396', '2024-01-13 09:10:41', '2024-01-13 09:10:41'),
(4, '2', 'sdfgs', 'sdf', '123hs@gmail.com', '0905509905', '76', '12', 'Núi Thành', 'adscadc', 'Hà An', '123456789', '5050000', 0, NULL, 'sharma1769', '2024-01-13 09:31:42', '2024-01-13 09:31:42'),
(5, '2', 'sdfgs', 'sdf', '123hs@gmail.com', '0905509905', '76', '12', 'Núi Thành', 'adscadc', 'Hà An', '123456789', '5050000', 0, NULL, 'sharma2379', '2024-01-13 09:35:28', '2024-01-13 09:35:28'),
(6, '2', 'sdfgs', 'sdf', '123hs@gmail.com', '0905509905', '76', '12', 'Núi Thành', 'adscadc', 'Hà An', '123456789', '5050000', 0, NULL, 'sharma3566', '2024-01-13 09:38:26', '2024-01-13 09:38:26'),
(7, '2', 'sdfgs', 'sdf', '123hs@gmail.com', '0905509905', '76', '12', 'Núi Thành', 'adscadc', 'Hà An', '123456789', '5050000', 0, NULL, 'sharma9501', '2024-01-13 09:42:28', '2024-01-13 09:42:28'),
(8, '2', 'sdfgs', 'sdf', '123hs@gmail.com', '0905509905', '76', '12', 'Núi Thành', 'adscadc', 'Hà An', '123456789', '5050000', 0, NULL, 'sharma6291', '2024-01-13 09:48:49', '2024-01-13 09:48:49'),
(9, '3', 'ádf', 'sdf', 'assd@gmail.com', '0393703983', '76', '12', 'Núi Thành', 'adscadc', 'Hà An', '234525', '5050000', 0, NULL, 'sharma3660', '2024-01-13 15:10:35', '2024-01-13 15:10:35'),
(10, '3', 'ádf', 'sdf', 'assd@gmail.com', '0393703983', '76', '12', 'Núi Thành', 'adscadc', 'Hà An', '234525', '4', 0, NULL, 'sharma2759', '2024-01-21 07:39:48', '2024-01-21 07:39:48'),
(11, '5', 'KhanhHoang', NULL, 'hoangmo2000ht@gmail.com', '0905509905', '76', '12', 'Núi Thành', 'adscadc', 'Hà An', '234525', '230000', 0, NULL, 'sharma1161', '2024-01-21 21:12:48', '2024-01-21 21:12:48'),
(12, '5', 'Thu Hien', NULL, 'hoangmo2000ht@gmail.com', '0905509905', '76', '12', 'Ha Noi', '12', 'Thuong Tin', '234525', '5050000', 0, NULL, 'sharma5607', '2024-01-21 21:16:48', '2024-01-21 21:16:48'),
(13, '5', 'Van Loc', NULL, 'vanloc@gmail.com', '0905509905', '76', '12', 'Núi Thành', 'adscadc', 'Hà An', '234525', '300000', 0, NULL, 'sharma3539', '2024-01-21 21:20:43', '2024-01-21 21:20:43'),
(14, '5', 'Thanh Thang', NULL, 'hoangmo2000ht@gmail.com', '0905509905', '76', '12', 'Núi Thành', 'adscadc', 'Hà An', '234525', '5200000', 0, NULL, 'sharma8983', '2024-01-21 23:18:00', '2024-01-21 23:18:00'),
(15, '5', 'KhanhHoang', NULL, 'hoangmo2000ht@gmail.com', '0905509905', '76', '12', 'Núi Thành', 'adscadc', 'Hà An', '234525', '150001', 0, NULL, 'sharma6641', '2024-01-21 23:34:07', '2024-01-21 23:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `orders_item`
--

CREATE TABLE `orders_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `qty` varchar(191) NOT NULL,
  `price` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_item`
--

INSERT INTO `orders_item` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '8', '1', '1', '5050000', '2024-01-13 09:48:49', '2024-01-13 09:48:49'),
(2, '9', '1', '1', '5050000', '2024-01-13 15:10:35', '2024-01-13 15:10:35'),
(3, '10', '11', '1', '4', '2024-01-21 07:39:48', '2024-01-21 07:39:48'),
(4, '11', '9', '1', '50000', '2024-01-21 21:12:48', '2024-01-21 21:12:48'),
(5, '11', '11', '1', '180000', '2024-01-21 21:12:48', '2024-01-21 21:12:48'),
(6, '12', '1', '1', '5050000', '2024-01-21 21:16:48', '2024-01-21 21:16:48'),
(7, '13', '2', '1', '300000', '2024-01-21 21:20:43', '2024-01-21 21:20:43'),
(8, '14', '3', '1', '150000', '2024-01-21 23:18:00', '2024-01-21 23:18:00'),
(9, '14', '1', '1', '5050000', '2024-01-21 23:18:00', '2024-01-21 23:18:00'),
(10, '15', '6', '1', '1', '2024-01-21 23:34:07', '2024-01-21 23:34:07'),
(11, '15', '3', '1', '150000', '2024-01-21 23:34:07', '2024-01-21 23:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `small_description` mediumtext NOT NULL,
  `description` longtext NOT NULL,
  `original_price` varchar(191) NOT NULL,
  `selling_price` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `qty` varchar(191) NOT NULL,
  `tax` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 2, 'Combo Bàn thờ kệ lệch và tượng gỗ Pomu', 'combo-ban-tho-ke-lech-va-tuong-go-pomu-ma-ch-ca11', 'Combo Bàn thờ kệ lệch và tượng gỗ Pomu - [Mã CH-CA11], chất liệu gỗ thông và gỗ Pơmu. Bao gồm Kệ bàn thờ, Bộ 3 tượng công giáo và đèn gỗ. Kích thước 1m x 35cm x 1m2, phù hợp cho gia đình với không gian nhỏ, mang đến sự đơn giản và linh thiêng.', 'Tên sản phẩm: Combo Bàn thờ kệ lệch và tượng gỗ Pomu – [ Mã CH-CA11 ]\r\nMã sản phẩm: CH-CA11\r\nChất liệu gỗ bàn thờ: Gỗ thông\r\nChất liệu tượng: Gỗ Pơmu\r\nCombo sản phẩm gồm có: Kệ bàn thờ công giáo, Bộ 3 tượng công giáo, đèn gỗ\r\nKích thước sản phẩm (Rộng x sâu x cao): 1m x 35cm x 1m2\r\nChiều cao của sản phẩm được tính từ phía dưới yếm hoa lên tới phía trên Thánh giá\r\nKích thước tượng Mẹ Maria: có 2 loại: 40cm và 50cm\r\nKích thước tượng thánh Giuse: có 2 loại 40cm và 50cm\r\nCác loại tượng đi kèm: Tượng Chúa Giesu, Tượng Mẹ Maria, Tượng thánh Giuse\r\nSản phẩm rất phù hợp với các gia đình có không gian nhỏ, cần tính đơn giản trong sản phẩm', '5650000', '5050000', '1704652496.jpg', '1', '0', 0, 1, 'Combo Bàn thờ kệ lệch và tượng gỗ', 'Bàn thờ', 'Combo Bàn thờ kệ lệch và tượng gỗ', '2024-01-07 11:34:56', '2024-01-21 23:18:00'),
(2, 2, 'Ảnh tráng gương Đức Mẹ tuyệt đẹp', 'anh_duc_me', 'Tranh đính đá tự làm và chưa khung kính\r\n🔹 Hàng có sẵn tại shop', '🔹 Khách hàng đặt tranh hãy chọn chính xác phân loại tranh đá hoặc tranh thêu, để được nhận đúng sản phẩm mình đặt.', '320000', '300000', '1705850439.webp', '11', '1', 0, 1, 'CH-KBT02', 'Ảnh', 'Ảnh Đức Mẹ', '2024-01-07 11:42:36', '2024-01-21 23:05:39'),
(3, 3, 'Chuỗi tràng hạt mân côi M50 gỗ trầm hương', 'chuoi_man_coi', 'Lắc tay tràng hạt bạc - Vòng mân côi bạc - Chuỗi mân côi bạc', 'Lắc tay tràng hạt bạc - Vòng mân côi bạc - Chuỗi mân côi bạc ta\r\nGiúp bạn lần hạt mọi lúc mọi nơi\r\nTránh gió độc - tốt cho sức khỏe', '200000', '150000', '1705850789.jpg', '10', '0', 0, 1, 'THL_1', 'Tràng hạt cổ', 'Tràng hạt cổ', '2024-01-07 11:44:10', '2024-01-21 23:34:07'),
(4, 4, 'Tượng chịu nạn gỗ Pomu', 'bo-tuong-cong-giao-go-pomu-ma-ch-bt01', 'Tên sản phẩm: Bộ Tượng Công giáo Gỗ Pomu – [Mã CH-BT01]\r\n\r\nMã sản phẩm: Mã CH-BT01\r\n\r\nChất liệu: Gỗ Pơ mu', 'Tên sản phẩm: Bộ Tượng Công giáo Gỗ Pomu – [Mã CH-BT01]\r\n\r\nMã sản phẩm: Mã CH-BT01\r\n\r\nChất liệu: Gỗ Pơ mu\r\n\r\nTượng Công giáo Gỗ Pomu – [Mã CH-BT01] được làm từ chất liệu gỗ pơ mu, đây là một loại tượng công giáo đẹp, với thiết kế ấn tượng, phù hợp với mọi mẫu bàn thờ công giáo của gia chủ. Tham khảo ngay những mẫu tượng công giáo đẹp để có những thông tin cần thiết nhất.', '6500000', '4999000', '1704653201.jpg', '12', '0', 0, 1, 'CH-BT01', 'Bộ Tượng Công Giáo', 'Bộ Tượng Công giáo Gỗ Pomu', '2024-01-07 11:46:41', '2024-01-21 23:09:20'),
(5, 4, 'Tượng Đức Mẹ Fatima', 'tuong-duc-me-fatima', 'Tên sản phẩm: Tượng Đức Mẹ Fatima Chiều Cao 1,6m – [ Mã CH-TM02 ]\r\nMã sản phẩm: Mã CH-TM02\r\nChiều cao: 1,6m\r\nMàu sắc: nhiều màu, vân gỗ, trắng.\r\nChất liệu tượng: Composite', 'Tên sản phẩm: Tượng Đức Mẹ Fatima Chiều Cao 1,6m – [ Mã CH-TM02 ]\r\nMã sản phẩm: Mã CH-TM02\r\nChiều cao: 1,6m\r\nMàu sắc: nhiều màu, vân gỗ, trắng.\r\nChất liệu tượng: Composite\r\nSản phẩm tượng Đức Mẹ Fatima có chiều cao lên tới 1,6m, thích hợp với việc đặt tại các không gian ngoài trời. Tượng Đức Mẹ Fatima là một loại tượng công giáo đẹp, thường được trưng bày ở những nơi có không gian rộng lớn.\r\nSản phẩm có thể làm theo chiều cao khách hàng yêu cầu', '6250000', '5350000', '1704653306.jpg', '12', '0', 0, 1, 'CH-TM02', 'Tượng Đức Mẹ Fatima', 'Nhiều màu, vân gỗ, trắng', '2024-01-07 11:48:26', '2024-01-21 23:03:18'),
(6, 1, 'Combo Bàn thờ công giáo gỗ Pomu và tượng – [ Mã CH-CA10]', 'combo-ban-tho-cong-giao-go-pomu-va-tuong-ma-ch-ca1', 'Mã: CH-CA10\r\nThông tin sản phẩm:\r\nChất liệu gỗ của bàn thờ công giáo: Gỗ Pomu\r\nChất liệu tượng: Composite\r\nKích thước bàn thờ (Rộng x sâu x cao): 1m x 35cm x 1m2.', 'Tên sản phẩm: Combo Bàn thờ công giáo gỗ Pomu và tượng – [ Mã CH-CA10]\r\nMã: CH-CA10\r\nThông tin sản phẩm:\r\nChất liệu gỗ của bàn thờ công giáo: Gỗ Pomu\r\nChất liệu tượng: Composite\r\nKích thước bàn thờ (Rộng x sâu x cao): 1m x 35cm x 1m2.\r\nChiều cao của bàn thờ công giáo được tính từ phía dưới yếm hoa tới phía trên đỉnh của Thánh giá\r\nCombo Sản phẩm gồm: Bàn thờ công giáo mẫu đẹp, bộ 3 mẫu tượng công giáo và đèn gỗ\r\nBộ 3 mẫu tượng đi kèm sản phẩm: Tượng Chúa Giesu chịu nạn, Mẹ Maria, thánh Giuse', '2900000', '1', '1704653634.jpg', '8', '0', 0, 1, 'Bàn thờ công giáo', 'Pomu', 'Combo Bàn thờ công giáo gỗ Pomu và tượng', '2024-01-07 11:53:54', '2024-01-21 23:34:07'),
(7, 4, 'Tượng thánh cả Giuse', 'test-ne', 'Kích thước 100cm\r\n⁃ Chất liệu Polycomposite\r\n⁃ Viền áo vẽ nhũ', 'Sản phẩm để được ngoài trời\r\n⁃ Giá sản phẩm đã bao gồm cả chi phí vận chuyển', '50000', '48000', '1705851326.png', '10', '1', 0, 1, 'Tượng Thánh Giuse Thợ 100cm 1m', 'Tượng', 'Tượng', '2024-01-14 11:58:36', '2024-01-21 23:06:50'),
(8, 6, 'Vòng tay công giáo đá thạch anh tím thiên nhiên', 'dgfh-fgh', 'Hạt to (chính) : Đá thạch anh tím thiên nhiên\r\nHạt nhỏ (phụ) : Đá Granat thiên nhiên ( còn gọi là ngọc hồng lựu)', 'Thánh giá chế tác bằng đá thạch anh vàng thiên nhiên', '40000', '38000', '1705851632.jpg', '23', '2', 0, 1, 'vòng tay', 'Tràng hạt nhỏ', 'Tràng hạt nhỏ', '2024-01-14 12:06:46', '2024-01-21 08:40:32'),
(9, 3, 'Tràng hạt mân côi', 'tràng hạt mân côi', 'Tràng hạt với nhiều kích cỡ và màu sắc, cho bạn sự lựa chọn phong phú. Vừa có thể làm phụ kiện trang sức cho bản thân, vừa thể hiện lòng thành kính đối với mẹ Maria và Đức Chúa Trời để lần hạt mân côi khi đọc kinh và cầu nguyện.', 'Tràng hạt với nhiều kích cỡ và màu sắc, cho bạn sự lựa chọn phong phú. Vừa có thể làm phụ kiện trang sức cho bản thân, vừa thể hiện lòng thành kính đối với mẹ Maria và Đức Chúa Trời để lần hạt mân côi khi đọc kinh và cầu nguyện.', '50000', '50000', '1705884621.jpg', '2', '1', 0, 0, 'Tràng hạt', 'Tràng hạt', 'Tràng hạt', '2024-01-14 12:14:48', '2024-01-21 21:12:48'),
(10, 4, 'Tượng Đức Mẹ Mân Côi', 'test-nezfd', 'Tượng Mẹ Mân Côi được chế tác từ chất liệu composite cao cấp. Với chất liệu này, bà con giáo dân có thể thờ phụng trong nhà hoặc ngoài trời đều được. Ngoài màu sắc sơn như trong hình, chúng tôi có thể chỉnh sửa theo yêu cầu của bà con giáo dân. Tuongthoconggiao.com luôn mong muốn mang lại những vật phẩm thờ phụng hoàn hảo nhất, làm hài lòng những vị khách khó tính nhất.', 'Tượng Mẹ Mân Côi được chế tác từ chất liệu composite cao cấp. Với chất liệu này, bà con giáo dân có thể thờ phụng trong nhà hoặc ngoài trời đều được. Ngoài màu sắc sơn như trong hình, chúng tôi có thể chỉnh sửa theo yêu cầu của bà con giáo dân. Tuongthoconggiao.com luôn mong muốn mang lại những vật phẩm thờ phụng hoàn hảo nhất, làm hài lòng những vị khách khó tính nhất.', '325000', '300000', '1705883896.jpg', '1', '1', 0, 1, 'Tượng Công Giáo', 'Tượng Công Giáo', 'Tượng Công Giáo', '2024-01-14 12:22:18', '2024-01-21 17:38:16'),
(11, 7, 'Sách \"Thần đô huyền nhiệm\"', 'sách', 'Đức Mẹ Maria là Đấng quan trọng sau Chúa Giêsu Kitô trong mầu nhiệm Cứu Chuộc.  Mẹ là Đấng đã thực sự rõ ràng cộng tác vào việc Cứu Chuộc của Chúa Giêsu Con Mẹ. Ơn gọi và sứ mạng của Mẹ chính là ơn gọi Đồng Công Cứu Chuộc. Từ trước vô cùng, Thiên Chúa đã định đặt cho Đức Mẹ được ơn Đồng Công Cứu Chuộc.', 'Đức Mẹ Maria là Đấng quan trọng sau Chúa Giêsu Kitô trong mầu nhiệm Cứu Chuộc.  Mẹ là Đấng đã thực sự rõ ràng cộng tác vào việc Cứu Chuộc của Chúa Giêsu Con Mẹ. Ơn gọi và sứ mạng của Mẹ chính là ơn gọi Đồng Công Cứu Chuộc. Từ trước vô cùng, Thiên Chúa đã định đặt cho Đức Mẹ được ơn Đồng Công Cứu Chuộc.', '200000', '180000', '1705883495.jpg', '22', '1', 0, 1, 'Sách công giáo', 'Sách', 'Sách', '2024-01-21 07:37:56', '2024-01-21 21:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `stars_rated` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `prod_id`, `stars_rated`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '3', '2024-01-13 07:40:27', '2024-01-13 09:56:31'),
(2, '3', '1', '5', '2024-01-13 15:10:58', '2024-01-13 15:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `user_review` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `prod_id`, `user_review`, `created_at`, `updated_at`) VALUES
(1, '2', '1', 'good adfsagfv', '2024-01-13 11:40:13', '2024-01-13 13:07:07'),
(2, '3', '1', 'jshdfjgklsnfvjkbnsdv àgasg', '2024-01-13 15:11:09', '2024-01-13 15:12:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `lname` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address1` varchar(191) DEFAULT NULL,
  `address2` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `pincode` varchar(191) DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `lname`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'TRẦN KHÁNH HOÀNG', 'hoang@gmail.com', NULL, '$2y$12$5Jl.BGsPx7DssmJXPk9VK.l2OrTd9nhbsI3XxLolbZSXYta1G8YHG', '', '', '', '', '', '', '', '', 1, NULL, '2023-12-10 19:05:16', '2023-12-10 19:05:16'),
(2, 'sdfgs', '123hs@gmail.com', NULL, '$2y$12$BqKfKZaYgzXLmQ4fJuQHJuU8P29O9XZ8bsoXJHCgAF6UlV4EMz7Va', 'sdf', '0905509905', '76', '12', 'Núi Thành', 'adscadc', 'Hà An', '123456789', 0, NULL, '2024-01-11 08:03:20', '2024-01-11 11:19:11'),
(3, 'ádf', 'assd@gmail.com', NULL, '$2y$12$wGB8XtTSC527odM9W6IhjO/gDb.1GMdz9zt2w2xw5W1j5u9eZa.Vm', 'sdf', '0393703983', '76', '12', 'Núi Thành', 'adscadc', 'Hà An', '234525', 0, NULL, '2024-01-13 15:01:52', '2024-01-13 15:10:35'),
(4, 'kjh,o', 'sumi45718@gmail.com', NULL, '$2y$12$F8zAqLqbEMUoaCiwupSbKOnZQxnxDicir.7mhyhvDPnnH7BYXyHDa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2024-01-13 15:12:53', '2024-01-13 15:12:53'),
(5, 'KhanhHoang', 'hoangmo2000ht@gmail.com', NULL, '$2y$12$fO/RY7.wRS4HajSIhLkQLu9ui0nxp9kksKxM4diJSqLRGOu3NIR12', NULL, '0905509905', '76', '12', 'Núi Thành', 'adscadc', 'Hà An', '234525', 0, NULL, '2024-01-21 06:58:48', '2024-01-21 21:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `prod_id`, `created_at`, `updated_at`) VALUES
(1, '1', '6', '2024-01-07 14:11:09', '2024-01-07 14:11:09'),
(2, '1', '1', '2024-01-07 14:29:41', '2024-01-07 14:29:41'),
(3, '1', '1', '2024-01-07 14:29:41', '2024-01-07 14:29:41'),
(4, '1', '1', '2024-01-07 14:29:55', '2024-01-07 14:29:55'),
(5, '1', '1', '2024-01-07 14:29:56', '2024-01-07 14:29:56'),
(6, '1', '1', '2024-01-07 14:29:57', '2024-01-07 14:29:57'),
(7, '1', '1', '2024-01-07 14:29:57', '2024-01-07 14:29:57'),
(8, '1', '1', '2024-01-07 14:30:02', '2024-01-07 14:30:02'),
(9, '1', '1', '2024-01-07 14:30:03', '2024-01-07 14:30:03'),
(10, '1', '1', '2024-01-07 14:30:04', '2024-01-07 14:30:04'),
(11, '1', '1', '2024-01-07 14:30:04', '2024-01-07 14:30:04'),
(12, '1', '1', '2024-01-07 14:30:04', '2024-01-07 14:30:04'),
(13, '1', '1', '2024-01-07 14:30:04', '2024-01-07 14:30:04'),
(14, '1', '1', '2024-01-07 14:30:05', '2024-01-07 14:30:05'),
(15, '1', '1', '2024-01-07 14:30:05', '2024-01-07 14:30:05'),
(16, '1', '1', '2024-01-07 14:30:05', '2024-01-07 14:30:05'),
(17, '1', '1', '2024-01-07 14:37:07', '2024-01-07 14:37:07'),
(18, '1', '1', '2024-01-07 14:37:19', '2024-01-07 14:37:19'),
(19, '1', '10', '2024-01-19 00:26:02', '2024-01-19 00:26:02'),
(23, '2', '5', '2024-01-19 00:57:21', '2024-01-19 00:57:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
