-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Ноя 16 2022 г., 15:22
-- Версия сервера: 10.4.25-MariaDB
-- Версия PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sql_injection`
--

-- --------------------------------------------------------

--
-- Структура таблицы `additional_info`
--

CREATE TABLE `additional_info` (
  `id` int(11) NOT NULL,
  `info` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `additional_info`
--

INSERT INTO `additional_info` (`id`, `info`) VALUES
(1, 'Devnet is the best subject'),
(2, 'We wanna 10 points for project)');

-- --------------------------------------------------------

--
-- Структура таблицы `offices`
--

CREATE TABLE `offices` (
  `id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `offices`
--

INSERT INTO `offices` (`id`, `city`, `address`, `phone`) VALUES
(1, 'Almaty', '285 Tole Bi Street ', '+7 705 200 20 22'),
(2, 'Kyzylorda', 'Zheltoksan Street, 7', '+7 700 666 72 22'),
(3, 'Astana', 'Khan Shatyr Street 273', '+7 777 007 40 33'),
(4, 'Oskemen', 'Kenesary Khan Street 56A', '+7 707 800 66 60'),
(5, 'Semey', 'Ave. 182B Seyfullina Ave.', '+7 705 235 45 55'),
(6, 'Aktau', '14/15 Zhunisova Street', '+7 777 998 34 56'),
(7, 'Aktobe', 'Mamyr-1 microdistrict 8A ', '+7 705 478 80 80');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(280) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '60f3439d7a1a53e777dd47464167f13f', '2022-11-15 20:03:55');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `additional_info`
--
ALTER TABLE `additional_info`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `additional_info`
--
ALTER TABLE `additional_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `offices`
--
ALTER TABLE `offices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
