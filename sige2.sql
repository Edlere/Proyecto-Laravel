-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 30, 2017 at 03:25 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sige2`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
CREATE TABLE IF NOT EXISTS `alumno` (
  `idalumno` int(11) NOT NULL AUTO_INCREMENT,
  `idcurso` int(11) DEFAULT NULL,
  `idgrado` int(11) DEFAULT NULL,
  `idsalon` int(11) DEFAULT NULL,
  `iddocente` int(11) DEFAULT NULL,
  `dni` varchar(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `fechanacimiento` date NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `nombreapoderado` varchar(256) NOT NULL,
  `telefonoapoderado` varchar(45) NOT NULL,
  `telefonoemergencia` varchar(45) NOT NULL,
  `descripcion` varchar(545) NOT NULL,
  PRIMARY KEY (`idalumno`),
  KEY `fk_alumno_curso_idx` (`idcurso`),
  KEY `fk_alumno_grado_idx` (`idgrado`),
  KEY `fk_alumno_salon_idx` (`idsalon`),
  KEY `fk_alumno_docente_idx` (`iddocente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alumno`
--

INSERT INTO `alumno` (`idalumno`, `idcurso`, `idgrado`, `idsalon`, `iddocente`, `dni`, `nombre`, `fechanacimiento`, `direccion`, `estado`, `imagen`, `nombreapoderado`, `telefonoapoderado`, `telefonoemergencia`, `descripcion`) VALUES
(1, 2, 1, 2, 1, '70004110', 'Gutierrez Lopez Axel', '1996-08-26', 'Nic.Garatea Mz 109 Lot 36', 'Activo', 'Axel.jpg', 'Lopez Escudero Patricia', '043-35-10-19', '943-42-36-29', 'Ninguna'),
(2, NULL, NULL, NULL, NULL, '124365', 'LECCA', '1996-08-12', 'dsdsds', 'dada', 'Axel.jpg', 'dsdsd', '1212121', '12121', 'asassdsdsd');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
CREATE TABLE IF NOT EXISTS `curso` (
  `idcurso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `condicion` tinyint(4) NOT NULL,
  PRIMARY KEY (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `curso`
--

INSERT INTO `curso` (`idcurso`, `nombre`, `condicion`) VALUES
(1, 'Matematica', 1),
(2, 'Comunicacion', 1),
(3, 'Historia', 1),
(4, 'Razonamiento Matematico', 1),
(5, 'Razonamiento Verbal', 1),
(6, 'Computacion', 1),
(7, 'Personal Social', 1),
(8, 'Ciencia y Ambiente', 1),
(9, 'Religion', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, '2017-10-16 03:54:53', '2017-10-16 03:54:53'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2017-10-16 03:54:53', '2017-10-16 03:54:53'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2017-10-16 03:54:53', '2017-10-16 03:54:53'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2017-10-16 03:54:53', '2017-10-16 03:54:53'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2017-10-16 03:54:53', '2017-10-16 03:54:53'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2017-10-16 03:54:53', '2017-10-16 03:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
CREATE TABLE IF NOT EXISTS `docente` (
  `iddocente` int(11) NOT NULL AUTO_INCREMENT,
  `idcurso` int(11) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `especialidad` varchar(100) NOT NULL,
  `edad` int(11) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `idgrado` int(11) DEFAULT NULL,
  `idsalon` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddocente`),
  KEY `fk_docente_curso_idx` (`idcurso`),
  KEY `fk_docente_salon_idx` (`idsalon`),
  KEY `fk_docente_grado_idx` (`idgrado`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `docente`
--

INSERT INTO `docente` (`iddocente`, `idcurso`, `dni`, `nombre`, `direccion`, `especialidad`, `edad`, `estado`, `imagen`, `telefono`, `celular`, `email`, `idgrado`, `idsalon`) VALUES
(1, 1, '34567890', 'Alvarado Gutierrez Carlos', 'Buenos Aires Mz A Lot 45', 'Lenguaje y Artes', 30, 'Activo', 'Carlos.jpg', '043-45-67-89', '959-34-45-34', 'carlos@hotmail.es', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `grado`
--

DROP TABLE IF EXISTS `grado`;
CREATE TABLE IF NOT EXISTS `grado` (
  `idgrado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `condicion` varchar(20) NOT NULL,
  PRIMARY KEY (`idgrado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grado`
--

INSERT INTO `grado` (`idgrado`, `nombre`, `condicion`) VALUES
(1, '1ro', 'Activo'),
(2, '2do', 'Activo'),
(3, '3ro', 'Activo');

-- --------------------------------------------------------

--
-- Table structure for table `institucion`
--

DROP TABLE IF EXISTS `institucion`;
CREATE TABLE IF NOT EXISTS `institucion` (
  `idInstitucion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `notamax` int(11) NOT NULL,
  `notamin` varchar(11) NOT NULL,
  `pagina` varchar(100) NOT NULL,
  `dateupdate` date NOT NULL,
  `fax` varchar(45) NOT NULL,
  PRIMARY KEY (`idInstitucion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-10-16 03:54:56', '2017-10-16 03:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Panel de Control', '', '_self', 'voyager-boat', NULL, NULL, 1, '2017-10-16 03:54:56', '2017-10-16 03:54:56', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2017-10-16 03:54:56', '2017-10-16 03:54:56', 'voyager.media.index', NULL),
(3, 1, 'Publicaciones educativas', '', '_self', 'voyager-news', NULL, NULL, 6, '2017-10-16 03:54:56', '2017-10-16 03:54:56', 'voyager.posts.index', NULL),
(4, 1, 'Usuarios', '', '_self', 'voyager-person', NULL, NULL, 3, '2017-10-16 03:54:56', '2017-10-16 03:54:56', 'voyager.users.index', NULL),
(6, 1, 'Paginas\r\n', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2017-10-16 03:54:56', '2017-10-16 03:54:56', 'voyager.pages.index', NULL),
(7, 1, 'Cargo', '', '_self', 'voyager-lock', NULL, NULL, 2, '2017-10-16 03:54:56', '2017-10-16 03:54:56', 'voyager.roles.index', NULL),
(8, 1, 'SIGE', '', '_self', 'voyager-tools', NULL, NULL, 9, '2017-10-16 03:54:56', '2017-10-16 03:54:56', NULL, NULL),
(9, 1, 'Construccion de menus', '', '_self', 'voyager-list', NULL, 8, 10, '2017-10-16 03:54:56', '2017-10-16 03:54:56', 'voyager.menus.index', NULL),
(10, 1, 'Administrar Base de datos', '', '_self', 'voyager-data', NULL, 8, 11, '2017-10-16 03:54:56', '2017-10-16 03:54:56', 'voyager.database.index', NULL),
(12, 1, 'Hooks', '/admin/hooks', '_self', 'voyager-hook', NULL, 8, 13, '2017-10-16 03:54:56', '2017-10-16 03:54:56', NULL, NULL),
(13, 1, 'Configuracion', '', '_self', 'voyager-settings', NULL, NULL, 14, '2017-10-16 03:54:56', '2017-10-16 03:54:56', 'voyager.settings.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
CREATE TABLE IF NOT EXISTS `notas` (
  `idnotas` int(11) NOT NULL AUTO_INCREMENT,
  `idcurso` int(11) NOT NULL,
  `idalumno` int(11) NOT NULL,
  `valor` decimal(4,2) NOT NULL,
  `periodo` varchar(50) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`idnotas`),
  KEY `fk_notas_curso_idx` (`idcurso`),
  KEY `fk_notas_alumno_idx` (`idalumno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'SIGE', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p><span style=\"color: #43535b; font-family: \'PT Sans\', Arial, sans-serif; font-size: 16px;\">El desarrollo de las Tecnolog&iacute;as de la Informaci&oacute;n y Comunicaci&oacute;n -TIC- ha abierto un sinn&uacute;mero de posibilidades para realizar proyectos educativos en el que todas las personas tengan la oportunidad de acceder a educaci&oacute;n de calidad sin importar el momento o el lugar en el que se encuentren.</span><br style=\"box-sizing: border-box; color: #43535b; font-family: \'PT Sans\', Arial, sans-serif; font-size: 16px;\" /><br style=\"box-sizing: border-box; color: #43535b; font-family: \'PT Sans\', Arial, sans-serif; font-size: 16px;\" /><span style=\"color: #43535b; font-family: \'PT Sans\', Arial, sans-serif; font-size: 16px;\">En efecto, las alternativas de acceso que se han puesto en manos de las personas han eliminado el tiempo y la distancia como un obst&aacute;culo para ense&ntilde;ar y aprender.</span></p>', 'pages/page1.jpg', 'sige', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2017-10-16 03:55:01', '2017-10-30 07:48:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2017-10-16 03:54:56', '2017-10-16 03:54:56', NULL),
(2, 'browse_database', NULL, '2017-10-16 03:54:56', '2017-10-16 03:54:56', NULL),
(3, 'browse_media', NULL, '2017-10-16 03:54:57', '2017-10-16 03:54:57', NULL),
(4, 'browse_compass', NULL, '2017-10-16 03:54:57', '2017-10-16 03:54:57', NULL),
(5, 'browse_menus', 'menus', '2017-10-16 03:54:57', '2017-10-16 03:54:57', NULL),
(6, 'read_menus', 'menus', '2017-10-16 03:54:57', '2017-10-16 03:54:57', NULL),
(7, 'edit_menus', 'menus', '2017-10-16 03:54:57', '2017-10-16 03:54:57', NULL),
(8, 'add_menus', 'menus', '2017-10-16 03:54:57', '2017-10-16 03:54:57', NULL),
(9, 'delete_menus', 'menus', '2017-10-16 03:54:57', '2017-10-16 03:54:57', NULL),
(10, 'browse_pages', 'pages', '2017-10-16 03:54:57', '2017-10-16 03:54:57', NULL),
(11, 'read_pages', 'pages', '2017-10-16 03:54:57', '2017-10-16 03:54:57', NULL),
(12, 'edit_pages', 'pages', '2017-10-16 03:54:57', '2017-10-16 03:54:57', NULL),
(13, 'add_pages', 'pages', '2017-10-16 03:54:57', '2017-10-16 03:54:57', NULL),
(14, 'delete_pages', 'pages', '2017-10-16 03:54:57', '2017-10-16 03:54:57', NULL),
(15, 'browse_roles', 'roles', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(16, 'read_roles', 'roles', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(17, 'edit_roles', 'roles', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(18, 'add_roles', 'roles', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(19, 'delete_roles', 'roles', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(20, 'browse_users', 'users', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(21, 'read_users', 'users', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(22, 'edit_users', 'users', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(23, 'add_users', 'users', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(24, 'delete_users', 'users', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(25, 'browse_posts', 'posts', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(26, 'read_posts', 'posts', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(27, 'edit_posts', 'posts', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(28, 'add_posts', 'posts', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(29, 'delete_posts', 'posts', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(30, 'browse_categories', 'categories', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(31, 'read_categories', 'categories', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(32, 'edit_categories', 'categories', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(33, 'add_categories', 'categories', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(34, 'delete_categories', 'categories', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(35, 'browse_settings', 'settings', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(36, 'read_settings', 'settings', '2017-10-16 03:54:58', '2017-10-16 03:54:58', NULL),
(37, 'edit_settings', 'settings', '2017-10-16 03:54:59', '2017-10-16 03:54:59', NULL),
(38, 'add_settings', 'settings', '2017-10-16 03:54:59', '2017-10-16 03:54:59', NULL),
(39, 'delete_settings', 'settings', '2017-10-16 03:54:59', '2017-10-16 03:54:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
CREATE TABLE IF NOT EXISTS `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(38, 1),
(39, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'SIGE', NULL, NULL, '<p><span style=\"color: #43535b; font-family: \'PT Sans\', Arial, sans-serif; font-size: 16px;\">Es importante aclarar que la clave para definir la educaci&oacute;n en l&iacute;nea parte de una concepci&oacute;n pedag&oacute;gica que se apoya en las Tecnolog&iacute;as de la Informaci&oacute;n y Comunicaci&oacute;n.</span><br style=\"box-sizing: border-box; color: #43535b; font-family: \'PT Sans\', Arial, sans-serif; font-size: 16px;\" /><br style=\"box-sizing: border-box; color: #43535b; font-family: \'PT Sans\', Arial, sans-serif; font-size: 16px;\" /><span style=\"color: #43535b; font-family: \'PT Sans\', Arial, sans-serif; font-size: 16px;\">Lo que garantiza la calidad de la educaci&oacute;n es la articulaci&oacute;n coherente y arm&oacute;nica de un modelo que ponga, por encima de los instrumentos, el sentido pedag&oacute;gico de los procesos. Una educaci&oacute;n de calidad puede salir adelante con una tecnolog&iacute;a inadecuada; pero jam&aacute;s una tecnolog&iacute;a excelente podr&aacute; sacar adelante un proceso educativo de baja calidad.</span></p>', NULL, 'sige', NULL, NULL, 'PUBLISHED', 0, '2017-10-30 07:49:24', '2017-10-30 07:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2017-10-16 03:54:56', '2017-10-16 03:54:56'),
(2, 'user', 'Normal User', '2017-10-16 03:54:56', '2017-10-16 03:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `salon`
--

DROP TABLE IF EXISTS `salon`;
CREATE TABLE IF NOT EXISTS `salon` (
  `idsalon` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `condicion` varchar(20) NOT NULL,
  `idgrado` int(11) NOT NULL,
  PRIMARY KEY (`idsalon`),
  KEY `fk_salon_grado_idx` (`idgrado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salon`
--

INSERT INTO `salon` (`idsalon`, `nombre`, `condicion`, `idgrado`) VALUES
(1, 'Seccion A', 'Activo', 2),
(2, 'Seccion B', 'Activo', 2),
(3, 'Seccion C', 'Activo', 3);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2017-10-16 03:55:02', '2017-10-16 03:55:02'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2017-10-16 03:55:02', '2017-10-16 03:55:02'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2017-10-16 03:55:02', '2017-10-16 03:55:02'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2017-10-16 03:55:02', '2017-10-16 03:55:02'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2017-10-16 03:55:02', '2017-10-16 03:55:02'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2017-10-16 03:55:02', '2017-10-16 03:55:02'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2017-10-16 03:55:02', '2017-10-16 03:55:02'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2017-10-16 03:55:02', '2017-10-16 03:55:02'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2017-10-16 03:55:02', '2017-10-16 03:55:02'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2017-10-16 03:55:02', '2017-10-16 03:55:02'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2017-10-16 03:55:02', '2017-10-16 03:55:02'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2017-10-16 03:55:03', '2017-10-16 03:55:03'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2017-10-16 03:55:03', '2017-10-16 03:55:03'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2017-10-16 03:55:03', '2017-10-16 03:55:03'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2017-10-16 03:55:03', '2017-10-16 03:55:03'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2017-10-16 03:55:03', '2017-10-16 03:55:03'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2017-10-16 03:55:03', '2017-10-16 03:55:03'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2017-10-16 03:55:03', '2017-10-16 03:55:03'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2017-10-16 03:55:03', '2017-10-16 03:55:03'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2017-10-16 03:55:03', '2017-10-16 03:55:03'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2017-10-16 03:55:03', '2017-10-16 03:55:03'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2017-10-16 03:55:03', '2017-10-16 03:55:03'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2017-10-16 03:55:03', '2017-10-16 03:55:03'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2017-10-16 03:55:03', '2017-10-16 03:55:03'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2017-10-16 03:55:03', '2017-10-16 03:55:03'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2017-10-16 03:55:03', '2017-10-16 03:55:03'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2017-10-16 03:55:03', '2017-10-16 03:55:03'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2017-10-16 03:55:03', '2017-10-16 03:55:03'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2017-10-16 03:55:03', '2017-10-16 03:55:03'),
(30, 'menu_items', 'title', 13, 'pt', 'Configurações', '2017-10-16 03:55:03', '2017-10-16 03:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$ZjPI0msEdBEtqr2w0sVJQeyD7yvMSAy231WSMlONk1glJ.qLw2SFq', 'ILvCJTODmNux1DfhJXRUio8xkR4qOWelQoHxGI3zj6f09lrI1nDDPzZv9Tzh', '2017-10-16 13:55:01', '2017-10-16 13:55:01'),
(2, 2, 'user1', 'user1@user.com', 'users/default.png', '$2y$10$ZKtACxm3lPr7dHYXfQMRvuD3jS5dujDZ2aEVphaw/ikyShac2lppa', 'HuMMU6ba8JnFr6ufkC7P5rIWLSgO1XlDP1oMWtAeQFXAQp3yPrMS85QktRva', '2017-10-26 13:05:56', '2017-10-26 13:05:56');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `fk_alumno_curso` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alumno_docente` FOREIGN KEY (`iddocente`) REFERENCES `docente` (`iddocente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alumno_grado` FOREIGN KEY (`idgrado`) REFERENCES `grado` (`idgrado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alumno_salon` FOREIGN KEY (`idsalon`) REFERENCES `salon` (`idsalon`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `fk_docente_curso` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_docente_grado` FOREIGN KEY (`idgrado`) REFERENCES `grado` (`idgrado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_docente_salon` FOREIGN KEY (`idsalon`) REFERENCES `salon` (`idsalon`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `fk_notas_alumno` FOREIGN KEY (`idalumno`) REFERENCES `alumno` (`idalumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_notas_curso` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salon`
--
ALTER TABLE `salon`
  ADD CONSTRAINT `fk_salon_grado` FOREIGN KEY (`idgrado`) REFERENCES `grado` (`idgrado`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
