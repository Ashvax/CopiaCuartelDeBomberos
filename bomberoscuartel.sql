-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2023 a las 17:04:34
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bomberoscuartel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bombero`
--

CREATE TABLE `bombero` (
  `id_bombero` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` int(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `grupo_sanguineo` varchar(4) NOT NULL,
  `id_brigada` int(11) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `nombre_clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bombero`
--

INSERT INTO `bombero` (`id_bombero`, `nombre`, `apellido`, `dni`, `fecha_nacimiento`, `grupo_sanguineo`, `id_brigada`, `celular`, `estado`, `nombre_clave`) VALUES
(1, 'Gilberto', 'Reynoso', 28429824, '1990-05-15', 'A+', 2, '12321313', 1, 'Gama'),
(2, 'Carla', 'Ohanian', 78231231, '1995-03-10', 'A+', 3, '31234213', 1, 'Beta'),
(3, 'Santo', 'Domingo', 5156486, '1996-05-13', 'A+', 2, '23112412', 1, 'Omega'),
(6, 'Walter', 'Fernandez', 287274, '1990-05-15', 'A+', 2, '22223333', 1, 'Alfa'),
(7, 'Maria', 'Velazquez', 1231111578, '1990-05-15', 'A+', 3, '2231231231', 1, 'Zetta'),
(20, 'Mario', 'Neta', 123123, '1996-07-04', 'AB-', 9, '223-131-432', 1, 'Omega'),
(21, 'Julio', 'Ferrreyra', 42569810, '2023-10-25', 'B+', 4, '26456-23123', 1, 'Omega'),
(22, 'Lola', 'Mendez', 274853874, '1996-10-10', 'B+', 7, '3123-123123-123', 1, 'Gama'),
(23, 'Natalia', 'Aguilar', 394234535, '1996-06-13', 'B-', 9, '3584396015', 1, 'Gama');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brigada`
--

CREATE TABLE `brigada` (
  `id_brigada` int(11) NOT NULL,
  `nombre_brigada` varchar(20) NOT NULL,
  `especialidad` varchar(30) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `id_cuartel` int(11) NOT NULL,
  `disponibilidad` tinyint(1) NOT NULL,
  `nombre_cuartel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `brigada`
--

INSERT INTO `brigada` (`id_brigada`, `nombre_brigada`, `especialidad`, `estado`, `id_cuartel`, `disponibilidad`, `nombre_cuartel`) VALUES
(2, 'Brigada Unidad de re', 'Rescate de Montaña', 1, 4, 1, 'Cuartel: Los Bomberi'),
(3, 'Brigada Beta', 'Prevencion', 1, 4, 1, 'Lo Mejore´'),
(4, 'Los Salvavidas', 'Incendios', 1, 4, 0, 'Cuartel: Los Bomberi'),
(5, 'Brigada Alfa', 'Rescate de Montaña', 1, 8, 1, 'Central Suroeste'),
(6, 'Brigada Central Sur', 'Rescate de Mascotas', 1, 2, 0, 'Central Sur'),
(7, 'Brigada Omega', 'Inundacion', 1, 6, 1, 'Cuartel Noreste'),
(9, 'Brigada Sureste', 'Incendio', 1, 3, 0, 'Cuartel Sureste');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuartel`
--

CREATE TABLE `cuartel` (
  `id_cuartel` int(11) NOT NULL,
  `nombre_cuartel` varchar(20) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `coord_X` double NOT NULL,
  `coord_Y` double NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuartel`
--

INSERT INTO `cuartel` (`id_cuartel`, `nombre_cuartel`, `direccion`, `coord_X`, `coord_Y`, `telefono`, `correo`, `estado`) VALUES
(1, 'Cuartel Central', 'Central de Bs As', 46, 78, '0800-333-1212', 'cuartelcentral02@gmail.com', 1),
(2, 'Voluntarios', 'El talar', 13.43, 15.34, '287045', 'cuartelgralvoluntarios@gmail.c', 1),
(3, 'Peaje', 'Peaje Santa Rosa', 11, 48, '475820', 'peajesantar@gmail.com', 1),
(4, 'Los Bomber', 'Goove ', 11, 31, '254680', 'groovebomber@gmail.com', 1),
(5, 'Fuerza Aerea', 'Avenida Fuerza Aerea', 67, 32, '26564894', 'fzaaerea@gmail.com', 1),
(6, ' Chacarita', 'Merlo', 12, 11, '28727463', 'chacamerlo@gmail.com', 1),
(7, 'Oriente', 'Estelar', 12, 32, '5824078', 'orienteestelar@gmail.com', 1),
(8, 'Arroyo Seco', 'Piedra Blanca', 212, 12, '1861234', 'cuartelarroyoseco@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siniestro`
--

CREATE TABLE `siniestro` (
  `id_siniestro` int(11) NOT NULL,
  `coord_X` double NOT NULL,
  `coord_Y` double NOT NULL,
  `fecha_siniestro` date NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `detalles` text NOT NULL,
  `id_brigada` int(11) DEFAULT NULL,
  `fecha_resolucion` date DEFAULT NULL,
  `calificacion` int(11) DEFAULT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `siniestro`
--

INSERT INTO `siniestro` (`id_siniestro`, `coord_X`, `coord_Y`, `fecha_siniestro`, `tipo`, `detalles`, `id_brigada`, `fecha_resolucion`, `calificacion`, `estado`) VALUES
(2, 22.54, 22.1, '2023-10-30', 'Rescate en Montaña', 'Derrumbe de montañas', 5, '2023-10-30', 7, 0),
(3, 23.31, 12.123, '2023-10-30', 'Derrumbe', 'inundacion de departamentos', 5, NULL, 9, 0),
(4, 43.34, 45.66, '2023-10-29', 'Incendio', 'bosque prendido fuego', NULL, '2023-10-29', 8, 0),
(5, 22.532, 54.14, '2023-10-29', 'Incendio', 'Derrumbe de montañas', NULL, '2023-10-29', 2, 0),
(6, 22.532, 54.14, '2023-10-26', 'Inundacion', 'Inundcion de un Rio cercano', NULL, NULL, 0, 0),
(7, 22.532, 54.14, '2023-10-26', 'Incendio', 'Derrumbe de montañas', NULL, NULL, 0, 0),
(8, 22.532, 54.14, '2023-10-20', 'Prevencion', 'Derrumbe de montañas', 3, NULL, NULL, 0),
(9, 22.532, 54.14, '2023-10-20', 'Prevencion', 'Derrumbe de montañas', NULL, NULL, NULL, 0),
(10, 22.532, 54.14, '2023-10-20', 'Rescate de Montaña', 'Derrumbe de montañas', NULL, NULL, NULL, 0),
(11, 14, 12, '2023-10-24', 'Rescate en Montaña', 'accidente', 5, '2023-10-24', 6, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bombero`
--
ALTER TABLE `bombero`
  ADD PRIMARY KEY (`id_bombero`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `codigo_brigada` (`id_brigada`);

--
-- Indices de la tabla `brigada`
--
ALTER TABLE `brigada`
  ADD PRIMARY KEY (`id_brigada`),
  ADD KEY `numero_cuartel` (`id_cuartel`);

--
-- Indices de la tabla `cuartel`
--
ALTER TABLE `cuartel`
  ADD PRIMARY KEY (`id_cuartel`);

--
-- Indices de la tabla `siniestro`
--
ALTER TABLE `siniestro`
  ADD PRIMARY KEY (`id_siniestro`),
  ADD KEY `codigo_brigada` (`id_brigada`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bombero`
--
ALTER TABLE `bombero`
  MODIFY `id_bombero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `brigada`
--
ALTER TABLE `brigada`
  MODIFY `id_brigada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cuartel`
--
ALTER TABLE `cuartel`
  MODIFY `id_cuartel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `siniestro`
--
ALTER TABLE `siniestro`
  MODIFY `id_siniestro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bombero`
--
ALTER TABLE `bombero`
  ADD CONSTRAINT `bombero_ibfk_1` FOREIGN KEY (`id_brigada`) REFERENCES `brigada` (`id_brigada`);

--
-- Filtros para la tabla `brigada`
--
ALTER TABLE `brigada`
  ADD CONSTRAINT `brigada_ibfk_1` FOREIGN KEY (`id_cuartel`) REFERENCES `cuartel` (`id_cuartel`);

--
-- Filtros para la tabla `siniestro`
--
ALTER TABLE `siniestro`
  ADD CONSTRAINT `siniestro_ibfk_1` FOREIGN KEY (`id_brigada`) REFERENCES `brigada` (`id_brigada`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
