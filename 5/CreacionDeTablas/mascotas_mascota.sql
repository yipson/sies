-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: mascotas
-- ------------------------------------------------------
-- Server version	5.7.30-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mascota`
--

DROP TABLE IF EXISTS `mascota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mascota` (
  `idmascota` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `tipo_mascota` int(11) DEFAULT NULL,
  `propietario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmascota`),
  KEY `fk_MASCOTA_PROPIETARIO` (`propietario`),
  KEY `fk_MASCOTA_TIPO_MASCOTA` (`tipo_mascota`),
  CONSTRAINT `fk_MASCOTA_PROPIETARIO` FOREIGN KEY (`propietario`) REFERENCES `propietario` (`idpropietario`),
  CONSTRAINT `fk_MASCOTA_TIPO_MASCOTA` FOREIGN KEY (`tipo_mascota`) REFERENCES `tipo_mascota` (`idtipo_mascota`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascota`
--

LOCK TABLES `mascota` WRITE;
/*!40000 ALTER TABLE `mascota` DISABLE KEYS */;
INSERT INTO `mascota` VALUES (1,'Max',1,1),(2,'Tom',2,2),(3,'Alex',3,1),(4,'Jerry',3,NULL),(5,'Alan',2,3),(6,'Mia',2,3),(7,'Diablo',1,1),(8,'zeus',1,NULL);
/*!40000 ALTER TABLE `mascota` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-21 19:07:22
