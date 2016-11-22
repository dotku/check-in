-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: checkin
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Current Database: `checkin`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `checkin` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `checkin`;

--
-- Table structure for table `checkin`
--

DROP TABLE IF EXISTS `checkin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkin` (
  `checkin_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `checkin_status` tinyint(4) DEFAULT '1',
  `description` varchar(1000) DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`checkin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkin`
--

LOCK TABLES `checkin` WRITE;
/*!40000 ALTER TABLE `checkin` DISABLE KEYS */;
INSERT INTO `checkin` VALUES (1,1,NULL,NULL,'2016-11-21 04:25:52'),(2,1,1,NULL,'2016-11-21 04:26:27'),(3,2,1,NULL,'2016-11-21 04:33:02'),(4,1,1,'asdfasdf','2016-11-21 05:19:06'),(5,1,1,'test','2016-11-21 05:20:10'),(6,1,1,'tst','2016-11-21 05:22:24'),(7,1,1,'asdfasdf','2016-11-21 05:23:27'),(8,1,1,'asdfa','2016-11-21 05:24:31'),(9,1,1,'asdfasdf','2016-11-21 05:27:01'),(10,1,1,'asdfasdf','2016-11-21 05:27:08'),(11,1,1,'asdfasfd','2016-11-21 05:27:15'),(12,1,1,'asdfasdf','2016-11-21 05:27:48'),(13,1,1,'','2016-11-21 05:40:32'),(14,1,1,'asdf','2016-11-21 05:41:23'),(15,1,1,'asdfa','2016-11-21 05:45:56'),(16,1,1,'asdf','2016-11-21 05:46:22'),(17,1,1,'asdfasdf','2016-11-21 05:46:40'),(18,1,1,'asdfasdf','2016-11-21 05:46:46'),(19,1,1,'asdfasdf','2016-11-21 05:47:37'),(20,1,1,'asdfasdf','2016-11-21 05:47:51'),(21,1,1,'asdfasdf','2016-11-21 05:47:56'),(22,1,1,'asfasfasdf','2016-11-21 05:48:08'),(23,1,1,'asdfasdf','2016-11-21 05:49:57'),(24,1,1,'asdf','2016-11-21 05:50:00'),(25,1,1,'asdf','2016-11-21 05:50:02'),(26,1,1,'asdfasdf','2016-11-21 05:50:25'),(27,1,1,'asdfasdf','2016-11-21 05:50:29'),(28,1,1,'asdfasfdasdf','2016-11-21 05:50:31'),(29,1,1,'asdfasfasf','2016-11-21 05:50:33'),(30,1,1,'asdfasdf','2016-11-21 05:53:05'),(31,1,1,'ceshi yixia','2016-11-21 05:57:45'),(32,1,1,'???','2016-11-21 05:57:52'),(33,1,1,'测试一下','2016-11-21 06:02:04'),(34,1,1,'吃药','2016-11-21 06:13:49'),(35,1,1,'','2016-11-21 06:15:33'),(36,1,1,'','2016-11-21 06:23:44'),(37,1,1,'成功感','2016-11-21 06:24:01'),(38,1,1,'浇花','2016-11-21 06:26:34'),(39,1,1,'维他命','2016-11-21 06:26:42'),(40,1,1,'感冒药','2016-11-21 06:26:54'),(41,1,1,'阿萨德发生地方','2016-11-21 06:58:05');
/*!40000 ALTER TABLE `checkin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_fbid` bigint(20) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `access_token` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,10154092796490959,NULL,NULL,NULL),(2,10154092796490960,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-21 22:27:18
