-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28 مايو 2025 الساعة 03:35
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ur_path`
--

-- --------------------------------------------------------

--
-- بنية الجدول `main_srvs`
--

CREATE TABLE `main_srvs` (
  `id` int(11) NOT NULL,
  `srv_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `main_srvs`
--

INSERT INTO `main_srvs` (`id`, `srv_name`) VALUES
(1, 'تطوير المواقع وقواعد البيانات'),
(2, 'خدمات التصميم'),
(3, 'خدمات التعليم والمساندة الأكاديمية'),
(4, 'خدمات الموشن جرافيك والإنفوجرافيك'),
(5, 'تصميم الحملات التسويقية'),
(6, 'إنتاج الفيديو,الرسوم المتحركة,المونتاج'),
(7, 'خدمات التعليق الصوتي'),
(8, 'خدمات الخطوط والرسم الفني'),
(9, 'تصميم الفلاتر والحلات والقصة'),
(10, 'الموسيقى والهوية السمعية '),
(11, 'تصميم الشعارات والهوية البصرية'),
(12, 'خدمات الترجمة والدبلجة الصوتي'),
(13, 'تصميم واجهات تجربة المستخدم'),
(14, 'تحرير النص وكتابة المحتوى'),
(15, 'تحليل البيانات وتقارير الأداء');

-- --------------------------------------------------------

--
-- بنية الجدول `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `pr_id` int(11) NOT NULL,
  `order_title` varchar(500) NOT NULL,
  `order_desc` varchar(1000) NOT NULL,
  `srv_id` int(11) NOT NULL,
  `free_edit` int(11) NOT NULL,
  `order_date` varchar(200) NOT NULL,
  `order_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `orders`
--

INSERT INTO `orders` (`id`, `u_id`, `pr_id`, `order_title`, `order_desc`, `srv_id`, `free_edit`, `order_date`, `order_time`) VALUES
(20, 1, 1, '', 'vvvvvvvvv', 1, 2, '2025-05-21 19:59:03', 1747857543),
(21, 1, 1, '', 'dddd', 1, 2, '2025-05-21 20:03:46', 1747857826),
(22, 1, 1, '', 'ffff', 1, 2, '2025-05-21 20:11:31', 1747858291),
(23, 1, 1, '', 'fa', 1, 2, '2025-05-21 20:23:20', 1747859000),
(24, 1, 1, '', 'ffff', 1, 2, '2025-05-21 20:35:02', 1747859702),
(25, 1, 1, '', 'CC', 1, 2, '2025-05-21 20:50:05', 1747860605),
(26, 1, 1, '', 'ff', 1, 2, '2025-05-21 20:53:16', 1747860796),
(27, 1, 1, '', 'vvvvv', 1, 2, '2025-05-21 20:59:03', 1747861143),
(28, 1, 1, '', 'aa', 1, 2, '2025-05-22 14:07:00', 1747922820),
(30, 1, 1, 'bbbbbbbbb', 'aaaa', 1, 2, '2025-05-22 14:10:33', 1747923033),
(31, 1, 1, 'aaa', 'fff', 15, 2, '2025-05-22 14:15:38', 1747923338),
(34, 1, 2, 'Test title', 'Test Description >>>>> ', 1, 2, '2025-05-22 14:39:41', 1747924781),
(35, 1, 1, 'بسم الله الرحمن الرحيم ', 'طلب 1 طلب 2', 1, 2, '2025-05-22 19:23:44', 1747941824);

-- --------------------------------------------------------

--
-- بنية الجدول `org_docs`
--

CREATE TABLE `org_docs` (
  `id` int(11) NOT NULL,
  `doc_num` varchar(200) NOT NULL,
  `doc_name` varchar(200) NOT NULL,
  `u_id` int(11) NOT NULL,
  `doc_type` varchar(200) NOT NULL,
  `doc_status` varchar(200) NOT NULL DEFAULT 'waitting'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `org_docs`
--

INSERT INTO `org_docs` (`id`, `doc_num`, `doc_name`, `u_id`, `doc_type`, `doc_status`) VALUES
(30, '555555555555', '6821b7e6e4b4e3.40192472.jpg', 1, 'tax', 'rejected'),
(36, '123456789', '6822cc912f5769.38039509.jpg', 1, 'maroof', 'waitting'),
(38, '777777', '683514ca873263.22803221.jpg', 1, 'free_lancer', 'waitting');

-- --------------------------------------------------------

--
-- بنية الجدول `pr_my_works`
--

CREATE TABLE `pr_my_works` (
  `id` int(11) NOT NULL,
  `file_link` varchar(255) NOT NULL,
  `u_id` int(11) NOT NULL,
  `file_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `pr_my_works`
--

INSERT INTO `pr_my_works` (`id`, `file_link`, `u_id`, `file_type`) VALUES
(9, '681b3550890c54.90444595.jpg', 1, 'file'),
(11, 'https://www.youtube.com/watch?v=mh2265QqV-Y', 1, 'youtube'),
(12, '681b35d3a7b8f1.75649593.jpg', 1, 'file'),
(18, '6822ca77055cd4.90859707.pdf', 1, 'file'),
(19, 'https://youtu.be/4BQ1sCRWNdA?si=XpsOORIdSDgBxU46', 2, 'youtube');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_t` varchar(200) NOT NULL DEFAULT 'customer',
  `password` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_account` varchar(255) DEFAULT NULL,
  `swift` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `u_img` varchar(500) NOT NULL DEFAULT 'blank-profile.png',
  `about_me` varchar(500) NOT NULL,
  `my_srv` varchar(500) NOT NULL,
  `before_order` text NOT NULL,
  `my_tags` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `phone_number`, `email`, `user_t`, `password`, `bank_name`, `bank_account`, `swift`, `ip`, `browser`, `u_img`, `about_me`, `my_srv`, `before_order`, `my_tags`) VALUES
(1, 'Saad', 'Mar', '+9660581929858', 'Mmm@gmail.com', 'provider', 'fff', NULL, NULL, NULL, '2.90.253.82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '67f6559f90d230.76475859.jpg', '  11 update about me    ', '  تصميم بطاقات باحترافية,تصميم حالات الواتس والسناب ،إدارة الحملات التسويقية   ', 'تأكد من جميع البنود التي تريدها قبل البدء بالطلب , حدد عدد الصور التي تريدها قبل بدء الطلب و اختيار الألوان ', 'تصوير تصم تسويق تصميم واتس حالات سناب فوتوشوب  '),
(2, 'user', '2', '+96654552222', '', 'customer', '', '', '', '', '2.90.253.82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'blank-profile.png', '', 'تصميم بطاقات', '', ''),
(3, '', 's', '+9668080', 'kk@a.a', 'customer', '4', 'ddd', '2', '12ds', '2.90.253.82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '', '', '', '', ''),
(4, '', 'd', '+96680800', 'kk@a.aaa', 'customer', 'f', 'sddf', 'f', 'ffsf', '2.90.253.82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '', '', '', '', ''),
(5, '', 'f', '+966200000', 'mm@google.com', 'customer', 'ff', '', '', '', '2.90.253.82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '', '', '', '', ''),
(6, '', 'ali', '+9665063322', 'ali@google.com', 'customer', '12345', 'alrajhi bank', '7800', 'swift10', '2.90.253.82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '', '', '', '', ''),
(7, '', 'alatawi', '+966541929858', 'alshamali.99@gmail.com', 'customer', '9955599', '', '', '', '93.112.37.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0', '67f6b342d2e0c0.02950069.jpg', 'الحمدلله رب العالمين ', '', '', ''),
(8, '', 'alatawi', '+966541929859', 'alshamali.989@gmail.com', 'customer', '123456', 'الراجحي', 'as123456', 'as123456', '93.112.37.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0', '', '', '', '', ''),
(9, 'khalid', 'mohammed', '+966500500', 'kh@google.com', 'customer', '8080', 'alrajhi bank', '6666', 'swift300', '2.90.253.82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '', '', '', '', '');

-- --------------------------------------------------------

--
-- بنية الجدول `user_main_srvs`
--

CREATE TABLE `user_main_srvs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `srv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `user_main_srvs`
--

INSERT INTO `user_main_srvs` (`id`, `user_id`, `srv_id`) VALUES
(12, 2, 15),
(27, 2, 1),
(31, 1, 1),
(32, 1, 15),
(33, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main_srvs`
--
ALTER TABLE `main_srvs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `org_docs`
--
ALTER TABLE `org_docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pr_my_works`
--
ALTER TABLE `pr_my_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_main_srvs`
--
ALTER TABLE `user_main_srvs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `main_srvs`
--
ALTER TABLE `main_srvs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `org_docs`
--
ALTER TABLE `org_docs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `pr_my_works`
--
ALTER TABLE `pr_my_works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_main_srvs`
--
ALTER TABLE `user_main_srvs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
