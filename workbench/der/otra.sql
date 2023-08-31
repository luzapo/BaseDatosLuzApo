CREATE DATABASE  IF NOT EXISTS `artesanal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `artesanal`;
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
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Lagers','aguas blandas'),(2,'Ales','aguas duras');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cervezas`
--

LOCK TABLES `cervezas` WRITE;
/*!40000 ALTER TABLE `cervezas` DISABLE KEYS */;
INSERT INTO `cervezas` VALUES (1,'inglesa','sello dorado',1),(2,'munich','sello plateado',2);
/*!40000 ALTER TABLE `cervezas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cervezas_matprima`
--

LOCK TABLES `cervezas_matprima` WRITE;
/*!40000 ALTER TABLE `cervezas_matprima` DISABLE KEYS */;
INSERT INTO `cervezas_matprima` VALUES (1,1,1,1),(2,1,2,1),(3,1,3,1),(4,1,4,1),(5,2,1,1),(6,2,2,1),(7,2,3,1),(8,2,4,1),(9,1,5,1),(10,1,6,1),(11,2,7,1),(12,2,8,1);
/*!40000 ALTER TABLE `cervezas_matprima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `matprima`
--

LOCK TABLES `matprima` WRITE;
/*!40000 ALTER TABLE `matprima` DISABLE KEYS */;
INSERT INTO `matprima` VALUES (1,'agua','una mayor proporcion'),(2,'malta','germinacion de los cereales'),(3,'lupulo','aceites esenciales'),(4,'levadura','hongos lager y ale'),(5,'miel','x'),(6,'azucar','x'),(7,'melaza','x'),(8,'cereales','x');
/*!40000 ALTER TABLE `matprima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipos`
--

LOCK TABLES `tipos` WRITE;
/*!40000 ALTER TABLE `tipos` DISABLE KEYS */;
INSERT INTO `tipos` VALUES (1,'dark'),(2,'pale'),(3,'bocks'),(4,'stouts'),(5,'porters'),(6,'belgians'),(7,'sours');
/*!40000 ALTER TABLE `tipos` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2023-08-30 21:33:50
