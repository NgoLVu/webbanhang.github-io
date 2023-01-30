-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 19, 2023 lúc 03:32 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(15, 'Hải sản khô'),
(16, 'Hải sản đã chế biến'),
(17, 'Hải sản tươi sống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `firstname`, `lastname`, `email`, `phone_number`, `subject_name`, `note`, `created_at`, `updated_at`, `status`) VALUES
(6, 'st', 'stts', 'ts@email.com', 'ts', 'ts', 'tststsst', '2022-08-22 06:52:46', '2022-08-22 06:52:46', 0),
(7, '1', '1', '111@email.com', '1', '1', '1111', '2022-08-22 06:53:19', '2022-08-22 06:53:19', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `galery`
--

CREATE TABLE `galery` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `email`, `phone_number`, `address`, `note`, `order_date`, `status`, `total_money`) VALUES
(4, 5, 'ngovu', 'ngovu2121@gmail.com', '1', '1', '', '2021-11-04 04:43:26', 1, 1111111),
(5, 5, 'ngovu', 'ngovu@email.com', '0929246223', 'Thanh Hóa', '', '2021-11-05 03:53:31', 2, 3000000),
(7, 5, 'ngovu', 'eaad@email.com', 'E', 'e', '', '2021-11-06 10:26:33', 2, 3000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `num`, `total_money`) VALUES
(1, 2, 2, 1, 1, 1),
(2, 2, 3, 1, 1, 1),
(3, 1, 2, 1, 2, 2),
(4, 1, 3, 1, 1, 1),
(5, 3, 1, 600000, 5, 3000000),
(6, 3, 5, 600000, 3, 1800000),
(7, 4, 14, 550000, 2, 1100000),
(8, 4, 17, 11111, 1, 11111),
(9, 5, 28, 600000, 5, 3000000),
(10, 7, 24, 3000000, 1, 3000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `category_id`, `title`, `price`, `discount`, `thumbnail`, `description`, `created_at`, `updated_at`, `deleted`) VALUES
(18, 15, 'Tôm khô', 120000, 120000, 'assets/photos/download.jpg', '', '2021-11-04 05:09:00', '2021-11-04 15:40:59', 0),
(19, 15, 'Mực khô', 1200000, 1200000, 'assets/photos/download (1).jpg', '', '2021-11-04 05:17:04', '2021-11-04 16:58:07', 0),
(20, 15, 'Cá mối khô', 0, 150000, 'assets/photos/cach-lam-kho-ca-moi-ngon-don-gian-tai-nha-202109301110338463.jpg', '', '2021-11-04 16:57:03', '2021-11-04 16:57:03', 0),
(21, 15, 'Cá cơm khô', 80000, 80000, 'assets/photos/download (2).jpg', '', '2021-11-04 16:31:10', '2021-11-04 16:31:10', 0),
(22, 15, 'Cá chỉ vàng', 0, 100000, 'assets/photos/ca_chi_vang_.jpg', '', '2021-11-04 16:44:11', '2021-11-04 16:44:11', 0),
(23, 17, 'Cá hồi', 300000, 300000, 'assets/photos/anh cahoi2.jpg', '', '2021-11-04 16:41:15', '2021-11-04 16:41:15', 0),
(24, 17, 'mực lá', 0, 3000000, 'assets/photos/download.jpg', '', '2021-11-05 03:58:42', '2021-11-05 03:58:42', 0),
(25, 17, 'mực ống', 400000, 400000, 'assets/photos/download (3).jpg', '', '2021-11-05 03:58:43', '2021-11-05 03:58:43', 0),
(26, 17, 'Sứa', 100000, 100000, 'assets/photos/ngo-doc-sua-bien-2-1519777161415123139991-1200x676.jpg', '', '2021-11-05 03:26:45', '2021-11-05 03:26:45', 0),
(27, 17, 'Cá chim', 200000, 200000, 'assets/photos/ca_chim_bien_song.jpg', '', '2021-11-05 03:27:50', '2021-11-05 03:27:50', 0),
(28, 17, 'Tôm hùm', 600000, 600000, 'assets/photos/download (4).jpg', '<p><br></p>', '2021-11-05 03:02:52', '2021-11-05 03:02:52', 0),
(29, 17, 'Tôm sú', 150000, 150000, 'assets/photos/download (5).jpg', '', '2021-11-05 03:12:56', '2021-11-05 03:12:56', 0),
(30, 17, 'Cá ngừ', 80000, 80000, 'assets/photos/download (6).jpg', '', '2021-11-05 03:11:57', '2021-11-05 03:11:57', 0),
(31, 16, 'Cá hồi đóng hộp', 50000, 50000, 'assets/photos/download (7).jpg', '', '2021-11-05 04:23:10', '2021-11-05 04:23:10', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tokens`
--

CREATE TABLE `tokens` (
  `user_id` int(11) NOT NULL,
  `token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tokens`
--

INSERT INTO `tokens` (`user_id`, `token`, `created_at`) VALUES
(1, '7b887b1e751b6839105033c9f7bdf48c', '2021-10-19 17:03:55'),
(5, '061444eaf40e5f67d39ceb0b6881a1b1', '2022-02-07 02:49:48'),
(5, '0c21ffbcdb5df1c9a5e8e97e5471dfb0', '2022-11-17 16:20:38'),
(5, '19c4595aa6bd33a82811b69b3b793064', '2022-08-22 06:45:20'),
(5, '218161828312f5d506e49df371ab11d2', '2023-01-14 16:02:42'),
(5, '3ef64fa7bc6fe1a96c1a6fe87ef59a94', '2022-02-22 06:04:21'),
(5, '4ba7272c4e9d9b3191b0748ee2b2d1dd', '2021-11-05 03:33:18'),
(5, '4d50db23882484e1a3ed33e168dd181e', '2021-11-06 10:24:13'),
(5, '55894daf2680d7fd333a3201af4810fc', '2022-08-26 19:09:14'),
(5, '59126ee7e32967c3e95fc00b6904b8de', '2021-11-04 00:48:01'),
(5, '6e04e5269ee5ca79da80fecdfcf8e965', '2022-08-20 13:17:05'),
(5, 'a903c3e2dce63bb483607209dc973503', '2021-11-03 17:24:44'),
(5, 'b9034246e4bdae929653c02cd0a2640d', '2021-11-04 15:53:18'),
(5, 'bfe17ae02cabcb355cff85c54564add3', '2021-11-29 15:54:38'),
(5, 'd3fc1aacde2f7de73d506a3b5ceaf0c2', '2022-12-23 10:26:35'),
(5, 'eccadba3608799c2d28978575ec394f6', '2022-10-18 16:03:26'),
(5, 'f0bc55712de6d2eb3dc13416689dc23b', '2022-06-18 05:00:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `phone_number`, `address`, `password`, `role_id`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'Ngo Long Vu', 'ngovu2121@gmail.com', '0382088863', 'Sam Son,Thanh Hoa,Viet Nam', '123456', 1, '2021-10-19 10:39:39', '2021-10-20 17:40:06', 0),
(2, 'Admin', 'admin@email.com', '0382088863', 'Sam son', '123456Aa', 1, '2021-10-19 10:42:39', '2021-10-20 17:43:19', 0),
(5, 'ad@email.com', 'ad@email.com', NULL, NULL, '9103e2bd449e7737ceaa2e2f87492c0e', 2, '2021-11-03 17:24:35', '2021-11-03 17:24:35', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`user_id`,`token`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `galery`
--
ALTER TABLE `galery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `galery`
--
ALTER TABLE `galery`
  ADD CONSTRAINT `galery_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
