-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-07-2025 a las 19:49:05
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
-- Base de datos: `shoplite`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id_Articulo` int(11) NOT NULL,
  `nombre` char(100) NOT NULL,
  `precio` double NOT NULL,
  `stock` int(11) NOT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id_Articulo`, `nombre`, `precio`, `stock`, `estado`) VALUES
(2, 'Auriculares Bluetooth', 49.99, 20, b'1'),
(3, 'Parlante', 4, 20, b'1'),
(4, 'Pan', 2000, 1000, b'1'),
(5, 'Libro', 2122, 33, b'1'),
(6, 'Caramelo', 22, 1000, b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallespedidos`
--

CREATE TABLE `detallespedidos` (
  `id_pedido` int(11) NOT NULL,
  `id_Articulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detallespedidos`
--

INSERT INTO `detallespedidos` (`id_pedido`, `id_Articulo`, `cantidad`, `precio_unitario`) VALUES
(4, 2, 1, 49.99),
(4, 3, 1, 4),
(5, 2, 2, 49.99),
(5, 3, 1, 4),
(6, 2, 1, 49.99),
(7, 2, 1, 49.99),
(49, 2, 1, 49.99),
(50, 2, 1, 49.99),
(50, 3, 1, 4),
(50, 4, 1, 34),
(50, 5, 1, 2122),
(51, 2, 1, 49.99),
(52, 2, 1, 49.99),
(52, 3, 1, 4),
(52, 4, 1, 34),
(53, 2, 1, 49.99),
(53, 5, 1, 2122),
(54, 2, 1, 49.99),
(54, 4, 1, 2000),
(54, 6, 1, 22),
(55, 2, 1, 49.99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `estado` binary(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `id_usuario`, `fecha`, `estado`) VALUES
(2, 3, '2025-07-01', 0x31),
(3, 14, '2025-07-07', 0x31),
(4, 10, '2025-07-06', 0x30),
(5, 15, '2025-07-07', 0x31),
(6, 16, '2025-07-07', 0x31),
(7, 10, '2025-07-07', 0x31),
(8, 10, '2025-07-07', 0x31),
(9, 10, '2025-07-07', 0x31),
(10, 10, '2025-07-07', 0x31),
(11, 10, '2025-07-07', 0x31),
(12, 10, '2025-07-07', 0x31),
(13, 10, '2025-07-07', 0x31),
(14, 10, '2025-07-07', 0x31),
(15, 10, '2025-07-07', 0x31),
(16, 10, '2025-07-07', 0x31),
(17, 10, '2025-07-09', 0x31),
(18, 10, '2025-07-09', 0x31),
(19, 10, '2025-07-09', 0x31),
(20, 10, '2025-07-09', 0x31),
(21, 10, '2025-07-09', 0x31),
(22, 10, '2025-07-09', 0x31),
(23, 10, '2025-07-09', 0x31),
(24, 10, '2025-07-09', 0x31),
(25, 10, '2025-07-09', 0x31),
(26, 10, '2025-07-09', 0x31),
(27, 10, '2025-07-09', 0x31),
(28, 10, '2025-07-09', 0x31),
(29, 10, '2025-07-09', 0x31),
(30, 10, '2025-07-09', 0x31),
(31, 10, '2025-07-09', 0x31),
(32, 10, '2025-07-09', 0x31),
(33, 10, '2025-07-09', 0x31),
(34, 10, '2025-07-09', 0x31),
(35, 10, '2025-07-09', 0x31),
(36, 10, '2025-07-09', 0x31),
(37, 10, '2025-07-09', 0x31),
(38, 10, '2025-07-09', 0x31),
(39, 10, '2025-07-09', 0x31),
(40, 10, '2025-07-09', 0x31),
(41, 10, '2025-07-10', 0x31),
(42, 10, '2025-07-10', 0x31),
(43, 10, '2025-07-10', 0x31),
(44, 10, '2025-07-10', 0x31),
(45, 10, '2025-07-10', 0x31),
(46, 10, '2025-07-10', 0x31),
(47, 10, '2025-07-10', 0x31),
(48, 10, '2025-07-10', 0x31),
(49, 10, '2025-07-10', 0x31),
(50, 10, '2025-07-10', 0x31),
(51, 16, '2025-07-10', 0x31),
(52, 18, '2025-07-10', 0x31),
(53, 10, '2025-07-10', 0x31),
(54, 19, '2025-07-08', 0x31),
(55, 20, '2025-07-10', 0x31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposusuarios`
--

CREATE TABLE `tiposusuarios` (
  `id_tipo_usuario` int(11) NOT NULL,
  `nombre` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tiposusuarios`
--

INSERT INTO `tiposusuarios` (`id_tipo_usuario`, `nombre`) VALUES
(1, 'Cliente'),
(2, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `clave` char(6) NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  `estado` binary(1) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `dni` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre_usuario`, `clave`, `id_tipo_usuario`, `estado`, `direccion`, `dni`, `telefono`) VALUES
(3, 'Jose', '123456', 1, 0x31, 'calle 123', '12345678', '12341234'),
(10, 'Sabrina', '222222', 1, 0x31, 'calle 123', '36614981', '1234567899'),
(13, 'Juan', '123456', 1, 0x31, 'calle 123', '22121211', '12341234'),
(14, 'JoseLuis', '123321', 1, 0x31, '', '12122121', ''),
(15, 'Roco', '444444', 1, 0x31, '', '84027563', ''),
(16, 'Jorge', 'juan99', 1, 0x31, 'calle 2222', '00001122', '2222277777'),
(17, 'Luis', 'Luis12', 2, 0x31, 'calle2211', '10026315', '2212121212'),
(18, 'Andrea', 'pinoch', 1, 0x31, '', '17422681', ''),
(19, 'Blanca', 'hhhddd', 1, 0x31, '', '11403899', ''),
(20, 'Xina', '12kdhd', 1, 0x31, 'juan de lavalle 9760', '12332189', '5555555555');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id_Articulo`);

--
-- Indices de la tabla `detallespedidos`
--
ALTER TABLE `detallespedidos`
  ADD PRIMARY KEY (`id_pedido`,`id_Articulo`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_producto` (`id_Articulo`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `tiposusuarios`
--
ALTER TABLE `tiposusuarios`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `UQ_usuarios_dni` (`dni`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id_Articulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detallespedidos`
--
ALTER TABLE `detallespedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `tiposusuarios`
--
ALTER TABLE `tiposusuarios`
  MODIFY `id_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallespedidos`
--
ALTER TABLE `detallespedidos`
  ADD CONSTRAINT `detallespedidos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detallespedidos_ibfk_2` FOREIGN KEY (`id_Articulo`) REFERENCES `articulos` (`id_Articulo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tiposusuarios` (`id_tipo_usuario`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
