-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-09-2026 a las 15:34:35
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gilmore_girls`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id_personaje` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `actor` varchar(50) NOT NULL,
  `tipo` enum('principal','secundario') NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id_personaje`, `nombre`, `actor`, `tipo`, `descripcion`, `imagen`) VALUES
(1, 'Lorelai Gilmore', 'Lauren Graham', 'principal', 'Lorelai Gilmore es un personaje principal de “Gilmore Girls”. Es interpretada por Lauren Graham.', 'lorelai.webp'),
(2, 'Rory Gilmore', 'Alexis Bledel', 'principal', 'Rory Gilmore es una de las dos protagonistas de “Gilmore Girls”. Es interpretada por Alexis Bledel.', 'rory.jpg'),
(3, 'Luke Danes', 'Scott Patterson', 'secundario', 'Interpretado por Scott Patterson.', 'luke.jpg'),
(4, 'Sookie St. James', 'Melissa McCarthy', 'secundario', 'Interpretada por Melissa McCarthy.', 'sookie.jpg'),
(5, 'Lane Kim', 'Keiko Agena', 'secundario', 'Interpretada por Keiko Agena.', 'lane.jpg'),
(6, 'Michel Gerard', 'Yanic Truesdale', 'secundario', 'Interpretado por Yanic Truesdale.', 'michele.jpg'),
(7, 'Emily y Richard Gilmore', 'Kelly Bishop y Edward Herrmann', 'secundario', 'Interpretados por Kelly Bishop y Edward Herrmann.', 'emily-richard.jpg'),
(8, 'Dean Forester', 'Jared Padalecki', 'secundario', 'Fue interpretado por Jared Padalecki.', 'dean.jpg'),
(9, 'Jess Mariano', 'Milo Ventimiglia', 'secundario', 'Interpretado por Milo Ventimiglia.', 'jess.jpg'),
(10, 'Paris Geller', 'Liza Weil', 'secundario', 'Interpretada por Liza Weil.', 'paris.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `tipo_usuario` enum('usuario','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `email`, `contrasena`, `tipo_usuario`) VALUES
(1, 'Sofia', 'sofia@gmail.com', 'sofia123', 'usuario'),
(2, 'Valentina', 'valentina@gmail.com', 'vale456', 'usuario'),
(3, 'Camila', 'camila@gmail.com', 'cami789', 'usuario'),
(4, 'Martina', 'martina@gmail.com', 'martu123', 'usuario'),
(5, 'Lucia', 'lucia@gmail.com', 'luci456', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id_personaje`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id_personaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
