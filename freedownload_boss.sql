-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 09, 2020 at 12:06 PM
-- Server version: 10.3.23-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freedownload_boss`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `image`, `created_at`, `updated_at`) VALUES
(1, 'City', 'images/category/c3.jpg', 'images/category/c3.jpg', '2020-01-20 00:11:35', '2020-01-20 00:11:35'),
(7, 'Nature', 'images/category/c8.jpg', 'images/category/c8.jpg', '2020-01-31 21:37:47', '2020-01-31 21:37:47'),
(8, 'Fusion', 'images/category/c7.jpg', 'images/category/c7.jpg', '2020-01-31 21:38:25', '2020-01-31 21:38:25'),
(9, 'Education', 'images/category/c6.jpg', 'images/category/c6.jpg', '2020-01-31 21:38:58', '2020-01-31 21:38:58'),
(10, 'Shopping', 'images/category/c5.jpg', 'images/category/c5.jpg', '2020-01-31 21:39:16', '2020-01-31 21:39:16'),
(12, 'Travailing', 'images/category/c1.jpeg', 'images/category/c1.jpeg', '2020-01-31 21:41:02', '2020-01-31 21:41:02'),
(13, 'Food', 'images/category/c4.jpg', 'images/category/c4.jpg', '2020-01-31 21:42:00', '2020-01-31 21:42:00'),
(15, 'Love/Breakup', 'images/category/photo-Love cetagris.jpg', 'images/category/photo-Love cetagris.jpg', '2020-05-28 07:32:51', '2020-05-28 07:32:51'),
(16, 'Animals/Rust', 'images/category/Untitled.jpg', 'images/category/Untitled.jpg', '2020-05-28 07:58:27', '2020-05-28 07:58:27'),
(18, 'People', 'images/category/People.jpg', 'images/category/People.jpg', '2020-05-28 08:11:54', '2020-05-28 08:11:54'),
(19, 'beauty/nature', 'images/category/beauty.nature.jpg', 'images/category/beauty.nature.jpg', '2020-05-28 08:26:26', '2020-05-28 08:26:26'),
(20, 'fishermen/Beautiful river', 'images/category/fishermen Beautiful river.jpg', 'images/category/fishermen Beautiful river.jpg', '2020-05-28 08:35:17', '2020-05-28 08:35:17'),
(21, 'Architecture / Buildings', 'images/category/Architecture  Buildings.jpg', 'images/category/Architecture  Buildings.jpg', '2020-05-28 08:48:08', '2020-05-28 08:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `followers` int(11) NOT NULL,
  `following` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `followers`, `following`, `created_at`, `updated_at`) VALUES
(2, 15, 2, NULL, NULL),
(3, 15, 17, NULL, NULL),
(5, 2, 17, NULL, NULL),
(6, 2, 15, NULL, NULL),
(7, 2, 20, NULL, NULL),
(8, 22, 2, NULL, NULL),
(11, 37, 2, NULL, NULL),
(13, 17, 2, NULL, NULL),
(17, 2, 20200415, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coin` int(10) NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `title`, `url`, `coin`, `icon`, `action`, `created_at`, `updated_at`) VALUES
(1, 'Like our facebook page', 'https://web.facebook.com/bmjnews24/?ref=bookmarks', 50, '', 'facebook page', NULL, NULL),
(2, 'Like our facebook page', 'https://web.facebook.com/%E0%A6%86%E0%A6%AC%E0%A7%8D%E0%A6%A6%E0%A7%81%E0%A6%B2-%E0%A6%86%E0%A6%9C%E0%A6%BF%E0%A6%9C-%E0%A6%B0%E0%A6%BF%E0%A6%AE%E0%A6%A8-126601895591142/?ref=bookmarks', 100, '', 'youtube', NULL, NULL),
(3, 'Subscribe Youtube Channel', 'https://www.youtube.com/channel/UCqFH5k4uBVijwMSCbApoiJQ?fbclid=IwAR1vL-4qgIjQT4LupqtwhuRAgXpSYWwLR3dfGTsqgGJIyJFagW2zrCeg5I8', 10, '', 'youtube', NULL, NULL),
(5, 'Subscribe Youtube Channel ', 'https://www.youtube.com/channel/UCyoqCYUCgo9Oma0XQVRWLNA?fbclid=IwAR2Lp2JNFjbN-dpGbJmCi2Em0REe-j_xy9TCVed3jBt7QQGdMkTBh7VGcuE', 100, '', 'youtube', NULL, NULL),
(6, 'Visit website ', 'www.freedownloadimage.com\r\n', 10, '', 'web', NULL, NULL),
(7, 'Share on whatsApp', 'https://play.google.com/store/apps/details?id=com.ringid.ring&hl=en', 0, '', 'whatsapp share', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `link_user`
--

CREATE TABLE `link_user` (
  `id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  `user_id` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_01_04_164641_create_settings_table', 2),
(5, '2020_01_06_170554_create_sliders_table', 3),
(6, '2020_01_14_164334_create_categories_table', 4),
(7, '2020_01_14_164657_create_points_table', 4),
(8, '2020_01_14_164847_create_photos_table', 4),
(9, '2020_01_14_165010_create_withdraws_table', 4),
(10, '2020_01_14_165042_create_links_table', 4),
(11, '2020_01_14_165415_create_profiles_table', 4),
(12, '2020_01_14_165446_create_promotions_table', 4),
(13, '2020_02_05_171112_create_followers_table', 5),
(14, '2020_06_17_102702_create_tags_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `banner`, `link`, `title`) VALUES
(1, 'images/logo/6.jpg', 'https://gplinks.in/st?api=5de188d82a70ba52f4605cefa1f9ef21b4b49667&url=yourdestinationlink.com', 'Sooryavanshi 2020 Hindi Movie Official Trailer 720p HDRip Free Download');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `title`, `photo`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 'Samsung', 'images/photo/p3.jpg', '2', '1', '2020-01-16 18:04:31', '2020-01-16 18:04:31'),
(4, 'Samsung', 'images/photo/p9.jpg', '2', '1', '2020-01-16 18:04:50', '2020-01-16 18:04:50'),
(5, 'phone', 'images/photo/p5.jpg', '2', '1', '2020-01-16 18:05:06', '2020-01-16 18:05:06'),
(6, 'Samsun phone', 'images/photo/night.jpg', '15', '1', '2020-01-16 18:05:27', '2020-01-16 18:05:27'),
(17, 'Iphone', 'images/photo/p9.jpg', '15', '1', '2020-01-19 22:40:02', '2020-01-19 22:40:02'),
(22, 'Samsung', 'images/photo/p2.jpg', '15', '1', '2020-02-01 22:08:56', '2020-02-01 22:08:56'),
(23, 'new product', 'images/photo/p4.jpg', '2', '1', '2020-02-01 23:53:29', '2020-02-01 23:53:29'),
(24, 'Iphone', 'images/photo/p1.jpg', '2', '1', '2020-02-02 00:02:25', '2020-02-02 00:02:25'),
(25, 'product', 'images/photo/p1.jpg', '2', '1', '2020-02-02 23:18:52', '2020-02-02 23:18:52'),
(26, 'HTC', 'images/photo/p8.jpg', '2', '1', '2020-02-02 23:19:13', '2020-02-02 23:19:13'),
(49, 'free download mon image', 'images/photo/IMG_20200211_092336.jpg', '22', '9', '2020-02-27 05:46:57', '2020-02-27 05:46:57'),
(88, '', 'images/photo/IMG_20200211_090902.jpg', '20200345', '0', '2020-03-26 00:00:24', NULL),
(89, '', 'images/photo/IMG_20200211_090956.jpg', '20200345', '0', '2020-03-26 00:00:41', NULL),
(90, '', 'images/photo/photo-1478759615268-c5668ad08e3f.jpeg', '20200345', '0', '2020-03-26 00:01:16', NULL),
(91, '', 'images/photo/IMG_20200211_085924.jpg', '20200345', '0', '2020-03-26 00:01:26', NULL),
(92, '', 'images/photo/IMG_20200211_092419.jpg', '20200345', '0', '2020-03-26 00:01:45', NULL),
(93, '', 'images/photo/photo-1487640228478-7a32e30a9e40.jpeg', '20200345', '0', '2020-03-26 00:01:55', NULL),
(94, '', 'images/photo/IMG_20200211_092336.jpg', '20200345', '0', '2020-03-26 00:02:09', NULL),
(95, '', 'images/photo/IMG_20200211_090112.jpg', '20200345', '0', '2020-03-26 00:02:23', NULL),
(96, '', 'images/photo/IMG_20200211_090647.jpg', '20200345', '0', '2020-03-26 00:02:33', NULL),
(97, '', 'images/photo/IMG_20200211_090753.jpg', '20200345', '0', '2020-03-26 00:02:49', NULL),
(98, '', 'images/photo/IMG_20200211_091329.jpg', '20200345', '0', '2020-03-26 00:03:01', NULL),
(99, '', 'images/photo/IMG_20200211_091039.jpg', '20200345', '0', '2020-03-26 00:04:02', NULL),
(100, 'Peak in the dark of night/ Lonely photo of Gabi night/ Photo of the night', 'images/photo/fantasy-2861107_960_720.jpg', '1', '7', '2020-03-26 11:15:09', '2020-03-26 11:15:09'),
(101, 'The blue sky of the sky/Photo of the sky / Photo of the color fall sky', 'images/photo/sky-690293_960_720.jpg', '1', '12', '2020-03-26 11:17:19', '2020-03-26 11:17:19'),
(102, 'Color Fall Follies/Blue butterfly/Photos of nature', 'images/photo/butterfly-2049567_960_720.jpg', '1', '8', '2020-03-26 11:40:47', '2020-03-26 11:40:47'),
(103, 'Photo standing under the sky/Photo of a bad boy/Very good photo', 'images/photo/cd-cover-4704809_960_720.jpg', '1', '8', '2020-03-26 11:42:01', '2020-03-26 11:42:01'),
(104, 'Awesome photo/Black Hacker Pick Peak of the Dark World', 'images/photo/fantasy-2847724_960_720.jpg', '1', '1', '2020-03-26 11:42:54', '2020-03-26 11:42:54'),
(105, 'Bast Photo', 'images/photo/IMG_20200211_091719.jpg', '20200345', '0', '2020-03-26 19:05:03', NULL),
(106, 'Empty road Road with hills. Black fur road. Free photo.', 'images/photo/4707345_960_720.jpg', '1', '12', '2020-03-28 02:15:20', '2020-03-28 02:15:20'),
(107, 'Blue sky/ How the sky looks like during development.', 'images/photo/andromeda-galaxy-755442_960_720.jpg', '1', '9', '2020-03-28 02:16:25', '2020-03-28 02:16:25'),
(108, 'Shower Photo. Free Download Shower Picture. Excellent fly pick four', 'images/photo/niagara-falls-218591_960_720.jpg', '1', '12', '2020-03-28 02:17:31', '2020-03-28 02:17:31'),
(109, 'Long road Nice road. Free download. Best photo', 'images/photo/r0d_960_720.jpg', '1', '14', '2020-03-28 02:18:27', '2020-03-28 02:18:27'),
(110, 'Afternoon sky Photo of the sun sinking sky. Free download sky photo', 'images/photo/Ued_3.jpg', '1', '9', '2020-03-28 02:20:07', '2020-03-28 02:20:07'),
(111, 'Photo of river with hill. Photo of high hill. Mountain photo download', 'images/photo/Unled_7.jpg', '1', '8', '2020-03-28 02:21:00', '2020-03-28 02:21:00'),
(112, 'Photo of Nature Environment. Free Download Photo. Free Download Sky Picture', 'images/photo/Untdfbitled_8.jpg', '1', '7', '2020-03-28 02:21:41', '2020-03-28 02:21:41'),
(113, 'Photo of stone. Photo of stone with water. Free download photo.', 'images/photo/Unti_4.jpg', '1', '14', '2020-03-28 02:22:32', '2020-03-28 02:22:32'),
(114, 'Blue stone. Free download stone photo. Photo of stone over the sea', 'images/photo/Untitl;;lgkled_6.jpg', '1', '9', '2020-03-28 02:23:21', '2020-03-28 02:23:21'),
(115, 'Black stone. Stone Mine. Free Download Stone Photo. Best stone photo', 'images/photo/Untitlfyukj.ed_5.jpg', '1', '7', '2020-03-28 02:24:10', '2020-03-28 02:24:10'),
(116, 'Peak standing alone. Peak standing under the sky. Your filling sky', 'images/photo/ntitled_2.jpg', '1', '14', '2020-03-28 07:57:46', '2020-03-28 07:57:46'),
(117, 'Road inside the hill. Photo of curved road. Download photo of the road', 'images/photo/RBTYNY.jpg', '1', '7', '2020-03-28 07:58:53', '2020-03-28 07:58:53'),
(118, 'Mountain photo download. Hills of green color. Download mountain photos', 'images/photo/Unted_3.jpg', '1', '8', '2020-03-28 08:00:52', '2020-03-28 08:00:52'),
(119, 'Jungle photos. Download photos in the jungle', 'images/photo/Untied_4.jpg', '1', '9', '2020-03-28 08:02:06', '2020-03-28 08:02:06'),
(120, 'Bad photo. Download a photo. Download photo', 'images/photo/Untied_5.jpg', '1', '9', '2020-03-28 08:02:59', '2020-03-28 08:02:59'),
(121, 'Moon Photo. Free Download Photo. Download Moon Photos.', 'images/photo/Untitld_1.jpg', '1', '7', '2020-03-28 08:05:55', '2020-03-28 08:05:55'),
(122, 'Beautiful photo Green nature photo. Download photos. Free download green nature photos', 'images/photo/Untitled.jpg', '1', '1', '2020-03-28 08:07:04', '2020-03-28 08:07:04'),
(123, 'Photo of the mountainous region. Download hill area photo. Free download photo', 'images/photo/Untitled_2.jpg', '1', '9', '2020-03-28 08:07:41', '2020-03-28 08:07:41'),
(124, 'Home by the sea. Red Lilymaar Photo Download. Free Download Photo', 'images/photo/UntitlGBTHHed_1.jpg', '1', '8', '2020-03-28 08:08:49', '2020-03-28 08:08:49'),
(125, 'Photo of the mountainous region. Download hill area photo. Free download pho', 'images/photo/Utitled_3.jpg', '1', '8', '2020-03-28 08:09:52', '2020-03-28 08:09:52'),
(126, 'flower ', 'images/photo/IMG_20200326_171109.jpg', '2', '0', '2020-04-09 18:22:22', NULL),
(127, 'Bad Boy à¥¤Free Download Photosà¥¤ Good Photos à¥¤Best Imageà¥¤', 'images/photo/Screenshot_2020-02-17-15-53-04-1.png', '20200448', '0', '2020-05-01 06:09:00', NULL),
(128, 'Afternoon skyà¥¤ Beautiful afternoon photo à¥¤ Free download photos à¥¤Bed boy', 'images/photo/Screenshot_2020-02-17-15-52-56-1.png', '20200448', '0', '2020-05-01 06:13:18', NULL),
(129, 'Evening sky / Preparations for the evening / The boy standing under the sky /', 'images/photo/Screenshot_2020-02-17-15-52-39-1.png', '20200448', '0', '2020-05-01 06:21:05', NULL),
(130, 'Bed boy / Photos standing under the sky / Free download photos /', 'images/photo/Screenshot_2020-02-17-15-52-31-1.png', '20200448', '0', '2020-05-01 06:22:46', NULL),
(131, 'qatar airport code | qatar airport shutdown | doha qatar airport |doha airport shopping /', 'images/photo/28578-317323.jpg', '20200451', '1', '2020-05-14 09:35:19', '2020-05-14 09:35:19'),
(132, 'the tallest building in qatar |what is the tallest tower in qatar | what is the tallest building in doha| free download photo |doha cites qatar', 'images/photo/doha is in which country_6.jpg', '20200451', '1', '2020-05-14 09:43:06', '2020-05-14 09:43:06'),
(133, 'doha tower and convention cente | free download largest building picture | doha qatar cites images |', 'images/photo/doha qatar cite.jpg', '20200451', '1', '2020-05-14 09:52:12', '2020-05-14 09:52:12'),
(134, 'qater cites naite photos | qatar photos download | images of qatar airport | free download images qater cites', 'images/photo/qatar doha cite.jpg', '20200451', '1', '2020-05-14 09:59:51', '2020-05-14 09:59:51'),
(135, 'Nightclubs in the capital of Qatar | qatar red light area |  Qatar night scene | freedownloadimage.com', 'images/photo/qater cite_1.jpg', '20200451', '1', '2020-05-16 08:17:46', '2020-05-16 08:17:46'),
(136, 'qatar cities aunty photos-qatar airways photos cabin crew-qatar city photos|free download qater cite photo', 'images/photo/Qater_2.jpg', '20200451', '1', '2020-05-16 08:30:31', '2020-05-16 08:30:31'),
(138, 'qatar city images | free download qatar city images | doha qatar | qatar city tour', 'images/photo/Untitled.jpg', '20200451', '1', '2020-05-16 08:36:19', '2020-05-16 08:36:19'),
(139, 'qatar city images | free download qatar city images | doha qatar | qatar city tour', 'images/photo/Untitled_3.jpg', '20200451', '1', '2020-05-16 08:36:53', '2020-05-16 08:36:53'),
(140, 'qatar city road  images / qatar photos downloadqatar airways pictures download /', 'images/photo/Untitled_1.jpg', '20200451', '1', '2020-05-16 08:39:53', '2020-05-16 08:39:53'),
(141, 'hamad international airport advertising /qatar airways pictures download /  qatar flag images', 'images/photo/Untitled_2.jpg', '20200451', '1', '2020-05-16 08:41:58', '2020-05-16 08:41:58'),
(142, 'COVID-19', 'images/photo/download.jpg', '1', '16', '2020-06-13 21:11:34', '2020-06-13 21:11:34'),
(145, 'HTC', 'images/photo/computer-desk-laptop-stethoscope-48604.jpg', '1', '12', '2020-06-18 21:51:15', '2020-06-18 21:51:15'),
(147, 'Fishermen /Beautful river /free download image', 'images/photo/free download image.jpg', '1', '20', '2020-06-23 12:30:30', '2020-06-23 12:30:30'),
(148, 'Fishermen /Beautful river /free download image', 'images/photo/free download image.jpg', '1', '20', '2020-06-23 12:30:40', '2020-06-23 12:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `point` double(15,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `point`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 100.00, 17, '2020-02-01 23:27:43', '2020-02-01 23:27:43'),
(2, 4920.00, 2, '2020-02-01 23:27:43', '2020-02-01 23:27:43'),
(3, 500.00, 15, '2020-02-01 23:27:43', '2020-02-01 23:27:43'),
(4, 250.00, 21, '2020-02-25 00:26:23', '2020-02-25 00:26:23'),
(5, 400.00, 22, '2020-02-26 01:00:25', '2020-02-26 01:00:25'),
(6, 100.00, 23, '2020-02-26 02:30:08', '2020-02-26 02:30:08'),
(7, 370.00, 24, NULL, NULL),
(8, 0.00, 25, NULL, NULL),
(9, 0.00, 35, NULL, NULL),
(10, 150.00, 37, NULL, NULL),
(11, 0.00, 20200339, NULL, NULL),
(12, 300.00, 20200341, '2020-03-18 06:03:57', '2020-03-18 06:03:57'),
(13, 40.00, 20200342, NULL, NULL),
(14, 1000.00, 20200343, NULL, NULL),
(15, 7550.00, 20200345, NULL, NULL),
(16, 0.00, 20200365, NULL, NULL),
(17, 70.00, 20200395, NULL, NULL),
(18, 100.00, 20200415, NULL, NULL),
(19, 0.00, 20200416, NULL, NULL),
(20, 4770.00, 20200448, NULL, NULL),
(21, 0.00, 20200452, NULL, NULL),
(22, 2100.00, 20200454, NULL, NULL),
(23, 0.00, 20200455, NULL, NULL),
(24, 0.00, 20200457, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE `policy` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policy`
--

INSERT INTO `policy` (`id`, `text`) VALUES
(1, '<h4>Welcome to Locations!</h4>\r\n								<p>These terms and conditions outline the rules and regulations for the use of Listing Portal\'s Website. Listing Portal is located at:</p>\r\n								<span>2708 Burwell Heights Road,</span>\r\n								<span>Warren, TX 77664</span>\r\n								<span>United States</span>\r\n								<p>By accessing this website we assume you accept these terms and conditions in full. Do not continue to use Listing Portal\'s website if you do not accept all of the terms and conditions stated on this page.</p>\r\n								<p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and any or all Agreements: \"Client\", “You” and “Your” refers to you, the person accessing this website and accepting the Company’s terms and conditions. \"The Company\", “Ourselves”, “We”, “Our” and \"Us\", refers to our Company. “Party”, “Parties”, or “Us”, refers to both the Client and ourselves, or either the Client or ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner, whether by formal meetings of a fixed duration, or any other means, for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services/products, in accordance with and subject to, prevailing law of United States. Any use of the above terminology or other words in the singular, plural, capitalisation and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p>\r\n								<h4>License</h4>\r\n								<p>Unless otherwise stated, Listing Portal and/or it’s licensors own the intellectual property rights for all material on Listing Portal All intellectual property rights are reserved. You may view and/or print pages from http://www.example.com for your own personal use subject to restrictions set in these terms and conditions.</p>\r\n								<p>You must not:</p>\r\n								<ul>\r\n									<li>Republish material from http://www.example.com</li>\r\n									<li>Sell, rent or sub-license material from http://www.example.com</li>\r\n									<li>Reproduce, duplicate or copy material from http://www.example.com</li>\r\n									<li>Redistribute content from Listing Portal (unless content is specifically made for redistribution).</li>\r\n								</ul>\r\n								<h4>Reservation of Rights</h4>\r\n								<p>We reserve the right at any time and in its sole discretion to request that you remove all links or any particular link to our Web site. You agree to immediately remove all links to our Web site upon such request. We also reserve the right to amend these terms and conditions and its linking policy at any time. By continuing to link to our Web site, you agree to be bound to and abide by these linking terms and conditions.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `photo`, `first_name`, `last_name`, `number`, `email`, `description`, `facebook`, `youtube`, `twitter`, `linkin`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'images/photo/0fe37ae2aa1032deb430238f19f06555.jpg', 'saiful', 'saiful', '0179999999999', 'saiful@gmail.com', 'Sep 28, 2018 - I installed Laravel 5.7 Added a form to the file ... Post request in Laravel 5.7 --- Error - 419 Sorry, your session has expired. ... login function maybe we used same route with that page and token was renewed after we submit.', '#', '#', '#', '#', '2', NULL, NULL),
(2, 'images/photo/0fe37ae2aa1032deb430238f19f06555.jpg', 'fahad', 'fahad', NULL, 'fahad@gmail.com', NULL, NULL, NULL, NULL, NULL, '15', '2020-02-01 21:59:29', '2020-02-01 21:59:29'),
(5, 'images/user/user.jpg', 'saif', 'khan', NULL, '123@gmail.com', NULL, NULL, NULL, NULL, NULL, '17', '2020-02-01 23:27:43', '2020-02-01 23:27:43'),
(7, 'images/photo/r1.jpg', 'saiful', 'saiful', '0179999999999', 'saiful@gmail.com', 'Sep 28, 2018 - I installed Laravel 5.7 Added a form to the file ... Post request in Laravel 5.7 --- Error - 419 Sorry, your session has expired. ... login function maybe we used same route with that page and token was renewed after we submit.', '#', '#', '#', '#', '1', NULL, NULL),
(8, 'images/user/user.jpg', 'admin', 'admin', NULL, 'admin@admin.com', NULL, NULL, NULL, NULL, NULL, '20', '2020-02-15 22:25:18', '2020-02-15 22:25:18'),
(9, 'images/user/user.jpg', 'sss', 'sss', NULL, 'sssss@gmail.com', 'fffss', NULL, NULL, NULL, NULL, '21', '2020-02-25 00:26:23', '2020-02-25 01:07:57'),
(10, 'images/photo/FB_IMG_15808140892988680.jpg', 'Abdul', 'Aziz', '01955847283', 'abdulaziz163ah@gmail.com', 'Photo courtesy', 'https://www.facebook.com/abdulaziz.rimon.73', 'https://youtu.be/ypf8N5ZhQdQ', NULL, NULL, '22', '2020-02-26 01:00:25', '2020-02-26 01:25:48'),
(11, 'images/user/user.jpg', 'Sabrina', 'Ferduse', NULL, 'sabrinaferdose73@gmail.com', NULL, NULL, NULL, NULL, NULL, '23', '2020-02-26 02:30:08', '2020-02-26 02:30:08'),
(12, 'images/logo/logo.png', 'sazzad hossain', 'fahad', NULL, 'sazzad22@gmail.com', NULL, NULL, NULL, NULL, NULL, '24', NULL, NULL),
(13, 'images/logo/logo.png', 'Abdul ', 'Aziz', NULL, 'abdulaziz1hero@gmail.com', NULL, NULL, NULL, NULL, NULL, '25', NULL, NULL),
(14, 'images/logo/logo.png', 'md', 'Rimom', NULL, 'abdulaziz74ah@gmail.com', NULL, NULL, NULL, NULL, NULL, '35', NULL, NULL),
(15, 'images/logo/logo.png', 'saiful', 'saif', NULL, 'saiful1@gmail.com', NULL, NULL, NULL, NULL, NULL, '37', NULL, NULL),
(16, 'images/logo/logo.png', 'text', 'text', NULL, 'text', NULL, NULL, NULL, NULL, NULL, '20200339', NULL, NULL),
(17, 'images/user/user.jpg', 'Saiful', 'Saif', NULL, 'sajid@infobizsoft.com', NULL, NULL, NULL, NULL, NULL, '20200341', '2020-03-18 06:03:57', '2020-03-18 06:03:57'),
(18, 'images/logo/logo.png', 'playstore', 'cnx', NULL, 'playstorecnx13@gmail.com', NULL, NULL, NULL, NULL, NULL, '20200342', NULL, NULL),
(19, 'images/logo/logo.png', 'Tadiqul', 'Islam', NULL, 'alam7@gmail.com', NULL, NULL, NULL, NULL, NULL, '20200343', NULL, NULL),
(20, 'images/photo/FB_IMG_15845705027000912.jpg', 'Md', 'Babu', '', 'Abdulaziz10ah@gmail.com', '', '', '', '', '', '20200345', NULL, NULL),
(21, 'images/logo/logo.png', '15666666666', '15666666666', NULL, '15666666666', NULL, NULL, NULL, NULL, NULL, '20200365', NULL, NULL),
(22, 'images/photo/beautiful-bouqowers-3-1024px-536x401.jpg', 'Abdul', 'Aziz Rimon', '', 'abdulaziz2019ah@gmail.com', 'à¦°à¦¿à¦®à¦¨', '', '', '', '', '20200395', NULL, NULL),
(23, 'images/logo/logo.png', 'mr', 'babu', NULL, 'Abdulazizrimon136@gmail.com', NULL, NULL, NULL, NULL, NULL, '20200415', NULL, NULL),
(24, 'images/logo/logo.png', 'john', 'doe', NULL, 'theonsnow.230550@gmail.com', NULL, NULL, NULL, NULL, NULL, '20200416', NULL, NULL),
(25, 'images/logo/logo.png', 'md', 'aziz', NULL, 'abdulaziz1992ah@gmail.com', NULL, NULL, NULL, NULL, NULL, '20200448', NULL, NULL),
(26, 'images/user/user.jpg', 'Abdul Aziz', 'Abdul Aziz', NULL, 'abdulaziz143ah@gmail.com', NULL, NULL, NULL, NULL, NULL, '20200451', '2020-05-09 08:12:53', '2020-05-09 08:12:53'),
(27, 'images/logo/logo.png', 'masud', 'rana', NULL, 'masud@gmail.com', NULL, NULL, NULL, NULL, NULL, '20200452', NULL, NULL),
(28, 'images/logo/logo.png', 'jahidul', 'islam', NULL, 'ji278318@gmail.com', NULL, NULL, NULL, NULL, NULL, '20200454', NULL, NULL),
(29, 'images/logo/logo.png', 'Ranjit', 'Diwakar', NULL, 'rdiwakar305.@gamil com.', NULL, NULL, NULL, NULL, NULL, '20200455', NULL, NULL),
(30, 'images/logo/logo.png', 'kailash', 'hirhmate', NULL, 'kailashemilo', NULL, NULL, NULL, NULL, NULL, '20200457', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `photo`, `title`, `link`, `created_at`, `updated_at`) VALUES
(6, 'images/promotion/81178882-hot-sale-banner-design-template-this-weekend-special-offer-big-sale-discount-up-to-60-off.jpg', 'মাশাআল্লাহ অনেক সুন্দর হয়েছে সবাইকে একসাথে দেখে ভাল লাগলো|মাশাআল্লাহ অনেক সুন্দর হয়েছে সবাইকে একসাথে দেখে ভাল লাগলো', 'www.offersite.com/offer/01', '2020-01-26 00:07:27', '2020-01-26 00:07:27'),
(10, 'images/promotion/recent2.jpg', 'মাশাআল্লাহ অনেক সুন্দর হয়েছে সবাইকে একসাথে দেখে ভাল লাগলো', 'www.offersite.com/offer/01', '2020-02-02 00:25:09', '2020-02-02 00:25:09'),
(11, 'images/promotion/recent1.jpg', 'Super Show Off', 'www.offersite.com/offer/01', '2020-02-02 00:25:32', '2020-02-02 00:25:32'),
(12, 'images/promotion/recent3.jpg', 'Super Show Off', 'www.offersite.com/offer/01', '2020-02-02 00:25:51', '2020-02-02 00:25:51'),
(13, 'images/promotion/recent3.jpg', 'Great Offer for You', 'www.offersite.com/offer/01', '2020-01-26 00:07:27', '2020-01-26 00:07:27'),
(14, 'images/promotion/recent1.jpg', 'Super Show Off', 'www.offersite.com/offer/01', '2020-02-02 00:25:09', '2020-02-02 00:25:09'),
(15, 'images/promotion/recent2.jpg', 'Super Show Off', 'www.offersite.com/offer/01', '2020-02-02 00:25:32', '2020-02-02 00:25:32'),
(16, 'images/promotion/81178882-hot-sale-banner-design-template-this-weekend-special-offer-big-sale-discount-up-to-60-off.jpg', 'Super Show Off', 'www.offersite.com/offer/01', '2020-02-02 00:25:51', '2020-02-02 00:25:51'),
(19, 'images/promotion/30b5351c5b5db172b92a4ffbd8edacf4.jpg', 'জিবনে প্রথম প্রেম ইচ্ছা করলে ও কখনো ভুলা যাই না', 'https://www.youtube.com/channel/UCqFH5k4uBVijwMSCbApoiJQ', '2020-05-09 07:58:38', '2020-05-09 07:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `header1`, `header2`, `facebook`, `twitter`, `youtube`, `address`, `phone`, `gmail`, `description`, `footer`, `created_at`, `updated_at`) VALUES
(1, 'images/logo/logo.png', 'Welcome to our website', 'Free download photos of your choice', 'https://www.facebook.com/abdulaziz.rimon.73?ref=bookmarks', 'https://l.facebook.com/l.php?u=https%3A%2F%2Ftwitter.com%2FAbdulaz48904407&h=AT0N0w9m9bnB4ceIAIi0ANPWvwpvNndxJ1lTz9FqZQNX07LWb7nrjs3JsQSzvqq6sfZYeE6fZZ_odSNyIPvfbnzJsdbsGPVYJeuqzlKXDAb7bVXERvvH-EzK6wkbhwPj6O4RdgrvTtSIxrQ&s=1', 'https://www.youtube.com/channel/UCqFH5k4uBVijwMSCbApoiJQ', 'Doha,Qater', '+97474454868', 'abdulaziz74ah@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscingelit. Nulla ultrices nisi vitae laoreet dapibus. Etiampulvinar non justo at tincidunt. Cras turpis erat, ornare eget sem ut, tempus scelerisque lorem.', 'Copyright amrsoft© 2020. All Rights Reserved', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider`, `created_at`, `updated_at`) VALUES
(9, 'images/slider/parallax1.jpg', '2020-01-30 20:38:32', '2020-01-30 20:38:32'),
(10, 'images/slider/parallax2.jpg', '2020-01-30 20:38:40', '2020-01-30 20:38:40'),
(11, 'images/slider/parallax3.jpg', '2020-01-30 20:38:47', '2020-01-30 20:38:47'),
(12, 'images/slider/parallax4.jpg', '2020-01-30 20:38:54', '2020-01-30 20:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `photo_id`, `created_at`, `updated_at`) VALUES
(1, 'mac', '142', '2020-06-17 16:34:35', '2020-06-17 16:34:35'),
(2, 'di', '142', '2020-06-17 16:34:35', '2020-06-17 16:34:35'),
(3, 'cal', '142', '2020-06-17 16:34:35', '2020-06-17 16:34:35'),
(4, 'medicine', '142', '2020-06-18 21:36:03', '2020-06-18 21:36:03'),
(5, 'You', '142', '2020-06-18 21:36:03', '2020-06-18 21:36:03'),
(6, 'Tube', '142', '2020-06-18 21:36:03', '2020-06-18 21:36:03'),
(7, 'Health', '142', '2020-06-18 21:36:03', '2020-06-18 21:36:03'),
(8, 'Office', '142', '2020-06-18 21:36:03', '2020-06-18 21:36:03'),
(9, 'New', '142', '2020-06-18 21:36:03', '2020-06-18 21:36:03'),
(10, 'boss', '142', '2020-06-18 21:36:03', '2020-06-18 21:36:03');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `text`) VALUES
(1, '<h4>Welcome to Locations!</h4>\r\n								<p>These terms and conditions outline the rules and regulations for the use of Listing Portal\'s Website. Listing Portal is located at:</p>\r\n								<span>2708 Burwell Heights Road,</span>\r\n								<span>Warren, TX 77664</span>\r\n								<span>United States</span>\r\n								<p>By accessing this website we assume you accept these terms and conditions in full. Do not continue to use Listing Portal\'s website if you do not accept all of the terms and conditions stated on this page.</p>\r\n								<p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and any or all Agreements: \"Client\", “You” and “Your” refers to you, the person accessing this website and accepting the Company’s terms and conditions. \"The Company\", “Ourselves”, “We”, “Our” and \"Us\", refers to our Company. “Party”, “Parties”, or “Us”, refers to both the Client and ourselves, or either the Client or ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner, whether by formal meetings of a fixed duration, or any other means, for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services/products, in accordance with and subject to, prevailing law of United States. Any use of the above terminology or other words in the singular, plural, capitalisation and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p>\r\n								<h4>License</h4>\r\n								<p>Unless otherwise stated, Listing Portal and/or it’s licensors own the intellectual property rights for all material on Listing Portal All intellectual property rights are reserved. You may view and/or print pages from http://www.example.com for your own personal use subject to restrictions set in these terms and conditions.</p>\r\n								<p>You must not:</p>\r\n								<ul>\r\n									<li>Republish material from http://www.example.com</li>\r\n									<li>Sell, rent or sub-license material from http://www.example.com</li>\r\n									<li>Reproduce, duplicate or copy material from http://www.example.com</li>\r\n									<li>Redistribute content from Listing Portal (unless content is specifically made for redistribution).</li>\r\n								</ul>\r\n								<h4>Reservation of Rights</h4>\r\n								<p>We reserve the right at any time and in its sole discretion to request that you remove all links or any particular link to our Web site. You agree to immediately remove all links to our Web site upon such request. We also reserve the right to amend these terms and conditions and its linking policy at any time. By continuing to link to our Web site, you agree to be bound to and abide by these linking terms and conditions.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referral_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lname`, `role`, `email`, `referral_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '', 'admin', 'admin@gmail.com', NULL, NULL, '$2y$10$jeu5vWf3rqlo5PH1LnTOCOp3pIM2epbUHShXt691OZM4AEZLGZKKG', 'i7y009S5CSdHEGRoTjQ2CTxH8dCbGUg8QIZiO41RnUNZ7PlkN9jKSJeXyU5o', '2019-12-30 23:18:24', '2019-12-30 23:18:24'),
(2, 'Saif', '', 'user', 'user@gmail.com', NULL, NULL, '$2y$10$jeu5vWf3rqlo5PH1LnTOCOp3pIM2epbUHShXt691OZM4AEZLGZKKG', 'u13NuO9TITBZP0U7vUPJatxwQlgpmNcSfBMOtJqvTS7oDXqbpIjdbext9aGP', '2019-12-30 23:18:24', '2019-12-30 23:18:24'),
(3, 'robin', 'khan', 'user', 'robinkhan5854@gmail.com', NULL, NULL, '$2y$10$URELIBdn8a0IkexVsisRduxqq7B9/TYere2lyURlyxy8k24qbKlu2', NULL, '2020-01-04 21:46:59', '2020-01-04 21:46:59'),
(4, 'rajib', 'mia', 'user', 'rajib@gmail.com', NULL, NULL, '$2y$10$DG35MPKVphmIyM9HrchXRu8Y4bYZUGWd9AoE2ieePkGTQSWxZEDLi', NULL, '2020-01-30 23:41:57', '2020-01-30 23:41:57'),
(15, 'fahad', 'khan', 'user', 'fahad@gmail.com', NULL, NULL, '$2y$10$ACRbDWaNfKak18FmAD7myOeGBGLUZIasafEoOTR3ycTH0XK4ROdPu', NULL, '2020-02-01 21:59:29', '2020-02-01 21:59:29'),
(17, 'saif', 'khan', 'user', '123@gmail.com', NULL, NULL, '$2y$10$UbQ5R6L/qhS5KsjVbhod3u9aCxoyIflULSvq2mUarLoZWry2/o6aK', NULL, '2020-02-01 23:27:43', '2020-02-01 23:27:43'),
(20, 'admin', 'admin', 'admin', 'admin@admin.com', NULL, NULL, 'd54d1702ad0f8326224b817c796763c9', NULL, '2020-02-15 22:25:18', '2020-02-15 22:25:18'),
(21, 'sss', 'ss', 'user', 'sssss@gmail.com', NULL, NULL, '$2y$10$3uX.9CwmTSYXi6OuU7KQb.F3y6hRBIyw8kebubY1379awZhxC88bK', NULL, '2020-02-25 00:26:23', '2020-02-25 00:26:23'),
(22, 'Aziz', 'Bmj', 'user', 'abdulaziz163ah@gmail.com', NULL, NULL, '$2y$10$IBVKBUYk8HtkABAaTPOE7.XwHq7ypja2KeeCg5bKRHzctHhER3FtG', NULL, '2020-02-26 01:00:25', '2020-02-26 01:00:25'),
(23, 'Sabrina', 'Ferduse', 'user', 'sabrinaferdose73@gmail.com', NULL, NULL, '$2y$10$3mp74YiQaOnaPt0FpxlvO.rCWVhHwLrqg5K72mUzWP/hYlkEGbRTC', NULL, '2020-02-26 02:30:08', '2020-02-26 02:30:08'),
(24, 'sazzad hossain', 'fahad', 'user', 'sazzad22@gmail.com', NULL, NULL, '$2y$10$xhoPBGdrEW/KZvJiHIBE/uWN8dIxrbxQwBV9N2G4H81N2uhKPGnEW', NULL, NULL, NULL),
(25, 'Abdul ', 'Aziz', 'user', 'abdulaziz1hero@gmail.com', NULL, NULL, '$2y$10$.AS30C1Wj0cjGpXu5AvYK.KiwEunycbRi.4PFWRECDXn.Qu.pyLhy', NULL, NULL, NULL),
(35, 'md', 'Rimom', 'user', 'abdulaziz74ah@gmail.com', NULL, NULL, '$2y$10$5dqqawGPSyY9cJK13.h96eNUSMDnQLrJw8f.2vxh3rFSRGS2R9erW', NULL, NULL, NULL),
(20200337, 'saiful', 'saif', 'user', 'saiful1@gmail.com', '2', NULL, '$2y$10$idn/2o1iLmgXxmkuH0zhM.0TP812Ktz0uiYgrN3RJOs0Me6IPLiry', NULL, NULL, NULL),
(20200339, 'text', 'text', 'user', 'text', NULL, NULL, '$2y$10$sPUerN.n.MdBqoi5rvLDp.NjCSww27HY1VnmeqIIgsoJERZBYZO7S', NULL, NULL, NULL),
(20200341, 'Saiful', 'Saif', 'user', 'sajid@infobizsoft.com', NULL, NULL, '$2y$10$4JMckc4rJIzzDv.HZXPN1OrvOihU1sfg.v9phzXy1MDpdkCfXdPUC', NULL, '2020-03-18 06:03:57', '2020-03-18 06:03:57'),
(20200342, 'playstore', 'cnx', 'user', 'playstorecnx13@gmail.com', NULL, NULL, '$2y$10$dmtFXhtuNYFnEK4corWXaeMRhUC9eL3.JnJod7zaIt0FwEG3qxBc2', NULL, NULL, NULL),
(20200343, 'Tadiqul', 'Islam', 'user', 'alam7@gmail.com', NULL, NULL, '$2y$10$VilzZsNVtYoADBFstd7hK.ZThGa7TWh8a/up30yCv/qfyZkdgqO4e', NULL, NULL, NULL),
(20200345, 'Md', 'Babu', 'user', 'Abdulaziz10ah@gmail.com', NULL, NULL, '$2y$10$c4a7ZGaxGAJHA2Uw5ypGtOPEPZv9U3E8vSGkG1Og2Vd6tlo2.G6sG', NULL, NULL, NULL),
(20200365, '15666666666', '15666666666', 'user', '15666666666', NULL, NULL, '$2y$10$cgo7bF1bE68jYoDwAA9UyOj53mudIzvNa3dpiuOYB8GInaW6215na', NULL, NULL, NULL),
(20200395, 'Abdul', 'Aziz Rimon', 'user', 'abdulaziz2019ah@gmail.com', NULL, NULL, '$2y$10$iikdUjTwCY79CwRf0svuRuDT.VPftEiw7KdTuRzBfA21Ky4n9IHwm', NULL, NULL, NULL),
(20200415, 'mr', 'babu', 'user', 'Abdulazizrimon136@gmail.com', NULL, NULL, '$2y$10$4MCDHKMSowX2k0EBCVN16uKyWul6Fm463cn1gJgWejxTE07O1YMPq', NULL, NULL, NULL),
(20200416, 'john', 'doe', 'user', 'theonsnow.230550@gmail.com', NULL, NULL, '$2y$10$LoO6Poh3o747PySjlRgsMeYJr4cDQnFMct4bvr9PdjQVpHfgJXe4W', NULL, NULL, NULL),
(20200448, 'md', 'aziz', 'user', 'abdulaziz1992ah@gmail.com', NULL, NULL, '$2y$10$V5yzDdngMwuNXG14xnHWVOPym44tcK.LKUe.SuYVgXWOu.pqQCR2m', NULL, NULL, NULL),
(20200451, 'Abdul Aziz', 'Abdul Aziz', 'admin', 'abdulaziz143ah@gmail.com', NULL, NULL, '$2y$10$bFv4AbWHjF0DRVN12RrH8Og5XlnlmPbOknML.xupRcY230SGBKU4C', NULL, '2020-05-09 08:12:53', '2020-05-09 08:12:53'),
(20200452, 'masud', 'rana', 'user', 'masud@gmail.com', NULL, NULL, '$2y$10$gUDXG11xuEbi3gidg0r9rOydPWgFOy.iLolpgOswrdXhH8STWZX7S', NULL, NULL, NULL),
(20200454, 'jahidul', 'islam', 'user', 'ji278318@gmail.com', NULL, NULL, '$2y$10$h3H.pPfRmS66Lvq2m2ARvePQui37mVPqV0P65ND/bwppFQy.mzovO', NULL, NULL, NULL),
(20200455, 'Ranjit', 'Diwakar', 'user', 'rdiwakar305.@gamil com.', NULL, NULL, '$2y$10$nCQW1jELM/RnpwcK6n1h7u.OUtQiSdLwUkmXBqH7sknituMNqX4tC', NULL, NULL, NULL),
(20200457, 'kailash', 'hirhmate', 'user', 'kailashemilo', NULL, NULL, '$2y$10$BAwui07PLeu8JNaIBcVhV.TvvWaHgAWwpKa4Y4kYieGy5G4lu3t06', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `point` double(15,2) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(255) NOT NULL DEFAULT 'Pennding'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `user_id`, `point`, `amount`, `date`, `status`) VALUES
(1, '2', 15000.00, '15', '2020-04-23 03:18:11', 'pending'),
(2, '2', 30000.00, '30', '2020-04-23 09:07:44', 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_user`
--
ALTER TABLE `link_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policy`
--
ALTER TABLE `policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `link_user`
--
ALTER TABLE `link_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `policy`
--
ALTER TABLE `policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20200459;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
