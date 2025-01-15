-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: polideportivo
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `abonados`
--

DROP TABLE IF EXISTS `abonados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abonados` (
  `NumeroSocio` int NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Telefono` varchar(9) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `id_pack` int DEFAULT NULL,
  `PagosAlDia` char(2) DEFAULT NULL,
  `DNI` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`NumeroSocio`),
  KEY `id_pack` (`id_pack`),
  CONSTRAINT `abonados_ibfk_1` FOREIGN KEY (`id_pack`) REFERENCES `packs` (`id_pack`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abonados`
--

LOCK TABLES `abonados` WRITE;
/*!40000 ALTER TABLE `abonados` DISABLE KEYS */;
INSERT INTO `abonados` VALUES (1,'Naroa','Lopez',NULL,NULL,'narlop@gmail.com',NULL,'SI','78403017M'),(2,'Javier','Sanchez',NULL,NULL,'javsan@gmail.com',NULL,'SI','74892954L'),(5,'Mikel','Urrutikoetxea',NULL,NULL,'mikurr@gmail.com',NULL,'SI','53274252I'),(6,'Xabier','Puga',NULL,NULL,'xabpug@gmail.com',NULL,'SI','87495221V'),(7,'Mohamed','Said',NULL,NULL,'mohsai@gmail.com',NULL,'SI','47152403P'),(8,'Aitor','Saleta',NULL,NULL,'aitsal@gmail.com',NULL,'NO','12030056B'),(9,'Alex','Zubizarreta',NULL,NULL,'alezub@gmail.com',NULL,'NO','90123547K'),(10,'Iker','Lazkoz',NULL,NULL,'ikelaz@gmail.com',NULL,'NO','63802691R'),(11,'Aritz','Izeta',NULL,NULL,'ariize@gmail.com',NULL,'NO','85624701X'),(12,'Aimar','Igartiburu',NULL,NULL,'aimiga@gmail.com',NULL,'NO','84526710Y'),(13,'Aitzane','Lortzat',NULL,NULL,'aitzlor@gmail.com',NULL,'NO','69873201I'),(14,'Uxue','Mendizale',NULL,NULL,'uxumen@gmail.com',NULL,'NO','05164732Z'),(15,'Onintza','Xinta',NULL,NULL,'onixin@gmail.com',NULL,'NO','84562310R');
/*!40000 ALTER TABLE `abonados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campeonato`
--

DROP TABLE IF EXISTS `campeonato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campeonato` (
  `id_campeonato` int NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `id_deporte` int DEFAULT NULL,
  `id_instalaciones` int DEFAULT NULL,
  `Hora` int DEFAULT NULL,
  `Dia` date DEFAULT NULL,
  PRIMARY KEY (`id_campeonato`),
  KEY `id_deporte` (`id_deporte`),
  CONSTRAINT `campeonato_ibfk_1` FOREIGN KEY (`id_deporte`) REFERENCES `deporte` (`id_deporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campeonato`
--

LOCK TABLES `campeonato` WRITE;
/*!40000 ALTER TABLE `campeonato` DISABLE KEYS */;
/*!40000 ALTER TABLE `campeonato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clases`
--

DROP TABLE IF EXISTS `clases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clases` (
  `id_clase` int NOT NULL,
  `Horario` int DEFAULT NULL,
  `DiaDeLaSemana` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_clase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clases`
--

LOCK TABLES `clases` WRITE;
/*!40000 ALTER TABLE `clases` DISABLE KEYS */;
INSERT INTO `clases` VALUES (1,10,'Lunes'),(2,12,'Lunes'),(3,14,'Lunes'),(4,16,'Lunes'),(5,18,'Lunes'),(6,10,'Martes'),(7,14,'Martes'),(10,12,'Martes');
/*!40000 ALTER TABLE `clases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deporte`
--

DROP TABLE IF EXISTS `deporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deporte` (
  `id_deporte` int NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_deporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deporte`
--

LOCK TABLES `deporte` WRITE;
/*!40000 ALTER TABLE `deporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `deporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_clases`
--

DROP TABLE IF EXISTS `detalles_clases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalles_clases` (
  `id_clase` int NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_clase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_clases`
--

LOCK TABLES `detalles_clases` WRITE;
/*!40000 ALTER TABLE `detalles_clases` DISABLE KEYS */;
INSERT INTO `detalles_clases` VALUES (1,'Spinning'),(2,'BodyPump'),(3,'TRX'),(4,'Gap'),(5,'Padel'),(6,'Core'),(7,'Yoga'),(8,'Futbol');
/*!40000 ALTER TABLE `detalles_clases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_instalacion`
--

DROP TABLE IF EXISTS `detalles_instalacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalles_instalacion` (
  `id_instalacion` int NOT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_instalacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_instalacion`
--

LOCK TABLES `detalles_instalacion` WRITE;
/*!40000 ALTER TABLE `detalles_instalacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalles_instalacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instalaciones`
--

DROP TABLE IF EXISTS `instalaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instalaciones` (
  `id_instalacion` int DEFAULT NULL,
  `Nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instalaciones`
--

LOCK TABLES `instalaciones` WRITE;
/*!40000 ALTER TABLE `instalaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `instalaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packs`
--

DROP TABLE IF EXISTS `packs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packs` (
  `id_pack` int NOT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_pack`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packs`
--

LOCK TABLES `packs` WRITE;
/*!40000 ALTER TABLE `packs` DISABLE KEYS */;
/*!40000 ALTER TABLE `packs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taquillas`
--

DROP TABLE IF EXISTS `taquillas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taquillas` (
  `Numero` int NOT NULL,
  `Contraseña` int DEFAULT NULL,
  PRIMARY KEY (`Numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taquillas`
--

LOCK TABLES `taquillas` WRITE;
/*!40000 ALTER TABLE `taquillas` DISABLE KEYS */;
/*!40000 ALTER TABLE `taquillas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajadores`
--

DROP TABLE IF EXISTS `trabajadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabajadores` (
  `DNI` char(9) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `FechaDeInicioDeContrato` date DEFAULT NULL,
  `Cargo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajadores`
--

LOCK TABLES `trabajadores` WRITE;
/*!40000 ALTER TABLE `trabajadores` DISABLE KEYS */;
INSERT INTO `trabajadores` VALUES ('1','Alejandro ','Terreño','aleter@gmail.com','2000-07-06','Admin'),('10','Jorge','Serrano','joser@gmail.com','2023-06-06','Monitor'),('11','Fernando ','Alonso','feralo@gmail.com','2020-09-03','Monitor'),('14','Koldo','Otegi','kolote@gmail.com','1998-03-23','Monitor'),('20','Paco','Sanz','pacsan@gmail.com','2023-06-09','Ayudante');
/*!40000 ALTER TABLE `trabajadores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-15 13:37:14
