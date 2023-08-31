CREATE DATABASE  IF NOT EXISTS `cerveceria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cerveceria`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: cerveceria
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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `detalle` varchar(255) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Lagers','categoria máxima'),(2,'Ales','categoria primaria'),(3,'Dorados','categoria basica'),(4,'Unoa','categoria super'),(5,'General','categoria simple');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cerveza`
--

DROP TABLE IF EXISTS `cerveza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cerveza` (
  `id_cerveza` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `detalle` varchar(255) NOT NULL,
  `id_categoria` int NOT NULL,
  PRIMARY KEY (`id_cerveza`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `cerveza_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cerveza`
--

LOCK TABLES `cerveza` WRITE;
/*!40000 ALTER TABLE `cerveza` DISABLE KEYS */;
INSERT INTO `cerveza` VALUES (1,'Roja','Clásica',1),(2,'Negra','Importada',2),(3,'Rubia','Suave',1),(4,'Morena','Seca',3),(5,'Dorada','Seca',4);
/*!40000 ALTER TABLE `cerveza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cerveza_matprima`
--

DROP TABLE IF EXISTS `cerveza_matprima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cerveza_matprima` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cerveza` int NOT NULL,
  `id_materiap` int NOT NULL,
  `cantidad` int NOT NULL,
  `unidad` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cerveza` (`id_cerveza`),
  KEY `id_materiap` (`id_materiap`),
  CONSTRAINT `cerveza_matprima_ibfk_1` FOREIGN KEY (`id_cerveza`) REFERENCES `cerveza` (`id_cerveza`),
  CONSTRAINT `cerveza_matprima_ibfk_2` FOREIGN KEY (`id_materiap`) REFERENCES `materia_prima` (`id_materiap`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cerveza_matprima`
--

LOCK TABLES `cerveza_matprima` WRITE;
/*!40000 ALTER TABLE `cerveza_matprima` DISABLE KEYS */;
INSERT INTO `cerveza_matprima` VALUES (1,1,1,100,'gramos'),(2,1,2,1100,'gramos'),(3,1,2,2200,'gramos'),(4,2,1,1000,'gramos'),(5,2,2,2200,'gramos'),(6,3,4,3000,'mg'),(7,4,5,4000,'kg'),(8,2,5,3000,'litros');
/*!40000 ALTER TABLE `cerveza_matprima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia_prima`
--

DROP TABLE IF EXISTS `materia_prima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia_prima` (
  `id_materiap` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `detalle` varchar(255) NOT NULL,
  PRIMARY KEY (`id_materiap`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia_prima`
--

LOCK TABLES `materia_prima` WRITE;
/*!40000 ALTER TABLE `materia_prima` DISABLE KEYS */;
INSERT INTO `materia_prima` VALUES (1,'cebada','materia indispensable'),(2,'agua','agua destilada'),(3,'azúcar','azucar morena'),(4,'componente1','para sustancia'),(5,'componente2','color'),(6,'componente3','escencia'),(7,'componente nuevo','aroma');
/*!40000 ALTER TABLE `materia_prima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo` (
  `id_tipo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES (1,'Dark'),(2,'Pale'),(3,'Backs'),(4,'Stouts'),(5,'Porters'),(6,'Belgians'),(7,'Sours'),(8,'Especial'),(9,'Clasico'),(10,'Premium'),(11,'Promocion'),(12,'Oferta');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_categoria`
--

DROP TABLE IF EXISTS `tipo_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_categoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tipo` int NOT NULL,
  `id_categoria` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_tipo` (`id_tipo`),
  CONSTRAINT `tipo_categoria_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  CONSTRAINT `tipo_categoria_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_categoria`
--

LOCK TABLES `tipo_categoria` WRITE;
/*!40000 ALTER TABLE `tipo_categoria` DISABLE KEYS */;
INSERT INTO `tipo_categoria` VALUES (1,1,1),(2,1,2),(4,2,2),(5,3,3),(6,4,2),(7,5,1),(8,2,4);
/*!40000 ALTER TABLE `tipo_categoria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-30 23:45:25
