-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 04 jun 2019 om 12:38
-- Serverversie: 10.1.35-MariaDB
-- PHP-versie: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eindwerk`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `artists`
--

CREATE TABLE `artists` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `artist_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `artists`
--

INSERT INTO `artists` (`id`, `created_at`, `updated_at`, `artist_name`) VALUES
(6, '2019-05-23 05:36:22', '2019-05-23 05:36:22', 'Red Hot Chili Peppers'),
(8, '2019-05-23 07:01:44', '2019-05-23 07:01:44', 'Nirvana'),
(10, '2019-05-23 07:02:48', '2019-05-23 07:02:48', 'Rise Against'),
(11, '2019-05-23 07:02:58', '2019-05-23 07:02:58', 'Rage Against The Machine'),
(12, '2019-05-23 07:03:06', '2019-05-23 07:03:06', 'Vulfpeck'),
(13, '2019-05-23 07:03:15', '2019-05-23 07:03:15', 'Enter Shikari'),
(14, '2019-05-23 07:03:26', '2019-05-23 07:03:26', 'Gary Clark Jr.'),
(15, '2019-05-23 07:03:47', '2019-05-23 07:03:47', 'Sum 41'),
(16, '2019-05-23 07:04:00', '2019-05-23 07:04:00', 'The Meters'),
(17, '2019-05-23 07:04:08', '2019-05-23 07:04:08', 'Neil Young'),
(18, '2019-05-23 07:04:39', '2019-05-23 07:04:39', 'Green Day'),
(19, '2019-05-23 07:04:55', '2019-05-23 07:04:55', 'John Mayer'),
(20, '2019-05-23 07:05:09', '2019-05-23 07:05:09', 'Guns \'n\' Roses'),
(21, '2019-05-23 07:05:31', '2019-05-23 07:05:31', 'Mushroom Molly'),
(22, '2019-05-23 07:05:39', '2019-05-23 07:05:39', 'Jimi Hendrix'),
(23, '2019-05-23 07:05:47', '2019-05-23 07:05:47', 'Arctic Monkeys'),
(24, '2019-05-23 07:06:04', '2019-05-23 07:06:04', 'Cage The Elephant'),
(25, '2019-05-23 07:06:10', '2019-05-23 07:06:10', 'The Strokes'),
(26, '2019-05-23 07:06:25', '2019-05-23 07:06:25', 'Pearl Jam'),
(27, '2019-05-23 07:06:34', '2019-05-23 07:06:34', 'Temple Of The Dog'),
(28, '2019-05-23 07:06:48', '2019-05-23 07:06:48', 'soundgarden'),
(29, '2019-05-23 07:07:07', '2019-05-23 07:07:07', 'Linkin Park'),
(30, '2019-05-23 07:07:23', '2019-05-23 07:07:23', 'Cory Wong'),
(31, '2019-05-23 07:07:30', '2019-05-23 07:07:30', 'Audioslave'),
(32, '2019-05-27 07:42:57', '2019-05-27 07:42:57', 'AC/DC'),
(33, '2019-05-27 07:43:06', '2019-05-27 07:43:06', 'Admiral Freebee'),
(34, '2019-05-27 07:43:18', '2019-05-27 07:43:18', 'Anderson .Paak'),
(35, '2019-05-27 07:43:28', '2019-05-27 07:43:28', 'Arcade Fire'),
(36, '2019-05-27 07:43:40', '2019-05-27 07:43:40', 'Biffy Clyro'),
(37, '2019-05-27 07:43:51', '2019-05-27 07:43:51', 'The Black Keys'),
(38, '2019-05-27 07:44:04', '2019-05-27 07:44:04', 'Bloc Party'),
(39, '2019-05-27 07:44:12', '2019-05-27 07:44:12', 'Bob Dylan'),
(40, '2019-05-27 07:44:23', '2019-05-27 07:44:23', 'Bob Marley'),
(41, '2019-05-27 07:44:32', '2019-05-27 07:44:32', 'Buddy Guy'),
(42, '2019-05-27 07:44:43', '2019-05-27 07:44:43', 'Chris Cornell'),
(43, '2019-05-27 07:44:55', '2019-05-27 07:44:55', 'Coldplay'),
(44, '2019-05-27 07:45:04', '2019-05-27 07:45:04', 'Dave Grohl'),
(45, '2019-05-27 07:45:13', '2019-05-27 07:45:13', 'Dinosaur Jr.'),
(46, '2019-05-27 07:46:20', '2019-05-27 07:46:20', 'Dropkick Murphys'),
(47, '2019-05-27 07:46:27', '2019-05-27 07:46:27', 'Eddie Vedder'),
(48, '2019-05-27 07:46:34', '2019-05-27 07:46:34', 'Eels'),
(49, '2019-05-27 07:46:47', '2019-05-27 07:46:47', 'Fleedwood Mac'),
(50, '2019-05-27 07:46:56', '2019-05-27 07:46:56', 'Foo Fighters'),
(51, '2019-05-27 07:47:11', '2019-05-27 07:47:11', 'Frank Carter and the Rattlesnakes'),
(52, '2019-05-27 07:47:22', '2019-05-27 07:47:22', 'Gorki'),
(53, '2019-05-27 07:47:29', '2019-05-27 07:47:29', 'Jack White'),
(54, '2019-05-27 07:47:39', '2019-05-27 07:47:39', 'The Kooks'),
(55, '2019-05-27 07:47:48', '2019-05-27 07:47:48', 'Led Zeppelin'),
(56, '2019-05-27 07:47:54', '2019-05-27 07:47:54', 'Live'),
(57, '2019-05-27 07:48:03', '2019-05-27 07:48:03', 'Mumford & Sons'),
(58, '2019-05-27 07:48:14', '2019-05-27 07:48:14', 'Muse'),
(59, '2019-05-27 07:48:21', '2019-05-27 07:48:21', 'Oasis'),
(60, '2019-05-27 07:48:30', '2019-05-27 07:48:30', 'The Offspring'),
(61, '2019-05-27 07:48:39', '2019-05-27 07:48:39', 'Placebo'),
(62, '2019-05-27 07:48:51', '2019-05-27 07:48:51', 'Queens of the Stone Age'),
(63, '2019-05-27 07:48:59', '2019-05-27 07:48:59', 'Radiohead'),
(64, '2019-05-27 07:49:09', '2019-05-27 07:49:09', 'Rayland Baxter'),
(65, '2019-05-27 07:49:18', '2019-05-27 07:49:18', 'R.E.M.'),
(66, '2019-05-27 07:49:29', '2019-05-27 07:49:29', 'Royal Blood'),
(67, '2019-05-27 07:49:38', '2019-05-27 07:49:38', 'Soulwax'),
(68, '2019-05-27 07:49:51', '2019-05-27 07:49:51', 'Smashing Pumpkins'),
(69, '2019-05-27 07:50:00', '2019-05-27 07:50:00', 'Stevie Ray Vaughan'),
(70, '2019-05-27 07:50:07', '2019-05-27 07:50:07', 'Sticky Fingers'),
(71, '2019-05-27 07:50:15', '2019-05-27 07:50:15', 'The Subways'),
(72, '2019-05-27 07:50:37', '2019-05-27 07:50:37', 'VANT'),
(73, '2019-06-03 07:53:20', '2019-06-03 07:53:20', 'Josh Turner'),
(74, '2019-06-03 08:58:58', '2019-06-03 08:58:58', 'Willie nelson');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `comments`
--

INSERT INTO `comments` (`id`, `created_at`, `updated_at`, `song_id`, `user_id`, `content`) VALUES
(17, '2019-05-22 08:00:00', '2019-05-23 05:45:31', 1, 4, 'Seems Correct'),
(18, '2019-06-03 21:11:00', '2019-06-03 21:11:39', 1, 1, 'Fuzz is definitly wrong'),
(19, '2019-06-03 23:15:39', '2019-06-03 23:15:39', 1, 1, 'hello there');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 1, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(56, 7, 'id', 'text', 'Id', 1, 0, 1, 0, 0, 0, '{}', 1),
(57, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(58, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(61, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(62, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 2),
(63, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(64, 8, 'song_id', 'number', 'Song ID', 0, 1, 1, 1, 1, 1, '{}', 11),
(65, 8, 'user_id', 'number', 'User ID', 0, 1, 1, 1, 1, 1, '{}', 9),
(68, 8, 'content', 'text', 'Content', 0, 1, 1, 1, 1, 1, '{}', 6),
(70, 12, 'id', 'text', 'Id', 1, 0, 1, 0, 0, 0, '{}', 1),
(71, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(72, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(73, 12, 'artist_id', 'text', 'Artist ID', 0, 1, 1, 1, 1, 1, '{}', 6),
(74, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(75, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(76, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(77, 17, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, '{}', 4),
(78, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(79, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(80, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(81, 18, 'song_id', 'text', 'Song ID', 0, 1, 1, 1, 1, 1, '{}', 9),
(82, 18, 'effect_id', 'text', 'Effect ID', 0, 1, 1, 1, 1, 1, '{}', 5),
(93, 8, 'comment_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"artists\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(96, 7, 'artist_name', 'text', 'Artist Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(97, 7, 'artist_picture', 'image', 'Artist Picture', 0, 1, 1, 1, 0, 1, '{}', 5),
(98, 12, 'song_belongsto_song_relationship', 'relationship', 'Artists', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Artist\",\"table\":\"artists\",\"type\":\"belongsTo\",\"column\":\"artist_id\",\"key\":\"id\",\"label\":\"artist_name\",\"pivot_table\":\"artists\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(99, 12, 'song_name', 'text', 'Song Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(100, 8, 'comment_belongsto_song_relationship', 'relationship', 'songs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Song\",\"table\":\"songs\",\"type\":\"belongsTo\",\"column\":\"song_id\",\"key\":\"id\",\"label\":\"song_name\",\"pivot_table\":\"artists\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(103, 18, 'song_effect_belongsto_effect_relationship', 'relationship', 'effects', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Effect\",\"table\":\"effects\",\"type\":\"belongsTo\",\"column\":\"effect_id\",\"key\":\"id\",\"label\":\"type\",\"pivot_table\":\"artists\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(106, 18, 'song_effect_belongsto_song_relationship', 'relationship', 'songs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Song\",\"table\":\"songs\",\"type\":\"belongsTo\",\"column\":\"song_id\",\"key\":\"id\",\"label\":\"song_name\",\"pivot_table\":\"artists\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(107, 18, 'upvotes', 'text', 'Upvotes', 1, 1, 1, 1, 0, 1, '{}', 7),
(108, 18, 'downvotes', 'text', 'Downvotes', 1, 1, 1, 1, 0, 1, '{}', 8),
(109, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(110, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(111, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(112, 21, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(113, 21, 'song_id', 'text', 'Song Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(114, 21, 'favorite_belongsto_song_relationship', 'relationship', 'songs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Song\",\"table\":\"songs\",\"type\":\"belongsTo\",\"column\":\"song_id\",\"key\":\"id\",\"label\":\"song_name\",\"pivot_table\":\"artists\",\"pivot\":\"0\",\"taggable\":null}', 6),
(115, 21, 'favorite_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"artists\",\"pivot\":\"0\",\"taggable\":null}', 7),
(116, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(117, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(118, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(119, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(120, 22, 'song_effect_id', 'text', 'Song Effect Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(121, 22, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(123, 22, 'vote_belongsto_song_effect_relationship', 'relationship', 'song_effects', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\SongEffect\",\"table\":\"song_effects\",\"type\":\"belongsTo\",\"column\":\"song_effect_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"artists\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(124, 22, 'vote_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"artists\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(125, 22, 'vote', 'text', 'Vote', 0, 1, 1, 1, 1, 1, '{}', 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-05-16 05:44:53', '2019-05-31 15:29:35'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-05-16 05:44:53', '2019-05-16 05:44:53'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-05-16 05:44:53', '2019-05-16 05:44:53'),
(7, 'artists', 'artists', 'Artist', 'Artists', NULL, 'App\\Artist', NULL, NULL, 'Save artist name and picture', 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-05-16 07:12:02', '2019-05-27 11:20:00'),
(8, 'comments', 'comments', 'Comment', 'Comments', NULL, 'App\\Comment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-05-16 07:14:17', '2019-06-03 21:10:54'),
(12, 'songs', 'songs', 'Song', 'Songs', NULL, 'App\\Song', NULL, NULL, 'tabel om verschillende liedjes weer te geven', 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-05-16 07:18:31', '2019-05-27 11:22:32'),
(17, 'effects', 'effects', 'Effect', 'Effects', NULL, 'App\\Effect', NULL, NULL, 'tabel voor verschillende effecten', 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-05-16 07:42:50', '2019-05-23 06:10:08'),
(18, 'song_effects', 'song-effects', 'Song Effect', 'Song Effects', NULL, 'App\\SongEffect', NULL, NULL, 'Verbindings tabel songs en effecten', 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-05-16 07:44:36', '2019-05-23 06:20:48'),
(21, 'favorites', 'favorites', 'Favorite', 'Favorites', NULL, 'App\\Favorite', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-05-31 14:01:01', '2019-05-31 14:01:01'),
(22, 'votes', 'votes', 'Vote', 'Votes', NULL, 'App\\Vote', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-01 08:10:01', '2019-06-03 19:25:13');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `effects`
--

CREATE TABLE `effects` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `effects`
--

INSERT INTO `effects` (`id`, `created_at`, `updated_at`, `type`) VALUES
(1, '2019-05-23 05:59:00', '2019-05-23 06:01:13', 'Compressor'),
(2, '2019-05-23 06:12:25', '2019-05-23 06:12:25', 'Chorus'),
(3, '2019-05-23 06:12:31', '2019-05-23 06:12:31', 'Fuzz'),
(4, '2019-05-23 06:12:39', '2019-05-23 06:12:39', 'Distortion'),
(5, '2019-05-23 06:12:50', '2019-05-23 06:12:50', 'Overdrive'),
(6, '2019-05-23 06:12:59', '2019-05-23 06:12:59', 'Delay'),
(7, '2019-05-30 16:53:06', '2019-05-30 16:53:06', 'Whammy'),
(10, '2019-05-30 17:02:38', '2019-05-30 17:02:38', 'Reverb');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `favorites`
--

INSERT INTO `favorites` (`id`, `created_at`, `updated_at`, `user_id`, `song_id`) VALUES
(1, '2019-05-31 14:04:52', '2019-05-31 14:04:52', 4, 1),
(2, '2019-05-31 14:05:04', '2019-05-31 14:05:04', 4, 2),
(3, '2019-05-31 14:05:29', '2019-05-31 14:05:29', 1, 5),
(4, '2019-05-31 14:05:47', '2019-05-31 14:05:47', 1, 4),
(5, '2019-05-31 14:05:56', '2019-05-31 14:05:56', 1, 6),
(8, '2019-05-31 14:06:29', '2019-05-31 14:06:29', 1, 23),
(11, '2019-06-03 13:13:52', '2019-06-03 13:13:52', 1, 1),
(12, '2019-06-03 13:21:10', '2019-06-03 13:21:10', 1, 39),
(13, '2019-06-03 14:33:31', '2019-06-03 14:33:31', 1, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-05-16 05:44:55', '2019-05-16 05:44:55');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2019-05-16 05:44:55', '2019-05-16 10:20:52', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-05-16 05:44:55', '2019-05-16 05:44:55', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-05-16 05:44:55', '2019-05-16 05:44:55', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2019-05-16 05:44:56', '2019-05-16 10:20:55', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-05-16 05:44:56', '2019-05-16 10:20:52', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, NULL, 8, '2019-05-16 05:44:56', '2019-05-16 10:20:52', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 2, '2019-05-16 05:44:56', '2019-05-16 10:20:52', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, NULL, 9, '2019-05-16 05:44:56', '2019-05-16 10:20:55', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 11, '2019-05-16 05:44:56', '2019-05-16 10:20:55', 'voyager.settings.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 3, '2019-05-16 05:45:18', '2019-05-16 10:20:55', 'voyager.hooks', NULL),
(15, 1, 'Artists', '', '_self', NULL, NULL, NULL, 12, '2019-05-16 07:12:03', '2019-05-16 10:20:55', 'voyager.artists.index', NULL),
(16, 1, 'Comments', '', '_self', NULL, NULL, NULL, 13, '2019-05-16 07:14:17', '2019-05-16 10:20:55', 'voyager.comments.index', NULL),
(20, 1, 'Songs', '', '_self', NULL, NULL, NULL, 14, '2019-05-16 07:18:31', '2019-05-16 10:20:55', 'voyager.songs.index', NULL),
(23, 1, 'Effects', '', '_self', NULL, NULL, NULL, 15, '2019-05-16 07:42:50', '2019-05-16 10:20:55', 'voyager.effects.index', NULL),
(24, 1, 'Song Effects', '', '_self', NULL, NULL, NULL, 16, '2019-05-16 07:44:36', '2019-05-16 10:20:55', 'voyager.song-effects.index', NULL),
(25, 1, 'Favorites', '', '_self', NULL, NULL, NULL, 17, '2019-05-31 14:01:01', '2019-05-31 14:01:01', 'voyager.favorites.index', NULL),
(26, 1, 'Votes', '', '_self', NULL, NULL, NULL, 18, '2019-06-01 08:10:01', '2019-06-01 08:10:01', 'voyager.votes.index', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('meertenseppe@gmail.com', '$2y$10$y05Hlu3Oa.3seyNqTs2.luKfs/sx98F.XdjRnB3aJAT.bkDNNuPMm', '2019-06-02 10:15:06');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-05-16 05:44:57', '2019-05-16 05:44:57'),
(2, 'browse_bread', NULL, '2019-05-16 05:44:57', '2019-05-16 05:44:57'),
(3, 'browse_database', NULL, '2019-05-16 05:44:57', '2019-05-16 05:44:57'),
(4, 'browse_media', NULL, '2019-05-16 05:44:57', '2019-05-16 05:44:57'),
(5, 'browse_compass', NULL, '2019-05-16 05:44:57', '2019-05-16 05:44:57'),
(6, 'browse_menus', 'menus', '2019-05-16 05:44:57', '2019-05-16 05:44:57'),
(7, 'read_menus', 'menus', '2019-05-16 05:44:57', '2019-05-16 05:44:57'),
(8, 'edit_menus', 'menus', '2019-05-16 05:44:57', '2019-05-16 05:44:57'),
(9, 'add_menus', 'menus', '2019-05-16 05:44:57', '2019-05-16 05:44:57'),
(10, 'delete_menus', 'menus', '2019-05-16 05:44:57', '2019-05-16 05:44:57'),
(11, 'browse_roles', 'roles', '2019-05-16 05:44:57', '2019-05-16 05:44:57'),
(12, 'read_roles', 'roles', '2019-05-16 05:44:58', '2019-05-16 05:44:58'),
(13, 'edit_roles', 'roles', '2019-05-16 05:44:58', '2019-05-16 05:44:58'),
(14, 'add_roles', 'roles', '2019-05-16 05:44:58', '2019-05-16 05:44:58'),
(15, 'delete_roles', 'roles', '2019-05-16 05:44:58', '2019-05-16 05:44:58'),
(16, 'browse_users', 'users', '2019-05-16 05:44:58', '2019-05-16 05:44:58'),
(17, 'read_users', 'users', '2019-05-16 05:44:58', '2019-05-16 05:44:58'),
(18, 'edit_users', 'users', '2019-05-16 05:44:58', '2019-05-16 05:44:58'),
(19, 'add_users', 'users', '2019-05-16 05:44:58', '2019-05-16 05:44:58'),
(20, 'delete_users', 'users', '2019-05-16 05:44:58', '2019-05-16 05:44:58'),
(21, 'browse_settings', 'settings', '2019-05-16 05:44:58', '2019-05-16 05:44:58'),
(22, 'read_settings', 'settings', '2019-05-16 05:44:58', '2019-05-16 05:44:58'),
(23, 'edit_settings', 'settings', '2019-05-16 05:44:58', '2019-05-16 05:44:58'),
(24, 'add_settings', 'settings', '2019-05-16 05:44:58', '2019-05-16 05:44:58'),
(25, 'delete_settings', 'settings', '2019-05-16 05:44:58', '2019-05-16 05:44:58'),
(41, 'browse_hooks', NULL, '2019-05-16 05:45:18', '2019-05-16 05:45:18'),
(42, 'browse_artists', 'artists', '2019-05-16 07:12:03', '2019-05-16 07:12:03'),
(43, 'read_artists', 'artists', '2019-05-16 07:12:03', '2019-05-16 07:12:03'),
(44, 'edit_artists', 'artists', '2019-05-16 07:12:03', '2019-05-16 07:12:03'),
(45, 'add_artists', 'artists', '2019-05-16 07:12:03', '2019-05-16 07:12:03'),
(46, 'delete_artists', 'artists', '2019-05-16 07:12:03', '2019-05-16 07:12:03'),
(47, 'browse_comments', 'comments', '2019-05-16 07:14:17', '2019-05-16 07:14:17'),
(48, 'read_comments', 'comments', '2019-05-16 07:14:17', '2019-05-16 07:14:17'),
(49, 'edit_comments', 'comments', '2019-05-16 07:14:17', '2019-05-16 07:14:17'),
(50, 'add_comments', 'comments', '2019-05-16 07:14:17', '2019-05-16 07:14:17'),
(51, 'delete_comments', 'comments', '2019-05-16 07:14:17', '2019-05-16 07:14:17'),
(67, 'browse_songs', 'songs', '2019-05-16 07:18:31', '2019-05-16 07:18:31'),
(68, 'read_songs', 'songs', '2019-05-16 07:18:31', '2019-05-16 07:18:31'),
(69, 'edit_songs', 'songs', '2019-05-16 07:18:31', '2019-05-16 07:18:31'),
(70, 'add_songs', 'songs', '2019-05-16 07:18:31', '2019-05-16 07:18:31'),
(71, 'delete_songs', 'songs', '2019-05-16 07:18:31', '2019-05-16 07:18:31'),
(82, 'browse_effects', 'effects', '2019-05-16 07:42:50', '2019-05-16 07:42:50'),
(83, 'read_effects', 'effects', '2019-05-16 07:42:50', '2019-05-16 07:42:50'),
(84, 'edit_effects', 'effects', '2019-05-16 07:42:50', '2019-05-16 07:42:50'),
(85, 'add_effects', 'effects', '2019-05-16 07:42:50', '2019-05-16 07:42:50'),
(86, 'delete_effects', 'effects', '2019-05-16 07:42:50', '2019-05-16 07:42:50'),
(87, 'browse_song_effects', 'song_effects', '2019-05-16 07:44:36', '2019-05-16 07:44:36'),
(88, 'read_song_effects', 'song_effects', '2019-05-16 07:44:36', '2019-05-16 07:44:36'),
(89, 'edit_song_effects', 'song_effects', '2019-05-16 07:44:36', '2019-05-16 07:44:36'),
(90, 'add_song_effects', 'song_effects', '2019-05-16 07:44:36', '2019-05-16 07:44:36'),
(91, 'delete_song_effects', 'song_effects', '2019-05-16 07:44:36', '2019-05-16 07:44:36'),
(92, 'browse_favorites', 'favorites', '2019-05-31 14:01:01', '2019-05-31 14:01:01'),
(93, 'read_favorites', 'favorites', '2019-05-31 14:01:01', '2019-05-31 14:01:01'),
(94, 'edit_favorites', 'favorites', '2019-05-31 14:01:01', '2019-05-31 14:01:01'),
(95, 'add_favorites', 'favorites', '2019-05-31 14:01:01', '2019-05-31 14:01:01'),
(96, 'delete_favorites', 'favorites', '2019-05-31 14:01:01', '2019-05-31 14:01:01'),
(97, 'browse_votes', 'votes', '2019-06-01 08:10:01', '2019-06-01 08:10:01'),
(98, 'read_votes', 'votes', '2019-06-01 08:10:01', '2019-06-01 08:10:01'),
(99, 'edit_votes', 'votes', '2019-06-01 08:10:01', '2019-06-01 08:10:01'),
(100, 'add_votes', 'votes', '2019-06-01 08:10:01', '2019-06-01 08:10:01'),
(101, 'delete_votes', 'votes', '2019-06-01 08:10:01', '2019-06-01 08:10:01');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-05-16 05:44:56', '2019-05-16 05:44:56'),
(2, 'user', 'Normal User', '2019-05-16 05:44:56', '2019-05-16 05:44:56');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'FXfinder', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Find wich guitar effects to use on your favorite songs.', '', 'text', 2, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\June2019\\4HXFrAiDN6ws7JyfolEI.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'FXfinder', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'FXfinder AdminPanel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `songs`
--

CREATE TABLE `songs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `song_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `songs`
--

INSERT INTO `songs` (`id`, `created_at`, `updated_at`, `artist_id`, `song_name`) VALUES
(1, '2019-05-23 05:39:42', '2019-05-23 05:39:42', 6, 'Under The Bridge'),
(2, '2019-05-23 07:07:52', '2019-05-23 07:07:52', 8, 'Smells Like Teen Spirit'),
(3, '2019-05-23 07:08:17', '2019-05-23 07:08:17', 6, 'scar tisue'),
(4, '2019-05-23 07:08:35', '2019-05-23 07:08:35', 11, 'Mic check'),
(5, '2019-05-23 07:08:58', '2019-05-23 07:08:58', 30, 'Juke on Jelly'),
(6, '2019-05-23 07:09:07', '2019-05-23 07:09:07', 12, 'Funky Duck'),
(7, '2019-05-23 07:09:23', '2019-05-23 07:09:23', 15, 'Fat Lip'),
(8, '2019-05-23 07:09:54', '2019-05-23 07:09:54', 23, 'R U Mine'),
(9, '2019-05-23 07:10:07', '2019-05-23 07:10:07', 21, 'Pretty Boy'),
(10, '2019-05-23 07:10:21', '2019-05-23 07:10:21', 6, 'Zephyr Song'),
(11, '2019-05-23 07:10:46', '2019-05-23 07:10:46', 6, 'Goodbye Angels'),
(12, '2019-05-23 07:11:02', '2019-05-23 07:11:02', 18, 'American Idiot'),
(13, '2019-05-23 07:11:28', '2019-05-23 07:11:28', 24, 'One Ear'),
(14, '2019-05-23 07:11:47', '2019-05-23 07:11:47', 24, 'Aint No Rest For The Wicked'),
(15, '2019-05-23 07:12:33', '2019-05-23 07:12:33', 23, 'Brianstorm'),
(16, '2019-05-23 07:12:45', '2019-05-23 07:12:45', 8, 'Come As You Are'),
(17, '2019-05-23 07:13:27', '2019-05-23 07:13:27', 10, 'Swing Life Away'),
(18, '2019-05-23 07:14:13', '2019-05-23 07:14:13', 6, 'Don\'t Forget Me'),
(19, '2019-05-23 07:14:43', '2019-05-23 07:14:43', 14, 'When My Train Pulls In'),
(20, '2019-05-27 11:34:59', '2019-05-27 11:34:59', 6, 'Breaking the Girl'),
(21, '2019-05-27 11:35:11', '2019-05-27 11:35:11', 6, 'Funky Monks'),
(22, '2019-05-27 11:36:42', '2019-05-27 11:36:42', 6, 'Give It Away'),
(23, '2019-05-27 11:36:56', '2019-05-27 11:36:56', 6, 'I Could Have Lied'),
(24, '2019-05-27 11:37:12', '2019-05-27 11:37:12', 6, 'If You Have To Ask'),
(25, '2019-05-27 11:37:31', '2019-05-27 11:37:31', 6, 'Mellowship SLinky in B major'),
(26, '2019-05-27 11:37:48', '2019-05-27 11:37:48', 6, 'My Lovely Man'),
(27, '2019-05-27 11:38:16', '2019-05-27 11:38:16', 6, 'Aeroplane'),
(28, '2019-05-27 11:38:57', '2019-05-27 11:38:57', 6, 'Annie Wants A Baby'),
(29, '2019-05-27 11:39:11', '2019-05-27 11:39:11', 6, 'Around The World'),
(30, '2019-05-27 11:39:24', '2019-05-27 11:39:24', 6, 'Blood Sugar Sex Magik'),
(37, '2019-06-03 07:51:10', '2019-06-03 07:51:10', 32, 'Back In Black'),
(38, '2019-06-03 07:53:20', '2019-06-03 07:53:20', 73, 'Your Man'),
(39, '2019-06-03 08:56:11', '2019-06-03 08:56:11', 41, 'I was born to play guitar'),
(40, '2019-06-03 08:58:58', '2019-06-03 08:58:58', 74, 'On the road again');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `song_effects`
--

CREATE TABLE `song_effects` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL,
  `effect_id` int(11) DEFAULT NULL,
  `upvotes` int(11) NOT NULL DEFAULT '1',
  `downvotes` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `song_effects`
--

INSERT INTO `song_effects` (`id`, `created_at`, `updated_at`, `song_id`, `effect_id`, `upvotes`, `downvotes`) VALUES
(4, '2019-05-23 06:21:35', '2019-05-23 06:21:35', 1, 1, 1, 0),
(5, '2019-05-23 07:14:00', '2019-06-03 20:51:25', 1, 2, 13, 2),
(6, '2019-05-23 07:15:08', '2019-05-23 07:15:08', 2, 4, 1, 0),
(7, '2019-05-23 07:15:31', '2019-05-23 07:15:31', 2, 2, 1, 0),
(8, '2019-05-23 07:15:55', '2019-05-23 07:15:55', 18, 6, 1, 0),
(13, '2019-05-30 17:02:00', '2019-06-03 20:54:03', 1, 3, 1, 10),
(14, '2019-05-30 17:02:00', '2019-06-03 10:59:40', 1, 10, 45, 8),
(15, '2019-05-31 17:02:50', '2019-05-31 17:02:50', 19, 3, 1, 0),
(16, '2019-05-31 17:02:56', '2019-05-31 17:02:56', 19, 4, 1, 0),
(17, '2019-05-31 17:03:00', '2019-05-31 17:03:00', 19, 10, 1, 0),
(19, '2019-06-03 07:51:17', '2019-06-03 07:51:17', 37, 4, 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', '/users/admin_1559318096.jpg', '2019-05-23 06:31:04', '$2y$10$7sC7k4WgAECjrchJXdRPJeLxSRwl84Feaaf5Z1vDNaCrhli88SDBm', 'MTgMDgCoHOQLMepT2hNaZTXLwTNpGvPn9RrWJjdYzdKFtGtlx0OWDliKvlhZ', '{\"locale\":\"en\"}', '2019-05-16 05:45:10', '2019-05-31 13:54:56'),
(4, 2, 'Seppe Meerten', 'meertenseppe@gmail.com', 'users\\May2019\\R6OmZOoBTCkEhpXLEGuV.jpg', '2019-05-21 07:21:06', '$2y$10$WkdRRyBv6zRbvdgtDBsLyuKoeD6O9tO7bSO6KvOE0XLualKdYBnyK', 'pFzwymcyYbQc7zVv5Ep2ObCap7h7dVToijxB9EGSRYiEPi9sURT4Eme8hbAd', '{\"locale\":\"en\"}', '2019-05-21 07:19:30', '2019-05-31 10:50:03'),
(5, 2, 'test', 'test@test.com', '/users/test_1559387411.jpg', '2019-06-01 09:05:13', '$2y$10$sl9G8wGMpe1CtvyMhzOK7O3gO.TEx3tfrDccFkqSep5E8VUOhKKTi', NULL, NULL, '2019-06-01 09:04:50', '2019-06-01 09:10:11');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `votes`
--

CREATE TABLE `votes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `song_effect_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vote` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `votes`
--

INSERT INTO `votes` (`id`, `created_at`, `updated_at`, `song_effect_id`, `user_id`, `vote`) VALUES
(3, '2019-06-03 19:25:28', '2019-06-03 19:25:28', 4, 1, 1),
(7, '2019-06-03 20:54:03', '2019-06-03 20:54:03', 13, 1, 0),
(8, '2019-06-03 21:05:16', '2019-06-03 21:05:16', 22, 1, 1);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexen voor tabel `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexen voor tabel `effects`
--
ALTER TABLE `effects`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexen voor tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexen voor tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexen voor tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexen voor tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexen voor tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexen voor tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexen voor tabel `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `song_effects`
--
ALTER TABLE `song_effects`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexen voor tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexen voor tabel `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT voor een tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT voor een tabel `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT voor een tabel `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT voor een tabel `effects`
--
ALTER TABLE `effects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT voor een tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT voor een tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT voor een tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT voor een tabel `song_effects`
--
ALTER TABLE `song_effects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Beperkingen voor tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
