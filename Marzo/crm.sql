-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-03-2017 a las 16:02:32
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enterprise`
--

CREATE TABLE `enterprise` (
  `id` int(11) NOT NULL,
  `nEmpresa` varchar(100) NOT NULL,
  `cif` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `poblacion` varchar(100) NOT NULL,
  `provincia` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telf` varchar(10) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `enterprise`
--

INSERT INTO `enterprise` (`id`, `nEmpresa`, `cif`, `direccion`, `cp`, `poblacion`, `provincia`, `email`, `telf`, `fecha_registro`) VALUES
(1, 'Pintogama S.L', 'G-67382737', 'Carrer del pi, 45', '08810', 'Canyelles', 'Barcelona', 'lalala@mooo.com', '789878765', '2017-02-24 17:43:21'),
(2, 'Pintogama S.L', 'G-67382737', 'Carrer del pi, 45', '08810', 'Canyelles', 'Barcelona', 'lalala@mooo.com', '789878765', '2017-02-24 17:44:11'),
(3, 'Empresa de ejemplo', 'G-33382777', 'Carrer badajoz del pi, 70', '08810', 'Canyelles', 'Barcelona', 'lalala@mooo.com', '789878765', '2017-02-24 17:46:58'),
(4, 'Pintogama S.L', 'G-67382737', 'Carrer del pi, 45', '08810', 'l\'hospitalet', 'Barcelona', 'lalala@mooo.com', '789878765', '2017-02-24 18:34:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `enterprise`
--
ALTER TABLE `enterprise`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `enterprise`
--
ALTER TABLE `enterprise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
