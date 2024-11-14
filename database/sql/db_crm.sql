-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2024 a las 05:04:48
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crm_erp_admin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `razon_social` varchar(255) DEFAULT NULL,
  `client_segment_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `celular` varchar(25) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `type_document` varchar(150) DEFAULT NULL,
  `n_document` varchar(8) DEFAULT NULL,
  `cuit` varchar(13) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL,
  `ubigeo_provincia` varchar(25) DEFAULT NULL,
  `ubigeo_departamento` varchar(25) DEFAULT NULL,
  `ubigeo_localidad` varchar(25) DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `localidad` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `code`, `surname`, `name`, `razon_social`, `client_segment_id`, `phone`, `celular`, `email`, `type_document`, `n_document`, `cuit`, `address`, `state`, `ubigeo_provincia`, `ubigeo_departamento`, `ubigeo_localidad`, `provincia`, `departamento`, `localidad`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '00A1', 'LAMAS', 'SANTIAGO', 'TACITA DE PLATA', 6, NULL, '3884321268', NULL, NULL, NULL, '20-13999984-4', 'URDININEA 278', 1, '10', '1010', '101019', 'JUJUY', 'DR. MANUEL BELGRANO', 'SAN SALVADOR DE JUJUY', '2024-11-13 17:27:08', '2024-11-14 03:38:49', NULL),
(2, '46', 'CAMPANILE', 'WALTER', 'PRONTO CUCCINA', 6, NULL, '3884614000', NULL, NULL, NULL, '23256438429', 'TTE TUCO ESQUINA DAVILA 896', 1, '10', '1010', '101019', 'JUJUY', 'DR. MANUEL BELGRANO', 'SAN SALVADOR DE JUJUY', '2024-11-13 17:27:08', '2024-11-13 17:27:08', NULL),
(3, '1453', 'LAGORIA', 'HECTOR ', 'TAZ', 6, NULL, '3885896179', NULL, NULL, NULL, '20235810175', 'Alvear', 1, '10', '1010', '101019', 'JUJUY', 'DR. MANUEL BELGRANO', 'SAN SALVADOR DE JUJUY', '2024-11-13 17:27:08', '2024-11-13 17:27:08', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client_segments`
--

CREATE TABLE `client_segments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `client_segments`
--

INSERT INTO `client_segments` (`id`, `name`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'MAYORISTA', 1, '2024-10-07 21:54:57', '2024-10-07 21:54:57', NULL),
(2, 'MINORISTA', 1, '2024-10-07 21:55:07', '2024-10-07 21:55:07', NULL),
(3, 'EMPRESA', 1, '2024-10-08 00:15:46', '2024-10-08 00:15:46', NULL),
(5, 'CONS/FINAL', 1, '2024-10-08 00:15:46', NULL, NULL),
(6, 'RESPONSABLE INSCRIPTO', 1, '2024-11-13 17:26:59', '2024-11-13 17:26:59', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee_functions`
--

CREATE TABLE `employee_functions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `employee_functions`
--

INSERT INTO `employee_functions` (`id`, `name`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'contador', 1, '2024-09-28 13:34:00', '2024-09-28 13:34:00', NULL),
(2, 'contador_B', 1, '2024-09-28 13:34:20', '2024-09-28 16:46:21', '2024-09-28 16:46:21'),
(3, 'contador_B', 2, '2024-09-28 13:47:26', '2024-09-28 13:47:26', NULL),
(4, 'repartidor', 1, '2024-09-30 20:12:02', '2024-09-30 20:12:02', NULL),
(5, 'Administrador', 1, '2024-09-30 21:10:56', '2024-09-30 21:10:56', NULL),
(6, 'contador Juniors', 1, '2024-09-30 21:14:59', '2024-09-30 21:14:59', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `razon_social` varchar(255) NOT NULL,
  `cuit` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `razon_social`, `cuit`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pollería Torrejón Central', '20-25698896-2', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_22_223636_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 3),
(7, 'App\\Models\\User', 2),
(10, 'App\\Models\\User', 30),
(11, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'register_role', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(2, 'edit_role', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(3, 'delete_role', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(4, 'register_user', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(5, 'edit_user', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(6, 'delete_user', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(7, 'register_product', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(8, 'edit_product', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(9, 'delete_product', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(10, 'show_wallet_price_product', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(11, 'register_wallet_price_product', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(12, 'edit_wallet_price_product', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(13, 'delete_wallet_price_product', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(14, 'register_clientes', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(15, 'edit_clientes', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(16, 'delete_clientes', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(17, 'valid_payments', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(18, 'reports_caja', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(19, 'record_contract_process', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(20, 'egreso', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(21, 'ingreso', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(22, 'close_caja', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(23, 'register_proforma', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(24, 'edit_proforma', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(25, 'delete_proforma', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(26, 'cronograma', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(27, 'comisiones', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(28, 'register_compra', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(29, 'edit_compra', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(30, 'delete_compra', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(31, 'register_transporte', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(32, 'edit_transporte', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(33, 'delete_transporte', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(34, 'despacho', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(35, 'movimientos', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(36, 'kardex', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super-Admin', 'api', '2024-10-14 22:39:05', '2024-10-14 22:39:05'),
(4, 'Repartidor', 'api', '2024-10-14 23:35:33', '2024-10-15 02:18:38'),
(5, 'Cobrador', 'api', '2024-10-14 23:36:03', '2024-10-15 02:21:11'),
(7, 'Caja', 'api', '2024-10-14 23:40:01', '2024-10-15 02:14:15'),
(8, 'Contable', 'api', '2024-10-14 23:43:06', '2024-10-14 23:43:06'),
(9, 'Logística', 'api', '2024-10-14 23:46:05', '2024-10-14 23:46:05'),
(10, 'Cámara', 'api', '2024-10-14 23:48:49', '2024-10-15 00:16:41'),
(11, 'Vendedor', 'api', '2024-10-15 02:20:37', '2024-10-15 02:20:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 4),
(2, 4),
(3, 4),
(7, 8),
(7, 11),
(8, 8),
(8, 11),
(9, 8),
(10, 8),
(11, 8),
(12, 8),
(13, 8),
(14, 5),
(14, 8),
(15, 5),
(15, 8),
(16, 8),
(17, 7),
(17, 8),
(18, 7),
(18, 8),
(19, 7),
(19, 8),
(20, 7),
(20, 8),
(21, 7),
(21, 8),
(22, 7),
(22, 8),
(23, 5),
(24, 5),
(25, 5),
(27, 4),
(27, 5),
(27, 8),
(28, 8),
(29, 8),
(30, 8),
(34, 9),
(34, 10),
(35, 5),
(35, 8),
(35, 10),
(36, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `ubigeo_provincia` varchar(25) DEFAULT NULL,
  `ubigeo_departamento` varchar(25) DEFAULT NULL,
  `ubigeo_localidad` varchar(25) DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `localidad` varchar(100) DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `zona_id` bigint(20) UNSIGNED DEFAULT NULL,
  `state` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id`, `code`, `nombre`, `direccion`, `telefono`, `celular`, `email`, `referencia`, `ubigeo_provincia`, `ubigeo_departamento`, `ubigeo_localidad`, `provincia`, `departamento`, `localidad`, `client_id`, `zona_id`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '123', 'SUCURAL SAN PEDRITO', 'AV ALTE. BROWN 123', '38859659659', NULL, NULL, 'ENTRE MAIPU, CERCA YPF', '1', '1', '1', 'JUJUY', 'PALPALA', 'RIO BLANCO', 1, 1, 1, '2024-10-07 21:38:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `document` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `date_entry` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_user` tinyint(1) NOT NULL DEFAULT 0,
  `jobcode` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `cell` varchar(15) DEFAULT NULL,
  `code` bigint(20) UNSIGNED NOT NULL COMMENT '\\n',
  `empresa_id` bigint(20) UNSIGNED DEFAULT 1,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `document`, `email`, `email_verified_at`, `password`, `date_entry`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `is_user`, `jobcode`, `address`, `phone`, `cell`, `code`, `empresa_id`, `role_id`) VALUES
(1, 'Super Admin', '', '', 'super_admin_crm@gmail.com', '2024-10-10 23:09:45', '$2y$12$jRxOvk4D.1a2xG.zxmZ4yuUNOFDtBHhU95LgzUZlO9tPb6eESUwYK', '2024-10-10 23:09:45', 'JIOFg0Gc4V', '2024-10-10 23:09:45', '2024-10-10 23:09:45', NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1),
(29, 'JORGE CAMILO', 'CARDOZO', '88559935', 'jcardozo@midominio.com.ar', NULL, '$2y$12$KXLL9NDcPyX6naStysr8DenZ3YLlPG0uxmHhBxDNmU1WjUYmcMLlu', '2024-10-10 23:09:45', NULL, '2024-10-31 00:58:30', '2024-11-01 01:05:56', NULL, 1, NULL, NULL, NULL, NULL, 1054, 1, 4),
(30, 'alfredo andres', 'mamani', '27493492', 'dom@do.edu.ar', NULL, '$2y$12$dO8/h6cplv8JpEAaSm4LzOoPAuqoIIa9cI1RN4dLfVDBjl61LdHGm', '2024-11-07 03:00:00', NULL, '2024-11-07 04:24:37', '2024-11-07 04:24:37', NULL, 1, '20256989865', NULL, '234324324', '2343243243', 1234, 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`id`, `name`, `location`, `description`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'zona A', 'zona centro', 'esta es una descripcion', 1, '2024-10-08 00:38:39', '2024-10-08 00:38:39', NULL),
(2, 'zona B', 'zona centro', NULL, 2, '2024-10-08 00:39:38', '2024-10-08 00:39:38', NULL),
(3, 'zona C', 'zona centro', NULL, 1, '2024-10-08 00:40:13', '2024-10-08 00:40:13', NULL),
(4, 'zona D', 'Barrio El  Chingo', NULL, 1, '2024-10-08 01:51:54', '2024-10-08 01:51:54', NULL),
(5, 'zona E', 'Barrio Punta Diamante', 'Entre calles 1 y2', 1, '2024-10-08 01:52:19', '2024-10-08 01:52:19', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `n_document` (`n_document`),
  ADD UNIQUE KEY `cuit` (`cuit`);

--
-- Indices de la tabla `client_segments`
--
ALTER TABLE `client_segments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `employee_functions`
--
ALTER TABLE `employee_functions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `client_segments`
--
ALTER TABLE `client_segments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `employee_functions`
--
ALTER TABLE `employee_functions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
