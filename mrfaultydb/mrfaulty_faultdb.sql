CREATE DATABASE  IF NOT EXISTS `mrfaulty` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mrfaulty`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: mrfaulty
-- ------------------------------------------------------
-- Server version	5.5.20

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
-- Table structure for table `faultdb`
--

DROP TABLE IF EXISTS `faultdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faultdb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faulttype` varchar(45) DEFAULT NULL,
  `shortdescrip` text,
  `longdescrip` text,
  `version` varchar(45) DEFAULT NULL,
  `productname` varchar(45) DEFAULT NULL,
  `severity` text,
  `author` varchar(70) DEFAULT NULL,
  `priority` varchar(45) DEFAULT NULL,
  `respname` varchar(45) DEFAULT NULL,
  `emailid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faultdb`
--

LOCK TABLES `faultdb` WRITE;
/*!40000 ALTER TABLE `faultdb` DISABLE KEYS */;
INSERT INTO `faultdb` VALUES (2,'Nothing Serious','Blue screen','Display','alpha1.0','solaris','critical','administrator','Medium','Theophilus Yern','theoyern@ymail.com'),(3,'Network type','Lan cable','Copyright infringement','beta1.0','linux','serious','administrator','Medium','June Vera','junvera@yahoo.com'),(4,'ErrorLogin','Mr restful','Can\'t log in to mr restful interface','beta1.0','solaris','critical','developer','Medium','Gen Kan','genkan@yahoo.com'),(6,'Motherboard','OS not loading','Windows can\'t startup','beta1.0','solaris','critical','developer','High','Fern Garry',NULL);
/*!40000 ALTER TABLE `faultdb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-03-01 16:21:23
