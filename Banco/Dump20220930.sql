-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: db_ecommerce
-- ------------------------------------------------------
-- Server version	5.7.23-log

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
-- Table structure for table `tb_addresses`
--

DROP TABLE IF EXISTS `tb_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_addresses` (
  `idaddress` int(11) NOT NULL AUTO_INCREMENT,
  `idperson` int(11) NOT NULL,
  `desaddress` varchar(128) NOT NULL,
  `desnumber` varchar(16) NOT NULL,
  `descomplement` varchar(32) DEFAULT NULL,
  `descity` varchar(32) NOT NULL,
  `desstate` varchar(32) NOT NULL,
  `descountry` varchar(32) NOT NULL,
  `deszipcode` char(8) NOT NULL,
  `desdistrict` varchar(32) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idaddress`),
  KEY `fk_addresses_persons_idx` (`idperson`),
  CONSTRAINT `fk_addresses_persons` FOREIGN KEY (`idperson`) REFERENCES `tb_persons` (`idperson`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_addresses`
--

LOCK TABLES `tb_addresses` WRITE;
/*!40000 ALTER TABLE `tb_addresses` DISABLE KEYS */;
INSERT INTO `tb_addresses` VALUES (1,7,'Rua Geraldo Salvi','388','','Barra Bonita','SP','Brasil','17345262','Sonho Nosso I','2022-09-21 00:29:30');
/*!40000 ALTER TABLE `tb_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_carts`
--

DROP TABLE IF EXISTS `tb_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_carts` (
  `idcart` int(11) NOT NULL AUTO_INCREMENT,
  `dessessionid` varchar(64) NOT NULL,
  `iduser` int(11) DEFAULT NULL,
  `deszipcode` char(8) DEFAULT NULL,
  `vlfreight` decimal(10,2) DEFAULT NULL,
  `nrdays` int(11) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcart`),
  KEY `FK_carts_users_idx` (`iduser`),
  CONSTRAINT `fk_carts_users` FOREIGN KEY (`iduser`) REFERENCES `tb_users` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_carts`
--

LOCK TABLES `tb_carts` WRITE;
/*!40000 ALTER TABLE `tb_carts` DISABLE KEYS */;
INSERT INTO `tb_carts` VALUES (1,'4ftfqv0gp2tudcjimhnltrv449',NULL,NULL,NULL,NULL,'2022-09-13 14:32:35'),(2,'aom31a1bdoti05v7ic35j53upb',NULL,'17345262',167.83,8,'2022-09-14 11:35:56'),(3,'n2d5mjquv4bjihslrm9t1euieo',NULL,'17345262',177.79,8,'2022-09-15 11:28:12'),(4,'ku9e5s2shrapjron5cva639fpu',NULL,'17345262',141.29,8,'2022-09-16 12:19:16'),(5,'d31rcvcqk2s8vh18d2gr3tam2q',NULL,'17345262',234.28,8,'2022-09-19 17:05:33'),(6,'d2fnh5p9n0qup7gnpto9kgj807',NULL,NULL,NULL,NULL,'2022-09-20 11:41:56'),(7,'lb81t88gks2qe7ietd34rsg4be',NULL,'17345262',118.59,8,'2022-09-21 00:14:22'),(8,'f87ndbarnvrda05rqkmtf7ad23',NULL,NULL,NULL,NULL,'2022-09-21 12:11:21'),(9,'31kr5pcgi4h7gjh7t35jk85cs1',NULL,NULL,NULL,NULL,'2022-09-21 13:16:38'),(10,'vuobcprvrmagori0s5fiaudk5g',NULL,NULL,NULL,NULL,'2022-09-21 15:03:24'),(11,'p7f8rmddg35g2q5at0d7726b63',NULL,NULL,NULL,NULL,'2022-09-22 00:29:02'),(12,'d6o7oq6ajnc1kluqqj4dhi02fl',NULL,NULL,NULL,NULL,'2022-09-22 20:19:19'),(13,'2i5dt3sm1gibaccg40luqh5dbk',NULL,NULL,NULL,NULL,'2022-09-22 23:52:13'),(14,'5fpf1iaug27sa9afejkg33t6ph',NULL,NULL,NULL,NULL,'2022-09-23 00:05:34'),(15,'8cjt07p1ei88klv5vri68n8f7m',NULL,NULL,NULL,NULL,'2022-09-23 13:50:27'),(16,'m3n37mmtfjqg8nd7pcqn354pt6',NULL,NULL,NULL,NULL,'2022-09-23 13:51:11'),(17,'s4pt7rbgqliulnajd8d7f1s2bb',NULL,'17345262',93.08,8,'2022-09-23 13:57:09'),(18,'hd71m39lv9b36h3iv85t67fld6',NULL,NULL,NULL,NULL,'2022-09-24 04:32:56'),(19,'m4fnbqpb7hb6qrlfum367nnu83',NULL,NULL,NULL,NULL,'2022-09-28 00:30:31'),(20,'6qivhcfbsqr0dt82t8s12ish60',NULL,NULL,NULL,NULL,'2022-09-28 00:44:15'),(21,'22iujrb3adjl8eup6goj4r45tv',NULL,'17345262',158.58,8,'2022-09-28 11:31:20'),(22,'6ebhk8rt9e6jfr0beg87dr5n2v',NULL,NULL,NULL,NULL,'2022-09-29 23:53:46'),(23,'huigf0n61m2393nfa8fu5h9u34',NULL,NULL,NULL,NULL,'2022-09-30 00:16:42'),(24,'bjau9q9nep13gt0mf5rqgudhjm',NULL,NULL,NULL,NULL,'2022-09-30 14:20:55');
/*!40000 ALTER TABLE `tb_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cartsproducts`
--

DROP TABLE IF EXISTS `tb_cartsproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cartsproducts` (
  `idcartproduct` int(11) NOT NULL AUTO_INCREMENT,
  `idcart` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `dtremoved` datetime DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcartproduct`),
  KEY `FK_cartsproducts_carts_idx` (`idcart`),
  KEY `FK_cartsproducts_products_idx` (`idproduct`),
  CONSTRAINT `fk_cartsproducts_carts` FOREIGN KEY (`idcart`) REFERENCES `tb_carts` (`idcart`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cartsproducts_products` FOREIGN KEY (`idproduct`) REFERENCES `tb_products` (`idproduct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cartsproducts`
--

LOCK TABLES `tb_cartsproducts` WRITE;
/*!40000 ALTER TABLE `tb_cartsproducts` DISABLE KEYS */;
INSERT INTO `tb_cartsproducts` VALUES (1,1,1,NULL,'2022-09-13 19:35:16'),(3,1,8,NULL,'2022-09-13 19:37:13'),(4,2,8,'2022-09-14 09:08:08','2022-09-14 11:36:03'),(5,2,12,'2022-09-14 09:08:06','2022-09-14 11:36:12'),(6,2,8,'2022-09-14 09:08:10','2022-09-14 11:37:09'),(7,2,10,'2022-09-14 09:08:04','2022-09-14 11:37:15'),(8,2,1,'2022-09-14 09:08:12','2022-09-14 11:38:00'),(9,2,10,'2022-09-14 09:08:04','2022-09-14 11:38:05'),(10,2,10,'2022-09-14 09:08:04','2022-09-14 11:38:07'),(11,2,1,'2022-09-14 14:18:08','2022-09-14 12:10:51'),(12,2,1,'2022-09-14 14:18:10','2022-09-14 12:10:51'),(13,2,1,NULL,'2022-09-14 12:10:51'),(14,2,9,'2022-09-14 15:47:13','2022-09-14 12:11:04'),(15,2,9,NULL,'2022-09-14 18:47:09'),(16,3,9,NULL,'2022-09-15 11:38:23'),(17,3,9,NULL,'2022-09-15 11:39:45'),(18,4,8,'2022-09-16 16:14:36','2022-09-16 12:19:25'),(19,4,10,'2022-09-16 15:27:22','2022-09-16 12:19:30'),(20,4,8,'2022-09-16 16:14:36','2022-09-16 19:14:13'),(21,4,8,'2022-09-16 16:14:36','2022-09-16 19:14:32'),(22,5,1,'2022-09-19 14:06:52','2022-09-19 17:06:41'),(23,5,1,'2022-09-19 14:06:52','2022-09-19 17:06:48'),(24,5,1,'2022-09-19 14:06:52','2022-09-19 17:06:48'),(25,5,1,'2022-09-19 14:06:52','2022-09-19 17:06:48'),(26,5,1,NULL,'2022-09-19 18:35:49'),(27,5,1,NULL,'2022-09-19 18:35:49'),(28,5,1,NULL,'2022-09-19 18:42:43'),(29,7,8,NULL,'2022-09-21 00:17:20'),(30,7,8,NULL,'2022-09-21 00:17:23'),(31,9,14,NULL,'2022-09-21 15:01:39'),(32,10,14,NULL,'2022-09-21 15:03:30'),(33,8,14,NULL,'2022-09-21 17:09:30'),(34,11,14,'2022-09-21 21:59:27','2022-09-22 00:29:08'),(35,11,14,'2022-09-21 22:00:24','2022-09-22 01:00:10'),(36,11,14,'2022-09-21 22:02:42','2022-09-22 01:02:36'),(37,11,14,'2022-09-21 22:03:47','2022-09-22 01:03:43'),(38,11,14,'2022-09-21 22:11:52','2022-09-22 01:11:45'),(39,11,14,'2022-09-21 22:13:59','2022-09-22 01:13:54'),(40,11,14,'2022-09-21 22:16:19','2022-09-22 01:16:13'),(41,12,14,'2022-09-22 17:20:28','2022-09-22 20:19:24'),(42,12,14,'2022-09-22 17:22:30','2022-09-22 20:22:26'),(43,12,14,'2022-09-22 17:26:00','2022-09-22 20:25:53'),(44,12,1,'2022-09-22 17:31:16','2022-09-22 20:25:55'),(45,12,14,'2022-09-22 17:31:12','2022-09-22 20:30:40'),(46,12,14,'2022-09-22 17:32:28','2022-09-22 20:32:27'),(47,12,14,'2022-09-22 17:32:47','2022-09-22 20:32:39'),(48,12,14,'2022-09-22 17:33:13','2022-09-22 20:33:10'),(49,12,1,'2022-09-22 17:33:45','2022-09-22 20:33:33'),(50,12,9,'2022-09-22 17:33:39','2022-09-22 20:33:35'),(51,12,14,'2022-09-22 17:34:04','2022-09-22 20:34:00'),(52,12,14,'2022-09-22 17:35:04','2022-09-22 20:35:00'),(53,12,14,'2022-09-22 17:35:46','2022-09-22 20:35:44'),(54,12,14,'2022-09-22 17:36:58','2022-09-22 20:36:55'),(55,12,14,'2022-09-22 17:37:27','2022-09-22 20:37:21'),(56,12,14,'2022-09-22 17:37:50','2022-09-22 20:37:42'),(57,12,14,'2022-09-22 17:40:27','2022-09-22 20:40:20'),(58,12,14,'2022-09-22 17:41:14','2022-09-22 20:41:11'),(59,13,14,'2022-09-22 21:02:25','2022-09-23 00:02:23'),(60,13,14,'2022-09-22 21:04:02','2022-09-23 00:04:00'),(61,14,14,'2022-09-22 21:05:39','2022-09-23 00:05:37'),(62,14,14,'2022-09-22 21:08:26','2022-09-23 00:08:24'),(63,14,14,'2022-09-22 21:08:49','2022-09-23 00:08:47'),(64,14,14,'2022-09-22 21:15:38','2022-09-23 00:15:36'),(65,14,14,'2022-09-22 21:20:29','2022-09-23 00:19:20'),(66,14,14,'2022-09-22 21:24:01','2022-09-23 00:23:05'),(67,14,14,'2022-09-22 21:59:44','2022-09-23 00:59:32'),(68,14,14,'2022-09-22 22:01:10','2022-09-23 01:00:56'),(69,14,14,'2022-09-22 22:02:30','2022-09-23 01:02:11'),(70,14,14,'2022-09-22 22:03:56','2022-09-23 01:03:54'),(71,14,14,'2022-09-22 22:04:35','2022-09-23 01:04:31'),(72,14,14,'2022-09-22 22:04:56','2022-09-23 01:04:54'),(73,14,14,'2022-09-22 22:05:38','2022-09-23 01:05:14'),(74,17,14,'2022-09-23 11:00:09','2022-09-23 13:59:57'),(75,17,14,'2022-09-23 11:02:49','2022-09-23 14:01:27'),(76,17,14,'2022-09-23 11:03:09','2022-09-23 14:03:07'),(77,17,14,'2022-09-23 11:03:26','2022-09-23 14:03:24'),(78,17,14,'2022-09-23 11:08:08','2022-09-23 14:08:05'),(79,17,14,'2022-09-23 11:08:34','2022-09-23 14:08:28'),(80,17,14,'2022-09-23 11:11:14','2022-09-23 14:08:48'),(81,17,1,'2022-09-23 11:09:09','2022-09-23 14:08:53'),(82,17,9,'2022-09-23 11:09:03','2022-09-23 14:08:59'),(83,17,14,'2022-09-23 11:11:51','2022-09-23 14:11:48'),(84,17,14,'2022-09-23 11:12:47','2022-09-23 14:12:43'),(85,17,14,'2022-09-23 11:14:29','2022-09-23 14:14:21'),(86,17,14,'2022-09-23 11:19:43','2022-09-23 14:14:42'),(87,17,1,'2022-09-23 11:14:52','2022-09-23 14:14:45'),(88,17,14,'2022-09-23 11:19:43','2022-09-23 14:18:20'),(89,17,14,'2022-09-23 11:26:46','2022-09-23 14:19:58'),(90,17,1,'2022-09-23 11:20:05','2022-09-23 14:20:02'),(91,17,14,'2022-09-23 11:27:11','2022-09-23 14:27:02'),(92,17,14,'2022-09-23 11:31:38','2022-09-23 14:31:34'),(93,17,14,'2022-09-23 11:35:02','2022-09-23 14:34:47'),(94,17,14,'2022-09-23 11:37:53','2022-09-23 14:37:50'),(95,17,14,'2022-09-23 11:38:18','2022-09-23 14:38:15'),(96,17,14,'2022-09-23 11:38:43','2022-09-23 14:38:40'),(97,17,14,'2022-09-23 11:39:07','2022-09-23 14:38:58'),(98,17,14,'2022-09-23 11:39:52','2022-09-23 14:39:42'),(99,17,14,'2022-09-23 11:43:49','2022-09-23 14:43:44'),(100,17,14,'2022-09-23 11:49:42','2022-09-23 14:44:17'),(101,17,1,'2022-09-23 11:44:27','2022-09-23 14:44:21'),(102,17,9,'2022-09-23 11:44:53','2022-09-23 14:44:42'),(103,17,14,'2022-09-23 11:49:42','2022-09-23 14:49:24'),(104,17,1,'2022-09-23 11:53:29','2022-09-23 14:49:28'),(105,17,14,'2022-09-23 12:00:27','2022-09-23 14:53:21'),(106,17,14,'2022-09-23 12:01:13','2022-09-23 15:01:09'),(107,17,14,'2022-09-23 12:05:05','2022-09-23 15:04:55'),(108,17,15,'2022-09-23 12:06:07','2022-09-23 15:06:02'),(109,17,1,'2022-09-23 12:06:35','2022-09-23 15:06:17'),(110,17,1,'2022-09-23 12:06:35','2022-09-23 15:06:24'),(111,17,14,'2022-09-23 12:06:41','2022-09-23 15:06:30'),(112,17,14,'2022-09-23 15:00:43','2022-09-23 18:00:36'),(113,17,14,'2022-09-23 15:01:32','2022-09-23 18:01:29'),(114,17,14,'2022-09-23 15:05:19','2022-09-23 18:01:42'),(115,17,9,'2022-09-23 15:10:43','2022-09-23 18:04:16'),(116,17,12,'2022-09-23 15:11:43','2022-09-23 18:10:48'),(117,17,12,'2022-09-23 15:35:03','2022-09-23 18:13:35'),(118,17,10,'2022-09-23 15:13:52','2022-09-23 18:13:45'),(119,17,10,'2022-09-23 15:19:29','2022-09-23 18:19:21'),(120,17,10,'2022-09-23 15:21:03','2022-09-23 18:20:01'),(121,17,10,'2022-09-23 15:21:26','2022-09-23 18:21:17'),(122,17,10,'2022-09-23 15:27:21','2022-09-23 18:25:27'),(123,17,10,'2022-09-23 15:28:24','2022-09-23 18:28:12'),(124,17,10,'2022-09-23 15:33:32','2022-09-23 18:33:27'),(125,17,10,'2022-09-23 15:34:32','2022-09-23 18:34:29'),(126,17,10,'2022-09-23 16:07:05','2022-09-23 19:06:55'),(127,17,9,'2022-09-23 16:08:28','2022-09-23 19:06:59'),(128,17,12,'2022-09-23 16:09:08','2022-09-23 19:08:22'),(129,17,9,'2022-09-23 16:09:01','2022-09-23 19:08:57'),(130,17,12,'2022-09-23 16:10:01','2022-09-23 19:09:48'),(131,17,10,'2022-09-23 16:09:56','2022-09-23 19:09:52'),(132,17,8,'2022-09-23 16:14:19','2022-09-23 19:14:09'),(133,17,10,'2022-09-23 16:35:05','2022-09-23 19:34:58'),(134,17,12,'2022-09-23 16:38:14','2022-09-23 19:37:55'),(135,17,12,'2022-09-23 16:38:48','2022-09-23 19:38:45'),(136,17,8,'2022-09-23 16:39:23','2022-09-23 19:39:19'),(137,17,8,'2022-09-23 16:41:14','2022-09-23 19:41:09'),(138,17,12,'2022-09-23 16:45:10','2022-09-23 19:44:58'),(139,17,14,'2022-09-23 16:58:31','2022-09-23 19:57:42'),(140,17,8,NULL,'2022-09-23 20:00:46'),(141,18,8,'2022-09-24 02:04:49','2022-09-24 04:33:04'),(142,18,14,'2022-09-24 02:04:47','2022-09-24 04:34:00'),(143,18,14,'2022-09-24 02:04:47','2022-09-24 04:40:46'),(144,18,8,'2022-09-24 02:04:49','2022-09-24 04:42:01'),(145,18,8,'2022-09-24 02:04:49','2022-09-24 04:45:58'),(146,18,8,'2022-09-24 02:04:49','2022-09-24 04:48:08'),(147,18,8,'2022-09-24 02:04:49','2022-09-24 04:48:51'),(148,18,8,'2022-09-24 02:04:49','2022-09-24 04:50:58'),(149,18,14,'2022-09-24 02:04:47','2022-09-24 04:56:07'),(150,18,14,'2022-09-24 02:04:47','2022-09-24 05:01:22'),(151,18,14,'2022-09-24 02:04:47','2022-09-24 05:01:56'),(152,18,14,'2022-09-24 02:04:47','2022-09-24 05:02:57'),(153,18,14,'2022-09-24 02:04:47','2022-09-24 05:03:20'),(154,18,8,'2022-09-24 02:04:49','2022-09-24 05:04:30'),(155,18,12,NULL,'2022-09-24 05:04:54'),(156,18,12,NULL,'2022-09-24 05:04:59'),(157,19,1,NULL,'2022-09-28 00:31:06'),(158,19,1,NULL,'2022-09-28 00:31:09'),(159,19,1,NULL,'2022-09-28 00:35:08'),(160,19,9,NULL,'2022-09-28 00:41:54'),(161,19,9,NULL,'2022-09-28 00:42:05'),(162,19,9,NULL,'2022-09-28 00:42:16'),(163,20,1,'2022-09-27 22:11:44','2022-09-28 00:44:31'),(164,20,1,'2022-09-27 22:12:07','2022-09-28 00:44:34'),(165,20,1,'2022-09-27 22:12:09','2022-09-28 00:44:39'),(166,20,1,'2022-09-27 22:12:10','2022-09-28 00:44:43'),(167,20,1,'2022-09-27 22:12:11','2022-09-28 00:46:45'),(168,20,1,'2022-09-27 22:12:12','2022-09-28 00:48:17'),(169,20,1,'2022-09-27 22:12:17','2022-09-28 00:48:24'),(170,20,1,'2022-09-27 22:12:18','2022-09-28 00:50:28'),(171,20,1,'2022-09-27 22:12:20','2022-09-28 00:50:52'),(172,20,1,'2022-09-27 22:12:20','2022-09-28 00:50:55'),(173,20,1,'2022-09-27 22:12:21','2022-09-28 01:12:10'),(174,20,1,'2022-09-27 22:12:21','2022-09-28 01:12:11'),(175,20,1,'2022-09-27 22:12:21','2022-09-28 01:12:13'),(176,20,1,'2022-09-27 22:12:21','2022-09-28 01:12:16'),(177,20,1,'2022-09-27 22:12:22','2022-09-28 01:12:18'),(178,20,1,'2022-09-27 22:12:22','2022-09-28 01:12:19'),(179,20,1,'2022-09-27 22:12:26','2022-09-28 01:12:25'),(180,20,1,'2022-09-27 22:12:29','2022-09-28 01:12:26'),(181,20,1,'2022-09-27 22:12:29','2022-09-28 01:12:27'),(182,21,1,'2022-09-28 08:32:02','2022-09-28 11:31:26'),(183,21,8,'2022-09-28 08:32:18','2022-09-28 11:32:13'),(184,21,1,'2022-09-28 08:34:17','2022-09-28 11:33:56'),(185,21,9,'2022-09-28 08:34:55','2022-09-28 11:34:37'),(186,21,8,'2022-09-28 08:35:04','2022-09-28 11:34:44'),(187,21,9,'2022-09-28 08:34:57','2022-09-28 11:34:50'),(188,21,9,'2022-09-28 08:35:10','2022-09-28 11:34:52'),(189,21,8,'2022-09-28 08:35:05','2022-09-28 11:34:59'),(190,21,8,'2022-09-28 08:35:06','2022-09-28 11:35:01'),(191,21,8,'2022-09-28 08:35:07','2022-09-28 11:35:02'),(192,21,8,'2022-09-28 08:35:08','2022-09-28 11:35:02'),(193,21,1,'2022-09-28 08:45:09','2022-09-28 11:44:54'),(194,21,1,'2022-09-28 08:45:09','2022-09-28 11:44:57'),(195,21,1,'2022-09-28 08:45:09','2022-09-28 11:44:59'),(196,21,1,'2022-09-28 08:45:09','2022-09-28 11:45:00'),(197,21,1,'2022-09-28 08:45:09','2022-09-28 11:45:01'),(198,21,1,'2022-09-28 08:45:09','2022-09-28 11:45:03'),(199,21,1,'2022-09-28 08:45:09','2022-09-28 11:45:04'),(200,21,1,'2022-09-28 08:45:09','2022-09-28 11:45:05'),(201,21,1,'2022-09-28 08:45:09','2022-09-28 11:45:06'),(202,21,9,'2022-09-28 08:45:41','2022-09-28 11:45:16'),(203,21,1,'2022-09-28 08:46:10','2022-09-28 11:45:38'),(204,21,1,'2022-09-28 08:46:34','2022-09-28 11:46:15'),(205,21,14,'2022-09-28 08:53:24','2022-09-28 11:46:31'),(206,21,1,'2022-09-28 08:47:21','2022-09-28 11:46:50'),(207,21,1,'2022-09-28 08:47:23','2022-09-28 11:47:14'),(208,21,1,'2022-09-28 08:47:40','2022-09-28 11:47:17'),(209,21,1,'2022-09-28 08:48:21','2022-09-28 11:48:03'),(210,21,1,'2022-09-28 08:52:27','2022-09-28 11:51:22'),(211,21,1,'2022-09-28 13:36:59','2022-09-28 11:53:30'),(212,21,10,'2022-09-28 08:53:50','2022-09-28 11:53:38'),(213,21,11,'2022-09-28 13:33:15','2022-09-28 16:32:39'),(214,21,10,'2022-09-28 13:36:38','2022-09-28 16:36:33'),(215,21,9,'2022-09-28 14:02:46','2022-09-28 16:37:14'),(216,21,12,'2022-09-28 13:37:26','2022-09-28 16:37:20'),(217,21,10,'2022-09-28 13:49:04','2022-09-28 16:48:57'),(218,21,8,'2022-09-28 13:54:47','2022-09-28 16:54:37'),(219,21,8,'2022-09-28 13:55:34','2022-09-28 16:55:28'),(220,21,8,'2022-09-28 13:57:50','2022-09-28 16:57:40'),(221,21,8,'2022-09-28 13:57:52','2022-09-28 16:57:47'),(222,21,8,'2022-09-28 13:57:59','2022-09-28 16:57:49'),(223,21,9,'2022-09-28 14:02:49','2022-09-28 16:58:20'),(224,21,12,'2022-09-28 13:59:12','2022-09-28 16:58:25'),(225,21,12,'2022-09-28 14:00:32','2022-09-28 17:00:28'),(226,21,8,'2022-09-28 14:01:06','2022-09-28 17:00:59'),(227,21,1,'2022-09-28 14:02:25','2022-09-28 17:02:21'),(228,21,1,'2022-09-28 14:03:53','2022-09-28 17:02:38'),(229,21,1,'2022-09-28 14:04:06','2022-09-28 17:03:45'),(230,21,1,'2022-09-28 14:04:32','2022-09-28 17:04:21'),(231,21,1,'2022-09-28 14:04:41','2022-09-28 17:04:26'),(232,21,1,'2022-09-28 14:05:04','2022-09-28 17:04:57'),(233,21,1,NULL,'2022-09-28 17:05:01'),(234,21,12,'2022-09-28 14:05:26','2022-09-28 17:05:22'),(235,21,12,NULL,'2022-09-28 17:16:28'),(236,21,8,NULL,'2022-09-28 17:17:16'),(237,22,1,'2022-09-29 20:54:06','2022-09-29 23:54:02'),(238,22,9,'2022-09-29 20:54:14','2022-09-29 23:54:11'),(239,22,1,'2022-09-29 20:54:30','2022-09-29 23:54:18'),(240,22,9,'2022-09-29 20:54:26','2022-09-29 23:54:23'),(241,22,1,'2022-09-29 20:54:47','2022-09-29 23:54:35'),(242,22,9,'2022-09-29 20:54:43','2022-09-29 23:54:40'),(243,22,8,'2022-09-29 20:55:15','2022-09-29 23:54:52'),(244,22,10,'2022-09-29 20:55:03','2022-09-29 23:54:59'),(245,22,8,'2022-09-29 20:55:17','2022-09-29 23:55:10'),(246,22,9,'2022-09-29 21:03:15','2022-09-29 23:55:28'),(247,22,8,'2022-09-29 20:58:19','2022-09-29 23:55:50'),(248,22,9,'2022-09-29 21:03:15','2022-09-29 23:55:58'),(249,22,1,'2022-09-29 21:07:14','2022-09-30 00:03:08'),(250,22,1,'2022-09-29 21:07:14','2022-09-30 00:07:06'),(251,22,14,NULL,'2022-09-30 00:14:52'),(252,22,1,NULL,'2022-09-30 00:14:55'),(253,23,1,NULL,'2022-09-30 00:16:51'),(254,23,9,'2022-09-29 21:17:59','2022-09-30 00:16:54'),(255,24,9,'2022-09-30 11:21:03','2022-09-30 14:21:00'),(256,24,1,'2022-09-30 11:21:31','2022-09-30 14:21:09'),(257,24,1,'2022-09-30 11:21:32','2022-09-30 14:21:14'),(258,24,1,'2022-09-30 11:21:32','2022-09-30 14:21:17'),(259,24,1,'2022-09-30 11:21:33','2022-09-30 14:21:28'),(260,24,1,'2022-09-30 11:21:35','2022-09-30 14:21:30'),(261,24,1,'2022-09-30 17:20:37','2022-09-30 14:21:40'),(262,24,9,'2022-09-30 11:21:48','2022-09-30 14:21:44'),(263,24,9,'2022-09-30 17:20:31','2022-09-30 14:21:46'),(264,24,9,'2022-09-30 17:21:09','2022-09-30 14:22:05'),(265,24,9,'2022-09-30 17:21:09','2022-09-30 14:22:21'),(266,24,9,'2022-09-30 17:21:09','2022-09-30 20:20:40'),(267,24,1,'2022-09-30 17:21:08','2022-09-30 20:21:05'),(268,24,9,'2022-09-30 17:29:07','2022-09-30 20:21:13'),(269,24,9,'2022-09-30 17:29:09','2022-09-30 20:21:17'),(270,24,14,'2022-09-30 17:29:02','2022-09-30 20:21:38'),(271,24,14,'2022-09-30 17:29:03','2022-09-30 20:21:41'),(272,24,9,'2022-09-30 17:29:09','2022-09-30 20:28:57'),(273,24,14,'2022-09-30 17:29:04','2022-09-30 20:29:00');
/*!40000 ALTER TABLE `tb_cartsproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_categories`
--

DROP TABLE IF EXISTS `tb_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_categories` (
  `idcategory` int(11) NOT NULL AUTO_INCREMENT,
  `descategory` varchar(32) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categories`
--

LOCK TABLES `tb_categories` WRITE;
/*!40000 ALTER TABLE `tb_categories` DISABLE KEYS */;
INSERT INTO `tb_categories` VALUES (8,'Hardware','2022-09-08 18:48:23'),(9,'PerifÃ©rico','2022-09-08 18:48:27'),(10,'TelevisÃµes','2022-09-08 18:48:29'),(11,'Games','2022-09-08 18:48:32'),(12,'Android','2022-09-12 14:26:11'),(13,'IOS','2022-09-12 14:26:25');
/*!40000 ALTER TABLE `tb_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_orders`
--

DROP TABLE IF EXISTS `tb_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_orders` (
  `idorder` int(11) NOT NULL AUTO_INCREMENT,
  `idcart` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idstatus` int(11) NOT NULL,
  `idaddress` int(11) NOT NULL,
  `vltotal` decimal(10,2) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idorder`),
  KEY `FK_orders_users_idx` (`iduser`),
  KEY `fk_orders_ordersstatus_idx` (`idstatus`),
  KEY `fk_orders_carts_idx` (`idcart`),
  KEY `fk_orders_addresses_idx` (`idaddress`),
  CONSTRAINT `fk_orders_addresses` FOREIGN KEY (`idaddress`) REFERENCES `tb_addresses` (`idaddress`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_carts` FOREIGN KEY (`idcart`) REFERENCES `tb_carts` (`idcart`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_ordersstatus` FOREIGN KEY (`idstatus`) REFERENCES `tb_ordersstatus` (`idstatus`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_users` FOREIGN KEY (`iduser`) REFERENCES `tb_users` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_orders`
--

LOCK TABLES `tb_orders` WRITE;
/*!40000 ALTER TABLE `tb_orders` DISABLE KEYS */;
INSERT INTO `tb_orders` VALUES (3,5,7,3,4,3234.13,'2022-09-19 18:42:54'),(4,7,7,1,1,2389.05,'2022-09-21 00:29:30');
/*!40000 ALTER TABLE `tb_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ordersstatus`
--

DROP TABLE IF EXISTS `tb_ordersstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_ordersstatus` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `desstatus` varchar(32) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ordersstatus`
--

LOCK TABLES `tb_ordersstatus` WRITE;
/*!40000 ALTER TABLE `tb_ordersstatus` DISABLE KEYS */;
INSERT INTO `tb_ordersstatus` VALUES (1,'Em Aberto','2017-03-13 06:00:00'),(2,'Aguardando Pagamento','2017-03-13 06:00:00'),(3,'Pago','2017-03-13 06:00:00'),(4,'Entregue','2017-03-13 06:00:00');
/*!40000 ALTER TABLE `tb_ordersstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_persons`
--

DROP TABLE IF EXISTS `tb_persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_persons` (
  `idperson` int(11) NOT NULL AUTO_INCREMENT,
  `desperson` varchar(64) NOT NULL,
  `desemail` varchar(128) DEFAULT NULL,
  `nrphone` bigint(20) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idperson`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_persons`
--

LOCK TABLES `tb_persons` WRITE;
/*!40000 ALTER TABLE `tb_persons` DISABLE KEYS */;
INSERT INTO `tb_persons` VALUES (1,'Igor','admin@hcode.com.br',2147483647,'2017-03-01 06:00:00'),(7,'Suporte','suporte@hcode.com.br',1112345678,'2017-03-15 19:10:27'),(9,'Creunilde Oliveira de Lima','creunilde@gmail.com',36418728,'2022-09-07 04:48:22'),(10,'Igor Oliveira','igorsax258@gmail.com',14991011502,'2022-09-07 05:07:42'),(13,'igorLima','igorsax258@gmail.com',14991011502,'2022-09-15 14:53:52'),(14,'Igor Oliveira de Lima','igorsax258@gmail.com',14991011502,'2022-09-21 12:16:50'),(15,'Igor Lima','isgorlima28@gmail.com',14991011502,'2022-09-21 12:32:45'),(16,'Igor','igor.lima28@gmail.com',14991011502,'2022-09-30 00:29:34');
/*!40000 ALTER TABLE `tb_persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_products`
--

DROP TABLE IF EXISTS `tb_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_products` (
  `idproduct` int(11) NOT NULL AUTO_INCREMENT,
  `desproduct` varchar(64) NOT NULL,
  `vlprice` decimal(10,2) NOT NULL,
  `vlwidth` decimal(10,2) NOT NULL,
  `vlheight` decimal(10,2) NOT NULL,
  `vllength` decimal(10,2) NOT NULL,
  `vlweight` decimal(10,2) NOT NULL,
  `desurl` varchar(128) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `desphoto` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`idproduct`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_products`
--

LOCK TABLES `tb_products` WRITE;
/*!40000 ALTER TABLE `tb_products` DISABLE KEYS */;
INSERT INTO `tb_products` VALUES (1,'Smartphone Android 7.0',999.95,7.90,16.40,16.40,2.00,'smartphone-android-7.0','2017-03-13 06:00:00','/res/site/img/products/93a891def2369c43ec4f0ee5c42c849e1663771406.jpg'),(8,'Smartphone Motorola Moto G5 Plus',1135.23,15.20,7.40,0.70,0.16,'smartphone-motorola-moto-g5-plus','2022-09-12 13:28:42','/res/site/img/products/9a46106aeddba53cb1f14185e1d51b281663771305.jpg'),(9,'Smartphone Moto Z Play',1887.78,7.90,16.40,16.40,1.50,'smartphone-moto-z-play','2022-09-12 13:28:42','/res/site/img/products/bb76ee48c9e83e0d8373bb6da956851e1663771294.jpg'),(10,'Smartphone Samsung Galaxy J5 Pro',1299.00,14.60,7.10,0.80,0.16,'smartphone-samsung-galaxy-j5','2022-09-12 13:28:42','/res/site/img/products/fc208054122187d1c562c433bb3e23101663771340.jpg'),(11,'Smartphone Samsung Galaxy J7 Prime',1149.00,15.10,7.50,0.80,0.16,'smartphone-samsung-galaxy-j7','2022-09-12 13:28:42','/res/site/img/products/5c59b2f3a9464c93ed7b7eb0c85e8f481663771377.jpg'),(12,'Smartphone Samsung Galaxy J3 Dual',679.90,14.20,7.10,0.70,0.14,'smartphone-samsung-galaxy-j3','2022-09-12 13:28:42','/res/site/img/products/2de719fd45191ee9d74ae503df7166301663771348.jpg'),(14,'Console Xbox Series S 500gb Ssd',2199.99,6.50,21.00,19.50,1.90,'xbox-series-s','2022-09-21 12:55:30','/res/site/img/products/9be9b849d1022779a622b41dc0742d7b1663771438.jpg'),(15,'xbox',2000.00,6.00,18.00,16.00,1.40,'xbox-one','2022-09-21 13:20:57','/res/site/img/products/3f8306ac88f3a301b621505a7c6229f11663766420.jpg');
/*!40000 ALTER TABLE `tb_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_productscategories`
--

DROP TABLE IF EXISTS `tb_productscategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_productscategories` (
  `idcategory` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  PRIMARY KEY (`idcategory`,`idproduct`),
  KEY `fk_productscategories_products_idx` (`idproduct`),
  CONSTRAINT `fk_productscategories_categories` FOREIGN KEY (`idcategory`) REFERENCES `tb_categories` (`idcategory`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_productscategories_products` FOREIGN KEY (`idproduct`) REFERENCES `tb_products` (`idproduct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productscategories`
--

LOCK TABLES `tb_productscategories` WRITE;
/*!40000 ALTER TABLE `tb_productscategories` DISABLE KEYS */;
INSERT INTO `tb_productscategories` VALUES (12,1),(12,8),(12,9),(12,10),(12,11),(12,12);
/*!40000 ALTER TABLE `tb_productscategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_users` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `idperson` int(11) NOT NULL,
  `deslogin` varchar(64) NOT NULL,
  `despassword` varchar(256) NOT NULL,
  `inadmin` tinyint(4) NOT NULL DEFAULT '0',
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`iduser`),
  KEY `FK_users_persons_idx` (`idperson`),
  CONSTRAINT `fk_users_persons` FOREIGN KEY (`idperson`) REFERENCES `tb_persons` (`idperson`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (1,1,'admin','$2y$12$WODmh8mR4rrHp4VzLO5KnOJqmzn8tJltuFXvBw/r3HC3e7LY7B4B6',0,'2017-03-13 06:00:00'),(7,7,'suporte','$2y$12$8emVP2lR/mDiWmioqNT14uHjPgQmLt1c.BOTO9oGs0EWN6Xxg77l.',1,'2017-03-15 19:10:27'),(9,9,'creunilde','123456',1,'2022-09-07 04:48:22'),(14,14,'igorsax258@gmail.com','$2y$12$Hky5EAm9HPg8MiSoScRW6OimRMNNvQKsWr45eeZbd04taba5JSBeO',1,'2022-09-21 12:16:50'),(15,15,'isgorlima28@gmail.com','$2y$12$ntJMOx62py/FOUi8aGfHEO4R4m8OAll/mMdfe6Gj6hKQWOfGUqUNC',1,'2022-09-21 12:32:45'),(16,16,'Igor','$2y$12$4xOrWDOcrIszG9AcfURENeLNLsQU6kr4O1JJN1XBEgiufuSWWyezu',0,'2022-09-30 00:29:34');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_userslogs`
--

DROP TABLE IF EXISTS `tb_userslogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_userslogs` (
  `idlog` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `deslog` varchar(128) NOT NULL,
  `desip` varchar(45) NOT NULL,
  `desuseragent` varchar(128) NOT NULL,
  `dessessionid` varchar(64) NOT NULL,
  `desurl` varchar(128) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idlog`),
  KEY `fk_userslogs_users_idx` (`iduser`),
  CONSTRAINT `fk_userslogs_users` FOREIGN KEY (`iduser`) REFERENCES `tb_users` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_userslogs`
--

LOCK TABLES `tb_userslogs` WRITE;
/*!40000 ALTER TABLE `tb_userslogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_userslogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_userspasswordsrecoveries`
--

DROP TABLE IF EXISTS `tb_userspasswordsrecoveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_userspasswordsrecoveries` (
  `idrecovery` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `desip` varchar(45) NOT NULL,
  `dtrecovery` datetime DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idrecovery`),
  KEY `fk_userspasswordsrecoveries_users_idx` (`iduser`),
  CONSTRAINT `fk_userspasswordsrecoveries_users` FOREIGN KEY (`iduser`) REFERENCES `tb_users` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_userspasswordsrecoveries`
--

LOCK TABLES `tb_userspasswordsrecoveries` WRITE;
/*!40000 ALTER TABLE `tb_userspasswordsrecoveries` DISABLE KEYS */;
INSERT INTO `tb_userspasswordsrecoveries` VALUES (1,7,'127.0.0.1',NULL,'2017-03-15 19:10:59'),(2,7,'127.0.0.1','2017-03-15 13:33:45','2017-03-15 19:11:18'),(3,7,'127.0.0.1','2017-03-15 13:37:35','2017-03-15 19:37:12');
/*!40000 ALTER TABLE `tb_userspasswordsrecoveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_ecommerce'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_addresses_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_addresses_save`(
pidaddress int(11), 
pidperson int(11),
pdesaddress varchar(128),
pdesnumber varchar(16),
pdescomplement varchar(32),
pdescity varchar(32),
pdesstate varchar(32),
pdescountry varchar(32),
pdeszipcode char(8),
pdesdistrict varchar(32)
)
BEGIN

	IF pidaddress > 0 THEN
		
		UPDATE tb_addresses
        SET
			idperson = pidperson,
            desaddress = pdesaddress,
            desnumber = pdesnumber,
            descomplement = pdescomplement,
            descity = pdescity,
            desstate = pdesstate,
            descountry = pdescountry,
            deszipcode = pdeszipcode, 
            desdistrict = pdesdistrict
		WHERE idaddress = pidaddress;
        
    ELSE
		
		INSERT INTO tb_addresses (idperson, desaddress, desnumber, descomplement, descity, desstate, descountry, deszipcode, desdistrict)
        VALUES(pidperson, pdesaddress, pdesnumber, pdescomplement, pdescity, pdesstate, pdescountry, pdeszipcode, pdesdistrict);
        
        SET pidaddress = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * FROM tb_addresses WHERE idaddress = pidaddress;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_carts_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_carts_save`(
pidcart INT,
pdessessionid VARCHAR(64),
piduser INT,
pdeszipcode CHAR(8),
pvlfreight DECIMAL(10,2),
pnrdays INT
)
BEGIN

    IF pidcart > 0 THEN
        
        UPDATE tb_carts
        SET
            dessessionid = pdessessionid,
            iduser = piduser,
            deszipcode = pdeszipcode,
            vlfreight = pvlfreight,
            nrdays = pnrdays
        WHERE idcart = pidcart;
        
    ELSE
        
        INSERT INTO tb_carts (dessessionid, iduser, deszipcode, vlfreight, nrdays)
        VALUES(pdessessionid, piduser, pdeszipcode, pvlfreight, pnrdays);
        
        SET pidcart = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * FROM tb_carts WHERE idcart = pidcart;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_categories_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_categories_save`(
pidcategory INT,
pdescategory VARCHAR(64)
)
BEGIN
	
	IF pidcategory > 0 THEN
		
		UPDATE tb_categories
        SET descategory = pdescategory
        WHERE idcategory = pidcategory;
        
    ELSE
		
		INSERT INTO tb_categories (descategory) VALUES(pdescategory);
        
        SET pidcategory = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * FROM tb_categories WHERE idcategory = pidcategory;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_orders_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_orders_save`(
pidorder INT,
pidcart int(11),
piduser int(11),
pidstatus int(11),
pidaddress int(11),
pvltotal decimal(10,2)
)
BEGIN
	
	IF pidorder > 0 THEN
		
		UPDATE tb_orders
        SET
			idcart = pidcart,
            iduser = piduser,
            idstatus = pidstatus,
            idaddress = pidaddress,
            vltotal = pvltotal
		WHERE idorder = pidorder;
        
    ELSE
    
		INSERT INTO tb_orders (idcart, iduser, idstatus, idaddress, vltotal)
        VALUES(pidcart, piduser, pidstatus, pidaddress, pvltotal);
		
		SET pidorder = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_orders a
    INNER JOIN tb_ordersstatus b USING(idstatus)
    INNER JOIN tb_carts c USING(idcart)
    INNER JOIN tb_users d ON d.iduser = a.iduser
    INNER JOIN tb_addresses e USING(idaddress)
    WHERE idorder = pidorder;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_products_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_products_save`(
pidproduct int(11),
pdesproduct varchar(64),
pvlprice decimal(10,2),
pvlwidth decimal(10,2),
pvlheight decimal(10,2),
pvllength decimal(10,2),
pvlweight decimal(10,2),
pdesurl varchar(128),
pdesphoto varchar(128)
)
BEGIN
	
	IF pidproduct > 0 THEN
		
		UPDATE tb_products
        SET 
			desproduct = pdesproduct,
            vlprice = pvlprice,
            vlwidth = pvlwidth,
            vlheight = pvlheight,
            vllength = pvllength,
            vlweight = pvlweight,
            desurl = pdesurl,
            desphoto = pdesphoto
        WHERE idproduct = pidproduct;
        
    ELSE
		
		INSERT INTO tb_products (desproduct, vlprice, vlwidth, vlheight, vllength, vlweight, desurl, desphoto) 
        VALUES(pdesproduct, pvlprice, pvlwidth, pvlheight, pvllength, pvlweight, pdesurl, pdesphoto);
        
        SET pidproduct = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * FROM tb_products WHERE idproduct = pidproduct;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_userspasswordsrecoveries_create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_userspasswordsrecoveries_create`(
piduser INT,
pdesip VARCHAR(45)
)
BEGIN
  
  INSERT INTO tb_userspasswordsrecoveries (iduser, desip)
    VALUES(piduser, pdesip);
    
    SELECT * FROM tb_userspasswordsrecoveries
    WHERE idrecovery = LAST_INSERT_ID();
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_usersupdate_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usersupdate_save`(
piduser INT,
pdesperson VARCHAR(64), 
pdeslogin VARCHAR(64), 
pdespassword VARCHAR(256), 
pdesemail VARCHAR(128), 
pnrphone BIGINT, 
pinadmin TINYINT
)
BEGIN
  
    DECLARE vidperson INT;
    
  SELECT idperson INTO vidperson
    FROM tb_users
    WHERE iduser = piduser;
    
    UPDATE tb_persons
    SET 
    desperson = pdesperson,
        desemail = pdesemail,
        nrphone = pnrphone
  WHERE idperson = vidperson;
    
    UPDATE tb_users
    SET
    deslogin = pdeslogin,
        despassword = pdespassword,
        inadmin = pinadmin
  WHERE iduser = piduser;
    
    SELECT * FROM tb_users a INNER JOIN tb_persons b USING(idperson) WHERE a.iduser = piduser;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_users_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_users_delete`(
piduser INT
)
BEGIN
    
    DECLARE vidperson INT;
    
    SET FOREIGN_KEY_CHECKS = 0;
	
	SELECT idperson INTO vidperson
    FROM tb_users
    WHERE iduser = piduser;
	
    DELETE FROM tb_addresses WHERE idperson = vidperson;
    DELETE FROM tb_addresses WHERE idaddress IN(SELECT idaddress FROM tb_orders WHERE iduser = piduser);
	DELETE FROM tb_persons WHERE idperson = vidperson;
    
    DELETE FROM tb_userslogs WHERE iduser = piduser;
    DELETE FROM tb_userspasswordsrecoveries WHERE iduser = piduser;
    DELETE FROM tb_orders WHERE iduser = piduser;
    DELETE FROM tb_cartsproducts WHERE idcart IN(SELECT idcart FROM tb_carts WHERE iduser = piduser);
    DELETE FROM tb_carts WHERE iduser = piduser;
    DELETE FROM tb_users WHERE iduser = piduser;
    
    SET FOREIGN_KEY_CHECKS = 1;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_users_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_users_save`(
pdesperson VARCHAR(64), 
pdeslogin VARCHAR(64), 
pdespassword VARCHAR(256), 
pdesemail VARCHAR(128), 
pnrphone BIGINT, 
pinadmin TINYINT
)
BEGIN
  
    DECLARE vidperson INT;
    
  INSERT INTO tb_persons (desperson, desemail, nrphone)
    VALUES(pdesperson, pdesemail, pnrphone);
    
    SET vidperson = LAST_INSERT_ID();
    
    INSERT INTO tb_users (idperson, deslogin, despassword, inadmin)
    VALUES(vidperson, pdeslogin, pdespassword, pinadmin);
    
    SELECT * FROM tb_users a INNER JOIN tb_persons b USING(idperson) WHERE a.iduser = LAST_INSERT_ID();
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-30 17:38:50
