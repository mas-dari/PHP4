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
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE `gs_an_table` (
  `id` int(6) NOT NULL,
  `name` varchar(11) NOT NULL,
  `mail` varchar(48) NOT NULL,
  `occupation` varchar(48) NOT NULL,
  `company` varchar(28) NOT NULL,
  `deadline` date NOT NULL,
  `memo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `mail`, `occupation`, `company`, `deadline`, `memo`) VALUES
(1, 'テスト', 'テスト', 'テスト', 'テスト', '2023-12-28', 'テスト'),
(2, 'テスト', 'テスト', 'テスト', 'テスト', '2023-12-28', 'テスト'),
(3, 'テスト', 'テスト', 'テスト', 'テスト', '2023-12-28', 'テスト'),
(4, 'テスト', 'テスト', 'テスト', 'テスト', '2023-12-28', 'テスト'),
(5, 'test', 'test', 'test', 'test', '2023-12-28', 'test'),
(6, 'test', 'テスト', '', '', '0000-00-00', ''),
(7, 'test', 'テスト', '', '', '0000-00-00', ''),
(8, 'test', 'テスト', '', '', '0000-00-00', ''),
(9, 'aaa', '', '', '', '2024-03-13', 'aaa'),
(10, '', '', '', '', '2023-11-28', ''),
(11, 'aaaaaa', '', '', '', '2023-11-18', ''),
(12, '更新　　田中太郎', 'mail', '営業', 'サンプル', '2023-12-30', 'メモ'),
(13, 'test', 'test@gmail.com', 'aa', 'aa', '2024-01-17', 'aa');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_an_table`
--
ALTER TABLE `gs_an_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_an_table`
--
ALTER TABLE `gs_an_table`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
