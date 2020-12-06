-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2020 a las 02:04:01
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventas`
--

CREATE TABLE `detalleventas` (
  `id` int(11) NOT NULL,
  `idProd` int(5) NOT NULL,
  `idVenta` int(5) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `precio` double NOT NULL,
  `subTotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

/* TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `existencia` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
*/
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `pass`, `nombre`) VALUES
(1, 'email@prueba.cl', 'e10adc3949ba59abbe56e057f20f883e', 'Matias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `idCli` int(5) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalleventas`
--
ALTER TABLE `detalleventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkIdProd` (`idProd`),
  ADD KEY `fkIdVenta` (`idVenta`);

--
-- Indices de la tabla `productos`
--
CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Codigo` varchar(20) NOT NULL,
  `Tipo` varchar(30) DEFAULT NULL,
  `Precio` varchar(45) NOT NULL,
  `Stock_Disponible` int(11) NOT NULL,
  `Estado` varchar(40) NOT NULL,
  `Material` varchar(45) NOT NULL,
  `Peso` varchar(45) DEFAULT NULL,
  `Tamaño` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Almacenar Productos';
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);
SELECT * FROM productos
--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkIdCli` (`idCli`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalleventas`
--
ALTER TABLE `detalleventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventas`
--
ALTER TABLE `detalleventas`
  ADD CONSTRAINT `idProd` FOREIGN KEY (`idProd`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idVenta` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `idCli` FOREIGN KEY (`idCli`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

INSERT INTO productos (id, Nombre, Codigo, Tipo, Precio, Stock_Disponible, Estado, Material, Peso, Tamaño) VALUES
-- (1, 'COLGANTE CRISOCOLA NACIONAL', 'C-000165', 'Colgante', '7990', 43, 'Disponible', 'Plata Ley 950', '8.6 grs', '5.5 cms'),
-- (2, 'AROS NATY', 'AR-0022', 'Aros', '9990', '17', 'Disponible', 'Plata Ley 950', '7.2 grs', '3.5 cms'),
-- (3, 'COLGANTE GOTA', 'C-000164', 'Colgante', '6990', 33, 'Disponible', 'Plata Ley 950', '8.5 grs', '4.5 cms'),
(4, 'AROS MOSAICO NIÑA', 'AR-0024', 'Aros', '8990', 9, 'Disponible', 'Plata Ley 950', '8.4 grs', '4.6 cms'),
(5, 'PULSERA JASPE', 'P-0042', 'Pulsera', '12990', 27, 'Disponible', 'Plata Ley 950', '9.8 grs', '20 cms'),
(6, 'AROS CRISOCOLA NACIONAL', 'AR-0053', 'Aros', '12990', 45, 'Disponible', 'Plata Ley 950', '9.0 grs', '6.0 cms'),
(7, 'AROS ARCOIRIS', 'AR-0059', 'Aros', '9990', 35, 'Disponible', 'Plata Ley 950', '8.8 grs', '4.5 cms'),
(8, 'AROS POLITA', 'AR-000169', 'Aros', '5990', 18, 'Disponible', 'Plata Ley 925', '3.5 grs', '4.0 cms'),
(9, 'AROS JASPE', 'AR-0062', 'Aros', '7990', 7, 'Disponible', 'Plata Ley 950', '6.1 grs', '3.3 cms'),
(10, 'AROS JASPE R', 'AR-0065', 'Aros', '7990', 19, 'Disponible', 'Plata Ley 950', '5.7 grs', '4.3 cms'),
(11, 'AROS NACAR', 'AR-0066', 'Aros', '8990', 1, 'Disponible', 'Plata Ley 950', '7.1 grs', '4.3 cms'),
(12, 'ANILLO FLOR', 'AN-0066', 'Anillo', '3990', 24, 'Disponible', 'Plata Ley 925', '3.8 grs', 'n 16-17-22'),
(13, 'ANILLO ELEFANTE', 'AN-0067', 'Anillo', '6990', 17, 'Disponible', 'Plata Ley 925', '4.0 grs', 'n 17-18-20'),
(14, 'ANILLO CRUZ DISEÑO', 'AN-0070', 'Anillo', '7500', 5, 'Disponible', 'Plata Ley 925', '5.3 grs', 'n 12-15-16-20-22'),
(15, 'ANILLO ORUGA', 'AN-0072', 'Anillo', '7500', 28, 'Disponible', 'Plata Ley 925', '5.3 grs', 'n 12-13-17-19-22'),
(16,'ANILLO ELEFANTES','AN-000168','Anillo','7990','2','Disponible','Plata Ley 925','3.5 grs','n 14'),
(17,'AROS ROMBO MOSAICO','AR-0088','Aro','6990',21,'Disponible','Plata Ley 950','5,9 grs','4,8 cms'),
(18,'AROS FLOR','AR-0089','Aro','6500',4,'Disponible','Plata Ley 950','3.3 grs','3.2 cms'),
(19,'AROS DONNA','AR-0090','Aro','5900',30,'Disponible','Plata Ley 950','5,4 grs','3,8 cms'),
(20,'ARGOLLA FLOR','AR-0093','Aro','4200','14','Disponible','Plata Ley 925','3.1 grs','2,5 cms'),
(21,'PULSERA MOSAICO REDONDA','P-0099','Pulsera',10990,17,'Disponible','Plata Ley 925','11 grs','20 cms'),
(22,'PULSERA MOSAICO OVALADA','P-00100','Pulsera','10990','9','Disponible','Plata Ley 925','11 grs','21 cms'),
(23,'AROS SOL ROJO','AR-00101','Aro',9990,'31','Disponible','Plata Ley 950','4.7 grs','5,3 cms'),
(24,'AROS IRIS','AR-00103','Aro',7990,28,'Disponible','Plata Ley 950','6,6 grs','4,3 cms'),
(25,'AROS NACAR PLATA','AR-00104','Aro','8990','35','Disponible','Plata Ley 950','7,5 grs','5,0 cms'),
(26,'AROS FLORES','AR-00105','Aro','7990',29,'Disponible','Plata Ley 950','6,1 grs','4,5 cms'),
(27,'AROS IRIS MORADO','AR-00107','Aro','7990',42,'Disponible','Plata Ley 950','7,3 grs','4,3 cms'),
(28,'AROS GOTA','AR-00109','Aro','8990',37,'Disponible','Plata Ley 950','15,7 grs','5,3 cms'),
(29,'COLGANTE MAGGY','C-000163','Colgante','6990','24','Disponible','Plata Ley 950','5.8 grs','3,5 cms'),
(30,'COLGANTE DORITA','C-000162','Colgante','6990',8,'Disponible','Plata Ley 950','4.9 grs','3,5 cms'),
(31,'COLGANTE MOSAICO NIÑA','C-000161','Colgante','6990',33,'Disponible','Plata Ley 950','5.0 grs','3,5 cms'),
(32,'COLGANTE ANGELICA','C-000160','Colgante','6990',17,'Disponible','Plata Ley 950','4.3 grs','3,5 cms'),
(33,'AROS AZUL TRIO','AR-00025','Aro','10990',3,'Disponible','Plata Ley 950','7.8 grs','5,0 cms'),
(34,'AROS CORAZÓN TRIZOL','AR-00021','Aro','3500',1,'Disponible','Plata Ley 925','1,8 grs','2,5 cms'),
(35,'AROS CIRCON CUADRADO','AR-00022','Aro','3700',12,'Disponible','Plata Ley 925','1,8 grs','2,5 cms'),
(36,'AROS MARIPOSA CAFE','AR-00024','Aro','2700',6,'Disponible','Plata Ley 925','2.0 grs','2,5 cms'),
(37,'AROS MARIPOSA AMARILLO','AR-00026','Aro','2700',15,'Disponible','Plata Ley 925','2.0 grs','2,5 cms'),
(38,'AROS MARIPOSA ROJO','AR-00027','Aro','2700',9,'Disponible','Plata Ley 925','2.0 grs','2,5 cms'),
(39,'CONJUNTOS TORTUGA CIRCON','CJ-00028','Conjunto','4990',23,'Disponible','Plata Ley 925','Aros 2.7 grs y Colgante 3.6 grs','Aros 1,3 cms y colgante 2,0 cms'),
(40,'CONJUNTO CIRCON ADA','CJ-00029','Conjunto','4990',27,'Disponible','Plata Ley 925','Aros 2.2 grs y Colgante 3.0 grs','Aros 1,2 cms y colgante 1,9 cms'),
(41,'CONJUNTO CIRCON DELFIN','CJ-00030','Conjunto','4990',15,'Disponible','Plata Ley 925','Aros 2.5 grs y Colgante 3.3','Aros 1,3 cms y colgante 2,0 cms'),
(42,'ANILLO PLATA ADELA','AN-00033','Anillo','7500',18,'Disponible','Plata Ley 925','2.2 grs','2.6 cms'),
(43,'ANILLO ADEL','AN-00034','Anillo','7500',33,'Disponible','Plata Ley 925','2.0 grs','2.2 cms'),
(44,'ANILLO PLATA ADI','AN-00035','Anillo','5900',14,'Disponible','Plata Ley 925','1.9 grs','2.3 cms'),
(45,'ANILLO PLATA AGAR','AN-00036','Anillo','7500',7,'Disponible','Plata Ley 925','2.4 grs','2.5 cms'),
(46,'ANILLO PLATA AGLA','AN-00037','Anillo','5900',12,'Disponible','Plata Ley 925','2.2 grs','2.3 cms'),
(47,'ANILLO PLATA AGUSTINA','AN-00038','Anillo','5900',39,'Disponible','Plata Ley 925','2.5 grs','2.4 cms'),
(48,'ANILLO PLATA AIKA','AN-00039','Anillo','5900','24','Disponible','Plata Ley 925','2.1 grs','2.0 cms'),
(49,'ANILLO PLATA AIME','AN-00040','Anillo','6900',30,'Disponible','Plata Ley 925','3.0 grs','2.4 cms'),
(50,'ANILLO PLATA AMPARO','AN-00041','Anillo','10500',4,'Disponible','Plata Ley 925','2.3 grs','2.1 cms'),
(51,'ANILLO PLATA ANIK','AN-00042','Anillo','6500',31,'Disponible','Plata Ley 925','2.2 grs','2.0 cms'),
(52,'ANILLO PLATA CANDY','AN-00043','Anillo','7500',27,'Disponible','Plata Ley 925','3.4 grs','2.5 cms'),
(53,'ANILLO PLATA FIONA','AN-00044','Anillo','10900',8,'Disponible','Plata Ley 925','4.0 grs','2.8 cms'),
(54,'ANILLO PLATA FLORINA','AN-00045','Anillo','10900',0,'Agotado','Plata Ley 925','2.2 grs','2.0 cms'),
(55,'ANILLO PLATA FRIDA','AN-00046','Anillo','7500',0,'Agotado','Plata Ley 925','2.7 grs','2.2 cms'),
(56,'ANILLO PLATA SERPIENTE','AN-00047','Anillo','12900',0,'Agotado','Plata Ley 925','2.5 grs','2.3 cms'),
(57,'ANILLO PLATA GADA','AN-00048','Anillo','6500',17,'Disponible','Plata Ley 925','2.5 grs','2.1 cms'),
(58,'ANILLO PLATA GAIL','AN-00049','Anillo','8900',10,'Disponible','Plata Ley 925','2.1 grs','2.2 cms'),
(59,'ANILLO PLATA GALI','AN-00050','Anillo','6900',0,'Agotado','Plata Ley 925','2.2 grs','2.1 cms'),
(60,'AROS LORENA TURQUESA','AR-000183','Aro',6990,29,'Disponible','Plata Ley 925','2.7 grs','3,5 cms'),
(61,'COLGANTE MIRIAN','C-000160','Colgante','6990',38,'Disponible','Plata Ley 950','4.0 grs','3,5 cms'),
(62,'TREPADORES CORAZÓN CIRCON','T-00054','Trepadores','3500',46,'Disponible','Plata Ley 925','1.5 grs','2,0 cms'),
(63,'AROS PLATA','AR-00055','Aro','5990',42,'Disponible','Plata Ley 925','4.0 grs','5,5 cms'),
(64,'AROS SWAROVSKI CORAZÓN','AR-00056','Aro','7990',33,'Disponible','Plata Ley 925','2.2 grs','4,0 cms'),
(65,'AROS PERLA','AR-00057','Aro','4990',28,'Disponible','Plata Ley 925','2.0 grs','2.2 cms'),
(66,'TREPADORES PLATA','T-00059','Trepadores','5990',30,'Disponible','Plata Ley 925','2.5 grs','3,0 cms'),
(67,'COLGANTE PAOLA','C-000159','Trepadores','6990',34,'Disponible','Plata Ley 950','3.3 grs','3,5 cms'),
(68,'AROS TRIO FLOR','AR-00061','Aro',9800,18,'Disponible','Plata Ley 950','5.9 grs','8,0 cms'),
(69,'AROS KUMÍ','AR-00062','Aro',5500,9,'Disponible','Plata Ley 950','6.2 grs','6,0 cms'),
(70,'AROS AMY','AR-00063','Aro',12900,11,'Disponible','Plata Ley 950','6.0 grs','6,5 cms'),
(71,'AROS PAULÍ','AR-00064','Aro',8999,15,'Disponible','Plata Ley 950','5.7 grs','6,0 cms'),
(72,'COLGANTE MOSAICO NIÑO','C-000158','Aro',6990,45,'Disponible','Plata Ley 950','4.8 grs','3,5 cms'),
(73,'AROS ÁRBOL DE LA VIDA AVALON','AR-000179','Aro',13990,7,'Disponible','Plata Ley 950','3.4 grs','3,0 cms'),
(74,'AROS ANASTASIA','AR-00069','Aro',7500,19,'Disponible','Plata Ley 925','2.8 grs','3,0 cms'),
(75,'AROS TURQUESA','AR-00071','Aro',6990,14,'Disponible','Plata Ley 950','2.8 grs','3,8 cms'),
(76,'AROS SANDY','AR-00072','Aro',10990,8,'Disponible','Plata Ley 950','4.5 grs','7,0 cms'),
(77,'AROS DENNIS','AR-00073','Aro',7990,13,'Disponible','Plata Ley 950','4.0 grs','4,3 cms'),
(78,'AROS MIA','AR-000177','Aro',8990,16,'Disponible','Plata Ley 950','4.2 grs','5,0 cms'),
(79,'AROS DORITA','AR-00075','Aro',7990,20,'Disponible','Plata Ley 950','3,8 grs','4,0 cms'),
(80,'AROS MAGGY','AR-00076','Aro',8990,25,'Disponible','Plata Ley 950','3,8 grs','4,0 cms'),
(81,'AROS MARIAN','AR-00077','Aro',7990,23,'Disponible','Plata Ley 950','3,8 grs','4,0 cms'),
(82,'AROS LALY','AR-00078','Aro',7990,29,'Disponible','Plata Ley 950','3,8 grs','4,0 cms'),
(83,'AROS PAOLA','AR-00079','Aro',7990,17,'Disponible','Plata Ley 950','3,8 grs','4,0 cms'),
(84,'AROS ANGELICA','AR-00080','Aro','7990','22','Disponible','Plata Ley 950','3,8 grs','4,0 cms'),
(85,'COLGANTE LALY','C-000157','Colgante',6990,31,'Disponible','Plata Ley 950','3,5 grs','3.5 cms'),
(86,'ARGOLLAS NACAR','AR-000156','Aro',7990,39,'Disponible','Plata Ley 925','1.5 grs','2,0 cms'),
(87,'AROS DEISY','AR-000155','Aro',10990,33,'Disponible','Plata Ley 950','4,0 grs','6,5 cms'),
(88,'AROS TAMY','AR-000154','Aro',10990,36,'Disponible','Plata Ley 950','3,0 grs','5,0 cms'),
(89,'AROS KITY','AR-000166','Aro',5990,19,'Disponible','Plata Ley 925','2,0 grs','3,5 cms'),
(90,'AROS MARIPOSA','AR-00088','Aro',8990,11,'Disponible','Plata Ley 925','6,1 grs','8,0 cms'),
(91,'ARGOLLAS CORAZÓN VERDE','AR-00089','Aro',5990,24,'Disponible','Plata Ley 925','1,8 grs','3,0 cms'),
(92,'AROS ORLY','AR-00090','Aro',7990,28,'Disponible','Plata Ley 925','2,8 grs','2,0 cms'),
(93,'AROS CADENA CORAZÓN','AR-00091','Aro',4600,41,'Disponible','Plata Ley 925','2,8 grs','6,8 cms'),
(94,'AROS CIRY','AR-00092','Aro',3000,34,'Disponible','Plata Ley 925','1,7 grs','2,1 cms'),
(95,'PULSERA PERA','P-00094','Pulsera',13990,20,'Disponible','Plata Ley 925','10 grs','19 cms'),
(96,'AROS PERLA GRIS','AR-00096','Aro',3500,20,'Disponible','Plata Ley 925','1.7 grs','2.0 cms'),
(97,'ARGOLLAS CARACOL','AR-00097','Aro',6500,33,'Disponible','Plata Ley 925','5.1. grs','3.5 cms'),
(98,'AROS CRUZ','AR-00098','Aro',3500,39,'Disponible','Plata Ley 925','1,9 grs','1.5 cms'),
(99,'AROS CORAZON ROJO','AR-00099','Aro',7990,15,'Disponible','Plata Ley 925','2,7 grs','4,0 cms'),
(100,'AROS ARBOL DE LA VIDA ONIX','AR-000152','Aro',13990,11,'Disponible','Plata Ley 925','3,1 grs','3,0 cms'),
(101,'AROS FLOR AVALON','AR-000101','Aro',5500,4,'Disponible','Plata Ley 925','3,1 grs','3,5 cms'),
(102,'AROS LOIS','AR-000103','Aro',9200,27,'Disponible','Plata Ley 925','3,9grs','7,0 cms'),
(103,'AROS DORA','AR-000104','Aro',3990,16,'Disponible','Plata Ley 925','2,7grs','3,0 cms'),
(104,'AROS GATY','AR-000105','Aro',9990,11,'Disponible','Plata Ley 925','4,1grs','5,5 cms'),
(105,'AROS POLIM','AR-000106','Aro',5990,17,'Disponible','Plata Ley 925','5,3 grs','5,0 cms'),
(106,'AROS AMATISTA','AR-000107','Aro',6990,23,'Disponible','Plata Ley 925','1,7 grs','2,5 cms'),
(107,'AROS GARRA','AR-000108','Aro',9990,28,'Disponible','Plata Ley 925','1,9 grs','2,3 cms'),
(108,'TREPADORES BOLITAS','T-000109','Trepadores',6990,49,'Disponible','Plata Ley 925','2,2 grs','2,8 cms'),
(109,'TREPADORES','AR-000110','Trepadores',2990,51,'Disponible','Plata Ley 925','2,1 grs','2,6 cms'),
(110,'AROS GOTA','AR-000111','Aro',3500,13,'Disponible','Plata Ley 925','1,2 grs','1,6 cms'),
(111,'AROS CORAZÓN','AR-000112','Aro',2990,10,'Disponible','Plata Ley 925','1,7 grs','1,6 cms'),
(112,'AROS BOLITAS','AR-000113','Aro',5500,29,'Disponible','Plata Ley 925','1,9 grs','2,0 cms'),
(113,'AROS PEZ','AR-000114','Aro',5990,41,'Disponible','Plata Ley 925','4,1 grs','4,0 cms'),
(114,'AROS LUMI','AR-000115','Aro',3990,24,'Disponible','Plata Ley 925','2,5 grs','2,3 cms'),
(115,'AROS ROSS','AR-000116','Aro',5500,13,'Disponible','Plata Ley 925','1,6 grs','2,0 cms'),
(116,'AROS CAMELIA','AR-000117','Aro',5990,35,'Disponible','Plata Ley 925','1,4 grs','2,0 cms'),
(117,'AROS PELOTITAS','AR-000118','Aro',3500,31,'Disponible','Plata Ley 925','1,6 grs','2,0 cms'),
(118,'AROS CADENA','AR-000119','Aro',2990,22,'Disponible','Plata Ley 925','2,4 grs','3,5 cms'),
-- (119,'CONJUNTO RANITAS','CJ-000120','Conjunto',6990,13,'Disponible','Plata Ley 925','Aros','1,8 grs y Colgante 2.3 grs','Aro 1,0 cms y Colgante 1,8 cms'),
(120,'COLGANTE FLOR','C-000121','Colgante',5990,4,'Disponible','Plata Ley 925','2,2 grs','2,0 cms'),
(121,'AROS ONIX CARACOL','AR-000123','Colgante',7500,19,'Disponible','Plata Ley 925','2,8 grs','3,0 cms'),
(122,'AROS LINA','AR-000124','Aro',4500,23,'Disponible','Plata Ley 925','2,3 grs','2,1 cms'),
(123,'ANILLO PLATA DISEÑO','AN-000147','Anillo',9500,30,'Disponible','Plata Ley 925','1,9 grs','n 13'),
(124,'ANILLO TAMI','AN-000221','Anillo',9500,34,'Disponible','Plata Ley 925','1,8 grs','n 12'),
(125,'COLGANTE NATY','C-000146','Colgante',7990,18,'Disponible','Plata Ley 950','2,7 grs','3,0 cms'),
(126,'COLGANTE AZUL TRIO','C-000145','Colgante','7990',12,'Disponible','Plata Ley 950','2,9 grs','3,5 cms'),
(127,'COLGANTE SOL ROJO','C-000144','Colgante',7990,11,'Disponible','Plata Ley 950','3,6 grs','4,0 cms'),
(128,'AROS MOSAICO NIÑO','AR-000151','Aro',7990,28,'Disponible','Plata Ley 950','3,7 grs','4,0 cms'),
(129,'AROS ANGEL','AR-000125','Aro',10990,21,'Disponible','Plata Ley 925','4,0 grs','6,0 cms'),
(130,'AROS CORAL','AR-000126','Aro',7990,17,'Disponible','Plata Ley 925','1,9 grs','2,3 cms'),
(131,'ARGOLLAS LISA','AR-000127','Aro',6990,5,'Disponible','Plata Ley 925','2,3 grs','5,0 cms'),
(132,'AROS DONA ROJO','AR-000128','Aro',5990,16,'Disponible','Plata Ley 950','3,3 grs','3,8 cms'),
(133,'AROS RACIMO','AR-000129','Aro',5990,19,'Disponible','Plata Ley 950','3,3 grs','3,8 cms'),
(134,'AROS CARACOL','AR-000130','Aro',7990,22,'Disponible','Plata Ley 925','2,7 grs','3,0 cms'),
(135,'AROS CIRCÓN FLOR','AR-000132','Aro',5990,17,'Disponible','Plata Ley 925','0,9 grs','1,0 cms'),
(136,'AROS IVORY','AR-000134','Aro',6500,6,'Disponible','Plata Ley 925','2,3 grs','2,8 cms'),
(137,'AROS IRISS','AR-000135','Aro',10990,12,'Disponible','Plata Ley 950','3,2 grs','4,5 cms'),
(138,'AROS KULTRUM','AR-000136','Aro','14990','20','Disponible','Plata Ley 950','3,3 grs','4,7 cms'),
(139,'AROS MANDALAS','AR-000137','Aro',14990,8,'Disponible','Plata Ley 950','3,2 grs','4,5 cms'),
(140,'AROS MALY','AR-000138','Aro',7990,24,'Disponible','Plata Ley 950','3,6 grs','4,0 cms'),
(141,'AROS DELFIIN','AR-000139','Aro',7990,31,'Disponible','Plata Ley 925','1,1 grs','1,5 cms'),
(142,'COLGANTE DELFÍN','C-000140','Colgante',5990,35,'Disponible','Plata Ley 925','1,7 grs','2,3 cms'),
(143,'AROS GATO ONIX','AR-000141','Aro',12990,43,'Disponible','Plata Ley 925','1,9 grs','3,0 cms'),
(144,'AROS CONY','AR-000142','Aro',5990,25,'Disponible','Plata Ley 925','2,3 grs','3,5 cms'),
(145,'AROS MALAQUITA','AR-000170','Aro',14990,33,'Disponible','Plata Ley 950','2,9 grs','4,0 cms'),
(146,'AROS MARIPOSA CHAMPANNE','AR-000171','Aro',2700,5,'Disponible','Plata Ley 925','1,2 grs','2,5 cms'),
(147,'ARGOLLAS PIA','AR-000172','Aro',25990,3,'Disponible','Plata Ley 925','5,0 grs','4,0 cms'),
(148,'AROS FLOR NATURAL','AR-000173','Aro',8990,16,'Disponible','Plata Ley 950','3,2 grs','4,0 cms'),
(149,'AROS AZUS','AR-000174','Aro',7990,21,'Disponible','Plata Ley 950','3,2 grs','4,0 cms'),
(150,'AROS AMANDA','AR-000175','Aro',5500,28,'Disponible','Plata Ley 925','1,5 grs','2,0 cms'),
(151,'AROS ÁRBOL DE LA VIDA ROJO','AR-000176','Aro',13990,2,'Disponible','Plata Ley 925','2,8 grs','3,0 cms'),
(152,'AROS BUHO AMATISTA','AR-000181','Aro',13990,9,'Disponible','Plata Ley 925','2,1 grs','3,0 cms'),
(153,'COLGANTE BUHO AMATISTA','C-000182','Colgante',6990,23,'Disponible','Plata Ley 925','1,8 grs','2,0 cms'),
(154,'AROS JAZMIN CRISOCOLA','AR-000184','Aro',9990,17,'Disponible','Plata Ley 950','4,1 grs','7,0 cms'),
(155,'COLGANTE MNDALA VERDE','C-000186','Colgante',8990,12,'Disponible','Plata Ley 950','4,0 grs','4,5 cms'),
(156,'AROS AURORA','AR-000187','Aro',10990,26,'Disponible','Plata Ley 950','4,2 grs','6,0 cms'),
(157,'AROS LAGRIMA','AR-000188','Aro',15990,32,'Disponible','Plata Ley 925','4,3 grs','5,5 cms'),
(158,'COLGANTE LAGRIMA','C-000189','Colgante',9990,37,'Disponible','Plata Ley 925','2,6 grs','3,0 cms'),
(159,'AROS DELIA','AR-000190','Aro',9990,41,'Disponible','Plata Ley 950','2,5 grs','3,0 cms'),
(160,'AROS GATO CHAMPANNE','AR-000191','Aro',12990,34,'Disponible','Plata Ley 925','2,0 grs','3,0 cms'),
(161,'AROS DELFIN PLATA','AR-000192','Aro',4990,18,'Disponible','Plata Ley 925','1,8 grs','2,0 cms'),
(162,'COLGANTE DELFIN PLATA','AR-000193','Aro',3990,25,'Disponible','Plata Ley 925','0,7 grs','1,0 cms'),
(163,'AROS TRIANGULO PLATA','AR-000194','Aro',4990,47,'Disponible','Plata Ley 925','2,2 grs','4,0 cms'),
(164,'COLGANTE MIA','AR-000195','Aro',5990,22,'Disponible','Plata Ley 950','2,4 grs','3,0 cms'),
(165,'ANILLO TITANIC','AN-000196','Anillo',7990,3,'Disponible','Plata Ley 925','1,2 grs','n 13'),
(166,'ANILLO ANGY','AN-000198','Anillo',6990,9,'Disponible','Plata Ley 925','1,4 grs','n 14'),
(167,'ANILLO MELANI','AN-000199','Anillo',10990,13,'Disponible','Plata Ley 950','2,0 grs','n 15'),
(168,'ANILLO CORAZÓN','AN-000200','Anillo',7990,29,'Disponible','Plata Ley 925','1,9 grs','n 18'),
(169,'ANILLO COLORES','AN-000201','Anillo',8500,11,'Disponible','Plata Ley 925','1,6 grs','n 14'),
(170,'ANILLO MOSAICO','AN-000202','Anillo',10990,21,'Disponible','Plata Ley 950','2,3 grs','n 20'),
(171,'ANILLO MUSICAL','AN-000203','Anillo',6990,16,'Disponible','Plata Ley 925','1,8 grs','n 14'),
(172,'ANILLO LUCY','AN-000204','Anillo',10990,34,'Disponible','Plata Ley 950','2,3 grs','n 16'),
(173,'ANILLO AMATISTA','AN-000205','Anillo',15990,23,'Disponible','Plata Ley 925','1,9 grs','n 14'),
(174,'ANILLO ILUSIÓN','AN-000209','Anillo',12990,15,'Disponible','Plata Ley 925','2,2 grs','n 18'),
(175,'ANILLO MARTINA','AN-000210','Anillo',24990,4,'Disponible','Plata Ley 925','3,1 grs','n 16'),
(176,'ANILLO TORRE','AN-000212','Anillo',14990,17,'Disponible','Plata Ley 925','1,7 grs','n 11'),
(177,'ANILLO LEIDY','AN-000213','Anillo',11990,15,'Disponible','Plata Ley 925','2,5 grs','n 17'),
(178,'ANILLO ANASTASIA','AN-000214','Anillo',7990,20,'Disponible','Plata Ley 925','1,8 grs','n 14'),
(179,'ANILLO ANY','AN-000215','Anillo',6990,12,'Disponible','Plata Ley 925','1,6 grs','n 13'),
(180,'AROS CAROL','AR-000216','Aro',8990,28,'Disponible','Plata Ley 950','2,9 grs','3,5 cms'),
(181,'COLGANTE CAROL','C-000217','Colgante',7990,10,'Disponible','Plata Ley 950','3,4 grs','5,0 cms'),
(182,'AROS MILENCA','AR-000218','Aro',8990,24,'Disponible','Plata Ley 950','2,9 grs','3,5 cms'),
(183,'AROS CRISTINA','AR-000219','Aro',7990,27,'Disponible','Plata Ley 925','2,7 grs','3,5 cms'),
(184,'COLGANTE PAMELA','C-000220','Colgante',7990,19,'Disponible','Plata Ley 950','3,0 grs','3,8 cms'),
(185,'AROS CIRA','AR-000221','Aro','8990',13,'Disponible','Plata Ley 950','3,9 grs','5,8 cms'),
(186,'COLGANTE CIRA','C-000222','Colgante',7990,25,'Disponible','Plata Ley 950','3,4 grs','4,5 cms'),
(187,'AROS ANGY','AR-000223','Aro',9990,21,'Disponible','Plata Ley 950','1,8 grs','2,1 cms'),
(188,'COLGANTE ANGY','C-000224','Colgante',7990,34,'Disponible','Plata Ley 925','2,0 grs','2,5 cms'),
(189,'COLGANTE OMI','C-000226','Colgante',6990,17,'Disponible','Plata Ley 925','2,4 grs','3,0 cms'),
(190,'AROS CORAZÓN JASPE','AR-000228','Aro',12990,9,'Disponible','Plata Ley 950','4,3 grs','6,0 cms'),
(191,'COLGANTE CORAZÓN JASPE','C-000229','Aro',8990,11,'Disponible','Plata Ley 950','3,9 grs','5,0 cms'),
(192,'AROS ADORA','AR-000230','Aro',11990,23,'Disponible','Plata Ley 950','3,1 grs','4,0 cms'),
(193,'COLGANTE ADORA','C-000231','Colgante',12990,35,'Disponible','Plata Ley 950','3,7 grs','5,0 cms'),
(194,'AROS LUNA CRISOCOLA','AR-000232','Aro',12990,31,'Disponible','Plata Ley 950','3,6 grs','4,8 cms'),
(195,'COLGANTE LUNA CRISOCOLA','C-000233','Colgante',8990,28,'Disponible','Plata Ley 950','2,9 grs','4,0 cms'),
(196,'AROS NUBE','AR-000235','Aro',7500,26,'Disponible','Plata Ley 925','1,6 grs','2,3 cms'),
(197,'AROS CRISS','AR-000236','Aro',5990,21,'Disponible','Plata Ley 925','2,6 grs','4,0 cms'),
(198,'AROS CELESTE','AR-000237','Aro',9990,12,'Disponible','Plata Ley 925','4,6 grs','7,0 cms'),
(199,'AROS HOJAS','AR-000238','Aro',10990,25,'Disponible','Plata Ley 950','4,0 grs','6,0 cms'),
(200,'COLGANTE HOJAS','C-000239','Colgante',7990,8,'Disponible','Plata Ley 950','4,3 grs','6,0 cms'),
(201,'AROS MARTINA','AR-000240','Aro','4990',4,'Disponible','Plata Ley 950','2,2 grs','1,3 cms'),
(202,'AROS ISIDORA','AR-000241','Aro','8990',13,'Disponible','Plata Ley 950','2,2 grs','3,8 cms'),
(203,'COLGANTE ISIDORA','C-000242','Colgante','7990',11,'Disponible','Plata Ley 950','2,3 grs','4,0 cms'),
(204,'AROS JAVIERA','AR-000243','Aro','8990',23,'Disponible','Plata Ley 950','2,0 grs','3,0 cms'),
(205,'COLGANTE JAVIERA','C-000244','Colgante','12990',27,'Disponible','Plata Ley 950','4,4 grs','6,2 cms'),
(206,'AROS PAMELA','AR-000245','Aro',8990,30,'Disponible','Plata Ley 950','3,3 grs','4,5 cms'),
(207,'PULSERA TURQUESA GOTA','P-000246','Pulsera','13990',21,'Disponible','Plata Ley 950','12 grs','19 cms'),
(208,'AROS DELY','AR-000247','Aro',8990,18,'Disponible','Plata Ley 950','2,1 grs','3,0 cms'),
(209,'AROS MAITE','AR-000248','Aro',13990,5,'Disponible','Plata Ley 925','3,6 grs','5,5 cms'),
(210,'AROS JASPE CORAZÓN','AR-000250','Aro','6990',9,'Disponible','Plata Ley 925','2,1 grs','3,0 cms'),
(211,'AROS MARIPOSA PLATA','AR-000251','Aro	8990',13,'Disponible','Plata Ley 925','3,2 grs','5,0 cms'),
(212,'AROS NACAR DORIS','AR-000252','Aro',10990,17,'Disponible','Plata Ley 925','4,5 grs',',6,5 cms'),
(213,'AROS LISA','AR-000253','Aro',4990,26,'Disponible','Plata Ley 925','2,4 grs','3,2 cms'),
(214,'ARGOLLAS LILA','AR-000254','Aro',7990,3,'Disponible','Plata Ley 925','2,9 grs','4,0 cms'),
(215,'TREPADORES LOBI','T-000255','Trepadores',2990,42,'Disponible','Plata Ley 925','1,8 grs','1,5 cms'),
(216,'AROS LAZULI','AR-000256','Aro',6990,50,'Disponible','Plata Ley 925','1,1 grs','1,2 cms'),
(217,'COLGANTE LASULI','C-000257','Colgante',6500,37,'Disponible','Plata Ley 950','2,6 grs','3,0 cms'),
(218,'AROS ARGI','AR-000259','Aro',12990,15,'Disponible','Plata Ley 950','3,7 grs','5,0 cms'),
(219,'AROS ARIA','AR-000260','Aro',14990,11,'Disponible','Plata Ley 950','2,9 grs','3,8 cms'),
(220,'AROS CLAU','AR-000261','Aro',14990,7,'Disponible','Plata Ley 950','2,8 grs','3,5 cms'),
(221,'AROS CAMY','AR-000262','Aro',14990,13,'Disponible','Plata Ley 950','4,6 grs','7,0 cms'),
(222,'AROS AURA','AR-000263','Aro',13990,34,'Disponible','Plata Ley 925','2,4 grs','3,5 cms'),
(223,'COLGANTE DONCO','C-000264','Colgante',7990,30,'Disponible','Plata Ley 950','1,9 grs','2,5 cms'),
(224,'COLGANTE DUMAS','C-000265','Colgante',7990,27,'Disponible','Plata Ley 950','2,6 grs','3,7 cms'),
(225,'COLGANTE BAMEY','C-000266','Colgante',14990,21,'Disponible','Plata Ley 950','3,8 grs','5,0 cms'),
(226,'COLGANTE ANUSA','C-000267','Colgante',10990,16,'Disponible','Plata Ley 950','2,6 grs','3,5 cms'),
(227,'AROS BOLITA','AR-000268','Aro',10990,8,'Disponible','Plata Ley 950','2,9 grs','4,0 cms'),
(228,'COLGANTE COCO','C-000270','Colgante',7990,28,'Disponible','Plata Ley 950','2,4 grs','3,0 cms'),
(229,'AROS BONY','AR-000271','Aro',5990,24,'Disponible','Plata Ley 950','2,3 grs','3,0 cms'),
(230,'COLGANTE DOMI','AR-000272','Colgante',4990,19,'Disponible','Plata Ley 950','1,7 grs','2,3 cms'),
(231,'AROS BILY','AR-000273','Aro',8990,23,'Disponible','Plata Ley 950','2,9 grs','3,5 cms'),
(232,'AROS CALY','AR-000274','Aro',12990,27,'Disponible','Plata Ley 950','3,1 grs','4,0 cms'),
(233,'AROS ALEN','AR-000275','Aro',6990,20,'Disponible','Plata Ley 950','2,6 grs','3,0 cms'),
(234,'AROS BELINDA','AR-000276','Aro',6990,17,'Disponible','Plata Ley 950','1,4 grs','1,5 cms'),
(235,'AROS BOLY','AR-000277','Aro',6990,14,'Disponible','Plata Ley 925','1,8 grs','3,1 cms'),
(236,'AROS CARRY','AR-000278','Aro','14990',22,'Disponible','Plata Ley 950','2,9 grs','4,5 cms'),
(237,'COLGANTE CAIRO','C-000279','Colgante','12990',16,'Disponible','Plata Ley 950','2,6 grs','4,0 cms'),
(238,'AROS DUNA','AR-000280','Aro','12990',11,'Disponible','Plata Ley 950','2,2 grs','3,5 cms'),
(239,'AROS DAISY','AR-000281','Aro','12990',7,'Disponible','Plata Ley 950','3,0 grs','4,0 cms'),
(240,'AROS DAKOTA','AR-000282','Aro	4990',19,'Disponible','Plata Ley 950','1,0 grs','1,2 cms'),
(241,'COLGANTE AMY','C-000283','Colgante','3990',28,'Disponible','Plata Ley 950','1,7 grs','2,1 cms'),
(242,'AROS DALI','AR-000284','Aro','12990',18,'Disponible','Plata Ley 925','1,8 grs','2,3 cms'),
(243,'AROS DULCE','AR-000285','Aro','13990',23,'Disponible','Plata Ley 950','3,6 grs','4,5 cms'),
(244,'AROS ANAS','AR-000286','Aro','7500',31,'Disponible','Plata Ley 925','2,4 grs','3,0 cms'),
(245,'AROS DAM','AR-000287','Aro','6990',14,'Disponible','Plata Ley 925','1,9 grs','2,5 cms'),
(246,'AROS ESTRELLA','AR-000288','Aro','6990',21,'Disponible','Plata Ley 925','1,8 grs','2,3 cms'),
(247,'AROS AFER','AR-000289','Aro','6990',25,'Disponible','Plata Ley 925','2,9 grs','4,0 cms'),
(248,'PULSERA SOL','P-000290','Pulsera','17990',29,'Disponible','Plata Ley 925','13 grs','21 cms'),
(249,'AROS ASLI','AR-000291','Aro',10990,22,'Disponible','Plata Ley 925','1,6 grs','2,5 cms'),
(250,'AROS MÚSICA','AR-000292','Aro',5990,35,'Disponible','Plata Ley 925','0,8 grs','1,0 cms'),
(251,'COLGANTE MUSICAL','C-000293','Colgante','5990',24,'Disponible','Plata Ley 925','1,1 grs','1,5 cms'),
(252,'COLGANTE DISY','C-000294','Colgante','10990',31,'Disponible','Plata Ley 950','4,2 grs','6,0 cms'),
(253,'AROS CODY','AR-000295','Aro','12990',16,'Disponible','Plata Ley 950','2,7 grs','3,5 cms'),
(254,'AROS DAFNE','AR-000296','Aro','10990',12,'Disponible','Plata Ley 950','2,9 grs','3,9 cms'),
(255,'COLGANTE DEVI','C-000297','Colgante','8990',33,'Disponible','Plata Ley 950','4,6 grs','6,0 cms'),
(256,'COLGANTE ALSO','C-000298','Colgante','6990',10,'Disponible','Plata Ley 925','2,4 grs','3,7 cms'),
(257,'AROS AMBAR','AR-000299','Aro','4990',37,'Disponible','Plata Ley 925','1,2 grs','1,5 cms'),
(258,'AROS CUKI','AR-000300','Aro','4990',24,'Disponible','Plata Ley 925','0,9 grs','1,0 cms'),
(259,'COLGANTE ALEXA','C-000301','Colgante','3990',20,'Disponible','Plata Ley 925','1,8 grs','2,3 cms'),
(260,'AROS LUCY','AR-000302','Aro',5990,15,'Disponible','Plata Ley 925','2,2 grs','3,0 cms'),
(261,'COLGANTE MILA','C-000303','Colgante','3990',28,'Disponible','Plata Ley 925','2,3 grs','3,0 cms'),
(262,'AROS KLOE','AR-000304','Aro','6990',32,'Disponible','Plata Ley 925','2,7 grs','3,5 cms'),
(263,'PULSERA BALLENA','P-000305','Pulsera','17990',7,'Disponible','Plata Ley 925','14 grs','19 cms'),
(264,'AROS EVA','AR-000306','Aro',12990,25,'Disponible','Plata Ley 950','3,9 grs','5,5 cms'),
(265,'COLGANTE BELLA','C-000307','Colgante',10990,30,'Disponible','Plata Ley 950','3,7 grs','5,0 cms'),
(266,'COLGANTE EVELYN','C-000308','Colgante',12990,45,'Disponible','Plata Ley 950','2,9 grs','3,5 cms');
										


COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
