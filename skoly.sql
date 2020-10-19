-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pon 19. říj 2020, 18:25
-- Verze serveru: 10.4.14-MariaDB
-- Verze PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `skoly`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'nazev_mesta', 'text', 'Nazev Mesta', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(25, 5, 'nazev_oboru', 'text', 'Nazev Oboru', 1, 1, 1, 1, 1, 1, '{}', 2),
(26, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(27, 6, 'obor', 'text', 'Obor', 1, 1, 1, 1, 1, 1, '{}', 2),
(28, 6, 'skola', 'text', 'Skola', 1, 1, 1, 1, 1, 1, '{}', 3),
(29, 6, 'pocet', 'text', 'Pocet', 1, 1, 1, 1, 1, 1, '{}', 4),
(30, 6, 'rok', 'text', 'Rok', 1, 1, 1, 1, 1, 1, '{}', 5),
(31, 6, 'pocet_prijatych_belongsto_obor_relationship', 'relationship', 'obor', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Obor\",\"table\":\"obor\",\"type\":\"belongsTo\",\"column\":\"obor\",\"key\":\"id\",\"label\":\"nazev_oboru\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(32, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(33, 7, 'nazev_skoly', 'text', 'Nazev Skoly', 1, 1, 1, 1, 1, 1, '{}', 2),
(34, 7, 'mesto', 'text', 'Mesto', 1, 1, 1, 1, 1, 1, '{}', 3),
(35, 7, 'geo_lat', 'text', 'Geo Lat', 1, 1, 1, 1, 1, 1, '{}', 4),
(36, 7, 'geo_long', 'text', 'Geo Long', 1, 1, 1, 1, 1, 1, '{}', 5),
(37, 7, 'skola_belongsto_mesto_relationship', 'relationship', 'mesto', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Mesto\",\"table\":\"mesto\",\"type\":\"belongsTo\",\"column\":\"mesto\",\"key\":\"id\",\"label\":\"nazev_mesta\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(38, 6, 'pocet_prijatych_belongsto_skola_relationship', 'relationship', 'skola', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Skola\",\"table\":\"skola\",\"type\":\"belongsTo\",\"column\":\"skola\",\"key\":\"id\",\"label\":\"nazev_skoly\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7);

-- --------------------------------------------------------

--
-- Struktura tabulky `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(4, 'mesto', 'mesto', 'Mesto', 'Mesto', NULL, 'App\\Mesto', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-14 05:34:59', '2020-09-15 04:58:51'),
(5, 'obor', 'obor', 'Obor', 'Obor', NULL, 'App\\Obor', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-14 05:39:21', '2020-09-14 05:57:12'),
(6, 'pocet_prijatych', 'pocet-prijatych', 'Pocet Prijatych', 'Pocet prijatych', NULL, 'App\\PocetPrijatych', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-14 05:43:25', '2020-09-14 06:04:18'),
(7, 'skola', 'skola', 'Skola', 'Skola', NULL, 'App\\Skola', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-14 05:58:33', '2020-09-14 06:03:54');

-- --------------------------------------------------------

--
-- Struktura tabulky `failed_jobs`
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
-- Struktura tabulky `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-09-14 05:01:56', '2020-09-14 05:01:56');

-- --------------------------------------------------------

--
-- Struktura tabulky `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-09-14 05:01:56', '2020-09-14 05:01:56', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-09-14 05:01:56', '2020-09-14 05:01:56', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-09-14 05:01:56', '2020-09-14 05:01:56', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-09-14 05:01:56', '2020-09-14 05:01:56', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-09-14 05:01:56', '2020-09-14 05:01:56', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2020-09-14 05:01:56', '2020-09-14 05:01:56', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2020-09-14 05:01:56', '2020-09-14 05:01:56', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2020-09-14 05:01:56', '2020-09-14 05:01:56', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2020-09-14 05:01:56', '2020-09-14 05:01:56', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2020-09-14 05:01:56', '2020-09-14 05:01:56', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2020-09-14 05:01:57', '2020-09-14 05:01:57', 'voyager.hooks', NULL),
(12, 1, 'Mestos', '', '_self', NULL, NULL, NULL, 15, '2020-09-14 05:34:59', '2020-09-14 05:34:59', 'voyager.mesto.index', NULL),
(13, 1, 'Obor', '', '_self', NULL, NULL, NULL, 16, '2020-09-14 05:39:21', '2020-09-14 05:39:21', 'voyager.obor.index', NULL),
(14, 1, 'Pocet Prijatyches', '', '_self', NULL, NULL, NULL, 17, '2020-09-14 05:43:25', '2020-09-14 05:43:25', 'voyager.pocet-prijatych.index', NULL),
(15, 1, 'Skola', '', '_self', NULL, NULL, NULL, 18, '2020-09-14 05:58:33', '2020-09-14 05:58:33', 'voyager.skola.index', NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `mesto`
--

CREATE TABLE `mesto` (
  `id_mesto` int(11) NOT NULL,
  `nazev_mesta` varchar(255) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `mesto`
--

INSERT INTO `mesto` (`id_mesto`, `nazev_mesta`) VALUES
(42, 'Babice'),
(34, 'Bánov'),
(7, 'Bílovice'),
(60, 'Blatnice pod svatým Antoníkem'),
(5, 'Bojkovice'),
(43, 'Boršice'),
(24, 'Březolupy'),
(21, 'Březová'),
(8, 'Buchlovice'),
(11, 'Bystřice pod Lopeníkem'),
(56, 'Bzenec'),
(31, 'Dolní Němčí'),
(63, 'Halenkovice'),
(4, 'Hluk'),
(40, 'Horní Němčí'),
(35, 'Hradčovice'),
(14, 'Huštěnovice'),
(20, 'Jalubí'),
(12, 'Kněžpole'),
(19, 'Komňa'),
(22, 'Korytná'),
(13, 'Kudlovice'),
(48, 'Kunovice'),
(64, 'Kuželov'),
(54, 'Lipov'),
(53, 'Louka'),
(66, 'Luhačovice'),
(37, 'Mistřice'),
(57, 'Moravský Písek'),
(50, 'Napajedla'),
(36, 'Nedakonice'),
(23, 'Nezdenice'),
(10, 'Nivnice'),
(30, 'Ořechov'),
(25, 'Ostrožská Lhota'),
(44, 'Ostrožská Nová Ves'),
(9, 'Osvětimany'),
(51, 'Otrokovice'),
(41, 'Pitín'),
(15, 'Podolí'),
(45, 'Polešovice'),
(16, 'Popovice'),
(26, 'Prakšice'),
(49, 'Spytihněv'),
(47, 'Staré Město'),
(27, 'Starý Hrozenkov'),
(32, 'Strání'),
(58, 'Strážnice'),
(65, 'Střílky'),
(17, 'Suchá Loz'),
(46, 'Šumice'),
(38, 'Topolná'),
(6, 'Traplice'),
(28, 'Tupesy'),
(1, 'Uherské Hradiště'),
(2, 'Uherský Brod'),
(3, 'Uherský Ostroh'),
(33, 'Velehrad'),
(55, 'Velká nad Veličkou'),
(52, 'Veselí nad Moravou'),
(29, 'Vlčnov'),
(59, 'Vnorovy'),
(61, 'Vracov'),
(39, 'Záhorovice'),
(18, 'Zlechov'),
(62, 'Žeravice');

-- --------------------------------------------------------

--
-- Struktura tabulky `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `migrations`
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
(23, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `obor`
--

CREATE TABLE `obor` (
  `id_obor` int(11) NOT NULL,
  `nazev_oboru` varchar(255) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `obor`
--

INSERT INTO `obor` (`id_obor`, `nazev_oboru`) VALUES
(2, 'IT'),
(1, 'OA');

-- --------------------------------------------------------

--
-- Struktura tabulky `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(2, 'browse_bread', NULL, '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(3, 'browse_database', NULL, '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(4, 'browse_media', NULL, '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(5, 'browse_compass', NULL, '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(6, 'browse_menus', 'menus', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(7, 'read_menus', 'menus', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(8, 'edit_menus', 'menus', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(9, 'add_menus', 'menus', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(10, 'delete_menus', 'menus', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(11, 'browse_roles', 'roles', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(12, 'read_roles', 'roles', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(13, 'edit_roles', 'roles', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(14, 'add_roles', 'roles', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(15, 'delete_roles', 'roles', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(16, 'browse_users', 'users', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(17, 'read_users', 'users', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(18, 'edit_users', 'users', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(19, 'add_users', 'users', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(20, 'delete_users', 'users', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(21, 'browse_settings', 'settings', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(22, 'read_settings', 'settings', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(23, 'edit_settings', 'settings', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(24, 'add_settings', 'settings', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(25, 'delete_settings', 'settings', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(26, 'browse_hooks', NULL, '2020-09-14 05:01:57', '2020-09-14 05:01:57'),
(27, 'browse_mesto', 'mesto', '2020-09-14 05:34:59', '2020-09-14 05:34:59'),
(28, 'read_mesto', 'mesto', '2020-09-14 05:34:59', '2020-09-14 05:34:59'),
(29, 'edit_mesto', 'mesto', '2020-09-14 05:34:59', '2020-09-14 05:34:59'),
(30, 'add_mesto', 'mesto', '2020-09-14 05:34:59', '2020-09-14 05:34:59'),
(31, 'delete_mesto', 'mesto', '2020-09-14 05:34:59', '2020-09-14 05:34:59'),
(32, 'browse_obor', 'obor', '2020-09-14 05:39:21', '2020-09-14 05:39:21'),
(33, 'read_obor', 'obor', '2020-09-14 05:39:21', '2020-09-14 05:39:21'),
(34, 'edit_obor', 'obor', '2020-09-14 05:39:21', '2020-09-14 05:39:21'),
(35, 'add_obor', 'obor', '2020-09-14 05:39:21', '2020-09-14 05:39:21'),
(36, 'delete_obor', 'obor', '2020-09-14 05:39:21', '2020-09-14 05:39:21'),
(37, 'browse_pocet_prijatych', 'pocet_prijatych', '2020-09-14 05:43:25', '2020-09-14 05:43:25'),
(38, 'read_pocet_prijatych', 'pocet_prijatych', '2020-09-14 05:43:25', '2020-09-14 05:43:25'),
(39, 'edit_pocet_prijatych', 'pocet_prijatych', '2020-09-14 05:43:25', '2020-09-14 05:43:25'),
(40, 'add_pocet_prijatych', 'pocet_prijatych', '2020-09-14 05:43:25', '2020-09-14 05:43:25'),
(41, 'delete_pocet_prijatych', 'pocet_prijatych', '2020-09-14 05:43:25', '2020-09-14 05:43:25'),
(42, 'browse_skola', 'skola', '2020-09-14 05:58:33', '2020-09-14 05:58:33'),
(43, 'read_skola', 'skola', '2020-09-14 05:58:33', '2020-09-14 05:58:33'),
(44, 'edit_skola', 'skola', '2020-09-14 05:58:33', '2020-09-14 05:58:33'),
(45, 'add_skola', 'skola', '2020-09-14 05:58:33', '2020-09-14 05:58:33'),
(46, 'delete_skola', 'skola', '2020-09-14 05:58:33', '2020-09-14 05:58:33');

-- --------------------------------------------------------

--
-- Struktura tabulky `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `permission_role`
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
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `pocet_prijatych`
--

CREATE TABLE `pocet_prijatych` (
  `id_pocet_prijatych` int(11) NOT NULL,
  `obor` int(11) NOT NULL,
  `skola` int(11) NOT NULL,
  `pocet` int(11) NOT NULL,
  `rok` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `pocet_prijatych`
--

INSERT INTO `pocet_prijatych` (`id_pocet_prijatych`, `obor`, `skola`, `pocet`, `rok`) VALUES
(1, 2, 3, 4, 2019),
(2, 2, 4, 3, 2019),
(3, 2, 11, 2, 2019),
(4, 2, 36, 2, 2019),
(5, 2, 54, 2, 2019),
(6, 2, 56, 2, 2019),
(7, 2, 7, 2, 2019),
(8, 2, 57, 2, 2019),
(9, 2, 50, 1, 2019),
(10, 2, 52, 1, 2019),
(11, 2, 42, 1, 2019),
(12, 2, 51, 1, 2019),
(13, 2, 55, 1, 2019),
(14, 2, 6, 1, 2019),
(15, 2, 5, 1, 2019),
(16, 2, 1, 1, 2019),
(17, 2, 59, 1, 2019),
(18, 2, 41, 1, 2019),
(19, 2, 58, 1, 2019),
(20, 1, 51, 7, 2019),
(21, 1, 14, 5, 2019),
(22, 1, 67, 5, 2019),
(23, 1, 39, 4, 2019),
(24, 1, 76, 4, 2019),
(25, 1, 72, 4, 2019),
(26, 1, 3, 4, 2019),
(27, 1, 6, 3, 2019),
(28, 1, 57, 3, 2019),
(29, 1, 5, 3, 2019),
(30, 1, 71, 3, 2019),
(31, 1, 41, 3, 2019),
(32, 1, 77, 2, 2019),
(33, 1, 36, 2, 2019),
(34, 1, 33, 2, 2019),
(35, 1, 64, 2, 2019),
(36, 1, 30, 2, 2019),
(37, 1, 78, 2, 2019),
(38, 1, 10, 2, 2019),
(39, 1, 59, 1, 2019),
(40, 1, 60, 1, 2019),
(41, 1, 79, 1, 2019),
(42, 1, 29, 1, 2019),
(43, 1, 25, 1, 2019),
(44, 1, 8, 1, 2019),
(45, 1, 73, 1, 2019),
(46, 1, 80, 1, 2019),
(47, 1, 70, 1, 2019),
(48, 1, 53, 1, 2019),
(49, 1, 55, 1, 2019),
(50, 1, 81, 1, 2019),
(51, 1, 82, 1, 2019),
(52, 1, 83, 1, 2019),
(53, 1, 2, 1, 2019),
(54, 1, 56, 1, 2019),
(55, 1, 84, 1, 2019),
(56, 1, 63, 1, 2019),
(57, 1, 11, 1, 2019);

-- --------------------------------------------------------

--
-- Struktura tabulky `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-09-14 05:01:56', '2020-09-14 05:01:56'),
(2, 'user', 'Normal User', '2020-09-14 05:01:56', '2020-09-14 05:01:56');

-- --------------------------------------------------------

--
-- Struktura tabulky `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `settings`
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
-- Struktura tabulky `skola`
--

CREATE TABLE `skola` (
  `id_skola` int(11) NOT NULL,
  `nazev_skoly` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `mesto` int(11) NOT NULL,
  `geo_lat` double NOT NULL,
  `geo_long` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `skola`
--

INSERT INTO `skola` (`id_skola`, `nazev_skoly`, `mesto`, `geo_lat`, `geo_long`) VALUES
(1, 'ZŠ Na Výsluní Uherský Brod\r\n', 2, 49.032687, 17.643536),
(2, 'Katolická základní škola Uherský Brod', 2, 49.022996, 17.649707),
(3, 'ZŠ Mariánské náměstí Uherský Brod', 2, 49.026235, 17.645464),
(4, 'ZŠ Pod Vinohrady Uherský Brod', 2, 49.026792, 17.653584),
(5, 'ZŠ Za Alejí Uherské Hradiště', 1, 49.068425, 17.449208),
(6, 'ZŠ Sportovní Uherské Hradiště', 1, 49.067784, 17.472572),
(7, 'ZŠ UNESCO Uherské Hradiště', 1, 49.067068, 17.460288),
(8, 'Academic School Uherské Hradiště', 1, 49.070963, 17.47193),
(9, 'ZŠ Palackého náměstí Uherské Hradiště', 1, 49.068893, 17.464523),
(10, 'ZŠ Traplice', 6, 49.136834, 17.433056),
(11, 'ZŠ Bílovice', 7, 49.101508, 17.54614),
(12, 'ZŠ Buchlovice', 8, 49.086178, 17.342145),
(13, 'ZŠ Osvětimany', 9, 49.056656, 17.255367),
(14, 'ZŠ Jana Ámose Komenského Nivnice', 10, 48.972221, 17.648486),
(15, 'ZŠ Bystřice pod Lopeníkem', 11, 48.975716, 17.755046),
(16, 'ZŠ Kněžpole', 12, 49.099497, 17.517719),
(17, 'ZŠ Kudlovice', 13, 49.127723, 17.45417),
(18, 'ZŠ Huštěnovice', 14, 49.106862, 17.466343),
(19, 'ZŠ Podolí', 15, 49.040681, 17.529285),
(20, 'ZŠ Popovice', 16, 49.052241, 17.526111),
(21, 'ZŠ Suchá loz', 17, 48.970431, 17.708283),
(22, 'ZŠ Zlechov', 18, 49.072126, 17.382849),
(23, 'ZŠ Jana Ámose Komenského Komňa', 19, 48.995911, 17.799093),
(24, 'ZŠ Jalubí', 20, 49.118043, 17.422192),
(25, 'ZŠ Březová', 21, 48.930711, 17.74298),
(26, 'ZŠ Korytná', 22, 48.941024, 17.664368),
(27, 'ZŠ Nezdenice', 23, 49.02038, 17.752949),
(28, 'ZŠ Uherský Brod-Újezdec', 2, 49.035849, 17.681992),
(29, 'ZŠ Březolupy', 24, 49.121495, 17.580047),
(30, 'ZŠ Ostrožská Lhota', 25, 48.974706, 17.471946),
(31, 'ZŠ Prakšice', 26, 49.071194, 17.635102),
(32, 'ZŠ Starý Hrozenkov', 27, 48.969213, 17.858509),
(33, 'ZŠ Tupesy', 28, 49.084244, 17.370199),
(34, 'ZŠ Vlčnov', 29, 49.009816, 17.577585),
(35, 'ZŠ Ořechov', 30, 49.111637, 16.514285),
(36, 'ZŠ Větrná Uherské Hradiště', 1, 49.05876, 17.481068),
(37, 'ZŠ Bojkovice', 5, 49.03941, 17.806166),
(38, 'ZŠ Čtverka Uherský Brod', 2, 49.029619, 17.641927),
(39, 'ZŠ Dolní Němčí', 31, 48.971502, 17.587564),
(40, 'ZŠ Strání', 32, 48.902958, 17.709254),
(41, 'ZŠ Velehrad', 33, 49.104735, 17.392907),
(42, 'ZŠ Josefa Bublíka Bánov', 34, 48.99108, 17.719595),
(43, 'ZŠ Hradčovice', 35, 49.047455, 17.58041),
(44, 'ZŠ Nedakonice', 36, 49.031417, 17.38553),
(45, 'ZŠ Mistřice', 37, 49.088316, 17.534151),
(46, 'ZŠ Topolná', 38, 49.12012, 17.542462),
(47, 'ZŠ Záhorovice', 39, 49.022917, 17.779082),
(48, 'ZŠ Horní Němčí', 40, 48.929706, 17.627129),
(49, 'ZŠ Pitín', 41, 49.038549, 17.850321),
(50, 'ZŠ Babice', 42, 49.118311, 17.476069),
(51, 'ZŠ Tomáše Garrigue Masaryka Bojkovice', 5, 49.039504, 17.806177),
(52, 'ZŠ Františka Horenského Boršice', 43, 49.063542, 17.353148),
(53, 'ZŠ Hluk', 4, 48.988244, 17.527682),
(54, 'ZŠ Ostrožská Nová Ves', 44, 49.003064, 17.43651),
(55, 'ZŠ Polešovice', 45, 49.030146, 17.342677),
(56, 'ZŠ Šumice', 46, 49.028556, 17.722397),
(57, 'ZŠ Staré Město', 47, 49.077543, 17.435019),
(58, 'ZŠ Kunovice Červená cesta', 48, 49.038548, 17.462964),
(59, 'ZŠ Uherský Ostroh', 3, 48.987818, 17.398587),
(60, 'ZŠ Kunovice U Pálenice', 48, 49.038361, 17.462924),
(61, 'ZŠ Spytihněv', 49, 49.143222, 17.49648),
(62, '1. ZŠ Napajedla', 50, 49.173254, 17.515332),
(63, '2. ZŠ Napajedla', 50, 49.172917, 17.516327),
(64, 'ZŠ Trávníky Otrokovice', 51, 49.204245, 17.544488),
(65, 'ZŠ Tomáše Garrigue Masaryka Otrokovice', 51, 49.211614, 17.534475),
(66, 'ZŠ Mánesova Otrokovice', 51, 49.217188, 17.510897),
(67, 'ZŠ Hutník Veselí nad Moravou', 52, 48.95255, 17.395032),
(68, 'ZŠ Kollárova Veselí nad Moravou', 52, 48.948504, 17.387076),
(69, 'ZŠ Louka', 53, 48.914866, 17.490728),
(70, 'ZŠ Lipov', 54, 48.904949, 17.461065),
(71, 'Masarykova ZŠ Velká nad Veličkou', 55, 48.88106, 17.514764),
(72, 'ZŠ Bzenec', 56, 48.972026, 17.27928),
(73, 'ZŠ Moravský Písek', 57, 48.989489, 17.331987),
(74, 'ZŠ Strážnice', 58, 48.898208, 17.306833),
(75, 'ZŠ Vnorovy', 59, 48.927428, 17.346391),
(76, 'Církevní ZŠ Veselí nad Moravou', 52, 48.949638, 17.37928),
(77, 'ZŠ Blatnice pod svatým Antoníkem', 60, 48.944554, 17.467152),
(78, 'ZŠ Vracov', 61, 48.979731, 17.20853),
(79, 'ZŠ Jana Ámose Komenského Žeravice', 62, 49.023317, 17.235676),
(80, 'ZŠ Halenkovice', 63, 49.172054, 17.471204),
(81, 'ZŠ Kuželov', 64, 48.863002, 17.482793),
(82, 'ZŠ Střílky', 65, 49.139728, 17.213939),
(83, 'ZŠ Luhačovice', 66, 49.1008, 17.754087),
(84, 'Gymnázium Uherské Hradiště', 1, 49.070716, 17.463067);

-- --------------------------------------------------------

--
-- Struktura tabulky `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(2, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$doEI6XH5HZPSa/jUr1uHHeltheI0L0PundqC4NRt9gl6DbOzKcm9a', NULL, '{\"locale\":\"en\"}', '2020-09-29 16:54:13', '2020-09-29 16:54:13');

-- --------------------------------------------------------

--
-- Struktura tabulky `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `zpetna_vazba`
--

CREATE TABLE `zpetna_vazba` (
  `id` int(11) NOT NULL,
  `text` text COLLATE utf8_czech_ci NOT NULL,
  `datum` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Klíče pro tabulku `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Klíče pro tabulku `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Klíče pro tabulku `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Klíče pro tabulku `mesto`
--
ALTER TABLE `mesto`
  ADD PRIMARY KEY (`id_mesto`),
  ADD KEY `nazev` (`nazev_mesta`);

--
-- Klíče pro tabulku `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `obor`
--
ALTER TABLE `obor`
  ADD PRIMARY KEY (`id_obor`),
  ADD KEY `nazev` (`nazev_oboru`);

--
-- Klíče pro tabulku `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Klíče pro tabulku `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Klíče pro tabulku `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Klíče pro tabulku `pocet_prijatych`
--
ALTER TABLE `pocet_prijatych`
  ADD PRIMARY KEY (`id_pocet_prijatych`),
  ADD KEY `obor` (`obor`),
  ADD KEY `skola` (`skola`);

--
-- Klíče pro tabulku `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Klíče pro tabulku `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Klíče pro tabulku `skola`
--
ALTER TABLE `skola`
  ADD PRIMARY KEY (`id_skola`);

--
-- Klíče pro tabulku `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Klíče pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Klíče pro tabulku `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Klíče pro tabulku `zpetna_vazba`
--
ALTER TABLE `zpetna_vazba`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pro tabulku `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pro tabulku `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pro tabulku `mesto`
--
ALTER TABLE `mesto`
  MODIFY `id_mesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pro tabulku `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pro tabulku `obor`
--
ALTER TABLE `obor`
  MODIFY `id_obor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pro tabulku `pocet_prijatych`
--
ALTER TABLE `pocet_prijatych`
  MODIFY `id_pocet_prijatych` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pro tabulku `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pro tabulku `skola`
--
ALTER TABLE `skola`
  MODIFY `id_skola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT pro tabulku `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `zpetna_vazba`
--
ALTER TABLE `zpetna_vazba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Omezení pro tabulku `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Omezení pro tabulku `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Omezení pro tabulku `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Omezení pro tabulku `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
