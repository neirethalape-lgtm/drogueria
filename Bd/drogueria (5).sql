-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2025 a las 04:08:23
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
-- Base de datos: `drogueria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'Analg?sicos'),
(2, 'Antibi?ticos'),
(3, 'Vitaminas'),
(4, 'Suplementos'),
(5, 'Antiinflamatorios'),
(6, 'Antigripales'),
(7, 'Dermatol?gicos'),
(8, 'Cardiovasculares'),
(9, 'Gastrointestinales'),
(10, 'Pedi?tricos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallesalida`
--

CREATE TABLE `detallesalida` (
  `IDdelDetalle` int(11) NOT NULL,
  `IDfactura` int(11) DEFAULT NULL,
  `IDproducto` int(11) DEFAULT NULL,
  `cantidadDelProducto` int(20) DEFAULT NULL,
  `valortotal` int(30) DEFAULT NULL,
  `Valorunitario` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detallesalida`
--

INSERT INTO `detallesalida` (`IDdelDetalle`, `IDfactura`, `IDproducto`, `cantidadDelProducto`, `valortotal`, `Valorunitario`) VALUES
(1, 1, 1, 2, 2000, 1000),
(2, 1, 2, 1, 1500, 1500),
(3, 2, 3, 3, 9000, 3000),
(4, 2, 4, 2, 7000, 3500),
(5, 3, 5, 5, 12500, 2500),
(6, 3, 6, 4, 8000, 2000),
(7, 4, 7, 2, 6000, 3000),
(8, 4, 8, 6, 9000, 1500),
(9, 5, 9, 3, 7500, 2500),
(10, 5, 10, 1, 5000, 5000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion`
--

CREATE TABLE `devolucion` (
  `IDEntrada` int(30) NOT NULL,
  `FechaIngreso` varchar(20) DEFAULT NULL,
  `Cantidad` int(20) DEFAULT NULL,
  `IDProducto` int(20) DEFAULT NULL,
  `IDusuario` int(20) DEFAULT NULL,
  `IDfactura` int(20) DEFAULT NULL,
  `Descripcion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `devolucion`
--

INSERT INTO `devolucion` (`IDEntrada`, `FechaIngreso`, `Cantidad`, `IDProducto`, `IDusuario`, `IDfactura`, `Descripcion`) VALUES
(1, '2025-09-27', 5, 1, 1, 1, 'Paracetamol 500mg'),
(2, '2025-09-26', 10, 2, 2, 2, 'Ibuprofeno 400mg'),
(3, '2025-09-25', 15, 3, 3, 3, 'Amoxicilina 500mg'),
(4, '2025-09-24', 8, 4, 4, 4, 'Omeprazol 20mg'),
(5, '2025-09-23', 20, 5, 5, 5, 'Loratadina 10mg'),
(6, '2025-09-22', 12, 6, 6, 6, 'Metformina 850mg'),
(7, '2025-09-21', 7, 7, 7, 7, 'Losart?n 50mg'),
(8, '2025-09-20', 25, 8, 8, 8, 'Aspirina 100mg'),
(9, '2025-09-19', 18, 9, 9, 9, 'Diclofenaco 50mg'),
(10, '2025-09-18', 30, 10, 10, 10, 'Azitromicina 500mg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradaproductos`
--

CREATE TABLE `entradaproductos` (
  `IDentrada` int(11) NOT NULL,
  `fechaingreso` varchar(20) DEFAULT NULL,
  `Cantidad` int(20) DEFAULT NULL,
  `IDproducto` int(11) DEFAULT NULL,
  `IDusuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entradaproductos`
--

INSERT INTO `entradaproductos` (`IDentrada`, `fechaingreso`, `Cantidad`, `IDproducto`, `IDusuario`) VALUES
(1, '2025-09-27', 5, 1, 1),
(2, '2025-09-26', 10, 2, 2),
(3, '2025-09-25', 15, 3, 3),
(4, '2025-09-24', 8, 4, 4),
(5, '2025-09-23', 20, 5, 5),
(6, '2025-09-22', 12, 6, 6),
(7, '2025-09-21', 7, 7, 7),
(8, '2025-09-20', 25, 8, 8),
(9, '2025-09-19', 18, 9, 9),
(10, '2025-09-18', 30, 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion`
--

CREATE TABLE `facturacion` (
  `IDfactura` int(11) NOT NULL,
  `fechaFactura` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facturacion`
--

INSERT INTO `facturacion` (`IDfactura`, `fechaFactura`) VALUES
(1, '2025-09-27'),
(2, '2025-09-27'),
(3, '2025-09-27'),
(4, '2025-09-27'),
(5, '2025-09-27'),
(6, '2025-09-27'),
(7, '2025-09-27'),
(8, '2025-09-27'),
(9, '2025-09-27'),
(10, '2025-09-27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `IDproducto` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `preciounitario` decimal(10,2) DEFAULT NULL,
  `fechaDeVencimiento` date DEFAULT NULL,
  `requierformulamedica` enum('S?','No') NOT NULL,
  `nombreProducto` varchar(50) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`IDproducto`, `descripcion`, `preciounitario`, `fechaDeVencimiento`, `requierformulamedica`, `nombreProducto`, `foto`, `stock`) VALUES
(1, 'Medicamento para el dolor', 2500.00, '2026-12-31', 'No', 'Ibuprofeno', 'ibuprofeno.jpg', 15),
(2, 'Suplemento multivitam?nico', 8000.00, '2027-05-20', 'No', 'Centrum', 'centrum.jpg', 30),
(3, 'Medicamento controlado', 15000.00, '2026-11-15', 'No', 'Clonazepam', 'clonazepam.jpg', 8),
(4, 'Antibi?tico de amplio espectro', 12000.00, '2027-03-10', 'No', 'Amoxicilina', 'amoxicilina.jpg', 50),
(5, 'Jab?n dermatol?gico', 5500.00, '2027-08-01', 'No', 'Jabon Asepxia', 'asepxia.jpg', 22),
(6, 'Jarabe para la tos', 9000.00, '2026-10-10', 'No', 'Jarabe Bronquial', 'jarabe.jpg', 12),
(7, 'Soluci?n inyectable', 20000.00, '2026-09-05', 'S�', 'Diclofenaco', 'diclofenaco.jpg', 40),
(8, 'Medicamento pedi?trico', 6500.00, '2027-02-28', 'No', 'Paracetamol Infantil', 'paracetamol_infantil.jpg', 5),
(9, 'Suplemento proteico', 35000.00, '2028-01-15', 'No', 'Proteina Whey', 'whey.jpg', 18),
(10, 'Crema dermatol?gica', 18000.00, '2027-06-12', 'No', 'Crema Acn?', 'crema_acne.jpg', 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades_medida`
--

CREATE TABLE `unidades_medida` (
  `id_unidad` int(11) NOT NULL,
  `nombre_unidad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `unidades_medida`
--

INSERT INTO `unidades_medida` (`id_unidad`, `nombre_unidad`) VALUES
(1, 'Tableta'),
(2, 'C?psula'),
(3, 'Ampolla'),
(4, 'Frasco'),
(5, 'Tubo'),
(6, 'Sobre'),
(7, 'Gotas'),
(8, 'Jarabe'),
(9, 'Crema'),
(10, 'Unidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IDusuario` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `CorreoElectronico` varchar(50) DEFAULT NULL,
  `TipoDocum` varchar(10) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Contrasena` varchar(50) DEFAULT NULL,
  `Rol` varchar(40) DEFAULT NULL,
  `NumeroDocumento` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IDusuario`, `Nombre`, `Telefono`, `CorreoElectronico`, `TipoDocum`, `Direccion`, `Contrasena`, `Rol`, `NumeroDocumento`) VALUES
(1, 'Juan P?rez', '3104567890', 'juanperez@example.com', 'CC', 'Calle 123 #45-67', 'clave123', 'Administrador', 1234567890),
(2, 'Mar?a L?pez', '3209876543', 'marialopez@example.com', 'TI', 'Carrera 45 #12-34', 'maria2025', 'Usuario', 987654321),
(3, 'Carlos G?mez', '3001122334', 'carlosgomez@example.com', 'CC', 'Av. Siempre Viva 742', 'carlos321', 'Usuario', 1122334455),
(4, 'Laura Mart?nez', '3114455667', 'lauram@example.com', 'CC', 'Calle Falsa 123', 'lauraPass', 'Usuario', 5566778899),
(5, 'Andr?s Torres', '3157788990', 'andrest@example.com', 'CE', 'Transversal 10 #20-30', 'andresT22', 'Usuario', 3344556677),
(6, 'Paula Ram?rez', '3129988776', 'paular@example.com', 'CC', 'Diagonal 67 #45-89', 'paulaR99', 'Administrador', 7788990011),
(7, 'Felipe Rojas', '3002233445', 'feliper@example.com', 'CC', 'Cra. 50 #23-56', 'felipe123', 'Usuario', 9900112233),
(8, 'Diana Castro', '3146677889', 'dianac@example.com', 'TI', 'Cl. 80 #45-12', 'dianaPass', 'Usuario', 1122446688),
(9, 'Miguel ?ngel', '3195566778', 'miguelA@example.com', 'CC', 'Cl. 12 #9-87', 'miguelA77', 'Usuario', 1231231234),
(10, 'Camila S?nchez', '3174433221', 'camilas@example.com', 'CE', 'Cl. 90 #10-45', 'camilaS11', 'Usuario', 9988776655);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `detallesalida`
--
ALTER TABLE `detallesalida`
  ADD PRIMARY KEY (`IDdelDetalle`),
  ADD KEY `fk_factura` (`IDfactura`),
  ADD KEY `fk_producto` (`IDproducto`);

--
-- Indices de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD PRIMARY KEY (`IDEntrada`),
  ADD KEY `fk_devolucion_producto` (`IDProducto`),
  ADD KEY `fk_devolucion_usuario` (`IDusuario`),
  ADD KEY `fk_devolucion_factura` (`IDfactura`);

--
-- Indices de la tabla `entradaproductos`
--
ALTER TABLE `entradaproductos`
  ADD PRIMARY KEY (`IDentrada`),
  ADD KEY `fk_productoEntrada` (`IDproducto`),
  ADD KEY `fk_usuarioEntrada` (`IDusuario`);

--
-- Indices de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD PRIMARY KEY (`IDfactura`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`IDproducto`);

--
-- Indices de la tabla `unidades_medida`
--
ALTER TABLE `unidades_medida`
  ADD PRIMARY KEY (`id_unidad`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IDusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `detallesalida`
--
ALTER TABLE `detallesalida`
  MODIFY `IDdelDetalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  MODIFY `IDEntrada` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `entradaproductos`
--
ALTER TABLE `entradaproductos`
  MODIFY `IDentrada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  MODIFY `IDfactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `unidades_medida`
--
ALTER TABLE `unidades_medida`
  MODIFY `id_unidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallesalida`
--
ALTER TABLE `detallesalida`
  ADD CONSTRAINT `fk_factura` FOREIGN KEY (`IDfactura`) REFERENCES `facturacion` (`IDfactura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_producto` FOREIGN KEY (`IDproducto`) REFERENCES `productos` (`IDproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD CONSTRAINT `fk_devolucion_factura` FOREIGN KEY (`IDfactura`) REFERENCES `facturacion` (`IDfactura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_devolucion_producto` FOREIGN KEY (`IDProducto`) REFERENCES `productos` (`IDproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_devolucion_usuario` FOREIGN KEY (`IDusuario`) REFERENCES `usuario` (`IDusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `entradaproductos`
--
ALTER TABLE `entradaproductos`
  ADD CONSTRAINT `fk_productoEntrada` FOREIGN KEY (`IDproducto`) REFERENCES `productos` (`IDproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuarioEntrada` FOREIGN KEY (`IDusuario`) REFERENCES `usuario` (`IDusuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
