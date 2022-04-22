-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 22 2022 г., 13:10
-- Версия сервера: 10.4.19-MariaDB
-- Версия PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `news`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(256) NOT NULL,
  `admORuser` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `admORuser`) VALUES
(2, '123', '$2y$10$r9lhIo0OpImofUGmhvpe/.uiNNRgtTqk94BgalAXW182OOLfKHso.', 'AAA'),
(3, 'qweqwe', '$2y$10$d0RE0IpdiATsbnVajXEuQ.pBg5I0yqE0AkTuhtVT.ta/uhPGrlmjC', 'AA'),
(4, '123123123', '$2y$10$/qelcVBldVNtb245Qipg9.9g0x18tD90kWeoMRpkAyUvMp7HpyTca', 'A'),
(5, 'admin', '$2y$10$TKLqzHY43a2u35ezJvFWE./C9.pB8u3jJy3TWJu3ZNHwpbLODCGbS', 'AAA');

-- --------------------------------------------------------

--
-- Структура таблицы `newss`
--

CREATE TABLE `newss` (
  `id` int(11) NOT NULL,
  `Theme` text NOT NULL,
  `Text` text NOT NULL,
  `Photo` varchar(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `newss`
--

INSERT INTO `newss` (`id`, `Theme`, `Text`, `Photo`, `date`) VALUES
(0, 'Школа', '- осенние каникулы с 29 октября по 6 ноября 2020 года (9 дней);\r\n- зимние каникулы с 29 декабря 2021 г. по 8 января 2022 года (11 дней);\r\n- весенние каникулы с 24 марта по 2 апреля 2022 года (10 дней);\r\n- дополнительные каникулы для обучающихся 1 классов с 7 февраля по 13 февраля 2022 года.\r\n    Куда пойти?\r\n1.Московский планетарий\r\n2.Московский зоопарк\r\n3.Центр океанографии и морской биологии «Москвариум»', '250.jpg', '2021-10-02');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `newss`
--
ALTER TABLE `newss`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `newss`
--
ALTER TABLE `newss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
