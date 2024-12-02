-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2024 at 12:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `live_wlp`
--

-- --------------------------------------------------------

--
-- Table structure for table `3d_wallpapers`
--

CREATE TABLE `3d_wallpapers` (
  `id` int(11) NOT NULL,
  `blur_path` varchar(500) NOT NULL,
  `thumb_path` varchar(500) NOT NULL,
  `zip_path` varchar(500) NOT NULL,
  `category` varchar(250) NOT NULL,
  `cat_id` int(100) NOT NULL,
  `likes` int(150) NOT NULL,
  `downloads` int(150) NOT NULL,
  `set_wp` int(150) NOT NULL,
  `hash_tags` varchar(300) NOT NULL,
  `wp_show` int(10) NOT NULL,
  `featured` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `3d_wallpapers`
--

INSERT INTO `3d_wallpapers` (`id`, `blur_path`, `thumb_path`, `zip_path`, `category`, `cat_id`, `likes`, `downloads`, `set_wp`, `hash_tags`, `wp_show`, `featured`) VALUES
(1, '3D_Wallpapers/birds/blur/00001_blur.webp', '3D_Wallpapers/birds/thumb/00001_thu.webp', '3D_Wallpapers/birds/zip/00001.zip', 'birds', 21, 1668, 8183, 0, '#parrot #grayparrot', 0, 1),
(2, '3D_Wallpapers/birds/blur/00009_blur.webp', '3D_Wallpapers/birds/thumb/00009_thu.webp', '3D_Wallpapers/birds/zip/00009.zip', 'birds', 21, 994, 11501, 0, '#parrot #tree', 0, 0),
(3, '3D_Wallpapers/birds/blur/00016_blur.webp', '3D_Wallpapers/birds/thumb/00016_thu.webp', '3D_Wallpapers/birds/zip/00016.zip', 'birds', 21, 1819, 24740, 0, '#parrot #macow', 0, 1),
(4, '3D_Wallpapers/birds/blur/00033_blur.webp', '3D_Wallpapers/birds/thumb/00033_thu.webp', '3D_Wallpapers/birds/zip/00033.zip', 'birds', 21, 717, 5422, 0, '#birds #sparrow', 0, 0),
(5, '3D_Wallpapers/black/blur/00006_blur.webp', '3D_Wallpapers/black/thumb/00006_thu.webp', '3D_Wallpapers/black/zip/00006.zip', 'black', 4, 781, 9381, 0, '#black eyes #dreams', 0, 0),
(6, '3D_Wallpapers/black/blur/00007_blur.webp', '3D_Wallpapers/black/thumb/00007_thu.webp', '3D_Wallpapers/black/zip/00007.zip', 'black', 4, 634, 6175, 0, '#blackdevil #blackball #black', 0, 0),
(7, '3D_Wallpapers/butterflies/blur/00010_blur.webp', '3D_Wallpapers/butterflies/thumb/00010_thu.webp', '3D_Wallpapers/butterflies/zip/00010.zip', 'butterflies', 15, 1027, 9707, 0, '#butterfly', 0, 1),
(8, '3D_Wallpapers/dolls/blur/00003_blur.webp', '3D_Wallpapers/dolls/thumb/00003_thu.webp', '3D_Wallpapers/dolls/zip/00003.zip', 'dolls', 9, 709, 4836, 0, '#Barbie #butterfly', 0, 0),
(9, '3D_Wallpapers/dolls/blur/00008_blur.webp', '3D_Wallpapers/dolls/thumb/00008_thu.webp', '3D_Wallpapers/dolls/zip/00008.zip', 'dolls', 9, 598, 4580, 0, '#child #missingsomething', 0, 0),
(10, '3D_Wallpapers/dolls/blur/00011_blur.webp', '3D_Wallpapers/dolls/thumb/00011_thu.webp', '3D_Wallpapers/dolls/zip/00011.zip', 'dolls', 9, 781, 7407, 0, '#ferry #girl', 0, 0),
(11, '3D_Wallpapers/dolls/blur/00026_blur.webp', '3D_Wallpapers/dolls/thumb/00026_thu.webp', '3D_Wallpapers/dolls/zip/00026.zip', 'dolls', 9, 623, 5441, 0, '#doll #barbie', 0, 1),
(12, '3D_Wallpapers/dolls/blur/00030_blur.webp', '3D_Wallpapers/dolls/thumb/00030_thu.webp', '3D_Wallpapers/dolls/zip/00030.zip', 'dolls', 9, 500, 1961, 0, '#selfie #cute girl', 0, 0),
(13, '3D_Wallpapers/flowers/blur/00000_blur.webp', '3D_Wallpapers/flowers/thumb/00000_thu.webp', '3D_Wallpapers/flowers/zip/00000.zip', 'flowers', 15, 2937, 17859, 0, '', 0, 0),
(14, '3D_Wallpapers/flowers/blur/00020_blur.webp', '3D_Wallpapers/flowers/thumb/00020_thu.webp', '3D_Wallpapers/flowers/zip/00020.zip', 'flowers', 15, 1655, 16877, 0, '#flower', 0, 0),
(15, '3D_Wallpapers/games/blur/00015_blur.webp', '3D_Wallpapers/games/thumb/00015_thu.webp', '3D_Wallpapers/games/zip/00015.zip', 'games', 10, 1167, 10128, 0, '#pubg #fight', 0, 0),
(16, '3D_Wallpapers/games/blur/00035_blur.webp', '3D_Wallpapers/games/thumb/00035_thu.webp', '3D_Wallpapers/games/zip/00035.zip', 'games', 10, 624, 4234, 0, '#devil', 0, 0),
(17, '3D_Wallpapers/ghost/blur/00029_blur.webp', '3D_Wallpapers/ghost/thumb/00029_thu.webp', '3D_Wallpapers/ghost/zip/00029.zip', 'ghost', 39, 0, 0, 0, '', 0, 0),
(18, '3D_Wallpapers/landscapes/blur/00002_blur.webp', '3D_Wallpapers/landscapes/thumb/00002_thu.webp', '3D_Wallpapers/landscapes/zip/00002.zip', 'landscapes', 2, 830, 8977, 0, '#night #girl', 0, 0),
(19, '3D_Wallpapers/landscapes/blur/00005_blur.webp', '3D_Wallpapers/landscapes/thumb/00005_thu.webp', '3D_Wallpapers/landscapes/zip/00005.zip', 'landscapes', 2, 682, 7034, 0, '#sky #hotairbaloon', 0, 0),
(20, '3D_Wallpapers/movies/blur/00013_blur.webp', '3D_Wallpapers/movies/thumb/00013_thu.webp', '3D_Wallpapers/movies/zip/00013.zip', 'movies', 9, 1090, 11388, 0, '#moneyheist', 0, 0),
(21, '3D_Wallpapers/movies/blur/00017_blur.webp', '3D_Wallpapers/movies/thumb/00017_thu.webp', '3D_Wallpapers/movies/zip/00017.zip', 'movies', 9, 2850, 21526, 0, '#spider #spiderman', 0, 1),
(22, '3D_Wallpapers/movies/blur/00018_blur.webp', '3D_Wallpapers/movies/thumb/00018_thu.webp', '3D_Wallpapers/movies/zip/00018.zip', 'movies', 9, 727, 3542, 0, '#fighting girl #brave', 0, 0),
(23, '3D_Wallpapers/movies/blur/00019_blur.webp', '3D_Wallpapers/movies/thumb/00019_thu.webp', '3D_Wallpapers/movies/zip/00019.zip', 'movies', 9, 1296, 6205, 0, '#allien', 0, 1),
(24, '3D_Wallpapers/movies/blur/00021_blur.webp', '3D_Wallpapers/movies/thumb/00021_thu.webp', '3D_Wallpapers/movies/zip/00021.zip', 'movies', 9, 1549, 16989, 0, '#america #superhero', 0, 1),
(25, '3D_Wallpapers/movies/blur/00022_blur.webp', '3D_Wallpapers/movies/thumb/00022_thu.webp', '3D_Wallpapers/movies/zip/00022.zip', 'movies', 9, 1413, 10812, 0, '#mongli #tiger', 0, 0),
(26, '3D_Wallpapers/movies/blur/00023_blur.webp', '3D_Wallpapers/movies/thumb/00023_thu.webp', '3D_Wallpapers/movies/zip/00023.zip', 'movies', 9, 525, 1934, 0, '#dragon', 0, 0),
(27, '3D_Wallpapers/movies/blur/00024_blur.webp', '3D_Wallpapers/movies/thumb/00024_thu.webp', '3D_Wallpapers/movies/zip/00024.zip', 'movies', 9, 646, 7749, 0, '#tiger #boy', 0, 0),
(28, '3D_Wallpapers/movies/blur/00025_blur.webp', '3D_Wallpapers/movies/thumb/00025_thu.webp', '3D_Wallpapers/movies/zip/00025.zip', 'movies', 9, 699, 6197, 0, '#girls', 0, 0),
(29, '3D_Wallpapers/movies/blur/00032_blur.webp', '3D_Wallpapers/movies/thumb/00032_thu.webp', '3D_Wallpapers/movies/zip/00032.zip', 'movies', 9, 763, 8498, 0, '#batman', 0, 1),
(30, '3D_Wallpapers/movies/blur/00034_blur.webp', '3D_Wallpapers/movies/thumb/00034_thu.webp', '3D_Wallpapers/movies/zip/00034.zip', 'movies', 9, 708, 8283, 0, '#batman', 0, 1),
(31, '3D_Wallpapers/movies/blur/00036_blur.webp', '3D_Wallpapers/movies/thumb/00036_thu.webp', '3D_Wallpapers/movies/zip/00036.zip', 'movies', 9, 746, 9306, 0, '#panda', 0, 1),
(32, '3D_Wallpapers/movies/blur/00038_blur.webp', '3D_Wallpapers/movies/thumb/00038_thu.webp', '3D_Wallpapers/movies/zip/00038.zip', 'movies', 9, 0, 0, 0, '', 0, 0),
(33, '3D_Wallpapers/movies/blur/00039_blur.webp', '3D_Wallpapers/movies/thumb/00039_thu.webp', '3D_Wallpapers/movies/zip/00039.zip', 'movies', 9, 0, 0, 0, '', 0, 0),
(34, '3D_Wallpapers/movies/blur/00040_blur.webp', '3D_Wallpapers/movies/thumb/00040_thu.webp', '3D_Wallpapers/movies/zip/00040.zip', 'movies', 9, 0, 0, 0, '', 0, 0),
(35, '3D_Wallpapers/others/blur/00028_blur.webp', '3D_Wallpapers/others/thumb/00028_thu.webp', '3D_Wallpapers/others/zip/00028.zip', 'others', 6, 545, 3636, 0, '#one eye #blue', 0, 0),
(36, '3D_Wallpapers/others/blur/00037_blur.webp', '3D_Wallpapers/others/thumb/00037_thu.webp', '3D_Wallpapers/others/zip/00037.zip', 'others', 6, 882, 12169, 0, '#money', 0, 1),
(37, '3D_Wallpapers/others/blur/00041_blur.webp', '3D_Wallpapers/others/thumb/00041_thu.webp', '3D_Wallpapers/others/zip/00041.zip', 'others', 6, 886, 9803, 0, '#man #buildings', 0, 1),
(38, '3D_Wallpapers/others/blur/00042_blur.webp', '3D_Wallpapers/others/thumb/00042_thu.webp', '3D_Wallpapers/others/zip/00042.zip', 'others', 6, 1215, 9981, 0, '#man #buildings', 0, 1),
(39, '3D_Wallpapers/space/blur/00012_blur.webp', '3D_Wallpapers/space/thumb/00012_thu.webp', '3D_Wallpapers/space/zip/00012.zip', 'space', 20, 1716, 12363, 0, '#spaceship #scientist', 0, 1),
(40, '3D_Wallpapers/underwater/blur/00004_blur.webp', '3D_Wallpapers/underwater/thumb/00004_thu.webp', '3D_Wallpapers/underwater/zip/00004.zip', 'underwater', 6, 1175, 16530, 0, '#fish #water #grass', 0, 0),
(41, '3D_Wallpapers/underwater/blur/00014_blur.webp', '3D_Wallpapers/underwater/thumb/00014_thu.webp', '3D_Wallpapers/underwater/zip/00014.zip', 'underwater', 6, 629, 5480, 0, '#rabbit', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `show` tinyint(4) NOT NULL DEFAULT 1,
  `type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `thumbnail`, `show`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Car', 'Categories_thumbnail/Car.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(2, 'Mountain', 'Categories_thumbnail/Mountain.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(3, 'Nature', 'Categories_thumbnail/Nature.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(4, 'Dark', 'Categories_thumbnail/Dark.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(5, 'Candle', 'Categories_thumbnail/Candle.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(6, 'Other', 'Categories_thumbnail/Other.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(8, 'Anime', 'Categories_thumbnail/Anime.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(9, 'Entertainment', 'Categories_thumbnail/Entertainment.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(10, 'Game', 'Categories_thumbnail/Game.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(11, 'Love', 'Categories_thumbnail/Game.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(12, 'Pattern', 'Categories_thumbnail/Pattern.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(13, 'Quote', 'Categories_thumbnail/Quote.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(14, 'Technology', 'Categories_thumbnail/Technology.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(15, 'Flower', 'Categories_thumbnail/Flower.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(16, 'Fairy', 'Categories_thumbnail/Fairy.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(17, 'Character', 'Categories_thumbnail/Character.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(18, 'Skull', 'Categories_thumbnail/Skull.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(19, 'Interior', 'Categories_thumbnail/Interior.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(20, 'Galaxy', 'Categories_thumbnail/Galaxy.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(21, 'Animal', 'Categories_thumbnail/Animal.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(22, 'Halloween', 'Categories_thumbnail/Halloween.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(23, 'Winter', 'Categories_thumbnail/Animal.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(24, 'Christmas', 'Categories_thumbnail/Super_hero.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(25, 'New_Year', 'Categories_thumbnail/Super_hero.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(39, 'Horror', 'Categories_thumbnail/Horror.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(43, 'Neon', 'Categories_thumbnail/Neon.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03'),
(48, 'Super_hero', 'Categories_thumbnail/Super_hero.png', 1, 1, '2024-11-27 08:02:03', '2024-11-27 08:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `four_dwallpapers`
--

CREATE TABLE `four_dwallpapers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `thumbPath` text NOT NULL,
  `no_of_layers` int(11) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `downloads` int(11) DEFAULT 0,
  `effect` int(11) NOT NULL,
  `bg_zoom_speed` int(11) NOT NULL,
  `bg_zoom_intensity` int(11) NOT NULL,
  `background_rotation_xaxis` int(11) NOT NULL,
  `background_rotation_yaxis` int(11) NOT NULL,
  `featured` int(11) NOT NULL DEFAULT 1,
  `tags` text NOT NULL,
  `wp_show` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `four_dwallpapers`
--

INSERT INTO `four_dwallpapers` (`id`, `category_id`, `thumbPath`, `no_of_layers`, `likes`, `downloads`, `effect`, `bg_zoom_speed`, `bg_zoom_intensity`, `background_rotation_xaxis`, `background_rotation_yaxis`, `featured`, `tags`, `wp_show`, `created_at`, `updated_at`) VALUES
(1, 15, '4D_Wallpapers/Flowers/gWBj37OZRQdw9nRIKoWV/flowers_gWBj37OZRQdw9nRIKoWV_thumb.jpg', 2, 977, 901, 5, 1, 2, 5, 2, 1, 'panda', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(2, 14, '4D_Wallpapers/Robots/qJmkqrG48v9ovhi4O3TU/Robots_qJmkqrG48v9ovhi4O3TU_thumb.png', 2, 395, 705, 6, 4, 10, 10, 5, 1, 'robot, 4d, effects', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(3, 14, '4D_Wallpapers/Robots/slsPkMIUd7rGJf0Z2w5Q/Robots_slsPkMIUd7rGJf0Z2w5Q_thumb.png', 2, 747, 897, 5, 1, 10, 10, 5, 1, '4d, robot', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(4, 15, '4D_Wallpapers/Flowers/jCjtwIacPde5zV613AA2/Flowers_jCjtwIacPde5zV613AA2_thumb.png', 2, 745, 380, 5, 2, 10, 10, 5, 1, 'flower, 4d, effects', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(5, 17, '4D_Wallpapers/Super_Heros/TWEn7KCgiehKimulH8hp/Super_Heros_TWEn7KCgiehKimulH8hp_thumb.png', 2, 837, 896, 7, 1, 10, 10, 5, 1, 'super hero, flying, girl', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(6, 8, '4D_Wallpapers/Cartoons/bpNXCHTTKUsDoFl1boua/Cartoons_bpNXCHTTKUsDoFl1boua_thumb.png', 2, 562, 683, 5, 2, 10, 10, 5, 1, 'cartoon, girl, neon', 1, '2024-11-29 01:45:31', '2024-11-29 07:25:22'),
(7, 21, '4D_Wallpapers/Insects/lO7xs94aPeyMRHdA2bp2/Insects_lO7xs94aPeyMRHdA2bp2_thumb.png', 2, 496, 669, 5, 1, 1, 10, 5, 1, 'Bug, insects, red, golden, white, Firozi, Insects', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(8, 17, '4D_Wallpapers/Super_Heros/qHOw0yJpxMeCkhGVj4e6/Super_Heros_qHOw0yJpxMeCkhGVj4e6_thumb.jpg', 5, 66, 70, 4, 2, 1, 4, 5, 1, 'Spider, mountain, green, white, smoke, gun, Super Heros, Super Heros', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(9, 20, '4D_Wallpapers/galaxy/4ncjbaVa6LDCXeZOpWiZ/galaxy_4ncjbaVa6LDCXeZOpWiZ_thumb.png', 3, 112, 36, 9, 1, 1, 10, 5, 1, 'galaxy, space, universe, stars, astronomy, milkyway, moon, galaxy', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(10, 20, '4D_Wallpapers/galaxy/T8jRM9YmXsqDIpSAawCX/galaxy_T8jRM9YmXsqDIpSAawCX_thumb.png', 6, 49, 0, 5, 1, 1, 5, 5, 1, 'galaxy, space, universe, stars, astronomy, milkyway, moon, galaxy', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(11, 8, '4D_Wallpapers/Cartoons/8VCychKwSGRBBhscwJOK/Cartoons_8VCychKwSGRBBhscwJOK_thumb.png', 2, 44, 0, 5, 1, 3, 10, 5, 1, 'doll, girl, cartoon, pretty, Cartoons', 1, '2024-11-29 01:45:31', '2024-11-29 07:19:18'),
(12, 21, '4D_Wallpapers/Animals/fPKI4ViefGplCHh7Nbzo/Animals_fPKI4ViefGplCHh7Nbzo_thumb.png', 2, 17, 0, 8, 1, 10, 10, 5, 1, 'monkey, skiting, road, animal, Animals', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(13, 21, '4D_Wallpapers/Animals/q5X4rSBFn8E7kpObf18M/Animals_q5X4rSBFn8E7kpObf18M_thumb.png', 2, 19, 0, 5, 1, 1, 10, 5, 1, 'dog, animal, pet, street, Animals', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(14, 17, '4D_Wallpapers/Super_Heros/Er4t25Ku2O3FnSMZX2q4/Super_Heros_Er4t25Ku2O3FnSMZX2q4_thumb.png', 2, 37, 0, 4, 1, 10, 10, 5, 1, 'girl, super hero, pretty, Super Heros', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(15, 20, '4D_Wallpapers/galaxy/e5W4FwmFaBbTIRalIZv5/galaxy_e5W4FwmFaBbTIRalIZv5_thumb.png', 2, 22, 0, 5, 1, 10, 10, 5, 1, 'astronaut, galaxy', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(16, 12, '4D_Wallpapers/Neons/AGvdVMsCnlDYSV2FPqpe/Neons_AGvdVMsCnlDYSV2FPqpe_thumb.png', 2, 73, 0, 5, 1, 10, 10, 5, 1, 'neon, attractive, Neons', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(17, 21, '4D_Wallpapers/Animals/cBk8EyNPM2hKPCNdkboE/Birds_cBk8EyNPM2hKPCNdkboE_thumb.png', 2, 33, 0, 4, 2, 10, 10, 5, 1, 'owl, birds, fantasy, Birds', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(18, 21, '4D_Wallpapers/Animals/0ND9rzsmdPIBGD8ExvfT/Animals_0ND9rzsmdPIBGD8ExvfT_thumb.png', 2, 20, 0, 5, 1, 10, 10, 5, 1, 'snail, animal, shell, eyes, forest, Animals', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(19, 8, '4D_Wallpapers/Cartoons/AocaRX1DT19IPfUg65pb/Cartoons_AocaRX1DT19IPfUg65pb_thumb.png', 2, 37, 0, 6, 1, 10, 10, 5, 1, 'girl, cartoon, pretty, Cartoons', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(20, 21, '4D_Wallpapers/Animals/BPJkydvGsfSPKY28k4UY/Animals_BPJkydvGsfSPKY28k4UY_thumb.png', 2, 64, 0, 7, 1, 10, 7, 2, 1, 'dolphin, fish, animal, sea, water, Animals', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(21, 17, '4D_Wallpapers/Super_Heros/xZc3CrBlZtirD0wYqiib/Super_Heros_xZc3CrBlZtirD0wYqiib_thumb.png', 2, 19, 0, 7, 2, 10, 10, 5, 1, 'superhero, super, Super Heros', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(22, 15, '4D_Wallpapers/Flowers/3xtLNQ4dsOwlj59rAQra/Flowers_3xtLNQ4dsOwlj59rAQra_thumb.png', 2, 83, 0, 9, 2, 10, 10, 5, 1, 'flower, colorful, nature, Flowers', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(23, 20, '4D_Wallpapers/galaxy/RzzBv2oLhk2DEmgLP2QB/galaxy_RzzBv2oLhk2DEmgLP2QB_thumb.png', 2, 52, 0, 8, 2, 10, 5, 3, 1, 'galaxy, sky, dark, night, galaxy', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(24, 37, 'Animes_lYgVfg0jdNJ9i2rm7Dt8_thumb.png', 2, 25, 0, 5, 1, 5, 10, 5, 1, 'animes, anime, boy, Animes', 1, '2024-11-29 01:45:31', '2024-11-29 01:45:31'),
(25, 8, '4D_Wallpapers/Cartoons/NSG6gqAd9nrp5OeYSIml/Cartoons_NSG6gqAd9nrp5OeYSIml_thumb.png', 2, 12, 0, 5, 1, 2, 10, 5, 1, 'cartoon, mouse, skiting, snow, Cartoons', 1, '2024-11-29 01:45:32', '2024-11-29 01:45:32'),
(26, 8, '4D_Wallpapers/Cartoons/lSSylk8JVlJufAMP6XIc/Cartoons_lSSylk8JVlJufAMP6XIc_thumb.png', 2, 9, 0, 5, 1, 10, 10, 5, 1, 'winter, snowman, snow, cartoon, Cartoons', 1, '2024-11-29 01:45:32', '2024-11-29 01:45:32'),
(27, 8, '4D_Wallpapers/Cartoons/0vt1uTCn60Lm9UR3rxFx/Cartoons_0vt1uTCn60Lm9UR3rxFx_thumb.png', 2, 17, 0, 7, 1, 10, 10, 5, 1, 'winter, snow, snowman, cartoon, Cartoons', 1, '2024-11-29 01:45:32', '2024-11-29 01:45:32'),
(28, 8, '4D_Wallpapers/Cartoons/GQHPVgIeMCZcsaRNLTcf/Cartoons_GQHPVgIeMCZcsaRNLTcf_thumb.png', 2, 12, 0, 7, 1, 10, 10, 5, 1, 'winter, snow, snowman, Cartoons', 1, '2024-11-29 01:45:32', '2024-11-29 01:45:32'),
(29, 24, '4D_Wallpapers/Christmas/OOAawIQHtOjdUPknc115/Christmas_OOAawIQHtOjdUPknc115_thumb.png', 2, 14, 0, 5, 1, 8, 10, 5, 1, 'santa, christmas, happy, happy christmas, Christmas 123 ', 1, '2024-11-29 01:45:32', '2024-11-29 01:45:32'),
(30, 8, '4D_Wallpapers/Cartoons/5fmFjCmk0bUsvm6RB7Ay/Cartoons_5fmFjCmk0bUsvm6RB7Ay_thumb.png', 2, 13, 0, 5, 1, 10, 10, 5, 1, 'christmas, happy, happy christmas, december, snow, snowman, Cartoons', 1, '2024-11-29 01:45:32', '2024-11-29 01:45:32'),
(31, 24, '4D_Wallpapers/Christmas/SWWLVCFhVRCzxUt6aCzB/Christmas_SWWLVCFhVRCzxUt6aCzB_thumb.png', 2, 7, 1, 5, 1, 10, 10, 5, 1, 'christmas, happy, happy christmas, december, santa, christmasgift, gift, Christmas 123 ', 1, '2024-11-29 01:45:32', '2024-11-29 01:45:32'),
(32, 4, '4D_Wallpapers/black/lD9pvC4T3RrfBIlPby4W/black_lD9pvC4T3RrfBIlPby4W_thumb.png', 2, 30, 0, 5, 1, 10, 10, 5, 1, 'coffee, coffee beans, cup, coffeetime, black, black', 1, '2024-11-29 01:45:32', '2024-11-29 01:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `four_d_images`
--

CREATE TABLE `four_d_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wallpaper_id` bigint(20) UNSIGNED NOT NULL,
  `img_path` text NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `four_d_images`
--

INSERT INTO `four_d_images` (`id`, `wallpaper_id`, `img_path`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, '4D_Wallpapers/flowers/gWBj37OZRQdw9nRIKoWV/flowers_gWBj37OZRQdw9nRIKoWV_img_0.png', 2, '2024-11-29 07:14:43', '2024-11-29 07:14:43'),
(2, 1, '4D_Wallpapers/flowers/gWBj37OZRQdw9nRIKoWV/flowers_gWBj37OZRQdw9nRIKoWV_img_1.png', 2, '2024-11-29 07:14:43', '2024-11-29 07:14:43'),
(3, 1, '4D_Wallpapers/Robots/qJmkqrG48v9ovhi4O3TU/Robots_qJmkqrG48v9ovhi4O3TU_img_0.png', 2, '2024-11-29 07:14:43', '2024-11-29 07:14:43'),
(4, 1, '4D_Wallpapers/Robots/qJmkqrG48v9ovhi4O3TU/Robots_qJmkqrG48v9ovhi4O3TU_img_1.png', 2, '2024-11-29 07:14:43', '2024-11-29 07:14:43'),
(5, 1, '4D_Wallpapers/Robots/slsPkMIUd7rGJf0Z2w5Q/Robots_slsPkMIUd7rGJf0Z2w5Q_img_0.png', 2, '2024-11-29 07:14:43', '2024-11-29 07:14:43'),
(6, 1, '4D_Wallpapers/Robots/slsPkMIUd7rGJf0Z2w5Q/Robots_slsPkMIUd7rGJf0Z2w5Q_img_1.png', 2, '2024-11-29 07:14:43', '2024-11-29 07:14:43'),
(7, 1, '4D_Wallpapers/Flowers/jCjtwIacPde5zV613AA2/Flowers_jCjtwIacPde5zV613AA2_img_0.png', 2, '2024-11-29 07:14:43', '2024-11-29 07:14:43'),
(8, 1, '4D_Wallpapers/Flowers/jCjtwIacPde5zV613AA2/Flowers_jCjtwIacPde5zV613AA2_img_1.png', 2, '2024-11-29 07:14:43', '2024-11-29 07:14:43'),
(9, 1, '4D_Wallpapers/Super_Heros/TWEn7KCgiehKimulH8hp/Super_Heros_TWEn7KCgiehKimulH8hp_img_0.png', 2, '2024-11-29 07:14:43', '2024-11-29 07:14:43'),
(10, 1, '4D_Wallpapers/Super_Heros/TWEn7KCgiehKimulH8hp/Super_Heros_TWEn7KCgiehKimulH8hp_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(11, 1, '4D_Wallpapers/Cartoons/bpNXCHTTKUsDoFl1boua/Cartoons_bpNXCHTTKUsDoFl1boua_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(12, 1, '4D_Wallpapers/Cartoons/bpNXCHTTKUsDoFl1boua/Cartoons_bpNXCHTTKUsDoFl1boua_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(13, 1, '4D_Wallpapers/Insects/lO7xs94aPeyMRHdA2bp2/Insects_lO7xs94aPeyMRHdA2bp2_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(14, 1, '4D_Wallpapers/Insects/lO7xs94aPeyMRHdA2bp2/Insects_lO7xs94aPeyMRHdA2bp2_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(15, 1, '4D_Wallpapers/Super_Heros/qHOw0yJpxMeCkhGVj4e6/Super_Heros_qHOw0yJpxMeCkhGVj4e6_img_0.png', 5, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(16, 1, '4D_Wallpapers/Super_Heros/qHOw0yJpxMeCkhGVj4e6/Super_Heros_qHOw0yJpxMeCkhGVj4e6_img_1.png', 5, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(17, 1, '4D_Wallpapers/Super_Heros/qHOw0yJpxMeCkhGVj4e6/Super_Heros_qHOw0yJpxMeCkhGVj4e6_img_2.png', 5, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(18, 1, '4D_Wallpapers/Super_Heros/qHOw0yJpxMeCkhGVj4e6/Super_Heros_qHOw0yJpxMeCkhGVj4e6_img_3.png', 5, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(19, 1, '4D_Wallpapers/Super_Heros/qHOw0yJpxMeCkhGVj4e6/Super_Heros_qHOw0yJpxMeCkhGVj4e6_img_4.png', 5, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(20, 1, '4D_Wallpapers/galaxy/4ncjbaVa6LDCXeZOpWiZ/galaxy_4ncjbaVa6LDCXeZOpWiZ_img_0.png', 3, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(21, 1, '4D_Wallpapers/galaxy/4ncjbaVa6LDCXeZOpWiZ/galaxy_4ncjbaVa6LDCXeZOpWiZ_img_1.png', 3, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(22, 1, '4D_Wallpapers/galaxy/4ncjbaVa6LDCXeZOpWiZ/galaxy_4ncjbaVa6LDCXeZOpWiZ_img_2.png', 3, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(23, 1, '4D_Wallpapers/galaxy/T8jRM9YmXsqDIpSAawCX/galaxy_T8jRM9YmXsqDIpSAawCX_img_0.png', 6, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(24, 1, '4D_Wallpapers/galaxy/T8jRM9YmXsqDIpSAawCX/galaxy_T8jRM9YmXsqDIpSAawCX_img_1.png', 6, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(25, 1, '4D_Wallpapers/galaxy/T8jRM9YmXsqDIpSAawCX/galaxy_T8jRM9YmXsqDIpSAawCX_img_2.png', 6, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(26, 1, '4D_Wallpapers/galaxy/T8jRM9YmXsqDIpSAawCX/galaxy_T8jRM9YmXsqDIpSAawCX_img_3.png', 6, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(27, 1, '4D_Wallpapers/galaxy/T8jRM9YmXsqDIpSAawCX/galaxy_T8jRM9YmXsqDIpSAawCX_img_4.png', 6, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(28, 1, '4D_Wallpapers/galaxy/T8jRM9YmXsqDIpSAawCX/galaxy_T8jRM9YmXsqDIpSAawCX_img_5.png', 6, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(29, 1, '4D_Wallpapers/Cartoons/8VCychKwSGRBBhscwJOK/Cartoons_8VCychKwSGRBBhscwJOK_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(30, 1, '4D_Wallpapers/Cartoons/8VCychKwSGRBBhscwJOK/Cartoons_8VCychKwSGRBBhscwJOK_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(31, 1, '4D_Wallpapers/Animals/fPKI4ViefGplCHh7Nbzo/Animals_fPKI4ViefGplCHh7Nbzo_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(32, 1, '4D_Wallpapers/Animals/fPKI4ViefGplCHh7Nbzo/Animals_fPKI4ViefGplCHh7Nbzo_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(33, 1, '4D_Wallpapers/Animals/q5X4rSBFn8E7kpObf18M/Animals_q5X4rSBFn8E7kpObf18M_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(34, 1, '4D_Wallpapers/Animals/q5X4rSBFn8E7kpObf18M/Animals_q5X4rSBFn8E7kpObf18M_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(35, 1, '4D_Wallpapers/Super_Heros/Er4t25Ku2O3FnSMZX2q4/Super_Heros_Er4t25Ku2O3FnSMZX2q4_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(36, 1, '4D_Wallpapers/Super_Heros/Er4t25Ku2O3FnSMZX2q4/Super_Heros_Er4t25Ku2O3FnSMZX2q4_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(37, 1, '4D_Wallpapers/galaxy/e5W4FwmFaBbTIRalIZv5/galaxy_e5W4FwmFaBbTIRalIZv5_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(38, 1, '4D_Wallpapers/galaxy/e5W4FwmFaBbTIRalIZv5/galaxy_e5W4FwmFaBbTIRalIZv5_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(39, 1, '4D_Wallpapers/Neons/AGvdVMsCnlDYSV2FPqpe/Neons_AGvdVMsCnlDYSV2FPqpe_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(40, 1, '4D_Wallpapers/Neons/AGvdVMsCnlDYSV2FPqpe/Neons_AGvdVMsCnlDYSV2FPqpe_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(41, 1, '4D_Wallpapers/Animals/cBk8EyNPM2hKPCNdkboE/Birds_cBk8EyNPM2hKPCNdkboE_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(42, 1, '4D_Wallpapers/Animals/cBk8EyNPM2hKPCNdkboE/Birds_cBk8EyNPM2hKPCNdkboE_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(43, 1, '4D_Wallpapers/Animals/0ND9rzsmdPIBGD8ExvfT/Animals_0ND9rzsmdPIBGD8ExvfT_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(44, 1, '4D_Wallpapers/Animals/0ND9rzsmdPIBGD8ExvfT/Animals_0ND9rzsmdPIBGD8ExvfT_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(45, 1, '4D_Wallpapers/Cartoons/AocaRX1DT19IPfUg65pb/Cartoons_AocaRX1DT19IPfUg65pb_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(46, 1, '4D_Wallpapers/Cartoons/AocaRX1DT19IPfUg65pb/Cartoons_AocaRX1DT19IPfUg65pb_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(47, 1, '4D_Wallpapers/Animals/BPJkydvGsfSPKY28k4UY/Animals_BPJkydvGsfSPKY28k4UY_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(48, 1, '4D_Wallpapers/Animals/BPJkydvGsfSPKY28k4UY/Animals_BPJkydvGsfSPKY28k4UY_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(49, 1, '4D_Wallpapers/Super_Heros/xZc3CrBlZtirD0wYqiib/Super_Heros_xZc3CrBlZtirD0wYqiib_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(50, 1, '4D_Wallpapers/Super_Heros/xZc3CrBlZtirD0wYqiib/Super_Heros_xZc3CrBlZtirD0wYqiib_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(51, 1, '4D_Wallpapers/Flowers/3xtLNQ4dsOwlj59rAQra/Flowers_3xtLNQ4dsOwlj59rAQra_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(52, 1, '4D_Wallpapers/Flowers/3xtLNQ4dsOwlj59rAQra/Flowers_3xtLNQ4dsOwlj59rAQra_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(53, 1, '4D_Wallpapers/galaxy/RzzBv2oLhk2DEmgLP2QB/galaxy_RzzBv2oLhk2DEmgLP2QB_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(54, 1, '4D_Wallpapers/galaxy/RzzBv2oLhk2DEmgLP2QB/galaxy_RzzBv2oLhk2DEmgLP2QB_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(55, 1, '4D_Wallpapers/Animes/lYgVfg0jdNJ9i2rm7Dt8/Animes_lYgVfg0jdNJ9i2rm7Dt8_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(56, 1, '4D_Wallpapers/Animes/lYgVfg0jdNJ9i2rm7Dt8/Animes_lYgVfg0jdNJ9i2rm7Dt8_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(57, 1, '4D_Wallpapers/Cartoons/NSG6gqAd9nrp5OeYSIml/Cartoons_NSG6gqAd9nrp5OeYSIml_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(58, 1, '4D_Wallpapers/Cartoons/NSG6gqAd9nrp5OeYSIml/Cartoons_NSG6gqAd9nrp5OeYSIml_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(59, 1, '4D_Wallpapers/Cartoons/lSSylk8JVlJufAMP6XIc/Cartoons_lSSylk8JVlJufAMP6XIc_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(60, 1, '4D_Wallpapers/Cartoons/lSSylk8JVlJufAMP6XIc/Cartoons_lSSylk8JVlJufAMP6XIc_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(61, 1, '4D_Wallpapers/Cartoons/0vt1uTCn60Lm9UR3rxFx/Cartoons_0vt1uTCn60Lm9UR3rxFx_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(62, 1, '4D_Wallpapers/Cartoons/0vt1uTCn60Lm9UR3rxFx/Cartoons_0vt1uTCn60Lm9UR3rxFx_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(63, 1, '4D_Wallpapers/Cartoons/GQHPVgIeMCZcsaRNLTcf/Cartoons_GQHPVgIeMCZcsaRNLTcf_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(64, 1, '4D_Wallpapers/Cartoons/GQHPVgIeMCZcsaRNLTcf/Cartoons_GQHPVgIeMCZcsaRNLTcf_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(65, 1, '4D_Wallpapers/Christmas/OOAawIQHtOjdUPknc115/Christmas_OOAawIQHtOjdUPknc115_img_0.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(66, 1, '4D_Wallpapers/Christmas/OOAawIQHtOjdUPknc115/Christmas_OOAawIQHtOjdUPknc115_img_1.png', 2, '2024-11-29 07:14:44', '2024-11-29 07:14:44'),
(67, 1, '4D_Wallpapers/Cartoons/5fmFjCmk0bUsvm6RB7Ay/Cartoons_5fmFjCmk0bUsvm6RB7Ay_img_0.png', 2, '2024-11-29 07:14:45', '2024-11-29 07:14:45'),
(68, 1, '4D_Wallpapers/Cartoons/5fmFjCmk0bUsvm6RB7Ay/Cartoons_5fmFjCmk0bUsvm6RB7Ay_img_1.png', 2, '2024-11-29 07:14:45', '2024-11-29 07:14:45'),
(69, 1, '4D_Wallpapers/Christmas/SWWLVCFhVRCzxUt6aCzB/Christmas_SWWLVCFhVRCzxUt6aCzB_img_0.png', 2, '2024-11-29 07:14:45', '2024-11-29 07:14:45'),
(70, 1, '4D_Wallpapers/Christmas/SWWLVCFhVRCzxUt6aCzB/Christmas_SWWLVCFhVRCzxUt6aCzB_img_1.png', 2, '2024-11-29 07:14:45', '2024-11-29 07:14:45'),
(71, 1, '4D_Wallpapers/black/lD9pvC4T3RrfBIlPby4W/black_lD9pvC4T3RrfBIlPby4W_img_0.png', 2, '2024-11-29 07:14:45', '2024-11-29 07:14:45'),
(72, 1, '4D_Wallpapers/black/lD9pvC4T3RrfBIlPby4W/black_lD9pvC4T3RrfBIlPby4W_img_1.png', 2, '2024-11-29 07:14:45', '2024-11-29 07:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `masks`
--

CREATE TABLE `masks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wallpaper_id` bigint(20) UNSIGNED NOT NULL,
  `mask_path` text NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `masks`
--

INSERT INTO `masks` (`id`, `wallpaper_id`, `mask_path`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, '4D_Wallpapers/flowers/gWBj37OZRQdw9nRIKoWV/flowers_gWBj37OZRQdw9nRIKoWV_mask_0.png', 2, '2024-11-29 06:03:13', '2024-11-29 06:03:13'),
(2, 1, '4D_Wallpapers/flowers/gWBj37OZRQdw9nRIKoWV/flowers_gWBj37OZRQdw9nRIKoWV_mask_1.png', 2, '2024-11-29 06:03:13', '2024-11-29 06:03:13'),
(3, 2, '4D_Wallpapers/Robots/qJmkqrG48v9ovhi4O3TU/Robots_qJmkqrG48v9ovhi4O3TU_mask_0.png', 2, '2024-11-29 06:03:13', '2024-11-29 06:03:13'),
(4, 2, '4D_Wallpapers/Robots/qJmkqrG48v9ovhi4O3TU/Robots_qJmkqrG48v9ovhi4O3TU_mask_1.png', 2, '2024-11-29 06:03:13', '2024-11-29 06:03:13'),
(5, 1, '4D_Wallpapers/Robots/slsPkMIUd7rGJf0Z2w5Q/Robots_slsPkMIUd7rGJf0Z2w5Q_mask_0.png', 2, '2024-11-29 06:03:13', '2024-11-29 06:03:13'),
(6, 3, '4D_Wallpapers/Robots/slsPkMIUd7rGJf0Z2w5Q/Robots_slsPkMIUd7rGJf0Z2w5Q_mask_1.png', 2, '2024-11-29 06:03:13', '2024-11-29 06:03:13'),
(7, 4, '4D_Wallpapers/Flowers/jCjtwIacPde5zV613AA2/Flowers_jCjtwIacPde5zV613AA2_mask_0.png', 2, '2024-11-29 06:03:13', '2024-11-29 06:03:13'),
(8, 4, '4D_Wallpapers/Flowers/jCjtwIacPde5zV613AA2/Flowers_jCjtwIacPde5zV613AA2_mask_1.png', 2, '2024-11-29 06:03:13', '2024-11-29 06:03:13'),
(9, 5, '4D_Wallpapers/Super_Heros/TWEn7KCgiehKimulH8hp/Super_Heros_TWEn7KCgiehKimulH8hp_mask_0.png', 2, '2024-11-29 06:03:13', '2024-11-29 06:03:13'),
(10, 5, '4D_Wallpapers/Super_Heros/TWEn7KCgiehKimulH8hp/Super_Heros_TWEn7KCgiehKimulH8hp_mask_1.png', 2, '2024-11-29 06:03:13', '2024-11-29 06:03:13'),
(11, 6, '4D_Wallpapers/Cartoons/bpNXCHTTKUsDoFl1boua/Cartoons_bpNXCHTTKUsDoFl1boua_mask_0.png', 2, '2024-11-29 06:03:13', '2024-11-29 06:03:13'),
(12, 6, '4D_Wallpapers/Cartoons/bpNXCHTTKUsDoFl1boua/Cartoons_bpNXCHTTKUsDoFl1boua_mask_1.png', 2, '2024-11-29 06:03:13', '2024-11-29 06:03:13'),
(13, 7, '4D_Wallpapers/Insects/lO7xs94aPeyMRHdA2bp2/Insects_lO7xs94aPeyMRHdA2bp2_mask_0.png', 2, '2024-11-29 06:03:13', '2024-11-29 06:03:13'),
(14, 7, '4D_Wallpapers/Insects/lO7xs94aPeyMRHdA2bp2/Insects_lO7xs94aPeyMRHdA2bp2_mask_1.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(15, 8, '4D_Wallpapers/Super_Heros/qHOw0yJpxMeCkhGVj4e6/Super_Heros_qHOw0yJpxMeCkhGVj4e6_mask_0.png', 5, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(16, 8, '4D_Wallpapers/Super_Heros/qHOw0yJpxMeCkhGVj4e6/Super_Heros_qHOw0yJpxMeCkhGVj4e6_mask_1.png', 5, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(17, 8, '4D_Wallpapers/Super_Heros/qHOw0yJpxMeCkhGVj4e6/Super_Heros_qHOw0yJpxMeCkhGVj4e6_mask_2.png', 5, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(18, 8, '4D_Wallpapers/Super_Heros/qHOw0yJpxMeCkhGVj4e6/Super_Heros_qHOw0yJpxMeCkhGVj4e6_mask_3.png', 5, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(19, 8, '4D_Wallpapers/Super_Heros/qHOw0yJpxMeCkhGVj4e6/Super_Heros_qHOw0yJpxMeCkhGVj4e6_mask_4.png', 5, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(20, 9, '4D_Wallpapers/galaxy/4ncjbaVa6LDCXeZOpWiZ/galaxy_4ncjbaVa6LDCXeZOpWiZ_mask_0.png', 3, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(21, 9, '4D_Wallpapers/galaxy/4ncjbaVa6LDCXeZOpWiZ/galaxy_4ncjbaVa6LDCXeZOpWiZ_mask_1.png', 3, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(22, 9, '4D_Wallpapers/galaxy/4ncjbaVa6LDCXeZOpWiZ/galaxy_4ncjbaVa6LDCXeZOpWiZ_mask_2.png', 3, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(23, 10, '4D_Wallpapers/galaxy/T8jRM9YmXsqDIpSAawCX/galaxy_T8jRM9YmXsqDIpSAawCX_mask_0.png', 6, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(24, 10, '4D_Wallpapers/galaxy/T8jRM9YmXsqDIpSAawCX/galaxy_T8jRM9YmXsqDIpSAawCX_mask_1.png', 6, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(25, 10, '4D_Wallpapers/galaxy/T8jRM9YmXsqDIpSAawCX/galaxy_T8jRM9YmXsqDIpSAawCX_mask_2.png', 6, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(26, 10, '4D_Wallpapers/galaxy/T8jRM9YmXsqDIpSAawCX/galaxy_T8jRM9YmXsqDIpSAawCX_mask_3.png', 6, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(27, 10, '4D_Wallpapers/galaxy/T8jRM9YmXsqDIpSAawCX/galaxy_T8jRM9YmXsqDIpSAawCX_mask_4.png', 6, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(28, 10, '4D_Wallpapers/galaxy/T8jRM9YmXsqDIpSAawCX/galaxy_T8jRM9YmXsqDIpSAawCX_mask_5.png', 6, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(29, 11, '4D_Wallpapers/Cartoons/8VCychKwSGRBBhscwJOK/Cartoons_8VCychKwSGRBBhscwJOK_mask_0.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(30, 11, '4D_Wallpapers/Cartoons/8VCychKwSGRBBhscwJOK/Cartoons_8VCychKwSGRBBhscwJOK_mask_1.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(31, 12, '4D_Wallpapers/Animals/fPKI4ViefGplCHh7Nbzo/Animals_fPKI4ViefGplCHh7Nbzo_mask_0.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(32, 12, '4D_Wallpapers/Animals/fPKI4ViefGplCHh7Nbzo/Animals_fPKI4ViefGplCHh7Nbzo_mask_1.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(33, 13, '4D_Wallpapers/Animals/q5X4rSBFn8E7kpObf18M/Animals_q5X4rSBFn8E7kpObf18M_mask_0.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(34, 13, '4D_Wallpapers/Animals/q5X4rSBFn8E7kpObf18M/Animals_q5X4rSBFn8E7kpObf18M_mask_1.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(35, 14, '4D_Wallpapers/Super_Heros/Er4t25Ku2O3FnSMZX2q4/Super_Heros_Er4t25Ku2O3FnSMZX2q4_mask_0.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(36, 14, '4D_Wallpapers/Super_Heros/Er4t25Ku2O3FnSMZX2q4/Super_Heros_Er4t25Ku2O3FnSMZX2q4_mask_1.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(37, 15, '4D_Wallpapers/galaxy/e5W4FwmFaBbTIRalIZv5/galaxy_e5W4FwmFaBbTIRalIZv5_mask_0.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(38, 15, '4D_Wallpapers/galaxy/e5W4FwmFaBbTIRalIZv5/galaxy_e5W4FwmFaBbTIRalIZv5_mask_1.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(39, 16, '4D_Wallpapers/Neons/AGvdVMsCnlDYSV2FPqpe/Neons_AGvdVMsCnlDYSV2FPqpe_mask_0.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(40, 16, '4D_Wallpapers/Neons/AGvdVMsCnlDYSV2FPqpe/Neons_AGvdVMsCnlDYSV2FPqpe_mask_1.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(41, 17, '4D_Wallpapers/Animals/cBk8EyNPM2hKPCNdkboE/Birds_cBk8EyNPM2hKPCNdkboE_mask_0.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(42, 17, '4D_Wallpapers/Animals/cBk8EyNPM2hKPCNdkboE/Birds_cBk8EyNPM2hKPCNdkboE_mask_1.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(43, 18, '4D_Wallpapers/Animals/0ND9rzsmdPIBGD8ExvfT/Animals_0ND9rzsmdPIBGD8ExvfT_mask_0.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(44, 18, '4D_Wallpapers/Animals/0ND9rzsmdPIBGD8ExvfT/Animals_0ND9rzsmdPIBGD8ExvfT_mask_1.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(45, 19, '4D_Wallpapers/Cartoons/AocaRX1DT19IPfUg65pb/Cartoons_AocaRX1DT19IPfUg65pb_mask_0.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(46, 19, '4D_Wallpapers/Cartoons/AocaRX1DT19IPfUg65pb/Cartoons_AocaRX1DT19IPfUg65pb_mask_1.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(47, 20, '4D_Wallpapers/Animals/BPJkydvGsfSPKY28k4UY/Animals_BPJkydvGsfSPKY28k4UY_mask_0.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(48, 20, '4D_Wallpapers/Animals/BPJkydvGsfSPKY28k4UY/Animals_BPJkydvGsfSPKY28k4UY_mask_1.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(49, 21, '4D_Wallpapers/Super_Heros/xZc3CrBlZtirD0wYqiib/Super_Heros_xZc3CrBlZtirD0wYqiib_mask_0.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(50, 21, '4D_Wallpapers/Super_Heros/xZc3CrBlZtirD0wYqiib/Super_Heros_xZc3CrBlZtirD0wYqiib_mask_1.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(51, 22, '4D_Wallpapers/Flowers/3xtLNQ4dsOwlj59rAQra/Flowers_3xtLNQ4dsOwlj59rAQra_mask_0.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(52, 22, '4D_Wallpapers/Flowers/3xtLNQ4dsOwlj59rAQra/Flowers_3xtLNQ4dsOwlj59rAQra_mask_1.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(53, 23, '4D_Wallpapers/galaxy/RzzBv2oLhk2DEmgLP2QB/galaxy_RzzBv2oLhk2DEmgLP2QB_mask_0.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(54, 23, '4D_Wallpapers/galaxy/RzzBv2oLhk2DEmgLP2QB/galaxy_RzzBv2oLhk2DEmgLP2QB_mask_1.png', 2, '2024-11-29 06:03:14', '2024-11-29 06:03:14'),
(55, 24, '4D_Wallpapers/Animes/lYgVfg0jdNJ9i2rm7Dt8/Animes_lYgVfg0jdNJ9i2rm7Dt8_mask_0.png', 2, '2024-11-29 06:03:15', '2024-11-29 06:03:15'),
(56, 24, '4D_Wallpapers/Animes/lYgVfg0jdNJ9i2rm7Dt8/Animes_lYgVfg0jdNJ9i2rm7Dt8_mask_1.png', 2, '2024-11-29 06:03:15', '2024-11-29 06:03:15'),
(57, 25, '4D_Wallpapers/Cartoons/NSG6gqAd9nrp5OeYSIml/Cartoons_NSG6gqAd9nrp5OeYSIml_mask_0.png', 2, '2024-11-29 06:03:15', '2024-11-29 06:03:15'),
(58, 25, '4D_Wallpapers/Cartoons/NSG6gqAd9nrp5OeYSIml/Cartoons_NSG6gqAd9nrp5OeYSIml_mask_1.png', 2, '2024-11-29 06:03:15', '2024-11-29 06:03:15'),
(59, 26, '4D_Wallpapers/Cartoons/lSSylk8JVlJufAMP6XIc/Cartoons_lSSylk8JVlJufAMP6XIc_mask_0.png', 2, '2024-11-29 06:03:15', '2024-11-29 06:03:15'),
(60, 26, '4D_Wallpapers/Cartoons/lSSylk8JVlJufAMP6XIc/Cartoons_lSSylk8JVlJufAMP6XIc_mask_1.png', 2, '2024-11-29 06:03:15', '2024-11-29 06:03:15'),
(61, 27, '4D_Wallpapers/Cartoons/0vt1uTCn60Lm9UR3rxFx/Cartoons_0vt1uTCn60Lm9UR3rxFx_mask_0.png', 2, '2024-11-29 06:03:15', '2024-11-29 06:03:15'),
(62, 27, '4D_Wallpapers/Cartoons/0vt1uTCn60Lm9UR3rxFx/Cartoons_0vt1uTCn60Lm9UR3rxFx_mask_1.png', 2, '2024-11-29 06:03:15', '2024-11-29 06:03:15'),
(63, 28, '4D_Wallpapers/Cartoons/GQHPVgIeMCZcsaRNLTcf/Cartoons_GQHPVgIeMCZcsaRNLTcf_mask_0.png', 2, '2024-11-29 06:03:15', '2024-11-29 06:03:15'),
(64, 28, '4D_Wallpapers/Cartoons/GQHPVgIeMCZcsaRNLTcf/Cartoons_GQHPVgIeMCZcsaRNLTcf_mask_1.png', 2, '2024-11-29 06:03:15', '2024-11-29 06:03:15'),
(65, 29, '4D_Wallpapers/Christmas/OOAawIQHtOjdUPknc115/Christmas_OOAawIQHtOjdUPknc115_mask_0.png', 2, '2024-11-29 06:03:15', '2024-11-29 06:03:15'),
(66, 29, '4D_Wallpapers/Christmas/OOAawIQHtOjdUPknc115/Christmas_OOAawIQHtOjdUPknc115_mask_1.png', 2, '2024-11-29 06:03:15', '2024-11-29 06:03:15'),
(67, 30, '4D_Wallpapers/Cartoons/5fmFjCmk0bUsvm6RB7Ay/Cartoons_5fmFjCmk0bUsvm6RB7Ay_mask_0.png', 2, '2024-11-29 06:03:15', '2024-11-29 06:03:15'),
(68, 30, '4D_Wallpapers/Cartoons/5fmFjCmk0bUsvm6RB7Ay/Cartoons_5fmFjCmk0bUsvm6RB7Ay_mask_1.png', 2, '2024-11-29 06:03:15', '2024-11-29 06:03:15'),
(69, 31, '4D_Wallpapers/Christmas/SWWLVCFhVRCzxUt6aCzB/Christmas_SWWLVCFhVRCzxUt6aCzB_mask_0.png', 2, '2024-11-29 06:03:15', '2024-11-29 06:03:15'),
(70, 31, '4D_Wallpapers/Christmas/SWWLVCFhVRCzxUt6aCzB/Christmas_SWWLVCFhVRCzxUt6aCzB_mask_1.png', 2, '2024-11-29 06:03:15', '2024-11-29 06:03:15'),
(71, 32, '4D_Wallpapers/black/lD9pvC4T3RrfBIlPby4W/black_lD9pvC4T3RrfBIlPby4W_mask_0.png', 2, '2024-11-29 06:03:15', '2024-11-29 06:03:15'),
(72, 32, '4D_Wallpapers/black/lD9pvC4T3RrfBIlPby4W/black_lD9pvC4T3RrfBIlPby4W_mask_1.png', 2, '2024-11-29 06:03:15', '2024-11-29 06:03:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_12_093836_create_personal_access_tokens_table', 1),
(5, '2024_11_12_100751_create_static_categories_table', 1),
(7, '2024_11_25_072708_create_categories_table', 2),
(9, '2024_11_26_050508_create_static_wallpapers_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1Zfp8BSHJfpUqq2axYcleBaNsQxoDznZRpUkkYSo', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidnhoWkRyWWlMdjRsSjhONVZPQXBJd3ZhSzlKUzBaaXZrVHlXc1NCbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC80ZC13YWxscGFwZXJzP2NhdGVnb3J5PTgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1733132615);

-- --------------------------------------------------------

--
-- Table structure for table `static_wallpapers`
--

CREATE TABLE `static_wallpapers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img_path` varchar(255) NOT NULL,
  `thumb_path` varchar(255) NOT NULL,
  `blur_path` text NOT NULL,
  `cat_id` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `downloads` int(11) NOT NULL,
  `unlike` int(11) NOT NULL,
  `set_wp` int(11) NOT NULL,
  `hash_tags` varchar(255) NOT NULL,
  `wp_show` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_wallpapers`
--

INSERT INTO `static_wallpapers` (`id`, `img_path`, `thumb_path`, `blur_path`, `cat_id`, `likes`, `downloads`, `unlike`, `set_wp`, `hash_tags`, `wp_show`, `featured`, `created_at`, `updated_at`) VALUES
(2, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7706498.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7706498thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 146, 951, 0, 0, 'pigeons, white, birds', 1, 1, NULL, '2024-11-28 07:58:16'),
(3, 'Static_Wallpapers/Candles/wallpaper/Candle_aigenerated7833232.jpg', 'Static_Wallpapers/Candles/thumb/Candle_aigenerated7833232thu.webp', 'Static_Wallpapers/Candles/blur/', 5, 344, 27, 0, 0, 'cakes, birthday cakes, candles', 1, 1, NULL, '2024-11-26 04:42:24'),
(4, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7733751.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7733751thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 47, 117, 0, 0, 'animals, elephants', 1, 1, NULL, NULL),
(5, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7734270.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7734270thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 233, 734, 0, 0, 'tiger, animals, animated', 1, 1, NULL, NULL),
(6, 'Static_Wallpapers/Candles/wallpaper/Candle_apothecary87VAp.jpg', 'Static_Wallpapers/Candles/thumb/Candle_apothecary87VApthu.webp', 'Static_Wallpapers/Candles/blur/', 5, 49, 12, 0, 0, 'fire, tin, dark', 1, 1, NULL, NULL),
(7, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7734379.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7734379thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 342, 729, 0, 0, 'peacock, birds', 1, 1, NULL, NULL),
(8, 'Static_Wallpapers/Candles/wallpaper/Candle_bokeh4449673.jpg', 'Static_Wallpapers/Candles/thumb/Candle_bokeh4449673thu.webp', 'Static_Wallpapers/Candles/blur/', 5, 580, 31, 0, 0, 'candles, fire, yellow lights', 1, 1, NULL, NULL),
(9, 'Static_Wallpapers/Characters/wallpaper/Character_ai7835213.jpg', 'Static_Wallpapers/Characters/thumb/Character_ai7835213thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 809, 43, 0, 0, 'child, characters, movie characters, beauty, kids', 1, 1, NULL, NULL),
(10, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7734429.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7734429thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 371, 581, 0, 0, 'cats, animals', 1, 1, NULL, NULL),
(11, 'Static_Wallpapers/Candles/wallpaper/Candle_burningcandlecandle.jpg', 'Static_Wallpapers/Candles/thumb/Candle_burningcandlecandlethu.webp', 'Static_Wallpapers/Candles/blur/', 5, 19, 28, 0, 0, 'candles, fire', 1, 1, NULL, NULL),
(12, 'Static_Wallpapers/Characters/wallpaper/Character_aigenerated7700259.jpg', 'Static_Wallpapers/Characters/thumb/Character_aigenerated7700259thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 313, 74, 0, 0, 'movie characters, bat man, black man, characters', 1, 1, NULL, NULL),
(13, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7752089.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7752089thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 365, 863, 0, 0, 'butterfly, animated, insects', 1, 1, NULL, NULL),
(14, 'Static_Wallpapers/Candles/wallpaper/Candle_burningcandles.jpg', 'Static_Wallpapers/Candles/thumb/Candle_burningcandlesthu.webp', 'Static_Wallpapers/Candles/blur/', 5, 251, 59, 0, 0, 'Candles, fire, yellow lights', 1, 1, NULL, NULL),
(15, 'Static_Wallpapers/Entertainment/wallpaper/Entertainment_blackbackground.jpg', 'Static_Wallpapers/Entertainment/thumb/Entertainment_blackbackgroundthu.webp', 'Static_Wallpapers/Entertainment/blur/', 9, 38, 30, 0, 0, 'music, music notes, sounds', 1, 1, NULL, NULL),
(16, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7790712.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7790712thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 220, 454, 0, 0, 'horses, white hourse, animals', 1, 1, NULL, NULL),
(17, 'Static_Wallpapers/Characters/wallpaper/Character_aigenerated7734290.jpg', 'Static_Wallpapers/Characters/thumb/Character_aigenerated7734290thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 185, 95, 0, 0, 'panther, black man, black hat, animated', 1, 1, NULL, NULL),
(18, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7795035.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7795035thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 845, 187, 0, 0, 'owl, birds', 1, 1, NULL, NULL),
(19, 'Static_Wallpapers/Characters/wallpaper/Character_aigenerated7734365.jpg', 'Static_Wallpapers/Characters/thumb/Character_aigenerated7734365thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 178, 64, 0, 0, 'bike riders, dark, characters, animated', 1, 1, NULL, NULL),
(20, 'Static_Wallpapers/Entertainment/wallpaper/Entertainment_colorfulguitarbeach.jpg', 'Static_Wallpapers/Entertainment/thumb/Entertainment_colorfulguitarbeachthu.webp', 'Static_Wallpapers/Entertainment/blur/', 9, 200, 48, 0, 0, 'guitars, music', 1, 1, NULL, NULL),
(21, 'Static_Wallpapers/Fairy/wallpaper/Candle_cake7853576.jpg', 'Static_Wallpapers/Fairy/thumb/Candle_cake7853576thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 210, 91, 0, 0, 'cakes, candles, fire, birthday', 1, 1, NULL, NULL),
(22, 'Static_Wallpapers/Characters/wallpaper/Character_aigenerated7820006.jpg', 'Static_Wallpapers/Characters/thumb/Character_aigenerated7820006thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 46, 19, 0, 0, 'Albert Einstein, characters, laws, animated', 1, 1, NULL, NULL),
(23, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7800461.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7800461thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 231, 197, 0, 0, 'tigers, wild animals, animals, animated', 1, 1, NULL, NULL),
(24, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7807348.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7807348thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 766, 225, 0, 0, 'spiders, nets, insects, spider net', 1, 1, NULL, NULL),
(25, 'Static_Wallpapers/Characters/wallpaper/Character_aigenerated7849157.jpg', 'Static_Wallpapers/Characters/thumb/Character_aigenerated7849157thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 72, 95, 0, 0, 'child, stars, characters, kids, animated', 1, 1, NULL, NULL),
(26, 'Static_Wallpapers/Candles/wallpaper/Candle_candle110263.jpg', 'Static_Wallpapers/Candles/thumb/Candle_candle110263thu.webp', 'Static_Wallpapers/Candles/blur/', 5, 107, 35, 0, 0, 'candles, fire, yellow lights', 1, 1, NULL, NULL),
(27, 'Static_Wallpapers/Entertainment/wallpaper/Entertainment_creativeillustration.jpg', 'Static_Wallpapers/Entertainment/thumb/Entertainment_creativeillustrationthu.webp', 'Static_Wallpapers/Entertainment/blur/', 9, 131, 53, 0, 0, 'music, guitars', 1, 1, NULL, NULL),
(28, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7811230.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7811230thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 132, 143, 0, 0, 'lizard, reptiles', 1, 1, NULL, NULL),
(29, 'Static_Wallpapers/Characters/wallpaper/Character_aigenerated7867021.jpg', 'Static_Wallpapers/Characters/thumb/Character_aigenerated7867021thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 88, 332, 0, 0, 'spider man, men with red suite, characters, movie characters', 1, 1, NULL, NULL),
(30, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7844299.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7844299thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 179, 82, 0, 0, 'birds, hens, crowns, animated', 1, 1, NULL, NULL),
(31, 'Static_Wallpapers/Characters/wallpaper/Character_aigenerated7867487.jpg', 'Static_Wallpapers/Characters/thumb/Character_aigenerated7867487thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 137, 61, 0, 0, 'child with dog, the beauty, characters, kids, animated', 1, 1, NULL, NULL),
(32, 'Static_Wallpapers/Candles/wallpaper/Candle_candle2730897.jpg', 'Static_Wallpapers/Candles/thumb/Candle_candle2730897thu.webp', 'Static_Wallpapers/Candles/blur/', 5, 117, 43, 0, 0, 'candles, dark, lights, yellow lights', 1, 1, NULL, NULL),
(33, 'Static_Wallpapers/Entertainment/wallpaper/Entertainment_dj4702977.jpg', 'Static_Wallpapers/Entertainment/thumb/Entertainment_dj4702977thu.webp', 'Static_Wallpapers/Entertainment/blur/', 9, 108, 109, 0, 0, 'music, entertainment, dark', 1, 1, NULL, NULL),
(34, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7845566.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7845566thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 156, 122, 0, 0, 'girls, dragon, anime', 1, 1, NULL, NULL),
(35, 'Static_Wallpapers/Characters/wallpaper/Character_aigenerated7867492.jpg', 'Static_Wallpapers/Characters/thumb/Character_aigenerated7867492thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 85, 122, 0, 0, 'cartoon characters, child with dog, characters, anime', 1, 1, NULL, NULL),
(36, 'Static_Wallpapers/Characters/wallpaper/Character_aigenerated7870627.jpg', 'Static_Wallpapers/Characters/thumb/Character_aigenerated7870627thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 80, 78, 0, 0, 'men with eagle, characters, red theme, animated', 1, 1, NULL, NULL),
(37, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7845567.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7845567thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 99, 52, 0, 0, 'dragons, animals, girls', 1, 1, NULL, NULL),
(38, 'Static_Wallpapers/Entertainment/wallpaper/Entertainment_djequipmentdark.jpg', 'Static_Wallpapers/Entertainment/thumb/Entertainment_djequipmentdarkthu.webp', 'Static_Wallpapers/Entertainment/blur/', 9, 40, 96, 0, 0, 'Dj, music, entertainment', 1, 1, NULL, NULL),
(39, 'Static_Wallpapers/Entertainment/wallpaper/Entertainment_electricguitar1458806.jpg', 'Static_Wallpapers/Entertainment/thumb/Entertainment_electricguitar1458806thu.webp', 'Static_Wallpapers/Entertainment/blur/', 9, 49, 43, 0, 0, 'music, entertainment, guitars', 1, 1, NULL, NULL),
(40, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7848783.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7848783thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 47, 217, 0, 0, 'sparrow, birds', 1, 1, NULL, NULL),
(41, 'Static_Wallpapers/Characters/wallpaper/Character_aigenerated7883900.jpg', 'Static_Wallpapers/Characters/thumb/Character_aigenerated7883900thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 13, 21, 0, 0, 'black, dark, men in dark', 1, 1, NULL, NULL),
(42, 'Static_Wallpapers/Entertainment/wallpaper/Entertainment_girlwithpinkhair.jpg', 'Static_Wallpapers/Entertainment/thumb/Entertainment_girlwithpinkhairthu.webp', 'Static_Wallpapers/Entertainment/blur/', 9, 43, 148, 0, 0, 'anime, girls, characters, guitars, entertainment', 1, 1, NULL, NULL),
(43, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7851451.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7851451thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 129, 292, 0, 0, 'parrots, birds', 1, 1, NULL, NULL),
(44, 'Static_Wallpapers/Candles/wallpaper/Candle_candle4902868.jpg', 'Static_Wallpapers/Candles/thumb/Candle_candle4902868thu.webp', 'Static_Wallpapers/Candles/blur/', 5, 27, 18, 0, 0, 'candles, fire, dark, lights, yellow lights', 1, 1, NULL, NULL),
(45, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7883292.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7883292thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 84, 579, 0, 0, 'sparrow, birds', 1, 1, NULL, NULL),
(46, 'Static_Wallpapers/Characters/wallpaper/Character_aigenerated7996493.jpg', 'Static_Wallpapers/Characters/thumb/Character_aigenerated7996493thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 42, 117, 0, 0, 'child spider, spider looks, characters, child, kids, animated', 1, 1, NULL, NULL),
(47, 'Static_Wallpapers/Candles/wallpaper/Candle_candle67851.jpg', 'Static_Wallpapers/Candles/thumb/Candle_candle67851thu.webp', 'Static_Wallpapers/Candles/blur/', 5, 37, 158, 0, 0, 'candles, heart candles, fire', 1, 1, NULL, NULL),
(48, 'Static_Wallpapers/Entertainment/wallpaper/Entertainment_guitarisfrontwallwithligh.jpg', 'Static_Wallpapers/Entertainment/thumb/Entertainment_guitarisfrontwallwithlighthu.webp', 'Static_Wallpapers/Entertainment/blur/', 9, 74, 30, 0, 0, 'guitars, music, entertainment', 1, 1, NULL, NULL),
(49, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7883297.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7883297thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 112, 357, 0, 0, 'lions, animals, wild animals', 1, 1, NULL, NULL),
(51, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7887909.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7887909thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 44, 70, 0, 0, 'animals, lions, wild animals, animated', 1, 1, NULL, NULL),
(52, 'Static_Wallpapers/Cars/wallpaper/Car_aigenerated7734319.jpg', 'Static_Wallpapers/Cars/thumb/Car_aigenerated7734319thu.webp', 'Static_Wallpapers/Cars/blur/', 1, 499, 44, 0, 0, 'orange car, cars, wallpapers', 1, 1, NULL, '2024-11-26 04:48:05'),
(53, 'Static_Wallpapers/Characters/wallpaper/Character_character7868062.jpg', 'Static_Wallpapers/Characters/thumb/Character_character7868062thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 29, 76, 0, 0, 'dark devil, characters, black men', 1, 1, NULL, NULL),
(54, 'Static_Wallpapers/Entertainment/wallpaper/Entertainment_guitartablewithdark.jpg', 'Static_Wallpapers/Entertainment/thumb/Entertainment_guitartablewithdarkthu.webp', 'Static_Wallpapers/Entertainment/blur/', 9, 29, 72, 0, 0, 'guitars, music, entertainment', 1, 1, NULL, NULL),
(55, 'Static_Wallpapers/Cars/wallpaper/Car_aigenerated7734398.jpg', 'Static_Wallpapers/Cars/thumb/Car_aigenerated7734398thu.webp', 'Static_Wallpapers/Cars/blur/', 1, 393, 24, 0, 0, 'jeeps, cars, vehicles, purple', 1, 1, NULL, NULL),
(56, 'Static_Wallpapers/Characters/wallpaper/Character_createdbyai7959339.jpg', 'Static_Wallpapers/Characters/thumb/Character_createdbyai7959339thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 24, 68, 0, 0, 'superhero, characters, animated', 1, 1, NULL, NULL),
(57, 'Static_Wallpapers/Entertainment/wallpaper/Entertainment_guitarwithdragon.jpg', 'Static_Wallpapers/Entertainment/thumb/Entertainment_guitarwithdragonthu.webp', 'Static_Wallpapers/Entertainment/blur/', 9, 50, 123, 0, 0, 'guitars, music, entertainment', 1, 1, NULL, NULL),
(58, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7904833.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7904833thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 58, 75, 0, 0, 'tigers, wild animals, animated', 1, 0, NULL, '2024-11-29 02:55:35'),
(59, 'Static_Wallpapers/Cars/wallpaper/Car_aigenerated7734415.jpg', 'Static_Wallpapers/Cars/thumb/Car_aigenerated7734415thu.webp', 'Static_Wallpapers/Cars/blur/', 1, 1294, 99, 0, 0, 'bugatti, orange cars, cars, vehicles, wallpapers', 1, 1, NULL, NULL),
(60, 'Static_Wallpapers/Characters/wallpaper/Character_cyberpunk7946481.jpg', 'Static_Wallpapers/Characters/thumb/Character_cyberpunk7946481thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 19, 90, 0, 0, 'hero, movie characters, characters, animated', 1, 1, NULL, NULL),
(61, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7910163.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7910163thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 52, 129, 0, 0, 'owls, birds', 1, 1, NULL, NULL),
(62, 'Static_Wallpapers/Characters/wallpaper/Character_fantasy8012532.jpg', 'Static_Wallpapers/Characters/thumb/Character_fantasy8012532thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 43, 95, 0, 0, 'devils, characters, animes, demons', 1, 1, NULL, NULL),
(63, 'Static_Wallpapers/Entertainment/wallpaper/Entertainment_manwithguitarhishands.jpg', 'Static_Wallpapers/Entertainment/thumb/Entertainment_manwithguitarhishandsthu.webp', 'Static_Wallpapers/Entertainment/blur/', 9, 12, 68, 0, 0, 'skull, music, guitars, entertainment, concert', 1, 1, NULL, NULL),
(64, 'Static_Wallpapers/Cars/wallpaper/Car_aigenerated7734417.jpg', 'Static_Wallpapers/Cars/thumb/Car_aigenerated7734417thu.webp', 'Static_Wallpapers/Cars/blur/', 1, 512, 50, 0, 0, 'ferrari, vehicles, cars, purple cars', 1, 1, NULL, NULL),
(65, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7917610.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7917610thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 41, 49, 0, 0, 'owls, birds, animated', 1, 1, NULL, NULL),
(66, 'Static_Wallpapers/Cars/wallpaper/Car_aigenerated7806672.jpg', 'Static_Wallpapers/Cars/thumb/Car_aigenerated7806672thu.webp', 'Static_Wallpapers/Cars/blur/', 1, 402, 86, 0, 0, 'rolls royces, cars, vehicles', 1, 1, NULL, NULL),
(67, 'Static_Wallpapers/Entertainment/wallpaper/Entertainment_musicalnote.jpg', 'Static_Wallpapers/Entertainment/thumb/Entertainment_musicalnotethu.webp', 'Static_Wallpapers/Entertainment/blur/', 9, 61, 103, 0, 0, 'dark, music, golden', 1, 1, NULL, NULL),
(68, 'Static_Wallpapers/Characters/wallpaper/Character_marvel7936477.jpg', 'Static_Wallpapers/Characters/thumb/Character_marvel7936477thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 80, 66, 0, 0, 'black panther, movie characters, hero, black', 1, 1, NULL, NULL),
(69, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7918574.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7918574thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 23, 81, 0, 0, 'bee, insects', 1, 1, NULL, NULL),
(70, 'Static_Wallpapers/Characters/wallpaper/Character_portrait7901863.jpg', 'Static_Wallpapers/Characters/thumb/Character_portrait7901863thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 13, 42, 0, 0, 'king, queen, movie characters, pink lady, tatoos', 1, 1, NULL, NULL),
(71, 'Static_Wallpapers/Cars/wallpaper/Car_aigenerated7876797.jpg', 'Static_Wallpapers/Cars/thumb/Car_aigenerated7876797thu.webp', 'Static_Wallpapers/Cars/blur/', 1, 367, 61, 0, 0, 'bikes, heavy bikes, red bikes', 1, 1, NULL, NULL),
(72, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7920009.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7920009thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 26, 245, 0, 0, 'dark, lions, animals, animated lions', 1, 1, NULL, NULL),
(73, 'Static_Wallpapers/Characters/wallpaper/Character_portrait7956600.jpg', 'Static_Wallpapers/Characters/thumb/Character_portrait7956600thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 20, 15, 0, 0, 'men, guitars, characters', 1, 1, NULL, NULL),
(74, 'Static_Wallpapers/Cars/wallpaper/Car_aigenerated7876799.jpg', 'Static_Wallpapers/Cars/thumb/Car_aigenerated7876799thu.webp', 'Static_Wallpapers/Cars/blur/', 1, 264, 41, 0, 0, 'bikes, classic bikes, fancy bikes, blue bikes', 1, 1, NULL, NULL),
(75, 'Static_Wallpapers/Entertainment/wallpaper/Entertainment_partdrumkitdark.jpg', 'Static_Wallpapers/Entertainment/thumb/Entertainment_partdrumkitdarkthu.webp', 'Static_Wallpapers/Entertainment/blur/', 9, 29, 25, 0, 0, 'dark, music, drums', 1, 1, NULL, NULL),
(76, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7922813.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7922813thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 65, 269, 0, 0, 'goats, animals, beauty, animes', 1, 1, NULL, NULL),
(77, 'Static_Wallpapers/Cars/wallpaper/Car_aigenerated7876801.jpg', 'Static_Wallpapers/Cars/thumb/Car_aigenerated7876801thu.webp', 'Static_Wallpapers/Cars/blur/', 1, 253, 56, 0, 0, 'orange bikes, heavy bikes, cars and vehicles, bikes', 1, 1, NULL, NULL),
(78, 'Static_Wallpapers/Characters/wallpaper/Character_poseidon7979074.jpg', 'Static_Wallpapers/Characters/thumb/Character_poseidon7979074thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 29, 51, 0, 0, 'black devils, dark wallpapers, dark side, animes, characters', 1, 1, NULL, NULL),
(79, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7932684.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7932684thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 32, 122, 0, 0, 'cats, black hat, animals', 1, 1, NULL, NULL),
(80, 'Static_Wallpapers/Cars/wallpaper/Car_aigenerated7876807.jpg', 'Static_Wallpapers/Cars/thumb/Car_aigenerated7876807thu.webp', 'Static_Wallpapers/Cars/blur/', 1, 270, 69, 0, 0, 'heavy bikes, bikes, cars and vehicles', 1, 1, NULL, NULL),
(81, 'Static_Wallpapers/Characters/wallpaper/Character_spiderman7983884.jpg', 'Static_Wallpapers/Characters/thumb/Character_spiderman7983884thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 32, 30, 0, 0, 'super hero, characters, superman', 1, 1, NULL, NULL),
(82, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated7552704.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated7552704thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 19, 9, 0, 0, 'fairy, queens, jungle, forest', 1, 1, NULL, NULL),
(83, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7945910.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7945910thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 153, 883, 0, 0, 'sparrow, birds', 1, 1, NULL, NULL),
(84, 'Static_Wallpapers/Characters/wallpaper/Character_spiderman8014746.jpg', 'Static_Wallpapers/Characters/thumb/Character_spiderman8014746thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 55, 101, 0, 0, 'spiderman, super heroes, heroes, hero', 1, 1, NULL, NULL),
(85, 'Static_Wallpapers/Cars/wallpaper/Car_aigenerated7958064.jpg', 'Static_Wallpapers/Cars/thumb/Car_aigenerated7958064thu.webp', 'Static_Wallpapers/Cars/blur/', 1, 285, 98, 0, 0, 'cars, vehicles, Mercedes', 1, 1, NULL, '2024-11-26 05:54:55'),
(86, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated7552708.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated7552708thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 48, 45, 0, 0, 'snow queen, queen of the ice, fairy, beauty, ice queen', 1, 1, NULL, NULL),
(87, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7957862.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7957862thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 40, 118, 0, 0, 'dragons, face, animals, gold dragons', 1, 1, NULL, NULL),
(88, 'Static_Wallpapers/Characters/wallpaper/Character_warrior8009049.jpg', 'Static_Wallpapers/Characters/thumb/Character_warrior8009049thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 17, 101, 0, 0, 'warriors, super heroes, mens, black dress', 1, 1, NULL, NULL),
(89, 'Static_Wallpapers/Cars/wallpaper/Car_aigenerated7959220.jpg', 'Static_Wallpapers/Cars/thumb/Car_aigenerated7959220thu.webp', 'Static_Wallpapers/Cars/blur/', 1, 272, 28, 0, 0, 'Ferrari, cars, black cars, cars and vehicles', 1, 1, NULL, NULL),
(90, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated7720485.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated7720485thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 26, 28, 0, 0, 'black hat, lady, ladies, queen, fairy, animes, characters', 1, 1, NULL, NULL),
(91, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7972637.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7972637thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 71, 273, 0, 0, 'birds, golden birds, colorful birds', 1, 1, NULL, NULL),
(92, 'Static_Wallpapers/Cars/wallpaper/Car_aigenerated7997627.jpg', 'Static_Wallpapers/Cars/thumb/Car_aigenerated7997627thu.webp', 'Static_Wallpapers/Cars/blur/', 1, 297, 32, 0, 0, 'monster cars, cars, old cars', 1, 1, NULL, NULL),
(93, 'Static_Wallpapers/Characters/wallpaper/Character_warrior8009050.jpg', 'Static_Wallpapers/Characters/thumb/Character_warrior8009050thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 27, 55, 0, 0, 'warriors, dark man, man with black hat, mens, characters, flash, hero', 1, 1, NULL, NULL),
(94, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated7725049.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated7725049thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 52, 46, 0, 0, 'lady fish, fairy, lady, mermaids', 1, 1, NULL, NULL),
(95, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7974904.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7974904thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 54, 98, 0, 0, 'dogs, animals', 1, 1, NULL, NULL),
(96, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated7734117.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated7734117thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 18, 84, 0, 0, 'heroes, lady, fairy, space', 1, 1, NULL, NULL),
(97, 'Static_Wallpapers/Cars/wallpaper/Car_aigenerated8010872.jpg', 'Static_Wallpapers/Cars/thumb/Car_aigenerated8010872thu.webp', 'Static_Wallpapers/Cars/blur/', 1, 258, 26, 0, 0, 'bikes, animated, riders, purple', 1, 1, NULL, NULL),
(98, 'Static_Wallpapers/Characters/wallpaper/Character_wizard8009052.jpg', 'Static_Wallpapers/Characters/thumb/Character_wizard8009052thu.webp', 'Static_Wallpapers/Characters/blur/', 17, 16, 10, 0, 0, 'thunder man, thunders, man with black hat, super hero, characters', 1, 1, NULL, NULL),
(99, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated7988349.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated7988349thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 153, 251, 0, 0, 'birds, butterfly, butterflies', 1, 1, NULL, NULL),
(101, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated7734120.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated7734120thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 48, 55, 0, 0, 'lady, cats, lady with cat, ladies, animated', 1, 1, NULL, NULL),
(102, 'Static_Wallpapers/Dark Wallpaper/wallpaper/Dark Wallpaper_nightlights7912794.jpg', 'Static_Wallpapers/Dark Wallpaper/thumb/Dark Wallpaper_nightlights7912794thu.webp', 'Static_Wallpapers/Dark Wallpaper/blur/', 4, 41, 123, 0, 0, 'nights, views, dark wallpapers, buildings', 1, 1, NULL, '2024-11-26 04:42:05'),
(103, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated8000798.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated8000798thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 120, 437, 0, 0, 'leaves, birds', 1, 1, NULL, NULL),
(104, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated7734156.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated7734156thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 10, 3, 0, 0, 'alians, lady with galaxy, galaxy, fairy, animated', 1, 1, NULL, NULL),
(105, 'Static_Wallpapers/Dark Wallpaper/wallpaper/Dark Wallpaper_pexelsaleksandar.jpg', 'Static_Wallpapers/Dark Wallpaper/thumb/Dark Wallpaper_pexelsaleksandarthu.webp', 'Static_Wallpapers/Dark Wallpaper/blur/', 4, 37, 81, 0, 0, 'nights, views, dark wallpapers, building', 1, 1, NULL, NULL),
(106, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated8004404.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated8004404thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 57, 461, 0, 0, 'fox, animals, wild animals', 1, 1, NULL, NULL),
(107, 'Static_Wallpapers/Flowers/wallpaper/Flower_aigenerated7660910.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_aigenerated7660910thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 111, 382, 0, 0, 'red roses, flowers', 1, 1, NULL, NULL),
(108, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated7734173.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated7734173thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 74, 143, 0, 0, 'lady with cat, lady, girls, fairy, ladies, fairies', 1, 1, NULL, NULL),
(109, 'Static_Wallpapers/Animals/wallpaper/Animals_aigenerated8010466.jpg', 'Static_Wallpapers/Animals/thumb/Animals_aigenerated8010466thu.webp', 'Static_Wallpapers/Animals/blur/', 21, 152, 356, 0, 0, 'love birds, sparrow, birds, flowers', 1, 1, NULL, NULL),
(110, 'Static_Wallpapers/Flowers/wallpaper/Flower_aigenerated7747128.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_aigenerated7747128thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 105, 65, 0, 0, 'flowers, orange rose, roses', 1, 1, NULL, NULL),
(111, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated7734176.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated7734176thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 28, 58, 0, 0, 'super heros, lady, fairy', 1, 1, NULL, NULL),
(112, 'Static_Wallpapers/Dark Wallpaper/wallpaper/Dark Wallpaper_pexelsanhnguyen.jpg', 'Static_Wallpapers/Dark Wallpaper/thumb/Dark Wallpaper_pexelsanhnguyenthu.webp', 'Static_Wallpapers/Dark Wallpaper/blur/', 4, 32, 29, 0, 0, 'Dark, black themes, tunnels', 1, 1, NULL, NULL),
(113, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated7709814.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated7709814thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 13, 62, 0, 0, 'robots, technology, AI', 1, 1, NULL, NULL),
(114, 'Static_Wallpapers/Dark Wallpaper/wallpaper/Dark Wallpaper_pexelseltimeshau.jpg', 'Static_Wallpapers/Dark Wallpaper/thumb/Dark Wallpaper_pexelseltimeshauthu.webp', 'Static_Wallpapers/Dark Wallpaper/blur/', 4, 27, 105, 0, 0, 'dark theme, horror, mens, shadows', 1, 1, NULL, NULL),
(115, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated7734252.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated7734252thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 16, 9, 0, 0, 'riders, fairy', 1, 1, NULL, NULL),
(116, 'Static_Wallpapers/Flowers/wallpaper/Flower_aigenerated7747148.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_aigenerated7747148thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 153, 348, 0, 0, 'sun flowers, flowers', 1, 1, NULL, NULL),
(117, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated7731326.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated7731326thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 12, 17, 0, 0, 'robots, technology, AI', 1, 1, NULL, NULL),
(118, 'Static_Wallpapers/Dark Wallpaper/wallpaper/Dark Wallpaper_pexelsisaque.jpg', 'Static_Wallpapers/Dark Wallpaper/thumb/Dark Wallpaper_pexelsisaquethu.webp', 'Static_Wallpapers/Dark Wallpaper/blur/', 4, 43, 29, 0, 0, 'wings, white wings', 1, 1, NULL, NULL),
(119, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated7734273.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated7734273thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 109, 151, 0, 0, 'queen, girls, flowers, fairy', 1, 1, NULL, NULL),
(120, 'Static_Wallpapers/Flowers/wallpaper/Flower_aigenerated7747170.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_aigenerated7747170thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 133, 97, 0, 0, 'flowers, sun flowers', 1, 1, NULL, NULL),
(121, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated77342071920.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated77342071920thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 7, 106, 0, 0, 'animated, girls, women, purple, characters', 1, 1, NULL, NULL),
(122, 'Static_Wallpapers/Dark Wallpaper/wallpaper/Dark Wallpaper_pexelsjunior.jpg', 'Static_Wallpapers/Dark Wallpaper/thumb/Dark Wallpaper_pexelsjuniorthu.webp', 'Static_Wallpapers/Dark Wallpaper/blur/', 4, 19, 25, 0, 0, 'laptops, dark themes, black', 1, 1, NULL, NULL),
(123, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated7734316.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated7734316thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 21, 50, 0, 0, 'queen, queen of the sky, fairy', 1, 1, NULL, NULL),
(124, 'Static_Wallpapers/Flowers/wallpaper/Flower_aigenerated7747196.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_aigenerated7747196thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 134, 289, 0, 0, 'flower, aster, yellow aster', 1, 1, NULL, NULL),
(125, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated7822829.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated7822829thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 16, 75, 0, 0, 'animated, old characters', 1, 1, NULL, NULL),
(126, 'Static_Wallpapers/Flowers/wallpaper/Flower_aigenerated7747244.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_aigenerated7747244thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 109, 120, 0, 0, 'flowers, sun flowers', 1, 1, NULL, NULL),
(127, 'Static_Wallpapers/Dark Wallpaper/wallpaper/Dark Wallpaper_pexelsleandrolopes.jpg', 'Static_Wallpapers/Dark Wallpaper/thumb/Dark Wallpaper_pexelsleandrolopesthu.webp', 'Static_Wallpapers/Dark Wallpaper/blur/', 4, 35, 163, 0, 0, 'water, dark, liquid', 1, 1, NULL, NULL),
(128, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated7734358.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated7734358thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 64, 138, 0, 0, 'queen of the sky, feathers, fairy', 1, 1, NULL, NULL),
(129, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated7832244.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated7832244thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 50, 12, 0, 0, 'robots, technology, robotics', 1, 1, NULL, NULL),
(130, 'Static_Wallpapers/Dark Wallpaper/wallpaper/Dark Wallpaper_pexelspixabay.jpg', 'Static_Wallpapers/Dark Wallpaper/thumb/Dark Wallpaper_pexelspixabaythu.webp', 'Static_Wallpapers/Dark Wallpaper/blur/', 4, 29, 36, 0, 0, 'devil, horror, dark', 1, 1, NULL, NULL),
(131, 'Static_Wallpapers/Flowers/wallpaper/Flower_aigenerated7747304.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_aigenerated7747304thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 162, 490, 0, 0, 'colorful, flowers', 1, 1, NULL, NULL),
(132, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated7832245.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated7832245thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 19, 74, 0, 0, 'robots, oranges, technology', 1, 1, NULL, NULL),
(133, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated7734374.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated7734374thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 31, 55, 0, 0, 'super hero, queen, fairy', 1, 1, NULL, NULL),
(134, 'Static_Wallpapers/Flowers/wallpaper/Flower_aigenerated7747315.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_aigenerated7747315thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 108, 118, 0, 0, 'flower, multicolor flower, colors flower', 1, 1, NULL, NULL),
(135, 'Static_Wallpapers/Dark Wallpaper/wallpaper/Dark Wallpaper_pexelsvladbagacian.jpg', 'Static_Wallpapers/Dark Wallpaper/thumb/Dark Wallpaper_pexelsvladbagacianthu.webp', 'Static_Wallpapers/Dark Wallpaper/blur/', 4, 47, 150, 0, 0, 'dark, streets', 1, 1, NULL, NULL),
(136, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated7734378.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated7734378thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 27, 92, 0, 0, 'girls, fairy', 1, 1, NULL, NULL),
(137, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated7867584.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated7867584thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 47, 42, 0, 0, 'kids, girls, beauty, animated', 1, 1, NULL, NULL),
(138, 'Static_Wallpapers/Dark Wallpaper/wallpaper/Dark Wallpaper_pexelsvyacheslav.jpg', 'Static_Wallpapers/Dark Wallpaper/thumb/Dark Wallpaper_pexelsvyacheslavthu.webp', 'Static_Wallpapers/Dark Wallpaper/blur/', 4, 18, 98, 0, 0, 'dark, black, black theme', 1, 1, NULL, NULL),
(139, 'Static_Wallpapers/Flowers/wallpaper/Flower_aigenerated7747324.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_aigenerated7747324thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 122, 109, 0, 0, 'pink roses, gold roses, flowers', 1, 1, NULL, NULL),
(140, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated7734425.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated7734425thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 29, 12, 0, 0, 'smoke lady, queen, fairy, art', 1, 1, NULL, NULL),
(141, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated7889788.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated7889788thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 25, 109, 0, 0, 'cartoons, funny, animated, characters', 1, 1, NULL, NULL),
(142, 'Static_Wallpapers/Dark Wallpaper/wallpaper/Dark Wallpaper_purge.jpg', 'Static_Wallpapers/Dark Wallpaper/thumb/Dark Wallpaper_purgethu.webp', 'Static_Wallpapers/Dark Wallpaper/blur/', 4, 24, 108, 0, 0, 'attitude, boys', 1, 1, NULL, NULL),
(143, 'Static_Wallpapers/Flowers/wallpaper/Flower_aigenerated7747360.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_aigenerated7747360thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 126, 573, 0, 0, 'flowers, multicolor flowers', 1, 1, NULL, NULL),
(144, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated7734443.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated7734443thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 29, 50, 0, 0, 'queen, fairy', 1, 1, NULL, NULL),
(145, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated7895957.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated7895957thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 11, 10, 0, 0, 'robots, robotics, technology', 1, 1, NULL, NULL),
(146, 'Static_Wallpapers/Dark Wallpaper/wallpaper/Dark Wallpaper_silhouette.jpg', 'Static_Wallpapers/Dark Wallpaper/thumb/Dark Wallpaper_silhouettethu.webp', 'Static_Wallpapers/Dark Wallpaper/blur/', 4, 83, 155, 0, 0, 'night, moon, alone girl, dark', 1, 1, NULL, NULL),
(147, 'Static_Wallpapers/Flowers/wallpaper/Flower_aigenerated7747372.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_aigenerated7747372thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 111, 135, 0, 0, 'firework flower, flower', 1, 1, NULL, NULL),
(148, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated77345181920.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated77345181920thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 34, 56, 0, 0, 'queen, lady', 1, 1, NULL, NULL),
(149, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated7895974.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated7895974thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 9, 57, 0, 0, 'robots, technology, animated', 1, 1, NULL, NULL),
(150, 'Static_Wallpapers/Flowers/wallpaper/Flower_aigenerated7752088.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_aigenerated7752088thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 115, 179, 0, 0, 'flower, red rose', 1, 1, NULL, NULL),
(151, 'Static_Wallpapers/Dark Wallpaper/wallpaper/Dark Wallpaper_skull.jpg', 'Static_Wallpapers/Dark Wallpaper/thumb/Dark Wallpaper_skullthu.webp', 'Static_Wallpapers/Dark Wallpaper/blur/', 4, 23, 29, 0, 0, 'skulls, horror, dark', 1, 1, NULL, NULL),
(152, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated77431621920.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated77431621920thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 16, 29, 0, 0, 'queen, fairy, super hero', 1, 1, NULL, NULL),
(153, 'Static_Wallpapers/Dark Wallpaper/wallpaper/Dark Wallpaper_skyscraper.jpg', 'Static_Wallpapers/Dark Wallpaper/thumb/Dark Wallpaper_skyscraperthu.webp', 'Static_Wallpapers/Dark Wallpaper/blur/', 4, 20, 118, 0, 0, 'grey, black , wallpapers', 1, 1, NULL, NULL),
(154, 'Static_Wallpapers/Flowers/wallpaper/Flower_aigenerated7752191.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_aigenerated7752191thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 135, 361, 0, 0, 'red rose, pink rose, rose, flower', 1, 1, NULL, NULL),
(155, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated7901853.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated7901853thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 30, 20, 0, 0, 'green, witch, roots', 1, 1, NULL, NULL),
(156, 'Static_Wallpapers/Fairy/wallpaper/Fairy_aigenerated7743246.jpg', 'Static_Wallpapers/Fairy/thumb/Fairy_aigenerated7743246thu.webp', 'Static_Wallpapers/Fairy/blur/', 16, 16, 85, 0, 0, 'superhero, girl hero', 1, 1, NULL, NULL),
(157, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated7905602.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated7905602thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 12, 11, 0, 0, 'black evil, other', 1, 1, NULL, NULL),
(158, 'Static_Wallpapers/Flowers/wallpaper/Flower_aigenerated7784043.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_aigenerated7784043thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 143, 126, 0, 0, 'white rose, rose, heart, flower', 1, 1, NULL, NULL),
(159, 'Static_Wallpapers/Games/wallpaper/Games_abstractivebackground.jpg', 'Static_Wallpapers/Games/thumb/Games_abstractivebackgroundthu.webp', 'Static_Wallpapers/Games/blur/', 10, 30, 14, 0, 0, 'cubes, technology', 1, 1, NULL, NULL),
(160, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated7919886.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated7919886thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 26, 19, 0, 0, 'balloons, pink, others', 1, 1, NULL, NULL),
(161, 'Static_Wallpapers/Flowers/wallpaper/Flower_aigenerated7826765.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_aigenerated7826765thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 119, 204, 0, 0, 'pink rose, rose, snow, flower', 1, 1, NULL, NULL),
(162, 'Static_Wallpapers/Games/wallpaper/Games_adult3170055.jpg', 'Static_Wallpapers/Games/thumb/Games_adult3170055thu.webp', 'Static_Wallpapers/Games/blur/', 10, 12, 3, 0, 0, 'playing cards, games', 1, 1, NULL, NULL),
(163, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated7934117.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated7934117thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 172, 36, 0, 0, 'animated, girls', 1, 1, NULL, NULL),
(164, 'Static_Wallpapers/Flowers/wallpaper/Flower_aigenerated7923901.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_aigenerated7923901thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 137, 81, 0, 0, 'white flower, flower, sunflower', 1, 1, NULL, NULL),
(165, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated7948410.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated7948410thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 23, 34, 0, 0, 'devils, horror', 1, 1, NULL, NULL),
(166, 'Static_Wallpapers/Flowers/wallpaper/Flower_bottle7572685.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_bottle7572685thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 112, 266, 0, 0, 'redrose, flower, rose', 1, 1, NULL, NULL),
(167, 'Static_Wallpapers/Dark Wallpaper/wallpaper/Dark Wallpaper_verticalshotrailway.jpg', 'Static_Wallpapers/Dark Wallpaper/thumb/Dark Wallpaper_verticalshotrailwaythu.webp', 'Static_Wallpapers/Dark Wallpaper/blur/', 4, 21, 119, 0, 0, 'dark, train', 1, 1, NULL, NULL),
(168, 'Static_Wallpapers/Flowers/wallpaper/Flower_chamomiles7053757.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_chamomiles7053757thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 92, 308, 0, 0, 'flower, yellow', 1, 1, NULL, NULL),
(169, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated7966825.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated7966825thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 25, 29, 0, 0, 'robots, technology, yellow, anime', 1, 1, NULL, NULL),
(170, 'Static_Wallpapers/Dark Wallpaper/wallpaper/Dark Wallpaper_verticalshotraindrops.jpg', 'Static_Wallpapers/Dark Wallpaper/thumb/Dark Wallpaper_verticalshotraindropsthu.webp', 'Static_Wallpapers/Dark Wallpaper/blur/', 4, 35, 64, 0, 0, 'buildings, shadow, dark', 1, 1, NULL, NULL),
(171, 'Static_Wallpapers/Flowers/wallpaper/Flower_flower7970859.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_flower7970859thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 64, 73, 0, 0, 'flowers, yellow flower', 1, 1, NULL, NULL),
(172, 'Static_Wallpapers/Games/wallpaper/Games_burning3088905.jpg', 'Static_Wallpapers/Games/thumb/Games_burning3088905thu.webp', 'Static_Wallpapers/Games/blur/', 10, 32, 131, 0, 0, 'football, games', 1, 1, NULL, NULL),
(173, 'Static_Wallpapers/Dark Wallpaper/wallpaper/Dark Wallpaper_vintageretro.jpg', 'Static_Wallpapers/Dark Wallpaper/thumb/Dark Wallpaper_vintageretrothu.webp', 'Static_Wallpapers/Dark Wallpaper/blur/', 4, 37, 104, 0, 0, 'bulbs, nights, shadows, dark', 1, 1, NULL, NULL),
(174, 'Static_Wallpapers/Flowers/wallpaper/Flower_mechanicalflower7446683.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_mechanicalflower7446683thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 35, 56, 0, 0, 'flower, orange', 1, 1, NULL, NULL),
(175, 'Static_Wallpapers/Mountains/wallpaper/Mountain_aigenerated7708031.jpg', 'Static_Wallpapers/Mountains/thumb/Mountain_aigenerated7708031thu.webp', 'Static_Wallpapers/Mountains/blur/', 2, 97, 42, 0, 0, 'mountain, sky, cloudy', 1, 1, NULL, NULL),
(176, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated7971255.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated7971255thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 35, 38, 0, 0, 'girls, anime, air technology', 1, 1, NULL, NULL),
(177, 'Static_Wallpapers/Games/wallpaper/Games_cards416960.jpg', 'Static_Wallpapers/Games/thumb/Games_cards416960thu.webp', 'Static_Wallpapers/Games/blur/', 10, 9, 79, 0, 0, 'playing cards, games', 1, 1, NULL, NULL),
(178, 'Static_Wallpapers/Flowers/wallpaper/Flower_roses7690625.jpg', 'Static_Wallpapers/Flowers/thumb/Flower_roses7690625thu.webp', 'Static_Wallpapers/Flowers/blur/', 15, 97, 336, 0, 0, 'red rose, rose, flower', 1, 1, NULL, NULL),
(179, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated7974441.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated7974441thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 34, 5, 0, 0, 'characters, cartoons, anime, laptop', 1, 1, NULL, NULL),
(180, 'Static_Wallpapers/Mountains/wallpaper/Mountain_aigenerated7848847.jpg', 'Static_Wallpapers/Mountains/thumb/Mountain_aigenerated7848847thu.webp', 'Static_Wallpapers/Mountains/blur/', 2, 75, 11, 0, 0, 'mountains, views, greenery, peaks', 1, 1, NULL, NULL),
(181, 'Static_Wallpapers/Games/wallpaper/Games_cards5921362.jpg', 'Static_Wallpapers/Games/thumb/Games_cards5921362thu.webp', 'Static_Wallpapers/Games/blur/', 10, 8, 127, 0, 0, 'playing cards, games', 1, 1, NULL, NULL),
(182, 'Static_Wallpapers/Galaxies/wallpaper/Galaxy_aigenerated7734179.jpg', 'Static_Wallpapers/Galaxies/thumb/Galaxy_aigenerated7734179thu.webp', 'Static_Wallpapers/Galaxies/blur/', 20, 26, 59, 0, 0, 'galaxy, moon', 1, 1, NULL, NULL),
(183, 'Static_Wallpapers/Mountains/wallpaper/Mountain_aigenerated7848855.jpg', 'Static_Wallpapers/Mountains/thumb/Mountain_aigenerated7848855thu.webp', 'Static_Wallpapers/Mountains/blur/', 2, 178, 15, 0, 0, 'sunshine, mountain, cloudy', 1, 1, NULL, NULL),
(184, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated7981276.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated7981276thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 6, 15, 0, 0, 'characters, animated', 1, 1, NULL, NULL),
(185, 'Static_Wallpapers/Galaxies/wallpaper/Galaxy_aigenerated7734226.jpg', 'Static_Wallpapers/Galaxies/thumb/Galaxy_aigenerated7734226thu.webp', 'Static_Wallpapers/Galaxies/blur/', 20, 47, 89, 0, 0, 'galaxy, flower, colorful sky', 1, 1, NULL, NULL),
(186, 'Static_Wallpapers/Mountains/wallpaper/Mountain_aigenerated7867212.jpg', 'Static_Wallpapers/Mountains/thumb/Mountain_aigenerated7867212thu.webp', 'Static_Wallpapers/Mountains/blur/', 2, 66, 45, 0, 0, 'mountain climb, rock', 1, 1, NULL, NULL),
(187, 'Static_Wallpapers/Anime/wallpaper/Anime_aigenerated8006756.jpg', 'Static_Wallpapers/Anime/thumb/Anime_aigenerated8006756thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 26, 55, 0, 0, 'animated, cartoons, yellow', 1, 1, NULL, NULL),
(188, 'Static_Wallpapers/Games/wallpaper/Games_chess6872239.jpg', 'Static_Wallpapers/Games/thumb/Games_chess6872239thu.webp', 'Static_Wallpapers/Games/blur/', 10, 9, 11, 0, 0, 'chess, custom game, games', 1, 1, NULL, NULL),
(189, 'Static_Wallpapers/Games/wallpaper/Games_dice2788986.jpg', 'Static_Wallpapers/Games/thumb/Games_dice2788986thu.webp', 'Static_Wallpapers/Games/blur/', 10, 16, 83, 0, 0, 'dice, game, custom dice', 1, 1, NULL, NULL),
(190, 'Static_Wallpapers/Mountains/wallpaper/Mountain_aigenerated79032321920.jpg', 'Static_Wallpapers/Mountains/thumb/Mountain_aigenerated79032321920thu.webp', 'Static_Wallpapers/Mountains/blur/', 2, 91, 70, 0, 0, 'mountain, cloudy, sunshine', 1, 1, NULL, NULL),
(191, 'Static_Wallpapers/Galaxies/wallpaper/Galaxy_aigenerated7734412.jpg', 'Static_Wallpapers/Galaxies/thumb/Galaxy_aigenerated7734412thu.webp', 'Static_Wallpapers/Galaxies/blur/', 20, 17, 120, 0, 0, 'galaxy, space man', 1, 1, NULL, NULL),
(192, 'Static_Wallpapers/Games/wallpaper/Games_dice765204.jpg', 'Static_Wallpapers/Games/thumb/Games_dice765204thu.webp', 'Static_Wallpapers/Games/blur/', 10, 25, 179, 0, 0, 'dice, games', 1, 1, NULL, NULL),
(193, 'Static_Wallpapers/Mountains/wallpaper/Mountain_aigenerated79032511920.jpg', 'Static_Wallpapers/Mountains/thumb/Mountain_aigenerated79032511920thu.webp', 'Static_Wallpapers/Mountains/blur/', 2, 91, 42, 0, 0, 'mountain, cloudy, sky', 1, 1, NULL, NULL),
(194, 'Static_Wallpapers/Anime/wallpaper/Anime_alien7753890.jpg', 'Static_Wallpapers/Anime/thumb/Anime_alien7753890thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 10, 27, 0, 0, 'cube box, robots, technology', 1, 1, NULL, NULL),
(195, 'Static_Wallpapers/Galaxies/wallpaper/Galaxy_aigenerated7734442.jpg', 'Static_Wallpapers/Galaxies/thumb/Galaxy_aigenerated7734442thu.webp', 'Static_Wallpapers/Galaxies/blur/', 20, 27, 98, 0, 0, 'spacecraft, spaceship, man, galaxy', 1, 1, NULL, NULL),
(196, 'Static_Wallpapers/Games/wallpaper/Games_futuristic3ddesigngameconsole.jpg', 'Static_Wallpapers/Games/thumb/Games_futuristic3ddesigngameconsolethu.webp', 'Static_Wallpapers/Games/blur/', 10, 9, 89, 0, 0, 'technology, invention', 1, 1, NULL, NULL),
(197, 'Static_Wallpapers/Anime/wallpaper/Anime_babyhulk7599327.jpg', 'Static_Wallpapers/Anime/thumb/Anime_babyhulk7599327thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 1, 7, 0, 0, 'characters, hulk, green, anime', 1, 1, NULL, NULL),
(198, 'Static_Wallpapers/Mountains/wallpaper/Mountain_aigenerated79032581920.jpg', 'Static_Wallpapers/Mountains/thumb/Mountain_aigenerated79032581920thu.webp', 'Static_Wallpapers/Mountains/blur/', 2, 79, 158, 0, 0, 'mountain water, water, mountain, cloudy', 1, 1, NULL, NULL),
(199, 'Static_Wallpapers/Galaxies/wallpaper/Galaxy_aigenerated7734454.jpg', 'Static_Wallpapers/Galaxies/thumb/Galaxy_aigenerated7734454thu.webp', 'Static_Wallpapers/Galaxies/blur/', 20, 38, 95, 0, 0, 'spaceman, galaxy, man', 1, 1, NULL, NULL),
(200, 'Static_Wallpapers/Anime/wallpaper/Anime_C4Drenderofacomicallytinycuteandadorablek.jpg', 'Static_Wallpapers/Anime/thumb/Anime_C4Drenderofacomicallytinycuteandadorablekthu.webp', 'Static_Wallpapers/Anime/blur/', 8, 46, 7, 0, 0, 'anime, cute, alien', 1, 1, NULL, NULL),
(201, 'Static_Wallpapers/Games/wallpaper/Games_gamble3048625.jpg', 'Static_Wallpapers/Games/thumb/Games_gamble3048625thu.webp', 'Static_Wallpapers/Games/blur/', 10, 10, 20, 0, 0, 'games, playing cards', 1, 1, NULL, NULL),
(202, 'Static_Wallpapers/Mountains/wallpaper/Mountain_aigenerated7903288.jpg', 'Static_Wallpapers/Mountains/thumb/Mountain_aigenerated7903288thu.webp', 'Static_Wallpapers/Mountains/blur/', 2, 66, 46, 0, 0, 'mountain, snow, water, cloudy', 1, 1, NULL, NULL);
INSERT INTO `static_wallpapers` (`id`, `img_path`, `thumb_path`, `blur_path`, `cat_id`, `likes`, `downloads`, `unlike`, `set_wp`, `hash_tags`, `wp_show`, `featured`, `created_at`, `updated_at`) VALUES
(203, 'Static_Wallpapers/Games/wallpaper/Games_king1846807.jpg', 'Static_Wallpapers/Games/thumb/Games_king1846807thu.webp', 'Static_Wallpapers/Games/blur/', 10, 23, 135, 0, 0, 'chess, games, mind game', 1, 1, NULL, NULL),
(204, 'Static_Wallpapers/Galaxies/wallpaper/Galaxy_aigenerated7734505.jpg', 'Static_Wallpapers/Galaxies/thumb/Galaxy_aigenerated7734505thu.webp', 'Static_Wallpapers/Galaxies/blur/', 20, 32, 30, 0, 0, 'galaxy, spaceship', 1, 1, NULL, NULL),
(205, 'Static_Wallpapers/Mountains/wallpaper/Mountain_aigenerated79044061920.jpg', 'Static_Wallpapers/Mountains/thumb/Mountain_aigenerated79044061920thu.webp', 'Static_Wallpapers/Mountains/blur/', 2, 49, 83, 0, 0, 'mountain, water, sky', 1, 1, NULL, NULL),
(206, 'Static_Wallpapers/Anime/wallpaper/Anime_child7899902.jpg', 'Static_Wallpapers/Anime/thumb/Anime_child7899902thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 386, 16, 0, 0, 'girls, anime', 1, 1, NULL, NULL),
(207, 'Static_Wallpapers/Galaxies/wallpaper/Galaxy_aigenerated7734542.jpg', 'Static_Wallpapers/Galaxies/thumb/Galaxy_aigenerated7734542thu.webp', 'Static_Wallpapers/Galaxies/blur/', 20, 29, 17, 0, 0, 'space, man, moon, galaxy', 1, 1, NULL, NULL),
(208, 'Static_Wallpapers/Love/wallpaper/Love_aigenerated7728180.jpg', 'Static_Wallpapers/Love/thumb/Love_aigenerated7728180thu.webp', 'Static_Wallpapers/Love/blur/', 11, 232, 478, 0, 0, 'heart, love, flower, red rose', 1, 1, NULL, NULL),
(209, 'Static_Wallpapers/Anime/wallpaper/Anime_cutestrobotspacegirlspacesuitgenerativeai.jpg', 'Static_Wallpapers/Anime/thumb/Anime_cutestrobotspacegirlspacesuitgenerativeaithu.webp', 'Static_Wallpapers/Anime/blur/', 8, 14, 1, 0, 0, 'character, anime, robots', 1, 1, NULL, NULL),
(210, 'Static_Wallpapers/Mountains/wallpaper/Mountain_aigenerated7904413.jpg', 'Static_Wallpapers/Mountains/thumb/Mountain_aigenerated7904413thu.webp', 'Static_Wallpapers/Mountains/blur/', 2, 387, 34, 0, 0, 'mountain, cloudy, sky', 1, 1, NULL, NULL),
(211, 'Static_Wallpapers/Galaxies/wallpaper/Galaxy_aigenerated7743081.jpg', 'Static_Wallpapers/Galaxies/thumb/Galaxy_aigenerated7743081thu.webp', 'Static_Wallpapers/Galaxies/blur/', 20, 31, 15, 0, 0, 'galaxy, earth, moon, lights', 1, 1, NULL, NULL),
(212, 'Static_Wallpapers/Love/wallpaper/Love_aigenerated7752090.jpg', 'Static_Wallpapers/Love/thumb/Love_aigenerated7752090thu.webp', 'Static_Wallpapers/Love/blur/', 11, 110, 81, 0, 0, 'red heart, love, red', 1, 1, NULL, NULL),
(213, 'Static_Wallpapers/Mountains/wallpaper/Mountain_aigenerated79150571920.jpg', 'Static_Wallpapers/Mountains/thumb/Mountain_aigenerated79150571920thu.webp', 'Static_Wallpapers/Mountains/blur/', 2, 74, 19, 0, 0, 'mountain, water, cloudy, sky', 1, 1, NULL, NULL),
(214, 'Static_Wallpapers/Love/wallpaper/Love_aigenerated7752093.jpg', 'Static_Wallpapers/Love/thumb/Love_aigenerated7752093thu.webp', 'Static_Wallpapers/Love/blur/', 11, 130, 214, 0, 0, 'cloudy heart, heart, love', 1, 1, NULL, NULL),
(215, 'Static_Wallpapers/Galaxies/wallpaper/Galaxy_aigenerated7743089.jpg', 'Static_Wallpapers/Galaxies/thumb/Galaxy_aigenerated7743089thu.webp', 'Static_Wallpapers/Galaxies/blur/', 20, 28, 42, 0, 0, 'earth, moon, spaceship, man', 1, 1, NULL, NULL),
(216, 'Static_Wallpapers/Anime/wallpaper/Anime_dog7743397.jpg', 'Static_Wallpapers/Anime/thumb/Anime_dog7743397thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 55, 89, 0, 0, 'boys, dogs, puppy, anime', 1, 1, NULL, NULL),
(217, 'Static_Wallpapers/Love/wallpaper/Love_aigenerated7752098.jpg', 'Static_Wallpapers/Love/thumb/Love_aigenerated7752098thu.webp', 'Static_Wallpapers/Love/blur/', 11, 83, 109, 0, 0, 'heart, white heart, love', 1, 1, NULL, NULL),
(218, 'Static_Wallpapers/Galaxies/wallpaper/Galaxy_aigenerated7743167.jpg', 'Static_Wallpapers/Galaxies/thumb/Galaxy_aigenerated7743167thu.webp', 'Static_Wallpapers/Galaxies/blur/', 20, 52, 154, 0, 0, 'earth, galaxy, moon, sun', 1, 1, NULL, NULL),
(219, 'Static_Wallpapers/Mountains/wallpaper/Mountain_aigenerated7945041.jpg', 'Static_Wallpapers/Mountains/thumb/Mountain_aigenerated7945041thu.webp', 'Static_Wallpapers/Mountains/blur/', 2, 42, 30, 0, 0, 'mountain, pink weather, sky, cloudy', 1, 1, NULL, NULL),
(220, 'Static_Wallpapers/Anime/wallpaper/Anime_einstein7828063.jpg', 'Static_Wallpapers/Anime/thumb/Anime_einstein7828063thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 35, 38, 0, 0, 'scientists, cycle', 1, 1, NULL, NULL),
(221, 'Static_Wallpapers/Love/wallpaper/Love_aigenerated7752123.jpg', 'Static_Wallpapers/Love/thumb/Love_aigenerated7752123thu.webp', 'Static_Wallpapers/Love/blur/', 11, 91, 181, 0, 0, 'heart, love, water', 1, 1, NULL, NULL),
(222, 'Static_Wallpapers/Galaxies/wallpaper/Galaxy_aigenerated7743237.jpg', 'Static_Wallpapers/Galaxies/thumb/Galaxy_aigenerated7743237thu.webp', 'Static_Wallpapers/Galaxies/blur/', 20, 35, 59, 0, 0, 'galaxy, mars, moon, circle', 1, 1, NULL, NULL),
(223, 'Static_Wallpapers/Mountains/wallpaper/Mountain_aigenerated7945043.jpg', 'Static_Wallpapers/Mountains/thumb/Mountain_aigenerated7945043thu.webp', 'Static_Wallpapers/Mountains/blur/', 2, 58, 99, 0, 0, 'mountain, cloudy, sky, sunset', 1, 1, NULL, NULL),
(224, 'Static_Wallpapers/Anime/wallpaper/Anime_fantasy7893106.jpg', 'Static_Wallpapers/Anime/thumb/Anime_fantasy7893106thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 8, 5, 0, 0, 'warriors, characters, anime', 1, 1, NULL, NULL),
(225, 'Static_Wallpapers/Love/wallpaper/Love_aigenerated7752128.jpg', 'Static_Wallpapers/Love/thumb/Love_aigenerated7752128thu.webp', 'Static_Wallpapers/Love/blur/', 11, 69, 182, 0, 0, 'red heart, love, heart', 1, 1, NULL, NULL),
(226, 'Static_Wallpapers/Galaxies/wallpaper/Galaxy_aigenerated7743239.jpg', 'Static_Wallpapers/Galaxies/thumb/Galaxy_aigenerated7743239thu.webp', 'Static_Wallpapers/Galaxies/blur/', 20, 37, 117, 0, 0, 'earth, planet, galaxy', 1, 1, NULL, NULL),
(227, 'Static_Wallpapers/Mountains/wallpaper/Mountain_alberta22972041920.jpg', 'Static_Wallpapers/Mountains/thumb/Mountain_alberta22972041920thu.webp', 'Static_Wallpapers/Mountains/blur/', 2, 109, 96, 0, 0, 'water, weather, mountain, cloudy', 1, 1, NULL, NULL),
(228, 'Static_Wallpapers/Anime/wallpaper/Anime_fantasy7894119.jpg', 'Static_Wallpapers/Anime/thumb/Anime_fantasy7894119thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 10, 13, 0, 0, 'lizards, winters, cold', 1, 1, NULL, NULL),
(229, 'Static_Wallpapers/Love/wallpaper/Love_aigenerated7752130.jpg', 'Static_Wallpapers/Love/thumb/Love_aigenerated7752130thu.webp', 'Static_Wallpapers/Love/blur/', 11, 56, 71, 0, 0, 'hearts, pink hearts, love', 1, 1, NULL, NULL),
(230, 'Static_Wallpapers/Galaxies/wallpaper/Galaxy_aigenerated77432541920.jpg', 'Static_Wallpapers/Galaxies/thumb/Galaxy_aigenerated77432541920thu.webp', 'Static_Wallpapers/Galaxies/blur/', 20, 35, 35, 0, 0, 'galaxy, moon, lighting, lights', 1, 1, NULL, NULL),
(231, 'Static_Wallpapers/Mountains/wallpaper/Mountain_beach7992061.jpg', 'Static_Wallpapers/Mountains/thumb/Mountain_beach7992061thu.webp', 'Static_Wallpapers/Mountains/blur/', 2, 63, 94, 0, 0, 'mountains, water, sky, cloudy', 1, 1, NULL, NULL),
(232, 'Static_Wallpapers/Love/wallpaper/Love_aigenerated7752134.jpg', 'Static_Wallpapers/Love/thumb/Love_aigenerated7752134thu.webp', 'Static_Wallpapers/Love/blur/', 11, 170, 280, 0, 0, 'heart on fire, fire, love, broken', 1, 1, NULL, NULL),
(233, 'Static_Wallpapers/Galaxies/wallpaper/Galaxy_aigenerated7772033.jpg', 'Static_Wallpapers/Galaxies/thumb/Galaxy_aigenerated7772033thu.webp', 'Static_Wallpapers/Galaxies/blur/', 20, 18, 84, 0, 0, 'galaxy, spaceman, blackman', 1, 1, NULL, NULL),
(234, 'Static_Wallpapers/Anime/wallpaper/Anime_fantasy7894121.jpg', 'Static_Wallpapers/Anime/thumb/Anime_fantasy7894121thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 24, 88, 0, 0, 'alien, lizard', 1, 1, NULL, NULL),
(235, 'Static_Wallpapers/Mountains/wallpaper/Mountain_landscape4334259.jpg', 'Static_Wallpapers/Mountains/thumb/Mountain_landscape4334259thu.webp', 'Static_Wallpapers/Mountains/blur/', 2, 37, 82, 0, 0, 'mountain, cloudy, water', 1, 1, NULL, NULL),
(236, 'Static_Wallpapers/Anime/wallpaper/Anime_fantasy7917481.jpg', 'Static_Wallpapers/Anime/thumb/Anime_fantasy7917481thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 23, 13, 0, 0, 'bottles, dark, rocks', 1, 1, NULL, NULL),
(237, 'Static_Wallpapers/Love/wallpaper/Love_aigenerated7752150.jpg', 'Static_Wallpapers/Love/thumb/Love_aigenerated7752150thu.webp', 'Static_Wallpapers/Love/blur/', 11, 64, 62, 0, 0, 'cloudy heart, heart, sky', 1, 1, NULL, NULL),
(238, 'Static_Wallpapers/Galaxies/wallpaper/Galaxy_aigenerated7774368.jpg', 'Static_Wallpapers/Galaxies/thumb/Galaxy_aigenerated7774368thu.webp', 'Static_Wallpapers/Galaxies/blur/', 20, 36, 64, 0, 0, 'earth, hotboll, galaxy', 1, 1, NULL, NULL),
(239, 'Static_Wallpapers/Mountains/wallpaper/Mountain_landscape7980276.jpg', 'Static_Wallpapers/Mountains/thumb/Mountain_landscape7980276thu.webp', 'Static_Wallpapers/Mountains/blur/', 2, 59, 16, 0, 0, 'mountain, car, rain', 1, 1, NULL, NULL),
(240, 'Static_Wallpapers/Anime/wallpaper/Anime_fantasy7918187.jpg', 'Static_Wallpapers/Anime/thumb/Anime_fantasy7918187thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 18, 11, 0, 0, 'characters, old, candles, anime', 1, 1, NULL, NULL),
(241, 'Static_Wallpapers/Galaxies/wallpaper/Galaxy_aigenerated7787717.jpg', 'Static_Wallpapers/Galaxies/thumb/Galaxy_aigenerated7787717thu.webp', 'Static_Wallpapers/Galaxies/blur/', 20, 48, 124, 0, 0, 'galaxy, earth, moon, lights, fire', 1, 1, NULL, NULL),
(242, 'Static_Wallpapers/Others/wallpaper/Others_abstractglowingflamedrops.jpg', 'Static_Wallpapers/Others/thumb/Others_abstractglowingflamedropsthu.webp', 'Static_Wallpapers/Others/blur/', 6, 52, 110, 0, 0, 'bulbs, lights, colorful', 1, 1, NULL, '2024-11-26 04:40:39'),
(243, 'Static_Wallpapers/Galaxies/wallpaper/Galaxy_aigenerated7826316.jpg', 'Static_Wallpapers/Galaxies/thumb/Galaxy_aigenerated7826316thu.webp', 'Static_Wallpapers/Galaxies/blur/', 20, 58, 55, 0, 0, 'moon, sky, galaxy', 1, 1, NULL, NULL),
(244, 'Static_Wallpapers/Anime/wallpaper/Anime_fantasy7958179.jpg', 'Static_Wallpapers/Anime/thumb/Anime_fantasy7958179thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 8, 70, 0, 0, 'anime, characters, dark', 1, 1, NULL, NULL),
(245, 'Static_Wallpapers/Others/wallpaper/Others_aigenerated7712047.jpg', 'Static_Wallpapers/Others/thumb/Others_aigenerated7712047thu.webp', 'Static_Wallpapers/Others/blur/', 6, 43, 88, 0, 0, 'other, time machine', 1, 1, NULL, NULL),
(246, 'Static_Wallpapers/Galaxies/wallpaper/Galaxy_aigenerated7826318.jpg', 'Static_Wallpapers/Galaxies/thumb/Galaxy_aigenerated7826318thu.webp', 'Static_Wallpapers/Galaxies/blur/', 20, 49, 68, 0, 0, 'galaxy, moon, earth, colors, colourful sky', 1, 1, NULL, NULL),
(247, 'Static_Wallpapers/Anime/wallpaper/Anime_fantasy7980222.jpg', 'Static_Wallpapers/Anime/thumb/Anime_fantasy7980222thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 10, 16, 0, 0, 'characters, dark, horror', 1, 1, NULL, NULL),
(248, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated77344101920.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated77344101920thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 103, 32, 0, 0, 'sky, nature, water, grass', 1, 1, NULL, '2024-11-26 04:40:45'),
(249, 'Static_Wallpapers/Others/wallpaper/Others_aigenerated7721415.jpg', 'Static_Wallpapers/Others/thumb/Others_aigenerated7721415thu.webp', 'Static_Wallpapers/Others/blur/', 6, 52, 97, 0, 0, 'teddy bear, other', 1, 1, NULL, NULL),
(250, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7734419.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7734419thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 44, 99, 0, 0, 'man, snow, snowfall, nature, tree', 1, 1, NULL, NULL),
(251, 'Static_Wallpapers/Anime/wallpaper/Anime_fantasy7996802.jpg', 'Static_Wallpapers/Anime/thumb/Anime_fantasy7996802thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 19, 13, 0, 0, 'Characters, bats, devils', 1, 1, NULL, NULL),
(252, 'Static_Wallpapers/Quotes/wallpaper/Quotes_16440424v907.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_16440424v907thu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 33, 99, 0, 0, 'dark, quotes', 1, 1, NULL, NULL),
(253, 'Static_Wallpapers/Others/wallpaper/Others_aigenerated7740074.jpg', 'Static_Wallpapers/Others/thumb/Others_aigenerated7740074thu.webp', 'Static_Wallpapers/Others/blur/', 6, 21, 102, 0, 0, 'girlheal, other, girl', 1, 1, NULL, NULL),
(254, 'Static_Wallpapers/Quotes/wallpaper/Quotes_8888162836.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_8888162836thu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 24, 22, 0, 0, 'Blue, Quotes, motivation', 1, 1, NULL, NULL),
(255, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7734426.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7734426thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 45, 111, 0, 0, 'light house, seaside, water, nature, lights, ', 1, 1, NULL, NULL),
(256, 'Static_Wallpapers/Anime/wallpaper/Anime_fantasy8013394.jpg', 'Static_Wallpapers/Anime/thumb/Anime_fantasy8013394thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 13, 102, 0, 0, 'devils, horror, dark', 1, 1, NULL, NULL),
(257, 'Static_Wallpapers/Others/wallpaper/Others_aigenerated7747198.jpg', 'Static_Wallpapers/Others/thumb/Others_aigenerated7747198thu.webp', 'Static_Wallpapers/Others/blur/', 6, 71, 98, 0, 0, 'bear, teddy, cute, innocent', 1, 1, NULL, NULL),
(258, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7734428.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7734428thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 63, 82, 0, 0, 'green house, house', 1, 1, NULL, NULL),
(259, 'Static_Wallpapers/Anime/wallpaper/Anime_fullbody7730543.jpg', 'Static_Wallpapers/Anime/thumb/Anime_fullbody7730543thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 28, 40, 0, 0, 'robots, technology, aliens', 1, 1, NULL, NULL),
(260, 'Static_Wallpapers/Quotes/wallpaper/Quotes_994501OHTNNL.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_994501OHTNNLthu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 31, 12, 0, 0, 'quotes, lines', 1, 1, NULL, NULL),
(261, 'Static_Wallpapers/Others/wallpaper/Others_aigenerated7761618.jpg', 'Static_Wallpapers/Others/thumb/Others_aigenerated7761618thu.webp', 'Static_Wallpapers/Others/blur/', 6, 63, 63, 0, 0, 'teddy bear, other, child', 1, 1, NULL, NULL),
(262, 'Static_Wallpapers/Quotes/wallpaper/Quotes_blacktextboardyellow.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_blacktextboardyellowthu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 21, 90, 0, 0, 'quotes, lines', 1, 1, NULL, NULL),
(263, 'Static_Wallpapers/Anime/wallpaper/Anime_gnome7512723.jpg', 'Static_Wallpapers/Anime/thumb/Anime_gnome7512723thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 37, 84, 0, 0, 'anime, cartoons', 1, 1, NULL, NULL),
(264, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7734503.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7734503thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 34, 110, 0, 0, 'mountain, nature, lighting, neon, lights', 1, 1, NULL, NULL),
(265, 'Static_Wallpapers/Others/wallpaper/Others_aigenerated7765477.jpg', 'Static_Wallpapers/Others/thumb/Others_aigenerated7765477thu.webp', 'Static_Wallpapers/Others/blur/', 6, 84, 114, 0, 0, 'tree, water, other', 1, 1, NULL, NULL),
(266, 'Static_Wallpapers/Quotes/wallpaper/Quotes_ethics947573.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_ethics947573thu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 16, 10, 0, 0, 'Quotes, black, green, orange, motivation', 1, 1, NULL, NULL),
(267, 'Static_Wallpapers/Anime/wallpaper/Anime_hamster7792472.jpg', 'Static_Wallpapers/Anime/thumb/Anime_hamster7792472thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 64, 27, 0, 0, 'anime, Squirrells, cute', 1, 1, NULL, NULL),
(268, 'Static_Wallpapers/Others/wallpaper/Others_aigenerated7775485.jpg', 'Static_Wallpapers/Others/thumb/Others_aigenerated7775485thu.webp', 'Static_Wallpapers/Others/blur/', 6, 80, 212, 0, 0, 'perfume bottle, girl perfume, other', 1, 1, NULL, NULL),
(269, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7734510.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7734510thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 44, 58, 0, 0, 'mountain, man, nature, sky', 1, 1, NULL, NULL),
(270, 'Static_Wallpapers/Quotes/wallpaper/Quotes_head5484022.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_head5484022thu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 8, 10, 0, 0, 'quotes, strong mind', 1, 1, NULL, NULL),
(271, 'Static_Wallpapers/Anime/wallpaper/Anime_hat7960713.jpg', 'Static_Wallpapers/Anime/thumb/Anime_hat7960713thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 29, 6, 0, 0, 'cartoons, characters, anime, boys, kids', 1, 1, NULL, NULL),
(272, 'Static_Wallpapers/Others/wallpaper/Others_aigenerated7905602.jpg', 'Static_Wallpapers/Others/thumb/Others_aigenerated7905602thu.webp', 'Static_Wallpapers/Others/blur/', 6, 19, 100, 0, 0, 'black evil, other', 1, 1, NULL, NULL),
(273, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7743221.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7743221thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 38, 41, 0, 0, 'sky, mountain, cloud, nature', 1, 1, NULL, NULL),
(274, 'Static_Wallpapers/Quotes/wallpaper/Quotes_noteencouragementpapr.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_noteencouragementpaprthu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 23, 3, 0, 0, 'Quotes, motivation, pen, dairy, girl', 1, 1, NULL, NULL),
(275, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7747161.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7747161thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 58, 135, 0, 0, 'nature, forest, green, lights', 1, 1, NULL, NULL),
(276, 'Static_Wallpapers/Anime/wallpaper/Anime_hightechhelmetshumanoidbeinggenerativeai.jpg', 'Static_Wallpapers/Anime/thumb/Anime_hightechhelmetshumanoidbeinggenerativeaithu.webp', 'Static_Wallpapers/Anime/blur/', 8, 20, 13, 0, 0, 'machine, robots, technology', 1, 1, NULL, NULL),
(277, 'Static_Wallpapers/Others/wallpaper/Others_aigenerated7919886.jpg', 'Static_Wallpapers/Others/thumb/Others_aigenerated7919886thu.webp', 'Static_Wallpapers/Others/blur/', 6, 33, 20, 0, 0, 'baloon, pink, other', 1, 1, NULL, NULL),
(278, 'Static_Wallpapers/Quotes/wallpaper/Quotes_pexelsalesiakozik.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_pexelsalesiakozikthu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 18, 7, 0, 0, 'quotes, lines', 1, 1, NULL, NULL),
(279, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7747250.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7747250thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 40, 61, 0, 0, 'nature, lights', 1, 1, NULL, NULL),
(280, 'Static_Wallpapers/Anime/wallpaper/Anime_horror7942059.jpg', 'Static_Wallpapers/Anime/thumb/Anime_horror7942059thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 17, 18, 0, 0, 'dark, characters, horror', 1, 1, NULL, NULL),
(281, 'Static_Wallpapers/Others/wallpaper/Others_aigenerated7935828.jpg', 'Static_Wallpapers/Others/thumb/Others_aigenerated7935828thu.webp', 'Static_Wallpapers/Others/blur/', 6, 21, 12, 0, 0, 'heal, other', 1, 1, NULL, NULL),
(282, 'Static_Wallpapers/Quotes/wallpaper/Quotes_pexelsannashvets.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_pexelsannashvetsthu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 11, 16, 0, 0, 'quotes, lines', 1, 1, NULL, NULL),
(283, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7767547.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7767547thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 70, 91, 0, 0, 'mountain, grass, nature', 1, 1, NULL, NULL),
(284, 'Static_Wallpapers/Others/wallpaper/Others_aigenerated7935831.jpg', 'Static_Wallpapers/Others/thumb/Others_aigenerated7935831thu.webp', 'Static_Wallpapers/Others/blur/', 6, 35, 74, 0, 0, 'heal, other', 1, 1, NULL, NULL),
(285, 'Static_Wallpapers/Anime/wallpaper/Anime_huntress7758199.jpg', 'Static_Wallpapers/Anime/thumb/Anime_huntress7758199thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 12, 9, 0, 0, 'AI, characters, anime', 1, 1, NULL, NULL),
(286, 'Static_Wallpapers/Quotes/wallpaper/Quotes_pexelsannatarazevich6268695.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_pexelsannatarazevich6268695thu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 12, 6, 0, 0, 'quotes, motivation, white, green, pink', 1, 1, NULL, NULL),
(287, 'Static_Wallpapers/Others/wallpaper/Others_aigenerated7986803.jpg', 'Static_Wallpapers/Others/thumb/Others_aigenerated7986803thu.webp', 'Static_Wallpapers/Others/blur/', 6, 37, 57, 0, 0, 'brain, glass, other', 1, 1, NULL, NULL),
(288, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7771733.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7771733thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 35, 121, 0, 0, 'mountain, cloudy, waterfall', 1, 1, NULL, NULL),
(289, 'Static_Wallpapers/Anime/wallpaper/Anime_image21.jpg', 'Static_Wallpapers/Anime/thumb/Anime_image21thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 13, 12, 0, 0, 'Space, astronauts, galaxy', 1, 1, NULL, NULL),
(290, 'Static_Wallpapers/Quotes/wallpaper/Quotes_pexelsannatarazevich.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_pexelsannatarazevichthu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 35, 57, 0, 0, 'quotes, lines', 1, 1, NULL, NULL),
(291, 'Static_Wallpapers/Others/wallpaper/Others_aigenerated7987236.jpg', 'Static_Wallpapers/Others/thumb/Others_aigenerated7987236thu.webp', 'Static_Wallpapers/Others/blur/', 6, 58, 72, 0, 0, 'ship, other, water', 1, 1, NULL, NULL),
(292, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7771737.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7771737thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 59, 117, 0, 0, 'mountain, cloudy, waterfall, man, nature', 1, 1, NULL, NULL),
(293, 'Static_Wallpapers/Quotes/wallpaper/Quotes_pexelsdinhnghialee.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_pexelsdinhnghialeethu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 14, 53, 0, 0, 'lines, neon', 1, 1, NULL, NULL),
(294, 'Static_Wallpapers/Anime/wallpaper/Anime_kigenerated7822837.jpg', 'Static_Wallpapers/Anime/thumb/Anime_kigenerated7822837thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 16, 95, 0, 0, 'old man, characters', 1, 1, NULL, NULL),
(295, 'Static_Wallpapers/Others/wallpaper/Others_aigenerated7989264.jpg', 'Static_Wallpapers/Others/thumb/Others_aigenerated7989264thu.webp', 'Static_Wallpapers/Others/blur/', 6, 45, 43, 0, 0, 'neon lights, pink', 1, 1, NULL, NULL),
(296, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7848445.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7848445thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 84, 92, 0, 0, 'sun, nature, sand', 1, 1, NULL, NULL),
(297, 'Static_Wallpapers/Anime/wallpaper/Anime_king7797575.jpg', 'Static_Wallpapers/Anime/thumb/Anime_king7797575thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 8, 72, 0, 0, 'king, old man, anime, characters', 1, 1, NULL, NULL),
(298, 'Static_Wallpapers/Quotes/wallpaper/Quotes_pexelsevabronzini7661287.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_pexelsevabronzini7661287thu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 9, 123, 0, 0, 'black, white, quotes, motivation, paper', 1, 1, NULL, NULL),
(299, 'Static_Wallpapers/Others/wallpaper/Others_blue5951087.jpg', 'Static_Wallpapers/Others/thumb/Others_blue5951087thu.webp', 'Static_Wallpapers/Others/blur/', 6, 19, 6, 0, 0, 'camera, blue', 1, 1, NULL, NULL),
(300, 'Static_Wallpapers/Anime/wallpaper/Anime_man7498983.jpg', 'Static_Wallpapers/Anime/thumb/Anime_man7498983thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 20, 85, 0, 0, 'batman, characters', 1, 1, NULL, NULL),
(301, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7848450.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7848450thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 63, 58, 0, 0, 'mountain, nature, tree, desert', 1, 1, NULL, NULL),
(302, 'Static_Wallpapers/Quotes/wallpaper/Quotes_pexelsevabronzini.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_pexelsevabronzinithu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 23, 24, 0, 0, 'quotes, lines', 1, 1, NULL, NULL),
(303, 'Static_Wallpapers/Others/wallpaper/Others_camera7910133.jpg', 'Static_Wallpapers/Others/thumb/Others_camera7910133thu.webp', 'Static_Wallpapers/Others/blur/', 6, 22, 8, 0, 0, 'camera, other', 1, 1, NULL, NULL),
(304, 'Static_Wallpapers/Anime/wallpaper/Anime_mariokartwithgodofwargraphics.jpg', 'Static_Wallpapers/Anime/thumb/Anime_mariokartwithgodofwargraphicsthu.webp', 'Static_Wallpapers/Anime/blur/', 8, 175, 63, 0, 0, 'anime, characters', 1, 1, NULL, NULL),
(305, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated78484511920.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated78484511920thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 44, 59, 0, 0, 'seaview, moon, thunderstorm', 1, 1, NULL, NULL),
(306, 'Static_Wallpapers/Quotes/wallpaper/Quotes_pexelsleeloothefirst5245121.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_pexelsleeloothefirst5245121thu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 14, 90, 0, 0, 'motivation, quotes, white, orange', 1, 1, NULL, NULL),
(307, 'Static_Wallpapers/Others/wallpaper/Others_camera7914834.jpg', 'Static_Wallpapers/Others/thumb/Others_camera7914834thu.webp', 'Static_Wallpapers/Others/blur/', 6, 18, 92, 0, 0, 'camera, other', 1, 1, NULL, NULL),
(308, 'Static_Wallpapers/Anime/wallpaper/Anime_marvelcomics7986387.jpg', 'Static_Wallpapers/Anime/thumb/Anime_marvelcomics7986387thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 47, 99, 0, 0, 'fox, anime, animals', 1, 1, NULL, NULL),
(309, 'Static_Wallpapers/Quotes/wallpaper/Quotes_pexelsleeloothefirst5842225.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_pexelsleeloothefirst5842225thu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 12, 14, 0, 0, 'cube, motivation, quotes, black, white', 1, 1, NULL, NULL),
(310, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7848456.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7848456thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 89, 246, 0, 0, 'mountain, waterdrop, nature', 1, 1, NULL, NULL),
(311, 'Static_Wallpapers/Others/wallpaper/Others_camera7914837.jpg', 'Static_Wallpapers/Others/thumb/Others_camera7914837thu.webp', 'Static_Wallpapers/Others/blur/', 6, 36, 52, 0, 0, 'camera, sunset', 1, 1, NULL, NULL),
(312, 'Static_Wallpapers/Quotes/wallpaper/Quotes_pexelsleeloothefirst7818109.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_pexelsleeloothefirst7818109thu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 29, 18, 0, 0, 'black, white, motivation, quotes', 1, 1, NULL, NULL),
(313, 'Static_Wallpapers/Anime/wallpaper/Anime_neoncharacters1.jpg', 'Static_Wallpapers/Anime/thumb/Anime_neoncharacters1thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 10, 35, 0, 0, 'anime, animals', 1, 1, NULL, NULL),
(314, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7848475.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7848475thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 74, 142, 0, 0, 'nature, water, waterfall', 1, 1, NULL, NULL),
(315, 'Static_Wallpapers/Patterns/wallpaper/Pattern_abstract7868219.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_abstract7868219thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 43, 25, 0, 0, 'blocks, blue, orange', 1, 1, NULL, NULL),
(316, 'Static_Wallpapers/Quotes/wallpaper/Quotes_pexelslilartsy1721094.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_pexelslilartsy1721094thu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 23, 5, 0, 0, 'diary, notebook, motivation, quotes', 1, 1, NULL, NULL),
(317, 'Static_Wallpapers/Anime/wallpaper/Anime_pokemon8012705.jpg', 'Static_Wallpapers/Anime/thumb/Anime_pokemon8012705thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 27, 20, 0, 0, 'animals, characters', 1, 1, NULL, NULL),
(318, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated78485281920.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated78485281920thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 76, 114, 0, 0, 'nature, water, sun, beauty', 1, 1, NULL, NULL),
(319, 'Static_Wallpapers/Patterns/wallpaper/Pattern_aigenerated7712390.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_aigenerated7712390thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 84, 122, 0, 0, 'trees, purple, orange', 1, 1, NULL, NULL),
(320, 'Static_Wallpapers/Quotes/wallpaper/Quotes_pexelslisafotios1485548.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_pexelslisafotios1485548thu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 56, 14, 0, 0, 'quotes, motivation, white, black', 1, 1, NULL, NULL),
(321, 'Static_Wallpapers/Patterns/wallpaper/Pattern_aigenerated7712391.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_aigenerated7712391thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 57, 108, 0, 0, 'trees, purple, orange, blue', 1, 1, NULL, NULL),
(322, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7848546.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7848546thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 51, 42, 0, 0, 'deserts, nature, sunlight', 1, 1, NULL, NULL),
(323, 'Static_Wallpapers/Anime/wallpaper/Anime_pokemon8012706.jpg', 'Static_Wallpapers/Anime/thumb/Anime_pokemon8012706thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 31, 41, 0, 0, 'rabbits, animals ', 1, 1, NULL, NULL),
(324, 'Static_Wallpapers/Quotes/wallpaper/Quotes_pexelsnadilindsay3078831.jpg', 'Static_Wallpapers/Quotes/thumb/Quotes_pexelsnadilindsay3078831thu.webp', 'Static_Wallpapers/Quotes/blur/', 13, 29, 51, 0, 0, 'quotes, motivation, dark, neons, lights', 1, 1, NULL, NULL),
(325, 'Static_Wallpapers/Patterns/wallpaper/Pattern_aigenerated7747137.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_aigenerated7747137thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 55, 244, 0, 0, 'water, colors', 1, 1, NULL, NULL),
(326, 'Static_Wallpapers/Anime/wallpaper/Anime_Portra400highdpifilmscanofaNASAastronaut.jpg', 'Static_Wallpapers/Anime/thumb/Anime_Portra400highdpifilmscanofaNASAastronautthu.webp', 'Static_Wallpapers/Anime/blur/', 8, 24, 67, 0, 0, 'Astronauts, space, galaxy', 1, 1, NULL, NULL),
(327, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated78485871920.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated78485871920thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 67, 75, 0, 0, 'water, nature, sky', 1, 1, NULL, NULL),
(328, 'Static_Wallpapers/Room/wallpaper/Room_aigenerated7835664.jpg', 'Static_Wallpapers/Room/thumb/Room_aigenerated7835664thu.webp', 'Static_Wallpapers/Room/blur/', 19, 25, 75, 0, 0, 'offices, rooms, meeting rooms', 1, 1, NULL, NULL),
(329, 'Static_Wallpapers/Patterns/wallpaper/Pattern_aigenerated7747176.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_aigenerated7747176thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 41, 60, 0, 0, 'water, circle, orange', 1, 1, NULL, NULL),
(330, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7848595.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7848595thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 49, 87, 0, 0, 'mountains, nature, snow, cloudy', 1, 1, NULL, NULL),
(331, 'Static_Wallpapers/Anime/wallpaper/Anime_portraitmysticalleprechauncharactersurroundedbynaturevegetation.jpg', 'Static_Wallpapers/Anime/thumb/Anime_portraitmysticalleprechauncharactersurroundedbynaturevegetationthu.webp', 'Static_Wallpapers/Anime/blur/', 8, 25, 18, 0, 0, 'old man, anime', 1, 1, NULL, NULL),
(332, 'Static_Wallpapers/Room/wallpaper/Room_aigenerated7876857.jpg', 'Static_Wallpapers/Room/thumb/Room_aigenerated7876857thu.webp', 'Static_Wallpapers/Room/blur/', 19, 27, 88, 0, 0, 'rooms, views, private places', 1, 1, NULL, NULL),
(333, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated78486101920.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated78486101920thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 66, 71, 0, 0, 'nature, beauty, water', 1, 1, NULL, NULL),
(334, 'Static_Wallpapers/Anime/wallpaper/Anime_raichu8012701.jpg', 'Static_Wallpapers/Anime/thumb/Anime_raichu8012701thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 60, 91, 0, 0, 'anime, cats, animals', 1, 1, NULL, NULL),
(335, 'Static_Wallpapers/Patterns/wallpaper/Pattern_aigenerated7747214.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_aigenerated7747214thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 66, 106, 0, 0, 'water drops, colors', 1, 1, NULL, NULL),
(336, 'Static_Wallpapers/Room/wallpaper/Room_aigenerated7876858.jpg', 'Static_Wallpapers/Room/thumb/Room_aigenerated7876858thu.webp', 'Static_Wallpapers/Room/blur/', 19, 19, 40, 0, 0, 'office, meeting, designs, rooms', 1, 1, NULL, NULL),
(337, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7848619.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7848619thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 26, 11, 0, 0, 'mountains, nature, sand, deserts', 1, 1, NULL, NULL),
(338, 'Static_Wallpapers/Anime/wallpaper/Anime_robot5438618.jpg', 'Static_Wallpapers/Anime/thumb/Anime_robot5438618thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 12, 5, 0, 0, 'characters, anime, purple', 1, 1, NULL, NULL),
(339, 'Static_Wallpapers/Patterns/wallpaper/Pattern_aigenerated7747267.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_aigenerated7747267thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 75, 31, 0, 0, 'colors, patterns, orange', 1, 1, NULL, NULL),
(340, 'Static_Wallpapers/Room/wallpaper/Room_aigenerated7876859.jpg', 'Static_Wallpapers/Room/thumb/Room_aigenerated7876859thu.webp', 'Static_Wallpapers/Room/blur/', 19, 26, 80, 0, 0, 'meetingroom, room, design', 1, 1, NULL, NULL),
(341, 'Static_Wallpapers/Patterns/wallpaper/Pattern_aigenerated7747300.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_aigenerated7747300thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 68, 108, 0, 0, 'water drop, colors, pattern', 1, 1, NULL, NULL),
(342, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7848620.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7848620thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 35, 30, 0, 0, 'nature, snow, mountains', 1, 1, NULL, NULL),
(343, 'Static_Wallpapers/Patterns/wallpaper/Pattern_aigenerated7747320.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_aigenerated7747320thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 50, 108, 0, 0, 'water, patterns, color', 1, 1, NULL, NULL),
(344, 'Static_Wallpapers/Anime/wallpaper/Anime_robot7567608.jpg', 'Static_Wallpapers/Anime/thumb/Anime_robot7567608thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 8, 1, 0, 0, 'Robots, Technology, pink', 1, 1, NULL, NULL),
(345, 'Static_Wallpapers/Room/wallpaper/Room_aigenerated7876863.jpg', 'Static_Wallpapers/Room/thumb/Room_aigenerated7876863thu.webp', 'Static_Wallpapers/Room/blur/', 19, 44, 47, 0, 0, 'rooms, office, boss room', 1, 1, NULL, NULL),
(346, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7848629.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7848629thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 110, 45, 0, 0, 'nature, mountains, water', 1, 1, NULL, NULL),
(347, 'Static_Wallpapers/Patterns/wallpaper/Pattern_aigenerated7747339.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_aigenerated7747339thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 67, 188, 0, 0, 'dark colors, patterns, paint, art', 1, 1, NULL, NULL),
(348, 'Static_Wallpapers/Room/wallpaper/Room_aigenerated7876864.jpg', 'Static_Wallpapers/Room/thumb/Room_aigenerated7876864thu.webp', 'Static_Wallpapers/Room/blur/', 19, 44, 13, 0, 0, 'rooms, meeting room, office', 1, 1, NULL, NULL),
(349, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated78486391920.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated78486391920thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 51, 100, 0, 0, 'sky, mountains, clouds, water', 1, 1, NULL, NULL),
(350, 'Static_Wallpapers/Anime/wallpaper/Anime_robot7854915.jpg', 'Static_Wallpapers/Anime/thumb/Anime_robot7854915thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 36, 4, 0, 0, 'robots, technology, cute', 1, 1, NULL, NULL),
(351, 'Static_Wallpapers/Patterns/wallpaper/Pattern_aigenerated7877273.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_aigenerated7877273thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 55, 88, 0, 0, 'paint, art, colors', 1, 1, NULL, NULL),
(352, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated78486541920.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated78486541920thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 574, 58, 0, 0, 'mountains, water, cloud', 1, 1, NULL, NULL),
(353, 'Static_Wallpapers/Anime/wallpaper/Anime_robot7854916.jpg', 'Static_Wallpapers/Anime/thumb/Anime_robot7854916thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 28, 95, 0, 0, 'robots, technology, AI', 1, 1, NULL, NULL),
(354, 'Static_Wallpapers/Patterns/wallpaper/Pattern_aigenerated7884246.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_aigenerated7884246thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 81, 97, 0, 0, 'water drops, art, hackers effects', 1, 1, NULL, NULL),
(355, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7848659.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7848659thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 48, 59, 0, 0, 'nature, colors, sky', 1, 1, NULL, NULL),
(356, 'Static_Wallpapers/Anime/wallpaper/Anime_robot7995503.jpg', 'Static_Wallpapers/Anime/thumb/Anime_robot7995503thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 4, 71, 0, 0, 'Robots, technology, AI', 1, 1, NULL, NULL),
(357, 'Static_Wallpapers/Room/wallpaper/Room_aigenerated7876866.jpg', 'Static_Wallpapers/Room/thumb/Room_aigenerated7876866thu.webp', 'Static_Wallpapers/Room/blur/', 19, 25, 9, 0, 0, 'rooms, private room, design', 1, 1, NULL, NULL),
(358, 'Static_Wallpapers/Patterns/wallpaper/Pattern_aigenerated79149791920.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_aigenerated79149791920thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 53, 63, 0, 0, 'patterns, art, hot balloons, balloons', 1, 1, NULL, NULL),
(359, 'Static_Wallpapers/Room/wallpaper/Room_aigenerated7876867.jpg', 'Static_Wallpapers/Room/thumb/Room_aigenerated7876867thu.webp', 'Static_Wallpapers/Room/blur/', 19, 36, 18, 0, 0, 'rooms, hall decorations', 1, 1, NULL, NULL),
(360, 'Static_Wallpapers/Anime/wallpaper/Anime_spacesuit7986385.jpg', 'Static_Wallpapers/Anime/thumb/Anime_spacesuit7986385thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 29, 88, 0, 0, 'Astronauts, Space', 1, 1, NULL, NULL),
(361, 'Static_Wallpapers/Patterns/wallpaper/Pattern_aigenerated79151381920.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_aigenerated79151381920thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 56, 83, 0, 0, 'nature, pattern, colors', 1, 1, NULL, NULL),
(362, 'Static_Wallpapers/Room/wallpaper/Room_aigenerated7876870.jpg', 'Static_Wallpapers/Room/thumb/Room_aigenerated7876870thu.webp', 'Static_Wallpapers/Room/blur/', 19, 29, 38, 0, 0, 'office, rooms, boss room', 1, 1, NULL, NULL),
(363, 'Static_Wallpapers/Anime/wallpaper/Anime_spiderman7910139.jpg', 'Static_Wallpapers/Anime/thumb/Anime_spiderman7910139thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 85, 26, 0, 0, 'spiderman, characters', 1, 1, NULL, NULL),
(364, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated7848705.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated7848705thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 37, 40, 0, 0, 'Mountains, sky, cloudy', 1, 1, NULL, NULL),
(365, 'Static_Wallpapers/Patterns/wallpaper/Pattern_aigenerated79161861920.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_aigenerated79161861920thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 70, 145, 0, 0, 'Leafs, color Leafs, art', 1, 1, NULL, NULL),
(366, 'Static_Wallpapers/Room/wallpaper/Room_aigenerated7876871.jpg', 'Static_Wallpapers/Room/thumb/Room_aigenerated7876871thu.webp', 'Static_Wallpapers/Room/blur/', 19, 26, 31, 0, 0, 'office, rooms, restrooms', 1, 1, NULL, NULL),
(367, 'Static_Wallpapers/Nature/wallpaper/Nature_aigenerated78487101920.jpg', 'Static_Wallpapers/Nature/thumb/Nature_aigenerated78487101920thu.webp', 'Static_Wallpapers/Nature/blur/', 3, 87, 80, 0, 0, 'nature, trees, mountains, water', 1, 1, NULL, NULL),
(368, 'Static_Wallpapers/Anime/wallpaper/Anime_squirtle8012702.jpg', 'Static_Wallpapers/Anime/thumb/Anime_squirtle8012702thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 27, 49, 0, 0, 'turtles, anime, cartoons', 1, 1, NULL, NULL),
(369, 'Static_Wallpapers/Patterns/wallpaper/Pattern_balls7749947.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_balls7749947thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 81, 80, 0, 0, 'colorful pearls, pattern art', 1, 1, NULL, NULL),
(370, 'Static_Wallpapers/Anime/wallpaper/Anime_sraempunk7991033.jpg', 'Static_Wallpapers/Anime/thumb/Anime_sraempunk7991033thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 24, 55, 0, 0, 'old man, forests, greenery', 1, 1, NULL, NULL),
(371, 'Static_Wallpapers/Room/wallpaper/Room_aigenerated7876872.jpg', 'Static_Wallpapers/Room/thumb/Room_aigenerated7876872thu.webp', 'Static_Wallpapers/Room/blur/', 19, 25, 78, 0, 0, 'offices, rooms, workplaces', 1, 1, NULL, NULL),
(372, 'Static_Wallpapers/Patterns/wallpaper/Pattern_wallpaper79032331920.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_wallpaper79032331920thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 28, 59, 0, 0, 'rainbow, water, colorful, art', 1, 1, NULL, NULL),
(373, 'Static_Wallpapers/Skulls/wallpaper/Skull_ai7930053.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_ai7930053thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 27, 88, 0, 0, 'skulls, color skull, flowers', 1, 1, NULL, NULL),
(374, 'Static_Wallpapers/Anime/wallpaper/Anime_sraempunk7991034.jpg', 'Static_Wallpapers/Anime/thumb/Anime_sraempunk7991034thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 41, 20, 0, 0, 'animated, green, forests', 1, 1, NULL, NULL),
(375, 'Static_Wallpapers/Patterns/wallpaper/Pattern_wallpaper79160471920.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_wallpaper79160471920thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 35, 26, 0, 0, 'colorful, patterns, orange, art, green, black, purple, red', 1, 1, NULL, NULL),
(376, 'Static_Wallpapers/Room/wallpaper/Room_aigenerated7876873.jpg', 'Static_Wallpapers/Room/thumb/Room_aigenerated7876873thu.webp', 'Static_Wallpapers/Room/blur/', 19, 21, 27, 0, 0, 'rooms, office, orange rooms', 1, 1, NULL, NULL),
(377, 'Static_Wallpapers/Skulls/wallpaper/Skull_aigenerated7735327.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_aigenerated7735327thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 22, 47, 0, 0, 'thunders, skulls, dark', 1, 1, NULL, NULL),
(378, 'Static_Wallpapers/Anime/wallpaper/Anime_steampunk7863460.jpg', 'Static_Wallpapers/Anime/thumb/Anime_steampunk7863460thu.webp', 'Static_Wallpapers/Anime/blur/', 8, 24, 60, 0, 0, 'horror, devil, technology, machines', 1, 1, NULL, NULL),
(379, 'Static_Wallpapers/Skulls/wallpaper/Skull_aigenerated7735361.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_aigenerated7735361thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 45, 166, 0, 0, 'skeletons, skulls, body', 1, 1, NULL, NULL),
(380, 'Static_Wallpapers/Patterns/wallpaper/Pattern_wallpaper7916050.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_wallpaper7916050thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 50, 72, 0, 0, 'circle, spiral, purple, red, yellow', 1, 1, NULL, NULL),
(381, 'Static_Wallpapers/Room/wallpaper/Room_aigenerated7876875.jpg', 'Static_Wallpapers/Room/thumb/Room_aigenerated7876875thu.webp', 'Static_Wallpapers/Room/blur/', 19, 36, 33, 0, 0, 'office, rooms, design', 1, 1, NULL, NULL),
(382, 'Static_Wallpapers/Waterfall/wallpaper/Waterfall_aigenerated7831688.jpg', 'Static_Wallpapers/Waterfall/thumb/Waterfall_aigenerated7831688thu.webp', 'Static_Wallpapers/Waterfall/blur/', 7, 93, 70, 0, 0, 'waterfalls, sunsets, nature', 1, 1, NULL, NULL),
(383, 'Static_Wallpapers/Room/wallpaper/Room_aigenerated7876878.jpg', 'Static_Wallpapers/Room/thumb/Room_aigenerated7876878thu.webp', 'Static_Wallpapers/Room/blur/', 19, 26, 96, 0, 0, 'office, rooms, design, workplace', 1, 1, NULL, NULL),
(384, 'Static_Wallpapers/Patterns/wallpaper/Pattern_wallpaper7916058.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_wallpaper7916058thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 25, 102, 0, 0, 'orange, sand, galaxy, purple, blue, yellow, sea green', 1, 1, NULL, NULL),
(385, 'Static_Wallpapers/Skulls/wallpaper/Skull_aigenerated7765277.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_aigenerated7765277thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 81, 224, 0, 0, 'skull, body, dark, fire', 1, 1, NULL, NULL),
(386, 'Static_Wallpapers/Waterfall/wallpaper/Waterfall_aigenerated7831695.jpg', 'Static_Wallpapers/Waterfall/thumb/Waterfall_aigenerated7831695thu.webp', 'Static_Wallpapers/Waterfall/blur/', 7, 101, 160, 0, 0, 'waterfalls, nature, trees, grass', 1, 1, NULL, NULL),
(387, 'Static_Wallpapers/Room/wallpaper/Room_aigenerated7876879.jpg', 'Static_Wallpapers/Room/thumb/Room_aigenerated7876879thu.webp', 'Static_Wallpapers/Room/blur/', 19, 33, 50, 0, 0, 'workplace, office, rooms', 1, 1, NULL, NULL),
(388, 'Static_Wallpapers/Patterns/wallpaper/Pattern_wallpaper7916076.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_wallpaper7916076thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 35, 387, 0, 0, 'blue, green, yellow, red, pink, purple, dark blue, art, smoke, pattern', 1, 1, NULL, NULL),
(389, 'Static_Wallpapers/Skulls/wallpaper/Skull_aigenerated78835881920.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_aigenerated78835881920thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 43, 47, 0, 0, 'apples, skull, golden', 1, 1, NULL, NULL),
(390, 'Static_Wallpapers/Waterfall/wallpaper/Waterfall_aigenerated7848493.jpg', 'Static_Wallpapers/Waterfall/thumb/Waterfall_aigenerated7848493thu.webp', 'Static_Wallpapers/Waterfall/blur/', 7, 114, 495, 0, 0, 'waterfalls, nature, trees, water', 1, 1, NULL, NULL),
(391, 'Static_Wallpapers/Patterns/wallpaper/Pattern_wallpaper79160991920.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_wallpaper79160991920thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 117, 120, 0, 0, 'flowers, water, bubbles, purple, dark pink, oranges', 1, 1, NULL, NULL),
(392, 'Static_Wallpapers/Room/wallpaper/Room_aigenerated7876880.jpg', 'Static_Wallpapers/Room/thumb/Room_aigenerated7876880thu.webp', 'Static_Wallpapers/Room/blur/', 19, 23, 71, 0, 0, 'study room, books', 1, 1, NULL, NULL),
(393, 'Static_Wallpapers/Skulls/wallpaper/Skull_aigenerated7884196.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_aigenerated7884196thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 35, 81, 0, 0, 'skull, golden, lights, horror', 1, 1, NULL, NULL),
(394, 'Static_Wallpapers/Waterfall/wallpaper/Waterfall_aigenerated7848758.jpg', 'Static_Wallpapers/Waterfall/thumb/Waterfall_aigenerated7848758thu.webp', 'Static_Wallpapers/Waterfall/blur/', 7, 147, 172, 0, 0, 'nature, waterfalls, scenery, green', 1, 1, NULL, NULL),
(395, 'Static_Wallpapers/Room/wallpaper/Room_office7829030.jpg', 'Static_Wallpapers/Room/thumb/Room_office7829030thu.webp', 'Static_Wallpapers/Room/blur/', 19, 58, 103, 0, 0, 'office, meeting room, workplace, rooms', 1, 1, NULL, NULL),
(396, 'Static_Wallpapers/Patterns/wallpaper/Pattern_wallpaper79161931920.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_wallpaper79161931920thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 49, 34, 0, 0, 'eyes, art, notebooks, colors, purple, green, white', 1, 1, NULL, NULL),
(397, 'Static_Wallpapers/Skulls/wallpaper/Skull_aigenerated7930054.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_aigenerated7930054thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 103, 120, 0, 0, 'skulls, fire, purple', 1, 1, NULL, NULL),
(398, 'Static_Wallpapers/Waterfall/wallpaper/Waterfall_aigenerated7848775.jpg', 'Static_Wallpapers/Waterfall/thumb/Waterfall_aigenerated7848775thu.webp', 'Static_Wallpapers/Waterfall/blur/', 7, 120, 305, 0, 0, 'Rivers, views, rocks', 1, 1, NULL, NULL),
(399, 'Static_Wallpapers/Skulls/wallpaper/Skull_aigenerated7957860.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_aigenerated7957860thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 42, 104, 0, 0, 'devil face, skulls, golden', 1, 1, NULL, NULL),
(400, 'Static_Wallpapers/Room/wallpaper/Room_room7923793.jpg', 'Static_Wallpapers/Room/thumb/Room_room7923793thu.webp', 'Static_Wallpapers/Room/blur/', 19, 16, 102, 0, 0, 'meeting room, workplace, rooms', 1, 1, NULL, NULL),
(401, 'Static_Wallpapers/Waterfall/wallpaper/Waterfall_aigenerated7904224.jpg', 'Static_Wallpapers/Waterfall/thumb/Waterfall_aigenerated7904224thu.webp', 'Static_Wallpapers/Waterfall/blur/', 7, 125, 148, 0, 0, 'sky, waterfalls, nature, pink', 1, 1, NULL, NULL),
(402, 'Static_Wallpapers/Patterns/wallpaper/Pattern_wallpaper79162011920.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_wallpaper79162011920thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 108, 191, 0, 0, 'bubbles, boles, colorful, purple, red, yellow, green', 1, 1, NULL, NULL),
(403, 'Static_Wallpapers/Skulls/wallpaper/Skull_cybertrain7930970.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_cybertrain7930970thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 73, 287, 0, 0, 'smoke, skulls, colors, glasses', 1, 1, NULL, NULL),
(404, 'Static_Wallpapers/Patterns/wallpaper/Pattern_wallpaper7916204.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_wallpaper7916204thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 24, 132, 0, 0, 'shoes, art, yellow, green, red, paints', 1, 1, NULL, NULL),
(405, 'Static_Wallpapers/Waterfall/wallpaper/Waterfall_aigenerated7904337.jpg', 'Static_Wallpapers/Waterfall/thumb/Waterfall_aigenerated7904337thu.webp', 'Static_Wallpapers/Waterfall/blur/', 7, 145, 193, 0, 0, 'waterfall, nature, trees', 1, 1, NULL, NULL),
(406, 'Static_Wallpapers/Skulls/wallpaper/Skull_death7989690.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_death7989690thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 142, 140, 0, 0, 'dark devils, skulls, black hats', 1, 1, NULL, NULL),
(407, 'Static_Wallpapers/Waterfall/wallpaper/Waterfall_aigenerated7904411.jpg', 'Static_Wallpapers/Waterfall/thumb/Waterfall_aigenerated7904411thu.webp', 'Static_Wallpapers/Waterfall/blur/', 7, 115, 87, 0, 0, 'waterfall, nature, sunset', 1, 1, NULL, NULL),
(408, 'Static_Wallpapers/Patterns/wallpaper/Pattern_wallpaper7916231.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_wallpaper7916231thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 65, 43, 0, 0, 'nature, colors, patterns, art, mountains, clouds, deserts, oranges, yellow, purple, dark', 1, 1, NULL, NULL),
(409, 'Static_Wallpapers/Skulls/wallpaper/Skull_ghost7551504.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_ghost7551504thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 49, 60, 0, 0, 'skulls, white devils, horror', 1, 1, NULL, NULL);
INSERT INTO `static_wallpapers` (`id`, `img_path`, `thumb_path`, `blur_path`, `cat_id`, `likes`, `downloads`, `unlike`, `set_wp`, `hash_tags`, `wp_show`, `featured`, `created_at`, `updated_at`) VALUES
(410, 'Static_Wallpapers/Waterfall/wallpaper/Waterfall_aigenerated7904434.jpg', 'Static_Wallpapers/Waterfall/thumb/Waterfall_aigenerated7904434thu.webp', 'Static_Wallpapers/Waterfall/blur/', 7, 116, 40, 0, 0, 'waterfall, grass, sky, nature, green, mountains, stones, dark', 1, 1, NULL, NULL),
(411, 'Static_Wallpapers/Patterns/wallpaper/Pattern_wallpaper7916494.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_wallpaper7916494thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 72, 130, 0, 0, 'deserts, colorful, beach, bitch, yellow, oranges, blue, green, purple', 1, 1, NULL, NULL),
(412, 'Static_Wallpapers/Skulls/wallpaper/Skull_grimreaper7623146.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_grimreaper7623146thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 30, 80, 0, 0, 'skulls, black hat, dark devils', 1, 1, NULL, NULL),
(413, 'Static_Wallpapers/Patterns/wallpaper/Pattern_wallpaper7919285.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_wallpaper7919285thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 84, 43, 0, 0, 'cards, lines, spiral, colorful, shapes, oranges, blue, green, red', 1, 1, NULL, NULL),
(414, 'Static_Wallpapers/Waterfall/wallpaper/Waterfall_aigenerated7931458.jpg', 'Static_Wallpapers/Waterfall/thumb/Waterfall_aigenerated7931458thu.webp', 'Static_Wallpapers/Waterfall/blur/', 7, 142, 215, 0, 0, 'waterfall, mountains, stones, trees, dark, water', 1, 1, NULL, NULL),
(415, 'Static_Wallpapers/Skulls/wallpaper/Skull_skull7492418.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_skull7492418thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 41, 43, 0, 0, 'skulls, colors', 1, 1, NULL, NULL),
(416, 'Static_Wallpapers/Patterns/wallpaper/Pattern_wallpaper7919308.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_wallpaper7919308thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 69, 157, 0, 0, 'colorful, feathers, golden, purple, pink, blue, sea green', 1, 1, NULL, NULL),
(417, 'Static_Wallpapers/Waterfall/wallpaper/Waterfall_aigenerated7950912.jpg', 'Static_Wallpapers/Waterfall/thumb/Waterfall_aigenerated7950912thu.webp', 'Static_Wallpapers/Waterfall/blur/', 7, 142, 110, 0, 0, 'waterfall, mountains, trees', 1, 1, NULL, NULL),
(418, 'Static_Wallpapers/Skulls/wallpaper/Skull_skull7870977.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_skull7870977thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 75, 145, 0, 0, 'green Skelton, skulls', 1, 1, NULL, NULL),
(419, 'Static_Wallpapers/Waterfall/wallpaper/Waterfall_landscape8010935.jpg', 'Static_Wallpapers/Waterfall/thumb/Waterfall_landscape8010935thu.webp', 'Static_Wallpapers/Waterfall/blur/', 7, 149, 127, 0, 0, 'waterfall, sunset, trees, grass, mountains, rocks', 1, 1, NULL, NULL),
(420, 'Static_Wallpapers/Patterns/wallpaper/Pattern_wallpaper7919598.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_wallpaper7919598thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 25, 39, 0, 0, 'cubes, Rubik, shape, pink, yellow, orange, purple, black devil, red', 1, 1, NULL, NULL),
(421, 'Static_Wallpapers/Skulls/wallpaper/Skull_skull7910137.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_skull7910137thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 82, 91, 0, 0, 'skull, smoke, water', 1, 1, NULL, NULL),
(422, 'Static_Wallpapers/Patterns/wallpaper/Pattern_wallpaper7919724.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_wallpaper7919724thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 92, 46, 0, 0, 'mountains, water, deserts, sky, colorful, pink, yellow, green', 1, 1, NULL, NULL),
(423, 'Static_Wallpapers/Waterfall/wallpaper/Waterfall_modern7642471.jpg', 'Static_Wallpapers/Waterfall/thumb/Waterfall_modern7642471thu.webp', 'Static_Wallpapers/Waterfall/blur/', 7, 144, 109, 0, 0, 'mountains, waterfall, art, vecter, sun, moon', 1, 1, NULL, NULL),
(424, 'Static_Wallpapers/Skulls/wallpaper/Skull_skull7950192.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_skull7950192thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 21, 102, 0, 0, 'skull, colors', 1, 1, NULL, NULL),
(425, 'Static_Wallpapers/Patterns/wallpaper/Pattern_wallpaper79261681920.jpg', 'Static_Wallpapers/Patterns/thumb/Pattern_wallpaper79261681920thu.webp', 'Static_Wallpapers/Patterns/blur/', 12, 94, 68, 0, 0, 'spirals, stones, forts, smokes, pink, purple, green, stars, water, seas on the way, orange', 1, 1, NULL, NULL),
(426, 'Static_Wallpapers/Waterfall/wallpaper/Waterfall_nature7824249.jpg', 'Static_Wallpapers/Waterfall/thumb/Waterfall_nature7824249thu.webp', 'Static_Wallpapers/Waterfall/blur/', 7, 108, 129, 0, 0, 'mountains, waterfalls, flowers, colorful, water', 1, 1, NULL, NULL),
(427, 'Static_Wallpapers/Skulls/wallpaper/Skull_skull8008312.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_skull8008312thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 56, 30, 0, 0, 'skulls, beauty', 1, 1, NULL, NULL),
(428, 'Static_Wallpapers/Waterfall/wallpaper/Waterfall_nature7824252.jpg', 'Static_Wallpapers/Waterfall/thumb/Waterfall_nature7824252thu.webp', 'Static_Wallpapers/Waterfall/blur/', 7, 85, 65, 0, 0, 'waterfall, nature, rock, stone, tree, mountain', 1, 1, NULL, NULL),
(429, 'Static_Wallpapers/Skulls/wallpaper/Skull_toxic7633031.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_toxic7633031thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 264, 46, 0, 0, 'cup of tea, skull, smoke, colors', 1, 1, NULL, NULL),
(430, 'Static_Wallpapers/Skulls/wallpaper/Skull_woman7467021.jpg', 'Static_Wallpapers/Skulls/thumb/Skull_woman7467021thu.webp', 'Static_Wallpapers/Skulls/blur/', 18, 188, 62, 0, 0, 'dark queen, skulls, beauty, horror, dark', 1, 1, NULL, NULL),
(431, 'Static_Wallpapers/Technology/wallpaper/Technology_abstract8049230.jpg', 'Static_Wallpapers/Technology/thumb/Technology_abstract8049230thu.webp', 'Static_Wallpapers/Technology/blur/', 14, 207, 56, 0, 0, 'Dark, technology', 1, 1, NULL, NULL),
(432, 'Static_Wallpapers/Technology/wallpaper/Technology_aigenerated7777965.jpg', 'Static_Wallpapers/Technology/thumb/Technology_aigenerated7777965thu.webp', 'Static_Wallpapers/Technology/blur/', 14, 210, 113, 0, 0, 'laptops, development, girls, technology', 1, 1, NULL, NULL),
(433, 'Static_Wallpapers/Technology/wallpaper/Technology_aigenerated7792597.jpg', 'Static_Wallpapers/Technology/thumb/Technology_aigenerated7792597thu.webp', 'Static_Wallpapers/Technology/blur/', 14, 404, 15, 0, 0, 'technology, girls, hackers', 1, 1, NULL, NULL),
(434, 'Static_Wallpapers/Technology/wallpaper/Technology_aigenerated7884243.jpg', 'Static_Wallpapers/Technology/thumb/Technology_aigenerated7884243thu.webp', 'Static_Wallpapers/Technology/blur/', 14, 489, 62, 0, 0, 'bitcoins, technology, monsters, money', 1, 1, NULL, NULL),
(435, 'Static_Wallpapers/Technology/wallpaper/Technology_aigenerated7884245.jpg', 'Static_Wallpapers/Technology/thumb/Technology_aigenerated7884245thu.webp', 'Static_Wallpapers/Technology/blur/', 14, 416, 18, 0, 0, 'keyboard, technology, lightings, lights', 1, 1, NULL, NULL),
(436, 'Static_Wallpapers/Technology/wallpaper/Technology_aigenerated7938199.jpg', 'Static_Wallpapers/Technology/thumb/Technology_aigenerated7938199thu.webp', 'Static_Wallpapers/Technology/blur/', 14, 641, 56, 0, 0, 'mind games, artificial intelligence, technology', 1, 1, NULL, NULL),
(437, 'Static_Wallpapers/Technology/wallpaper/Technology_aigenerated7945684.jpg', 'Static_Wallpapers/Technology/thumb/Technology_aigenerated7945684thu.webp', 'Static_Wallpapers/Technology/blur/', 14, 573, 24, 0, 0, 'technology, block chain', 1, 1, NULL, NULL),
(438, 'Static_Wallpapers/Technology/wallpaper/Technology_background7245557.jpg', 'Static_Wallpapers/Technology/thumb/Technology_background7245557thu.webp', 'Static_Wallpapers/Technology/blur/', 14, 583, 111, 0, 0, 'technology, lights, ', 1, 1, NULL, NULL),
(439, 'Static_Wallpapers/Technology/wallpaper/Technology_bigdata76445331920.jpg', 'Static_Wallpapers/Technology/thumb/Technology_bigdata76445331920thu.webp', 'Static_Wallpapers/Technology/blur/', 14, 621, 47, 0, 0, 'technology, chains', 1, 1, NULL, NULL),
(440, 'Static_Wallpapers/Technology/wallpaper/Technology_cyborg7938154.jpg', 'Static_Wallpapers/Technology/thumb/Technology_cyborg7938154thu.webp', 'Static_Wallpapers/Technology/blur/', 14, 685, 46, 0, 0, 'ai, technology, models', 1, 1, NULL, NULL),
(441, 'Static_Wallpapers/Technology/wallpaper/Technology_data76445261920.jpg', 'Static_Wallpapers/Technology/thumb/Technology_data76445261920thu.webp', 'Static_Wallpapers/Technology/blur/', 14, 641, 11, 0, 0, 'data storage, technology', 1, 1, NULL, NULL),
(442, 'Static_Wallpapers/Technology/wallpaper/Technology_digital17426791920.jpg', 'Static_Wallpapers/Technology/thumb/Technology_digital17426791920thu.webp', 'Static_Wallpapers/Technology/blur/', 14, 666, 20, 0, 0, 'dark, technology', 1, 1, NULL, NULL),
(443, 'Static_Wallpapers/Technology/wallpaper/Technology_man7787569.jpg', 'Static_Wallpapers/Technology/thumb/Technology_man7787569thu.webp', 'Static_Wallpapers/Technology/blur/', 14, 1128, 13, 0, 0, 'brain, technology, science', 1, 1, NULL, NULL),
(444, 'Static_Wallpapers/Technology/wallpaper/Technology_robotfactory7538030.jpg', 'Static_Wallpapers/Technology/thumb/Technology_robotfactory7538030thu.webp', 'Static_Wallpapers/Technology/blur/', 14, 630, 66, 0, 0, 'robots, technology, brain, lights', 1, 1, NULL, NULL),
(445, 'Static_Wallpapers/Technology/wallpaper/Technology_scientist7517566.jpg', 'Static_Wallpapers/Technology/thumb/Technology_scientist7517566thu.webp', 'Static_Wallpapers/Technology/blur/', 14, 679, 19, 0, 0, 'robots, brain, technology', 1, 1, NULL, NULL),
(446, 'Static_Wallpapers/Technology/wallpaper/Technology_space80410921920.jpg', 'Static_Wallpapers/Technology/thumb/Technology_space80410921920thu.webp', 'Static_Wallpapers/Technology/blur/', 14, 1692, 52, 0, 0, 'technology, AI', 1, 1, NULL, NULL),
(447, 'Static_Wallpapers/Technology/wallpaper/Technology_technology7978084.jpg', 'Static_Wallpapers/Technology/thumb/Technology_technology7978084thu.webp', 'Static_Wallpapers/Technology/blur/', 14, 1248, 66, 0, 0, 'technology, nights, data, servers, rooms', 1, 1, NULL, NULL),
(448, 'Static_Wallpapers/Halloween/wallpaper/Halloween_TbwrGV6rDfKBU4hbw8X9Duqj5JEVqZ.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_TbwrGV6rDfKBU4hbw8X9Duqj5JEVqZ.webp', 'Static_Wallpapers/Halloween/blur/Halloween_TbwrGV6rDfKBU4hbw8X9Duqj5JEVqZ.png', 22, 36, 94, 0, 1, 'halloween, pumpkin, dark', 1, 1, NULL, NULL),
(449, 'Static_Wallpapers/Halloween/wallpaper/Halloween_qSeH3MFOopRCe8oHYSaHVqJn3lglt6.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_qSeH3MFOopRCe8oHYSaHVqJn3lglt6.webp', 'Static_Wallpapers/Halloween/blur/Halloween_qSeH3MFOopRCe8oHYSaHVqJn3lglt6.png', 22, 11, 65, 0, 1, 'Halloween', 1, 1, NULL, NULL),
(450, 'Static_Wallpapers/Halloween/wallpaper/Halloween_mhbqH5jLhAFXok65NFdV5sYF03HWpb.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_mhbqH5jLhAFXok65NFdV5sYF03HWpb.webp', 'Static_Wallpapers/Halloween/blur/Halloween_mhbqH5jLhAFXok65NFdV5sYF03HWpb.png', 22, 12, 8, 0, 1, 'Halloween', 1, 1, NULL, NULL),
(451, 'Static_Wallpapers/Halloween/wallpaper/Halloween_I5BmEZexCxeQdqby7mdLakAOOPZfXi.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_I5BmEZexCxeQdqby7mdLakAOOPZfXi.webp', 'Static_Wallpapers/Halloween/blur/Halloween_I5BmEZexCxeQdqby7mdLakAOOPZfXi.png', 22, 16, 20, 0, 1, 'halloween', 1, 1, NULL, NULL),
(452, 'Static_Wallpapers/Halloween/wallpaper/Halloween_kwK1CtJHveGerk7CNUIG6U5VXivVKC.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_kwK1CtJHveGerk7CNUIG6U5VXivVKC.webp', 'Static_Wallpapers/Halloween/blur/Halloween_kwK1CtJHveGerk7CNUIG6U5VXivVKC.png', 22, 10, 88, 0, 1, 'Halloween', 1, 1, NULL, NULL),
(453, 'Static_Wallpapers/Halloween/wallpaper/Halloween_eb8DTl9CNIB7OmkZHNyX8xVsxlb8YL.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_eb8DTl9CNIB7OmkZHNyX8xVsxlb8YL.webp', 'Static_Wallpapers/Halloween/blur/Halloween_eb8DTl9CNIB7OmkZHNyX8xVsxlb8YL.png', 22, 15, 93, 0, 1, 'Halloween', 1, 1, NULL, NULL),
(454, 'Static_Wallpapers/Halloween/wallpaper/Halloween_9t0bEQ0XsqtFEUP13YB3RUPVqbCQ91.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_9t0bEQ0XsqtFEUP13YB3RUPVqbCQ91.webp', 'Static_Wallpapers/Halloween/blur/Halloween_9t0bEQ0XsqtFEUP13YB3RUPVqbCQ91.png', 22, 12, 56, 0, 1, 'Halloween', 1, 1, NULL, NULL),
(455, 'Static_Wallpapers/Halloween/wallpaper/Halloween_qLOtlXCEYd12Z8gijbAt9RXQVyooYr.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_qLOtlXCEYd12Z8gijbAt9RXQVyooYr.webp', 'Static_Wallpapers/Halloween/blur/Halloween_qLOtlXCEYd12Z8gijbAt9RXQVyooYr.png', 22, 12, 20, 0, 1, 'Halloween', 1, 1, NULL, NULL),
(456, 'Static_Wallpapers/Halloween/wallpaper/Halloween_sCb9BFHobNblIwdjSOUWQMEg1zADCr.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_sCb9BFHobNblIwdjSOUWQMEg1zADCr.webp', 'Static_Wallpapers/Halloween/blur/Halloween_sCb9BFHobNblIwdjSOUWQMEg1zADCr.png', 22, 14, 76, 0, 1, 'Halloween', 1, 1, NULL, NULL),
(457, 'Static_Wallpapers/Halloween/wallpaper/Halloween_PUrgJzZDfkEFOvsJ1TTUVYjnZlN2vt.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_PUrgJzZDfkEFOvsJ1TTUVYjnZlN2vt.webp', 'Static_Wallpapers/Halloween/blur/Halloween_PUrgJzZDfkEFOvsJ1TTUVYjnZlN2vt.png', 22, 15, 41, 0, 1, 'Halloween', 1, 1, NULL, NULL),
(458, 'Static_Wallpapers/Halloween/wallpaper/Halloween_wDtYVap2IDbdszdETrJ3JM0NGiGsNM.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_wDtYVap2IDbdszdETrJ3JM0NGiGsNM.webp', 'Static_Wallpapers/Halloween/blur/Halloween_wDtYVap2IDbdszdETrJ3JM0NGiGsNM.png', 22, 11, 57, 0, 1, 'Halloween', 1, 1, NULL, NULL),
(459, 'Static_Wallpapers/Halloween/wallpaper/Halloween_mSbfgxWU54N7ov2WmSQyZV1AJ60Y9B.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_mSbfgxWU54N7ov2WmSQyZV1AJ60Y9B.webp', 'Static_Wallpapers/Halloween/blur/Halloween_mSbfgxWU54N7ov2WmSQyZV1AJ60Y9B.png', 22, 20, 71, 0, 1, 'Halloween, Celebration', 1, 1, NULL, NULL),
(460, 'Static_Wallpapers/Halloween/wallpaper/Halloween_NbWxtN8ZcfVXay5KPNPHd1R6s1zhEf.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_NbWxtN8ZcfVXay5KPNPHd1R6s1zhEf.webp', 'Static_Wallpapers/Halloween/blur/Halloween_NbWxtN8ZcfVXay5KPNPHd1R6s1zhEf.png', 22, 13, 60, 0, 1, 'Halloween', 1, 1, NULL, NULL),
(461, 'Static_Wallpapers/Halloween/wallpaper/Halloween_MEr5oYhvIuTYStVy3ZMhHwtfNNu4hO.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_MEr5oYhvIuTYStVy3ZMhHwtfNNu4hO.webp', 'Static_Wallpapers/Halloween/blur/Halloween_MEr5oYhvIuTYStVy3ZMhHwtfNNu4hO.png', 22, 7, 91, 0, 1, 'halloween', 1, 1, NULL, NULL),
(462, 'Static_Wallpapers/Halloween/wallpaper/Halloween_bO76GGb0teJVV7KHBawEVl9B5dPG4i.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_bO76GGb0teJVV7KHBawEVl9B5dPG4i.webp', 'Static_Wallpapers/Halloween/blur/Halloween_bO76GGb0teJVV7KHBawEVl9B5dPG4i.png', 22, 21, 95, 0, 1, 'happy halloween, halloween', 1, 1, NULL, NULL),
(463, 'Static_Wallpapers/Halloween/wallpaper/Halloween_BCQypwu9OG6NBUdW2LtKkuKmib1X2f.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_BCQypwu9OG6NBUdW2LtKkuKmib1X2f.webp', 'Static_Wallpapers/Halloween/blur/Halloween_BCQypwu9OG6NBUdW2LtKkuKmib1X2f.png', 22, 18, 28, 0, 1, 'halloween, Halloween celebration', 1, 1, NULL, NULL),
(464, 'Static_Wallpapers/Halloween/wallpaper/Halloween_BgzT08MRB3GFANDF57VbC1frIFWNnC.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_BgzT08MRB3GFANDF57VbC1frIFWNnC.webp', 'Static_Wallpapers/Halloween/blur/Halloween_BgzT08MRB3GFANDF57VbC1frIFWNnC.png', 22, 10, 88, 0, 1, 'halloween', 1, 1, NULL, NULL),
(465, 'Static_Wallpapers/Halloween/wallpaper/Halloween_yQSJNt8HgNPMaVKJEx2PS90kZcxxC6.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_yQSJNt8HgNPMaVKJEx2PS90kZcxxC6.webp', 'Static_Wallpapers/Halloween/blur/Halloween_yQSJNt8HgNPMaVKJEx2PS90kZcxxC6.png', 22, 10, 65, 0, 1, 'happy halloween', 1, 1, NULL, NULL),
(466, 'Static_Wallpapers/Halloween/wallpaper/Halloween_AtO76N7P3UU5BoRC1RqvZ7FVd4SGLK.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_AtO76N7P3UU5BoRC1RqvZ7FVd4SGLK.webp', 'Static_Wallpapers/Halloween/blur/Halloween_AtO76N7P3UU5BoRC1RqvZ7FVd4SGLK.png', 22, 7, 60, 0, 1, 'halloween', 1, 1, NULL, NULL),
(467, 'Static_Wallpapers/Halloween/wallpaper/Halloween_4fGInSRppgSSuvgHShqpxOobUEpUHS.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_4fGInSRppgSSuvgHShqpxOobUEpUHS.webp', 'Static_Wallpapers/Halloween/blur/Halloween_4fGInSRppgSSuvgHShqpxOobUEpUHS.png', 22, 12, 115, 0, 1, 'halloween', 1, 1, NULL, NULL),
(468, 'Static_Wallpapers/Halloween/wallpaper/Halloween_mpF8cwEN3MuByp8UDIUEpbiUjaN7Nu.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_mpF8cwEN3MuByp8UDIUEpbiUjaN7Nu.webp', 'Static_Wallpapers/Halloween/blur/Halloween_mpF8cwEN3MuByp8UDIUEpbiUjaN7Nu.png', 22, 1, 84, 0, 1, 'halloween', 1, 1, NULL, NULL),
(469, 'Static_Wallpapers/Halloween/wallpaper/Halloween_szJj783RgzQKThqVDm9p50eCsS5tYj.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_szJj783RgzQKThqVDm9p50eCsS5tYj.webp', 'Static_Wallpapers/Halloween/blur/Halloween_szJj783RgzQKThqVDm9p50eCsS5tYj.png', 22, 9, 35, 0, 1, 'hallloween, celebration', 1, 1, NULL, NULL),
(470, 'Static_Wallpapers/Halloween/wallpaper/Halloween_qq5XvLcEyI9LcfzMCO66UrXN4UZQG9.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_qq5XvLcEyI9LcfzMCO66UrXN4UZQG9.webp', 'Static_Wallpapers/Halloween/blur/Halloween_qq5XvLcEyI9LcfzMCO66UrXN4UZQG9.png', 22, 12, 10, 0, 1, 'halloween', 1, 1, NULL, NULL),
(471, 'Static_Wallpapers/Halloween/wallpaper/Halloween_0DWUVErYmB6Pzc6h6JYca3rlL1LRSA.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_0DWUVErYmB6Pzc6h6JYca3rlL1LRSA.webp', 'Static_Wallpapers/Halloween/blur/Halloween_0DWUVErYmB6Pzc6h6JYca3rlL1LRSA.png', 22, 7, 33, 0, 1, 'happpy, halloween', 1, 1, NULL, NULL),
(472, 'Static_Wallpapers/Halloween/wallpaper/Halloween_d9jqPaOdTxv8CDHsCAyAcXpnuPODIz.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_d9jqPaOdTxv8CDHsCAyAcXpnuPODIz.webp', 'Static_Wallpapers/Halloween/blur/Halloween_d9jqPaOdTxv8CDHsCAyAcXpnuPODIz.png', 22, 7, 53, 0, 1, 'halloween', 1, 1, NULL, NULL),
(473, 'Static_Wallpapers/Halloween/wallpaper/Halloween_Jh8EbZVvg6j5cVxMionWvkxcj5CZyY.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_Jh8EbZVvg6j5cVxMionWvkxcj5CZyY.webp', 'Static_Wallpapers/Halloween/blur/Halloween_Jh8EbZVvg6j5cVxMionWvkxcj5CZyY.png', 22, 15, 1, 0, 1, 'celebration, halloween', 1, 1, NULL, NULL),
(474, 'Static_Wallpapers/Halloween/wallpaper/Halloween_M1HLCAjhBk1RH6ICKd4CrDXCv8XhW8.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_M1HLCAjhBk1RH6ICKd4CrDXCv8XhW8.webp', 'Static_Wallpapers/Halloween/blur/Halloween_M1HLCAjhBk1RH6ICKd4CrDXCv8XhW8.png', 22, 15, 64, 0, 1, 'halloween, happy, celebration', 1, 1, NULL, NULL),
(475, 'Static_Wallpapers/Halloween/wallpaper/Halloween_5l2fU4svubeOTc7Hj4oMu2jZ4jwi0b.jpg', 'Static_Wallpapers/Halloween/thumb/Halloween_5l2fU4svubeOTc7Hj4oMu2jZ4jwi0b.webp', 'Static_Wallpapers/Halloween/blur/Halloween_5l2fU4svubeOTc7Hj4oMu2jZ4jwi0b.png', 22, 32, 60, 0, 1, 'halloween, happy, celebration', 1, 1, NULL, NULL),
(476, 'Static_Wallpapers/Winter/wallpaper/Winter_jRLe0RHc2k1Y1hTZNq9C8otZaatCfl.jpg', 'Static_Wallpapers/Winter/thumb/Winter_jRLe0RHc2k1Y1hTZNq9C8otZaatCfl.webp', 'Static_Wallpapers/Winter/blur/Winter_jRLe0RHc2k1Y1hTZNq9C8otZaatCfl.png', 23, 9, 24, 0, 1, 'mountain, Winter', 1, 1, NULL, NULL),
(477, 'Static_Wallpapers/Winter/wallpaper/Winter_WWRZafq1krkUfeSzabRskhpc0bvEG8.jpg', 'Static_Wallpapers/Winter/thumb/Winter_WWRZafq1krkUfeSzabRskhpc0bvEG8.webp', 'Static_Wallpapers/Winter/blur/Winter_WWRZafq1krkUfeSzabRskhpc0bvEG8.png', 23, 7, 19, 0, 1, 'mountain, winter, snow, home, white, water, sky, Winter', 1, 1, NULL, NULL),
(478, 'Static_Wallpapers/Winter/wallpaper/Winter_VcQkDrenjvlOKkH3baRXdgCoygaqhi.jpg', 'Static_Wallpapers/Winter/thumb/Winter_VcQkDrenjvlOKkH3baRXdgCoygaqhi.webp', 'Static_Wallpapers/Winter/blur/Winter_VcQkDrenjvlOKkH3baRXdgCoygaqhi.png', 23, 12, 29, 0, 1, ', Winter', 1, 1, NULL, NULL),
(479, 'Static_Wallpapers/Winter/wallpaper/Winter_gQKKX57FtprrwQyRCdW3idQyntvLx3.jpg', 'Static_Wallpapers/Winter/thumb/Winter_gQKKX57FtprrwQyRCdW3idQyntvLx3.webp', 'Static_Wallpapers/Winter/blur/Winter_gQKKX57FtprrwQyRCdW3idQyntvLx3.png', 23, 4, 17, 0, 1, 'winter, mountain, snow, fog, sky, Winter', 1, 1, NULL, NULL),
(480, 'Static_Wallpapers/Winter/wallpaper/Winter_0uVVbKfl6IMRIS0iKZ9XCAQWIYaCQj.jpg', 'Static_Wallpapers/Winter/thumb/Winter_0uVVbKfl6IMRIS0iKZ9XCAQWIYaCQj.webp', 'Static_Wallpapers/Winter/blur/Winter_0uVVbKfl6IMRIS0iKZ9XCAQWIYaCQj.png', 23, 18, 20, 0, 1, 'winter, snow, owl, cold, light, sky, blue, Winter', 1, 1, NULL, NULL),
(481, 'Static_Wallpapers/Winter/wallpaper/Winter_ATQCgsZuxvPgUeOznLT3XIHlLbc8bF.jpg', 'Static_Wallpapers/Winter/thumb/Winter_ATQCgsZuxvPgUeOznLT3XIHlLbc8bF.webp', 'Static_Wallpapers/Winter/blur/Winter_ATQCgsZuxvPgUeOznLT3XIHlLbc8bF.png', 23, 2, 11, 0, 1, 'winter, snow, snowman, white, sky, house, blue, Winter', 1, 1, NULL, NULL),
(482, 'Static_Wallpapers/Winter/wallpaper/Winter_6Z323amfnvTN2Hj7bm8JTiggymqzfK.jpg', 'Static_Wallpapers/Winter/thumb/Winter_6Z323amfnvTN2Hj7bm8JTiggymqzfK.webp', 'Static_Wallpapers/Winter/blur/Winter_6Z323amfnvTN2Hj7bm8JTiggymqzfK.png', 23, 0, 42, 0, 1, 'winter, snow, dark, night, black, light, sky, tree, ice, Winter', 1, 1, NULL, NULL),
(483, 'Static_Wallpapers/Winter/wallpaper/Winter_ivomXJNYtWRLsliaycQNcwDqNi4Owc.jpg', 'Static_Wallpapers/Winter/thumb/Winter_ivomXJNYtWRLsliaycQNcwDqNi4Owc.webp', 'Static_Wallpapers/Winter/blur/Winter_ivomXJNYtWRLsliaycQNcwDqNi4Owc.png', 23, 2, 7, 0, 1, 'winter, snow, ice, cold, fire, home, candle, night, day, holiday, Winter', 1, 1, NULL, NULL),
(484, 'Static_Wallpapers/Winter/wallpaper/Winter_mD42tQOXOp2w6eKDyMQFBrUFJ22Rko.jpg', 'Static_Wallpapers/Winter/thumb/Winter_mD42tQOXOp2w6eKDyMQFBrUFJ22Rko.webp', 'Static_Wallpapers/Winter/blur/Winter_mD42tQOXOp2w6eKDyMQFBrUFJ22Rko.png', 23, 2, 16, 0, 1, 'winter, cold, tea, hot, cup, ice, white, heart, love, Winter', 1, 1, NULL, NULL),
(485, 'Static_Wallpapers/Winter/wallpaper/Winter_tRKJvcF8EKfLS6jHWWGEZ37tVXptoS.jpg', 'Static_Wallpapers/Winter/thumb/Winter_tRKJvcF8EKfLS6jHWWGEZ37tVXptoS.webp', 'Static_Wallpapers/Winter/blur/Winter_tRKJvcF8EKfLS6jHWWGEZ37tVXptoS.png', 23, 4, 6, 0, 1, 'winter, snow, girl, ice, cold, day, white, red, nature, Winter', 1, 1, NULL, NULL),
(486, 'Static_Wallpapers/Winter/wallpaper/Winter_kdsu8MmdnP3fNB9oodcc3DnlJL2LL5.jpg', 'Static_Wallpapers/Winter/thumb/Winter_kdsu8MmdnP3fNB9oodcc3DnlJL2LL5.webp', 'Static_Wallpapers/Winter/blur/Winter_kdsu8MmdnP3fNB9oodcc3DnlJL2LL5.png', 23, 13, 46, 0, 1, 'winter, snow, cold, wihte, dark, night, wood, fire, fog, ice, Winter', 1, 1, NULL, NULL),
(487, 'Static_Wallpapers/Winter/wallpaper/Winter_OcRdPVuTDJ6svfa2kk0Fgqyd6jIIUf.jpg', 'Static_Wallpapers/Winter/thumb/Winter_OcRdPVuTDJ6svfa2kk0Fgqyd6jIIUf.webp', 'Static_Wallpapers/Winter/blur/Winter_OcRdPVuTDJ6svfa2kk0Fgqyd6jIIUf.png', 23, 1, 31, 0, 1, 'winter, snow, cold, white, girl, lady, women, beautiful, shine, night, Winter', 1, 1, NULL, NULL),
(488, 'Static_Wallpapers/Winter/wallpaper/Winter_E9FImRIUk5Hc7digNynUMiVhRbuCIm.jpg', 'Static_Wallpapers/Winter/thumb/Winter_E9FImRIUk5Hc7digNynUMiVhRbuCIm.webp', 'Static_Wallpapers/Winter/blur/Winter_E9FImRIUk5Hc7digNynUMiVhRbuCIm.png', 23, 0, 13, 0, 1, 'winter, cold, snow, white, igloo, galaxy, blue, beautiful, nature, Winter', 1, 1, NULL, NULL),
(489, 'Static_Wallpapers/Winter/wallpaper/Winter_PFLlGTvTF8afa9G1NHmE3dr2QO468D.jpg', 'Static_Wallpapers/Winter/thumb/Winter_PFLlGTvTF8afa9G1NHmE3dr2QO468D.webp', 'Static_Wallpapers/Winter/blur/Winter_PFLlGTvTF8afa9G1NHmE3dr2QO468D.png', 23, 2, 25, 0, 1, 'winter, cold, snow, white, candle, fire, beautiful, night, view, scenery, Winter', 1, 1, NULL, NULL),
(490, 'Static_Wallpapers/Winter/wallpaper/Winter_ofFaeO0N3f1mnhPj2uABneY177n51o.jpg', 'Static_Wallpapers/Winter/thumb/Winter_ofFaeO0N3f1mnhPj2uABneY177n51o.webp', 'Static_Wallpapers/Winter/blur/Winter_ofFaeO0N3f1mnhPj2uABneY177n51o.png', 23, 26, 9, 0, 1, 'winter, cold, snow, night, love, beautiful, animated, happy, christmas, hug, bear, girl, Winter', 1, 1, NULL, NULL),
(491, 'Static_Wallpapers/Winter/wallpaper/Winter_c2sMJ3ysRMiA50NeVYIq5CkoetvCVK.jpg', 'Static_Wallpapers/Winter/thumb/Winter_c2sMJ3ysRMiA50NeVYIq5CkoetvCVK.webp', 'Static_Wallpapers/Winter/blur/Winter_c2sMJ3ysRMiA50NeVYIq5CkoetvCVK.png', 23, 3, 48, 0, 1, 'winter, cold, snow, white, tent, camoing, fire, nature, trip, tree, Winter', 1, 1, NULL, NULL),
(492, 'Static_Wallpapers/Winter/wallpaper/Winter_FprdUi0xX3lHE7FYngN6PNHKlIEy4y.jpg', 'Static_Wallpapers/Winter/thumb/Winter_FprdUi0xX3lHE7FYngN6PNHKlIEy4y.webp', 'Static_Wallpapers/Winter/blur/Winter_FprdUi0xX3lHE7FYngN6PNHKlIEy4y.png', 23, 29, 41, 0, 1, 'winter, snow, cold, pink, red, white, apply, flower, beauty, nature, Winter', 1, 1, NULL, NULL),
(493, 'Static_Wallpapers/Winter/wallpaper/Winter_wKPaUGeGscgKoKb3NewKRtgAgJkfVt.jpg', 'Static_Wallpapers/Winter/thumb/Winter_wKPaUGeGscgKoKb3NewKRtgAgJkfVt.webp', 'Static_Wallpapers/Winter/blur/Winter_wKPaUGeGscgKoKb3NewKRtgAgJkfVt.png', 23, 15, 65, 0, 1, 'winter, snow, cold, house, christmas, santa, white, sunset, nature, Winter', 1, 1, NULL, NULL),
(494, 'Static_Wallpapers/Winter/wallpaper/Winter_ba0HrRcSrWtj5XzSAdgcHAsq4fu6qy.jpg', 'Static_Wallpapers/Winter/thumb/Winter_ba0HrRcSrWtj5XzSAdgcHAsq4fu6qy.webp', 'Static_Wallpapers/Winter/blur/Winter_ba0HrRcSrWtj5XzSAdgcHAsq4fu6qy.png', 23, 20, 19, 0, 1, 'winter, snow, cold, mountain, ice, white, nature, beauty, sky, Winter', 1, 1, NULL, NULL),
(495, 'Static_Wallpapers/Winter/wallpaper/Winter_8gAbUAckt0GdswysEScSR1qe2DM0nz.jpg', 'Static_Wallpapers/Winter/thumb/Winter_8gAbUAckt0GdswysEScSR1qe2DM0nz.webp', 'Static_Wallpapers/Winter/blur/Winter_8gAbUAckt0GdswysEScSR1qe2DM0nz.png', 23, 6, 57, 0, 1, 'winter, cold, snow, tree, water, nature, beauty, scenery, wood, white, blue, leaves, Winter', 1, 1, NULL, NULL),
(496, 'Static_Wallpapers/Winter/wallpaper/Winter_6pykNUouo14Olb2wPE2iMjLlFhXRBl.jpg', 'Static_Wallpapers/Winter/thumb/Winter_6pykNUouo14Olb2wPE2iMjLlFhXRBl.webp', 'Static_Wallpapers/Winter/blur/Winter_6pykNUouo14Olb2wPE2iMjLlFhXRBl.png', 23, 0, 15, 0, 1, 'winter, snow, cold, christmas, santa, fire, white, party, wood, dark, night, Winter', 1, 1, NULL, NULL),
(497, 'Static_Wallpapers/Winter/wallpaper/Winter_WysIZshnn6uebxZE6yEJ8FilczkukD.jpg', 'Static_Wallpapers/Winter/thumb/Winter_WysIZshnn6uebxZE6yEJ8FilczkukD.webp', 'Static_Wallpapers/Winter/blur/Winter_WysIZshnn6uebxZE6yEJ8FilczkukD.png', 23, 5, 32, 0, 1, 'winter, cold, ice, sky, clouds, white, blue, nature, scenery, Winter', 1, 1, NULL, NULL),
(498, 'Static_Wallpapers/Winter/wallpaper/Winter_ulbLQAK8WlA8wIbfzntKueUBS5ldBK.jpg', 'Static_Wallpapers/Winter/thumb/Winter_ulbLQAK8WlA8wIbfzntKueUBS5ldBK.webp', 'Static_Wallpapers/Winter/blur/Winter_ulbLQAK8WlA8wIbfzntKueUBS5ldBK.png', 23, 33, 14, 0, 1, 'winter, cold, snow, tree, nature, beauty, white, blue, light, sky, Winter', 1, 1, NULL, NULL),
(499, 'Static_Wallpapers/Winter/wallpaper/Winter_RwgWomW8fmwkg2sw5zaGz2ygodQxzb.jpg', 'Static_Wallpapers/Winter/thumb/Winter_RwgWomW8fmwkg2sw5zaGz2ygodQxzb.webp', 'Static_Wallpapers/Winter/blur/Winter_RwgWomW8fmwkg2sw5zaGz2ygodQxzb.png', 23, 15, 32, 0, 1, 'winter, cold, snow, smoke, train, dark, night, travel, sky, clouds, nature, Winter', 1, 1, NULL, NULL),
(500, 'Static_Wallpapers/Winter/wallpaper/Winter_OE5HWV5Bu78sUN5pBKOzOJhOIshG4U.jpg', 'Static_Wallpapers/Winter/thumb/Winter_OE5HWV5Bu78sUN5pBKOzOJhOIshG4U.webp', 'Static_Wallpapers/Winter/blur/Winter_OE5HWV5Bu78sUN5pBKOzOJhOIshG4U.png', 23, 57, 25, 0, 1, 'winter, cold, snow, penguine, animal, bird, christmas, cap, cute, Winter', 1, 1, NULL, NULL),
(501, 'Static_Wallpapers/Winter/wallpaper/Winter_QsR4vMKYuF9GBBFV5u7czV5OPnLFiV.jpg', 'Static_Wallpapers/Winter/thumb/Winter_QsR4vMKYuF9GBBFV5u7czV5OPnLFiV.webp', 'Static_Wallpapers/Winter/blur/Winter_QsR4vMKYuF9GBBFV5u7czV5OPnLFiV.png', 23, 20, 21, 0, 1, 'winter, cold, snow, sky, tre, nature, beauty, star, blue, house, Winter', 1, 1, NULL, NULL),
(502, 'Static_Wallpapers/Winter/wallpaper/Winter_iaVEIbxiTuKww5FDlKhU5y8CQZC7Cr.jpg', 'Static_Wallpapers/Winter/thumb/Winter_iaVEIbxiTuKww5FDlKhU5y8CQZC7Cr.webp', 'Static_Wallpapers/Winter/blur/Winter_iaVEIbxiTuKww5FDlKhU5y8CQZC7Cr.png', 23, 24, 39, 0, 1, 'winter, cold, snow, white, pink, sky, nature, beauty, mountain, Winter', 1, 1, NULL, NULL),
(503, 'Static_Wallpapers/Winter/wallpaper/Winter_xKeNt0b61wowINAqMP96KIvEgY6LzE.jpg', 'Static_Wallpapers/Winter/thumb/Winter_xKeNt0b61wowINAqMP96KIvEgY6LzE.webp', 'Static_Wallpapers/Winter/blur/Winter_xKeNt0b61wowINAqMP96KIvEgY6LzE.png', 23, 4, 12, 0, 1, 'winter, cold, snow, sky, mushroom, pink, white, beauty, nature, tree, Winter', 1, 1, NULL, NULL),
(504, 'Static_Wallpapers/Winter/wallpaper/Winter_mStK2FQsMG6Ejy82sVvyq24I8KJOXd.jpg', 'Static_Wallpapers/Winter/thumb/Winter_mStK2FQsMG6Ejy82sVvyq24I8KJOXd.webp', 'Static_Wallpapers/Winter/blur/Winter_mStK2FQsMG6Ejy82sVvyq24I8KJOXd.png', 23, 3, 15, 0, 1, 'winter, snow, cold, christmas, light, decoration, tree, nature, beauty, Winter', 1, 1, NULL, NULL),
(505, 'Static_Wallpapers/Winter/wallpaper/Winter_UFIKEzZSCxqlhwGUfHuCONQlxjepkL.jpg', 'Static_Wallpapers/Winter/thumb/Winter_UFIKEzZSCxqlhwGUfHuCONQlxjepkL.webp', 'Static_Wallpapers/Winter/blur/Winter_UFIKEzZSCxqlhwGUfHuCONQlxjepkL.png', 23, 5, 52, 0, 1, 'winter, snow, cold, mountain, tree, house, trip, travel, water, moon, night, Winter', 1, 1, NULL, NULL),
(506, 'Static_Wallpapers/Winter/wallpaper/Winter_rcRpiZGcS61MCMf0mIvxL3gi0kErt4.jpg', 'Static_Wallpapers/Winter/thumb/Winter_rcRpiZGcS61MCMf0mIvxL3gi0kErt4.webp', 'Static_Wallpapers/Winter/blur/Winter_rcRpiZGcS61MCMf0mIvxL3gi0kErt4.png', 23, 41, 39, 0, 1, 'winter, cold, snow, snowman, white, snowwomen, nature, december, Winter', 1, 1, NULL, NULL),
(507, 'Static_Wallpapers/Winter/wallpaper/Winter_rv6Oq0Xyjv9XE9NDEW4I5JbI7UcWtm.jpg', 'Static_Wallpapers/Winter/thumb/Winter_rv6Oq0Xyjv9XE9NDEW4I5JbI7UcWtm.webp', 'Static_Wallpapers/Winter/blur/Winter_rv6Oq0Xyjv9XE9NDEW4I5JbI7UcWtm.png', 23, 26, 41, 0, 1, 'winter, cold, snow, light, house, home, animated, scenery, december, ice, sky, star, moon, Winter', 1, 1, NULL, NULL),
(508, 'Static_Wallpapers/Winter/wallpaper/Winter_Fa6IQhPISc0Vwz8Pap4xi8r6cTyDeT.jpg', 'Static_Wallpapers/Winter/thumb/Winter_Fa6IQhPISc0Vwz8Pap4xi8r6cTyDeT.webp', 'Static_Wallpapers/Winter/blur/Winter_Fa6IQhPISc0Vwz8Pap4xi8r6cTyDeT.png', 23, 3, 7, 0, 1, 'winter, cold, snow, december, ice, cup, tea, hot, warm, nature, enjoy, white, coffee, Winter', 1, 1, NULL, NULL),
(509, 'Static_Wallpapers/Winter/wallpaper/Winter_2CYzhnlPzbe1M0hn0PAM7dQGzkPdeL.jpg', 'Static_Wallpapers/Winter/thumb/Winter_2CYzhnlPzbe1M0hn0PAM7dQGzkPdeL.webp', 'Static_Wallpapers/Winter/blur/Winter_2CYzhnlPzbe1M0hn0PAM7dQGzkPdeL.png', 23, 7, 101, 0, 1, 'snow, wninter, ice, cold, december, nature, beauty, skating, enjoy, white, skateboard, sport, Winter', 1, 1, NULL, NULL),
(510, 'Static_Wallpapers/Winter/wallpaper/Winter_QMFDUrndtPEiRubrg8rkFL1rgSXWiZ.jpg', 'Static_Wallpapers/Winter/thumb/Winter_QMFDUrndtPEiRubrg8rkFL1rgSXWiZ.webp', 'Static_Wallpapers/Winter/blur/Winter_QMFDUrndtPEiRubrg8rkFL1rgSXWiZ.png', 23, 31, 22, 0, 1, 'winter, cold, ice, snow, december, car, jeep, christmas, snowfall, house, beauty, nature, red car, white, Winter', 1, 1, NULL, NULL),
(511, 'Static_Wallpapers/Winter/wallpaper/Winter_WPyNjhcHJmvA50SHLp3NIpoLmYn4mk.jpg', 'Static_Wallpapers/Winter/thumb/Winter_WPyNjhcHJmvA50SHLp3NIpoLmYn4mk.webp', 'Static_Wallpapers/Winter/blur/Winter_WPyNjhcHJmvA50SHLp3NIpoLmYn4mk.png', 23, 22, 25, 0, 1, 'winter, cold, snow, fire, home, warm, woodfire, december, decoration, Winter', 1, 1, NULL, NULL),
(512, 'Static_Wallpapers/Winter/wallpaper/Winter_03omuTzSrPlJAhvu4AcsRSGn1VrN95.jpg', 'Static_Wallpapers/Winter/thumb/Winter_03omuTzSrPlJAhvu4AcsRSGn1VrN95.webp', 'Static_Wallpapers/Winter/blur/Winter_03omuTzSrPlJAhvu4AcsRSGn1VrN95.png', 23, 32, 24, 0, 1, 'winter, snow, cold, december, nature, beauty, white, blue, tree, wood, ice, Winter', 1, 1, NULL, NULL),
(513, 'Static_Wallpapers/Winter/wallpaper/Winter_ucYKrqWAxQgyuJl35oHualN28fFl4R.jpg', 'Static_Wallpapers/Winter/thumb/Winter_ucYKrqWAxQgyuJl35oHualN28fFl4R.webp', 'Static_Wallpapers/Winter/blur/Winter_ucYKrqWAxQgyuJl35oHualN28fFl4R.png', 23, 16, 46, 0, 1, 'winter, snow, cold, ice, moon, sky, blue, white, man, warrior, saviour, mountain, magic, Winter', 1, 1, NULL, NULL),
(514, 'Static_Wallpapers/Winter/wallpaper/Winter_HgPqsULXicvUQjXBZHMQ1oG63Cy3Fe.jpg', 'Static_Wallpapers/Winter/thumb/Winter_HgPqsULXicvUQjXBZHMQ1oG63Cy3Fe.webp', 'Static_Wallpapers/Winter/blur/Winter_HgPqsULXicvUQjXBZHMQ1oG63Cy3Fe.png', 23, 27, 65, 0, 1, 'winter, cold, snow, december, snowfall, dark, house, night, street, christmas, lights, Winter', 1, 1, NULL, NULL),
(515, 'Static_Wallpapers/Winter/wallpaper/Winter_mC3LvWoK8dps2iKCHlIihq8UDs41eB.jpg', 'Static_Wallpapers/Winter/thumb/Winter_mC3LvWoK8dps2iKCHlIihq8UDs41eB.webp', 'Static_Wallpapers/Winter/blur/Winter_mC3LvWoK8dps2iKCHlIihq8UDs41eB.png', 23, 0, 124, 0, 1, 'winter, snow, cold, december, snowfall, cozy, room, candle, peace, warm, rest, holiday, Winter', 1, 1, NULL, NULL),
(516, 'Static_Wallpapers/Winter/wallpaper/Winter_mGOjqvsjkeFlLFEWC7He6BusQLC8Ou.jpg', 'Static_Wallpapers/Winter/thumb/Winter_mGOjqvsjkeFlLFEWC7He6BusQLC8Ou.webp', 'Static_Wallpapers/Winter/blur/Winter_mGOjqvsjkeFlLFEWC7He6BusQLC8Ou.png', 23, 0, 114, 0, 1, 'winter, cold, snow, december, mountain, sky, blue, white, nature, beauty, Winter', 1, 1, NULL, NULL),
(517, 'Static_Wallpapers/Winter/wallpaper/Winter_inJlvEXt3fh9N0wtV0YcsjWlbiF3u1.jpg', 'Static_Wallpapers/Winter/thumb/Winter_inJlvEXt3fh9N0wtV0YcsjWlbiF3u1.webp', 'Static_Wallpapers/Winter/blur/Winter_inJlvEXt3fh9N0wtV0YcsjWlbiF3u1.png', 23, 72, 89, 0, 1, 'winter, cold, snow, ice, snowfall, december, bubble, scenery, tree, nature, beauty, white, Winter', 1, 1, NULL, NULL),
(518, 'Static_Wallpapers/Winter/wallpaper/Winter_pNrCPvA26yX3BF4eeVnp2bIgHfXxM0.jpg', 'Static_Wallpapers/Winter/thumb/Winter_pNrCPvA26yX3BF4eeVnp2bIgHfXxM0.webp', 'Static_Wallpapers/Winter/blur/Winter_pNrCPvA26yX3BF4eeVnp2bIgHfXxM0.png', 23, 37, 37, 0, 1, 'winter, cold, snow, snowfall, december, sky, trees, nature, moon, pink, scenery, beauty, Winter', 1, 1, NULL, NULL),
(519, 'Static_Wallpapers/Winter/wallpaper/Winter_J6ZxhGwpopjtdPF0KLTUD3YWqWcaaW.jpg', 'Static_Wallpapers/Winter/thumb/Winter_J6ZxhGwpopjtdPF0KLTUD3YWqWcaaW.webp', 'Static_Wallpapers/Winter/blur/Winter_J6ZxhGwpopjtdPF0KLTUD3YWqWcaaW.png', 23, 14, 77, 0, 1, 'cold, winter, december, tea, hot, cup, coffee, cozy, room, warmth, candles, Winter', 1, 1, NULL, NULL),
(520, 'Static_Wallpapers/Winter/wallpaper/Winter_1VjSdR9DOHaGiBwkpl0lacMppWsn9N.jpg', 'Static_Wallpapers/Winter/thumb/Winter_1VjSdR9DOHaGiBwkpl0lacMppWsn9N.webp', 'Static_Wallpapers/Winter/blur/Winter_1VjSdR9DOHaGiBwkpl0lacMppWsn9N.png', 23, 13, 21, 0, 1, 'winter, cold, snow, snowfall, december, girl, lady, dark, night, Winter', 1, 1, NULL, NULL),
(521, 'Static_Wallpapers/Winter/wallpaper/Winter_jzsn5fd0Qh4eu87HPMoYyR0cgFyBBH.jpg', 'Static_Wallpapers/Winter/thumb/Winter_jzsn5fd0Qh4eu87HPMoYyR0cgFyBBH.webp', 'Static_Wallpapers/Winter/blur/Winter_jzsn5fd0Qh4eu87HPMoYyR0cgFyBBH.png', 23, 1, 7, 0, 1, 'winter, snow, cold, rock, mountain, sky, nature, beauty, blue, white, december, Winter', 1, 1, NULL, NULL),
(522, 'Static_Wallpapers/Winter/wallpaper/Winter_rYjXm3PR5UEeEbRkFJTlxGosVeJma3.jpg', 'Static_Wallpapers/Winter/thumb/Winter_rYjXm3PR5UEeEbRkFJTlxGosVeJma3.webp', 'Static_Wallpapers/Winter/blur/Winter_rYjXm3PR5UEeEbRkFJTlxGosVeJma3.png', 23, 6, 7, 0, 1, 'winter, cold, snow, december, rock, mountain, girl, sad, anime, tree, star, sky, dark, Winter', 1, 1, NULL, NULL),
(523, 'Static_Wallpapers/Winter/wallpaper/Winter_JXp3kzhZ2k3sI0kEbkMkSBQMN64W7O.jpg', 'Static_Wallpapers/Winter/thumb/Winter_JXp3kzhZ2k3sI0kEbkMkSBQMN64W7O.webp', 'Static_Wallpapers/Winter/blur/Winter_JXp3kzhZ2k3sI0kEbkMkSBQMN64W7O.png', 23, 2, 21, 0, 1, 'winter, cold, snow, december, teddy, bear, fire, warm, cozy, home, christmas, Winter', 1, 1, NULL, NULL),
(524, 'Static_Wallpapers/Winter/wallpaper/Winter_u1CXazjvRO2xbK7MGXAiUWPfze5T7h.jpg', 'Static_Wallpapers/Winter/thumb/Winter_u1CXazjvRO2xbK7MGXAiUWPfze5T7h.webp', 'Static_Wallpapers/Winter/blur/Winter_u1CXazjvRO2xbK7MGXAiUWPfze5T7h.png', 23, 0, 28, 0, 1, 'winter, cold, december, snow, snowfall, snowflakes, tree, christmas, decoration, Winter', 1, 1, NULL, NULL),
(525, 'Static_Wallpapers/Winter/wallpaper/Winter_qowFixhALtLcXkIF9bKHTd9VWchwyv.jpg', 'Static_Wallpapers/Winter/thumb/Winter_qowFixhALtLcXkIF9bKHTd9VWchwyv.webp', 'Static_Wallpapers/Winter/blur/Winter_qowFixhALtLcXkIF9bKHTd9VWchwyv.png', 23, 24, 17, 0, 1, 'winter, cold, snow, snowfall, tree, white, nature, beauty, light, decoration, christmas, Winter', 1, 1, NULL, NULL),
(526, 'Static_Wallpapers/Winter/wallpaper/Winter_aNpjrPock7ms0qniT6ISG5ou1VQvra.jpg', 'Static_Wallpapers/Winter/thumb/Winter_aNpjrPock7ms0qniT6ISG5ou1VQvra.webp', 'Static_Wallpapers/Winter/blur/Winter_aNpjrPock7ms0qniT6ISG5ou1VQvra.png', 23, 0, 26, 0, 1, 'winter, cold, snow, snowfall, colorful, white, rainbow, sky, nature, beauty, mountain, water, Winter', 1, 1, NULL, NULL),
(527, 'Static_Wallpapers/Winter/wallpaper/Winter_h0CgIopTr0aa04kg8oBf97CCQFmdWJ.jpg', 'Static_Wallpapers/Winter/thumb/Winter_h0CgIopTr0aa04kg8oBf97CCQFmdWJ.webp', 'Static_Wallpapers/Winter/blur/Winter_h0CgIopTr0aa04kg8oBf97CCQFmdWJ.png', 23, 0, 66, 0, 1, 'winter, cold, snow, nature, sunset, yellow, tree, mountain, lake, water, house, beauty, Winter', 1, 1, NULL, NULL),
(528, 'Static_Wallpapers/Winter/wallpaper/Winter_uCcoowrQBEclO1btCga32ChBoUQIj0.jpg', 'Static_Wallpapers/Winter/thumb/Winter_uCcoowrQBEclO1btCga32ChBoUQIj0.webp', 'Static_Wallpapers/Winter/blur/Winter_uCcoowrQBEclO1btCga32ChBoUQIj0.png', 23, 7, 81, 0, 1, 'winter, snow, december, cold, tree, wood, sky, moon, moonlight, beauty, nature, Winter', 1, 1, NULL, NULL),
(529, 'Static_Wallpapers/Winter/wallpaper/Winter_ZJXcBaGEuI4qcgdcS0k6roH8XZXW55.jpg', 'Static_Wallpapers/Winter/thumb/Winter_ZJXcBaGEuI4qcgdcS0k6roH8XZXW55.webp', 'Static_Wallpapers/Winter/blur/Winter_ZJXcBaGEuI4qcgdcS0k6roH8XZXW55.png', 23, 0, 122, 0, 1, 'winter, cold, snow, december, animal, fox, nature, beauty, white, tree, sky, moon, Winter', 1, 1, NULL, NULL),
(530, 'Static_Wallpapers/Winter/wallpaper/Winter_55BIIyjGOK7SirHjc3MG3wqXD9tIbL.jpg', 'Static_Wallpapers/Winter/thumb/Winter_55BIIyjGOK7SirHjc3MG3wqXD9tIbL.webp', 'Static_Wallpapers/Winter/blur/Winter_55BIIyjGOK7SirHjc3MG3wqXD9tIbL.png', 23, 4, 9, 0, 1, 'winter, cold, snow, december, tree, wood, sky, cloud, house, moon, moonlight, weather, nature, Winter', 1, 1, NULL, NULL),
(531, 'Static_Wallpapers/Winter/wallpaper/Winter_FoJ9Gm6Hdt4wdDOVmyCIMHhty4sOxT.jpg', 'Static_Wallpapers/Winter/thumb/Winter_FoJ9Gm6Hdt4wdDOVmyCIMHhty4sOxT.webp', 'Static_Wallpapers/Winter/blur/Winter_FoJ9Gm6Hdt4wdDOVmyCIMHhty4sOxT.png', 23, 5, 21, 0, 1, 'winter, snow, cold, december, girl, dog, play, weather, enjoy, happy, animated, snowfall, Winter', 1, 1, NULL, NULL),
(532, 'Static_Wallpapers/Winter/wallpaper/Winter_rWyOQeAYC8xcgewI9iLJPwaiorLOQX.jpg', 'Static_Wallpapers/Winter/thumb/Winter_rWyOQeAYC8xcgewI9iLJPwaiorLOQX.webp', 'Static_Wallpapers/Winter/blur/Winter_rWyOQeAYC8xcgewI9iLJPwaiorLOQX.png', 23, 0, 6, 0, 1, 'winter, cold, snow, snowfall, people, street, white, street light, walk, Winter', 1, 1, NULL, NULL),
(533, 'Static_Wallpapers/Winter/wallpaper/Winter_CgIQB9RZmhYHKf6G6iWhPFcrDeezhP.jpg', 'Static_Wallpapers/Winter/thumb/Winter_CgIQB9RZmhYHKf6G6iWhPFcrDeezhP.webp', 'Static_Wallpapers/Winter/blur/Winter_CgIQB9RZmhYHKf6G6iWhPFcrDeezhP.png', 23, 2, 21, 0, 1, 'winter, cold, snow, snowfall, december, couple, love, celebration, christmas, lights, tree, beauty, happy, Winter', 1, 1, NULL, NULL),
(534, 'Static_Wallpapers/Winter/wallpaper/Winter_TEAI0VuWgnGxthB0enwmCTcRYJeE04.jpg', 'Static_Wallpapers/Winter/thumb/Winter_TEAI0VuWgnGxthB0enwmCTcRYJeE04.webp', 'Static_Wallpapers/Winter/blur/Winter_TEAI0VuWgnGxthB0enwmCTcRYJeE04.png', 23, 6, 13, 0, 1, 'winter, snow, snowfall, cold, animal, christmas, animated, white, december, cartoon, Winter', 1, 1, NULL, NULL),
(535, 'Static_Wallpapers/Winter/wallpaper/Winter_zYtdAJvlX5ED5PJKe95GNahLSzaxSG.jpg', 'Static_Wallpapers/Winter/thumb/Winter_zYtdAJvlX5ED5PJKe95GNahLSzaxSG.webp', 'Static_Wallpapers/Winter/blur/Winter_zYtdAJvlX5ED5PJKe95GNahLSzaxSG.png', 23, 0, 7, 0, 1, 'winter, cold, december, snow, white, snowfall, sky, nature, beauty, winterishere, Winter', 1, 1, NULL, NULL),
(536, 'Static_Wallpapers/Winter/wallpaper/Winter_TP19bBW81ovrgir3WVMqNgmxUUwQ3D.jpg', 'Static_Wallpapers/Winter/thumb/Winter_TP19bBW81ovrgir3WVMqNgmxUUwQ3D.webp', 'Static_Wallpapers/Winter/blur/Winter_TP19bBW81ovrgir3WVMqNgmxUUwQ3D.png', 23, 12, 19, 0, 1, 'winter, snow, cold, december, white, tree, nature, lights, decoration, beauty, Winter', 1, 1, NULL, NULL),
(537, 'Static_Wallpapers/Winter/wallpaper/Winter_ufVaT4S5x1UGXNzsPLh6ovuiMeGIuN.jpg', 'Static_Wallpapers/Winter/thumb/Winter_ufVaT4S5x1UGXNzsPLh6ovuiMeGIuN.webp', 'Static_Wallpapers/Winter/blur/Winter_ufVaT4S5x1UGXNzsPLh6ovuiMeGIuN.png', 23, 9, 8, 0, 1, 'winter, cold, snowfall, snow, nature, house, beauty, sky, tree, moonlight, moon, december, clouds, night, Winter', 1, 1, NULL, NULL),
(538, 'Static_Wallpapers/Winter/wallpaper/Winter_GEbfrKwa2d6XATO68VP7rVBIBRdMRj.jpg', 'Static_Wallpapers/Winter/thumb/Winter_GEbfrKwa2d6XATO68VP7rVBIBRdMRj.webp', 'Static_Wallpapers/Winter/blur/Winter_GEbfrKwa2d6XATO68VP7rVBIBRdMRj.png', 23, 11, 59, 0, 1, 'winter, cold, december, trees, leaves, nature, beauty, dark, wood, night, fog, Winter', 1, 1, NULL, NULL),
(539, 'Static_Wallpapers/Winter/wallpaper/Winter_4p7MaedfWmQaEY1WidWltB4dyT3rcC.jpg', 'Static_Wallpapers/Winter/thumb/Winter_4p7MaedfWmQaEY1WidWltB4dyT3rcC.webp', 'Static_Wallpapers/Winter/blur/Winter_4p7MaedfWmQaEY1WidWltB4dyT3rcC.png', 23, 18, 50, 0, 1, 'winter, snow, cold, december, moon, moonlight, sky, beauty, nature, tree, mountain, dark, Winter', 1, 1, NULL, NULL),
(540, 'Static_Wallpapers/Winter/wallpaper/Winter_zsloapC0Vn4kg0ekqGVvWfPkWZwVCk.jpg', 'Static_Wallpapers/Winter/thumb/Winter_zsloapC0Vn4kg0ekqGVvWfPkWZwVCk.webp', 'Static_Wallpapers/Winter/blur/Winter_zsloapC0Vn4kg0ekqGVvWfPkWZwVCk.png', 23, 5, 12, 0, 1, 'winte, snow, cold, cozy, wool, decoration, light, bell, hangings, celebration, chirstmas, december, Winter', 1, 1, NULL, NULL),
(541, 'Static_Wallpapers/Winter/wallpaper/Winter_SnB3la9w6neUNsWUnCCSSTeXipBBaK.jpg', 'Static_Wallpapers/Winter/thumb/Winter_SnB3la9w6neUNsWUnCCSSTeXipBBaK.webp', 'Static_Wallpapers/Winter/blur/Winter_SnB3la9w6neUNsWUnCCSSTeXipBBaK.png', 23, 5, 12, 0, 1, 'winte, snow, snowfall, cold, gift, celebration, christmas, happy, festival, tree, house, lights, Winter', 1, 1, NULL, NULL),
(542, 'Static_Wallpapers/Winter/wallpaper/Winter_Dy9e7G5Bt5X3aCSGU7G2C1mOpAef4r.jpg', 'Static_Wallpapers/Winter/thumb/Winter_Dy9e7G5Bt5X3aCSGU7G2C1mOpAef4r.webp', 'Static_Wallpapers/Winter/blur/Winter_Dy9e7G5Bt5X3aCSGU7G2C1mOpAef4r.png', 23, 2, 42, 0, 1, 'winter, snow, mountain, december, beauty, nature, sky, white, cold, Winter', 1, 1, NULL, NULL),
(543, 'Static_Wallpapers/Winter/wallpaper/Winter_osej5ms5VRsrf7PX1iCG7apSbQUFMM.jpg', 'Static_Wallpapers/Winter/thumb/Winter_osej5ms5VRsrf7PX1iCG7apSbQUFMM.webp', 'Static_Wallpapers/Winter/blur/Winter_osej5ms5VRsrf7PX1iCG7apSbQUFMM.png', 23, 0, 7, 0, 1, 'winter, snowfall, snow, cold, december, train, dark, night, blur, fog, buliding, Winter', 1, 1, NULL, NULL),
(544, 'Static_Wallpapers/Winter/wallpaper/Winter_mviLGwRQtCOqOUoqP52C0cOquHuBP6.jpg', 'Static_Wallpapers/Winter/thumb/Winter_mviLGwRQtCOqOUoqP52C0cOquHuBP6.webp', 'Static_Wallpapers/Winter/blur/Winter_mviLGwRQtCOqOUoqP52C0cOquHuBP6.png', 23, 4, 10, 0, 1, 'winter, cold, snow, mountain, travel, trip, couple, love, holiday, nature, beauty, Winter', 1, 1, NULL, NULL),
(545, 'Static_Wallpapers/Winter/wallpaper/Winter_GiTfCcdskr0rYSZ0ZKivaDmnlApFPb.jpg', 'Static_Wallpapers/Winter/thumb/Winter_GiTfCcdskr0rYSZ0ZKivaDmnlApFPb.webp', 'Static_Wallpapers/Winter/blur/Winter_GiTfCcdskr0rYSZ0ZKivaDmnlApFPb.png', 23, 3, 17, 0, 1, 'winter, cold, snow, snowfall, december, mounatin, home, house, hotel, scenery, nature, beauty, light, water, sea, Winter', 1, 1, NULL, NULL),
(546, 'Static_Wallpapers/Winter/wallpaper/Winter_flSQgQYFOmRFkfbtd7XzhbDlVy0jua.jpg', 'Static_Wallpapers/Winter/thumb/Winter_flSQgQYFOmRFkfbtd7XzhbDlVy0jua.webp', 'Static_Wallpapers/Winter/blur/Winter_flSQgQYFOmRFkfbtd7XzhbDlVy0jua.png', 23, 0, 24, 0, 1, 'mountains, winter, snow, cold, december, white, nature, beauty, cliffs, rocks, Winter', 1, 1, NULL, NULL),
(547, 'Static_Wallpapers/Winter/wallpaper/Winter_0HJj2jid8dQ5lVjxJ0gFhvFCSlKWXV.jpg', 'Static_Wallpapers/Winter/thumb/Winter_0HJj2jid8dQ5lVjxJ0gFhvFCSlKWXV.webp', 'Static_Wallpapers/Winter/blur/Winter_0HJj2jid8dQ5lVjxJ0gFhvFCSlKWXV.png', 23, 3, 8, 0, 1, 'winter, snow, cold, snowfall, house, december, beauty, nature, blue, huts, decoration, christmas, Winter', 1, 1, NULL, NULL),
(548, 'Static_Wallpapers/Winter/wallpaper/Winter_tHl6ue5p9d6TWXFGcDnldQLh8tIAlF.jpg', 'Static_Wallpapers/Winter/thumb/Winter_tHl6ue5p9d6TWXFGcDnldQLh8tIAlF.webp', 'Static_Wallpapers/Winter/blur/Winter_tHl6ue5p9d6TWXFGcDnldQLh8tIAlF.png', 23, 7, 72, 0, 1, 'winter, house, tree, sky, clouds, snow, cold, nature, beauty, hut, white, december, Winter', 1, 1, NULL, NULL),
(549, 'Static_Wallpapers/Winter/wallpaper/Winter_gkqhDU6W5FCHYNcjTInQJs1TrGafQW.jpg', 'Static_Wallpapers/Winter/thumb/Winter_gkqhDU6W5FCHYNcjTInQJs1TrGafQW.webp', 'Static_Wallpapers/Winter/blur/Winter_gkqhDU6W5FCHYNcjTInQJs1TrGafQW.png', 23, 7, 30, 0, 1, 'winter, cold, snow, december, tree, pink, light, beauty, Winter', 1, 1, NULL, NULL),
(550, 'Static_Wallpapers/Winter/wallpaper/Winter_j6MUzoQg2bRoEWDaEhg21usfs5DbbT.jpg', 'Static_Wallpapers/Winter/thumb/Winter_j6MUzoQg2bRoEWDaEhg21usfs5DbbT.webp', 'Static_Wallpapers/Winter/blur/Winter_j6MUzoQg2bRoEWDaEhg21usfs5DbbT.png', 23, 10, 5, 0, 1, 'winter, snow, cold, mounatin, house, huts, tree, nature, white, lights, sky, star, Winter', 1, 1, NULL, NULL),
(551, 'Static_Wallpapers/Winter/wallpaper/Winter_NU5AK3dm7KUh8GnXrHTXPKYiuJQnrI.jpg', 'Static_Wallpapers/Winter/thumb/Winter_NU5AK3dm7KUh8GnXrHTXPKYiuJQnrI.webp', 'Static_Wallpapers/Winter/blur/Winter_NU5AK3dm7KUh8GnXrHTXPKYiuJQnrI.png', 23, 2, 20, 0, 1, 'winter, snow, cold, window, home, decoration, hot tea, coffee, nature, enjoy, december, cozy, Winter', 1, 1, NULL, NULL),
(552, 'Static_Wallpapers/Winter/wallpaper/Winter_bdOWUPz6AQuJXX077bFgL4KXiUQy9G.jpg', 'Static_Wallpapers/Winter/thumb/Winter_bdOWUPz6AQuJXX077bFgL4KXiUQy9G.webp', 'Static_Wallpapers/Winter/blur/Winter_bdOWUPz6AQuJXX077bFgL4KXiUQy9G.png', 23, 1, 40, 0, 1, 'winter, snow, cold, galaxy, stars, sky, beauty, nature, december, colorful, Winter', 1, 1, NULL, NULL),
(553, 'Static_Wallpapers/Winter/wallpaper/Winter_wAICpj4ooTzQjJlsKBONLQnHLHGZU0.jpg', 'Static_Wallpapers/Winter/thumb/Winter_wAICpj4ooTzQjJlsKBONLQnHLHGZU0.webp', 'Static_Wallpapers/Winter/blur/Winter_wAICpj4ooTzQjJlsKBONLQnHLHGZU0.png', 23, 4, 29, 0, 1, 'winter, cold, snow, house, light, december, huts, home, beauty, decoration, christmas, Winter', 1, 1, NULL, NULL),
(554, 'Static_Wallpapers/Winter/wallpaper/Winter_4PnYQT8wQOxEoMMbfNumLEZuYnoeJU.jpg', 'Static_Wallpapers/Winter/thumb/Winter_4PnYQT8wQOxEoMMbfNumLEZuYnoeJU.webp', 'Static_Wallpapers/Winter/blur/Winter_4PnYQT8wQOxEoMMbfNumLEZuYnoeJU.png', 23, 2, 25, 0, 1, 'winter, cold, snow, snowman, december, nature, warm, tree, christmas, Winter', 1, 1, NULL, NULL),
(555, 'Static_Wallpapers/Winter/wallpaper/Winter_J9njsHY78VWg11rxGnWa3gzZjLT5XF.jpg', 'Static_Wallpapers/Winter/thumb/Winter_J9njsHY78VWg11rxGnWa3gzZjLT5XF.webp', 'Static_Wallpapers/Winter/blur/Winter_J9njsHY78VWg11rxGnWa3gzZjLT5XF.png', 23, 1, 20, 0, 1, 'winter, cold, snow, december, sunlight, nature, beauty, tree, sun, sky, Winter', 1, 1, NULL, NULL),
(556, 'Static_Wallpapers/Winter/wallpaper/Winter_tgxUgKprtkvIMmLJ7QI87trMRY5feo.jpg', 'Static_Wallpapers/Winter/thumb/Winter_tgxUgKprtkvIMmLJ7QI87trMRY5feo.webp', 'Static_Wallpapers/Winter/blur/Winter_tgxUgKprtkvIMmLJ7QI87trMRY5feo.png', 23, 0, 16, 0, 1, 'tree, snow, winter, people, december, cold, nature, beauty, sky, blue, walking, Winter', 1, 1, NULL, NULL),
(557, 'Static_Wallpapers/Winter/wallpaper/Winter_8eYhDOYCWoGjNO15XbIO1rq1MkfMea.jpg', 'Static_Wallpapers/Winter/thumb/Winter_8eYhDOYCWoGjNO15XbIO1rq1MkfMea.webp', 'Static_Wallpapers/Winter/blur/Winter_8eYhDOYCWoGjNO15XbIO1rq1MkfMea.png', 23, 0, 25, 0, 1, 'winter, snow, cold, sunset, sun, lightrays, nature, sky, dcember, house, white, tree, Winter', 1, 1, NULL, NULL),
(558, 'Static_Wallpapers/Winter/wallpaper/Winter_VgcyIYDZIjtpZFyLdRAO8eiIsyrBdL.jpg', 'Static_Wallpapers/Winter/thumb/Winter_VgcyIYDZIjtpZFyLdRAO8eiIsyrBdL.webp', 'Static_Wallpapers/Winter/blur/Winter_VgcyIYDZIjtpZFyLdRAO8eiIsyrBdL.png', 23, 1, 22, 0, 1, 'winter, house, animals, deer, snow, cold, december, nature, tree, wood house, white, beauty, Winter', 1, 1, NULL, NULL),
(559, 'Static_Wallpapers/Winter/wallpaper/Winter_GUFVTORJMSTcfrSNhLPIigZsqjSaZF.jpg', 'Static_Wallpapers/Winter/thumb/Winter_GUFVTORJMSTcfrSNhLPIigZsqjSaZF.webp', 'Static_Wallpapers/Winter/blur/Winter_GUFVTORJMSTcfrSNhLPIigZsqjSaZF.png', 23, 1, 10, 0, 1, 'winter, cold, snow, tree, nature, beauty, white, wood, december, Winter', 1, 1, NULL, NULL),
(560, 'Static_Wallpapers/Winter/wallpaper/Winter_BGlCsXkybNXIDEVQYSN3LZfVqFLwrZ.jpg', 'Static_Wallpapers/Winter/thumb/Winter_BGlCsXkybNXIDEVQYSN3LZfVqFLwrZ.webp', 'Static_Wallpapers/Winter/blur/Winter_BGlCsXkybNXIDEVQYSN3LZfVqFLwrZ.png', 23, 0, 39, 0, 1, 'winter, snow, snowfall, cold, december, house, wood house, adventure, white, trees, mountains, river, water, nature, Winter', 1, 1, NULL, NULL),
(561, 'Static_Wallpapers/Winter/wallpaper/Winter_c7mob0a1GJXLCj2ccJVIMVgSlx5KO6.jpg', 'Static_Wallpapers/Winter/thumb/Winter_c7mob0a1GJXLCj2ccJVIMVgSlx5KO6.webp', 'Static_Wallpapers/Winter/blur/Winter_c7mob0a1GJXLCj2ccJVIMVgSlx5KO6.png', 23, 12, 21, 0, 1, 'winter, cold, snow, house, december, wood house, beauty, nature, night, dark, tree, mountain, scenery, Winter', 1, 1, NULL, NULL);
INSERT INTO `static_wallpapers` (`id`, `img_path`, `thumb_path`, `blur_path`, `cat_id`, `likes`, `downloads`, `unlike`, `set_wp`, `hash_tags`, `wp_show`, `featured`, `created_at`, `updated_at`) VALUES
(562, 'Static_Wallpapers/Winter/wallpaper/Winter_HoEeGEosHuy6msK6vovoVv899cRqRL.jpg', 'Static_Wallpapers/Winter/thumb/Winter_HoEeGEosHuy6msK6vovoVv899cRqRL.webp', 'Static_Wallpapers/Winter/blur/Winter_HoEeGEosHuy6msK6vovoVv899cRqRL.png', 23, 9, 10, 0, 1, 'winter, snow, cold, snowfall, livestock, animals, deer, nature, december, beauty, trees, mountains, wood house, house, lights, Winter', 1, 1, NULL, NULL),
(563, 'Static_Wallpapers/Winter/wallpaper/Winter_LUADu5SGtobd90TU9afSRNtUdlMFLL.jpg', 'Static_Wallpapers/Winter/thumb/Winter_LUADu5SGtobd90TU9afSRNtUdlMFLL.webp', 'Static_Wallpapers/Winter/blur/Winter_LUADu5SGtobd90TU9afSRNtUdlMFLL.png', 23, 8, 30, 0, 1, 'winter, snow, home, house, light, nature, cold, december, white, beauty, sky, clouds, Winter', 1, 1, NULL, NULL),
(564, 'Static_Wallpapers/Winter/wallpaper/Winter_Meu5rg2AuAU0lElMTMLN3B4XH3ZUeI.jpg', 'Static_Wallpapers/Winter/thumb/Winter_Meu5rg2AuAU0lElMTMLN3B4XH3ZUeI.webp', 'Static_Wallpapers/Winter/blur/Winter_Meu5rg2AuAU0lElMTMLN3B4XH3ZUeI.png', 23, 1, 21, 0, 1, 'winter, cold, snow, clouds, mountain, white, beauty, december, sky, water, ocean, sea, blue, deep, Winter', 1, 1, NULL, NULL),
(565, 'Static_Wallpapers/Winter/wallpaper/Winter_YWf9LGqFINR9IdHyCpRE5u0fSzSftw.jpg', 'Static_Wallpapers/Winter/thumb/Winter_YWf9LGqFINR9IdHyCpRE5u0fSzSftw.webp', 'Static_Wallpapers/Winter/blur/Winter_YWf9LGqFINR9IdHyCpRE5u0fSzSftw.png', 23, 5, 90, 0, 1, 'winter, cold, snow, snowfall, tree, white, nature, beauty, december, Winter', 1, 1, NULL, NULL),
(566, 'Static_Wallpapers/Christmas/wallpaper/Christmas_V7gyBkfbpwh69LKR7KVGO9g0mKwc8p.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_V7gyBkfbpwh69LKR7KVGO9g0mKwc8p.webp', 'Static_Wallpapers/Christmas/blur/Christmas_V7gyBkfbpwh69LKR7KVGO9g0mKwc8p.png', 24, 31, 21, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, december, christmastree, Christmas, Christmas tree, Green, Christmas balls, christmas ornaments', 1, 1, NULL, NULL),
(567, 'Static_Wallpapers/Christmas/wallpaper/Christmas_2mJSxu1pxWLZwMWuVmv63lvdc1VuEL.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_2mJSxu1pxWLZwMWuVmv63lvdc1VuEL.webp', 'Static_Wallpapers/Christmas/blur/Christmas_2mJSxu1pxWLZwMWuVmv63lvdc1VuEL.png', 24, 26, 5, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, snow, december, christmastree, Christmas, deer, holiday, love, lighting, White, red, green, reindeer, christmas fairy lights', 1, 1, NULL, NULL),
(568, 'Static_Wallpapers/Christmas/wallpaper/Christmas_juxne7Ia4ZihqFcrbxgxEvqLqUrBOn.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_juxne7Ia4ZihqFcrbxgxEvqLqUrBOn.webp', 'Static_Wallpapers/Christmas/blur/Christmas_juxne7Ia4ZihqFcrbxgxEvqLqUrBOn.png', 24, 0, 10, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, santa, december, christmastree, Christmas, christmasgifts, Candle, balls, Deer, Leaf, Stars, reindeer', 1, 1, NULL, NULL),
(569, 'Static_Wallpapers/Christmas/wallpaper/Christmas_r3uJD8DsKCIlgm2lRX2SogHdg1Igzf.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_r3uJD8DsKCIlgm2lRX2SogHdg1Igzf.webp', 'Static_Wallpapers/Christmas/blur/Christmas_r3uJD8DsKCIlgm2lRX2SogHdg1Igzf.png', 24, 0, 3, 0, 1, 'tree, snow, winter, december, cold, nature, beauty, xmas, christmas, xmasdecor, deer, White, Sky, reindeer', 1, 1, NULL, NULL),
(570, 'Static_Wallpapers/Christmas/wallpaper/Christmas_CbGPwDF3iDQJ2gYpfEujJTu5p9zxty.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_CbGPwDF3iDQJ2gYpfEujJTu5p9zxty.webp', 'Static_Wallpapers/Christmas/blur/Christmas_CbGPwDF3iDQJ2gYpfEujJTu5p9zxty.png', 24, 5, 9, 0, 1, 'xmas, christmastree, merrychristmas, christmasdecor, Christmas, Tree, balls, Christmas Gift, Gift Box, Stars, reindeer, christmas ornaments', 1, 1, NULL, NULL),
(571, 'Static_Wallpapers/Christmas/wallpaper/Christmas_64q6LrhoFEute373HIgrjm9izymYZ2.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_64q6LrhoFEute373HIgrjm9izymYZ2.webp', 'Static_Wallpapers/Christmas/blur/Christmas_64q6LrhoFEute373HIgrjm9izymYZ2.png', 24, 6, 45, 0, 1, 'christmastree, merrychristmas, christmasdecor, winter, december, holidays, christmasspirit, Christmas, Angle, White, Feather, Wings, Light', 1, 1, NULL, NULL),
(572, 'Static_Wallpapers/Christmas/wallpaper/Christmas_bwGLSUAnBoD7RAFsxBXaSuTlkpuoNt.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_bwGLSUAnBoD7RAFsxBXaSuTlkpuoNt.webp', 'Static_Wallpapers/Christmas/blur/Christmas_bwGLSUAnBoD7RAFsxBXaSuTlkpuoNt.png', 24, 2, 20, 0, 1, 'noel, christmasdecorations, christmasparty, merryxmas, holidayseason, santaclaus, Christmas, Duck, Chick, Book, Stars, Tree, Light, Wood', 1, 1, NULL, NULL),
(573, 'Static_Wallpapers/Christmas/wallpaper/Christmas_j9FmTCLHmuF8CvL3kqH87Iv7Dv3Sm5.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_j9FmTCLHmuF8CvL3kqH87Iv7Dv3Sm5.webp', 'Static_Wallpapers/Christmas/blur/Christmas_j9FmTCLHmuF8CvL3kqH87Iv7Dv3Sm5.png', 24, 1, 19, 0, 1, 'xmasdecor, christmashomes, homes, holidayseason, happy, christmasvibes, Christmas, xmastree, xmasparty, Snow, White, Wood, Tree', 1, 1, NULL, NULL),
(574, 'Static_Wallpapers/Christmas/wallpaper/Christmas_be7jrLdM83jb6uVqMxcTTLXmTIP50p.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_be7jrLdM83jb6uVqMxcTTLXmTIP50p.webp', 'Static_Wallpapers/Christmas/blur/Christmas_be7jrLdM83jb6uVqMxcTTLXmTIP50p.png', 24, 3, 14, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, winter, holidays, santaclaus, snow, cat, Christmas, Motorbike, Animal', 1, 1, NULL, NULL),
(575, 'Static_Wallpapers/Christmas/wallpaper/Christmas_qIp6lfro71YKjGv0VH6Ird61xh5r5v.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_qIp6lfro71YKjGv0VH6Ird61xh5r5v.webp', 'Static_Wallpapers/Christmas/blur/Christmas_qIp6lfro71YKjGv0VH6Ird61xh5r5v.png', 24, 20, 9, 0, 1, 'merrychristmas, xmas, christmasdecorations, santa, snow, december, christmastree, deer, sky, blue, Christmas, Candle, Christmas Balls, balls, Clouds, White, reindeer, christmas sleigh', 1, 1, NULL, NULL),
(576, 'Static_Wallpapers/Christmas/wallpaper/Christmas_nZcdD5LL8BHCMLfUk9e8zGrgs9X3Qb.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_nZcdD5LL8BHCMLfUk9e8zGrgs9X3Qb.webp', 'Static_Wallpapers/Christmas/blur/Christmas_nZcdD5LL8BHCMLfUk9e8zGrgs9X3Qb.png', 24, 16, 3, 0, 1, 'merrychristmas, xmas, christmasdecorations, santa, december, Christmas, Fire, Gift Box, Lights, Socks, Wood, christmas stocking, Wreath, christmas ornaments', 1, 1, NULL, NULL),
(577, 'Static_Wallpapers/Christmas/wallpaper/Christmas_ldJLuekGZCz0sgWOwJkJ4Sxaex79F6.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_ldJLuekGZCz0sgWOwJkJ4Sxaex79F6.webp', 'Static_Wallpapers/Christmas/blur/Christmas_ldJLuekGZCz0sgWOwJkJ4Sxaex79F6.png', 24, 1, 8, 0, 1, 'merrychristmas, xmas, christmasdecorations, december, christmastree, Christmas, Gift Box, Bear, Christmas balls, white, red, christmas ornaments', 1, 1, NULL, NULL),
(578, 'Static_Wallpapers/Christmas/wallpaper/Christmas_opB33HEMZ8rhHQ2J9JdfmXBQq1zDtD.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_opB33HEMZ8rhHQ2J9JdfmXBQq1zDtD.webp', 'Static_Wallpapers/Christmas/blur/Christmas_opB33HEMZ8rhHQ2J9JdfmXBQq1zDtD.png', 24, 1, 3, 0, 1, 'merrychristmas, xmas, christmasdecorations, snow, december, Christmas, Home, Cloud, Ball, White, Red', 1, 1, NULL, NULL),
(579, 'Static_Wallpapers/Christmas/wallpaper/Christmas_YiyjRqkLJo2HSfYvOYjmClV7gx0bIO.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_YiyjRqkLJo2HSfYvOYjmClV7gx0bIO.webp', 'Static_Wallpapers/Christmas/blur/Christmas_YiyjRqkLJo2HSfYvOYjmClV7gx0bIO.png', 24, 0, 15, 0, 1, 'tree, snow, winter, december, cold, nature, beauty, blue, Christmas, Balls, Wood, Golden, Red, Stars, Xmas, christmas ornaments', 1, 1, NULL, NULL),
(580, 'Static_Wallpapers/Christmas/wallpaper/Christmas_CWR4yTtSJxEc8ORsue6ThCAeWklDID.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_CWR4yTtSJxEc8ORsue6ThCAeWklDID.webp', 'Static_Wallpapers/Christmas/blur/Christmas_CWR4yTtSJxEc8ORsue6ThCAeWklDID.png', 24, 1, 17, 0, 1, 'mountain, winter, snow, home, white, water, sky, Christmas', 1, 1, NULL, NULL),
(581, 'Static_Wallpapers/Christmas/wallpaper/Christmas_glTU9Nri0IHQeqLRGsxvQuld8MNBUk.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_glTU9Nri0IHQeqLRGsxvQuld8MNBUk.webp', 'Static_Wallpapers/Christmas/blur/Christmas_glTU9Nri0IHQeqLRGsxvQuld8MNBUk.png', 24, 1, 12, 0, 1, 'merrychristmas, xmas, christmasdecorations, santa, snow, december, santaclaus, christmastree, Christmas, Gift Box, Stars, christmas sleigh, christmas ornaments', 1, 1, NULL, NULL),
(582, 'Static_Wallpapers/Christmas/wallpaper/Christmas_nCBr9t7LONGqV19nlRXmL6ZksL10rM.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_nCBr9t7LONGqV19nlRXmL6ZksL10rM.webp', 'Static_Wallpapers/Christmas/blur/Christmas_nCBr9t7LONGqV19nlRXmL6ZksL10rM.png', 24, 6, 9, 0, 1, 'merrychristmas, christmasdecorations, december, christmastree, Christmas, balloon, Green, Froze', 1, 1, NULL, NULL),
(583, 'Static_Wallpapers/Christmas/wallpaper/Christmas_yr9kYOlvXiKrOBHJyuYlkl2tD1eDqj.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_yr9kYOlvXiKrOBHJyuYlkl2tD1eDqj.webp', 'Static_Wallpapers/Christmas/blur/Christmas_yr9kYOlvXiKrOBHJyuYlkl2tD1eDqj.png', 24, 7, 7, 0, 1, 'merrychristmas, xmas, christmasdecorations, december, christmastree, Christmas, Light, Christmas Balls, christmas ornaments', 1, 1, NULL, NULL),
(584, 'Static_Wallpapers/Christmas/wallpaper/Christmas_bOrjJHGMmA1VvA8o9EnvTvDFn1Bbj4.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_bOrjJHGMmA1VvA8o9EnvTvDFn1Bbj4.webp', 'Static_Wallpapers/Christmas/blur/Christmas_bOrjJHGMmA1VvA8o9EnvTvDFn1Bbj4.png', 24, 0, 5, 0, 1, 'winter, snow, Christmas, merrychristmas, christmas Balls, Gift Box, xmas, tree, lighting, christmas ornaments', 1, 1, NULL, NULL),
(585, 'Static_Wallpapers/Christmas/wallpaper/Christmas_oCkONs3C56CiHgUJ88ViOsWI0TZYDv.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_oCkONs3C56CiHgUJ88ViOsWI0TZYDv.webp', 'Static_Wallpapers/Christmas/blur/Christmas_oCkONs3C56CiHgUJ88ViOsWI0TZYDv.png', 24, 12, 4, 0, 1, 'merrychristmas, xmas, christmasdecorations, snow, december, christmastree, Christmas, Sky, Christmas Balls, tree, christmas ornaments, christmas sleigh', 1, 1, NULL, NULL),
(586, 'Static_Wallpapers/Christmas/wallpaper/Christmas_emWmACJC3dVmePyJlCYAdVrXTlQ1Gf.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_emWmACJC3dVmePyJlCYAdVrXTlQ1Gf.webp', 'Static_Wallpapers/Christmas/blur/Christmas_emWmACJC3dVmePyJlCYAdVrXTlQ1Gf.png', 24, 1, 5, 0, 1, 'merrychristmas, xmas, christmasdecorations, december, christmastree, Christmas, Home, Light', 1, 1, NULL, NULL),
(587, 'Static_Wallpapers/Christmas/wallpaper/Christmas_nejD1aRUSpN49BhHiqzjuEBu3WaptM.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_nejD1aRUSpN49BhHiqzjuEBu3WaptM.webp', 'Static_Wallpapers/Christmas/blur/Christmas_nejD1aRUSpN49BhHiqzjuEBu3WaptM.png', 24, 0, 7, 0, 1, 'merrychristmas, xmas, christmasdecorations, december, christmastree, Christmas, Snow, Home, White, light', 1, 1, NULL, NULL),
(588, 'Static_Wallpapers/Christmas/wallpaper/Christmas_fNrmhl4JChGCf5ROuLTMJvxCJLOcww.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_fNrmhl4JChGCf5ROuLTMJvxCJLOcww.webp', 'Static_Wallpapers/Christmas/blur/Christmas_fNrmhl4JChGCf5ROuLTMJvxCJLOcww.png', 24, 1, 104, 0, 1, 'merrychristmas, xmas, christmasdecorations, snow, december, Christmas, Cat, Animals, Christmas Cap', 1, 1, NULL, NULL),
(589, 'Static_Wallpapers/Christmas/wallpaper/Christmas_vSx9UBJ2NxZkMTwxIJUtp7PuMP6IxB.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_vSx9UBJ2NxZkMTwxIJUtp7PuMP6IxB.webp', 'Static_Wallpapers/Christmas/blur/Christmas_vSx9UBJ2NxZkMTwxIJUtp7PuMP6IxB.png', 24, 3, 2, 0, 1, 'merrychristmas, christmasdecorations, december, Christmas, Snow, Gift Box, Candle, Ribbon', 1, 1, NULL, NULL),
(590, 'Static_Wallpapers/Christmas/wallpaper/Christmas_CUWW6iGGT0hNuNpn0sCDMMQzi5j9kO.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_CUWW6iGGT0hNuNpn0sCDMMQzi5j9kO.webp', 'Static_Wallpapers/Christmas/blur/Christmas_CUWW6iGGT0hNuNpn0sCDMMQzi5j9kO.png', 24, 0, 8, 0, 1, 'merrychristmas, xmas, christmasdecorations, snow, december, christmastree, Christmas, Christmas Balls, Ribbon, Balls, Tree, christmas sleigh', 1, 1, NULL, NULL),
(591, 'Static_Wallpapers/Christmas/wallpaper/Christmas_5vbROF1octpGtjeGqTvxPeDXyJXl9j.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_5vbROF1octpGtjeGqTvxPeDXyJXl9j.webp', 'Static_Wallpapers/Christmas/blur/Christmas_5vbROF1octpGtjeGqTvxPeDXyJXl9j.png', 24, 1, 0, 0, 1, 'merrychristmas, santa, snow, december, santaclaus, Christmas, Gift Box, People, Airplane, Sky, Aeroplane', 1, 1, NULL, NULL),
(592, 'Static_Wallpapers/Christmas/wallpaper/Christmas_gnsfmCnhGBAh6w8n7i4V8hP16L9mag.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_gnsfmCnhGBAh6w8n7i4V8hP16L9mag.webp', 'Static_Wallpapers/Christmas/blur/Christmas_gnsfmCnhGBAh6w8n7i4V8hP16L9mag.png', 24, 0, 9, 0, 1, 'merrychristmas, xmas, christmasdecorations, snow, december, christmastree, Christmas, Gift box, Deer', 1, 1, NULL, NULL),
(593, 'Static_Wallpapers/Christmas/wallpaper/Christmas_icgoBBfKb92l9SggBzrqC6lYR1XmNH.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_icgoBBfKb92l9SggBzrqC6lYR1XmNH.webp', 'Static_Wallpapers/Christmas/blur/Christmas_icgoBBfKb92l9SggBzrqC6lYR1XmNH.png', 24, 0, 11, 0, 1, 'merrychristmas, xmas, christmasdecorations, snow, december, christmastree, Christmas, Deer, Tree, xmastree, Stars, Winter, christmas sleigh, christmas ornaments, reindeer', 1, 1, NULL, NULL),
(594, 'Static_Wallpapers/Christmas/wallpaper/Christmas_23JFVKOgqQhOutJE2mJStI03r1YtA2.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_23JFVKOgqQhOutJE2mJStI03r1YtA2.webp', 'Static_Wallpapers/Christmas/blur/Christmas_23JFVKOgqQhOutJE2mJStI03r1YtA2.png', 24, 0, 15, 0, 1, 'merrychristmas, xmas, christmasdecorations, december, christmastree, Christmas, Dog, Gift Box, Animals, Tree, mat, christmas ornaments', 1, 1, NULL, NULL),
(595, 'Static_Wallpapers/Christmas/wallpaper/Christmas_nf6qUe4FvK9VxhH4j1I2h5MX3vl6Cb.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_nf6qUe4FvK9VxhH4j1I2h5MX3vl6Cb.webp', 'Static_Wallpapers/Christmas/blur/Christmas_nf6qUe4FvK9VxhH4j1I2h5MX3vl6Cb.png', 24, 0, 11, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, winter, holidays, christmaslights, snow, Christmas, Snowman', 1, 1, NULL, NULL),
(596, 'Static_Wallpapers/Christmas/wallpaper/Christmas_yiungkqjURbC54AbRL96ulzOa18Y4b.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_yiungkqjURbC54AbRL96ulzOa18Y4b.webp', 'Static_Wallpapers/Christmas/blur/Christmas_yiungkqjURbC54AbRL96ulzOa18Y4b.png', 24, 0, 12, 0, 1, 'christmas, christmastree, merrychristmas, christmasdecor, winter, love, december, holidays, Christmas, Home, Sky, skiting, Dolls, tree', 1, 1, NULL, NULL),
(597, 'Static_Wallpapers/Christmas/wallpaper/Christmas_EaRCu75jY6I9CP9L9XO2tfdIiaoyJ5.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_EaRCu75jY6I9CP9L9XO2tfdIiaoyJ5.webp', 'Static_Wallpapers/Christmas/blur/Christmas_EaRCu75jY6I9CP9L9XO2tfdIiaoyJ5.png', 24, 4, 26, 0, 1, 'christmaseve, noel, christmasdecorations, christmasparty, christmasspirit, merryxmas, christmasmood, holidayseason, elf, santaclaus, Christmas, skiting, Tree, Snow, Leaf, Colorfully, Wings, Feathers', 1, 1, NULL, NULL),
(598, 'Static_Wallpapers/Christmas/wallpaper/Christmas_uFH0LOPg1ReHe8KTLrQK9Z2Ff6qI7Q.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_uFH0LOPg1ReHe8KTLrQK9Z2Ff6qI7Q.webp', 'Static_Wallpapers/Christmas/blur/Christmas_uFH0LOPg1ReHe8KTLrQK9Z2Ff6qI7Q.png', 24, 2, 11, 0, 1, 'noel, christmasdecorations, merryxmas, holidayseason, Christmas, Home, Deer, Tree, reindeer', 1, 1, NULL, NULL),
(599, 'Static_Wallpapers/Christmas/wallpaper/Christmas_EHF2zFe9lLO18tR1uFbgPEgz2nRLCh.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_EHF2zFe9lLO18tR1uFbgPEgz2nRLCh.webp', 'Static_Wallpapers/Christmas/blur/Christmas_EHF2zFe9lLO18tR1uFbgPEgz2nRLCh.png', 24, 0, 3, 0, 1, 'merrychristmas, xmas, christmasdecorations, snow, december, christmastree, Christmas, Tree', 1, 1, NULL, NULL),
(600, 'Static_Wallpapers/Christmas/wallpaper/Christmas_g14bdjiugq3MrSxCL6EPqmWgi325Fn.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_g14bdjiugq3MrSxCL6EPqmWgi325Fn.webp', 'Static_Wallpapers/Christmas/blur/Christmas_g14bdjiugq3MrSxCL6EPqmWgi325Fn.png', 24, 0, 3, 0, 1, 'merrychristmas, xmas, christmasdecorations, snow, december, christmastree, Christmas, Snowman, Lighting', 1, 1, NULL, NULL),
(601, 'Static_Wallpapers/Christmas/wallpaper/Christmas_mMV1ryeMpvJbx4qIjK1DgEsITF7l6H.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_mMV1ryeMpvJbx4qIjK1DgEsITF7l6H.webp', 'Static_Wallpapers/Christmas/blur/Christmas_mMV1ryeMpvJbx4qIjK1DgEsITF7l6H.png', 24, 0, 5, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, christmaslights, Christmas, xmas tree, Ribbon, Leaf, Flowers, Balls, Stars, christmas ornaments', 1, 1, NULL, NULL),
(602, 'Static_Wallpapers/Christmas/wallpaper/Christmas_ZF6takCloJPVWEMBjwhMnded9utsn5.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_ZF6takCloJPVWEMBjwhMnded9utsn5.webp', 'Static_Wallpapers/Christmas/blur/Christmas_ZF6takCloJPVWEMBjwhMnded9utsn5.png', 24, 12, 19, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, winter, holidays, christmaslights, snow, Christmas, Home, Tree, Sky, Blue, colorfully', 1, 1, NULL, NULL),
(603, 'Static_Wallpapers/Christmas/wallpaper/Christmas_E4cqZaiTqhKJyDmbFJB6en58djJvoB.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_E4cqZaiTqhKJyDmbFJB6en58djJvoB.webp', 'Static_Wallpapers/Christmas/blur/Christmas_E4cqZaiTqhKJyDmbFJB6en58djJvoB.png', 24, 0, 1, 0, 1, 'christmas, christmastree, merrychristmas, christmasdecor, winter, december, holidays, Christmas, Home, Tree, mountain', 1, 1, NULL, NULL),
(604, 'Static_Wallpapers/Christmas/wallpaper/Christmas_w9RnheCl5PkJ3pbXTZhnBwS4Tco6Mc.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_w9RnheCl5PkJ3pbXTZhnBwS4Tco6Mc.webp', 'Static_Wallpapers/Christmas/blur/Christmas_w9RnheCl5PkJ3pbXTZhnBwS4Tco6Mc.png', 24, 0, 4, 0, 1, 'merrychristmas, xmas, christmasdecorations, december, christmastree, Christmas, Gift Box, Tree, Mat, Fire, Ribbon, christmas ornaments, Wreath, christmas fairy lights', 1, 1, NULL, NULL),
(605, 'Static_Wallpapers/Christmas/wallpaper/Christmas_RdTonr2Y9JCJxnMrvBja7eoCAwg5mm.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_RdTonr2Y9JCJxnMrvBja7eoCAwg5mm.webp', 'Static_Wallpapers/Christmas/blur/Christmas_RdTonr2Y9JCJxnMrvBja7eoCAwg5mm.png', 24, 0, 2, 0, 1, 'christmas, christmastree, merrychristmas, christmasdecor, Christmas, Gift Box, Ribbon, Balls, christmas ornaments', 1, 1, NULL, NULL),
(606, 'Static_Wallpapers/Christmas/wallpaper/Christmas_OKwgwfMQLoJiB4RYPUq4yKpP2HjP6C.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_OKwgwfMQLoJiB4RYPUq4yKpP2HjP6C.webp', 'Static_Wallpapers/Christmas/blur/Christmas_OKwgwfMQLoJiB4RYPUq4yKpP2HjP6C.png', 24, 6, 15, 0, 1, 'christmastree, merrychristmas, christmasdecor, december, holidays, christmaschee, Christmas, Christmas Balls, Light, Red, Leaf, christmas ornaments', 1, 1, NULL, NULL),
(607, 'Static_Wallpapers/Christmas/wallpaper/Christmas_OMZAQi243xe5qLHGgZhsFzfI5115jT.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_OMZAQi243xe5qLHGgZhsFzfI5115jT.webp', 'Static_Wallpapers/Christmas/blur/Christmas_OMZAQi243xe5qLHGgZhsFzfI5115jT.png', 24, 0, 6, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, christmastime, winter, holidays, christmaslights, snow, tree, xmastree, Home, hut, light, sky, stars, christmas fairy lights, christmas ornaments', 1, 1, NULL, NULL),
(608, 'Static_Wallpapers/Christmas/wallpaper/Christmas_K3G65Nj5PMvF7BdnYoln19LUTXnMU1.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_K3G65Nj5PMvF7BdnYoln19LUTXnMU1.webp', 'Static_Wallpapers/Christmas/blur/Christmas_K3G65Nj5PMvF7BdnYoln19LUTXnMU1.png', 24, 1, 5, 0, 1, 'tree, snow, winter, december, cold, nature, beauty, sky, Christmas, Christmas  Balls, Xmastree, Home, Leaf, merrychristmas, christmasdecor, christmaslights, christmas fairy lights, christmas ornaments', 1, 1, NULL, NULL),
(609, 'Static_Wallpapers/Christmas/wallpaper/Christmas_JIFfO6tvwTKB1wZTV682mfPmztSeEJ.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_JIFfO6tvwTKB1wZTV682mfPmztSeEJ.webp', 'Static_Wallpapers/Christmas/blur/Christmas_JIFfO6tvwTKB1wZTV682mfPmztSeEJ.png', 24, 0, 19, 0, 1, 'christmas, christmastree, merrychristmas, christmasdecor, love, december, holidays, Christmas, Fire, Bear, candle, christmas Balls, Home, Wreath', 1, 1, NULL, NULL),
(610, 'Static_Wallpapers/Christmas/wallpaper/Christmas_nKUAA1qE1b0z946k5MFZAdSbYONin9.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_nKUAA1qE1b0z946k5MFZAdSbYONin9.webp', 'Static_Wallpapers/Christmas/blur/Christmas_nKUAA1qE1b0z946k5MFZAdSbYONin9.png', 24, 0, 13, 0, 1, 'christmas, christmastree, merrychristmas, christmasdecor, love, december, holidays, Christmas, Book, Boy, Girls, Gift Box, Light', 1, 1, NULL, NULL),
(611, 'Static_Wallpapers/Christmas/wallpaper/Christmas_rVZTQ4BrTusLRJW5EV53pEHP9KPrva.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_rVZTQ4BrTusLRJW5EV53pEHP9KPrva.webp', 'Static_Wallpapers/Christmas/blur/Christmas_rVZTQ4BrTusLRJW5EV53pEHP9KPrva.png', 24, 0, 5, 0, 1, 'christmas, christmastree, merrychristmas, christmasdecor, winter, december, holidays, Christmas, Home, Hut, Tree, Snow, White', 1, 1, NULL, NULL),
(612, 'Static_Wallpapers/Christmas/wallpaper/Christmas_suC1ZRMD11Ola0kndPDsfS8nlg7DKC.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_suC1ZRMD11Ola0kndPDsfS8nlg7DKC.webp', 'Static_Wallpapers/Christmas/blur/Christmas_suC1ZRMD11Ola0kndPDsfS8nlg7DKC.png', 24, 0, 37, 0, 1, 'christmas, christmastree, merrychristmas, christmasdecor, Christmas, Christmas Ball, christmas ornaments', 1, 1, NULL, NULL),
(613, 'Static_Wallpapers/Christmas/wallpaper/Christmas_xQq1uLgrfkDtqjQvMYzJ6Oi3M5jajJ.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_xQq1uLgrfkDtqjQvMYzJ6Oi3M5jajJ.webp', 'Static_Wallpapers/Christmas/blur/Christmas_xQq1uLgrfkDtqjQvMYzJ6Oi3M5jajJ.png', 24, 2, 13, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, christmaslights, Christmas, Candel', 1, 1, NULL, NULL),
(614, 'Static_Wallpapers/Christmas/wallpaper/Christmas_Ddx9KuIhSpHjGBfWkc4JOuCdVrVrn9.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_Ddx9KuIhSpHjGBfWkc4JOuCdVrVrn9.webp', 'Static_Wallpapers/Christmas/blur/Christmas_Ddx9KuIhSpHjGBfWkc4JOuCdVrVrn9.png', 24, 1, 4, 0, 1, 'merrychristmas, xmas, christmasdecorations, christmastree, Christmas, Gift Box, Christmas balls, Lighting, christmas ornaments, christmas fairy lights', 1, 1, NULL, NULL),
(615, 'Static_Wallpapers/Christmas/wallpaper/Christmas_dRtVdDZ7Z6YsjjFR0cnqhPp6MqZB8Q.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_dRtVdDZ7Z6YsjjFR0cnqhPp6MqZB8Q.webp', 'Static_Wallpapers/Christmas/blur/Christmas_dRtVdDZ7Z6YsjjFR0cnqhPp6MqZB8Q.png', 24, 0, 24, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, love, winter, christmaslights, Christmas, Fire, Candle, Gift Box, christmas fairy lights, christmas ornaments, Wreath, christmas stocking', 1, 1, NULL, NULL),
(616, 'Static_Wallpapers/Christmas/wallpaper/Christmas_Yj1j9mqDdvimMIJDPtdlayK1UcYFxO.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_Yj1j9mqDdvimMIJDPtdlayK1UcYFxO.webp', 'Static_Wallpapers/Christmas/blur/Christmas_Yj1j9mqDdvimMIJDPtdlayK1UcYFxO.png', 24, 2, 3, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, Christmas Balls, Green, Red, christmas ornaments', 1, 1, NULL, NULL),
(617, 'Static_Wallpapers/Christmas/wallpaper/Christmas_wNmDmZgAbkELXsi89ujOuou4DNE17a.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_wNmDmZgAbkELXsi89ujOuou4DNE17a.webp', 'Static_Wallpapers/Christmas/blur/Christmas_wNmDmZgAbkELXsi89ujOuou4DNE17a.png', 24, 2, 24, 0, 1, 'merrychristmas, xmas, christmasdecorations, december, Christmas, Colorfully, reindeer, christmas ornaments', 1, 1, NULL, NULL),
(618, 'Static_Wallpapers/Christmas/wallpaper/Christmas_ADpeqmjIhpVGor8Ry5OnA6eAMzr1vJ.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_ADpeqmjIhpVGor8Ry5OnA6eAMzr1vJ.webp', 'Static_Wallpapers/Christmas/blur/Christmas_ADpeqmjIhpVGor8Ry5OnA6eAMzr1vJ.png', 24, 1, 1, 0, 1, 'merrychristmas, xmas, christmastime, Christmas, Christmas Cap, Skeleton', 1, 1, NULL, NULL),
(619, 'Static_Wallpapers/Christmas/wallpaper/Christmas_X2C7nfHhNzbaLgHSw8fKHH7nFjIEJv.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_X2C7nfHhNzbaLgHSw8fKHH7nFjIEJv.webp', 'Static_Wallpapers/Christmas/blur/Christmas_X2C7nfHhNzbaLgHSw8fKHH7nFjIEJv.png', 24, 4, 4, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, snow, christmasiscoming, christmastree, Christmas, Hut, Book', 1, 1, NULL, NULL),
(620, 'Static_Wallpapers/Christmas/wallpaper/Christmas_CWtpGkEW5aqZZh5no5JO7dPOFpMnFE.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_CWtpGkEW5aqZZh5no5JO7dPOFpMnFE.webp', 'Static_Wallpapers/Christmas/blur/Christmas_CWtpGkEW5aqZZh5no5JO7dPOFpMnFE.png', 24, 0, 27, 0, 1, 'merrychristmas, xmas, christmasdecorations, snow, december, christmastree, Christmas, Book, Hut, Tree, xmastree', 1, 1, NULL, NULL),
(621, 'Static_Wallpapers/Christmas/wallpaper/Christmas_f3YnVXXG3XHC6pXGRRYC7x0rCGA9J5.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_f3YnVXXG3XHC6pXGRRYC7x0rCGA9J5.webp', 'Static_Wallpapers/Christmas/blur/Christmas_f3YnVXXG3XHC6pXGRRYC7x0rCGA9J5.png', 24, 2, 3, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, santa, snow, december, santaclaus, Christmas, Sky', 1, 1, NULL, NULL),
(622, 'Static_Wallpapers/Christmas/wallpaper/Christmas_qa6Au7kTtzoTbrnsZIeiSRCXGtx8jO.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_qa6Au7kTtzoTbrnsZIeiSRCXGtx8jO.webp', 'Static_Wallpapers/Christmas/blur/Christmas_qa6Au7kTtzoTbrnsZIeiSRCXGtx8jO.png', 24, 2, 3, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, snow, december, santaclaus, Christmas, Snowman, Home', 1, 1, NULL, NULL),
(623, 'Static_Wallpapers/Christmas/wallpaper/Christmas_OLj9TH2JxMqC8nDLwQsn5qKTSDpVTQ.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_OLj9TH2JxMqC8nDLwQsn5qKTSDpVTQ.webp', 'Static_Wallpapers/Christmas/blur/Christmas_OLj9TH2JxMqC8nDLwQsn5qKTSDpVTQ.png', 24, 10, 1, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, snow, december, christmastree, Christmas, Snow man', 1, 1, NULL, NULL),
(624, 'Static_Wallpapers/Christmas/wallpaper/Christmas_9ig6QrowmlcoRYg9JQ2DMtaPX8L3T2.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_9ig6QrowmlcoRYg9JQ2DMtaPX8L3T2.webp', 'Static_Wallpapers/Christmas/blur/Christmas_9ig6QrowmlcoRYg9JQ2DMtaPX8L3T2.png', 24, 0, 5, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, snow, december, Christmas, Snow man', 1, 1, NULL, NULL),
(625, 'Static_Wallpapers/Christmas/wallpaper/Christmas_bE0hyrP96s9I4KPz2eUOD6mme3EJgD.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_bE0hyrP96s9I4KPz2eUOD6mme3EJgD.webp', 'Static_Wallpapers/Christmas/blur/Christmas_bE0hyrP96s9I4KPz2eUOD6mme3EJgD.png', 24, 4, 4, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, snow, december, christmastree, Christmas, Snow man', 1, 1, NULL, NULL),
(626, 'Static_Wallpapers/Christmas/wallpaper/Christmas_IKNWTEl6p7Ta8oD3yYy8VERo7rENxg.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_IKNWTEl6p7Ta8oD3yYy8VERo7rENxg.webp', 'Static_Wallpapers/Christmas/blur/Christmas_IKNWTEl6p7Ta8oD3yYy8VERo7rENxg.png', 24, 0, 7, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, snow, december, christmastree, Christmas, Snow man, Christmas balls, hut, lamp', 1, 1, NULL, NULL),
(627, 'Static_Wallpapers/Christmas/wallpaper/Christmas_0CIWpicZwuN67XFuuZoQQo24AJ2oM6.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_0CIWpicZwuN67XFuuZoQQo24AJ2oM6.webp', 'Static_Wallpapers/Christmas/blur/Christmas_0CIWpicZwuN67XFuuZoQQo24AJ2oM6.png', 24, 1, 4, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, snow, december, christmastree, Christmas, TREE, Star, Dark, Christmas light, light, christmas ornaments', 1, 1, NULL, NULL),
(628, 'Static_Wallpapers/Christmas/wallpaper/Christmas_ufGJzQ14caRyC7wsDUeOdpXSph1M4A.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_ufGJzQ14caRyC7wsDUeOdpXSph1M4A.webp', 'Static_Wallpapers/Christmas/blur/Christmas_ufGJzQ14caRyC7wsDUeOdpXSph1M4A.png', 24, 1, 21, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, santa, snow, december, santaclaus, christmastree, Christmas, colorfully, Doll, Dance, Skiting', 1, 1, NULL, NULL),
(629, 'Static_Wallpapers/Christmas/wallpaper/Christmas_B8AzBbt1cpgdaqLpziPwZcLjwb6phJ.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_B8AzBbt1cpgdaqLpziPwZcLjwb6phJ.webp', 'Static_Wallpapers/Christmas/blur/Christmas_B8AzBbt1cpgdaqLpziPwZcLjwb6phJ.png', 24, 0, 17, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, december, christmastree, Christmas, Glass, Light, christmas fairy lights', 1, 1, NULL, NULL),
(630, 'Static_Wallpapers/Christmas/wallpaper/Christmas_XGkg9PcUBOkEERdZH6aXqCjfZbQnbk.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_XGkg9PcUBOkEERdZH6aXqCjfZbQnbk.webp', 'Static_Wallpapers/Christmas/blur/Christmas_XGkg9PcUBOkEERdZH6aXqCjfZbQnbk.png', 24, 0, 30, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, winter, christmaslights, snow, Christmas, tree, christmas fairy lights, Colorfully', 1, 1, NULL, NULL),
(631, 'Static_Wallpapers/Christmas/wallpaper/Christmas_dsxxuLBBnPm3i3RDQ4f0KWCkpyJUKW.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_dsxxuLBBnPm3i3RDQ4f0KWCkpyJUKW.webp', 'Static_Wallpapers/Christmas/blur/Christmas_dsxxuLBBnPm3i3RDQ4f0KWCkpyJUKW.png', 24, 0, 18, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, snow, december, christmastree, Christmas, Home, hut, Sky, light', 1, 1, NULL, NULL),
(632, 'Static_Wallpapers/Christmas/wallpaper/Christmas_uNgUxxRF3cIvjh6RZGeLbkS6ecjKGO.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_uNgUxxRF3cIvjh6RZGeLbkS6ecjKGO.webp', 'Static_Wallpapers/Christmas/blur/Christmas_uNgUxxRF3cIvjh6RZGeLbkS6ecjKGO.png', 24, 2, 2, 0, 1, 'christmasdecor, xmas, merrychristmas, christmastime, love, winter, santaclaus, christmaslights, snow, Christmas, christmas stocking', 1, 1, NULL, NULL),
(633, 'Static_Wallpapers/Christmas/wallpaper/Christmas_bcIMLkhQouWWAJKhA5CdcagFz4kH4I.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_bcIMLkhQouWWAJKhA5CdcagFz4kH4I.webp', 'Static_Wallpapers/Christmas/blur/Christmas_bcIMLkhQouWWAJKhA5CdcagFz4kH4I.png', 24, 1, 11, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, december, christmastree, Christmas, Christmas Balls, light', 1, 1, NULL, NULL),
(634, 'Static_Wallpapers/Christmas/wallpaper/Christmas_RoefsnAdZAZ1llGLE5EjRAxOWzhZeB.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_RoefsnAdZAZ1llGLE5EjRAxOWzhZeB.webp', 'Static_Wallpapers/Christmas/blur/Christmas_RoefsnAdZAZ1llGLE5EjRAxOWzhZeB.png', 24, 3, 10, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, snow, december, Christmas, Snow man, Umbrella, Lamp', 1, 1, NULL, NULL),
(635, 'Static_Wallpapers/Christmas/wallpaper/Christmas_JPwFGLFljdUY84nJelXVrlyfFwNcES.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_JPwFGLFljdUY84nJelXVrlyfFwNcES.webp', 'Static_Wallpapers/Christmas/blur/Christmas_JPwFGLFljdUY84nJelXVrlyfFwNcES.png', 24, 0, 20, 0, 1, 'christmasdecor, xmas, merrychristmas, christmastime, winter, holidays, christmaslights, snow, Christmas, christmas fairy lights, mountain, tree', 1, 1, NULL, NULL),
(636, 'Static_Wallpapers/Christmas/wallpaper/Christmas_CmdkvtIEWlWI9bekaZdQdd4tdcEwov.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_CmdkvtIEWlWI9bekaZdQdd4tdcEwov.webp', 'Static_Wallpapers/Christmas/blur/Christmas_CmdkvtIEWlWI9bekaZdQdd4tdcEwov.png', 24, 1, 1, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, christmastime, love, winter, holidays, santaclaus, christmaslights, snow, cat, Christmas, Christmas', 1, 1, NULL, NULL),
(637, 'Static_Wallpapers/Christmas/wallpaper/Christmas_rt4KsiBPlBkTDqLf6knwEMEvuNO1UI.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_rt4KsiBPlBkTDqLf6knwEMEvuNO1UI.webp', 'Static_Wallpapers/Christmas/blur/Christmas_rt4KsiBPlBkTDqLf6knwEMEvuNO1UI.png', 24, 0, 316, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, santa, snow, december, christmasiscoming, santaclaus, christmastree, Christmas, christmas ornaments', 1, 1, NULL, NULL),
(638, 'Static_Wallpapers/Christmas/wallpaper/Christmas_l0w3t0fE9ViiDkFo7HyyD8uj7ubzgt.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_l0w3t0fE9ViiDkFo7HyyD8uj7ubzgt.webp', 'Static_Wallpapers/Christmas/blur/Christmas_l0w3t0fE9ViiDkFo7HyyD8uj7ubzgt.png', 24, 0, 22, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, christmastime, love, winter, holidays, santaclaus, christmaslights, snow, cat, Christmas, Christmas', 1, 1, NULL, NULL),
(639, 'Static_Wallpapers/Christmas/wallpaper/Christmas_YTCH9wNhyElJg6wKwu3VKZlNsiMUvU.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_YTCH9wNhyElJg6wKwu3VKZlNsiMUvU.webp', 'Static_Wallpapers/Christmas/blur/Christmas_YTCH9wNhyElJg6wKwu3VKZlNsiMUvU.png', 24, 0, 9, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, christmastime, love, winter, holidays, santaclaus, christmaslights, snow, cat, Christmas, Christmas', 1, 1, NULL, NULL),
(640, 'Static_Wallpapers/Christmas/wallpaper/Christmas_PUYHL8m6QOMTSZGIlW57mST8b44mBn.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_PUYHL8m6QOMTSZGIlW57mST8b44mBn.webp', 'Static_Wallpapers/Christmas/blur/Christmas_PUYHL8m6QOMTSZGIlW57mST8b44mBn.png', 24, 0, 36, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, christmastime, love, winter, holidays, santaclaus, christmaslights, snow, cat, Christmas, Santa Hat, Cheetah', 1, 1, NULL, NULL),
(641, 'Static_Wallpapers/Christmas/wallpaper/Christmas_Z95qzs6us73dby4TTEQ5QCqFR3pvHW.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_Z95qzs6us73dby4TTEQ5QCqFR3pvHW.webp', 'Static_Wallpapers/Christmas/blur/Christmas_Z95qzs6us73dby4TTEQ5QCqFR3pvHW.png', 24, 5, 5, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, christmastime, love, winter, holidays, santaclaus, christmaslights, snow, cat, Christmas, christmas ornaments', 1, 1, NULL, NULL),
(642, 'Static_Wallpapers/Christmas/wallpaper/Christmas_JZS7aj41YOEVCblr4zuhzD3PC2vlUj.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_JZS7aj41YOEVCblr4zuhzD3PC2vlUj.webp', 'Static_Wallpapers/Christmas/blur/Christmas_JZS7aj41YOEVCblr4zuhzD3PC2vlUj.png', 24, 9, 20, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, santa, snow, december, christmasiscoming, santaclaus, christmastree, Christmas, Christmas', 1, 1, NULL, NULL),
(643, 'Static_Wallpapers/Christmas/wallpaper/Christmas_wJl3qoXmejtHLZtFpaxguNi5vQM591.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_wJl3qoXmejtHLZtFpaxguNi5vQM591.webp', 'Static_Wallpapers/Christmas/blur/Christmas_wJl3qoXmejtHLZtFpaxguNi5vQM591.png', 24, 0, 3, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, santa, snow, december, christmasiscoming, santaclaus, christmastree, Christmas, christmas ornaments', 1, 1, NULL, NULL),
(644, 'Static_Wallpapers/Christmas/wallpaper/Christmas_voEvDJ2KF7zVaaDkFxUdXCo17rvqNW.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_voEvDJ2KF7zVaaDkFxUdXCo17rvqNW.webp', 'Static_Wallpapers/Christmas/blur/Christmas_voEvDJ2KF7zVaaDkFxUdXCo17rvqNW.png', 24, 0, 19, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, christmastime, love, winter, holidays, santaclaus, christmaslights, snow, cat, Christmas, Christmas', 1, 1, NULL, NULL),
(645, 'Static_Wallpapers/Christmas/wallpaper/Christmas_ARpFFtyw4um2QlIKu6akdR0yq7xk1h.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_ARpFFtyw4um2QlIKu6akdR0yq7xk1h.webp', 'Static_Wallpapers/Christmas/blur/Christmas_ARpFFtyw4um2QlIKu6akdR0yq7xk1h.png', 24, 1, 4, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, christmastime, love, winter, holidays, santaclaus, christmaslights, snow, cat, Christmas, christmas ornaments, candy cane, reindeer', 1, 1, NULL, NULL),
(646, 'Static_Wallpapers/Christmas/wallpaper/Christmas_8vRsemz91yUrKpsvC9vZVigEUnexNp.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_8vRsemz91yUrKpsvC9vZVigEUnexNp.webp', 'Static_Wallpapers/Christmas/blur/Christmas_8vRsemz91yUrKpsvC9vZVigEUnexNp.png', 24, 4, 3, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, christmastime, winter, holidays, christmaslights, snow, Christmas, Colorfully, Snowman, Star, light', 1, 1, NULL, NULL),
(647, 'Static_Wallpapers/Christmas/wallpaper/Christmas_OhcubfSBG0U6PIfZugJg6f6QzxhXSx.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_OhcubfSBG0U6PIfZugJg6f6QzxhXSx.webp', 'Static_Wallpapers/Christmas/blur/Christmas_OhcubfSBG0U6PIfZugJg6f6QzxhXSx.png', 24, 2, 18, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, snow, christmastree, Christmas, christmas ornaments, Wreath', 1, 1, NULL, NULL),
(648, 'Static_Wallpapers/Christmas/wallpaper/Christmas_LAgEuBn7eLEq7osuN6JULwgMjxnQOM.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_LAgEuBn7eLEq7osuN6JULwgMjxnQOM.webp', 'Static_Wallpapers/Christmas/blur/Christmas_LAgEuBn7eLEq7osuN6JULwgMjxnQOM.png', 24, 0, 8, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, christmastime, love, winter, holidays, santaclaus, christmaslights, snow, Christmas, christmas fairy lights, Star', 1, 1, NULL, NULL),
(649, 'Static_Wallpapers/Christmas/wallpaper/Christmas_ffL3gXGPvz9p8okaytTOSA3KJ1cZqG.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_ffL3gXGPvz9p8okaytTOSA3KJ1cZqG.webp', 'Static_Wallpapers/Christmas/blur/Christmas_ffL3gXGPvz9p8okaytTOSA3KJ1cZqG.png', 24, 0, 3, 0, 1, 'christmasspirit, merryxmas, santaclaus, Christmas, Snow man, snow, lamp, dark', 1, 1, NULL, NULL),
(650, 'Static_Wallpapers/Christmas/wallpaper/Christmas_byNUJKMkAicqWH48dkTKaBfqvMCUr8.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_byNUJKMkAicqWH48dkTKaBfqvMCUr8.webp', 'Static_Wallpapers/Christmas/blur/Christmas_byNUJKMkAicqWH48dkTKaBfqvMCUr8.png', 24, 0, 28, 0, 1, 'christmasdecorations, merryxmas, Christmas, reindeer, Snow', 1, 1, NULL, NULL),
(651, 'Static_Wallpapers/Christmas/wallpaper/Christmas_y7ItdC0YM71HYbBUQRTK5KqqYzBYjP.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_y7ItdC0YM71HYbBUQRTK5KqqYzBYjP.webp', 'Static_Wallpapers/Christmas/blur/Christmas_y7ItdC0YM71HYbBUQRTK5KqqYzBYjP.png', 24, 0, 9, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, snow, december, santaclaus, christmastree, Christmas, christmas fairy lights, Hut, tree', 1, 1, NULL, NULL),
(652, 'Static_Wallpapers/Christmas/wallpaper/Christmas_o2zqJMRBylWqZRpqmaOwjINVOE7r5G.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_o2zqJMRBylWqZRpqmaOwjINVOE7r5G.webp', 'Static_Wallpapers/Christmas/blur/Christmas_o2zqJMRBylWqZRpqmaOwjINVOE7r5G.png', 24, 0, 14, 0, 1, 'christmasdecorations, merryxmas, Christmas, Candle, Fire, christmas ornaments', 1, 1, NULL, NULL),
(653, 'Static_Wallpapers/Christmas/wallpaper/Christmas_5IbNXzHjw9qOy3dBlpEQ1xGPwx2Tlw.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_5IbNXzHjw9qOy3dBlpEQ1xGPwx2Tlw.webp', 'Static_Wallpapers/Christmas/blur/Christmas_5IbNXzHjw9qOy3dBlpEQ1xGPwx2Tlw.png', 24, 2, 7, 0, 1, 'christmasdecorations, merryxmas, Christmas, Winter, Bell', 1, 1, NULL, NULL),
(654, 'Static_Wallpapers/Christmas/wallpaper/Christmas_6WxsYI5Hc2cjDWihkNWsv2thkjK4IS.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_6WxsYI5Hc2cjDWihkNWsv2thkjK4IS.webp', 'Static_Wallpapers/Christmas/blur/Christmas_6WxsYI5Hc2cjDWihkNWsv2thkjK4IS.png', 24, 0, 7, 0, 1, 'merrychristmas, xmas, christmasdecorations, christmastree, Christmas, Bell, christmas ornaments', 1, 1, NULL, NULL),
(655, 'Static_Wallpapers/Christmas/wallpaper/Christmas_KRXthVILjrVtG6uWiKPNONtL6GhnVy.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_KRXthVILjrVtG6uWiKPNONtL6GhnVy.webp', 'Static_Wallpapers/Christmas/blur/Christmas_KRXthVILjrVtG6uWiKPNONtL6GhnVy.png', 24, 2, 12, 0, 1, 'christmasdecorations, merryxmas, Christmas, christmas ornaments, Gift Box, Tree, Snow, Stars', 1, 1, NULL, NULL),
(656, 'Static_Wallpapers/Christmas/wallpaper/Christmas_NypW5Cf82ToaNNT9EQJKg0QN2t66L5.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_NypW5Cf82ToaNNT9EQJKg0QN2t66L5.webp', 'Static_Wallpapers/Christmas/blur/Christmas_NypW5Cf82ToaNNT9EQJKg0QN2t66L5.png', 24, 0, 55, 0, 1, 'Winter, Snow, Train, Smoke, Dark', 1, 1, NULL, NULL),
(657, 'Static_Wallpapers/Christmas/wallpaper/Christmas_sGITU67OgdTY3OsccalBibYxQKrg5q.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_sGITU67OgdTY3OsccalBibYxQKrg5q.webp', 'Static_Wallpapers/Christmas/blur/Christmas_sGITU67OgdTY3OsccalBibYxQKrg5q.png', 24, 0, 29, 0, 1, 'christmasdecorations, christmasparty, merryxmas, holidayseason, Christmas, christmas ornaments, Home, Hut, Tree, Snow, Moon, Sky, Star', 1, 1, NULL, NULL),
(658, 'Static_Wallpapers/Christmas/wallpaper/Christmas_mlSuieFGCqlcrgjt0YUB008ao4utTa.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_mlSuieFGCqlcrgjt0YUB008ao4utTa.webp', 'Static_Wallpapers/Christmas/blur/Christmas_mlSuieFGCqlcrgjt0YUB008ao4utTa.png', 24, 0, 14, 0, 1, 'christmasdecorations, merryxmas, holidayseason, Christmas, Cup, Home, Snow', 1, 1, NULL, NULL),
(659, 'Static_Wallpapers/Christmas/wallpaper/Christmas_HeB1ZtDIMebd6FN5mK4DCNYdSoebX0.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_HeB1ZtDIMebd6FN5mK4DCNYdSoebX0.webp', 'Static_Wallpapers/Christmas/blur/Christmas_HeB1ZtDIMebd6FN5mK4DCNYdSoebX0.png', 24, 2, 20, 0, 1, 'christmasdecorations, merryxmas, Christmas, christmas ornaments, Hut, Tree, Mountain, Fog, Light', 1, 1, NULL, NULL),
(660, 'Static_Wallpapers/Christmas/wallpaper/Christmas_xxQBu1dhF6NJjlm7xH8eAVsQnfPXTI.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_xxQBu1dhF6NJjlm7xH8eAVsQnfPXTI.webp', 'Static_Wallpapers/Christmas/blur/Christmas_xxQBu1dhF6NJjlm7xH8eAVsQnfPXTI.png', 24, 0, 308, 0, 1, 'christmas, christmasdecor, xmas, merrychristmas, christmaslights, Christmas, Colorfully, reindeer', 1, 1, NULL, NULL),
(661, 'Static_Wallpapers/Christmas/wallpaper/Christmas_8hRktmEzoaUKgJ8qPjq82UAQDY191d.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_8hRktmEzoaUKgJ8qPjq82UAQDY191d.webp', 'Static_Wallpapers/Christmas/blur/Christmas_8hRktmEzoaUKgJ8qPjq82UAQDY191d.png', 24, 0, 17, 0, 1, 'christmasdecorations, merryxmas, Christmas, christmas ornaments, christmas fairy lights, Colorful, light', 1, 1, NULL, NULL),
(662, 'Static_Wallpapers/Christmas/wallpaper/Christmas_vBHoKsSEOc2kxEhopFTpMk3Y6QsVyd.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_vBHoKsSEOc2kxEhopFTpMk3Y6QsVyd.webp', 'Static_Wallpapers/Christmas/blur/Christmas_vBHoKsSEOc2kxEhopFTpMk3Y6QsVyd.png', 24, 0, 13, 0, 1, 'christmasdecorations, merryxmas, Christmas, Moon, Snow, Hut, Tree, Mountain, Star', 1, 1, NULL, NULL),
(663, 'Static_Wallpapers/Christmas/wallpaper/Christmas_j01zl1XW3c3JC4tQ6F1VSL4ajhZEkX.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_j01zl1XW3c3JC4tQ6F1VSL4ajhZEkX.webp', 'Static_Wallpapers/Christmas/blur/Christmas_j01zl1XW3c3JC4tQ6F1VSL4ajhZEkX.png', 24, 0, 37, 0, 1, 'christmasdecorations, merryxmas, christmasmood, Christmas, Mouse, Rat, Gift Box, Snow', 1, 1, NULL, NULL),
(664, 'Static_Wallpapers/Christmas/wallpaper/Christmas_ByNFqDBjg3SyhoCWQgC6eclgjvKtnU.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_ByNFqDBjg3SyhoCWQgC6eclgjvKtnU.webp', 'Static_Wallpapers/Christmas/blur/Christmas_ByNFqDBjg3SyhoCWQgC6eclgjvKtnU.png', 24, 1, 1, 0, 1, 'christmasdecorations, christmasparty, merryxmas, Christmas, Gift Box, Tree, Santa cap, stars, dark, christmas ornaments, Snow, xmas tree', 1, 1, NULL, NULL),
(665, 'Static_Wallpapers/Christmas/wallpaper/Christmas_fngY9C5ath23dlxB6cGlfMLvXbKgQV.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_fngY9C5ath23dlxB6cGlfMLvXbKgQV.webp', 'Static_Wallpapers/Christmas/blur/Christmas_fngY9C5ath23dlxB6cGlfMLvXbKgQV.png', 24, 2, 2, 0, 1, 'christmasdecorations, merryxmas, Christmas, xmas Tree, christmas ornaments, Tree, Gift Box, Snow, Dark, Stars, christmas Ball', 1, 1, NULL, NULL),
(666, 'Static_Wallpapers/Christmas/wallpaper/Christmas_2x45NSP4Wzc2G5kgKbU41UwX2HGTeJ.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_2x45NSP4Wzc2G5kgKbU41UwX2HGTeJ.webp', 'Static_Wallpapers/Christmas/blur/Christmas_2x45NSP4Wzc2G5kgKbU41UwX2HGTeJ.png', 24, 5, 24, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, snow, santaclaus, Christmas, Candle, christmas ornaments, Flame, Holly', 1, 1, NULL, NULL),
(667, 'Static_Wallpapers/Christmas/wallpaper/Christmas_W6CtB7Ibdz2gVuaoYO4nNSShsMLoLu.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_W6CtB7Ibdz2gVuaoYO4nNSShsMLoLu.webp', 'Static_Wallpapers/Christmas/blur/Christmas_W6CtB7Ibdz2gVuaoYO4nNSShsMLoLu.png', 24, 0, 15, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, snow, december, christmastree, Christmas, Hut, Light, Tree, christmas fairy lights', 1, 1, NULL, NULL),
(668, 'Static_Wallpapers/Christmas/wallpaper/Christmas_P3m8rK0BP02gE1BvX1pejT9yetkwPd.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_P3m8rK0BP02gE1BvX1pejT9yetkwPd.webp', 'Static_Wallpapers/Christmas/blur/Christmas_P3m8rK0BP02gE1BvX1pejT9yetkwPd.png', 24, 1, 14, 0, 1, 'snow, cold, Christmas, santaclaus, Colorfully, christmas ornaments, Red, Green', 1, 1, NULL, NULL),
(669, 'Static_Wallpapers/Christmas/wallpaper/Christmas_FHKZaCZ0MxPSDjqt6dygIZZ5UnfZKe.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_FHKZaCZ0MxPSDjqt6dygIZZ5UnfZKe.webp', 'Static_Wallpapers/Christmas/blur/Christmas_FHKZaCZ0MxPSDjqt6dygIZZ5UnfZKe.png', 24, 1, 2, 0, 1, 'christmasdecorations, christmasparty, merryxmas, Christmas, christmas ornaments, Star, Tree, Gift Box, Wreath, Snow', 1, 1, NULL, NULL),
(670, 'Static_Wallpapers/Christmas/wallpaper/Christmas_9cw3RvTEP8lXhKFu7L0aqXrZPFvE0u.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_9cw3RvTEP8lXhKFu7L0aqXrZPFvE0u.webp', 'Static_Wallpapers/Christmas/blur/Christmas_9cw3RvTEP8lXhKFu7L0aqXrZPFvE0u.png', 24, 3, 2, 0, 1, 'merrychristmas, xmas, christmasdecorations, snow, december, christmastree, Christmas, christmas ornaments, Jeep, Hut', 1, 1, NULL, NULL),
(671, 'Static_Wallpapers/Christmas/wallpaper/Christmas_RoYsix6Y4AeitakD1MYDwzCGPI6yQr.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_RoYsix6Y4AeitakD1MYDwzCGPI6yQr.webp', 'Static_Wallpapers/Christmas/blur/Christmas_RoYsix6Y4AeitakD1MYDwzCGPI6yQr.png', 24, 0, 5, 0, 1, 'christmasdecorations, merryxmas, Christmas, Gift Box, Neon, Colorful', 1, 1, NULL, NULL),
(672, 'Static_Wallpapers/Christmas/wallpaper/Christmas_h5N3stiNtaCfkHbrnwmXrJIyUwgSZI.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_h5N3stiNtaCfkHbrnwmXrJIyUwgSZI.webp', 'Static_Wallpapers/Christmas/blur/Christmas_h5N3stiNtaCfkHbrnwmXrJIyUwgSZI.png', 24, 1, 70, 0, 1, 'merrychristmas, xmas, christmasdecorations, snow, christmastree, Christmas, christmas ornaments, Wing, Feathers, Doll', 1, 1, NULL, NULL),
(673, 'Static_Wallpapers/Christmas/wallpaper/Christmas_CrbjvKbYs4Mo0krDrENnL7OE42PBWF.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_CrbjvKbYs4Mo0krDrENnL7OE42PBWF.webp', 'Static_Wallpapers/Christmas/blur/Christmas_CrbjvKbYs4Mo0krDrENnL7OE42PBWF.png', 24, 0, 15, 0, 1, 'christmasparty, merryxmas, Christmas, Snow, Tree, Water, Fog, Winter', 1, 1, NULL, NULL),
(674, 'Static_Wallpapers/Christmas/wallpaper/Christmas_L9Pe5Ztp9gBx6rmvch1I9Q18emssTP.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_L9Pe5Ztp9gBx6rmvch1I9Q18emssTP.webp', 'Static_Wallpapers/Christmas/blur/Christmas_L9Pe5Ztp9gBx6rmvch1I9Q18emssTP.png', 24, 2, 7, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, snow, Christmas, christmas ornaments, Tree, xmas tree, Winter, Moon, Sky, Star, Lamp', 1, 1, NULL, NULL),
(675, 'Static_Wallpapers/Christmas/wallpaper/Christmas_AeB2OJiPMkO7Q4Ojc4RqGsRTYEotUE.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_AeB2OJiPMkO7Q4Ojc4RqGsRTYEotUE.webp', 'Static_Wallpapers/Christmas/blur/Christmas_AeB2OJiPMkO7Q4Ojc4RqGsRTYEotUE.png', 24, 0, 2, 0, 1, 'merrychristmas, xmas, christmasdecorations, snow, Christmas, Colorful, xmastree, tree, holly, Stars, Red, Green, White, Sky', 1, 1, NULL, NULL),
(676, 'Static_Wallpapers/Christmas/wallpaper/Christmas_EY5tHDjlKVdqEChadPl3IyRfud5LRW.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_EY5tHDjlKVdqEChadPl3IyRfud5LRW.webp', 'Static_Wallpapers/Christmas/blur/Christmas_EY5tHDjlKVdqEChadPl3IyRfud5LRW.png', 24, 1, 29, 0, 1, 'christmasdecorations, merryxmas, holidayseason, Christmas, Neon, Snowman, Dark', 1, 1, NULL, NULL),
(677, 'Static_Wallpapers/Christmas/wallpaper/Christmas_s7CYMpXRKoOYFADGL0JS0IYw59tMW7.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_s7CYMpXRKoOYFADGL0JS0IYw59tMW7.webp', 'Static_Wallpapers/Christmas/blur/Christmas_s7CYMpXRKoOYFADGL0JS0IYw59tMW7.png', 24, 0, 3, 0, 1, 'christmasdecorations, merryxmas, Christmas, Stars, Ball, christmas ornaments, xmastree, Colorful, tree', 1, 1, NULL, NULL),
(678, 'Static_Wallpapers/Christmas/wallpaper/Christmas_zQd3MMLvSgkXCOS31yh2YJ91OnVXrd.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_zQd3MMLvSgkXCOS31yh2YJ91OnVXrd.webp', 'Static_Wallpapers/Christmas/blur/Christmas_zQd3MMLvSgkXCOS31yh2YJ91OnVXrd.png', 24, 1, 3, 0, 1, 'merrychristmas, xmas, christmasdecorations, snow, Christmas, Snowman, Stars, Tree, xmastree, Winter, Hut, christmas ornaments', 1, 1, NULL, NULL),
(679, 'Static_Wallpapers/Christmas/wallpaper/Christmas_duy9Yo22KDsnEMrC85t8P4g5DUJOFy.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_duy9Yo22KDsnEMrC85t8P4g5DUJOFy.webp', 'Static_Wallpapers/Christmas/blur/Christmas_duy9Yo22KDsnEMrC85t8P4g5DUJOFy.png', 24, 2, 9, 0, 1, 'christmasdecorations, merryxmas, Christmas, christmas ornaments, Hut, Snow, xmastree, Mountain, Sky', 1, 1, NULL, NULL),
(680, 'Static_Wallpapers/Christmas/wallpaper/Christmas_TT9AhyJNGJabUX2laUgxGCnJJBHjjo.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_TT9AhyJNGJabUX2laUgxGCnJJBHjjo.webp', 'Static_Wallpapers/Christmas/blur/Christmas_TT9AhyJNGJabUX2laUgxGCnJJBHjjo.png', 24, 2, 7, 0, 1, 'christmasdecorations, merryxmas, Christmas, christmas ornaments, xmastree, Dark, reindeer, Snow', 1, 1, NULL, NULL),
(681, 'Static_Wallpapers/Christmas/wallpaper/Christmas_0HhReaeeFVaWKCjQ8boJjmYHpMgcPP.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_0HhReaeeFVaWKCjQ8boJjmYHpMgcPP.webp', 'Static_Wallpapers/Christmas/blur/Christmas_0HhReaeeFVaWKCjQ8boJjmYHpMgcPP.png', 24, 1, 6, 0, 1, 'christmasdecorations, merryxmas, Christmas, Wreath, Snow, Hut, Stars, Light, Candle, Winter', 1, 1, NULL, NULL);
INSERT INTO `static_wallpapers` (`id`, `img_path`, `thumb_path`, `blur_path`, `cat_id`, `likes`, `downloads`, `unlike`, `set_wp`, `hash_tags`, `wp_show`, `featured`, `created_at`, `updated_at`) VALUES
(682, 'Static_Wallpapers/Christmas/wallpaper/Christmas_isPBM1K1zHy0Zf103r5HCxlAgpUzvy.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_isPBM1K1zHy0Zf103r5HCxlAgpUzvy.webp', 'Static_Wallpapers/Christmas/blur/Christmas_isPBM1K1zHy0Zf103r5HCxlAgpUzvy.png', 24, 1, 2, 0, 1, 'merrychristmas, xmas, christmasdecorations, snow, christmastree, Christmas', 1, 1, NULL, NULL),
(683, 'Static_Wallpapers/Christmas/wallpaper/Christmas_Nrmhc3eQnCOD9VY62ed2jRpHK7868q.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_Nrmhc3eQnCOD9VY62ed2jRpHK7868q.webp', 'Static_Wallpapers/Christmas/blur/Christmas_Nrmhc3eQnCOD9VY62ed2jRpHK7868q.png', 24, 3, 4, 0, 1, 'christmasdecorations, merryxmas, Christmas, Snow, xmastree', 1, 1, NULL, NULL),
(684, 'Static_Wallpapers/Christmas/wallpaper/Christmas_UK7hZLwWVlZ41yHBHukxMNJ9xpSJaV.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_UK7hZLwWVlZ41yHBHukxMNJ9xpSJaV.webp', 'Static_Wallpapers/Christmas/blur/Christmas_UK7hZLwWVlZ41yHBHukxMNJ9xpSJaV.png', 24, 1, 19, 0, 1, 'merrychristmas, xmas, christmastime, christmasdecorations, snow, Christmas, bear, christmas ornaments, xmas tree, light', 1, 1, NULL, NULL),
(685, 'Static_Wallpapers/Christmas/wallpaper/Christmas_Ul9nN7HiQS6cVKqPEGESd59vffIdLQ.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_Ul9nN7HiQS6cVKqPEGESd59vffIdLQ.webp', 'Static_Wallpapers/Christmas/blur/Christmas_Ul9nN7HiQS6cVKqPEGESd59vffIdLQ.png', 24, 5, 6, 0, 1, 'merrychristmas, xmas, snow, christmastree, Christmas, hut, Tree, Winter', 1, 1, NULL, NULL),
(686, 'Static_Wallpapers/Christmas/wallpaper/Christmas_WqHnNZlty6uaOUjWTkT2ysuBuSwGdp.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_WqHnNZlty6uaOUjWTkT2ysuBuSwGdp.webp', 'Static_Wallpapers/Christmas/blur/Christmas_WqHnNZlty6uaOUjWTkT2ysuBuSwGdp.png', 24, 19, 4, 0, 1, 'christmasdecorations, merryxmas, Christmas, Dark, xmas tree, Hut, Star', 1, 1, NULL, NULL),
(687, 'Static_Wallpapers/Christmas/wallpaper/Christmas_MFhGoEx2U9AoGVM19nKZHbPy4pPZKb.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_MFhGoEx2U9AoGVM19nKZHbPy4pPZKb.webp', 'Static_Wallpapers/Christmas/blur/Christmas_MFhGoEx2U9AoGVM19nKZHbPy4pPZKb.png', 24, 2, 8, 0, 1, 'christmasdecorations, merryxmas, Christmas, Cat, Santa Cap, Fairy Light, ornaments, Animals', 1, 1, NULL, NULL),
(688, 'Static_Wallpapers/Christmas/wallpaper/Christmas_ksyfIgCKhGsTCvcGL3XD3E2rhCSh6T.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_ksyfIgCKhGsTCvcGL3XD3E2rhCSh6T.webp', 'Static_Wallpapers/Christmas/blur/Christmas_ksyfIgCKhGsTCvcGL3XD3E2rhCSh6T.png', 24, 2, 21, 0, 1, 'christmasdecorations, merryxmas, Christmas, Hut, Snow, Fairy light, xmas tree, Winter', 1, 1, NULL, NULL),
(689, 'Static_Wallpapers/Christmas/wallpaper/Christmas_VyWyczptLe4tZRlVldh9UvRRym3SU2.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_VyWyczptLe4tZRlVldh9UvRRym3SU2.webp', 'Static_Wallpapers/Christmas/blur/Christmas_VyWyczptLe4tZRlVldh9UvRRym3SU2.png', 24, 13, 12, 0, 1, 'merryxmas, Christmas, Snow, Hut, xmastree, Winter', 1, 1, NULL, NULL),
(690, 'Static_Wallpapers/Christmas/wallpaper/Christmas_oeSVgGpe8lda1xh9bqiR73U1kc3ww5.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_oeSVgGpe8lda1xh9bqiR73U1kc3ww5.webp', 'Static_Wallpapers/Christmas/blur/Christmas_oeSVgGpe8lda1xh9bqiR73U1kc3ww5.png', 24, 0, 18, 0, 1, 'christmasdecorations, merryxmas, Christmas, Cup, Ice cream, Hut, xmas tree, Snow, Colorful, Winter', 1, 1, NULL, NULL),
(691, 'Static_Wallpapers/Christmas/wallpaper/Christmas_8khFf67VcAbwsQOr10cwcx63K1b6ks.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_8khFf67VcAbwsQOr10cwcx63K1b6ks.webp', 'Static_Wallpapers/Christmas/blur/Christmas_8khFf67VcAbwsQOr10cwcx63K1b6ks.png', 24, 2, 46, 0, 1, 'merrychristmas, xmas, Christmas, Moon, Sky, Star, Snow, Tree, xmastree, dark, Winter', 1, 1, NULL, NULL),
(692, 'Static_Wallpapers/Christmas/wallpaper/Christmas_qGmiGs3c6VFkv9jB3iOt7ajXaQIDfs.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_qGmiGs3c6VFkv9jB3iOt7ajXaQIDfs.webp', 'Static_Wallpapers/Christmas/blur/Christmas_qGmiGs3c6VFkv9jB3iOt7ajXaQIDfs.png', 24, 0, 10, 0, 1, 'merryxmas, Christmas, Hut, Stars, Sky, tree, xmastree, Snow, light', 1, 1, NULL, NULL),
(693, 'Static_Wallpapers/Christmas/wallpaper/Christmas_pZoC486uf4L20bJyWxCpvRN1mozKUS.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_pZoC486uf4L20bJyWxCpvRN1mozKUS.webp', 'Static_Wallpapers/Christmas/blur/Christmas_pZoC486uf4L20bJyWxCpvRN1mozKUS.png', 24, 0, 18, 0, 1, 'merrychristmas, xmas, christmasdecorations, christmastree, Christmas, ornaments, xmastree, tree', 1, 1, NULL, NULL),
(694, 'Static_Wallpapers/Christmas/wallpaper/Christmas_5k29QBKLX4nPTJZAaC8nkfnXnj1ys5.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_5k29QBKLX4nPTJZAaC8nkfnXnj1ys5.webp', 'Static_Wallpapers/Christmas/blur/Christmas_5k29QBKLX4nPTJZAaC8nkfnXnj1ys5.png', 24, 1, 5, 0, 1, 'merrychristmas, xmas, christmasdecorations, Christmas, christmas ornaments, Candle', 1, 1, NULL, NULL),
(695, 'Static_Wallpapers/Christmas/wallpaper/Christmas_WC3Nhs4o6y6K8MiDZ83OaAyW0PTcvt.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_WC3Nhs4o6y6K8MiDZ83OaAyW0PTcvt.webp', 'Static_Wallpapers/Christmas/blur/Christmas_WC3Nhs4o6y6K8MiDZ83OaAyW0PTcvt.png', 24, 1, 12, 0, 1, 'merrychristmas, xmas, christmasdecorations, Christmas, christmas ornaments, Holly', 1, 1, NULL, NULL),
(696, 'Static_Wallpapers/Christmas/wallpaper/Christmas_eW7N1oM7VbOZRrWEyb68Gxd0V8iGY3.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_eW7N1oM7VbOZRrWEyb68Gxd0V8iGY3.webp', 'Static_Wallpapers/Christmas/blur/Christmas_eW7N1oM7VbOZRrWEyb68Gxd0V8iGY3.png', 24, 0, 5, 0, 1, 'merrychristmas, xmas, christmasdecorations, snow, Christmas, christmas ornaments, Hut, Winter', 1, 1, NULL, NULL),
(697, 'Static_Wallpapers/Christmas/wallpaper/Christmas_bv59wD1QeAaZsFtr2rMp6ehaH1SIiM.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_bv59wD1QeAaZsFtr2rMp6ehaH1SIiM.webp', 'Static_Wallpapers/Christmas/blur/Christmas_bv59wD1QeAaZsFtr2rMp6ehaH1SIiM.png', 24, 2, 6, 0, 1, 'christmas, xmas, snow, Cake, Candle, Tree', 1, 1, NULL, NULL),
(698, 'Static_Wallpapers/Christmas/wallpaper/Christmas_DHWOsdMpRSzne5jIKxjsQOehqFJx7E.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_DHWOsdMpRSzne5jIKxjsQOehqFJx7E.webp', 'Static_Wallpapers/Christmas/blur/Christmas_DHWOsdMpRSzne5jIKxjsQOehqFJx7E.png', 24, 1, 4, 0, 1, 'merrychristmas, xmas, christmasdecorations, Christmas, christmas ornaments, Snow, Train', 1, 1, NULL, NULL),
(699, 'Static_Wallpapers/Christmas/wallpaper/Christmas_UUnU2VQfGLkNiXxvHerLpqRMdSmMZe.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_UUnU2VQfGLkNiXxvHerLpqRMdSmMZe.webp', 'Static_Wallpapers/Christmas/blur/Christmas_UUnU2VQfGLkNiXxvHerLpqRMdSmMZe.png', 24, 0, 20, 0, 1, 'merrychristmas, xmas, christmasdecorations, snow, Christmas, christmas ornaments, xmastree, Horse, Holly', 1, 1, NULL, NULL),
(700, 'Static_Wallpapers/Christmas/wallpaper/Christmas_6N2HpKQvCK8t9EhgpCbZsKJ2lgJSgJ.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_6N2HpKQvCK8t9EhgpCbZsKJ2lgJSgJ.webp', 'Static_Wallpapers/Christmas/blur/Christmas_6N2HpKQvCK8t9EhgpCbZsKJ2lgJSgJ.png', 24, 5, 14, 0, 1, 'merrychristmas, xmas, christmasdecorations, snow, christmastree, Christmas, Gift Box, christmas ornaments, Colorful', 1, 1, NULL, NULL),
(701, 'Static_Wallpapers/Christmas/wallpaper/Christmas_cSOfEi882FhXrUs0CmPHEEbwTHSq2R.jpg', 'Static_Wallpapers/Christmas/thumb/Christmas_cSOfEi882FhXrUs0CmPHEEbwTHSq2R.webp', 'Static_Wallpapers/Christmas/blur/Christmas_cSOfEi882FhXrUs0CmPHEEbwTHSq2R.png', 24, 0, 7, 0, 1, 'christmasdecorations, merryxmas, Christmas, Gift Box, christmas ornaments, Dark, Holly, xmastree', 1, 1, NULL, NULL),
(702, 'Static_Wallpapers/New Year/wallpaper/New Year_WnjNO8oUkzfyF0IRWPJDh0KPG4H4dU.jpg', 'Static_Wallpapers/New Year/thumb/New Year_WnjNO8oUkzfyF0IRWPJDh0KPG4H4dU.webp', 'Static_Wallpapers/New Year/blur/New Year_WnjNO8oUkzfyF0IRWPJDh0KPG4H4dU.png', 25, 1, 19, 0, 1, 'new year, happy new year, 2024, new year eve, party, night, welcome, new year 2024, New Year', 0, 1, NULL, NULL),
(703, 'Static_Wallpapers/New Year/wallpaper/New Year_6Keifp5kziN2ysQZK30vGqNbd2WypO.jpg', 'Static_Wallpapers/New Year/thumb/New Year_6Keifp5kziN2ysQZK30vGqNbd2WypO.webp', 'Static_Wallpapers/New Year/blur/New Year_6Keifp5kziN2ysQZK30vGqNbd2WypO.png', 25, 0, 23, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, fireworks, enjoy, party, friends, New Year', 0, 1, NULL, NULL),
(704, 'Static_Wallpapers/New Year/wallpaper/New Year_Ab20TxhBtZxRzFltLuIORgau1LThGN.jpg', 'Static_Wallpapers/New Year/thumb/New Year_Ab20TxhBtZxRzFltLuIORgau1LThGN.webp', 'Static_Wallpapers/New Year/blur/New Year_Ab20TxhBtZxRzFltLuIORgau1LThGN.png', 25, 0, 31, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, New Year', 0, 1, NULL, NULL),
(705, 'Static_Wallpapers/New Year/wallpaper/New Year_k57V0WdCpGHJlV7sm9bpA7Kj4gvUGC.jpg', 'Static_Wallpapers/New Year/thumb/New Year_k57V0WdCpGHJlV7sm9bpA7Kj4gvUGC.webp', 'Static_Wallpapers/New Year/blur/New Year_k57V0WdCpGHJlV7sm9bpA7Kj4gvUGC.png', 25, 1, 3, 0, 1, 'new year, happy new year, new year 2024, 2024, new year eve, celebration, party, gift, New Year', 0, 1, NULL, NULL),
(706, 'Static_Wallpapers/New Year/wallpaper/New Year_gqlP9ubwnczsYJbItmpeoMjO74P1qQ.jpg', 'Static_Wallpapers/New Year/thumb/New Year_gqlP9ubwnczsYJbItmpeoMjO74P1qQ.webp', 'Static_Wallpapers/New Year/blur/New Year_gqlP9ubwnczsYJbItmpeoMjO74P1qQ.png', 25, 0, 10, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, New Year', 0, 1, NULL, NULL),
(707, 'Static_Wallpapers/New Year/wallpaper/New Year_DtOiYGjFwQaUrR4WKJ1CEEWWlzsRkF.jpg', 'Static_Wallpapers/New Year/thumb/New Year_DtOiYGjFwQaUrR4WKJ1CEEWWlzsRkF.webp', 'Static_Wallpapers/New Year/blur/New Year_DtOiYGjFwQaUrR4WKJ1CEEWWlzsRkF.png', 25, 0, 3, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, New Year', 0, 1, NULL, NULL),
(708, 'Static_Wallpapers/New Year/wallpaper/New Year_zMCHv7op65NuTd5HAUkgbJtGBxtwlb.jpg', 'Static_Wallpapers/New Year/thumb/New Year_zMCHv7op65NuTd5HAUkgbJtGBxtwlb.webp', 'Static_Wallpapers/New Year/blur/New Year_zMCHv7op65NuTd5HAUkgbJtGBxtwlb.png', 25, 0, 5, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, New Year', 0, 1, NULL, NULL),
(709, 'Static_Wallpapers/New Year/wallpaper/New Year_udigmxR0ZjMrDsA0QJbFX9oJoC7IGm.jpg', 'Static_Wallpapers/New Year/thumb/New Year_udigmxR0ZjMrDsA0QJbFX9oJoC7IGm.webp', 'Static_Wallpapers/New Year/blur/New Year_udigmxR0ZjMrDsA0QJbFX9oJoC7IGm.png', 25, 0, 7, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, New Year', 0, 1, NULL, NULL),
(710, 'Static_Wallpapers/New Year/wallpaper/New Year_5yqfTKHpjvF5SuzCqy0Uh6Dv4hEKrL.jpg', 'Static_Wallpapers/New Year/thumb/New Year_5yqfTKHpjvF5SuzCqy0Uh6Dv4hEKrL.webp', 'Static_Wallpapers/New Year/blur/New Year_5yqfTKHpjvF5SuzCqy0Uh6Dv4hEKrL.png', 25, 0, 13, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, New Year', 0, 1, NULL, NULL),
(711, 'Static_Wallpapers/New Year/wallpaper/New Year_XkMazacoMkAgxzkPmmpzfteEL3JhZs.jpg', 'Static_Wallpapers/New Year/thumb/New Year_XkMazacoMkAgxzkPmmpzfteEL3JhZs.webp', 'Static_Wallpapers/New Year/blur/New Year_XkMazacoMkAgxzkPmmpzfteEL3JhZs.png', 25, 0, 6, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, winter, 2024, party, fireworks, New Year', 0, 1, NULL, NULL),
(712, 'Static_Wallpapers/New Year/wallpaper/New Year_zFJ8EajVJjZMWkhOwYrP7BenayzGPL.jpg', 'Static_Wallpapers/New Year/thumb/New Year_zFJ8EajVJjZMWkhOwYrP7BenayzGPL.webp', 'Static_Wallpapers/New Year/blur/New Year_zFJ8EajVJjZMWkhOwYrP7BenayzGPL.png', 25, 0, 10, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, New Year', 0, 1, NULL, NULL),
(713, 'Static_Wallpapers/New Year/wallpaper/New Year_kR1cYgJvpAktMUDAZr9d5zysO8oYsl.jpg', 'Static_Wallpapers/New Year/thumb/New Year_kR1cYgJvpAktMUDAZr9d5zysO8oYsl.webp', 'Static_Wallpapers/New Year/blur/New Year_kR1cYgJvpAktMUDAZr9d5zysO8oYsl.png', 25, 0, 4, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, animated, gift, New Year', 0, 1, NULL, NULL),
(714, 'Static_Wallpapers/New Year/wallpaper/New Year_EDRsNs20qChwCIAcd0L6kBEQ3PC7vz.jpg', 'Static_Wallpapers/New Year/thumb/New Year_EDRsNs20qChwCIAcd0L6kBEQ3PC7vz.webp', 'Static_Wallpapers/New Year/blur/New Year_EDRsNs20qChwCIAcd0L6kBEQ3PC7vz.png', 25, 1, 4, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, winter, 2024, party, fireworks, New Year', 0, 1, NULL, NULL),
(715, 'Static_Wallpapers/New Year/wallpaper/New Year_IijVRfMVWxKuYWJv7gu9OGcFjlJiwj.jpg', 'Static_Wallpapers/New Year/thumb/New Year_IijVRfMVWxKuYWJv7gu9OGcFjlJiwj.webp', 'Static_Wallpapers/New Year/blur/New Year_IijVRfMVWxKuYWJv7gu9OGcFjlJiwj.png', 25, 0, 21, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, New Year', 0, 1, NULL, NULL),
(716, 'Static_Wallpapers/New Year/wallpaper/New Year_E3JWPKeaQx2R4FTVEl0zk5VmODWvms.jpg', 'Static_Wallpapers/New Year/thumb/New Year_E3JWPKeaQx2R4FTVEl0zk5VmODWvms.webp', 'Static_Wallpapers/New Year/blur/New Year_E3JWPKeaQx2R4FTVEl0zk5VmODWvms.png', 25, 0, 1, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, winter, 2024, party, fireworks, New Year', 0, 1, NULL, NULL),
(717, 'Static_Wallpapers/New Year/wallpaper/New Year_UJBbZZYIfRD1AaQqBJk8V3nmG1IT2e.jpg', 'Static_Wallpapers/New Year/thumb/New Year_UJBbZZYIfRD1AaQqBJk8V3nmG1IT2e.webp', 'Static_Wallpapers/New Year/blur/New Year_UJBbZZYIfRD1AaQqBJk8V3nmG1IT2e.png', 25, 0, 71, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, New Year', 0, 1, NULL, NULL),
(718, 'Static_Wallpapers/New Year/wallpaper/New Year_2TkQhEeuPz1vtdykD5UPisgR0MVcuM.jpg', 'Static_Wallpapers/New Year/thumb/New Year_2TkQhEeuPz1vtdykD5UPisgR0MVcuM.webp', 'Static_Wallpapers/New Year/blur/New Year_2TkQhEeuPz1vtdykD5UPisgR0MVcuM.png', 25, 0, 6, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, cake, New Year', 0, 1, NULL, NULL),
(719, 'Static_Wallpapers/New Year/wallpaper/New Year_2tVQ23LYq0c5EsPyTlJgiDK0FmKVsz.jpg', 'Static_Wallpapers/New Year/thumb/New Year_2tVQ23LYq0c5EsPyTlJgiDK0FmKVsz.webp', 'Static_Wallpapers/New Year/blur/New Year_2tVQ23LYq0c5EsPyTlJgiDK0FmKVsz.png', 25, 0, 277, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, clock, New Year', 0, 1, NULL, NULL),
(720, 'Static_Wallpapers/New Year/wallpaper/New Year_w3bvn4TWRKOw88DaLVMnpt8cBV27Ui.jpg', 'Static_Wallpapers/New Year/thumb/New Year_w3bvn4TWRKOw88DaLVMnpt8cBV27Ui.webp', 'Static_Wallpapers/New Year/blur/New Year_w3bvn4TWRKOw88DaLVMnpt8cBV27Ui.png', 25, 0, 9, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, New Year', 0, 1, NULL, NULL),
(721, 'Static_Wallpapers/New Year/wallpaper/New Year_H9hLACUBMzAcduetGWGxiBMmiFIB8T.jpg', 'Static_Wallpapers/New Year/thumb/New Year_H9hLACUBMzAcduetGWGxiBMmiFIB8T.webp', 'Static_Wallpapers/New Year/blur/New Year_H9hLACUBMzAcduetGWGxiBMmiFIB8T.png', 25, 0, 33, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, New Year', 0, 1, NULL, NULL),
(722, 'Static_Wallpapers/New Year/wallpaper/New Year_tWgSYdi0vKw0gpKomcuPKEwSqx7vjX.jpg', 'Static_Wallpapers/New Year/thumb/New Year_tWgSYdi0vKw0gpKomcuPKEwSqx7vjX.webp', 'Static_Wallpapers/New Year/blur/New Year_tWgSYdi0vKw0gpKomcuPKEwSqx7vjX.png', 25, 0, 40, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, candle, New Year', 0, 1, NULL, NULL),
(723, 'Static_Wallpapers/New Year/wallpaper/New Year_o4ZCSkBOSPHCzmKjry4USX3pldcVsG.jpg', 'Static_Wallpapers/New Year/thumb/New Year_o4ZCSkBOSPHCzmKjry4USX3pldcVsG.webp', 'Static_Wallpapers/New Year/blur/New Year_o4ZCSkBOSPHCzmKjry4USX3pldcVsG.png', 25, 0, 17, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, New Year', 0, 1, NULL, NULL),
(724, 'Static_Wallpapers/New Year/wallpaper/New Year_fJJrOg3ocowEXhGkpNNQiuUhO1WEWA.jpg', 'Static_Wallpapers/New Year/thumb/New Year_fJJrOg3ocowEXhGkpNNQiuUhO1WEWA.webp', 'Static_Wallpapers/New Year/blur/New Year_fJJrOg3ocowEXhGkpNNQiuUhO1WEWA.png', 25, 0, 16, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, hot air balloon, New Year', 0, 1, NULL, NULL),
(725, 'Static_Wallpapers/New Year/wallpaper/New Year_LITCsRvxHrsUCuEYYT3Xep6GpMZIfR.jpg', 'Static_Wallpapers/New Year/thumb/New Year_LITCsRvxHrsUCuEYYT3Xep6GpMZIfR.webp', 'Static_Wallpapers/New Year/blur/New Year_LITCsRvxHrsUCuEYYT3Xep6GpMZIfR.png', 25, 0, 16, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, love, heart, New Year', 0, 1, NULL, NULL),
(726, 'Static_Wallpapers/New Year/wallpaper/New Year_gTyyMvIWteLXPEJlMrGirh4BEmpKar.jpg', 'Static_Wallpapers/New Year/thumb/New Year_gTyyMvIWteLXPEJlMrGirh4BEmpKar.webp', 'Static_Wallpapers/New Year/blur/New Year_gTyyMvIWteLXPEJlMrGirh4BEmpKar.png', 25, 1, 17, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, New Year', 0, 1, NULL, NULL),
(727, 'Static_Wallpapers/New Year/wallpaper/New Year_ADQdHiRYW2ddIIoLl2RuQAEzW0Malv.jpg', 'Static_Wallpapers/New Year/thumb/New Year_ADQdHiRYW2ddIIoLl2RuQAEzW0Malv.webp', 'Static_Wallpapers/New Year/blur/New Year_ADQdHiRYW2ddIIoLl2RuQAEzW0Malv.png', 25, 0, 119, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, New Year', 0, 1, NULL, NULL),
(728, 'Static_Wallpapers/New Year/wallpaper/New Year_9KObdBMoubyKLf53PjykcUyy18Jvz5.jpg', 'Static_Wallpapers/New Year/thumb/New Year_9KObdBMoubyKLf53PjykcUyy18Jvz5.webp', 'Static_Wallpapers/New Year/blur/New Year_9KObdBMoubyKLf53PjykcUyy18Jvz5.png', 25, 0, 17, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, New Year', 0, 1, NULL, NULL),
(729, 'Static_Wallpapers/New Year/wallpaper/New Year_glKmkrmW18xWi1hvqF5Aq7hGVlgnIl.jpg', 'Static_Wallpapers/New Year/thumb/New Year_glKmkrmW18xWi1hvqF5Aq7hGVlgnIl.webp', 'Static_Wallpapers/New Year/blur/New Year_glKmkrmW18xWi1hvqF5Aq7hGVlgnIl.png', 25, 0, 10, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, New Year', 0, 1, NULL, NULL),
(730, 'Static_Wallpapers/New Year/wallpaper/New Year_RAaMiWnvSQf0vqOyo2r9EaLMpnNagH.jpg', 'Static_Wallpapers/New Year/thumb/New Year_RAaMiWnvSQf0vqOyo2r9EaLMpnNagH.webp', 'Static_Wallpapers/New Year/blur/New Year_RAaMiWnvSQf0vqOyo2r9EaLMpnNagH.png', 25, 0, 42, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, couple, New Year', 0, 1, NULL, NULL),
(731, 'Static_Wallpapers/New Year/wallpaper/New Year_l1qYCRqTVq4fWov2JP4NvvKfIeFYhS.jpg', 'Static_Wallpapers/New Year/thumb/New Year_l1qYCRqTVq4fWov2JP4NvvKfIeFYhS.webp', 'Static_Wallpapers/New Year/blur/New Year_l1qYCRqTVq4fWov2JP4NvvKfIeFYhS.png', 25, 0, 12, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, neon, New Year', 0, 1, NULL, NULL),
(732, 'Static_Wallpapers/New Year/wallpaper/New Year_wGksZb1i8XXIu5iX5B7prvVMZjBV0C.jpg', 'Static_Wallpapers/New Year/thumb/New Year_wGksZb1i8XXIu5iX5B7prvVMZjBV0C.webp', 'Static_Wallpapers/New Year/blur/New Year_wGksZb1i8XXIu5iX5B7prvVMZjBV0C.png', 25, 7, 29, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, colorful, New Year', 0, 1, NULL, NULL),
(733, 'Static_Wallpapers/New Year/wallpaper/New Year_FIBVnnP4v2hEq5Tu1rASjfG3hPXRKv.jpg', 'Static_Wallpapers/New Year/thumb/New Year_FIBVnnP4v2hEq5Tu1rASjfG3hPXRKv.webp', 'Static_Wallpapers/New Year/blur/New Year_FIBVnnP4v2hEq5Tu1rASjfG3hPXRKv.png', 25, 0, 31, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, New Year', 0, 1, NULL, NULL),
(734, 'Static_Wallpapers/New Year/wallpaper/New Year_mPAK0x7PQXSkcZ42SfkJmFnfOqqzbn.jpg', 'Static_Wallpapers/New Year/thumb/New Year_mPAK0x7PQXSkcZ42SfkJmFnfOqqzbn.webp', 'Static_Wallpapers/New Year/blur/New Year_mPAK0x7PQXSkcZ42SfkJmFnfOqqzbn.png', 25, 0, 11, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, New Year', 0, 1, NULL, NULL),
(735, 'Static_Wallpapers/New Year/wallpaper/New Year_qtTYDnNSwHdXJ6MWcN5mmPlxQnnuzQ.jpg', 'Static_Wallpapers/New Year/thumb/New Year_qtTYDnNSwHdXJ6MWcN5mmPlxQnnuzQ.webp', 'Static_Wallpapers/New Year/blur/New Year_qtTYDnNSwHdXJ6MWcN5mmPlxQnnuzQ.png', 25, 0, 49, 0, 1, 'new year, happy new year, new year 2024, new year eve, celebration, decoration, 2024, party, fireworks, lights, New Year', 0, 1, NULL, NULL),
(736, 'Static_Wallpapers/Games/wallpaper/Games_ZVnNV2QG2ycTjvJWSTIGmX5JcSU1Rf.jpg', 'Static_Wallpapers/Games/thumb/Games_ZVnNV2QG2ycTjvJWSTIGmX5JcSU1Rf.webp', 'Static_Wallpapers/Games/blur/Games_ZVnNV2QG2ycTjvJWSTIGmX5JcSU1Rf.png', 10, 0, 0, 0, 1, 'games, Games', 1, 1, NULL, NULL),
(737, 'Static_Wallpapers/Cars/wallpaper/Car_aigenerated8012163.jpg', 'Static_Wallpapers/Cars/thumb/Car_aigenerated8012163thu.webp', 'Static_Wallpapers/Cars/blur/', 1, 193, 36, 0, 0, 'bike riders, red bikes, bikes, cars and vehicles', 1, 1, NULL, '2024-11-26 05:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'shoaib', 'shoaib.mobipixels@gmail.com', NULL, '$2y$12$TBTRI8jZ2C7dBKqOjUGhRey4VnvoJHAJjNui7YcY8GuzCxYR8olD.', NULL, '2024-11-25 01:30:00', '2024-11-25 01:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `3d_wallpapers`
--
ALTER TABLE `3d_wallpapers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `four_dwallpapers`
--
ALTER TABLE `four_dwallpapers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `four_d_images`
--
ALTER TABLE `four_d_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `four_d_images_wallpaper_id_foreign` (`wallpaper_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masks`
--
ALTER TABLE `masks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `masks_wallpaper_id_foreign` (`wallpaper_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `static_wallpapers`
--
ALTER TABLE `static_wallpapers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `3d_wallpapers`
--
ALTER TABLE `3d_wallpapers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `four_dwallpapers`
--
ALTER TABLE `four_dwallpapers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `four_d_images`
--
ALTER TABLE `four_d_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `masks`
--
ALTER TABLE `masks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `static_wallpapers`
--
ALTER TABLE `static_wallpapers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=738;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `four_d_images`
--
ALTER TABLE `four_d_images`
  ADD CONSTRAINT `four_d_images_wallpaper_id_foreign` FOREIGN KEY (`wallpaper_id`) REFERENCES `four_dwallpapers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `masks`
--
ALTER TABLE `masks`
  ADD CONSTRAINT `masks_wallpaper_id_foreign` FOREIGN KEY (`wallpaper_id`) REFERENCES `four_dwallpapers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
