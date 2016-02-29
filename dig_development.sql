-- MySQL dump 10.13  Distrib 5.7.10, for osx10.11 (x86_64)
--
-- Host: localhost    Database: dig_development
-- ------------------------------------------------------
-- Server version	5.7.10

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
-- Table structure for table `causes`
--

DROP TABLE IF EXISTS `causes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `causes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `paypalID` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `split` decimal(5,2) NOT NULL DEFAULT '0.03',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `causes`
--

LOCK TABLES `causes` WRITE;
/*!40000 ALTER TABLE `causes` DISABLE KEYS */;
INSERT INTO `causes` VALUES (1,'Some Cause','2016-02-23 05:12:20','2016-02-23 05:12:20','cause@cause.com','cause@causename.com','987 e w st.','denver','co','80203','0000000000',0.03),(2,'March of Dimes','2016-02-26 05:51:47','2016-02-26 05:51:47','md@md.com','bhowerton@yghdtv.com','54 S N St.','Denver','CO','80018','4444444444',0.03),(3,'Red Cross','2016-02-26 05:53:27','2016-02-26 05:53:27','Rc@redcross.com','rthompson@redcross.org','33 S. Speer','Denver','CO','80227','9999999999',0.03);
/*!40000 ALTER TABLE `causes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retailers`
--

DROP TABLE IF EXISTS `retailers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retailers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `paypalID` varchar(255) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `split` decimal(5,2) NOT NULL DEFAULT '0.03',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailers`
--

LOCK TABLES `retailers` WRITE;
/*!40000 ALTER TABLE `retailers` DISABLE KEYS */;
INSERT INTO `retailers` VALUES (1,'someretailer','2016-02-23 05:09:37','2016-02-23 05:09:37','paypalid@paypal.com','555 s s','aurora','co','80018','9999999999','ajax.com',0.03),(2,'Jack\'s Liquors','2016-02-23 05:10:18','2016-02-23 05:10:18','u@u.com','432t st.','denver','co','80117','4563453456','',0.03),(3,'Hilda\'s Hippa','2016-02-23 05:10:54','2016-02-23 05:10:54','h@h.com','543 s st.','littleton','co','89765','8888888888','h@h.com',0.03),(4,'Apricot Lane','2016-02-26 05:54:43','2016-02-26 05:54:43','linnore@linnore.com','34 E. W St.','Centennial','co','80236','3034567865','lgonzalez@decornyouhr.com',0.03),(5,'A+ Coffee','2016-02-26 05:55:31','2016-02-26 05:55:31','zach@zach.com','45 W Venture st.','Fort Collin','CO','80525','9703334567','zach@coffee.com',0.03);
/*!40000 ALTER TABLE `retailers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20160215215313'),('20160215215352'),('20160215215430'),('20160215215659'),('20160218172939'),('20160221200715'),('20160229045303');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `retailer_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `user_split` decimal(5,2) NOT NULL DEFAULT '0.03',
  `cause_split` decimal(5,2) NOT NULL DEFAULT '0.03',
  `retailer_split` decimal(5,2) NOT NULL DEFAULT '0.03',
  `cause_id` int(11) DEFAULT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,56.77,1,2,'2016-02-23 05:08:00','2016-02-29 16:18:14',1,'2016-02-16',0.03,0.03,0.03,1,'Screen_Shot_2016-02-11_at_7.57.35_PM.png','image/png',35288,'2016-02-29 16:18:13'),(3,67.54,3,1,'2016-02-23 05:11:16','2016-02-29 16:18:31',0,'2016-02-22',0.03,0.03,0.03,1,'iphone5_ios7.jpg','image/jpeg',284279,'2016-02-29 16:18:31'),(36,1234.00,3,4,'2016-02-26 04:10:21','2016-02-29 16:20:12',0,'2016-02-19',0.03,0.03,0.03,2,'Screen_Shot_2016-02-11_at_7.57.35_PM.png','image/png',35288,'2016-02-29 16:20:12'),(37,321.10,2,1,'2016-02-26 05:48:45','2016-02-29 16:19:22',0,'2016-02-22',0.03,0.03,0.03,1,'Screen_Shot_2016-02-11_at_8.21.03_PM.png','image/png',24390,'2016-02-29 16:19:22'),(38,54.43,2,1,'2016-02-26 05:49:29','2016-02-29 16:19:43',0,'2016-02-24',0.03,0.03,0.03,1,'Screen_Shot_2016-02-11_at_7.57.31_PM.png','image/png',34356,'2016-02-29 16:19:43'),(49,345.00,1,1,'2016-02-27 08:11:13','2016-02-29 07:41:57',0,'2016-02-23',0.03,0.03,0.03,3,'IMG_1561.JPG','image/jpeg',128701,'2016-02-29 07:41:57'),(83,23.00,1,1,'2016-02-27 09:10:02','2016-02-29 07:42:20',0,NULL,0.03,0.03,0.03,3,'IMG_1561.JPG','image/jpeg',128701,'2016-02-29 07:42:20'),(138,12.00,3,4,'2016-02-29 05:33:26','2016-02-29 21:20:36',0,'2016-02-24',0.03,0.03,0.03,3,'image.jpg','image/jpeg',1704589,'2016-02-29 21:20:34'),(181,13.45,4,3,'2016-02-29 20:40:21','2016-02-29 20:40:21',NULL,'2016-02-29',0.03,0.03,0.03,3,'image.jpg','image/jpeg',1617085,'2016-02-29 20:40:20'),(184,12.00,3,2,'2016-02-29 21:22:58','2016-02-29 21:22:58',NULL,'2016-02-29',0.03,0.03,0.03,2,'IMG_1561.JPG','image/jpeg',128701,'2016-02-29 21:22:58');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `cause_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `paypalID` varchar(255) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'blainehowerton',2,'2016-02-23 05:07:57','2016-02-26 05:52:05','bh@paypal.id.com','4187 s wolf st','denver','co','80113','2222222222','bhowerton@yghdtv.com'),(2,'nickarnold',1,'2016-02-23 05:08:53','2016-02-26 05:52:14','narnold@yghdtv.com','3853 S broadway','englewood','co','80113','5555555555','narnold@yghdtv.com'),(3,'jeffarnold',2,'2016-02-24 06:07:33','2016-02-26 05:52:05','lkja dlkfj ','lkj','l; k','lk','kj ;','3333333333','j@j.com'),(4,'wheiwong',2,'2016-02-27 09:36:49','2016-02-27 09:36:49','wheiw@yahoo.com','1513 Teakwood Ct','Fort Collins','Co','80525','7203081640','wheiw@yahoo.com');
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

-- Dump completed on 2016-02-29 14:49:10
