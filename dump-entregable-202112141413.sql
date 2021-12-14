-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: entregable
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'musica'),(2,'accion'),(3,'blog'),(4,'horror'),(5,'ficcion'),(6,'literatura'),(7,'oscuro'),(8,'realista'),(9,'irreal'),(10,'unico'),(11,'ilogico');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `user_id` int(10) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `notes_FK` (`user_id`),
  CONSTRAINT `notes_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'nota 1','loren papap papap cdmk mk mp',1,'2021-12-14 08:20:29','2021-12-14 08:20:29'),(2,'nota 2','loren papap papap cdmk mk mp',1,'2021-12-14 08:20:29','2021-12-14 08:20:29'),(3,'nota 3','loren papap papap cdmk mk mp',2,'2021-12-14 08:20:29','2021-12-14 08:20:29'),(4,'nota 4','loren papap papap cdmk mk mp',6,'2021-12-14 15:24:50','2021-12-14 15:24:50'),(5,'nota 5','loren papap papap cdmk mk mp',3,'2021-12-14 08:20:29','2021-12-14 08:20:29'),(6,'nota 6','loren papap papap cdmk mk mp',3,'2021-12-14 08:20:29','2021-12-14 08:20:29'),(7,'nota 7','loren papap papap cdmk mk mp',4,'2021-12-14 08:20:29','2021-12-14 08:20:29'),(8,'nota 8','loren papap papap cdmk mk mp',5,'2021-12-14 08:20:29','2021-12-14 08:20:29'),(9,'nota 9','loren papap papap cdmk mk mp',6,'2021-12-14 08:20:29','2021-12-14 08:20:29'),(10,'nota 10','loren papap papap cdmk mk mp',9,'2021-12-14 08:20:37','2021-12-14 08:20:37');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notescategory`
--

DROP TABLE IF EXISTS `notescategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notescategory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category_id` int(10) NOT NULL,
  `note_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notesCategory_FK` (`note_id`),
  KEY `notescategory_FK_1` (`category_id`),
  CONSTRAINT `notesCategory_FK` FOREIGN KEY (`note_id`) REFERENCES `notes` (`id`),
  CONSTRAINT `notescategory_FK_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notescategory`
--

LOCK TABLES `notescategory` WRITE;
/*!40000 ALTER TABLE `notescategory` DISABLE KEYS */;
INSERT INTO `notescategory` VALUES (1,1,2),(2,2,9),(3,2,2),(4,3,5),(5,4,5),(6,4,6),(7,7,8),(8,1,9),(9,10,5);
/*!40000 ALTER TABLE `notescategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Joaquin','spuchesjoaqun@gmail.com'),(2,'matias','martiasn@gmail.com'),(3,'javier','javier@gmail.com'),(4,'lucia','lucia@gmail.com'),(5,'ramon','ramon@gmail.com'),(6,'valentina','valentina@gmail.com'),(7,'juana','juana@gmail.com'),(8,'sofia','sofia@gmail.com'),(9,'martin','martin@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'entregable'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-14 14:13:16
