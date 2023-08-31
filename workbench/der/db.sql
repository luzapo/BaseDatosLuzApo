-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: artesanal
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `detalle` varchar(255) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Lagers','aguas blandas'),(2,'Ales','aguas duras');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cervezas`
--

DROP TABLE IF EXISTS `cervezas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cervezas` (
  `id_cerveza` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `detalle` varchar(255) NOT NULL,
  `id_categoria` int DEFAULT NULL,
  PRIMARY KEY (`id_cerveza`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `cervezas_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cervezas`
--

LOCK TABLES `cervezas` WRITE;
/*!40000 ALTER TABLE `cervezas` DISABLE KEYS */;
INSERT INTO `cervezas` VALUES (1,'inglesa','sello dorado',1),(2,'munich','sello plateado',2);
/*!40000 ALTER TABLE `cervezas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cervezas_matprima`
--

DROP TABLE IF EXISTS `cervezas_matprima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cervezas_matprima` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cerveza` int NOT NULL,
  `id_materiap` int NOT NULL,
  `unidad` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cerveza` (`id_cerveza`),
  KEY `id_materiap` (`id_materiap`),
  CONSTRAINT `cervezas_matprima_ibfk_1` FOREIGN KEY (`id_cerveza`) REFERENCES `cervezas` (`id_cerveza`),
  CONSTRAINT `cervezas_matprima_ibfk_2` FOREIGN KEY (`id_materiap`) REFERENCES `matprima` (`id_materiap`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cervezas_matprima`
--

LOCK TABLES `cervezas_matprima` WRITE;
/*!40000 ALTER TABLE `cervezas_matprima` DISABLE KEYS */;
INSERT INTO `cervezas_matprima` VALUES (1,1,1,1),(2,1,2,1),(3,1,3,1),(4,1,4,1),(5,2,1,1),(6,2,2,1),(7,2,3,1),(8,2,4,1),(9,1,5,1),(10,1,6,1),(11,2,7,1),(12,2,8,1);
/*!40000 ALTER TABLE `cervezas_matprima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matprima`
--

DROP TABLE IF EXISTS `matprima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matprima` (
  `id_materiap` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `detalle` varchar(255) NOT NULL,
  PRIMARY KEY (`id_materiap`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matprima`
--

LOCK TABLES `matprima` WRITE;
/*!40000 ALTER TABLE `matprima` DISABLE KEYS */;
INSERT INTO `matprima` VALUES (1,'agua','una mayor proporcion'),(2,'malta','germinacion de los cereales'),(3,'lupulo','aceites esenciales'),(4,'levadura','hongos lager y ale'),(5,'miel','x'),(6,'azucar','x'),(7,'melaza','x'),(8,'cereales','x');
/*!40000 ALTER TABLE `matprima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos`
--

DROP TABLE IF EXISTS `tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos` (
  `id_tipo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos`
--

LOCK TABLES `tipos` WRITE;
/*!40000 ALTER TABLE `tipos` DISABLE KEYS */;
INSERT INTO `tipos` VALUES (1,'dark'),(2,'pale'),(3,'bocks'),(4,'stouts'),(5,'porters'),(6,'belgians'),(7,'sours');
/*!40000 ALTER TABLE `tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_categorias`
--

DROP TABLE IF EXISTS `tipos_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tipo` int NOT NULL,
  `id_categoria` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tipo` (`id_tipo`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `tipos_categorias_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipos` (`id_tipo`),
  CONSTRAINT `tipos_categorias_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_categorias`
--

LOCK TABLES `tipos_categorias` WRITE;
/*!40000 ALTER TABLE `tipos_categorias` DISABLE KEYS */;
INSERT INTO `tipos_categorias` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,2),(6,6,2),(7,7,2);
/*!40000 ALTER TABLE `tipos_categorias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-30 21:30:31
