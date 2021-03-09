-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema sena_bd
--

CREATE DATABASE IF NOT EXISTS sena_bd;
USE sena_bd;

--
-- Definition of table `aprendices`
--

DROP TABLE IF EXISTS `aprendices`;
CREATE TABLE `aprendices` (
  `Apre_id` int(10) NOT NULL auto_increment,
  `Apre_Tipoid` char(2) NOT NULL default '',
  `Apre_Numid` char(20) NOT NULL default '',
  `Apre_Nombres` char(60) NOT NULL,
  `Apre_Apellidos` char(60) NOT NULL,
  `Apre_Direccion` char(80) NOT NULL,
  `Apre_Telefono` char(20) NOT NULL default '',
  `Apre_Ficha` int(10) NOT NULL,
  PRIMARY KEY  (`Apre_id`),
  KEY `aprendices_ibfk_1` (`Apre_Ficha`),
  CONSTRAINT `aprendices_ibfk_1` FOREIGN KEY (`Apre_Ficha`) REFERENCES `fichas` (`ficha_numero`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aprendices`
--

/*!40000 ALTER TABLE `aprendices` DISABLE KEYS */;
/*!40000 ALTER TABLE `aprendices` ENABLE KEYS */;


--
-- Definition of table `fichas`
--

DROP TABLE IF EXISTS `fichas`;
CREATE TABLE `fichas` (
  `ficha_numero` int(10) NOT NULL,
  `ficha_progra` int(10) NOT NULL,
  PRIMARY KEY  (`ficha_numero`),
  KEY `Fk_ficha` (`ficha_progra`),
  CONSTRAINT `Fk_ficha` FOREIGN KEY (`ficha_progra`) REFERENCES `programa` (`Progra_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fichas`
--

/*!40000 ALTER TABLE `fichas` DISABLE KEYS */;
/*!40000 ALTER TABLE `fichas` ENABLE KEYS */;


--
-- Definition of table `programa`
--

DROP TABLE IF EXISTS `programa`;
CREATE TABLE `programa` (
  `Progra_id` int(10) NOT NULL auto_increment,
  `Progra_Nombre` char(20) NOT NULL,
  `Progra_tipo` int(5) NOT NULL,
  PRIMARY KEY  (`Progra_id`),
  KEY `Progra_tipo` (`Progra_tipo`),
  CONSTRAINT `programa_ibfk_1` FOREIGN KEY (`Progra_tipo`) REFERENCES `programa` (`Progra_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programa`
--

/*!40000 ALTER TABLE `programa` DISABLE KEYS */;
/*!40000 ALTER TABLE `programa` ENABLE KEYS */;


--
-- Definition of table `tiposprograma`
--

DROP TABLE IF EXISTS `tiposprograma`;
CREATE TABLE `tiposprograma` (
  `tiposp_id` int(10) NOT NULL auto_increment,
  `tiposp_tipo` char(30) NOT NULL,
  PRIMARY KEY  (`tiposp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tiposprograma`
--

/*!40000 ALTER TABLE `tiposprograma` DISABLE KEYS */;
INSERT INTO `tiposprograma` (`tiposp_id`,`tiposp_tipo`) VALUES 
 (1,'Presencial'),
 (2,'Virtual'),
 (3,'Complementaria');
/*!40000 ALTER TABLE `tiposprograma` ENABLE KEYS */;


--
-- Definition of table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `usua_id` int(10) NOT NULL auto_increment,
  `usua_nomuser` char(50) NOT NULL,
  `usua_contra` char(20) NOT NULL,
  PRIMARY KEY  (`usua_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`usua_id`,`usua_nomuser`,`usua_contra`) VALUES 
 (1,'ADMIN','0000');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
