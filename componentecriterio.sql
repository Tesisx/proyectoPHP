-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-03-2013 a las 22:15:30
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `crudabc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentecriterio`
-- 0 < Wi < 1, 0 <= Ei <= 100, i = 1, ... , n
 -- W1 + ...+Wn = 1
-- infinito <= r <= +infinito
--

CREATE TABLE IF NOT EXISTS `componentecriterio` (
  `id_comp` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(35) NOT NULL,
  `valorcriterioelemental` int(10) NOT NULL,
  `pesocriterioelemental` float(10) NOT NULL,
  `r` int(10) NOT NULL,
  `id_crit` int(11) NOT NULL,
  PRIMARY KEY (`id_comp`),
  KEY `id_crit` (`id_crit`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Volcado de datos para la tabla `componentecriterio`
--

INSERT INTO `componentecriterio` (`id_comp`, `nombre`, `valorcriterioelemental`,`pesocriterioelementall`,`r`, `id_crit`) VALUES
(1, 'Funcionalidad', , , , 1),
(2, 'Bolivia', '2013-01-04', 1),
(3, 'Venezuela', '0000-00-00', 1),
(4, 'Ecuador', '0000-00-00', 1),
(5, 'Peru', '0000-00-00', 1),
(6, 'Inglaterra', '0000-00-00', 2),
(7, 'Francia', '0000-00-00', 2),
(8, 'Italia', '0000-00-00', 2),
(9, 'España', '0000-00-00', 2),
(15, 'Egipto', '0000-00-00', 3),
(16, 'Libia', '0000-00-00', 3),
(17, 'Sudafrica', '0000-00-00', 3),
(18, 'Nigeria', '0000-00-00', 3),
(19, 'Marruecos', '0000-00-00', 3),
(20, 'China', '0000-00-00', 4),
(21, 'Japon', '0000-00-00', 4),
(22, 'India', '0000-00-00', 4),
(23, 'Korea del sur', '0000-00-00', 4),
(24, 'Korea del norte', '0000-00-00', 4),
(25, 'Alemania', '0000-00-00', 2),
(26, 'Brazil', '0000-00-00', 1),
(27, 'Canada', '0000-00-00', 1),
(28, 'Paraguay', '0000-00-00', 1),
(29, 'Libia', '2013-01-31', 3),
(30, 'Uruguay', '2013-01-01', 1),
(31, 'Australia', '2013-03-12', 5);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pais`
--
ALTER TABLE `pais`
  ADD CONSTRAINT `pais_ibfk_1` FOREIGN KEY (`cod_cont`) REFERENCES `continente` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
