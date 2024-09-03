CREATE DATABASE  IF NOT EXISTS `asistencia_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `asistencia_db`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: asistencia_db
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `registros_asistencia`
--

DROP TABLE IF EXISTS `registros_asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registros_asistencia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_profesor` varchar(255) NOT NULL,
  `apellido_profesor` varchar(255) NOT NULL,
  `fecha_curso` date NOT NULL,
  `curso` varchar(255) NOT NULL,
  `hora_inicio_planificada` time NOT NULL,
  `hora_fin_planificada` time NOT NULL,
  `asistencia` enum('SI','NO') NOT NULL,
  `hora_inicio_asistencia` time DEFAULT NULL,
  `hora_fin_asistencia` time DEFAULT NULL,
  `tipo_inasistencia` enum('JUSTIFICADA','NO JUSTIFICADA') DEFAULT NULL,
  `descripcion_causa` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registros_asistencia`
--

LOCK TABLES `registros_asistencia` WRITE;
/*!40000 ALTER TABLE `registros_asistencia` DISABLE KEYS */;
INSERT INTO `registros_asistencia` VALUES (1,'Juan','Pérez','2024-09-01','Matemáticas','08:00:00','10:00:00','SI','08:05:00','10:00:00',NULL,NULL),(2,'María','García','2024-09-01','Ciencias','10:00:00','12:00:00','NO',NULL,NULL,'JUSTIFICADA','Enfermedad'),(3,'Carlos','López','2024-09-02','Historia','08:00:00','10:00:00','SI','08:00:00','10:00:00',NULL,NULL),(6,'Ivan ','Jara','2321-12-12','anatomia','12:12:00','13:13:00','SI','12:12:00','03:13:00','JUSTIFICADA',''),(7,'Ivan ','Jara','1232-02-12','aasa','12:12:00','12:12:00','SI','12:12:00','12:12:00','JUSTIFICADA','asdasdad');
/*!40000 ALTER TABLE `registros_asistencia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-03  1:09:08
