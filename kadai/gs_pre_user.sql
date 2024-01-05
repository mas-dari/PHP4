-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2024 年 1 月 05 日 10:46
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db04`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_pre_user`
--

CREATE TABLE `gs_pre_user` (
  `id` int(11) NOT NULL,
  `urltoken` varchar(255) NOT NULL,
  `mail` varchar(128) NOT NULL,
  `date` datetime NOT NULL,
  `flag` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_pre_user`
--

INSERT INTO `gs_pre_user` (`id`, `urltoken`, `mail`, `date`, `flag`) VALUES
(1, '41cb028e29e6d590a1ee20ffe5178bf438a449c4daf1ba5b5e7040e6c0ceba27', 'test@gmail.com', '2023-12-29 19:42:12', 1),
(2, '0d1a57231b5d5e70141ec59c72dadfdbbdeaf0712e8e7b970434e9604906ac38', 'test@gmail.com', '2023-12-29 19:44:36', 1),
(3, '6522d4c6615d63f7335640e30b5c2ee0d141f8ca36f545a41f4f8cccc68b3460', 'test@gmail.com', '2023-12-30 16:08:33', 1),
(4, '4225094994fb2e443e50c31cdc5114db1332cc58646fe91edaee782607e35764', 'test@gmail.com', '2023-12-30 16:10:54', 1),
(5, 'f57195ae8b79b886df176a77d6a11177ebc883e78219d655455745ac8f1761be', 'test@gmail.com', '2023-12-30 16:11:47', 1),
(6, 'c015826a86b06043dd4ac1415e179bc2bbc2a228f11aac94f5ea57c76edc8ec0', 'test@gmail.com', '2023-12-30 16:13:33', 1),
(7, '9a40dcdb2d547400741f1207e526614f11595b56181d883bd9b5fcbb45793f40', 'test2@gmail.com', '2023-12-30 16:13:49', 0),
(8, '3079ee91c3da43d77c5b62bf152499d51d2965da54f06b2fc298ffb9e1eeaa54', 'test2@gmail.com', '2023-12-30 16:21:57', 0),
(9, '0f54d5a7719519157ef39f65720fa75f45363180205ec3ce5bbae16d0a59b395', 'test3@gmail.com', '2023-12-30 16:22:15', 0),
(10, 'fdf83211c49b369fafa1d95fef00d5154a918a4c0bd29bf8fead559a5a642f43', 'test@gmail.com', '2023-12-30 16:25:14', 1),
(11, 'd4bf41b3aa36d08105cc5c1316765f72755068bb097ca7add0c8008a6d383b54', 'test@gmail.com', '2023-12-30 16:29:04', 1),
(12, '6fc7f2785f3a729cbea844fffac3e659ce65b5c06886d48be3749ed5d3d6d455', 'test@gmail.com', '2023-12-30 16:31:58', 1),
(13, '86fbfae506d6d6adcc76835f819bc91e5e6ddfe6495fe5125b7e24027a8765e4', 'test@gmail.com', '2023-12-30 16:32:09', 1),
(14, 'ccfaaf729ea4b18b47ab98a6682db96dd06525c4a1cb5d7d3c09e4c52833e548', 'test2@gmail.com', '2023-12-30 16:37:54', 0),
(15, '3c4154a6133fdf8c8733b0eb6001403d48a55d922130d300faaa2263cd9ffd98', 'test4@gmail.com', '2023-12-30 16:54:37', 0),
(16, 'a4c83603764379a169c30772cae7428476d01670e4ee437403e289b81aa98403', 'test4@gmail.com', '2023-12-30 16:54:43', 0),
(17, '74a0c29e89af7d7346e54b6a23dd60a0feb983a0db4c11eae11062f14be7d093', 'test4@gmail.com', '2023-12-30 16:59:41', 0),
(18, '44371716074c44db5654cbb7bb11d98876d7844b601fb288ebed49603109bd65', 'test5@gmail.com', '2023-12-30 17:03:51', 1),
(19, 'e09024ba8b44e0205fb146caa2c0d87ef760e317074e24d265348cd97ca9cf23', 'test5@gmail.com', '2023-12-30 17:11:57', 1),
(20, 'f87e06d3071aa8d7d4ef3cb0d403c87702745bb30a8f76dc3741ed0bc294ce94', 'test5@gmail.com', '2023-12-30 17:13:28', 1),
(21, 'a4720e6063831a83c6ba0526a01d40ee1efe014338de95d4b4a6dd7d1b8cbe4f', 'a@gmail.com', '2023-12-30 17:18:24', 1),
(22, '74b46e3651bf0e0960a5a414447008d923fe4a75e755ee80f83bdea2a89a144b', 'a@gmail.com', '2023-12-30 17:31:29', 1);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_pre_user`
--
ALTER TABLE `gs_pre_user`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_pre_user`
--
ALTER TABLE `gs_pre_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
