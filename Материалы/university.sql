-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Янв 28 2017 г., 09:09
-- Версия сервера: 5.6.21
-- Версия PHP: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `university`
--

-- --------------------------------------------------------

--
-- Структура таблицы `archiveds`
--

CREATE TABLE IF NOT EXISTS `archiveds` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `archiveds`
--

INSERT INTO `archiveds` (`id`, `name`) VALUES
(0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `contracts`
--

CREATE TABLE IF NOT EXISTS `contracts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `long_name` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL,
  `stud_id` int(11) NOT NULL,
  `archived_id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `course` int(11) NOT NULL,
  `semestr` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `studyform_id` int(11) NOT NULL,
  `s_year` int(11) NOT NULL,
  `spec_id` int(11) NOT NULL,
  `ak_dolg` tinyint(4) NOT NULL,
  `date_create` datetime NOT NULL,
  `subgroup` int(11) NOT NULL,
  `n_zach` tinyint(4) NOT NULL,
  `n_kurs` tinyint(4) NOT NULL,
  `n_exam` tinyint(4) NOT NULL,
  `e_3` tinyint(4) NOT NULL,
  `e_4` tinyint(4) NOT NULL,
  `e_5` tinyint(4) NOT NULL,
  `n_y` tinyint(4) NOT NULL,
  `n_yup` tinyint(4) NOT NULL,
  `stipendia` int(11) NOT NULL,
  `date_end` date NOT NULL,
  `k_3` tinyint(4) NOT NULL,
  `k_4` tinyint(4) NOT NULL,
  `k_5` tinyint(4) NOT NULL,
  `date_grafic` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `faculties`
--

CREATE TABLE IF NOT EXISTS `faculties` (
  `id` int(11) NOT NULL,
  `short_name` varchar(25) COLLATE utf8_bin NOT NULL,
  `name` varchar(250) COLLATE utf8_bin NOT NULL,
  `cheef_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `cheef_dolzn` varchar(100) COLLATE utf8_bin NOT NULL,
  `active` int(11) NOT NULL,
  `umu_id` int(11) NOT NULL,
  `filial_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `grants_types`
--

CREATE TABLE IF NOT EXISTS `grants_types` (
  `id` int(11) NOT NULL,
  `order_type` int(11) NOT NULL,
  `construction_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `grant_values`
--

CREATE TABLE IF NOT EXISTS `grant_values` (
  `id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `gtype_id` int(11) NOT NULL,
  `gvalue` decimal(10,0) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `date_add` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `lgots`
--

CREATE TABLE IF NOT EXISTS `lgots` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `lgot_soot`
--

CREATE TABLE IF NOT EXISTS `lgot_soot` (
  `id` int(11) NOT NULL,
  `stud_id` int(11) NOT NULL,
  `abit_id` int(11) NOT NULL,
  `doc_lgot` varchar(250) COLLATE utf8_bin NOT NULL,
  `lgot_vid_id` int(11) NOT NULL,
  `lgot_num` varchar(50) COLLATE utf8_bin NOT NULL,
  `in_use` tinyint(4) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `date_add` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `lgot_vid_doc`
--

CREATE TABLE IF NOT EXISTS `lgot_vid_doc` (
  `id` int(11) NOT NULL,
  `lgot_id` int(11) NOT NULL,
  `doc_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `gtype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `sex`
--

CREATE TABLE IF NOT EXISTS `sex` (
  `id` int(11) NOT NULL,
  `name` varchar(12) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `specialities`
--

CREATE TABLE IF NOT EXISTS `specialities` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `fac_id` int(11) NOT NULL,
  `kaf_id` int(11) NOT NULL,
  `abit_spec_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `short_name` varchar(15) COLLATE utf8_bin NOT NULL,
  `kod_spec` varchar(20) COLLATE utf8_bin NOT NULL,
  `generation` decimal(10,0) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `name` varchar(250) COLLATE utf8_bin NOT NULL,
  `msk_name` varchar(250) COLLATE utf8_bin NOT NULL,
  `msk_kod_spec` varchar(20) COLLATE utf8_bin NOT NULL,
  `umu_id` int(11) NOT NULL,
  `kvalify_id` int(11) NOT NULL,
  `edu_level_id` int(11) NOT NULL,
  `fgos_id` int(11) NOT NULL,
  `name_template` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_tag` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `studyforms`
--

CREATE TABLE IF NOT EXISTS `studyforms` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `c_year` int(11) NOT NULL,
  `edu_level_id` int(11) NOT NULL,
  `edu_form_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `stud_grants`
--

CREATE TABLE IF NOT EXISTS `stud_grants` (
  `id` int(11) NOT NULL,
  `stud_id` int(11) NOT NULL,
  `lgot_soot_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `gvalue_id` int(11) NOT NULL,
  `date_payment` date NOT NULL,
  `gvalue` decimal(10,0) NOT NULL,
  `active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `stud_groups`
--

CREATE TABLE IF NOT EXISTS `stud_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_bin NOT NULL,
  `archived_id` int(11) NOT NULL,
  `semestr` int(11) NOT NULL,
  `c_year` int(11) NOT NULL,
  `enteryear` int(11) NOT NULL,
  `spec_id` int(11) NOT NULL,
  `fac_id` int(11) NOT NULL,
  `edu_form_id` int(11) NOT NULL,
  `edu_level_id` int(11) NOT NULL,
  `studyform_id` int(11) NOT NULL,
  `is_filial` int(11) NOT NULL,
  `up_id` int(11) NOT NULL,
  `krsk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `archiveds`
--
ALTER TABLE `archiveds`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `courses`
--
ALTER TABLE `courses`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lgots`
--
ALTER TABLE `lgots`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `specialities`
--
ALTER TABLE `specialities`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `studyforms`
--
ALTER TABLE `studyforms`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `stud_groups`
--
ALTER TABLE `stud_groups`
 ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
