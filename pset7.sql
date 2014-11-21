-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: pset7
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1-log

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
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `transaction` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `symbol` varchar(255) NOT NULL,
  `shares` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (13,'BUY','2014-11-07 08:26:58','FREE',44,0.15),(13,'BUY','2014-11-07 08:27:17','FREE',56,0.15),(13,'SELL','2014-11-07 08:27:59','FREE',100,0.15),(13,'BUY','2014-11-07 08:35:22','IBM',4,161.46),(13,'SELL','2014-11-07 08:51:48','IBM',4,161.46),(13,'BUY','2014-11-07 08:54:43','IBM',4,161.46),(13,'BUY','2014-11-07 08:54:51','FREE',45,0.15),(13,'BUY','2014-11-07 08:54:59','AP',6,19.17),(13,'BUY','2014-11-07 08:55:23','SUN ',50,44.4),(13,'BUY','2014-11-07 08:57:57','FREE',599,0.15),(13,'BUY','2014-11-07 08:58:05','IBM',4,161.46),(13,'BUY','2014-11-07 08:58:13','BEE',6,12.69),(13,'BUY','2014-11-07 08:58:13','BEE',6,12.69),(13,'BUY','2014-11-07 08:58:41','DEL',5,66.3),(13,'SELL','2014-11-07 09:00:38','FREE',644,0.15),(13,'SELL','2014-11-07 09:00:50','AP',6,19.17),(13,'BUY','2014-11-07 09:01:00','FREE',90,0.15),(13,'BUY','2014-11-07 09:01:09','IBM',2,161.46),(13,'BUY','2014-11-07 09:01:20','SMB',5,17.6495),(13,'BUY','2014-11-07 09:05:49','FREE',56,0.15),(13,'SELL','2014-11-07 10:03:52','FREE',146,0.15),(13,'BUY','2014-11-07 11:39:50','OPEN',4,102.95),(13,'BUY','2014-11-07 11:40:37','ZEN',4,25.22),(13,'BUY','2014-11-07 11:40:50','ZEN',1,25.22),(13,'BUY','2014-11-07 11:41:22','ZEN',5,25.22),(15,'BUY','2014-11-07 11:58:34','GOOG',5,542.04),(15,'SELL','2014-11-07 12:09:45','GOOG',5,542.04);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio`
--

DROP TABLE IF EXISTS `portfolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfolio` (
  `id` int(10) unsigned NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shares` int(10) NOT NULL,
  PRIMARY KEY (`id`,`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio`
--

LOCK TABLES `portfolio` WRITE;
/*!40000 ALTER TABLE `portfolio` DISABLE KEYS */;
INSERT INTO `portfolio` VALUES (6,'IBM',62),(6,'S',25),(13,'BEE',12),(13,'DEL',5),(13,'IBM',10),(13,'OPEN',4),(13,'SMB',5),(13,'SUN ',50),(13,'ZEN',10),(36,'BAC',305),(36,'F',3),(36,'FREE',11),(36,'GOOGL',2),(36,'M',5),(36,'SUN',13),(42,'APP',30),(42,'S',1);
/*!40000 ALTER TABLE `portfolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cash` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'belindazeng','$1$50$oxJEDBo9KDStnrhtnSzir0',10000.0000),(2,'caesar','$1$50$GHABNWBNE/o4VL7QjmQ6x0',10000.0000),(3,'jharvard','$1$50$RX3wnAMNrGIbgzbRYrxM1/',10000.0000),(4,'malan','$1$50$lJS9HiGK6sphej8c4bnbX.',10000.0000),(5,'rob','$1$HA$l5llES7AEaz8ndmSo5Ig41',10000.0000),(6,'skroob','$1$50$euBi4ugiJmbpIbvTTfmfI.',10000.0000),(7,'zamyla','$1$50$uwfqB45ANW.9.6qaQ.DcF.',10000.0000),(10,'helloman','$1$KS4UxA2K$Fh/bvbZAtvAsLGXb2A91g0',10000.0000),(11,'sankofa','$1$4s6wVcYm$MmPSNiYdD9ejDxkGrlecW/',5000.0000),(12,'saah','$1$x/xmajDW$dxOs3oEI4sTKKgADfdfEw/',3000.0000),(13,'mohamud','$1$QkSi6ZeX$jz9/lmDPlWzTZPZPoxH..1',9.3725),(14,'man','$1$6vxCPnJO$ghaWVmMTTwFXktVFjwV9h.',30212.0000),(15,'sshirdon','$1$mOcUL85V$lI1GlrLJbrkFcg/Qj2iiU0',5005.0000);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-07  7:53:03
