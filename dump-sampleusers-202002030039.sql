-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: sampleusers
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suite` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `geo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Kulas Light','Apt. 556','Gwenborough','92998-3874',NULL),(2,'Victor Plains','Suite 879','Wisokyburgh','90566-7771',NULL),(3,'Douglas Extension','Suite 847','McKenziehaven','59590-4157',3),(4,'Hoeger Mall','Apt. 692','South Elvis','53919-4257',4),(5,'Skiles Walks','Suite 351','Roscoeview','33263',5),(16,'Norberto Crossing','Apt. 950','South Christy','23505-1337',16),(17,'Rex Trail','Suite 280','Howemouth','58804-1099',17),(18,'Ellsworth Summit','Suite 729','Aliyaview','45169',18),(19,'Dayna Park','Suite 449','Bartholomebury','76495-3109',NULL),(20,'Kattie Turnpike','Suite 198','Lebsackbury','31428-2261',NULL),(21,'Kulas Light','Apt. 556','Gwenborough','92998-3874',21),(22,'Victor Plains','Suite 879','Wisokyburgh','90566-7771',22),(23,'Douglas Extension','Suite 847','McKenziehaven','59590-4157',23),(24,'Hoeger Mall','Apt. 692','South Elvis','53919-4257',24),(25,'Skiles Walks','Suite 351','Roscoeview','33263',25),(26,'Norberto Crossing','Apt. 950','South Christy','23505-1337',26),(27,'Rex Trail','Suite 280','Howemouth','58804-1099',27),(28,'Ellsworth Summit','Suite 729','Aliyaview','45169',28),(29,'Dayna Park','Suite 449','Bartholomebury','76495-3109',29),(30,'Kattie Turnpike','Suite 198','Lebsackbury','31428-2261',30),(31,'Kulas Light','Apt. 556','Gwenborough','92998-3874',31),(32,'Victor Plains','Suite 879','Wisokyburgh','90566-7771',32),(33,'Douglas Extension','Suite 847','McKenziehaven','59590-4157',33),(34,'Hoeger Mall','Apt. 692','South Elvis','53919-4257',34),(35,'Skiles Walks','Suite 351','Roscoeview','33263',35),(36,'Norberto Crossing','Apt. 950','South Christy','23505-1337',36),(37,'Rex Trail','Suite 280','Howemouth','58804-1099',37),(38,'Ellsworth Summit','Suite 729','Aliyaview','45169',38),(39,'Dayna Park','Suite 449','Bartholomebury','76495-3109',39),(40,'Kattie Turnpike','Suite 198','Lebsackbury','31428-2261',40);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catchphrase` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bs` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Romaguera-Crona','Multi-layered client-server neural-net','harness real-time e-markets'),(2,'Deckow-Crist','Proactive didactic contingency','synergize scalable supply-chains'),(3,'Romaguera-Jacobson','Face to face bifurcated interface','e-enable strategic applications'),(4,'Robel-Corkery','Multi-tiered zero tolerance productivity','transition cutting-edge web services'),(5,'Keebler LLC','User-centric fault-tolerant solution','revolutionize end-to-end systems'),(6,'Considine-Lockman','Synchronised bottom-line interface','e-enable innovative applications'),(7,'Johns Group','Configurable multimedia task-force','generate enterprise e-tailers'),(8,'Abernathy Group','Implemented secondary concept','e-enable extensible e-tailers'),(9,'Yost and Sons','Switchable contextually-based project','aggregate real-time technologies'),(10,'Hoeger LLC','Centralized empowering task-force','target end-to-end models'),(11,'Romaguera-Crona','Multi-layered client-server neural-net','harness real-time e-markets'),(12,'Deckow-Crist','Proactive didactic contingency','synergize scalable supply-chains'),(13,'Romaguera-Jacobson','Face to face bifurcated interface','e-enable strategic applications'),(14,'Robel-Corkery','Multi-tiered zero tolerance productivity','transition cutting-edge web services'),(15,'Keebler LLC','User-centric fault-tolerant solution','revolutionize end-to-end systems'),(16,'Considine-Lockman','Synchronised bottom-line interface','e-enable innovative applications'),(17,'Johns Group','Configurable multimedia task-force','generate enterprise e-tailers'),(18,'Abernathy Group','Implemented secondary concept','e-enable extensible e-tailers'),(19,'Yost and Sons','Switchable contextually-based project','aggregate real-time technologies'),(20,'Hoeger LLC','Centralized empowering task-force','target end-to-end models'),(21,'Romaguera-Crona','Multi-layered client-server neural-net','harness real-time e-markets'),(22,'Deckow-Crist','Proactive didactic contingency','synergize scalable supply-chains'),(23,'Romaguera-Jacobson','Face to face bifurcated interface','e-enable strategic applications'),(24,'Robel-Corkery','Multi-tiered zero tolerance productivity','transition cutting-edge web services'),(25,'Keebler LLC','User-centric fault-tolerant solution','revolutionize end-to-end systems'),(26,'Considine-Lockman','Synchronised bottom-line interface','e-enable innovative applications'),(27,'Johns Group','Configurable multimedia task-force','generate enterprise e-tailers'),(28,'Abernathy Group','Implemented secondary concept','e-enable extensible e-tailers'),(29,'Yost and Sons','Switchable contextually-based project','aggregate real-time technologies'),(30,'Hoeger LLC','Centralized empowering task-force','target end-to-end models'),(31,'Romaguera-Crona','Multi-layered client-server neural-net','harness real-time e-markets'),(32,'Deckow-Crist','Proactive didactic contingency','synergize scalable supply-chains'),(33,'Romaguera-Jacobson','Face to face bifurcated interface','e-enable strategic applications'),(34,'Robel-Corkery','Multi-tiered zero tolerance productivity','transition cutting-edge web services'),(35,'Keebler LLC','User-centric fault-tolerant solution','revolutionize end-to-end systems'),(36,'Considine-Lockman','Synchronised bottom-line interface','e-enable innovative applications'),(37,'Johns Group','Configurable multimedia task-force','generate enterprise e-tailers'),(38,'Abernathy Group','Implemented secondary concept','e-enable extensible e-tailers'),(39,'Yost and Sons','Switchable contextually-based project','aggregate real-time technologies'),(40,'Hoeger LLC','Centralized empowering task-force','target end-to-end models');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo`
--

DROP TABLE IF EXISTS `geo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lat` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo`
--

LOCK TABLES `geo` WRITE;
/*!40000 ALTER TABLE `geo` DISABLE KEYS */;
INSERT INTO `geo` VALUES (1,'-37.3159','81.1496'),(2,'-43.9509','-34.4618'),(3,'-68.6102','-47.0653'),(4,'29.4572','-164.2990'),(5,'-31.8129','62.5342'),(6,'-71.4197','71.7478'),(7,'24.8918','21.8984'),(8,'-14.3990','-120.7677'),(9,'24.6463','-168.8889'),(10,'-38.2386','57.2232'),(11,'-37.3159','81.1496'),(12,'-43.9509','-34.4618'),(13,'-68.6102','-47.0653'),(14,'29.4572','-164.2990'),(15,'-31.8129','62.5342'),(16,'-71.4197','71.7478'),(17,'24.8918','21.8984'),(18,'-14.3990','-120.7677'),(19,'24.6463','-168.8889'),(20,'-38.2386','57.2232'),(21,'-37.3159','81.1496'),(22,'-43.9509','-34.4618'),(23,'-68.6102','-47.0653'),(24,'29.4572','-164.2990'),(25,'-31.8129','62.5342'),(26,'-71.4197','71.7478'),(27,'24.8918','21.8984'),(28,'-14.3990','-120.7677'),(29,'24.6463','-168.8889'),(30,'-38.2386','57.2232'),(31,'-37.3159','81.1496'),(32,'-43.9509','-34.4618'),(33,'-68.6102','-47.0653'),(34,'29.4572','-164.2990'),(35,'-31.8129','62.5342'),(36,'-71.4197','71.7478'),(37,'24.8918','21.8984'),(38,'-14.3990','-120.7677'),(39,'24.6463','-168.8889'),(40,'-38.2386','57.2232');
/*!40000 ALTER TABLE `geo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `user_short`
--

DROP TABLE IF EXISTS `user_short`;
/*!50001 DROP VIEW IF EXISTS `user_short`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_short` (
  `id` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `address_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Bret','Sincere@april.biz','Leanne Graham','1-770-736-8031 x56442','hildegard.org',1,1),(2,'Antonette','Shanna@melissa.tv','Ervin Howell','010-692-6593 x09125','anastasia.net',2,2),(3,'Samantha','Nathan@yesenia.net','Clementine Bauch','1-463-123-4447','ramiro.info',3,3),(4,'Karianne','Julianne.OConner@kory.org','Patricia Lebsack','493-170-9623 x156','kale.biz',4,4),(5,'Kamren','Lucio_Hettinger@annie.ca','Chelsey Dietrich','(254)954-1289','demarco.info',5,5),(6,'Leopoldo_Corkery','Karley_Dach@jasper.info','Mrs. Dennis Schulist','1-477-935-8478 x6430','ola.org',6,6),(7,'Elwyn.Skiles','Telly.Hoeger@billy.biz','Kurtis Weissnat','210.067.6132','elvis.io',7,7),(21,'Bret','Sincere@april.biz','Leanne Graham','1-770-736-8031 x56442','hildegard.org',21,21),(22,'Antonette','Shanna@melissa.tv','Ervin Howell','010-692-6593 x09125','anastasia.net',22,22),(23,'Samantha','Nathan@yesenia.net','Clementine Bauch','1-463-123-4447','ramiro.info',23,23),(24,'Karianne','Julianne.OConner@kory.org','Patricia Lebsack','493-170-9623 x156','kale.biz',24,24),(25,'Kamren','Lucio_Hettinger@annie.ca','Chelsey Dietrich','(254)954-1289','demarco.info',25,25),(26,'Leopoldo_Corkery','Karley_Dach@jasper.info','Mrs. Dennis Schulist','1-477-935-8478 x6430','ola.org',26,26),(27,'Elwyn.Skiles','Telly.Hoeger@billy.biz','Kurtis Weissnat','210.067.6132','elvis.io',27,27),(28,'Maxime_Nienow','Sherwood@rosamond.me','Nicholas Runolfsdottir V','586.493.6943 x140','jacynthe.com',28,28),(29,'Delphine','Chaim_McDermott@dana.io','Glenna Reichert','(775)976-6794 x41206','conrad.com',29,29),(30,'Moriah.Stanton','Rey.Padberg@karina.biz','Clementina DuBuque','024-648-3804','ambrose.net',30,30);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sampleusers'
--

--
-- Final view structure for view `user_short`
--

/*!50001 DROP TABLE IF EXISTS `user_short`*/;
/*!50001 DROP VIEW IF EXISTS `user_short`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`testuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_short` AS select `u`.`id` AS `id`,`u`.`name` AS `name`,`u`.`address_id` AS `address_id` from `users` `u` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-03  0:39:43
