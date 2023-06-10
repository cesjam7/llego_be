-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2023 a las 03:16:18
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `llego_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `direccion` text NOT NULL,
  `referencia` text NOT NULL,
  `organizador` int(11) NOT NULL,
  `requisitos` text NOT NULL,
  `motivo` varchar(250) NOT NULL,
  `costo` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `nombre`, `descripcion`, `fecha`, `hora`, `direccion`, `referencia`, `organizador`, `requisitos`, `motivo`, `costo`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'Test', '2023-06-28', '20:00:00', 'Av. Casa 123', 'Al costado del vecino', 1, 'Ninguno', 'Fiesta', 25, '2023-06-10 05:13:19', '2023-06-10 05:13:19'),
(2, 'Fiesta de Angela', 'Test', '2023-06-28', '20:00:00', 'Av. Casa 123', 'Al costado del vecino', 1, 'Ninguno', 'Fiesta', 25, '2023-06-10 06:00:30', '2023-06-10 06:00:30'),
(3, 'Pedida de mano de Joseph', 'Test', '2023-06-28', '20:00:00', 'Av. Casa 123', 'Al costado del vecino', 1, 'Ninguno', 'Fiesta', 25, '2023-06-10 06:00:43', '2023-06-10 06:00:43'),
(4, 'Gatada de Lucho', 'Test', '2023-06-28', '20:00:00', 'Av. Casa 123', 'Al costado del vecino', 1, 'Ninguno', 'Fiesta', 25, '2023-06-10 06:00:57', '2023-06-10 06:00:57'),
(5, 'Reunión tranquila de Anny', 'Test', '2023-06-28', '20:00:00', 'Av. Casa 123', 'Al costado del vecino', 1, 'Ninguno', 'Fiesta', 25, '2023-06-10 06:01:10', '2023-06-10 06:01:10'),
(6, 'Juerga de Potenciano', 'Test', '2023-06-28', '20:00:00', 'Av. Casa 123', 'Al costado del vecino', 1, 'Ninguno', 'Fiesta', 25, '2023-06-10 06:01:23', '2023-06-10 06:01:23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
