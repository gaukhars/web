-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 20 2016 г., 15:10
-- Версия сервера: 5.5.39
-- Версия PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `final`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`comment_id` int(11) NOT NULL,
  `login` text NOT NULL,
  `comment` text NOT NULL,
  `film_id` int(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`comment_id`, `login`, `comment`, `film_id`, `date`) VALUES
(1, 'gabbi@gmail.com', 'It is a cool movie, I always watch this movie. I recommend it to you!', 1, '2016-05-17 18:04:47'),
(4, 'meruyert.slamova@is.sdu.edu.kz', 'That is very interesting film I was fascinated)', 1, '2016-05-17 18:13:53'),
(5, 'gaukhar.slamova@is.sdu.edu.kz', 'Hello, I am writing comment) Watch this movie', 2, '2016-05-17 18:15:58');

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE IF NOT EXISTS `country` (
`coun_id` int(11) NOT NULL,
  `coun_title` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `country`
--

INSERT INTO `country` (`coun_id`, `coun_title`) VALUES
(1, 'USA'),
(2, 'Russia'),
(3, 'India'),
(4, 'Korea');

-- --------------------------------------------------------

--
-- Структура таблицы `genre`
--

CREATE TABLE IF NOT EXISTS `genre` (
`genre_id` int(11) NOT NULL,
  `genre_title` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_title`) VALUES
(1, 'Action'),
(2, 'Drama'),
(3, 'Adventure'),
(4, 'Comedy'),
(5, 'Fantasy'),
(6, 'Romance');

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

CREATE TABLE IF NOT EXISTS `message` (
`id` int(11) NOT NULL,
  `email` text NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `message`
--

INSERT INTO `message` (`id`, `email`, `title`, `message`) VALUES
(1, 'gabbi@gmail.com', 'Hello', 'WOOOW'),
(2, 'gabbi@gmail.com', 'Hello', 'WOOOOW');

-- --------------------------------------------------------

--
-- Структура таблицы `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
`movie_id` int(11) NOT NULL,
  `movie_year` year(4) NOT NULL,
  `movie_country` text NOT NULL,
  `movie_title` text NOT NULL,
  `movie_image` text NOT NULL,
  `movie_video` text NOT NULL,
  `movie_type` text NOT NULL,
  `movie_desc` text NOT NULL,
  `movie_genre` text NOT NULL,
  `movie_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `movie`
--

INSERT INTO `movie` (`movie_id`, `movie_year`, `movie_country`, `movie_title`, `movie_image`, `movie_video`, `movie_type`, `movie_desc`, `movie_genre`, `movie_date`) VALUES
(1, 2006, 'USA', 'Captain America', 'captain.png', 'Nikki_Rumney_-_15sec.mp4', 'video/mp4', 'With many people fearing the actions of super heroes, the government decides to push for the Anti-Hero Registration Act, a law that limits a heroes actions. This results in a division in The Avengers. Iron Man stands with this Act, claiming that their actions must be kept in check otherwise cities will continue to be destroyed, but Captain America feels that saving the world is daring enough and that they cannot rely on the government to protect the world. This escalates into an all-out war between Team Iron Man (Iron Man, Black Panther, Vision, Black Widow, War Machine, and Spiderman) and Team Captain America (Captain America, Bucky Barnes, Falcon, Sharon Carter, Scarlett Witch, Hawkeye, and Ant Man) while a new villain emerges', '1', '2016-05-18 06:57:57'),
(3, 1990, 'USA', 'Avengers', 'NewAvengers.jpg', '[Dubstep]_Intro_Music_-_---_20sec_---_-.mp4', 'video/mp4', '<p>Hello just</p>', '3', '2016-05-18 07:04:35');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `username` text NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` int(11) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `username`, `login`, `password`, `type`, `email`) VALUES
(1, 'Gaukhar', 'Gabbi', 'gabbi', 1, 'gaukhar.slamova@is.sdu.edu.kz'),
(2, 'Meruyert Slamova', 'mslamova', 'slamova98', 0, 'meruyert.slamova@is.sdu.edu.kz'),
(3, 'Admin', 'admin', 'admin', 1, 'admin@gmail.com'),
(4, 'Gaukhar Slamova', 'gaukhar', 'gaukhar', 0, 'gaukhars@gmail.com'),
(5, 'Gabbi', 'Gabbi', 'gabbi', 0, 'gabbi@gmail.com'),
(7, 'few', 'cdse', 'fa', 0, 'meruyert.slamova@is.sdu.edu.kz'),
(9, 'fqeqe', 'wevace', 'faeea', 0, 'gabbi@gmail.com'),
(10, 'hello', 'hello', 'hello', 0, 'hello@mail.ru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
 ADD PRIMARY KEY (`coun_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
 ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
 ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
MODIFY `coun_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
