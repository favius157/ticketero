-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-08-2022 a las 16:39:03
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ticketero_irala_vigencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atencion`
--

CREATE TABLE `atencion` (
  `id` int(11) NOT NULL,
  `turno` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `idCaja` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `atendido` int(11) NOT NULL,
  `fechaAtencion` datetime NOT NULL,
  `idTurno` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `atencion`
--

INSERT INTO `atencion` (`id`, `turno`, `idCaja`, `idUsuario`, `atendido`, `fechaAtencion`, `idTurno`) VALUES
(14937, 'PREF-001', 1, 60, 0, '2022-07-14 10:33:57', 15636),
(14938, 'PREF-002', 1, 60, 0, '2022-07-14 10:34:03', 15639),
(14939, 'VIG-001', 3, 60, 0, '2022-07-14 10:34:38', 15637),
(14940, 'VIG-002', 3, 60, 0, '2022-07-14 10:35:02', 15638),
(14941, 'PREF-003', 1, 60, 0, '2022-07-14 13:58:06', 15641),
(14942, 'PREF-004', 1, 60, 0, '2022-07-14 13:59:08', 15642),
(14943, 'VIG-003', 3, 61, 0, '2022-07-14 14:01:45', 15640);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE `cajas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `fecha_de_registro` datetime NOT NULL,
  `idServicio` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cajas`
--

INSERT INTO `cajas` (`id`, `nombre`, `idUsuario`, `fecha_de_registro`, `idServicio`) VALUES
(1, 'PREF', 29, '0000-00-00 00:00:00', 2),
(2, 'VIG 2', 61, '0000-00-00 00:00:00', 1),
(3, 'VIG 3', 18, '0000-00-00 00:00:00', 1),
(4, 'VIG 4', 22, '0000-00-00 00:00:00', 1),
(999, 'ADM', 0, '2021-06-28 14:08:56', 999);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_empresa`
--

CREATE TABLE `info_empresa` (
  `id` int(11) NOT NULL,
  `logo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_actualizacion` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `info_empresa`
--

INSERT INTO `info_empresa` (`id`, `logo`, `nombre`, `direccion`, `telefono`, `correo`, `fecha_actualizacion`) VALUES
(1, 'img/logo1.png', 'Caja Nacional de Salud', 'Av principal no 23', '12-34-56-78', 'banco@gmail.com', '2021-01-27 17:28:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `noticia` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_servicio`
--

CREATE TABLE `tbl_servicio` (
  `id` int(11) NOT NULL,
  `nombreServicio` varchar(250) NOT NULL,
  `sigla` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_subservicio`
--

CREATE TABLE `tbl_subservicio` (
  `id` int(11) NOT NULL,
  `idServicio` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `sigla` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE `turnos` (
  `id` int(11) NOT NULL,
  `turno` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `atendido` int(11) NOT NULL,
  `fechaRegistro` datetime NOT NULL,
  `idSubservicio` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `turnos`
--

INSERT INTO `turnos` (`id`, `turno`, `atendido`, `fechaRegistro`, `idSubservicio`) VALUES
(15634, 'VIG-001', 3, '2022-06-23 09:06:05', 1),
(15635, 'VIG-002', 3, '2022-06-23 09:28:13', 1),
(15636, 'PREF-001', 1, '2022-07-14 10:06:48', 10),
(15637, 'VIG-001', 3, '2022-07-14 10:06:50', 1),
(15638, 'VIG-002', 3, '2022-07-14 10:06:51', 1),
(15639, 'PREF-002', 1, '2022-07-14 10:06:53', 10),
(15640, 'VIG-003', 3, '2022-07-14 13:55:11', 1),
(15641, 'PREF-003', 1, '2022-07-14 13:55:14', 10),
(15642, 'PREF-004', 1, '2022-07-14 13:55:28', 10),
(15643, 'VIG-004', 0, '2022-07-14 13:55:39', 1),
(15644, 'VIG-005', 0, '2022-07-14 14:44:12', 1),
(15645, 'VIG-006', 0, '2022-07-14 14:44:39', 1),
(15646, 'VIG-007', 0, '2022-07-14 14:45:15', 1),
(15647, 'VIG-008', 0, '2022-07-14 14:45:24', 1),
(15648, 'VIG-009', 0, '2022-07-14 14:45:26', 1),
(15649, 'VIG-010', 0, '2022-07-14 14:45:27', 1),
(15650, 'VIG-011', 0, '2022-07-14 14:45:28', 1),
(15651, 'VIG-012', 0, '2022-07-14 14:45:29', 1),
(15652, 'VIG-013', 0, '2022-07-14 14:45:30', 1),
(15653, 'VIG-014', 0, '2022-07-14 14:45:31', 1),
(15654, 'VIG-015', 0, '2022-07-14 14:45:32', 1),
(15655, 'VIG-016', 0, '2022-07-14 14:45:33', 1),
(15656, 'VIG-017', 0, '2022-07-14 14:45:33', 1),
(15657, 'VIG-018', 0, '2022-07-14 14:45:34', 1),
(15658, 'VIG-019', 0, '2022-07-14 14:45:36', 1),
(15659, 'VIG-020', 0, '2022-07-14 14:53:11', 1),
(15660, 'VIG-021', 0, '2022-07-14 15:03:41', 1),
(15661, 'VIG-022', 0, '2022-07-14 15:03:45', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `idCaja` int(11) NOT NULL,
  `fecha_alta` datetime NOT NULL,
  `fecha_actualizacion` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `idCaja`, `fecha_alta`, `fecha_actualizacion`) VALUES
(59, 'favius', '0c65ae32d8f1ed35a5b4e98e4ddcb245', 999, '2022-01-18 09:48:51', '2022-01-18 09:48:51'),
(60, 'usuario', 'f8032d5cae3de20fcec887f395ec9a6a', 4, '2022-06-23 09:30:28', '2022-06-23 09:30:28'),
(61, 'usuario2', '2fb6c8d2f3842a5ceaa9bf320e649ff0', 3, '2022-07-14 10:59:09', '2022-07-14 10:59:09');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atencion`
--
ALTER TABLE `atencion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `info_empresa`
--
ALTER TABLE `info_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_servicio`
--
ALTER TABLE `tbl_servicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_subservicio`
--
ALTER TABLE `tbl_subservicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atencion`
--
ALTER TABLE `atencion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14944;

--
-- AUTO_INCREMENT de la tabla `cajas`
--
ALTER TABLE `cajas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT de la tabla `info_empresa`
--
ALTER TABLE `info_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_servicio`
--
ALTER TABLE `tbl_servicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT de la tabla `tbl_subservicio`
--
ALTER TABLE `tbl_subservicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `turnos`
--
ALTER TABLE `turnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15662;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
