/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: TP_FLASHCOOKIE_MZT_ORZ
-- ------------------------------------------------------
-- Server version	11.4.2-MariaDB-ubu2404

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `artist_unique` (`user_id`),
  CONSTRAINT `artist_users_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES
(1,2,'2024-06-24 00:29:27',NULL,'swagger'),
(2,3,'2024-06-26 19:11:40',NULL,'SaraTH'),
(3,4,'2024-06-26 19:11:40',NULL,'JOMILL'),
(4,5,'2024-06-26 19:11:40',NULL,'Davis ART'),
(5,6,'2024-06-26 19:11:40',NULL,'Robert designer');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colours`
--

DROP TABLE IF EXISTS `colours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colours` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hexadecimal` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colours`
--

LOCK TABLES `colours` WRITE;
/*!40000 ALTER TABLE `colours` DISABLE KEYS */;
INSERT INTO `colours` VALUES
(1,'#eeeeee'),
(2,'#f2f2f2'),
(3,'#bbb222');
/*!40000 ALTER TABLE `colours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_unique` (`user_id`),
  CONSTRAINT `customers_users_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES
(1,2,'2024-06-25 21:46:40',NULL),
(12,100,'2024-06-27 12:00:00',NULL),
(23,200,'2024-06-27 12:01:00',NULL),
(34,300,'2024-06-27 12:02:00',NULL),
(45,400,'2024-06-27 12:03:00',NULL),
(56,500,'2024-06-27 12:04:00',NULL),
(67,600,'2024-06-27 12:05:00',NULL),
(78,700,'2024-06-27 12:06:00',NULL),
(89,800,'2024-06-27 12:07:00',NULL),
(90,900,'2024-06-27 12:08:00',NULL),
(102,1000,'2024-06-27 12:09:00',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `design_tags`
--

DROP TABLE IF EXISTS `design_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `design_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `design_id` bigint(20) unsigned NOT NULL,
  `tag_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `design_tag_designs_FK` (`design_id`),
  KEY `design_tag_tag_FK` (`tag_id`),
  CONSTRAINT `design_tag_designs_FK` FOREIGN KEY (`design_id`) REFERENCES `designs` (`id`),
  CONSTRAINT `design_tag_tag_FK` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `design_tags`
--

LOCK TABLES `design_tags` WRITE;
/*!40000 ALTER TABLE `design_tags` DISABLE KEYS */;
INSERT INTO `design_tags` VALUES
(1,1,1),
(2,1,2);
/*!40000 ALTER TABLE `design_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designs`
--

DROP TABLE IF EXISTS `designs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `designs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `artist_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `designs_artists_FK` (`artist_id`),
  CONSTRAINT `designs_artists_FK` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designs`
--

LOCK TABLES `designs` WRITE;
/*!40000 ALTER TABLE `designs` DISABLE KEYS */;
INSERT INTO `designs` VALUES
(1,'Mario Bros','aws.s3/100.jpg','2024-06-24 00:37:20',NULL,1),
(2,'Marvel Squad','aws.s3/MSquad.jpg','2024-06-27 21:41:21',NULL,1),
(3,'Universal world','aws.s3/UWorld.jpg','2023-11-24 10:29:27',NULL,1),
(4,'Marvel Squad','aws.s3/Msquad.jpg','2024-06-27 21:41:21',NULL,2),
(5,'Walter Grey','aws.s3/WGrey.jpg','2024-06-27 21:41:21',NULL,2),
(6,'Cold play','aws.s3/coldplay.jpg','2024-06-27 21:41:21',NULL,2),
(7,'Nations','aws.s3/nations.jpg','2024-06-27 21:41:21',NULL,3),
(8,'Future concept','aws.s3/8/futureconcept.jpg','2024-06-27 21:41:21',NULL,3),
(9,'Film photography','aws.s3/3/filmphotographt.jpg','2024-06-27 21:41:21',NULL,3),
(10,'Rosario city','aws.s3/Msquad.jpg','2024-06-27 21:41:21',NULL,4),
(11,'Scaloneta','aws.s3/Msquad.jpg','2024-06-27 21:41:21',NULL,4),
(12,'Bobma','aws.s3/Msquad.jpg','2024-06-27 21:41:21',NULL,5),
(13,'street concept','aws.s3/Msquad.jpg','2024-06-27 21:41:21',NULL,5),
(14,'colors everywhere','aws.s3/colorseverywhere.jpg','2024-06-27 21:41:21',NULL,5);
/*!40000 ALTER TABLE `designs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `product_colour_id` bigint(20) unsigned NOT NULL,
  `product_type_size_id` bigint(20) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_products_orders_FK` (`order_id`),
  KEY `order_products_products_FK` (`product_id`),
  KEY `order_products_product_type_sizes_FK` (`product_type_size_id`),
  KEY `order_products_product_colours_FK` (`product_colour_id`),
  CONSTRAINT `order_products_orders_FK` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_products_product_colours_FK` FOREIGN KEY (`product_colour_id`) REFERENCES `product_colours` (`id`),
  CONSTRAINT `order_products_product_type_sizes_FK` FOREIGN KEY (`product_type_size_id`) REFERENCES `product_type_sizes` (`id`),
  CONSTRAINT `order_products_products_FK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_esperanto_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
INSERT INTO `order_products` VALUES
(4,1,7,1,3,1,'2024-06-25 22:07:39',NULL),
(5,1,8,2,3,1,'2024-06-25 22:07:39',NULL),
(6,2,8,2,3,2,'2024-06-25 22:16:26',NULL),
(7,3,46,27,1,1,'2024-06-28 02:38:42',NULL),
(8,3,48,29,2,1,'2024-06-28 02:38:42',NULL),
(9,4,32,12,11,1,'2024-06-28 02:43:38',NULL),
(10,4,29,8,13,1,'2024-06-28 02:43:38',NULL),
(11,5,54,35,16,1,'2024-06-28 02:47:45',NULL),
(12,6,60,41,3,3,'2024-06-28 02:50:50',NULL),
(13,6,52,33,6,1,'2024-06-28 02:50:50',NULL),
(14,7,58,39,7,3,'2024-06-28 02:52:24',NULL),
(15,8,59,40,12,2,'2024-06-28 02:54:54',NULL),
(16,8,61,42,13,1,'2024-06-28 02:54:54',NULL),
(17,9,42,23,1,4,'2024-06-28 02:57:24',NULL),
(18,9,40,21,3,1,'2024-06-28 02:57:24',NULL),
(19,10,41,22,5,5,'2024-06-28 02:59:46',NULL),
(20,10,47,28,7,5,'2024-06-28 02:59:46',NULL),
(21,11,33,13,2,3,'2024-06-28 03:01:14',NULL),
(22,12,32,12,11,3,'2024-06-28 03:04:05',NULL),
(23,12,55,36,11,2,'2024-06-28 03:04:05',NULL),
(24,13,40,21,4,1,'2024-06-28 03:05:13',NULL);
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `total_price` float NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_customers_FK_1` (`customer_id`),
  CONSTRAINT `orders_customers_FK_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES
(1,21.5,'2024-06-25 21:49:04',NULL,1),
(2,40,'2024-06-25 22:14:17',NULL,1),
(3,23,'2024-06-28 02:29:36',NULL,1),
(4,15,'2024-06-25 21:49:04',NULL,12),
(5,12,'2024-06-27 21:49:04',NULL,23),
(6,54.5,'2024-06-28 02:29:36',NULL,34),
(7,60,'2024-06-28 02:29:36',NULL,45),
(8,18,'2024-06-28 02:29:36',NULL,56),
(9,57.5,'2024-06-28 02:29:36',NULL,67),
(10,200,'2024-06-28 02:29:36',NULL,78),
(11,34.5,'2024-06-28 02:29:36',NULL,89),
(12,45,'2024-06-28 02:29:36',NULL,90),
(13,11.5,'2024-06-28 02:29:36',NULL,102);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_colours`
--

DROP TABLE IF EXISTS `product_colours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_colours` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `colour_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_type_colours_product_type_FK` (`product_id`),
  KEY `product_type_colours_colours_FK` (`colour_id`),
  CONSTRAINT `product_colours_colours_FK` FOREIGN KEY (`colour_id`) REFERENCES `colours` (`id`),
  CONSTRAINT `product_colours_products_FK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_colours`
--

LOCK TABLES `product_colours` WRITE;
/*!40000 ALTER TABLE `product_colours` DISABLE KEYS */;
INSERT INTO `product_colours` VALUES
(1,1,7),
(2,1,8),
(3,1,27),
(4,2,27),
(5,3,27),
(6,1,28),
(7,2,28),
(8,1,29),
(9,1,30),
(10,3,30),
(11,3,31),
(12,3,32),
(13,3,33),
(14,1,34),
(15,2,34),
(16,2,35),
(17,2,36),
(18,1,37),
(19,2,38),
(20,1,39),
(21,3,40),
(22,1,41),
(23,3,42),
(24,1,43),
(25,2,44),
(26,3,45),
(27,2,46),
(28,1,47),
(29,3,48),
(30,1,49),
(31,2,50),
(32,3,51),
(33,2,52),
(34,1,53),
(35,1,54),
(36,2,55),
(37,3,56),
(38,3,57),
(39,2,58),
(40,1,59),
(41,3,60),
(42,2,61);
/*!40000 ALTER TABLE `product_colours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type_sizes`
--

DROP TABLE IF EXISTS `product_type_sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_type_sizes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_type_id` bigint(20) unsigned NOT NULL,
  `size_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_type_sizes_product_types_FK` (`product_type_id`),
  KEY `product_type_sizes_sizes_FK` (`size_id`),
  CONSTRAINT `product_type_sizes_product_types_FK` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `product_type_sizes_sizes_FK` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci COMMENT='relation between products and sizes table. \nmany to many.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type_sizes`
--

LOCK TABLES `product_type_sizes` WRITE;
/*!40000 ALTER TABLE `product_type_sizes` DISABLE KEYS */;
INSERT INTO `product_type_sizes` VALUES
(1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,2,1),
(6,2,2),
(7,2,3),
(8,2,4),
(9,5,2),
(10,5,3),
(11,7,2),
(12,8,1),
(13,8,2),
(14,8,3),
(15,6,2),
(16,6,3);
/*!40000 ALTER TABLE `product_type_sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_types`
--

LOCK TABLES `product_types` WRITE;
/*!40000 ALTER TABLE `product_types` DISABLE KEYS */;
INSERT INTO `product_types` VALUES
(1,'remera',11.5,'2024-06-24 00:40:38',NULL),
(2,'buzo',20,'2024-06-24 00:40:54',NULL),
(5,'camisa denim',10,'2024-06-27 21:49:08',NULL),
(6,'traje de baño',12,'2024-06-27 21:49:08',NULL),
(7,'tote bag',9,'2024-06-27 21:49:08',NULL),
(8,'delantal',6,'2024-06-27 21:49:08',NULL);
/*!40000 ALTER TABLE `product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `design_id` bigint(20) unsigned NOT NULL,
  `product_type_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_product_types_FK` (`product_type_id`),
  KEY `products_designs_FK` (`design_id`),
  CONSTRAINT `products_designs_FK` FOREIGN KEY (`design_id`) REFERENCES `designs` (`id`),
  CONSTRAINT `products_product_types_FK` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES
(7,1,1,'2024-06-25 21:39:47',NULL),
(8,1,2,'2024-06-25 21:39:47',NULL),
(27,2,1,'2024-06-28 02:11:49',NULL),
(28,2,2,'2024-06-28 02:11:49',NULL),
(29,2,8,'2024-06-28 02:11:49',NULL),
(30,3,2,'2024-06-28 02:11:49',NULL),
(31,3,8,'2024-06-28 02:11:49',NULL),
(32,3,7,'2024-06-28 02:11:49',NULL),
(33,3,1,'2024-06-28 02:11:49',NULL),
(34,4,1,'2024-06-28 02:11:49',NULL),
(35,4,2,'2024-06-28 02:11:49',NULL),
(36,5,1,'2024-06-28 02:11:49',NULL),
(37,5,2,'2024-06-28 02:11:49',NULL),
(38,5,5,'2024-06-28 02:11:49',NULL),
(39,5,8,'2024-06-28 02:11:49',NULL),
(40,6,1,'2024-06-28 02:11:49',NULL),
(41,6,2,'2024-06-28 02:11:49',NULL),
(42,7,1,'2024-06-28 02:11:49',NULL),
(43,7,2,'2024-06-28 02:11:49',NULL),
(44,7,8,'2024-06-28 02:11:49',NULL),
(45,7,7,'2024-06-28 02:11:49',NULL),
(46,8,1,'2024-06-28 02:11:49',NULL),
(47,8,2,'2024-06-28 02:11:49',NULL),
(48,9,1,'2024-06-28 02:11:49',NULL),
(49,9,2,'2024-06-28 02:11:49',NULL),
(50,9,8,'2024-06-28 02:11:49',NULL),
(51,10,1,'2024-06-28 02:11:49',NULL),
(52,10,2,'2024-06-28 02:11:49',NULL),
(53,11,8,'2024-06-28 02:11:49',NULL),
(54,11,6,'2024-06-28 02:11:49',NULL),
(55,12,7,'2024-06-28 02:11:49',NULL),
(56,12,8,'2024-06-28 02:11:49',NULL),
(57,13,1,'2024-06-28 02:11:49',NULL),
(58,13,2,'2024-06-28 02:11:49',NULL),
(59,13,8,'2024-06-28 02:11:49',NULL),
(60,14,1,'2024-06-28 02:11:49',NULL),
(61,14,8,'2024-06-28 02:11:49',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES
(1,'admin','2024-06-24 00:05:19',NULL),
(2,'public_user','2024-06-24 00:07:00',NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sizes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES
(1,'S'),
(2,'M'),
(3,'L'),
(4,'XL');
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES
(1,'Nintendo','2024-06-25 22:51:24',NULL),
(2,'Mario','2024-06-25 22:51:24',NULL);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_address` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(100) NOT NULL,
  `zip_code` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `street_number` int(11) NOT NULL,
  `floor` varchar(100) DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_address_unique` (`user_id`),
  CONSTRAINT `user_address_users_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
INSERT INTO `user_address` VALUES
(1,'Rosario','2000','corrientes',416,NULL,2),
(2,'Rosario','2000','calle',45,NULL,3),
(3,'San Nicolas','3000','calle',24,NULL,4),
(4,'Rosario','2000','Av. Pellegrinni',123,NULL,5),
(5,'Mar Del Plata','9999','Magallanes',321,NULL,6),
(100,'Buenos Aires','C1001','Avenida Corrientes',1,'1A',100),
(200,'Córdoba','X5000','Avenida Colón',2,'2B',200),
(300,'Rosario','S2000','Bulevar Oroño',3,'3C',300),
(400,'Mendoza','M5500','Avenida San Martín',4,'4D',400),
(500,'La Plata','B1900','Calle 12',5,'5E',500),
(600,'San Miguel de Tucumán','T4000','Avenida Mate de Luna',6,'6F',600),
(700,'Mar del Plata','B7600','Avenida Pedro Luro',7,'7G',700),
(800,'Salta','A4400','Calle Balcarce',8,'8H',800),
(900,'Santa Fe','S3000','Bulevar Gálvez',9,'9I',900),
(1000,'San Juan','J5400','Avenida Libertador',10,'10J',1000);
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_roles_users_FK` (`user_id`),
  KEY `user_roles_roles_FK` (`role_id`),
  CONSTRAINT `user_roles_roles_FK` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `user_roles_users_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES
(2,2,2,'2024-06-24 00:13:58',NULL),
(7,3,2,'2024-06-26 18:50:08',NULL),
(8,4,2,'2024-06-26 18:50:08',NULL),
(9,5,2,'2024-06-26 18:50:08',NULL),
(10,6,2,'2024-06-26 18:50:08',NULL);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_sessions`
--

DROP TABLE IF EXISTS `user_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_sessions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `auth_token` varchar(100) NOT NULL,
  `auth_token_expiration` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_sessions_unique` (`user_id`),
  CONSTRAINT `user_sessions_users_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_sessions`
--

LOCK TABLES `user_sessions` WRITE;
/*!40000 ALTER TABLE `user_sessions` DISABLE KEYS */;
INSERT INTO `user_sessions` VALUES
(1,2,'1pTJhC8jJMgrHzL5VXEx7jYDcL6RIu1sE','2023-06-30 00:13:58','2023-06-24 00:22:03',NULL),
(2,3,'1pTYzT8vJMqwHzL1VXEx4vYacL6Rsu1sE','2024-05-30 00:00:00','2024-05-24 00:22:03',NULL),
(3,4,'2pFTzQ1cJPpwHzL1VXEx7bYacL6Rsu1sE','2024-06-30 00:00:00','2024-06-24 14:22:03',NULL),
(4,5,'7pRAzD3xJIquHzL1QXXx8nYacL6Psu1sA','2023-12-12 00:00:00','2023-12-09 18:15:23',NULL),
(5,6,'su1sEJ6zJGbwHzL1VXEx3mYacL6R5pQXz','2024-03-20 00:00:00','2024-03-17 13:11:03',NULL),
(100,100,'A1B2C3D4E5','2024-07-01 12:00:00','2024-06-27 12:00:00',NULL),
(200,200,'F6G7H8I9J0','2024-07-01 12:01:00','2024-06-27 12:01:00',NULL),
(300,300,'K1L2M3N4O5','2024-07-01 12:02:00','2024-06-27 12:02:00',NULL),
(400,400,'P6Q7R8S9T0','2024-07-01 12:03:00','2024-06-27 12:03:00',NULL),
(500,500,'U1V2W3X4Y5','2024-07-01 12:04:00','2024-06-27 12:04:00',NULL),
(600,600,'Z6A7B8C9D0','2024-07-01 12:05:00','2024-06-27 12:05:00',NULL),
(700,700,'E1F2G3H4I5','2024-07-01 12:06:00','2024-06-27 12:06:00',NULL),
(800,800,'J6K7L8M9N0','2024-07-01 12:07:00','2024-06-27 12:07:00',NULL),
(900,900,'O1P2Q3R4S5','2024-07-01 12:08:00','2024-06-27 12:08:00',NULL),
(1000,1000,'T6U7V8W9X0','2024-07-01 12:09:00','2024-06-27 12:09:00',NULL);
/*!40000 ALTER TABLE `user_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(2,'Valentin','Orzusa','valenorzu@gmail.com','valtillo','password_hashed123','2024-06-23 21:51:31',NULL),
(3,'Sarah','Thompson','sarah.thompson@example.com','sarahT','hashedpassword123','2024-06-26 18:42:16',NULL),
(4,'John','Miller','john.miller@example.com','johnM34','hashed_password123','2024-06-26 18:42:16',NULL),
(5,'Emily','Davis','emily.davis@example.com','emilyD22','hashed_password123','2024-06-26 18:42:16',NULL),
(6,'Michael','Roberts','michael.roberts@example.com','michaelR45','hashed_password123','2024-06-26 18:42:16',NULL),
(100,'Juan','Pérez','juan.perez@example.com','juanperez','password1','2024-06-27 12:00:00',NULL),
(200,'María','García','maria.garcia@example.com','mariagarcia','password2','2024-06-27 12:01:00',NULL),
(300,'Luis','Martínez','luis.martinez@example.com','luismartinez','password3','2024-06-27 12:02:00',NULL),
(400,'Ana','López','ana.lopez@example.com','analopez','password4','2024-06-27 12:03:00',NULL),
(500,'Carlos','Rodríguez','carlos.rodriguez@example.com','carlosrodriguez','password5','2024-06-27 12:04:00',NULL),
(600,'Laura','Fernández','laura.fernandez@example.com','laurafernandez','password6','2024-06-27 12:05:00',NULL),
(700,'Javier','Gómez','javier.gomez@example.com','javiergomez','password7','2024-06-27 12:06:00',NULL),
(800,'Sofía','Díaz','sofia.diaz@example.com','sofiadiaz','password8','2024-06-27 12:07:00',NULL),
(900,'Miguel','Sánchez','miguel.sanchez@example.com','miguelsanchez','password9','2024-06-27 12:08:00',NULL),
(1000,'Elena','Ramírez','elena.ramirez@example.com','elenaramirez','password10','2024-06-27 12:09:00',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-06-28 18:31:58
