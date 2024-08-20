-- MySQL dump 10.13  Distrib 8.2.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: nest
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'9fBD8SPqlONsoovJpPXJ1a1whcfQouts',1,'2024-02-24 01:32:41','2024-02-24 01:32:41','2024-02-24 01:32:41'),(2,2,'QCa0DqGwgJkMmbpbfT9N2ZfpBtdLve9c',1,'2024-02-24 01:32:42','2024-02-24 01:32:42','2024-02-24 01:32:42');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Everyday Fresh','2029-02-24 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2024-02-24 01:32:46','2024-02-24 01:32:46',1,NULL,NULL),(2,'Make your Breakfast','2029-02-24 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2024-02-24 01:32:46','2024-02-24 01:32:46',1,NULL,NULL),(3,'The best Organic','2029-02-24 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2024-02-24 01:32:46','2024-02-24 01:32:46',1,NULL,NULL),(4,'Bring nature into your home','2029-02-24 00:00:00','not_set','IZ6WU8KUALYG','promotion/4.png','/products',0,4,'published','2024-02-24 01:32:46','2024-02-24 01:32:46',1,NULL,NULL),(5,'Delivered to your home','2029-02-24 00:00:00','not_set','IZ6WU8KUALYH','promotion/5.png','/products',0,5,'published','2024-02-24 01:32:46','2024-02-24 01:32:46',1,NULL,NULL),(6,'Save 17% on Oganic Juice','2029-02-24 00:00:00','not_set','IZ6WU8KUALYI','promotion/6.png','/products',0,6,'published','2024-02-24 01:32:46','2024-02-24 01:32:46',1,NULL,NULL),(7,'Everyday Fresh & Clean with Our Products','2029-02-24 00:00:00','not_set','IZ6WU8KUALYJ','promotion/7.png','/products',0,7,'published','2024-02-24 01:32:46','2024-02-24 01:32:46',1,NULL,NULL),(8,'The best Organic Products Online','2029-02-24 00:00:00','not_set','IZ6WU8KUALYK','promotion/8.png','/products',0,8,'published','2024-02-24 01:32:46','2024-02-24 01:32:46',1,NULL,NULL),(9,'Everyday Fresh with Our Products','2029-02-24 00:00:00','not_set','IZ6WU8KUALYL','promotion/9.png',NULL,0,9,'published','2024-02-24 01:32:46','2024-02-24 01:32:46',1,NULL,NULL),(10,'100% guaranteed all Fresh items','2029-02-24 00:00:00','not_set','IZ6WU8KUALYM','promotion/10.png',NULL,0,10,'published','2024-02-24 01:32:46','2024-02-24 01:32:46',1,NULL,NULL),(11,'Special grocery sale off this month','2029-02-24 00:00:00','not_set','IZ6WU8KUALYN','promotion/11.png',NULL,0,11,'published','2024-02-24 01:32:46','2024-02-24 01:32:46',1,NULL,NULL),(12,'Enjoy 15% OFF for all vegetable and fruit','2029-02-24 00:00:00','not_set','IZ6WU8KUALYO','promotion/12.png',NULL,0,12,'published','2024-02-24 01:32:46','2024-02-24 01:32:46',1,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Rerum aliquam ad velit. Optio ea quod culpa mollitia. Repellendus consequatur ratione eos molestias ducimus non nihil.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2024-02-24 01:32:40','2024-02-24 01:32:40'),(2,'Fashion',0,'Molestiae corrupti et voluptatum pariatur mollitia. Omnis optio ut quod aperiam expedita. Possimus occaecati voluptatibus deserunt voluptates quo aliquid.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-02-24 01:32:40','2024-02-24 01:32:40'),(3,'Electronic',0,'Alias tempore quam voluptatem debitis eos qui voluptas. Error suscipit quo est unde at est et quisquam. Porro et eius odit aut rem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-02-24 01:32:40','2024-02-24 01:32:40'),(4,'Commercial',0,'Inventore cupiditate ut consequuntur voluptatem. Placeat sed dolores in vero. Quia voluptatem explicabo ea similique.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-02-24 01:32:40','2024-02-24 01:32:40');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,NULL,'published',0,1,'2024-02-24 01:32:24','2024-02-24 01:32:24'),(2,'Hiching',NULL,NULL,NULL,'published',1,1,'2024-02-24 01:32:24','2024-02-24 01:32:24'),(3,'Kepslo',NULL,NULL,NULL,'published',2,1,'2024-02-24 01:32:24','2024-02-24 01:32:24'),(4,'Groneba',NULL,NULL,NULL,'published',3,1,'2024-02-24 01:32:24','2024-02-24 01:32:24'),(5,'Babian',NULL,NULL,NULL,'published',4,1,'2024-02-24 01:32:24','2024-02-24 01:32:24'),(6,'Valorant',NULL,NULL,NULL,'published',5,1,'2024-02-24 01:32:24','2024-02-24 01:32:24'),(7,'Pure',NULL,NULL,NULL,'published',6,1,'2024-02-24 01:32:24','2024-02-24 01:32:24');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-02-24 01:32:24','2024-02-24 01:32:24'),(2,'EUR','€',0,2,1,0,0.84,'2024-02-24 01:32:24','2024-02-24 01:32:24'),(3,'VND','₫',0,0,2,0,23203,'2024-02-24 01:32:24','2024-02-24 01:32:24'),(4,'NGN','₦',1,2,2,0,895.52,'2024-02-24 01:32:24','2024-02-24 01:32:24');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Prof. Leo Hegmann Jr.','customer@botble.com','+17812399616','HN','Missouri','Sporerstad','52589 Billie Unions',1,1,'2024-02-24 01:32:34','2024-02-24 01:32:34','86000-8745'),(2,'Prof. Leo Hegmann Jr.','customer@botble.com','+17182401835','JE','Washington','Damienton','68883 Kuphal Crescent Suite 703',1,0,'2024-02-24 01:32:34','2024-02-24 01:32:34','25979'),(3,'Carson Howe Jr.','vendor@botble.com','+14436536946','SB','Wisconsin','Julieberg','6050 Leland Crescent',2,1,'2024-02-24 01:32:34','2024-02-24 01:32:34','22203'),(4,'Carson Howe Jr.','vendor@botble.com','+17729882415','EE','South Carolina','Eudoraville','5827 Boehm Squares',2,0,'2024-02-24 01:32:34','2024-02-24 01:32:34','71734-9665'),(5,'Allene Leuschke','monserrate27@example.com','+15159894876','GW','Texas','Dewaynetown','998 Gilbert Forges Apt. 825',3,1,'2024-02-24 01:32:35','2024-02-24 01:32:35','33018-6386'),(6,'Blair Robel V','pagac.alize@example.com','+12816311473','NO','Missouri','North Dariana','4811 Purdy Keys Suite 497',4,1,'2024-02-24 01:32:35','2024-02-24 01:32:35','08901'),(7,'Turner Mills','madonna58@example.org','+15747946368','GE','District of Columbia','Lake Chelsieborough','7463 Brown Creek Suite 905',5,1,'2024-02-24 01:32:35','2024-02-24 01:32:35','20420-5583'),(8,'Mr. Davonte Borer','brandi79@example.com','+14148778317','PL','South Dakota','Padbergton','7518 Swaniawski Gateway Suite 791',6,1,'2024-02-24 01:32:35','2024-02-24 01:32:35','10001'),(9,'Jeff Wilkinson','vbechtelar@example.org','+13145811686','CO','South Carolina','Kossville','28077 Glennie Alley Suite 937',7,1,'2024-02-24 01:32:36','2024-02-24 01:32:36','71972'),(10,'Prof. Rodrick Gorczany','laura.doyle@example.org','+13216127341','BQ','Mississippi','West Cecile','8963 Kassulke Parks',8,1,'2024-02-24 01:32:36','2024-02-24 01:32:36','23183'),(11,'Miss Callie Zboncak','nhilpert@example.org','+19082025793','RW','California','Gretaborough','891 Jarrett Stravenue',9,1,'2024-02-24 01:32:36','2024-02-24 01:32:36','97406'),(12,'Karl Dooley','macey51@example.org','+15159928134','KZ','North Carolina','West Irwinton','4136 Taurean Extensions',10,1,'2024-02-24 01:32:36','2024-02-24 01:32:36','55925');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Prof. Leo Hegmann Jr.','customer@botble.com','$2y$12$YOtJxispnjuV6sfM.frTReCbRePDsLEVqVphMagiX2cyXUFkNdMZi','customers/3.jpg','1976-02-06','+14757012076',NULL,'2024-02-24 01:32:34','2024-02-24 01:32:34','2024-02-24 08:32:34',NULL,'activated',NULL,0,NULL),(2,'Carson Howe Jr.','vendor@botble.com','$2y$12$QktAgmD3RrECGgyfB2xIweR7MUMqkQjHCxhTcnOHPuMvXJ14/njnO','customers/10.jpg','1985-02-01','+13619479672',NULL,'2024-02-24 01:32:34','2024-02-24 01:32:47','2024-02-24 08:32:34',NULL,'activated',NULL,1,'2024-02-24 08:32:47'),(3,'Allene Leuschke','monserrate27@example.com','$2y$12$rZAADibhzaUdeiHV.3BOaeNgbyC7CsouGFZY4QNZ/kJ/YAbmpdySy','customers/1.jpg','1981-01-25','+19894696771',NULL,'2024-02-24 01:32:35','2024-02-24 01:32:47','2024-02-24 08:32:35',NULL,'activated',NULL,1,'2024-02-24 08:32:47'),(4,'Blair Robel V','pagac.alize@example.com','$2y$12$3Lz7CvdzKQZ3sjy0J0UEtenM8WNOJ0zJwxQGrNQl9jcoQNVZqC1wm','customers/2.jpg','1987-02-07','+15593593847',NULL,'2024-02-24 01:32:35','2024-02-24 01:32:35','2024-02-24 08:32:35',NULL,'activated',NULL,0,NULL),(5,'Turner Mills','madonna58@example.org','$2y$12$4mczCozGQDWfw3/.x1VSsuSSvnLK2inW9bSm1uy9uJdieSVwi2CXO','customers/3.jpg','1982-02-08','+13256796234',NULL,'2024-02-24 01:32:35','2024-02-24 01:32:47','2024-02-24 08:32:35',NULL,'activated',NULL,1,'2024-02-24 08:32:47'),(6,'Mr. Davonte Borer','brandi79@example.com','$2y$12$vBQy1IDEtW2vEmBS3qPp3.NkcYNazwmPE6WX9zcBxZxs92zW7ADKC','customers/4.jpg','1982-02-22','+17045049936',NULL,'2024-02-24 01:32:35','2024-02-24 01:32:35','2024-02-24 08:32:35',NULL,'activated',NULL,0,NULL),(7,'Jeff Wilkinson','vbechtelar@example.org','$2y$12$0kkktSU1Pa/h5Go0u88aNOlT7wk4oPmgc1QNJBZLYVA8YfN7glx6.','customers/5.jpg','1986-02-04','+17016696522',NULL,'2024-02-24 01:32:36','2024-02-24 01:32:48','2024-02-24 08:32:36',NULL,'activated',NULL,1,'2024-02-24 08:32:48'),(8,'Prof. Rodrick Gorczany','laura.doyle@example.org','$2y$12$C.NkmaAeNhj2YcJ46iIYd.mEJj28WKTwqa3qloTeKqVlUJ4E7uWC2','customers/6.jpg','1998-01-29','+17136477185',NULL,'2024-02-24 01:32:36','2024-02-24 01:32:36','2024-02-24 08:32:36',NULL,'activated',NULL,0,NULL),(9,'Miss Callie Zboncak','nhilpert@example.org','$2y$12$uO5UsffjwDC6mNFmTxHna.6nGJPQzVISjaV2FWhKtKtk/.2tJ4lrm','customers/7.jpg','1997-02-01','+14129420296',NULL,'2024-02-24 01:32:36','2024-02-24 01:32:36','2024-02-24 08:32:36',NULL,'activated',NULL,0,NULL),(10,'Karl Dooley','macey51@example.org','$2y$12$UchVlGOvZxWFEfQssRzbzex5dW2g/Na.KJRSF077vdDt0RNwUaWpW','customers/8.jpg','2001-02-16','+14636042287',NULL,'2024-02-24 01:32:36','2024-02-24 01:32:48','2024-02-24 08:32:36',NULL,'activated',NULL,1,'2024-02-24 08:32:48');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,6,41.8,8,4),(2,5,40,11,1),(3,19,75.04,13,4),(4,7,49.14,19,2),(5,3,351.78,19,4),(5,1,254.15,17,4),(5,2,255.42,7,1),(5,3,243.54,15,3),(5,4,31.68,8,3),(5,5,35,14,3);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day','2024-04-11 00:00:00','published','2024-02-24 01:32:37','2024-02-24 01:32:37'),(2,'Winter Sale','2024-03-11 00:00:00','published','2024-02-24 01:32:37','2024-02-24 01:32:37'),(3,'Gadgets &amp; Accessories','2024-03-27 00:00:00','published','2024-02-24 01:32:37','2024-02-24 01:32:37'),(4,'Hot products','2024-03-31 00:00:00','published','2024-02-24 01:32:37','2024-02-24 01:32:37'),(5,'Best sale items','2024-04-10 00:00:00','published','2024-02-24 01:32:37','2024-02-24 01:32:37');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-02-24 01:32:46','2024-02-24 01:32:46'),(1,2,'2 Year',10,9999,0,'2024-02-24 01:32:46','2024-02-24 01:32:46'),(1,3,'3 Year',20,9999,0,'2024-02-24 01:32:46','2024-02-24 01:32:46'),(2,4,'4GB',0,9999,0,'2024-02-24 01:32:46','2024-02-24 01:32:46'),(2,5,'8GB',10,9999,0,'2024-02-24 01:32:46','2024-02-24 01:32:46'),(2,6,'16GB',20,9999,0,'2024-02-24 01:32:46','2024-02-24 01:32:46'),(3,7,'Core i5',0,9999,0,'2024-02-24 01:32:46','2024-02-24 01:32:46'),(3,8,'Core i7',10,9999,0,'2024-02-24 01:32:46','2024-02-24 01:32:46'),(3,9,'Core i9',20,9999,0,'2024-02-24 01:32:46','2024-02-24 01:32:46'),(4,10,'128GB',0,9999,0,'2024-02-24 01:32:46','2024-02-24 01:32:46'),(4,11,'256GB',10,9999,0,'2024-02-24 01:32:46','2024-02-24 01:32:46'),(4,12,'512GB',20,9999,0,'2024-02-24 01:32:46','2024-02-24 01:32:46');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-02-24 01:32:46','2024-02-24 01:32:46'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-02-24 01:32:46','2024-02-24 01:32:46'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-02-24 01:32:46','2024-02-24 01:32:46'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-02-24 01:32:46','2024-02-24 01:32:46');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
INSERT INTO `ec_invoice_items` VALUES (1,1,'Botble\\Ecommerce\\Models\\Product',27,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn',NULL,'products/3.jpg',3,451.00,1353.00,0.00,0.00,1353.00,'{\"sku\":\"HS-153-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 3 Boxes)\"}','2024-02-24 01:32:49','2024-02-24 01:32:49'),(2,2,'Botble\\Ecommerce\\Models\\Product',52,'Organic Frozen Triple Berry Blend',NULL,'products/14.jpg',3,125.00,375.00,0.00,0.00,375.00,'{\"sku\":\"HS-115-A0\",\"attributes\":\"(Weight: 5KG, Boxes: 5 Boxes)\"}','2024-02-24 01:32:49','2024-02-24 01:32:49'),(3,3,'Botble\\Ecommerce\\Models\\Product',79,'Colorful Banana',NULL,'products/23-1.jpg',1,121.00,121.00,0.00,0.00,121.00,'{\"sku\":\"HS-110-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 3 Boxes)\"}','2024-02-24 01:32:50','2024-02-24 01:32:50'),(4,4,'Botble\\Ecommerce\\Models\\Product',34,'Canada Dry Ginger Ale – 2 L Bottle',NULL,'products/7-1.jpg',3,117.00,351.00,0.00,0.00,351.00,'{\"sku\":\"HS-138-A0-A1\",\"attributes\":\"(Boxes: 1 Box, Weight: 2KG)\"}','2024-02-24 01:32:50','2024-02-24 01:32:50'),(5,4,'Botble\\Ecommerce\\Models\\Product',62,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)',NULL,'products/17.jpg',1,112.00,112.00,0.00,0.00,112.00,'{\"sku\":\"HS-183-A0-A2\",\"attributes\":\"(Weight: 2KG, Boxes: 2 Boxes)\"}','2024-02-24 01:32:50','2024-02-24 01:32:50'),(6,5,'Botble\\Ecommerce\\Models\\Product',38,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,'products/9-1.jpg',3,119.00,357.00,0.00,0.00,357.00,'{\"sku\":\"HS-156-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 5 Boxes)\"}','2024-02-24 01:32:50','2024-02-24 01:32:50'),(7,6,'Botble\\Ecommerce\\Models\\Product',71,'Perdue Simply Smart Organics Gluten Free',NULL,'products/20.jpg',3,110.00,330.00,0.00,0.00,330.00,'{\"sku\":\"HS-122-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 3 Boxes)\"}','2024-02-24 01:32:50','2024-02-24 01:32:50'),(8,7,'Botble\\Ecommerce\\Models\\Product',45,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11-1.jpg',3,114.00,342.00,0.00,0.00,342.00,'{\"sku\":\"HS-178-A0-A1\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}','2024-02-24 01:32:51','2024-02-24 01:32:51'),(9,8,'Botble\\Ecommerce\\Models\\Product',46,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,'products/12.jpg',1,129.00,129.00,0.00,0.00,129.00,'{\"sku\":\"HS-171-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 5 Boxes)\"}','2024-02-24 01:32:51','2024-02-24 01:32:51'),(10,9,'Botble\\Ecommerce\\Models\\Product',29,'Foster Farms Takeout Crispy Classic',NULL,'products/4-1.jpg',3,88.00,264.00,0.00,0.00,264.00,'{\"sku\":\"HS-105-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}','2024-02-24 01:32:51','2024-02-24 01:32:51'),(11,10,'Botble\\Ecommerce\\Models\\Product',30,'Blue Diamond Almonds Lightly (Digital)',NULL,'products/5.jpg',2,50.00,100.00,0.00,0.00,100.00,'{\"sku\":\"HS-189-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 5KG)\"}','2024-02-24 01:32:51','2024-02-24 01:32:51'),(12,10,'Botble\\Ecommerce\\Models\\Product',66,'Simply Lemonade with Raspberry Juice',NULL,'products/19.jpg',3,112.00,336.00,0.00,0.00,336.00,'{\"sku\":\"HS-121-A0\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 5KG)\"}','2024-02-24 01:32:51','2024-02-24 01:32:51'),(13,11,'Botble\\Ecommerce\\Models\\Product',33,'Canada Dry Ginger Ale – 2 L Bottle',NULL,'products/7.jpg',2,117.00,234.00,0.00,0.00,234.00,'{\"sku\":\"HS-138-A0\",\"attributes\":\"(Weight: 3KG, Boxes: 4 Boxes)\"}','2024-02-24 01:32:52','2024-02-24 01:32:52'),(14,12,'Botble\\Ecommerce\\Models\\Product',44,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11.jpg',2,114.00,228.00,0.00,0.00,228.00,'{\"sku\":\"HS-178-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 5 Boxes)\"}','2024-02-24 01:32:52','2024-02-24 01:32:52'),(15,13,'Botble\\Ecommerce\\Models\\Product',47,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,'products/12-1.jpg',3,129.00,387.00,0.00,0.00,387.00,'{\"sku\":\"HS-171-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-02-24 01:32:52','2024-02-24 01:32:52'),(16,13,'Botble\\Ecommerce\\Models\\Product',62,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)',NULL,'products/17.jpg',3,112.00,336.00,0.00,0.00,336.00,'{\"sku\":\"HS-183-A0-A2\",\"attributes\":\"(Weight: 2KG, Boxes: 2 Boxes)\"}','2024-02-24 01:32:52','2024-02-24 01:32:52'),(17,14,'Botble\\Ecommerce\\Models\\Product',25,'Seeds of Change Organic Quinoe (Digital)',NULL,'products/1.jpg',2,391.00,782.00,0.00,0.00,782.00,'{\"sku\":\"HS-173-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 5KG)\"}','2024-02-24 01:32:52','2024-02-24 01:32:52'),(18,15,'Botble\\Ecommerce\\Models\\Product',26,'All Natural Italian-Style Chicken Meatballs',NULL,'products/2.jpg',2,387.00,774.00,0.00,0.00,774.00,'{\"sku\":\"HS-176-A0\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 5KG)\"}','2024-02-24 01:32:53','2024-02-24 01:32:53'),(19,16,'Botble\\Ecommerce\\Models\\Product',53,'Organic Frozen Triple Berry Blend',NULL,'products/14-1.jpg',1,125.00,125.00,0.00,0.00,125.00,'{\"sku\":\"HS-115-A0-A1\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}','2024-02-24 01:32:53','2024-02-24 01:32:53'),(20,17,'Botble\\Ecommerce\\Models\\Product',29,'Foster Farms Takeout Crispy Classic',NULL,'products/4-1.jpg',3,88.00,264.00,0.00,0.00,264.00,'{\"sku\":\"HS-105-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}','2024-02-24 01:32:53','2024-02-24 01:32:53'),(21,18,'Botble\\Ecommerce\\Models\\Product',35,'Encore Seafoods Stuffed Alaskan',NULL,'products/8.jpg',2,114.00,228.00,0.00,0.00,228.00,'{\"sku\":\"HS-179-A0\",\"attributes\":\"(Weight: 3KG, Boxes: 5 Boxes)\"}','2024-02-24 01:32:53','2024-02-24 01:32:53'),(22,19,'Botble\\Ecommerce\\Models\\Product',58,'Oroweat Country Buttermilk Bread',NULL,'products/15.jpg',1,127.00,127.00,0.00,0.00,127.00,'{\"sku\":\"HS-177-A0-A3\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}','2024-02-24 01:32:54','2024-02-24 01:32:54'),(23,20,'Botble\\Ecommerce\\Models\\Product',26,'All Natural Italian-Style Chicken Meatballs',NULL,'products/2.jpg',2,387.00,774.00,0.00,0.00,774.00,'{\"sku\":\"HS-176-A0\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 5KG)\"}','2024-02-24 01:32:54','2024-02-24 01:32:54'),(24,21,'Botble\\Ecommerce\\Models\\Product',30,'Blue Diamond Almonds Lightly (Digital)',NULL,'products/5.jpg',3,50.00,150.00,0.00,0.00,150.00,'{\"sku\":\"HS-189-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 5KG)\"}','2024-02-24 01:32:54','2024-02-24 01:32:54'),(25,21,'Botble\\Ecommerce\\Models\\Product',53,'Organic Frozen Triple Berry Blend',NULL,'products/14-1.jpg',2,125.00,250.00,0.00,0.00,250.00,'{\"sku\":\"HS-115-A0-A1\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}','2024-02-24 01:32:54','2024-02-24 01:32:54'),(26,22,'Botble\\Ecommerce\\Models\\Product',48,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,'products/12.jpg',1,129.00,129.00,0.00,0.00,129.00,'{\"sku\":\"HS-171-A0-A2\",\"attributes\":\"(Weight: 1KG, Boxes: 3 Boxes)\"}','2024-02-24 01:32:54','2024-02-24 01:32:54'),(27,23,'Botble\\Ecommerce\\Models\\Product',31,'Blue Diamond Almonds Lightly (Digital)',NULL,'products/5-1.jpg',1,50.00,50.00,0.00,0.00,50.00,'{\"sku\":\"HS-189-A0-A1\",\"attributes\":\"(Boxes: 1 Box, Weight: 4KG)\"}','2024-02-24 01:32:55','2024-02-24 01:32:55'),(28,23,'Botble\\Ecommerce\\Models\\Product',53,'Organic Frozen Triple Berry Blend',NULL,'products/14-1.jpg',3,125.00,375.00,0.00,0.00,375.00,'{\"sku\":\"HS-115-A0-A1\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}','2024-02-24 01:32:55','2024-02-24 01:32:55'),(29,23,'Botble\\Ecommerce\\Models\\Product',80,'Signature Wood-Fired Mushroom and Caramelized',NULL,'products/24.jpg',2,114.00,228.00,0.00,0.00,228.00,'{\"sku\":\"HS-156-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}','2024-02-24 01:32:55','2024-02-24 01:32:55'),(30,24,'Botble\\Ecommerce\\Models\\Product',75,'Chen Watermelon (Digital)',NULL,'products/21.jpg',3,126.00,378.00,0.00,0.00,378.00,'{\"sku\":\"HS-161-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}','2024-02-24 01:32:55','2024-02-24 01:32:55'),(31,25,'Botble\\Ecommerce\\Models\\Product',30,'Blue Diamond Almonds Lightly (Digital)',NULL,'products/5.jpg',1,50.00,50.00,0.00,0.00,50.00,'{\"sku\":\"HS-189-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 5KG)\"}','2024-02-24 01:32:55','2024-02-24 01:32:55'),(32,26,'Botble\\Ecommerce\\Models\\Product',32,'Chobani Complete Vanilla Greek',NULL,'products/6.jpg',2,55.00,110.00,0.00,0.00,110.00,'{\"sku\":\"HS-171-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}','2024-02-24 01:32:55','2024-02-24 01:32:55'),(33,27,'Botble\\Ecommerce\\Models\\Product',77,'Organic Cage-Free Grade A Large Brown Eggs',NULL,'products/22.jpg',2,116.00,232.00,0.00,0.00,232.00,'{\"sku\":\"HS-178-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 5 Boxes)\"}','2024-02-24 01:32:55','2024-02-24 01:32:55'),(34,28,'Botble\\Ecommerce\\Models\\Product',26,'All Natural Italian-Style Chicken Meatballs',NULL,'products/2.jpg',1,387.00,387.00,0.00,0.00,387.00,'{\"sku\":\"HS-176-A0\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 5KG)\"}','2024-02-24 01:32:56','2024-02-24 01:32:56'),(35,29,'Botble\\Ecommerce\\Models\\Product',37,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,'products/9.jpg',2,119.00,238.00,0.00,0.00,238.00,'{\"sku\":\"HS-156-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 2KG)\"}','2024-02-24 01:32:56','2024-02-24 01:32:56'),(36,29,'Botble\\Ecommerce\\Models\\Product',70,'Simply Lemonade with Raspberry Juice',NULL,'products/19.jpg',1,112.00,112.00,0.00,0.00,112.00,'{\"sku\":\"HS-121-A0-A4\",\"attributes\":\"(Boxes: 1 Box, Weight: 3KG)\"}','2024-02-24 01:32:56','2024-02-24 01:32:56'),(37,30,'Botble\\Ecommerce\\Models\\Product',39,'Haagen-Dazs Caramel Cone Ice Cream',NULL,'products/10.jpg',3,500.00,1500.00,0.00,0.00,1500.00,'{\"sku\":\"HS-116-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-02-24 01:32:56','2024-02-24 01:32:56'),(38,30,'Botble\\Ecommerce\\Models\\Product',40,'Haagen-Dazs Caramel Cone Ice Cream',NULL,'products/10-1.jpg',2,500.00,1000.00,0.00,0.00,1000.00,'{\"sku\":\"HS-116-A0-A1\",\"attributes\":\"(Weight: 4KG, Boxes: 4 Boxes)\"}','2024-02-24 01:32:56','2024-02-24 01:32:56'),(39,30,'Botble\\Ecommerce\\Models\\Product',59,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,'products/16.jpg',1,116.00,116.00,0.00,0.00,116.00,'{\"sku\":\"HS-196-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 3 Boxes)\"}','2024-02-24 01:32:56','2024-02-24 01:32:56'),(40,31,'Botble\\Ecommerce\\Models\\Product',31,'Blue Diamond Almonds Lightly (Digital)',NULL,'products/5-1.jpg',1,50.00,50.00,0.00,0.00,50.00,'{\"sku\":\"HS-189-A0-A1\",\"attributes\":\"(Boxes: 1 Box, Weight: 4KG)\"}','2024-02-24 01:32:56','2024-02-24 01:32:56'),(41,31,'Botble\\Ecommerce\\Models\\Product',68,'Simply Lemonade with Raspberry Juice',NULL,'products/19.jpg',3,112.00,336.00,0.00,0.00,336.00,'{\"sku\":\"HS-121-A0-A2\",\"attributes\":\"(Weight: 2KG, Boxes: 5 Boxes)\"}','2024-02-24 01:32:56','2024-02-24 01:32:56'),(42,32,'Botble\\Ecommerce\\Models\\Product',40,'Haagen-Dazs Caramel Cone Ice Cream',NULL,'products/10-1.jpg',3,500.00,1500.00,0.00,0.00,1500.00,'{\"sku\":\"HS-116-A0-A1\",\"attributes\":\"(Weight: 4KG, Boxes: 4 Boxes)\"}','2024-02-24 01:32:57','2024-02-24 01:32:57'),(43,33,'Botble\\Ecommerce\\Models\\Product',56,'Oroweat Country Buttermilk Bread',NULL,'products/15-1.jpg',1,127.00,127.00,0.00,0.00,127.00,'{\"sku\":\"HS-177-A0-A1\",\"attributes\":\"(Weight: 5KG, Boxes: 5 Boxes)\"}','2024-02-24 01:32:57','2024-02-24 01:32:57'),(44,34,'Botble\\Ecommerce\\Models\\Product',32,'Chobani Complete Vanilla Greek',NULL,'products/6.jpg',3,55.00,165.00,0.00,0.00,165.00,'{\"sku\":\"HS-171-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}','2024-02-24 01:32:57','2024-02-24 01:32:57'),(45,34,'Botble\\Ecommerce\\Models\\Product',58,'Oroweat Country Buttermilk Bread',NULL,'products/15.jpg',3,127.00,381.00,0.00,0.00,381.00,'{\"sku\":\"HS-177-A0-A3\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}','2024-02-24 01:32:57','2024-02-24 01:32:57'),(46,35,'Botble\\Ecommerce\\Models\\Product',34,'Canada Dry Ginger Ale – 2 L Bottle',NULL,'products/7-1.jpg',2,117.00,234.00,0.00,0.00,234.00,'{\"sku\":\"HS-138-A0-A1\",\"attributes\":\"(Boxes: 1 Box, Weight: 2KG)\"}','2024-02-24 01:32:57','2024-02-24 01:32:57'),(47,35,'Botble\\Ecommerce\\Models\\Product',61,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)',NULL,'products/17-1.jpg',1,112.00,112.00,0.00,0.00,112.00,'{\"sku\":\"HS-183-A0-A1\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 5KG)\"}','2024-02-24 01:32:57','2024-02-24 01:32:57'),(48,36,'Botble\\Ecommerce\\Models\\Product',47,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,'products/12-1.jpg',3,129.00,387.00,0.00,0.00,387.00,'{\"sku\":\"HS-171-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-02-24 01:32:58','2024-02-24 01:32:58'),(49,37,'Botble\\Ecommerce\\Models\\Product',59,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,'products/16.jpg',3,116.00,348.00,0.00,0.00,348.00,'{\"sku\":\"HS-196-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 3 Boxes)\"}','2024-02-24 01:32:58','2024-02-24 01:32:58'),(50,38,'Botble\\Ecommerce\\Models\\Product',34,'Canada Dry Ginger Ale – 2 L Bottle',NULL,'products/7-1.jpg',1,117.00,117.00,0.00,0.00,117.00,'{\"sku\":\"HS-138-A0-A1\",\"attributes\":\"(Boxes: 1 Box, Weight: 2KG)\"}','2024-02-24 01:32:59','2024-02-24 01:32:59'),(51,39,'Botble\\Ecommerce\\Models\\Product',58,'Oroweat Country Buttermilk Bread',NULL,'products/15.jpg',1,127.00,127.00,0.00,0.00,127.00,'{\"sku\":\"HS-177-A0-A3\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}','2024-02-24 01:32:59','2024-02-24 01:32:59'),(52,40,'Botble\\Ecommerce\\Models\\Product',30,'Blue Diamond Almonds Lightly (Digital)',NULL,'products/5.jpg',1,50.00,50.00,0.00,0.00,50.00,'{\"sku\":\"HS-189-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 5KG)\"}','2024-02-24 01:33:00','2024-02-24 01:33:00'),(53,41,'Botble\\Ecommerce\\Models\\Product',34,'Canada Dry Ginger Ale – 2 L Bottle',NULL,'products/7-1.jpg',1,117.00,117.00,0.00,0.00,117.00,'{\"sku\":\"HS-138-A0-A1\",\"attributes\":\"(Boxes: 1 Box, Weight: 2KG)\"}','2024-02-24 01:33:00','2024-02-24 01:33:00'),(54,42,'Botble\\Ecommerce\\Models\\Product',76,'Chen Watermelon (Digital)',NULL,'products/21-1.jpg',2,126.00,252.00,0.00,0.00,252.00,'{\"sku\":\"HS-161-A0-A1\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}','2024-02-24 01:33:01','2024-02-24 01:33:01'),(55,43,'Botble\\Ecommerce\\Models\\Product',29,'Foster Farms Takeout Crispy Classic',NULL,'products/4-1.jpg',2,88.00,176.00,0.00,0.00,176.00,'{\"sku\":\"HS-105-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}','2024-02-24 01:33:01','2024-02-24 01:33:01'),(56,44,'Botble\\Ecommerce\\Models\\Product',40,'Haagen-Dazs Caramel Cone Ice Cream',NULL,'products/10-1.jpg',2,500.00,1000.00,0.00,0.00,1000.00,'{\"sku\":\"HS-116-A0-A1\",\"attributes\":\"(Weight: 4KG, Boxes: 4 Boxes)\"}','2024-02-24 01:33:02','2024-02-24 01:33:02'),(57,45,'Botble\\Ecommerce\\Models\\Product',52,'Organic Frozen Triple Berry Blend',NULL,'products/14.jpg',2,125.00,250.00,0.00,0.00,250.00,'{\"sku\":\"HS-115-A0\",\"attributes\":\"(Weight: 5KG, Boxes: 5 Boxes)\"}','2024-02-24 01:33:02','2024-02-24 01:33:02'),(58,46,'Botble\\Ecommerce\\Models\\Product',62,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)',NULL,'products/17.jpg',2,112.00,224.00,0.00,0.00,224.00,'{\"sku\":\"HS-183-A0-A2\",\"attributes\":\"(Weight: 2KG, Boxes: 2 Boxes)\"}','2024-02-24 01:33:03','2024-02-24 01:33:03'),(59,47,'Botble\\Ecommerce\\Models\\Product',71,'Perdue Simply Smart Organics Gluten Free',NULL,'products/20.jpg',3,110.00,330.00,0.00,0.00,330.00,'{\"sku\":\"HS-122-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 3 Boxes)\"}','2024-02-24 01:33:03','2024-02-24 01:33:03'),(60,48,'Botble\\Ecommerce\\Models\\Product',77,'Organic Cage-Free Grade A Large Brown Eggs',NULL,'products/22.jpg',2,116.00,232.00,0.00,0.00,232.00,'{\"sku\":\"HS-178-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 5 Boxes)\"}','2024-02-24 01:33:04','2024-02-24 01:33:04'),(61,49,'Botble\\Ecommerce\\Models\\Product',25,'Seeds of Change Organic Quinoe (Digital)',NULL,'products/1.jpg',2,391.00,782.00,0.00,0.00,782.00,'{\"sku\":\"HS-173-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 5KG)\"}','2024-02-24 01:33:04','2024-02-24 01:33:04'),(62,50,'Botble\\Ecommerce\\Models\\Product',66,'Simply Lemonade with Raspberry Juice',NULL,'products/19.jpg',1,112.00,112.00,0.00,0.00,112.00,'{\"sku\":\"HS-121-A0\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 5KG)\"}','2024-02-24 01:33:05','2024-02-24 01:33:05');
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
INSERT INTO `ec_invoices` VALUES (1,'Botble\\Ecommerce\\Models\\Order',1,'INV-1','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,1353.00,0.00,0.00,0.00,'1','default',NULL,NULL,1353.00,NULL,1,'completed','2024-02-24 01:32:49','2024-02-20 17:32:49','2024-02-24 01:32:49'),(2,'Botble\\Ecommerce\\Models\\Order',2,'INV-2','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,375.00,0.00,0.00,0.00,'1','default',NULL,NULL,375.00,NULL,2,'pending',NULL,'2024-02-09 01:32:49','2024-02-24 01:32:49'),(3,'Botble\\Ecommerce\\Models\\Order',3,'INV-3','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,121.00,0.00,0.00,0.00,'1','default',NULL,NULL,121.00,NULL,3,'completed','2024-02-24 01:32:50','2024-02-10 17:32:50','2024-02-24 01:32:50'),(4,'Botble\\Ecommerce\\Models\\Order',4,'INV-4','Prof. Rodrick Gorczany','',NULL,'laura.doyle@example.org','+13216127341','8963 Kassulke Parks, West Cecile, Mississippi, BQ',NULL,463.00,0.00,0.00,0.00,'1','default',NULL,NULL,463.00,NULL,4,'completed','2024-02-24 01:32:50','2024-02-16 03:32:50','2024-02-24 01:32:50'),(5,'Botble\\Ecommerce\\Models\\Order',5,'INV-5','Prof. Rodrick Gorczany','',NULL,'laura.doyle@example.org','+13216127341','8963 Kassulke Parks, West Cecile, Mississippi, BQ',NULL,357.00,0.00,0.00,0.00,NULL,'',NULL,NULL,357.00,NULL,5,'completed','2024-02-24 01:32:50','2024-02-09 19:32:50','2024-02-24 01:32:50'),(6,'Botble\\Ecommerce\\Models\\Order',6,'INV-6','Prof. Rodrick Gorczany','',NULL,'laura.doyle@example.org','+13216127341','8963 Kassulke Parks, West Cecile, Mississippi, BQ',NULL,330.00,0.00,0.00,0.00,'1','default',NULL,NULL,330.00,NULL,6,'completed','2024-02-24 01:32:50','2024-02-22 11:32:50','2024-02-24 01:32:50'),(7,'Botble\\Ecommerce\\Models\\Order',7,'INV-7','Mr. Davonte Borer','',NULL,'brandi79@example.com','+14148778317','7518 Swaniawski Gateway Suite 791, Padbergton, South Dakota, PL',NULL,342.00,0.00,0.00,0.00,'1','default',NULL,NULL,342.00,NULL,7,'completed','2024-02-24 01:32:51','2024-02-13 13:32:51','2024-02-24 01:32:51'),(8,'Botble\\Ecommerce\\Models\\Order',8,'INV-8','Mr. Davonte Borer','',NULL,'brandi79@example.com','+14148778317','7518 Swaniawski Gateway Suite 791, Padbergton, South Dakota, PL',NULL,129.00,0.00,0.00,0.00,'1','default',NULL,NULL,129.00,NULL,8,'completed','2024-02-24 01:32:51','2024-02-15 01:32:51','2024-02-24 01:32:51'),(9,'Botble\\Ecommerce\\Models\\Order',9,'INV-9','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,264.00,0.00,0.00,0.00,'1','default',NULL,NULL,264.00,NULL,9,'completed','2024-02-24 01:32:51','2024-02-11 07:32:51','2024-02-24 01:32:51'),(10,'Botble\\Ecommerce\\Models\\Order',10,'INV-10','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,436.00,0.00,0.00,0.00,'1','default',NULL,NULL,436.00,NULL,10,'completed','2024-02-24 01:32:51','2024-02-19 19:32:51','2024-02-24 01:32:51'),(11,'Botble\\Ecommerce\\Models\\Order',11,'INV-11','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,234.00,0.00,0.00,0.00,'1','default',NULL,NULL,234.00,NULL,11,'completed','2024-02-24 01:32:52','2024-02-12 17:32:52','2024-02-24 01:32:52'),(12,'Botble\\Ecommerce\\Models\\Order',12,'INV-12','Prof. Leo Hegmann Jr.','',NULL,'customer@botble.com','+17812399616','52589 Billie Unions, Sporerstad, Missouri, HN',NULL,228.00,0.00,0.00,0.00,'1','default',NULL,NULL,228.00,NULL,12,'completed','2024-02-24 01:32:52','2024-02-18 17:32:52','2024-02-24 01:32:52'),(13,'Botble\\Ecommerce\\Models\\Order',13,'INV-13','Prof. Leo Hegmann Jr.','',NULL,'customer@botble.com','+17812399616','52589 Billie Unions, Sporerstad, Missouri, HN',NULL,723.00,0.00,0.00,0.00,'1','default',NULL,NULL,723.00,NULL,13,'pending',NULL,'2024-02-10 17:32:52','2024-02-24 01:32:52'),(14,'Botble\\Ecommerce\\Models\\Order',14,'INV-14','Prof. Leo Hegmann Jr.','',NULL,'customer@botble.com','+17812399616','52589 Billie Unions, Sporerstad, Missouri, HN',NULL,782.00,0.00,0.00,0.00,NULL,'',NULL,NULL,782.00,NULL,14,'completed','2024-02-24 01:32:52','2024-02-19 01:32:52','2024-02-24 01:32:52'),(15,'Botble\\Ecommerce\\Models\\Order',15,'INV-15','Prof. Leo Hegmann Jr.','',NULL,'customer@botble.com','+17812399616','52589 Billie Unions, Sporerstad, Missouri, HN',NULL,774.00,0.00,0.00,0.00,'1','default',NULL,NULL,774.00,NULL,15,'completed','2024-02-24 01:32:53','2024-02-14 01:32:53','2024-02-24 01:32:53'),(16,'Botble\\Ecommerce\\Models\\Order',16,'INV-16','Prof. Leo Hegmann Jr.','',NULL,'customer@botble.com','+17812399616','52589 Billie Unions, Sporerstad, Missouri, HN',NULL,125.00,0.00,0.00,0.00,'1','default',NULL,NULL,125.00,NULL,16,'pending',NULL,'2024-02-11 13:32:53','2024-02-24 01:32:53'),(17,'Botble\\Ecommerce\\Models\\Order',17,'INV-17','Blair Robel V','',NULL,'pagac.alize@example.com','+12816311473','4811 Purdy Keys Suite 497, North Dariana, Missouri, NO',NULL,264.00,0.00,0.00,0.00,'1','default',NULL,NULL,264.00,NULL,17,'completed','2024-02-24 01:32:53','2024-02-21 17:32:53','2024-02-24 01:32:53'),(18,'Botble\\Ecommerce\\Models\\Order',18,'INV-18','Blair Robel V','',NULL,'pagac.alize@example.com','+12816311473','4811 Purdy Keys Suite 497, North Dariana, Missouri, NO',NULL,228.00,0.00,0.00,0.00,'1','default',NULL,NULL,228.00,NULL,18,'completed','2024-02-24 01:32:53','2024-02-22 21:32:53','2024-02-24 01:32:53'),(19,'Botble\\Ecommerce\\Models\\Order',19,'INV-19','Blair Robel V','',NULL,'pagac.alize@example.com','+12816311473','4811 Purdy Keys Suite 497, North Dariana, Missouri, NO',NULL,127.00,0.00,0.00,0.00,'1','default',NULL,NULL,127.00,NULL,19,'completed','2024-02-24 01:32:54','2024-02-14 17:32:54','2024-02-24 01:32:54'),(20,'Botble\\Ecommerce\\Models\\Order',20,'INV-20','Mr. Davonte Borer','',NULL,'brandi79@example.com','+14148778317','7518 Swaniawski Gateway Suite 791, Padbergton, South Dakota, PL',NULL,774.00,0.00,0.00,0.00,'1','default',NULL,NULL,774.00,NULL,20,'pending',NULL,'2024-02-14 07:32:54','2024-02-24 01:32:54'),(21,'Botble\\Ecommerce\\Models\\Order',21,'INV-21','Mr. Davonte Borer','',NULL,'brandi79@example.com','+14148778317','7518 Swaniawski Gateway Suite 791, Padbergton, South Dakota, PL',NULL,400.00,0.00,0.00,0.00,'1','default',NULL,NULL,400.00,NULL,21,'pending',NULL,'2024-02-14 07:32:54','2024-02-24 01:32:54'),(22,'Botble\\Ecommerce\\Models\\Order',22,'INV-22','Mr. Davonte Borer','',NULL,'brandi79@example.com','+14148778317','7518 Swaniawski Gateway Suite 791, Padbergton, South Dakota, PL',NULL,129.00,0.00,0.00,0.00,'1','default',NULL,NULL,129.00,NULL,22,'completed','2024-02-24 01:32:54','2024-02-13 05:32:54','2024-02-24 01:32:54'),(23,'Botble\\Ecommerce\\Models\\Order',23,'INV-23','Mr. Davonte Borer','',NULL,'brandi79@example.com','+14148778317','7518 Swaniawski Gateway Suite 791, Padbergton, South Dakota, PL',NULL,653.00,0.00,0.00,0.00,'1','default',NULL,NULL,653.00,NULL,23,'completed','2024-02-24 01:32:55','2024-02-20 01:32:55','2024-02-24 01:32:55'),(24,'Botble\\Ecommerce\\Models\\Order',24,'INV-24','Mr. Davonte Borer','',NULL,'brandi79@example.com','+14148778317','7518 Swaniawski Gateway Suite 791, Padbergton, South Dakota, PL',NULL,378.00,0.00,0.00,0.00,NULL,'',NULL,NULL,378.00,NULL,24,'completed','2024-02-24 01:32:55','2024-02-18 01:32:55','2024-02-24 01:32:55'),(25,'Botble\\Ecommerce\\Models\\Order',25,'INV-25','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,50.00,0.00,0.00,0.00,NULL,'',NULL,NULL,50.00,NULL,25,'pending',NULL,'2024-02-14 21:32:55','2024-02-24 01:32:55'),(26,'Botble\\Ecommerce\\Models\\Order',26,'INV-26','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,110.00,0.00,0.00,0.00,'1','default',NULL,NULL,110.00,NULL,26,'completed','2024-02-24 01:32:55','2024-02-21 07:32:55','2024-02-24 01:32:55'),(27,'Botble\\Ecommerce\\Models\\Order',27,'INV-27','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,232.00,0.00,0.00,0.00,'1','default',NULL,NULL,232.00,NULL,27,'completed','2024-02-24 01:32:55','2024-02-17 15:32:55','2024-02-24 01:32:55'),(28,'Botble\\Ecommerce\\Models\\Order',28,'INV-28','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,387.00,0.00,0.00,0.00,'1','default',NULL,NULL,387.00,NULL,28,'completed','2024-02-24 01:32:56','2024-02-16 13:32:56','2024-02-24 01:32:56'),(29,'Botble\\Ecommerce\\Models\\Order',29,'INV-29','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,350.00,0.00,0.00,0.00,'1','default',NULL,NULL,350.00,NULL,29,'pending',NULL,'2024-02-17 09:32:56','2024-02-24 01:32:56'),(30,'Botble\\Ecommerce\\Models\\Order',30,'INV-30','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,2616.00,0.00,0.00,0.00,'1','default',NULL,NULL,2616.00,NULL,30,'pending',NULL,'2024-02-17 07:32:56','2024-02-24 01:32:56'),(31,'Botble\\Ecommerce\\Models\\Order',31,'INV-31','Mr. Davonte Borer','',NULL,'brandi79@example.com','+14148778317','7518 Swaniawski Gateway Suite 791, Padbergton, South Dakota, PL',NULL,386.00,0.00,0.00,0.00,'1','default',NULL,NULL,386.00,NULL,31,'completed','2024-02-24 01:32:56','2024-02-17 09:32:56','2024-02-24 01:32:56'),(32,'Botble\\Ecommerce\\Models\\Order',32,'INV-32','Mr. Davonte Borer','',NULL,'brandi79@example.com','+14148778317','7518 Swaniawski Gateway Suite 791, Padbergton, South Dakota, PL',NULL,1500.00,0.00,0.00,0.00,'1','default',NULL,NULL,1500.00,NULL,32,'completed','2024-02-24 01:32:57','2024-02-17 09:32:57','2024-02-24 01:32:57'),(33,'Botble\\Ecommerce\\Models\\Order',33,'INV-33','Mr. Davonte Borer','',NULL,'brandi79@example.com','+14148778317','7518 Swaniawski Gateway Suite 791, Padbergton, South Dakota, PL',NULL,127.00,0.00,0.00,0.00,'1','default',NULL,NULL,127.00,NULL,33,'completed','2024-02-24 01:32:57','2024-02-22 17:32:57','2024-02-24 01:32:57'),(34,'Botble\\Ecommerce\\Models\\Order',34,'INV-34','Blair Robel V','',NULL,'pagac.alize@example.com','+12816311473','4811 Purdy Keys Suite 497, North Dariana, Missouri, NO',NULL,546.00,0.00,0.00,0.00,'1','default',NULL,NULL,546.00,NULL,34,'pending',NULL,'2024-02-22 07:32:57','2024-02-24 01:32:57'),(35,'Botble\\Ecommerce\\Models\\Order',35,'INV-35','Blair Robel V','',NULL,'pagac.alize@example.com','+12816311473','4811 Purdy Keys Suite 497, North Dariana, Missouri, NO',NULL,346.00,0.00,0.00,0.00,'1','default',NULL,NULL,346.00,NULL,35,'pending',NULL,'2024-02-19 09:32:57','2024-02-24 01:32:57'),(36,'Botble\\Ecommerce\\Models\\Order',36,'INV-36','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,387.00,0.00,0.00,0.00,'1','default',NULL,NULL,387.00,NULL,36,'pending',NULL,'2024-02-21 13:32:58','2024-02-24 01:32:58'),(37,'Botble\\Ecommerce\\Models\\Order',37,'INV-37','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,348.00,0.00,0.00,0.00,'1','default',NULL,NULL,348.00,NULL,37,'completed','2024-02-24 01:32:58','2024-02-22 01:32:58','2024-02-24 01:32:58'),(38,'Botble\\Ecommerce\\Models\\Order',38,'INV-38','Prof. Rodrick Gorczany','',NULL,'laura.doyle@example.org','+13216127341','8963 Kassulke Parks, West Cecile, Mississippi, BQ',NULL,117.00,0.00,0.00,0.00,'1','default',NULL,NULL,117.00,NULL,38,'pending',NULL,'2024-02-23 15:32:59','2024-02-24 01:32:59'),(39,'Botble\\Ecommerce\\Models\\Order',39,'INV-39','Prof. Rodrick Gorczany','',NULL,'laura.doyle@example.org','+13216127341','8963 Kassulke Parks, West Cecile, Mississippi, BQ',NULL,127.00,0.00,0.00,0.00,'1','default',NULL,NULL,127.00,NULL,39,'completed','2024-02-24 01:32:59','2024-02-20 17:32:59','2024-02-24 01:32:59'),(40,'Botble\\Ecommerce\\Models\\Order',40,'INV-40','Blair Robel V','',NULL,'pagac.alize@example.com','+12816311473','4811 Purdy Keys Suite 497, North Dariana, Missouri, NO',NULL,50.00,0.00,0.00,0.00,NULL,'',NULL,NULL,50.00,NULL,40,'pending',NULL,'2024-02-21 17:33:00','2024-02-24 01:33:00'),(41,'Botble\\Ecommerce\\Models\\Order',41,'INV-41','Blair Robel V','',NULL,'pagac.alize@example.com','+12816311473','4811 Purdy Keys Suite 497, North Dariana, Missouri, NO',NULL,117.00,0.00,0.00,0.00,'1','default',NULL,NULL,117.00,NULL,41,'completed','2024-02-24 01:33:00','2024-02-22 01:33:00','2024-02-24 01:33:00'),(42,'Botble\\Ecommerce\\Models\\Order',42,'INV-42','Blair Robel V','',NULL,'pagac.alize@example.com','+12816311473','4811 Purdy Keys Suite 497, North Dariana, Missouri, NO',NULL,252.00,0.00,0.00,0.00,NULL,'',NULL,NULL,252.00,NULL,42,'completed','2024-02-24 01:33:01','2024-02-23 01:33:01','2024-02-24 01:33:01'),(43,'Botble\\Ecommerce\\Models\\Order',43,'INV-43','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,176.00,0.00,0.00,0.00,'1','default',NULL,NULL,176.00,NULL,43,'completed','2024-02-24 01:33:01','2024-02-22 07:33:01','2024-02-24 01:33:01'),(44,'Botble\\Ecommerce\\Models\\Order',44,'INV-44','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,1000.00,0.00,0.00,0.00,'1','default',NULL,NULL,1000.00,NULL,44,'completed','2024-02-24 01:33:02','2024-02-23 01:33:02','2024-02-24 01:33:02'),(45,'Botble\\Ecommerce\\Models\\Order',45,'INV-45','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,250.00,0.00,0.00,0.00,'1','default',NULL,NULL,250.00,NULL,45,'completed','2024-02-24 01:33:02','2024-02-23 07:33:02','2024-02-24 01:33:02'),(46,'Botble\\Ecommerce\\Models\\Order',46,'INV-46','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,224.00,0.00,0.00,0.00,NULL,'',NULL,NULL,224.00,NULL,46,'completed','2024-02-24 01:33:03','2024-02-23 21:33:03','2024-02-24 01:33:03'),(47,'Botble\\Ecommerce\\Models\\Order',47,'INV-47','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,330.00,0.00,0.00,0.00,'1','default',NULL,NULL,330.00,NULL,47,'completed','2024-02-24 01:33:03','2024-02-22 21:33:03','2024-02-24 01:33:03'),(48,'Botble\\Ecommerce\\Models\\Order',48,'INV-48','Miss Callie Zboncak','',NULL,'nhilpert@example.org','+19082025793','891 Jarrett Stravenue, Gretaborough, California, RW',NULL,232.00,0.00,0.00,0.00,'1','default',NULL,NULL,232.00,NULL,48,'completed','2024-02-24 01:33:04','2024-02-23 21:33:04','2024-02-24 01:33:04'),(49,'Botble\\Ecommerce\\Models\\Order',49,'INV-49','Mr. Davonte Borer','',NULL,'brandi79@example.com','+14148778317','7518 Swaniawski Gateway Suite 791, Padbergton, South Dakota, PL',NULL,782.00,0.00,0.00,0.00,NULL,'',NULL,NULL,782.00,NULL,49,'pending',NULL,'2024-02-23 05:33:04','2024-02-24 01:33:04'),(50,'Botble\\Ecommerce\\Models\\Order',50,'INV-50','Mr. Davonte Borer','',NULL,'brandi79@example.com','+14148778317','7518 Swaniawski Gateway Suite 791, Padbergton, South Dakota, PL',NULL,112.00,0.00,0.00,0.00,'1','default',NULL,NULL,112.00,NULL,50,'completed','2024-02-24 01:33:05','2024-02-23 05:33:04','2024-02-24 01:33:05');
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',1,'97406','shipping_address'),(2,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',2,'97406','shipping_address'),(3,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',3,'97406','shipping_address'),(4,'Prof. Rodrick Gorczany','+13216127341','laura.doyle@example.org','BQ','Mississippi','West Cecile','8963 Kassulke Parks',4,'23183','shipping_address'),(5,'Prof. Rodrick Gorczany','+13216127341','laura.doyle@example.org','BQ','Mississippi','West Cecile','8963 Kassulke Parks',5,'23183','shipping_address'),(6,'Prof. Rodrick Gorczany','+13216127341','laura.doyle@example.org','BQ','Mississippi','West Cecile','8963 Kassulke Parks',6,'23183','shipping_address'),(7,'Mr. Davonte Borer','+14148778317','brandi79@example.com','PL','South Dakota','Padbergton','7518 Swaniawski Gateway Suite 791',7,'10001','shipping_address'),(8,'Mr. Davonte Borer','+14148778317','brandi79@example.com','PL','South Dakota','Padbergton','7518 Swaniawski Gateway Suite 791',8,'10001','shipping_address'),(9,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',9,'97406','shipping_address'),(10,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',10,'97406','shipping_address'),(11,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',11,'97406','shipping_address'),(12,'Prof. Leo Hegmann Jr.','+17812399616','customer@botble.com','HN','Missouri','Sporerstad','52589 Billie Unions',12,'86000-8745','shipping_address'),(13,'Prof. Leo Hegmann Jr.','+17812399616','customer@botble.com','HN','Missouri','Sporerstad','52589 Billie Unions',13,'86000-8745','shipping_address'),(14,'Prof. Leo Hegmann Jr.','+17812399616','customer@botble.com','HN','Missouri','Sporerstad','52589 Billie Unions',14,'86000-8745','shipping_address'),(15,'Prof. Leo Hegmann Jr.','+17812399616','customer@botble.com','HN','Missouri','Sporerstad','52589 Billie Unions',15,'86000-8745','shipping_address'),(16,'Prof. Leo Hegmann Jr.','+17812399616','customer@botble.com','HN','Missouri','Sporerstad','52589 Billie Unions',16,'86000-8745','shipping_address'),(17,'Blair Robel V','+12816311473','pagac.alize@example.com','NO','Missouri','North Dariana','4811 Purdy Keys Suite 497',17,'08901','shipping_address'),(18,'Blair Robel V','+12816311473','pagac.alize@example.com','NO','Missouri','North Dariana','4811 Purdy Keys Suite 497',18,'08901','shipping_address'),(19,'Blair Robel V','+12816311473','pagac.alize@example.com','NO','Missouri','North Dariana','4811 Purdy Keys Suite 497',19,'08901','shipping_address'),(20,'Mr. Davonte Borer','+14148778317','brandi79@example.com','PL','South Dakota','Padbergton','7518 Swaniawski Gateway Suite 791',20,'10001','shipping_address'),(21,'Mr. Davonte Borer','+14148778317','brandi79@example.com','PL','South Dakota','Padbergton','7518 Swaniawski Gateway Suite 791',21,'10001','shipping_address'),(22,'Mr. Davonte Borer','+14148778317','brandi79@example.com','PL','South Dakota','Padbergton','7518 Swaniawski Gateway Suite 791',22,'10001','shipping_address'),(23,'Mr. Davonte Borer','+14148778317','brandi79@example.com','PL','South Dakota','Padbergton','7518 Swaniawski Gateway Suite 791',23,'10001','shipping_address'),(24,'Mr. Davonte Borer','+14148778317','brandi79@example.com','PL','South Dakota','Padbergton','7518 Swaniawski Gateway Suite 791',24,'10001','shipping_address'),(25,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',25,'97406','shipping_address'),(26,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',26,'97406','shipping_address'),(27,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',27,'97406','shipping_address'),(28,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',28,'97406','shipping_address'),(29,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',29,'97406','shipping_address'),(30,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',30,'97406','shipping_address'),(31,'Mr. Davonte Borer','+14148778317','brandi79@example.com','PL','South Dakota','Padbergton','7518 Swaniawski Gateway Suite 791',31,'10001','shipping_address'),(32,'Mr. Davonte Borer','+14148778317','brandi79@example.com','PL','South Dakota','Padbergton','7518 Swaniawski Gateway Suite 791',32,'10001','shipping_address'),(33,'Mr. Davonte Borer','+14148778317','brandi79@example.com','PL','South Dakota','Padbergton','7518 Swaniawski Gateway Suite 791',33,'10001','shipping_address'),(34,'Blair Robel V','+12816311473','pagac.alize@example.com','NO','Missouri','North Dariana','4811 Purdy Keys Suite 497',34,'08901','shipping_address'),(35,'Blair Robel V','+12816311473','pagac.alize@example.com','NO','Missouri','North Dariana','4811 Purdy Keys Suite 497',35,'08901','shipping_address'),(36,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',36,'97406','shipping_address'),(37,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',37,'97406','shipping_address'),(38,'Prof. Rodrick Gorczany','+13216127341','laura.doyle@example.org','BQ','Mississippi','West Cecile','8963 Kassulke Parks',38,'23183','shipping_address'),(39,'Prof. Rodrick Gorczany','+13216127341','laura.doyle@example.org','BQ','Mississippi','West Cecile','8963 Kassulke Parks',39,'23183','shipping_address'),(40,'Blair Robel V','+12816311473','pagac.alize@example.com','NO','Missouri','North Dariana','4811 Purdy Keys Suite 497',40,'08901','shipping_address'),(41,'Blair Robel V','+12816311473','pagac.alize@example.com','NO','Missouri','North Dariana','4811 Purdy Keys Suite 497',41,'08901','shipping_address'),(42,'Blair Robel V','+12816311473','pagac.alize@example.com','NO','Missouri','North Dariana','4811 Purdy Keys Suite 497',42,'08901','shipping_address'),(43,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',43,'97406','shipping_address'),(44,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',44,'97406','shipping_address'),(45,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',45,'97406','shipping_address'),(46,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',46,'97406','shipping_address'),(47,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',47,'97406','shipping_address'),(48,'Miss Callie Zboncak','+19082025793','nhilpert@example.org','RW','California','Gretaborough','891 Jarrett Stravenue',48,'97406','shipping_address'),(49,'Mr. Davonte Borer','+14148778317','brandi79@example.com','PL','South Dakota','Padbergton','7518 Swaniawski Gateway Suite 791',49,'10001','shipping_address'),(50,'Mr. Davonte Borer','+14148778317','brandi79@example.com','PL','South Dakota','Padbergton','7518 Swaniawski Gateway Suite 791',50,'10001','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2024-02-20 17:32:49','2024-02-20 17:32:49'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2024-02-20 17:32:49','2024-02-20 17:32:49'),(3,'confirm_payment','Payment was confirmed (amount $1,353.00) by %user_name%',0,1,NULL,'2024-02-24 01:32:49','2024-02-24 01:32:49'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2024-02-24 01:32:49','2024-02-24 01:32:49'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2024-02-09 01:32:49','2024-02-09 01:32:49'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2024-02-09 01:32:49','2024-02-09 01:32:49'),(7,'create_shipment','Created shipment for order',0,2,NULL,'2024-02-24 01:32:50','2024-02-24 01:32:50'),(8,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2024-02-10 17:32:50','2024-02-10 17:32:50'),(9,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2024-02-10 17:32:50','2024-02-10 17:32:50'),(10,'confirm_payment','Payment was confirmed (amount $121.00) by %user_name%',0,3,NULL,'2024-02-24 01:32:50','2024-02-24 01:32:50'),(11,'create_shipment','Created shipment for order',0,3,NULL,'2024-02-24 01:32:50','2024-02-24 01:32:50'),(12,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,NULL,'2024-02-24 01:32:50','2024-02-24 01:32:50'),(13,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2024-02-16 03:32:50','2024-02-16 03:32:50'),(14,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2024-02-16 03:32:50','2024-02-16 03:32:50'),(15,'confirm_payment','Payment was confirmed (amount $463.00) by %user_name%',0,4,NULL,'2024-02-24 01:32:50','2024-02-24 01:32:50'),(16,'create_shipment','Created shipment for order',0,4,NULL,'2024-02-24 01:32:50','2024-02-24 01:32:50'),(17,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,NULL,'2024-02-24 01:32:50','2024-02-24 01:32:50'),(18,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2024-02-09 19:32:50','2024-02-09 19:32:50'),(19,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2024-02-09 19:32:50','2024-02-09 19:32:50'),(20,'confirm_payment','Payment was confirmed (amount $357.00) by %user_name%',0,5,NULL,'2024-02-24 01:32:50','2024-02-24 01:32:50'),(21,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,5,NULL,'2024-02-24 01:32:50','2024-02-24 01:32:50'),(22,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2024-02-22 11:32:50','2024-02-22 11:32:50'),(23,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2024-02-22 11:32:50','2024-02-22 11:32:50'),(24,'confirm_payment','Payment was confirmed (amount $330.00) by %user_name%',0,6,NULL,'2024-02-24 01:32:50','2024-02-24 01:32:50'),(25,'create_shipment','Created shipment for order',0,6,NULL,'2024-02-24 01:32:51','2024-02-24 01:32:51'),(26,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2024-02-13 13:32:51','2024-02-13 13:32:51'),(27,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2024-02-13 13:32:51','2024-02-13 13:32:51'),(28,'confirm_payment','Payment was confirmed (amount $342.00) by %user_name%',0,7,NULL,'2024-02-24 01:32:51','2024-02-24 01:32:51'),(29,'create_shipment','Created shipment for order',0,7,NULL,'2024-02-24 01:32:51','2024-02-24 01:32:51'),(30,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,NULL,'2024-02-24 01:32:51','2024-02-24 01:32:51'),(31,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2024-02-15 01:32:51','2024-02-15 01:32:51'),(32,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2024-02-15 01:32:51','2024-02-15 01:32:51'),(33,'confirm_payment','Payment was confirmed (amount $129.00) by %user_name%',0,8,NULL,'2024-02-24 01:32:51','2024-02-24 01:32:51'),(34,'create_shipment','Created shipment for order',0,8,NULL,'2024-02-24 01:32:51','2024-02-24 01:32:51'),(35,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2024-02-11 07:32:51','2024-02-11 07:32:51'),(36,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2024-02-11 07:32:51','2024-02-11 07:32:51'),(37,'confirm_payment','Payment was confirmed (amount $264.00) by %user_name%',0,9,NULL,'2024-02-24 01:32:51','2024-02-24 01:32:51'),(38,'create_shipment','Created shipment for order',0,9,NULL,'2024-02-24 01:32:51','2024-02-24 01:32:51'),(39,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,NULL,'2024-02-24 01:32:51','2024-02-24 01:32:51'),(40,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2024-02-19 19:32:51','2024-02-19 19:32:51'),(41,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2024-02-19 19:32:51','2024-02-19 19:32:51'),(42,'confirm_payment','Payment was confirmed (amount $436.00) by %user_name%',0,10,NULL,'2024-02-24 01:32:51','2024-02-24 01:32:51'),(43,'create_shipment','Created shipment for order',0,10,NULL,'2024-02-24 01:32:52','2024-02-24 01:32:52'),(44,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2024-02-12 17:32:52','2024-02-12 17:32:52'),(45,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2024-02-12 17:32:52','2024-02-12 17:32:52'),(46,'confirm_payment','Payment was confirmed (amount $234.00) by %user_name%',0,11,NULL,'2024-02-24 01:32:52','2024-02-24 01:32:52'),(47,'create_shipment','Created shipment for order',0,11,NULL,'2024-02-24 01:32:52','2024-02-24 01:32:52'),(48,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,NULL,'2024-02-24 01:32:52','2024-02-24 01:32:52'),(49,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2024-02-18 17:32:52','2024-02-18 17:32:52'),(50,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2024-02-18 17:32:52','2024-02-18 17:32:52'),(51,'confirm_payment','Payment was confirmed (amount $228.00) by %user_name%',0,12,NULL,'2024-02-24 01:32:52','2024-02-24 01:32:52'),(52,'create_shipment','Created shipment for order',0,12,NULL,'2024-02-24 01:32:52','2024-02-24 01:32:52'),(53,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2024-02-10 17:32:52','2024-02-10 17:32:52'),(54,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2024-02-10 17:32:52','2024-02-10 17:32:52'),(55,'create_shipment','Created shipment for order',0,13,NULL,'2024-02-24 01:32:52','2024-02-24 01:32:52'),(56,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,NULL,'2024-02-24 01:32:52','2024-02-24 01:32:52'),(57,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2024-02-19 01:32:52','2024-02-19 01:32:52'),(58,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2024-02-19 01:32:52','2024-02-19 01:32:52'),(59,'confirm_payment','Payment was confirmed (amount $782.00) by %user_name%',0,14,NULL,'2024-02-24 01:32:52','2024-02-24 01:32:52'),(60,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,14,NULL,'2024-02-24 01:32:53','2024-02-24 01:32:53'),(61,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2024-02-14 01:32:53','2024-02-14 01:32:53'),(62,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2024-02-14 01:32:53','2024-02-14 01:32:53'),(63,'confirm_payment','Payment was confirmed (amount $774.00) by %user_name%',0,15,NULL,'2024-02-24 01:32:53','2024-02-24 01:32:53'),(64,'create_shipment','Created shipment for order',0,15,NULL,'2024-02-24 01:32:53','2024-02-24 01:32:53'),(65,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,NULL,'2024-02-24 01:32:53','2024-02-24 01:32:53'),(66,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2024-02-11 13:32:53','2024-02-11 13:32:53'),(67,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2024-02-11 13:32:53','2024-02-11 13:32:53'),(68,'create_shipment','Created shipment for order',0,16,NULL,'2024-02-24 01:32:53','2024-02-24 01:32:53'),(69,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,NULL,'2024-02-24 01:32:53','2024-02-24 01:32:53'),(70,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2024-02-21 17:32:53','2024-02-21 17:32:53'),(71,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2024-02-21 17:32:53','2024-02-21 17:32:53'),(72,'confirm_payment','Payment was confirmed (amount $264.00) by %user_name%',0,17,NULL,'2024-02-24 01:32:53','2024-02-24 01:32:53'),(73,'create_shipment','Created shipment for order',0,17,NULL,'2024-02-24 01:32:53','2024-02-24 01:32:53'),(74,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2024-02-22 21:32:53','2024-02-22 21:32:53'),(75,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2024-02-22 21:32:53','2024-02-22 21:32:53'),(76,'confirm_payment','Payment was confirmed (amount $228.00) by %user_name%',0,18,NULL,'2024-02-24 01:32:53','2024-02-24 01:32:53'),(77,'create_shipment','Created shipment for order',0,18,NULL,'2024-02-24 01:32:54','2024-02-24 01:32:54'),(78,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2024-02-14 17:32:54','2024-02-14 17:32:54'),(79,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2024-02-14 17:32:54','2024-02-14 17:32:54'),(80,'confirm_payment','Payment was confirmed (amount $127.00) by %user_name%',0,19,NULL,'2024-02-24 01:32:54','2024-02-24 01:32:54'),(81,'create_shipment','Created shipment for order',0,19,NULL,'2024-02-24 01:32:54','2024-02-24 01:32:54'),(82,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,NULL,'2024-02-24 01:32:54','2024-02-24 01:32:54'),(83,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2024-02-14 07:32:54','2024-02-14 07:32:54'),(84,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2024-02-14 07:32:54','2024-02-14 07:32:54'),(85,'create_shipment','Created shipment for order',0,20,NULL,'2024-02-24 01:32:54','2024-02-24 01:32:54'),(86,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2024-02-14 07:32:54','2024-02-14 07:32:54'),(87,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2024-02-14 07:32:54','2024-02-14 07:32:54'),(88,'create_shipment','Created shipment for order',0,21,NULL,'2024-02-24 01:32:54','2024-02-24 01:32:54'),(89,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,21,NULL,'2024-02-24 01:32:54','2024-02-24 01:32:54'),(90,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2024-02-13 05:32:54','2024-02-13 05:32:54'),(91,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2024-02-13 05:32:54','2024-02-13 05:32:54'),(92,'confirm_payment','Payment was confirmed (amount $129.00) by %user_name%',0,22,NULL,'2024-02-24 01:32:54','2024-02-24 01:32:54'),(93,'create_shipment','Created shipment for order',0,22,NULL,'2024-02-24 01:32:55','2024-02-24 01:32:55'),(94,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2024-02-20 01:32:55','2024-02-20 01:32:55'),(95,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2024-02-20 01:32:55','2024-02-20 01:32:55'),(96,'confirm_payment','Payment was confirmed (amount $653.00) by %user_name%',0,23,NULL,'2024-02-24 01:32:55','2024-02-24 01:32:55'),(97,'create_shipment','Created shipment for order',0,23,NULL,'2024-02-24 01:32:55','2024-02-24 01:32:55'),(98,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,NULL,'2024-02-24 01:32:55','2024-02-24 01:32:55'),(99,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2024-02-18 01:32:55','2024-02-18 01:32:55'),(100,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2024-02-18 01:32:55','2024-02-18 01:32:55'),(101,'confirm_payment','Payment was confirmed (amount $378.00) by %user_name%',0,24,NULL,'2024-02-24 01:32:55','2024-02-24 01:32:55'),(102,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,24,NULL,'2024-02-24 01:32:55','2024-02-24 01:32:55'),(103,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2024-02-14 21:32:55','2024-02-14 21:32:55'),(104,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2024-02-14 21:32:55','2024-02-14 21:32:55'),(105,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2024-02-21 07:32:55','2024-02-21 07:32:55'),(106,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2024-02-21 07:32:55','2024-02-21 07:32:55'),(107,'confirm_payment','Payment was confirmed (amount $110.00) by %user_name%',0,26,NULL,'2024-02-24 01:32:55','2024-02-24 01:32:55'),(108,'create_shipment','Created shipment for order',0,26,NULL,'2024-02-24 01:32:55','2024-02-24 01:32:55'),(109,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2024-02-17 15:32:55','2024-02-17 15:32:55'),(110,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2024-02-17 15:32:55','2024-02-17 15:32:55'),(111,'confirm_payment','Payment was confirmed (amount $232.00) by %user_name%',0,27,NULL,'2024-02-24 01:32:55','2024-02-24 01:32:55'),(112,'create_shipment','Created shipment for order',0,27,NULL,'2024-02-24 01:32:56','2024-02-24 01:32:56'),(113,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,NULL,'2024-02-24 01:32:56','2024-02-24 01:32:56'),(114,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2024-02-16 13:32:56','2024-02-16 13:32:56'),(115,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2024-02-16 13:32:56','2024-02-16 13:32:56'),(116,'confirm_payment','Payment was confirmed (amount $387.00) by %user_name%',0,28,NULL,'2024-02-24 01:32:56','2024-02-24 01:32:56'),(117,'create_shipment','Created shipment for order',0,28,NULL,'2024-02-24 01:32:56','2024-02-24 01:32:56'),(118,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,NULL,'2024-02-24 01:32:56','2024-02-24 01:32:56'),(119,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2024-02-17 09:32:56','2024-02-17 09:32:56'),(120,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2024-02-17 09:32:56','2024-02-17 09:32:56'),(121,'create_shipment','Created shipment for order',0,29,NULL,'2024-02-24 01:32:56','2024-02-24 01:32:56'),(122,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2024-02-17 07:32:56','2024-02-17 07:32:56'),(123,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2024-02-17 07:32:56','2024-02-17 07:32:56'),(124,'create_shipment','Created shipment for order',0,30,NULL,'2024-02-24 01:32:56','2024-02-24 01:32:56'),(125,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2024-02-17 09:32:56','2024-02-17 09:32:56'),(126,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2024-02-17 09:32:56','2024-02-17 09:32:56'),(127,'confirm_payment','Payment was confirmed (amount $386.00) by %user_name%',0,31,NULL,'2024-02-24 01:32:56','2024-02-24 01:32:56'),(128,'create_shipment','Created shipment for order',0,31,NULL,'2024-02-24 01:32:57','2024-02-24 01:32:57'),(129,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2024-02-17 09:32:57','2024-02-17 09:32:57'),(130,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2024-02-17 09:32:57','2024-02-17 09:32:57'),(131,'confirm_payment','Payment was confirmed (amount $1,500.00) by %user_name%',0,32,NULL,'2024-02-24 01:32:57','2024-02-24 01:32:57'),(132,'create_shipment','Created shipment for order',0,32,NULL,'2024-02-24 01:32:57','2024-02-24 01:32:57'),(133,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2024-02-22 17:32:57','2024-02-22 17:32:57'),(134,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2024-02-22 17:32:57','2024-02-22 17:32:57'),(135,'confirm_payment','Payment was confirmed (amount $127.00) by %user_name%',0,33,NULL,'2024-02-24 01:32:57','2024-02-24 01:32:57'),(136,'create_shipment','Created shipment for order',0,33,NULL,'2024-02-24 01:32:57','2024-02-24 01:32:57'),(137,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2024-02-22 07:32:57','2024-02-22 07:32:57'),(138,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2024-02-22 07:32:57','2024-02-22 07:32:57'),(139,'create_shipment','Created shipment for order',0,34,NULL,'2024-02-24 01:32:57','2024-02-24 01:32:57'),(140,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2024-02-19 09:32:57','2024-02-19 09:32:57'),(141,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2024-02-19 09:32:57','2024-02-19 09:32:57'),(142,'create_shipment','Created shipment for order',0,35,NULL,'2024-02-24 01:32:58','2024-02-24 01:32:58'),(143,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2024-02-21 13:32:58','2024-02-21 13:32:58'),(144,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2024-02-21 13:32:58','2024-02-21 13:32:58'),(145,'create_shipment','Created shipment for order',0,36,NULL,'2024-02-24 01:32:58','2024-02-24 01:32:58'),(146,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2024-02-22 01:32:58','2024-02-22 01:32:58'),(147,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2024-02-22 01:32:58','2024-02-22 01:32:58'),(148,'confirm_payment','Payment was confirmed (amount $348.00) by %user_name%',0,37,NULL,'2024-02-24 01:32:58','2024-02-24 01:32:58'),(149,'create_shipment','Created shipment for order',0,37,NULL,'2024-02-24 01:32:59','2024-02-24 01:32:59'),(150,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2024-02-23 15:32:59','2024-02-23 15:32:59'),(151,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2024-02-23 15:32:59','2024-02-23 15:32:59'),(152,'create_shipment','Created shipment for order',0,38,NULL,'2024-02-24 01:32:59','2024-02-24 01:32:59'),(153,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,NULL,'2024-02-24 01:32:59','2024-02-24 01:32:59'),(154,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2024-02-20 17:32:59','2024-02-20 17:32:59'),(155,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2024-02-20 17:32:59','2024-02-20 17:32:59'),(156,'confirm_payment','Payment was confirmed (amount $127.00) by %user_name%',0,39,NULL,'2024-02-24 01:32:59','2024-02-24 01:32:59'),(157,'create_shipment','Created shipment for order',0,39,NULL,'2024-02-24 01:33:00','2024-02-24 01:33:00'),(158,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,NULL,'2024-02-24 01:33:00','2024-02-24 01:33:00'),(159,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2024-02-21 17:33:00','2024-02-21 17:33:00'),(160,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2024-02-21 17:33:00','2024-02-21 17:33:00'),(161,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2024-02-22 01:33:00','2024-02-22 01:33:00'),(162,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2024-02-22 01:33:00','2024-02-22 01:33:00'),(163,'confirm_payment','Payment was confirmed (amount $117.00) by %user_name%',0,41,NULL,'2024-02-24 01:33:00','2024-02-24 01:33:00'),(164,'create_shipment','Created shipment for order',0,41,NULL,'2024-02-24 01:33:01','2024-02-24 01:33:01'),(165,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2024-02-23 01:33:01','2024-02-23 01:33:01'),(166,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2024-02-23 01:33:01','2024-02-23 01:33:01'),(167,'confirm_payment','Payment was confirmed (amount $252.00) by %user_name%',0,42,NULL,'2024-02-24 01:33:01','2024-02-24 01:33:01'),(168,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,42,NULL,'2024-02-24 01:33:01','2024-02-24 01:33:01'),(169,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2024-02-22 07:33:01','2024-02-22 07:33:01'),(170,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2024-02-22 07:33:01','2024-02-22 07:33:01'),(171,'confirm_payment','Payment was confirmed (amount $176.00) by %user_name%',0,43,NULL,'2024-02-24 01:33:01','2024-02-24 01:33:01'),(172,'create_shipment','Created shipment for order',0,43,NULL,'2024-02-24 01:33:02','2024-02-24 01:33:02'),(173,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2024-02-23 01:33:02','2024-02-23 01:33:02'),(174,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2024-02-23 01:33:02','2024-02-23 01:33:02'),(175,'confirm_payment','Payment was confirmed (amount $1,000.00) by %user_name%',0,44,NULL,'2024-02-24 01:33:02','2024-02-24 01:33:02'),(176,'create_shipment','Created shipment for order',0,44,NULL,'2024-02-24 01:33:02','2024-02-24 01:33:02'),(177,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2024-02-23 07:33:02','2024-02-23 07:33:02'),(178,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2024-02-23 07:33:02','2024-02-23 07:33:02'),(179,'confirm_payment','Payment was confirmed (amount $250.00) by %user_name%',0,45,NULL,'2024-02-24 01:33:02','2024-02-24 01:33:02'),(180,'create_shipment','Created shipment for order',0,45,NULL,'2024-02-24 01:33:03','2024-02-24 01:33:03'),(181,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,45,NULL,'2024-02-24 01:33:03','2024-02-24 01:33:03'),(182,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2024-02-23 21:33:03','2024-02-23 21:33:03'),(183,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2024-02-23 21:33:03','2024-02-23 21:33:03'),(184,'confirm_payment','Payment was confirmed (amount $224.00) by %user_name%',0,46,NULL,'2024-02-24 01:33:03','2024-02-24 01:33:03'),(185,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,46,NULL,'2024-02-24 01:33:03','2024-02-24 01:33:03'),(186,'create_order_from_seeder','Order is created from the checkout page',NULL,47,NULL,'2024-02-22 21:33:03','2024-02-22 21:33:03'),(187,'confirm_order','Order was verified by %user_name%',0,47,NULL,'2024-02-22 21:33:03','2024-02-22 21:33:03'),(188,'confirm_payment','Payment was confirmed (amount $330.00) by %user_name%',0,47,NULL,'2024-02-24 01:33:03','2024-02-24 01:33:03'),(189,'create_shipment','Created shipment for order',0,47,NULL,'2024-02-24 01:33:04','2024-02-24 01:33:04'),(190,'create_order_from_seeder','Order is created from the checkout page',NULL,48,NULL,'2024-02-23 21:33:04','2024-02-23 21:33:04'),(191,'confirm_order','Order was verified by %user_name%',0,48,NULL,'2024-02-23 21:33:04','2024-02-23 21:33:04'),(192,'confirm_payment','Payment was confirmed (amount $232.00) by %user_name%',0,48,NULL,'2024-02-24 01:33:04','2024-02-24 01:33:04'),(193,'create_shipment','Created shipment for order',0,48,NULL,'2024-02-24 01:33:04','2024-02-24 01:33:04'),(194,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,48,NULL,'2024-02-24 01:33:04','2024-02-24 01:33:04'),(195,'create_order_from_seeder','Order is created from the checkout page',NULL,49,NULL,'2024-02-23 05:33:04','2024-02-23 05:33:04'),(196,'confirm_order','Order was verified by %user_name%',0,49,NULL,'2024-02-23 05:33:04','2024-02-23 05:33:04'),(197,'create_order_from_seeder','Order is created from the checkout page',NULL,50,NULL,'2024-02-23 05:33:04','2024-02-23 05:33:04'),(198,'confirm_order','Order was verified by %user_name%',0,50,NULL,'2024-02-23 05:33:04','2024-02-23 05:33:04'),(199,'confirm_payment','Payment was confirmed (amount $112.00) by %user_name%',0,50,NULL,'2024-02-24 01:33:05','2024-02-24 01:33:05'),(200,'create_shipment','Created shipment for order',0,50,NULL,'2024-02-24 01:33:05','2024-02-24 01:33:05'),(201,'update_status','Order confirmed by %user_name%',0,3,NULL,'2024-02-24 01:33:05','2024-02-24 01:33:05'),(202,'update_status','Order confirmed by %user_name%',0,4,NULL,'2024-02-24 01:33:06','2024-02-24 01:33:06'),(203,'update_status','Order confirmed by %user_name%',0,7,NULL,'2024-02-24 01:33:07','2024-02-24 01:33:07'),(204,'update_status','Order confirmed by %user_name%',0,9,NULL,'2024-02-24 01:33:08','2024-02-24 01:33:08'),(205,'update_status','Order confirmed by %user_name%',0,11,NULL,'2024-02-24 01:33:09','2024-02-24 01:33:09'),(206,'update_status','Order confirmed by %user_name%',0,15,NULL,'2024-02-24 01:33:10','2024-02-24 01:33:10'),(207,'update_status','Order confirmed by %user_name%',0,19,NULL,'2024-02-24 01:33:11','2024-02-24 01:33:11'),(208,'update_status','Order confirmed by %user_name%',0,23,NULL,'2024-02-24 01:33:12','2024-02-24 01:33:12'),(209,'update_status','Order confirmed by %user_name%',0,27,NULL,'2024-02-24 01:33:13','2024-02-24 01:33:13'),(210,'update_status','Order confirmed by %user_name%',0,28,NULL,'2024-02-24 01:33:15','2024-02-24 01:33:15'),(211,'update_status','Order confirmed by %user_name%',0,39,NULL,'2024-02-24 01:33:16','2024-02-24 01:33:16'),(212,'update_status','Order confirmed by %user_name%',0,45,NULL,'2024-02-24 01:33:16','2024-02-24 01:33:16'),(213,'update_status','Order confirmed by %user_name%',0,48,NULL,'2024-02-24 01:33:17','2024-02-24 01:33:17');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,3,451.00,0.00,'{\"sku\":\"HS-153-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 3 Boxes)\"}',NULL,27,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','products/3.jpg',2415.00,0,'2024-02-24 01:32:49','2024-02-24 01:32:49','physical',0,NULL),(2,2,3,125.00,0.00,'{\"sku\":\"HS-115-A0\",\"attributes\":\"(Weight: 5KG, Boxes: 5 Boxes)\"}',NULL,52,'Organic Frozen Triple Berry Blend','products/14.jpg',2319.00,0,'2024-02-24 01:32:49','2024-02-24 01:32:49','physical',0,NULL),(3,3,1,121.00,0.00,'{\"sku\":\"HS-110-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 3 Boxes)\"}',NULL,79,'Colorful Banana','products/23-1.jpg',590.00,0,'2024-02-24 01:32:50','2024-02-24 01:32:50','physical',0,NULL),(4,4,3,117.00,0.00,'{\"sku\":\"HS-138-A0-A1\",\"attributes\":\"(Boxes: 1 Box, Weight: 2KG)\"}',NULL,34,'Canada Dry Ginger Ale – 2 L Bottle','products/7-1.jpg',1551.00,0,'2024-02-24 01:32:50','2024-02-24 01:32:50','physical',0,NULL),(5,4,1,112.00,0.00,'{\"sku\":\"HS-183-A0-A2\",\"attributes\":\"(Weight: 2KG, Boxes: 2 Boxes)\"}',NULL,62,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)','products/17.jpg',815.00,0,'2024-02-24 01:32:50','2024-02-24 01:32:50','digital',2,NULL),(6,5,3,119.00,0.00,'{\"sku\":\"HS-156-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 5 Boxes)\"}',NULL,38,'Gorton’s Beer Battered Fish Fillets (Digital)','products/9-1.jpg',2373.00,0,'2024-02-24 01:32:50','2024-02-24 01:32:50','digital',4,NULL),(7,6,3,110.00,0.00,'{\"sku\":\"HS-122-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 3 Boxes)\"}',NULL,71,'Perdue Simply Smart Organics Gluten Free','products/20.jpg',1977.00,0,'2024-02-24 01:32:50','2024-02-24 01:32:50','physical',0,NULL),(8,7,3,114.00,0.00,'{\"sku\":\"HS-178-A0-A1\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}',NULL,45,'Nestle Original Coffee-Mate Coffee Creamer','products/11-1.jpg',1728.00,0,'2024-02-24 01:32:51','2024-02-24 01:32:51','physical',0,NULL),(9,8,1,129.00,0.00,'{\"sku\":\"HS-171-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 5 Boxes)\"}',NULL,46,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12.jpg',871.00,0,'2024-02-24 01:32:51','2024-02-24 01:32:51','physical',0,NULL),(10,9,3,88.00,0.00,'{\"sku\":\"HS-105-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}',NULL,29,'Foster Farms Takeout Crispy Classic','products/4-1.jpg',1557.00,0,'2024-02-24 01:32:51','2024-02-24 01:32:51','physical',0,NULL),(11,10,2,50.00,0.00,'{\"sku\":\"HS-189-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 5KG)\"}',NULL,30,'Blue Diamond Almonds Lightly (Digital)','products/5.jpg',1750.00,0,'2024-02-24 01:32:51','2024-02-24 01:32:51','digital',9,NULL),(12,10,3,112.00,0.00,'{\"sku\":\"HS-121-A0\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 5KG)\"}',NULL,66,'Simply Lemonade with Raspberry Juice','products/19.jpg',1785.00,0,'2024-02-24 01:32:51','2024-02-24 01:32:51','physical',0,NULL),(13,11,2,117.00,0.00,'{\"sku\":\"HS-138-A0\",\"attributes\":\"(Weight: 3KG, Boxes: 4 Boxes)\"}',NULL,33,'Canada Dry Ginger Ale – 2 L Bottle','products/7.jpg',1034.00,0,'2024-02-24 01:32:52','2024-02-24 01:32:52','physical',0,NULL),(14,12,2,114.00,0.00,'{\"sku\":\"HS-178-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 5 Boxes)\"}',NULL,44,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',1152.00,0,'2024-02-24 01:32:52','2024-02-24 01:32:52','physical',0,NULL),(15,13,3,129.00,0.00,'{\"sku\":\"HS-171-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,47,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12-1.jpg',2613.00,0,'2024-02-24 01:32:52','2024-02-24 01:32:52','physical',0,NULL),(16,13,3,112.00,0.00,'{\"sku\":\"HS-183-A0-A2\",\"attributes\":\"(Weight: 2KG, Boxes: 2 Boxes)\"}',NULL,62,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)','products/17.jpg',2445.00,0,'2024-02-24 01:32:52','2024-02-24 01:32:52','digital',7,NULL),(17,14,2,391.00,0.00,'{\"sku\":\"HS-173-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 5KG)\"}',NULL,25,'Seeds of Change Organic Quinoe (Digital)','products/1.jpg',1376.00,0,'2024-02-24 01:32:52','2024-02-24 01:32:52','digital',4,NULL),(18,15,2,387.00,0.00,'{\"sku\":\"HS-176-A0\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 5KG)\"}',NULL,26,'All Natural Italian-Style Chicken Meatballs','products/2.jpg',1682.00,0,'2024-02-24 01:32:53','2024-02-24 01:32:53','physical',0,NULL),(19,16,1,125.00,0.00,'{\"sku\":\"HS-115-A0-A1\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}',NULL,53,'Organic Frozen Triple Berry Blend','products/14-1.jpg',773.00,0,'2024-02-24 01:32:53','2024-02-24 01:32:53','physical',0,NULL),(20,17,3,88.00,0.00,'{\"sku\":\"HS-105-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}',NULL,29,'Foster Farms Takeout Crispy Classic','products/4-1.jpg',1557.00,0,'2024-02-24 01:32:53','2024-02-24 01:32:53','physical',0,NULL),(21,18,2,114.00,0.00,'{\"sku\":\"HS-179-A0\",\"attributes\":\"(Weight: 3KG, Boxes: 5 Boxes)\"}',NULL,35,'Encore Seafoods Stuffed Alaskan','products/8.jpg',1450.00,0,'2024-02-24 01:32:53','2024-02-24 01:32:53','physical',0,NULL),(22,19,1,127.00,0.00,'{\"sku\":\"HS-177-A0-A3\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}',NULL,58,'Oroweat Country Buttermilk Bread','products/15.jpg',678.00,0,'2024-02-24 01:32:54','2024-02-24 01:32:54','physical',0,NULL),(23,20,2,387.00,0.00,'{\"sku\":\"HS-176-A0\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 5KG)\"}',NULL,26,'All Natural Italian-Style Chicken Meatballs','products/2.jpg',1682.00,0,'2024-02-24 01:32:54','2024-02-24 01:32:54','physical',0,NULL),(24,21,3,50.00,0.00,'{\"sku\":\"HS-189-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 5KG)\"}',NULL,30,'Blue Diamond Almonds Lightly (Digital)','products/5.jpg',2625.00,0,'2024-02-24 01:32:54','2024-02-24 01:32:54','digital',10,NULL),(25,21,2,125.00,0.00,'{\"sku\":\"HS-115-A0-A1\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}',NULL,53,'Organic Frozen Triple Berry Blend','products/14-1.jpg',1546.00,0,'2024-02-24 01:32:54','2024-02-24 01:32:54','physical',0,NULL),(26,22,1,129.00,0.00,'{\"sku\":\"HS-171-A0-A2\",\"attributes\":\"(Weight: 1KG, Boxes: 3 Boxes)\"}',NULL,48,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12.jpg',871.00,0,'2024-02-24 01:32:54','2024-02-24 01:32:54','physical',0,NULL),(27,23,1,50.00,0.00,'{\"sku\":\"HS-189-A0-A1\",\"attributes\":\"(Boxes: 1 Box, Weight: 4KG)\"}',NULL,31,'Blue Diamond Almonds Lightly (Digital)','products/5-1.jpg',875.00,0,'2024-02-24 01:32:55','2024-02-24 01:32:55','digital',5,NULL),(28,23,3,125.00,0.00,'{\"sku\":\"HS-115-A0-A1\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}',NULL,53,'Organic Frozen Triple Berry Blend','products/14-1.jpg',2319.00,0,'2024-02-24 01:32:55','2024-02-24 01:32:55','physical',0,NULL),(29,23,2,114.00,0.00,'{\"sku\":\"HS-156-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}',NULL,80,'Signature Wood-Fired Mushroom and Caramelized','products/24.jpg',1664.00,0,'2024-02-24 01:32:55','2024-02-24 01:32:55','physical',0,NULL),(30,24,3,126.00,0.00,'{\"sku\":\"HS-161-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}',NULL,75,'Chen Watermelon (Digital)','products/21.jpg',2136.00,0,'2024-02-24 01:32:55','2024-02-24 01:32:55','digital',6,NULL),(31,25,1,50.00,0.00,'{\"sku\":\"HS-189-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 5KG)\"}',NULL,30,'Blue Diamond Almonds Lightly (Digital)','products/5.jpg',875.00,0,'2024-02-24 01:32:55','2024-02-24 01:32:55','digital',1,NULL),(32,26,2,55.00,0.00,'{\"sku\":\"HS-171-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}',NULL,32,'Chobani Complete Vanilla Greek','products/6.jpg',1282.00,0,'2024-02-24 01:32:55','2024-02-24 01:32:55','physical',0,NULL),(33,27,2,116.00,0.00,'{\"sku\":\"HS-178-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 5 Boxes)\"}',NULL,77,'Organic Cage-Free Grade A Large Brown Eggs','products/22.jpg',1014.00,0,'2024-02-24 01:32:55','2024-02-24 01:32:55','physical',0,NULL),(34,28,1,387.00,0.00,'{\"sku\":\"HS-176-A0\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 5KG)\"}',NULL,26,'All Natural Italian-Style Chicken Meatballs','products/2.jpg',841.00,0,'2024-02-24 01:32:56','2024-02-24 01:32:56','physical',0,NULL),(35,29,2,119.00,0.00,'{\"sku\":\"HS-156-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 2KG)\"}',NULL,37,'Gorton’s Beer Battered Fish Fillets (Digital)','products/9.jpg',1582.00,0,'2024-02-24 01:32:56','2024-02-24 01:32:56','digital',5,NULL),(36,29,1,112.00,0.00,'{\"sku\":\"HS-121-A0-A4\",\"attributes\":\"(Boxes: 1 Box, Weight: 3KG)\"}',NULL,70,'Simply Lemonade with Raspberry Juice','products/19.jpg',595.00,0,'2024-02-24 01:32:56','2024-02-24 01:32:56','physical',0,NULL),(37,30,3,500.00,0.00,'{\"sku\":\"HS-116-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,39,'Haagen-Dazs Caramel Cone Ice Cream','products/10.jpg',2637.00,0,'2024-02-24 01:32:56','2024-02-24 01:32:56','physical',0,NULL),(38,30,2,500.00,0.00,'{\"sku\":\"HS-116-A0-A1\",\"attributes\":\"(Weight: 4KG, Boxes: 4 Boxes)\"}',NULL,40,'Haagen-Dazs Caramel Cone Ice Cream','products/10-1.jpg',1758.00,0,'2024-02-24 01:32:56','2024-02-24 01:32:56','physical',0,NULL),(39,30,1,116.00,0.00,'{\"sku\":\"HS-196-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 3 Boxes)\"}',NULL,59,'Foster Farms Takeout Crispy Classic Buffalo Wings','products/16.jpg',718.00,0,'2024-02-24 01:32:56','2024-02-24 01:32:56','physical',0,NULL),(40,31,1,50.00,0.00,'{\"sku\":\"HS-189-A0-A1\",\"attributes\":\"(Boxes: 1 Box, Weight: 4KG)\"}',NULL,31,'Blue Diamond Almonds Lightly (Digital)','products/5-1.jpg',875.00,0,'2024-02-24 01:32:56','2024-02-24 01:32:56','digital',4,NULL),(41,31,3,112.00,0.00,'{\"sku\":\"HS-121-A0-A2\",\"attributes\":\"(Weight: 2KG, Boxes: 5 Boxes)\"}',NULL,68,'Simply Lemonade with Raspberry Juice','products/19.jpg',1785.00,0,'2024-02-24 01:32:56','2024-02-24 01:32:56','physical',0,NULL),(42,32,3,500.00,0.00,'{\"sku\":\"HS-116-A0-A1\",\"attributes\":\"(Weight: 4KG, Boxes: 4 Boxes)\"}',NULL,40,'Haagen-Dazs Caramel Cone Ice Cream','products/10-1.jpg',2637.00,0,'2024-02-24 01:32:57','2024-02-24 01:32:57','physical',0,NULL),(43,33,1,127.00,0.00,'{\"sku\":\"HS-177-A0-A1\",\"attributes\":\"(Weight: 5KG, Boxes: 5 Boxes)\"}',NULL,56,'Oroweat Country Buttermilk Bread','products/15-1.jpg',678.00,0,'2024-02-24 01:32:57','2024-02-24 01:32:57','physical',0,NULL),(44,34,3,55.00,0.00,'{\"sku\":\"HS-171-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}',NULL,32,'Chobani Complete Vanilla Greek','products/6.jpg',1923.00,0,'2024-02-24 01:32:57','2024-02-24 01:32:57','physical',0,NULL),(45,34,3,127.00,0.00,'{\"sku\":\"HS-177-A0-A3\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}',NULL,58,'Oroweat Country Buttermilk Bread','products/15.jpg',2034.00,0,'2024-02-24 01:32:57','2024-02-24 01:32:57','physical',0,NULL),(46,35,2,117.00,0.00,'{\"sku\":\"HS-138-A0-A1\",\"attributes\":\"(Boxes: 1 Box, Weight: 2KG)\"}',NULL,34,'Canada Dry Ginger Ale – 2 L Bottle','products/7-1.jpg',1034.00,0,'2024-02-24 01:32:57','2024-02-24 01:32:57','physical',0,NULL),(47,35,1,112.00,0.00,'{\"sku\":\"HS-183-A0-A1\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 5KG)\"}',NULL,61,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)','products/17-1.jpg',815.00,0,'2024-02-24 01:32:57','2024-02-24 01:32:57','digital',3,NULL),(48,36,3,129.00,0.00,'{\"sku\":\"HS-171-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,47,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12-1.jpg',2613.00,0,'2024-02-24 01:32:58','2024-02-24 01:32:58','physical',0,NULL),(49,37,3,116.00,0.00,'{\"sku\":\"HS-196-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 3 Boxes)\"}',NULL,59,'Foster Farms Takeout Crispy Classic Buffalo Wings','products/16.jpg',2154.00,0,'2024-02-24 01:32:58','2024-02-24 01:32:58','physical',0,NULL),(50,38,1,117.00,0.00,'{\"sku\":\"HS-138-A0-A1\",\"attributes\":\"(Boxes: 1 Box, Weight: 2KG)\"}',NULL,34,'Canada Dry Ginger Ale – 2 L Bottle','products/7-1.jpg',517.00,0,'2024-02-24 01:32:59','2024-02-24 01:32:59','physical',0,NULL),(51,39,1,127.00,0.00,'{\"sku\":\"HS-177-A0-A3\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}',NULL,58,'Oroweat Country Buttermilk Bread','products/15.jpg',678.00,0,'2024-02-24 01:32:59','2024-02-24 01:32:59','physical',0,NULL),(52,40,1,50.00,0.00,'{\"sku\":\"HS-189-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 5KG)\"}',NULL,30,'Blue Diamond Almonds Lightly (Digital)','products/5.jpg',875.00,0,'2024-02-24 01:33:00','2024-02-24 01:33:00','digital',10,NULL),(53,41,1,117.00,0.00,'{\"sku\":\"HS-138-A0-A1\",\"attributes\":\"(Boxes: 1 Box, Weight: 2KG)\"}',NULL,34,'Canada Dry Ginger Ale – 2 L Bottle','products/7-1.jpg',517.00,0,'2024-02-24 01:33:00','2024-02-24 01:33:00','physical',0,NULL),(54,42,2,126.00,0.00,'{\"sku\":\"HS-161-A0-A1\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}',NULL,76,'Chen Watermelon (Digital)','products/21-1.jpg',1424.00,0,'2024-02-24 01:33:01','2024-02-24 01:33:01','digital',5,NULL),(55,43,2,88.00,0.00,'{\"sku\":\"HS-105-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}',NULL,29,'Foster Farms Takeout Crispy Classic','products/4-1.jpg',1038.00,0,'2024-02-24 01:33:01','2024-02-24 01:33:01','physical',0,NULL),(56,44,2,500.00,0.00,'{\"sku\":\"HS-116-A0-A1\",\"attributes\":\"(Weight: 4KG, Boxes: 4 Boxes)\"}',NULL,40,'Haagen-Dazs Caramel Cone Ice Cream','products/10-1.jpg',1758.00,0,'2024-02-24 01:33:02','2024-02-24 01:33:02','physical',0,NULL),(57,45,2,125.00,0.00,'{\"sku\":\"HS-115-A0\",\"attributes\":\"(Weight: 5KG, Boxes: 5 Boxes)\"}',NULL,52,'Organic Frozen Triple Berry Blend','products/14.jpg',1546.00,0,'2024-02-24 01:33:02','2024-02-24 01:33:02','physical',0,NULL),(58,46,2,112.00,0.00,'{\"sku\":\"HS-183-A0-A2\",\"attributes\":\"(Weight: 2KG, Boxes: 2 Boxes)\"}',NULL,62,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)','products/17.jpg',1630.00,0,'2024-02-24 01:33:03','2024-02-24 01:33:03','digital',8,NULL),(59,47,3,110.00,0.00,'{\"sku\":\"HS-122-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 3 Boxes)\"}',NULL,71,'Perdue Simply Smart Organics Gluten Free','products/20.jpg',1977.00,0,'2024-02-24 01:33:03','2024-02-24 01:33:03','physical',0,NULL),(60,48,2,116.00,0.00,'{\"sku\":\"HS-178-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 5 Boxes)\"}',NULL,77,'Organic Cage-Free Grade A Large Brown Eggs','products/22.jpg',1014.00,0,'2024-02-24 01:33:04','2024-02-24 01:33:04','physical',0,NULL),(61,49,2,391.00,0.00,'{\"sku\":\"HS-173-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 5KG)\"}',NULL,25,'Seeds of Change Organic Quinoe (Digital)','products/1.jpg',1376.00,0,'2024-02-24 01:33:04','2024-02-24 01:33:04','digital',9,NULL),(62,50,1,112.00,0.00,'{\"sku\":\"HS-121-A0\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 5KG)\"}',NULL,66,'Simply Lemonade with Raspberry Juice','products/19.jpg',595.00,0,'2024-02-24 01:33:05','2024-02-24 01:33:05','physical',0,NULL);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',9,'1','default','pending',1353.00,0.00,0.00,NULL,NULL,0.00,1353.00,1,NULL,1,NULL,'V1Kry8CCdTPJDCB7l2Qz1My2dIY4J',1,'2024-02-20 17:32:49','2024-02-24 01:32:49',NULL,2),(2,'#10000002',9,'1','default','pending',375.00,0.00,0.00,NULL,NULL,0.00,375.00,1,NULL,1,NULL,'fGaCMAUg9NjCkVghvJw8exFTWkqIc',2,'2024-02-09 01:32:49','2024-02-24 01:32:49',NULL,4),(3,'#10000003',9,'1','default','completed',121.00,0.00,0.00,NULL,NULL,0.00,121.00,1,NULL,1,'2024-02-24 01:33:05','I88QvO07D9UQ9geihYCapoclNCErM',3,'2024-02-10 17:32:50','2024-02-24 01:33:05',NULL,5),(4,'#10000004',8,'1','default','completed',463.00,0.00,0.00,NULL,NULL,0.00,463.00,1,NULL,1,'2024-02-24 01:33:06','lTtAemzAF23ePXfitXDf0vnQi9LL6',4,'2024-02-16 03:32:50','2024-02-24 01:33:06',NULL,5),(5,'#10000005',8,NULL,'','completed',357.00,0.00,0.00,NULL,NULL,0.00,357.00,1,NULL,1,'2024-02-24 01:32:50','tfCHw4hHV5zrYFBfVBH9nxmSVy4fz',5,'2024-02-09 19:32:50','2024-02-24 01:32:50',NULL,4),(6,'#10000006',8,'1','default','pending',330.00,0.00,0.00,NULL,NULL,0.00,330.00,1,NULL,1,NULL,'YuZVNw0evXR8nzsBS8qSwMZGYdjmn',6,'2024-02-22 11:32:50','2024-02-24 01:32:50',NULL,1),(7,'#10000007',6,'1','default','completed',342.00,0.00,0.00,NULL,NULL,0.00,342.00,1,NULL,1,'2024-02-24 01:33:07','DDSKgJoYzDTbccMTOVRUCj6f0VCIC',7,'2024-02-13 13:32:51','2024-02-24 01:33:07',NULL,4),(8,'#10000008',6,'1','default','pending',129.00,0.00,0.00,NULL,NULL,0.00,129.00,1,NULL,1,NULL,'8kGvH1uw6DFAM2GbumAhR0EF96k5k',8,'2024-02-15 01:32:51','2024-02-24 01:32:51',NULL,5),(9,'#10000009',9,'1','default','completed',264.00,0.00,0.00,NULL,NULL,0.00,264.00,1,NULL,1,'2024-02-24 01:33:08','zMUjoMPKno7C3cEnfMGiXMF5llSth',9,'2024-02-11 07:32:51','2024-02-24 01:33:08',NULL,3),(10,'#10000010',9,'1','default','pending',436.00,0.00,0.00,NULL,NULL,0.00,436.00,1,NULL,1,NULL,'3mLLwiJLLG3O6PDg1UW1Ar5bwUnV5',10,'2024-02-19 19:32:51','2024-02-24 01:32:51',NULL,4),(11,'#10000011',9,'1','default','completed',234.00,0.00,0.00,NULL,NULL,0.00,234.00,1,NULL,1,'2024-02-24 01:33:09','1jPscIA09JUVe3s5H8DECiYLCYbmz',11,'2024-02-12 17:32:52','2024-02-24 01:33:09',NULL,5),(12,'#10000012',1,'1','default','pending',228.00,0.00,0.00,NULL,NULL,0.00,228.00,1,NULL,1,NULL,'zQ5xNf9zPZjKHLBFVVQ7snEoINxOx',12,'2024-02-18 17:32:52','2024-02-24 01:32:52',NULL,4),(13,'#10000013',1,'1','default','completed',723.00,0.00,0.00,NULL,NULL,0.00,723.00,1,NULL,1,'2024-02-24 01:32:52','YhtGEuR4z2HAMUgtBikcQA9ByFrh1',13,'2024-02-10 17:32:52','2024-02-24 01:32:52',NULL,5),(14,'#10000014',1,NULL,'','completed',782.00,0.00,0.00,NULL,NULL,0.00,782.00,1,NULL,1,'2024-02-24 01:32:53','McNyEJLGA4QF5uSEyleXGJmOrkBud',14,'2024-02-19 01:32:52','2024-02-24 01:32:53',NULL,2),(15,'#10000015',1,'1','default','completed',774.00,0.00,0.00,NULL,NULL,0.00,774.00,1,NULL,1,'2024-02-24 01:33:10','1SSVCxCY2JWTivrtBnz1KJtH3pA5Z',15,'2024-02-14 01:32:53','2024-02-24 01:33:10',NULL,3),(16,'#10000016',1,'1','default','completed',125.00,0.00,0.00,NULL,NULL,0.00,125.00,1,NULL,1,'2024-02-24 01:32:53','7IKybgWKLJyO0RogdtRAn8p6QQiSp',16,'2024-02-11 13:32:53','2024-02-24 01:32:53',NULL,4),(17,'#10000017',4,'1','default','pending',264.00,0.00,0.00,NULL,NULL,0.00,264.00,1,NULL,1,NULL,'rlcFlgukel349rjI9jpJtodoPi9ox',17,'2024-02-21 17:32:53','2024-02-24 01:32:53',NULL,3),(18,'#10000018',4,'1','default','pending',228.00,0.00,0.00,NULL,NULL,0.00,228.00,1,NULL,1,NULL,'75gMWcD6VQzyvOHrePeJxgB3nUiek',18,'2024-02-22 21:32:53','2024-02-24 01:32:53',NULL,4),(19,'#10000019',4,'1','default','completed',127.00,0.00,0.00,NULL,NULL,0.00,127.00,1,NULL,1,'2024-02-24 01:33:11','0efwHltfxPRvQDYEC9SLonuzULxct',19,'2024-02-14 17:32:54','2024-02-24 01:33:11',NULL,2),(20,'#10000020',6,'1','default','pending',774.00,0.00,0.00,NULL,NULL,0.00,774.00,1,NULL,1,NULL,'KichftrhPjELXjr16OEZfOMvYmOqK',20,'2024-02-14 07:32:54','2024-02-24 01:32:54',NULL,3),(21,'#10000021',6,'1','default','completed',400.00,0.00,0.00,NULL,NULL,0.00,400.00,1,NULL,1,'2024-02-24 01:32:54','l8V71pS3ga3VI36jQXEKFrJ9OaBoz',21,'2024-02-14 07:32:54','2024-02-24 01:32:54',NULL,4),(22,'#10000022',6,'1','default','pending',129.00,0.00,0.00,NULL,NULL,0.00,129.00,1,NULL,1,NULL,'VJCZA9NznxjoMaxE3wAV2ccOc9z7o',22,'2024-02-13 05:32:54','2024-02-24 01:32:54',NULL,5),(23,'#10000023',6,'1','default','completed',653.00,0.00,0.00,NULL,NULL,0.00,653.00,1,NULL,1,'2024-02-24 01:33:12','OOXvkqjRbTjbwmLOG2hbnQCXHDQAw',23,'2024-02-20 01:32:55','2024-02-24 01:33:12',NULL,4),(24,'#10000024',6,NULL,'','completed',378.00,0.00,0.00,NULL,NULL,0.00,378.00,1,NULL,1,'2024-02-24 01:32:55','NnqO7V31DyhoHhKaffpuGouXRftdM',24,'2024-02-18 01:32:55','2024-02-24 01:32:55',NULL,1),(25,'#10000025',9,NULL,'','pending',50.00,0.00,0.00,NULL,NULL,0.00,50.00,1,NULL,1,NULL,'6b0BM7ecCI6ydlDbgLnpCS2IjRIcw',25,'2024-02-14 21:32:55','2024-02-24 01:32:55',NULL,4),(26,'#10000026',9,'1','default','pending',110.00,0.00,0.00,NULL,NULL,0.00,110.00,1,NULL,1,NULL,'JXgTnLPdIYmfdomw0umJ0GwWwJ2MZ',26,'2024-02-21 07:32:55','2024-02-24 01:32:55',NULL,2),(27,'#10000027',9,'1','default','completed',232.00,0.00,0.00,NULL,NULL,0.00,232.00,1,NULL,1,'2024-02-24 01:33:13','IVr5zU4uiqA5UPMLu8q9yT2mlICx3',27,'2024-02-17 15:32:55','2024-02-24 01:33:13',NULL,3),(28,'#10000028',9,'1','default','completed',387.00,0.00,0.00,NULL,NULL,0.00,387.00,1,NULL,1,'2024-02-24 01:33:15','t0QvxRd61lBILQdPo0qlKtxp59CXc',28,'2024-02-16 13:32:56','2024-02-24 01:33:15',NULL,3),(29,'#10000029',9,'1','default','pending',350.00,0.00,0.00,NULL,NULL,0.00,350.00,1,NULL,1,NULL,'3YkHpeD4BoRKGyKTM0iJ6rSVCn7lb',29,'2024-02-17 09:32:56','2024-02-24 01:32:56',NULL,4),(30,'#10000030',9,'1','default','pending',2616.00,0.00,0.00,NULL,NULL,0.00,2616.00,1,NULL,1,NULL,'jJtdqO0jEosQrHgylovLlKlTe1wuL',30,'2024-02-17 07:32:56','2024-02-24 01:32:56',NULL,1),(31,'#10000031',6,'1','default','pending',386.00,0.00,0.00,NULL,NULL,0.00,386.00,1,NULL,1,NULL,'uMjmSY3oCY9FmYCrlVtIjlU1V7ofC',31,'2024-02-17 09:32:56','2024-02-24 01:32:56',NULL,4),(32,'#10000032',6,'1','default','pending',1500.00,0.00,0.00,NULL,NULL,0.00,1500.00,1,NULL,1,NULL,'XYbuyXWSg3U3iJyZSoG3yEhTvdC3t',32,'2024-02-17 09:32:57','2024-02-24 01:32:57',NULL,1),(33,'#10000033',6,'1','default','pending',127.00,0.00,0.00,NULL,NULL,0.00,127.00,1,NULL,1,NULL,'xCGmKyhkWmHGyrzoD3Cri4BUWQ8Zr',33,'2024-02-22 17:32:57','2024-02-24 01:32:57',NULL,2),(34,'#10000034',4,'1','default','pending',546.00,0.00,0.00,NULL,NULL,0.00,546.00,1,NULL,1,NULL,'gNhHBu5Tr5KP1DY9eyaYjMslCoRWc',34,'2024-02-22 07:32:57','2024-02-24 01:32:57',NULL,2),(35,'#10000035',4,'1','default','pending',346.00,0.00,0.00,NULL,NULL,0.00,346.00,1,NULL,1,NULL,'Lmi2i7BM9JeGw5cuhl8y9lQODfkYm',35,'2024-02-19 09:32:57','2024-02-24 01:32:57',NULL,5),(36,'#10000036',9,'1','default','pending',387.00,0.00,0.00,NULL,NULL,0.00,387.00,1,NULL,1,NULL,'oAJU77vcgrYLGtqclsYpeLv4RzN2V',36,'2024-02-21 13:32:58','2024-02-24 01:32:58',NULL,5),(37,'#10000037',9,'1','default','pending',348.00,0.00,0.00,NULL,NULL,0.00,348.00,1,NULL,1,NULL,'96fJbSUUNrBGHRKhRgGwykPGOtcX0',37,'2024-02-22 01:32:58','2024-02-24 01:32:58',NULL,1),(38,'#10000038',8,'1','default','completed',117.00,0.00,0.00,NULL,NULL,0.00,117.00,1,NULL,1,'2024-02-24 01:32:59','Ul4r9CKChCEhFSIp4CPsmrddFYab1',38,'2024-02-23 15:32:59','2024-02-24 01:32:59',NULL,5),(39,'#10000039',8,'1','default','completed',127.00,0.00,0.00,NULL,NULL,0.00,127.00,1,NULL,1,'2024-02-24 01:33:16','KdeVbXmuHgJZvX3CADCmW6bzRNvl9',39,'2024-02-20 17:32:59','2024-02-24 01:33:16',NULL,2),(40,'#10000040',4,NULL,'','pending',50.00,0.00,0.00,NULL,NULL,0.00,50.00,1,NULL,1,NULL,'xygQL5NtKychzkaZiTI8dzyLmHOSR',40,'2024-02-21 17:33:00','2024-02-24 01:33:00',NULL,4),(41,'#10000041',4,'1','default','pending',117.00,0.00,0.00,NULL,NULL,0.00,117.00,1,NULL,1,NULL,'0wjGSYyACijVXjBSNx3puGO0muXYu',41,'2024-02-22 01:33:00','2024-02-24 01:33:00',NULL,5),(42,'#10000042',4,NULL,'','completed',252.00,0.00,0.00,NULL,NULL,0.00,252.00,1,NULL,1,'2024-02-24 01:33:01','206fWnpNDucLg2ZyQwpdX3ohhTwTJ',42,'2024-02-23 01:33:01','2024-02-24 01:33:01',NULL,1),(43,'#10000043',9,'1','default','pending',176.00,0.00,0.00,NULL,NULL,0.00,176.00,1,NULL,1,NULL,'LW4kXlFHhrK7th3uUQlmd8bGxjOJZ',43,'2024-02-22 07:33:01','2024-02-24 01:33:01',NULL,3),(44,'#10000044',9,'1','default','pending',1000.00,0.00,0.00,NULL,NULL,0.00,1000.00,1,NULL,1,NULL,'a3IV0wHPRWZ9mwukns6iSH6FOWsbi',44,'2024-02-23 01:33:02','2024-02-24 01:33:02',NULL,1),(45,'#10000045',9,'1','default','completed',250.00,0.00,0.00,NULL,NULL,0.00,250.00,1,NULL,1,'2024-02-24 01:33:16','JVLO40if8qzRT4QBK5j4J1ik3WyEx',45,'2024-02-23 07:33:02','2024-02-24 01:33:16',NULL,4),(46,'#10000046',9,NULL,'','completed',224.00,0.00,0.00,NULL,NULL,0.00,224.00,1,NULL,1,'2024-02-24 01:33:03','v0bLq7WOBScN8PL3KwnouZzVGN1yN',46,'2024-02-23 21:33:03','2024-02-24 01:33:03',NULL,5),(47,'#10000047',9,'1','default','pending',330.00,0.00,0.00,NULL,NULL,0.00,330.00,1,NULL,1,NULL,'NyUSC1wOcjFnnAXovOByo8OikuW2n',47,'2024-02-22 21:33:03','2024-02-24 01:33:03',NULL,1),(48,'#10000048',9,'1','default','completed',232.00,0.00,0.00,NULL,NULL,0.00,232.00,1,NULL,1,'2024-02-24 01:33:17','YAOVk1SV5u4txugyxoYaBx0ru4MBq',48,'2024-02-23 21:33:04','2024-02-24 01:33:17',NULL,3),(49,'#10000049',6,NULL,'','pending',782.00,0.00,0.00,NULL,NULL,0.00,782.00,1,NULL,1,NULL,'U4DehGqo1Jwueh97ztcBXo8vFXzN6',49,'2024-02-23 05:33:04','2024-02-24 01:33:04',NULL,2),(50,'#10000050',6,'1','default','pending',112.00,0.00,0.00,NULL,NULL,0.00,112.00,1,NULL,1,NULL,'HYm6QSJnMBEhR3vkVIYO6lfE4C3Pv',50,'2024-02-23 05:33:04','2024-02-24 01:33:05',NULL,4);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Weight','weight','text',1,1,1,'published',0,'2024-02-24 01:32:26','2024-02-24 01:32:26',0),(2,'Boxes','boxes','text',1,1,1,'published',1,'2024-02-24 01:32:26','2024-02-24 01:32:26',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'1KG','1kg',NULL,NULL,1,1,'2024-02-24 01:32:26','2024-02-24 01:32:26'),(2,1,'2KG','2kg',NULL,NULL,0,2,'2024-02-24 01:32:26','2024-02-24 01:32:26'),(3,1,'3KG','3kg',NULL,NULL,0,3,'2024-02-24 01:32:26','2024-02-24 01:32:26'),(4,1,'4KG','4kg',NULL,NULL,0,4,'2024-02-24 01:32:26','2024-02-24 01:32:26'),(5,1,'5KG','5kg',NULL,NULL,0,5,'2024-02-24 01:32:26','2024-02-24 01:32:26'),(6,2,'1 Box','1-box',NULL,NULL,1,1,'2024-02-24 01:32:26','2024-02-24 01:32:26'),(7,2,'2 Boxes','2-boxes',NULL,NULL,0,2,'2024-02-24 01:32:26','2024-02-24 01:32:26'),(8,2,'3 Boxes','3-boxes',NULL,NULL,0,3,'2024-02-24 01:32:26','2024-02-24 01:32:26'),(9,2,'4 Boxes','4-boxes',NULL,NULL,0,4,'2024-02-24 01:32:26','2024-02-24 01:32:26'),(10,2,'5 Boxes','5-boxes',NULL,NULL,0,5,'2024-02-24 01:32:26','2024-02-24 01:32:26');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Milks and Dairies',0,NULL,'published',0,'product-categories/image-1.png',1,'2024-02-24 01:32:26','2024-02-24 01:32:26',NULL,'product-categories/icon-1.png'),(2,'Clothing & beauty',0,NULL,'published',1,'product-categories/image-2.png',1,'2024-02-24 01:32:26','2024-02-24 01:32:26',NULL,'product-categories/icon-2.png'),(3,'Pet Toy',0,NULL,'published',2,'product-categories/image-3.png',1,'2024-02-24 01:32:26','2024-02-24 01:32:26',NULL,'product-categories/icon-3.png'),(4,'Baking material',0,NULL,'published',3,'product-categories/image-4.png',1,'2024-02-24 01:32:26','2024-02-24 01:32:26',NULL,'product-categories/icon-4.png'),(5,'Fresh Fruit',0,NULL,'published',4,'product-categories/image-5.png',1,'2024-02-24 01:32:26','2024-02-24 01:32:26',NULL,'product-categories/icon-5.png'),(6,'Wines & Drinks',0,NULL,'published',5,'product-categories/image-6.png',1,'2024-02-24 01:32:26','2024-02-24 01:32:26',NULL,'product-categories/icon-6.png'),(7,'Fresh Seafood',0,NULL,'published',6,'product-categories/image-7.png',1,'2024-02-24 01:32:26','2024-02-24 01:32:26',NULL,'product-categories/icon-7.png'),(8,'Fast food',0,NULL,'published',7,'product-categories/image-8.png',1,'2024-02-24 01:32:26','2024-02-24 01:32:26',NULL,'product-categories/icon-8.png'),(9,'Vegetables',0,NULL,'published',8,'product-categories/image-9.png',1,'2024-02-24 01:32:26','2024-02-24 01:32:26',NULL,'product-categories/icon-9.png'),(10,'Bread and Juice',0,NULL,'published',9,'product-categories/image-10.png',1,'2024-02-24 01:32:26','2024-02-24 01:32:26',NULL,'product-categories/icon-10.png'),(11,'Cake & Milk',0,NULL,'published',10,'product-categories/image-11.png',1,'2024-02-24 01:32:26','2024-02-24 01:32:26',NULL,'product-categories/icon-11.png'),(12,'Coffee & Teas',0,NULL,'published',11,'product-categories/image-12.png',1,'2024-02-24 01:32:26','2024-02-24 01:32:26',NULL,'product-categories/icon-12.png'),(13,'Pet Foods',0,NULL,'published',12,'product-categories/image-13.png',0,'2024-02-24 01:32:26','2024-02-24 01:32:26',NULL,'product-categories/icon-13.png'),(14,'Diet Foods',0,NULL,'published',13,'product-categories/image-14.png',0,'2024-02-24 01:32:26','2024-02-24 01:32:26',NULL,'product-categories/icon-14.png');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,9),(2,19),(4,1),(4,10),(4,14),(5,6),(5,7),(5,21),(6,2),(6,23),(7,5),(8,22),(9,15),(10,16),(10,20),(11,11),(12,12),(13,3),(13,4),(13,8),(13,13),(13,24),(14,17),(14,18);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,15),(1,19),(1,20),(1,21),(2,1),(2,2),(2,3),(2,4),(2,5),(2,7),(2,8),(2,10),(2,13),(2,14),(2,16),(2,18),(2,22),(2,23),(2,24),(3,6),(3,9),(3,11),(3,12),(3,17);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2024-02-24 01:32:26','2024-02-24 01:32:26',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2024-02-24 01:32:26','2024-02-24 01:32:26',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2024-02-24 01:32:26','2024-02-24 01:32:26',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,5,0,0.00,'fixed',1),(1,16,0,0.00,'fixed',1),(1,17,0,0.00,'fixed',1),(1,23,0,0.00,'fixed',1),(2,1,0,0.00,'fixed',1),(2,5,0,0.00,'fixed',1),(2,9,0,0.00,'fixed',1),(2,12,0,0.00,'fixed',1),(3,6,0,0.00,'fixed',1),(3,14,0,0.00,'fixed',1),(3,20,0,0.00,'fixed',1),(3,24,0,0.00,'fixed',1),(4,13,0,0.00,'fixed',1),(4,17,0,0.00,'fixed',1),(4,19,0,0.00,'fixed',1),(4,20,0,0.00,'fixed',1),(5,7,0,0.00,'fixed',1),(5,10,0,0.00,'fixed',1),(5,19,0,0.00,'fixed',1),(5,22,0,0.00,'fixed',1),(6,9,0,0.00,'fixed',1),(6,11,0,0.00,'fixed',1),(6,14,0,0.00,'fixed',1),(6,17,0,0.00,'fixed',1),(7,11,0,0.00,'fixed',1),(7,12,0,0.00,'fixed',1),(7,20,0,0.00,'fixed',1),(7,21,0,0.00,'fixed',1),(8,2,0,0.00,'fixed',1),(8,4,0,0.00,'fixed',1),(8,18,0,0.00,'fixed',1),(8,23,0,0.00,'fixed',1),(9,8,0,0.00,'fixed',1),(9,16,0,0.00,'fixed',1),(9,17,0,0.00,'fixed',1),(9,22,0,0.00,'fixed',1),(10,1,0,0.00,'fixed',1),(10,15,0,0.00,'fixed',1),(10,21,0,0.00,'fixed',1),(10,24,0,0.00,'fixed',1),(11,10,0,0.00,'fixed',1),(11,14,0,0.00,'fixed',1),(11,19,0,0.00,'fixed',1),(11,22,0,0.00,'fixed',1),(12,19,0,0.00,'fixed',1),(12,20,0,0.00,'fixed',1),(12,23,0,0.00,'fixed',1),(12,24,0,0.00,'fixed',1),(13,5,0,0.00,'fixed',1),(13,22,0,0.00,'fixed',1),(13,23,0,0.00,'fixed',1),(14,8,0,0.00,'fixed',1),(14,10,0,0.00,'fixed',1),(14,13,0,0.00,'fixed',1),(14,18,0,0.00,'fixed',1),(15,3,0,0.00,'fixed',1),(15,10,0,0.00,'fixed',1),(15,16,0,0.00,'fixed',1),(15,22,0,0.00,'fixed',1),(16,2,0,0.00,'fixed',1),(16,9,0,0.00,'fixed',1),(16,10,0,0.00,'fixed',1),(16,19,0,0.00,'fixed',1),(17,12,0,0.00,'fixed',1),(17,14,0,0.00,'fixed',1),(17,15,0,0.00,'fixed',1),(17,22,0,0.00,'fixed',1),(18,5,0,0.00,'fixed',1),(18,7,0,0.00,'fixed',1),(18,15,0,0.00,'fixed',1),(19,3,0,0.00,'fixed',1),(19,10,0,0.00,'fixed',1),(19,20,0,0.00,'fixed',1),(19,24,0,0.00,'fixed',1),(20,16,0,0.00,'fixed',1),(20,17,0,0.00,'fixed',1),(20,18,0,0.00,'fixed',1),(20,23,0,0.00,'fixed',1),(21,10,0,0.00,'fixed',1),(21,11,0,0.00,'fixed',1),(21,13,0,0.00,'fixed',1),(21,17,0,0.00,'fixed',1),(22,5,0,0.00,'fixed',1),(22,12,0,0.00,'fixed',1),(22,19,0,0.00,'fixed',1),(22,23,0,0.00,'fixed',1),(23,4,0,0.00,'fixed',1),(23,10,0,0.00,'fixed',1),(23,21,0,0.00,'fixed',1),(24,10,0,0.00,'fixed',1),(24,15,0,0.00,'fixed',1),(24,19,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,25,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:31\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-02-24 01:32:31','2024-02-24 01:32:31'),(2,25,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:31\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2024-02-24 01:32:31','2024-02-24 01:32:31'),(3,30,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(4,30,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(5,31,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(6,31,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(7,37,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(8,37,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(9,38,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(10,38,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(11,49,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(12,49,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(13,50,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(14,50,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(15,51,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(16,51,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(17,60,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(18,60,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(19,61,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(20,61,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(21,62,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(22,62,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(23,63,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(24,63,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:32\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2024-02-24 01:32:32','2024-02-24 01:32:32'),(25,75,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:33\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-02-24 01:32:33','2024-02-24 01:32:33'),(26,75,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:33\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-02-24 01:32:33','2024-02-24 01:32:33'),(27,76,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:33\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-02-24 01:32:33','2024-02-24 01:32:33'),(28,76,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-24 08:32:33\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-02-24 01:32:33','2024-02-24 01:32:33');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (2,14),(3,7),(3,21);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2024-02-24 01:32:26','2024-02-24 01:32:26'),(2,'New','#02856e','published','2024-02-24 01:32:26','2024-02-24 01:32:26'),(3,'Sale','#fe9931','published','2024-02-24 01:32:26','2024-02-24 01:32:26');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,2),(1,5),(2,2),(2,5),(2,6),(3,2),(3,4),(4,1),(4,2),(4,4),(5,4),(5,6),(6,2),(6,5),(7,2),(7,4),(7,5),(8,2),(8,3),(8,6),(9,2),(9,5),(10,1),(10,2),(10,3),(11,1),(11,3),(12,3),(12,4),(12,6),(13,1),(13,3),(14,2),(14,4),(14,6),(15,1),(15,2),(15,4),(16,1),(16,5),(17,1),(17,4),(18,2),(18,3),(18,5),(19,4),(19,5),(19,6),(20,2),(20,4),(21,1),(21,2),(21,4),(22,2),(22,5),(22,6),(23,1),(23,5),(23,6),(24,2),(24,5);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2024-02-24 01:32:26','2024-02-24 01:32:26'),(2,'Bags',NULL,'published','2024-02-24 01:32:26','2024-02-24 01:32:26'),(3,'Shoes',NULL,'published','2024-02-24 01:32:26','2024-02-24 01:32:26'),(4,'Clothes',NULL,'published','2024-02-24 01:32:26','2024-02-24 01:32:26'),(5,'Hand bag',NULL,'published','2024-02-24 01:32:26','2024-02-24 01:32:26');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (5,1,3),(7,1,4),(9,1,5),(15,1,8),(47,1,24),(51,1,26),(69,1,35),(77,1,39),(93,1,47),(101,1,51),(109,1,55),(111,1,56),(19,2,10),(25,2,13),(27,2,14),(29,2,15),(33,2,17),(37,2,19),(39,2,20),(43,2,22),(45,2,23),(53,2,27),(75,2,38),(81,2,41),(87,2,44),(89,2,45),(105,2,53),(107,2,54),(17,3,9),(21,3,11),(49,3,25),(91,3,46),(95,3,48),(97,3,49),(13,4,7),(31,4,16),(61,4,31),(85,4,43),(1,5,1),(3,5,2),(11,5,6),(23,5,12),(35,5,18),(41,5,21),(55,5,28),(57,5,29),(59,5,30),(63,5,32),(65,5,33),(67,5,34),(71,5,36),(73,5,37),(79,5,40),(83,5,42),(99,5,50),(103,5,52),(2,6,1),(12,6,6),(14,6,7),(16,6,8),(20,6,10),(26,6,13),(60,6,30),(66,6,33),(78,6,39),(92,6,46),(102,6,51),(108,6,54),(4,7,2),(10,7,5),(24,7,12),(34,7,17),(74,7,37),(76,7,38),(80,7,40),(82,7,41),(84,7,42),(86,7,43),(90,7,45),(98,7,49),(112,7,56),(6,8,3),(48,8,24),(54,8,27),(70,8,35),(94,8,47),(100,8,50),(110,8,55),(18,9,9),(30,9,15),(32,9,16),(36,9,18),(38,9,19),(42,9,21),(46,9,23),(52,9,26),(58,9,29),(62,9,31),(68,9,34),(104,9,52),(8,10,4),(22,10,11),(28,10,14),(40,10,20),(44,10,22),(50,10,25),(56,10,28),(64,10,32),(72,10,36),(88,10,44),(96,10,48),(106,10,53);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,1,1),(2,26,2,1),(3,27,3,1),(4,28,4,1),(5,29,4,0),(6,30,5,1),(7,31,5,0),(8,32,6,1),(9,33,7,1),(10,34,7,0),(11,35,8,1),(12,36,8,0),(13,37,9,1),(14,38,9,0),(15,39,10,1),(16,40,10,0),(17,41,10,0),(18,42,10,0),(19,43,10,0),(20,44,11,1),(21,45,11,0),(22,46,12,1),(23,47,12,0),(24,48,12,0),(25,49,13,1),(26,50,13,0),(27,51,13,0),(28,52,14,1),(29,53,14,0),(30,54,14,0),(31,55,15,1),(32,56,15,0),(33,57,15,0),(34,58,15,0),(35,59,16,1),(36,60,17,1),(37,61,17,0),(38,62,17,0),(39,63,17,0),(40,64,18,1),(41,65,18,0),(42,66,19,1),(43,67,19,0),(44,68,19,0),(45,69,19,0),(46,70,19,0),(47,71,20,1),(48,72,20,0),(49,73,20,0),(50,74,20,0),(51,75,21,1),(52,76,21,0),(53,77,22,1),(54,78,23,1),(55,79,23,0),(56,80,24,1);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-02-24',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(1,24,0),(2,24,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Seeds of Change Organic Quinoe (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\"]','HS-173-A0',0,16,0,1,1,1,0,0,391,NULL,NULL,NULL,15.00,16.00,18.00,688.00,NULL,91577,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,2,0),(2,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\"]','HS-176-A0',0,18,0,1,1,7,0,0,387,NULL,NULL,NULL,20.00,16.00,18.00,841.00,NULL,48419,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(3,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\"]','HS-153-A0',0,19,0,1,1,1,0,0,451,NULL,NULL,NULL,19.00,11.00,18.00,805.00,NULL,173849,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(4,'Foster Farms Takeout Crispy Classic','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\"]','HS-105-A0',0,13,0,1,1,1,0,0,88,66,NULL,NULL,18.00,18.00,13.00,519.00,NULL,112463,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(5,'Blue Diamond Almonds Lightly (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\"]','HS-189-A0',0,19,0,1,1,3,0,0,50,NULL,NULL,NULL,19.00,10.00,15.00,875.00,NULL,114983,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,4,0),(6,'Chobani Complete Vanilla Greek','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-171-A0',0,19,0,1,1,7,0,0,55,NULL,NULL,NULL,16.00,14.00,19.00,641.00,NULL,63236,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(7,'Canada Dry Ginger Ale – 2 L Bottle','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-138-A0',0,18,0,1,1,5,0,0,117,NULL,NULL,NULL,13.00,14.00,16.00,517.00,NULL,92627,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,5,0),(8,'Encore Seafoods Stuffed Alaskan','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-179-A0',0,15,0,1,1,7,0,0,114,87.78,NULL,NULL,15.00,18.00,19.00,725.00,NULL,194533,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(9,'Gorton’s Beer Battered Fish Fillets (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-156-A0',0,15,0,1,1,3,0,0,119,NULL,NULL,NULL,20.00,14.00,20.00,791.00,NULL,130440,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,4,0),(10,'Haagen-Dazs Caramel Cone Ice Cream','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-116-A0',0,17,0,1,1,7,0,0,500,NULL,NULL,NULL,17.00,20.00,20.00,879.00,NULL,100976,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(11,'Nestle Original Coffee-Mate Coffee Creamer','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-178-A0',0,19,0,1,1,6,0,0,114,NULL,NULL,NULL,15.00,15.00,10.00,576.00,NULL,57630,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(12,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-171-A0',0,14,0,1,1,3,0,0,129,90.3,NULL,NULL,15.00,10.00,13.00,871.00,NULL,96692,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,5,0),(13,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-131-A0',0,19,0,1,1,7,0,0,117,NULL,NULL,NULL,19.00,20.00,20.00,752.00,NULL,171359,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,1,0),(14,'Organic Frozen Triple Berry Blend','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-115-A0',0,13,0,1,1,5,0,0,125,NULL,NULL,NULL,20.00,13.00,18.00,773.00,NULL,82576,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(15,'Oroweat Country Buttermilk Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-177-A0',0,14,0,1,1,4,0,0,127,NULL,NULL,NULL,14.00,10.00,12.00,678.00,NULL,1401,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(16,'Foster Farms Takeout Crispy Classic Buffalo Wings','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/16.jpg\",\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/16-6.jpg\"]','HS-196-A0',0,12,0,1,1,3,0,0,116,103.24,NULL,NULL,19.00,13.00,20.00,718.00,NULL,25033,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(17,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\"]','HS-183-A0',0,14,0,1,1,7,0,0,112,NULL,NULL,NULL,13.00,18.00,12.00,815.00,NULL,87809,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,5,0),(18,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\"]','HS-133-A0',0,15,0,1,1,6,0,0,123,NULL,NULL,NULL,18.00,12.00,19.00,675.00,NULL,143671,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(19,'Simply Lemonade with Raspberry Juice','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-121-A0',0,17,0,1,1,2,0,0,112,NULL,NULL,NULL,15.00,15.00,10.00,595.00,NULL,145324,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(20,'Perdue Simply Smart Organics Gluten Free','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-122-A0',0,11,0,1,1,4,0,0,110,94.6,NULL,NULL,14.00,18.00,10.00,659.00,NULL,124079,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(21,'Chen Watermelon (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-161-A0',0,19,0,1,1,6,0,0,126,NULL,NULL,NULL,15.00,17.00,12.00,712.00,NULL,103394,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,1,0),(22,'Organic Cage-Free Grade A Large Brown Eggs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-178-A0',0,19,0,1,1,5,0,0,116,NULL,NULL,NULL,16.00,13.00,14.00,507.00,NULL,134342,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(23,'Colorful Banana','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-110-A0',0,20,0,1,1,5,0,0,121,NULL,NULL,NULL,19.00,12.00,20.00,590.00,NULL,130149,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,5,0),(24,'Signature Wood-Fired Mushroom and Caramelized','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-156-A0',0,17,0,1,1,4,0,0,114,93.48,NULL,NULL,12.00,12.00,10.00,832.00,NULL,26127,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(25,'Seeds of Change Organic Quinoe (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-173-A0',0,16,0,1,0,1,1,0,391,NULL,NULL,NULL,15.00,16.00,18.00,688.00,NULL,0,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(26,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-176-A0',0,18,0,1,0,7,1,0,387,NULL,NULL,NULL,20.00,16.00,18.00,841.00,NULL,0,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(27,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-153-A0',0,19,0,1,0,1,1,0,451,NULL,NULL,NULL,19.00,11.00,18.00,805.00,NULL,0,'2024-02-24 01:32:31','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(28,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-105-A0',0,13,0,1,0,1,1,0,88,66,NULL,NULL,18.00,18.00,13.00,519.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(29,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-105-A0-A1',0,13,0,1,0,1,1,0,88,63.36,NULL,NULL,18.00,18.00,13.00,519.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(30,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-189-A0',0,19,0,1,0,3,1,0,50,NULL,NULL,NULL,19.00,10.00,15.00,875.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(31,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','HS-189-A0-A1',0,19,0,1,0,3,1,0,50,NULL,NULL,NULL,19.00,10.00,15.00,875.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(32,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-171-A0',0,19,0,1,0,7,1,0,55,NULL,NULL,NULL,16.00,14.00,19.00,641.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(33,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-138-A0',0,18,0,1,0,5,1,0,117,NULL,NULL,NULL,13.00,14.00,16.00,517.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(34,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-138-A0-A1',0,18,0,1,0,5,1,0,117,NULL,NULL,NULL,13.00,14.00,16.00,517.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(35,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-179-A0',0,15,0,1,0,7,1,0,114,87.78,NULL,NULL,15.00,18.00,19.00,725.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(36,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','HS-179-A0-A1',0,15,0,1,0,7,1,0,114,87.78,NULL,NULL,15.00,18.00,19.00,725.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(37,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-156-A0',0,15,0,1,0,3,1,0,119,NULL,NULL,NULL,20.00,14.00,20.00,791.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(38,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','HS-156-A0-A1',0,15,0,1,0,3,1,0,119,NULL,NULL,NULL,20.00,14.00,20.00,791.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(39,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-116-A0',0,17,0,1,0,7,1,0,500,NULL,NULL,NULL,17.00,20.00,20.00,879.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(40,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-116-A0-A1',0,17,0,1,0,7,1,0,500,NULL,NULL,NULL,17.00,20.00,20.00,879.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(41,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-116-A0-A2',0,17,0,1,0,7,1,0,500,NULL,NULL,NULL,17.00,20.00,20.00,879.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(42,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-116-A0-A3',0,17,0,1,0,7,1,0,500,NULL,NULL,NULL,17.00,20.00,20.00,879.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(43,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-116-A0-A4',0,17,0,1,0,7,1,0,500,NULL,NULL,NULL,17.00,20.00,20.00,879.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(44,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-178-A0',0,19,0,1,0,6,1,0,114,NULL,NULL,NULL,15.00,15.00,10.00,576.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(45,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','HS-178-A0-A1',0,19,0,1,0,6,1,0,114,NULL,NULL,NULL,15.00,15.00,10.00,576.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(46,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-171-A0',0,14,0,1,0,3,1,0,129,90.3,NULL,NULL,15.00,10.00,13.00,871.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(47,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','HS-171-A0-A1',0,14,0,1,0,3,1,0,129,107.07,NULL,NULL,15.00,10.00,13.00,871.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(48,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-171-A0-A2',0,14,0,1,0,3,1,0,129,105.78,NULL,NULL,15.00,10.00,13.00,871.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(49,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-131-A0',0,19,0,1,0,7,1,0,117,NULL,NULL,NULL,19.00,20.00,20.00,752.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(50,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','HS-131-A0-A1',0,19,0,1,0,7,1,0,117,NULL,NULL,NULL,19.00,20.00,20.00,752.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(51,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-131-A0-A2',0,19,0,1,0,7,1,0,117,NULL,NULL,NULL,19.00,20.00,20.00,752.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(52,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-115-A0',0,13,0,1,0,5,1,0,125,NULL,NULL,NULL,20.00,13.00,18.00,773.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(53,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14-1.jpg\"]','HS-115-A0-A1',0,13,0,1,0,5,1,0,125,NULL,NULL,NULL,20.00,13.00,18.00,773.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(54,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-115-A0-A2',0,13,0,1,0,5,1,0,125,NULL,NULL,NULL,20.00,13.00,18.00,773.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(55,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-177-A0',0,14,0,1,0,4,1,0,127,NULL,NULL,NULL,14.00,10.00,12.00,678.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(56,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','HS-177-A0-A1',0,14,0,1,0,4,1,0,127,NULL,NULL,NULL,14.00,10.00,12.00,678.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(57,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-177-A0-A2',0,14,0,1,0,4,1,0,127,NULL,NULL,NULL,14.00,10.00,12.00,678.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(58,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-177-A0-A3',0,14,0,1,0,4,1,0,127,NULL,NULL,NULL,14.00,10.00,12.00,678.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(59,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-196-A0',0,12,0,1,0,3,1,0,116,103.24,NULL,NULL,19.00,13.00,20.00,718.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(60,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-183-A0',0,14,0,1,0,7,1,0,112,NULL,NULL,NULL,13.00,18.00,12.00,815.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(61,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','HS-183-A0-A1',0,14,0,1,0,7,1,0,112,NULL,NULL,NULL,13.00,18.00,12.00,815.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(62,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-183-A0-A2',0,14,0,1,0,7,1,0,112,NULL,NULL,NULL,13.00,18.00,12.00,815.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(63,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-183-A0-A3',0,14,0,1,0,7,1,0,112,NULL,NULL,NULL,13.00,18.00,12.00,815.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(64,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-133-A0',0,15,0,1,0,6,1,0,123,NULL,NULL,NULL,18.00,12.00,19.00,675.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(65,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','HS-133-A0-A1',0,15,0,1,0,6,1,0,123,NULL,NULL,NULL,18.00,12.00,19.00,675.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(66,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-121-A0',0,17,0,1,0,2,1,0,112,NULL,NULL,NULL,15.00,15.00,10.00,595.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(67,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','HS-121-A0-A1',0,17,0,1,0,2,1,0,112,NULL,NULL,NULL,15.00,15.00,10.00,595.00,NULL,0,'2024-02-24 01:32:32','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(68,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-121-A0-A2',0,17,0,1,0,2,1,0,112,NULL,NULL,NULL,15.00,15.00,10.00,595.00,NULL,0,'2024-02-24 01:32:33','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(69,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-121-A0-A3',0,17,0,1,0,2,1,0,112,NULL,NULL,NULL,15.00,15.00,10.00,595.00,NULL,0,'2024-02-24 01:32:33','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(70,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-121-A0-A4',0,17,0,1,0,2,1,0,112,NULL,NULL,NULL,15.00,15.00,10.00,595.00,NULL,0,'2024-02-24 01:32:33','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(71,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-122-A0',0,11,0,1,0,4,1,0,110,94.6,NULL,NULL,14.00,18.00,10.00,659.00,NULL,0,'2024-02-24 01:32:33','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(72,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','HS-122-A0-A1',0,11,0,1,0,4,1,0,110,99,NULL,NULL,14.00,18.00,10.00,659.00,NULL,0,'2024-02-24 01:32:33','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(73,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-122-A0-A2',0,11,0,1,0,4,1,0,110,92.4,NULL,NULL,14.00,18.00,10.00,659.00,NULL,0,'2024-02-24 01:32:33','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(74,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-122-A0-A3',0,11,0,1,0,4,1,0,110,84.7,NULL,NULL,14.00,18.00,10.00,659.00,NULL,0,'2024-02-24 01:32:33','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(75,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-161-A0',0,19,0,1,0,6,1,0,126,NULL,NULL,NULL,15.00,17.00,12.00,712.00,NULL,0,'2024-02-24 01:32:33','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(76,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-161-A0-A1',0,19,0,1,0,6,1,0,126,NULL,NULL,NULL,15.00,17.00,12.00,712.00,NULL,0,'2024-02-24 01:32:33','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(77,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-178-A0',0,19,0,1,0,5,1,0,116,NULL,NULL,NULL,16.00,13.00,14.00,507.00,NULL,0,'2024-02-24 01:32:33','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(78,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-110-A0',0,20,0,1,0,5,1,0,121,NULL,NULL,NULL,19.00,12.00,20.00,590.00,NULL,0,'2024-02-24 01:32:33','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(79,'Colorful Banana',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-110-A0-A1',0,20,0,1,0,5,1,0,121,NULL,NULL,NULL,19.00,12.00,20.00,590.00,NULL,0,'2024-02-24 01:32:33','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(80,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-156-A0',0,17,0,1,0,4,1,0,114,93.48,NULL,NULL,12.00,12.00,10.00,832.00,NULL,0,'2024-02-24 01:32:33','2024-02-24 01:32:48','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,9,5,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/15-1.jpg\"]'),(2,7,1,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/4.jpg\",\"products\\/5-1.jpg\",\"products\\/9.jpg\",\"products\\/24.jpg\"]'),(3,10,13,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2.jpg\",\"products\\/16-3.jpg\",\"products\\/19.jpg\",\"products\\/21-1.jpg\"]'),(4,7,19,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1-1.jpg\",\"products\\/13-1.jpg\",\"products\\/13.jpg\"]'),(5,1,2,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2.jpg\",\"products\\/22-1.jpg\",\"products\\/22.jpg\"]'),(6,7,24,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/9.jpg\",\"products\\/13-1.jpg\"]'),(7,5,21,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1-1.jpg\",\"products\\/17.jpg\"]'),(8,8,24,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/5-1.jpg\",\"products\\/10-1.jpg\",\"products\\/12.jpg\",\"products\\/15-1.jpg\"]'),(9,10,9,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/14.jpg\",\"products\\/15-1.jpg\"]'),(10,6,12,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/19.jpg\"]'),(11,5,5,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/11-1.jpg\",\"products\\/14-1.jpg\",\"products\\/21-1.jpg\",\"products\\/22-1.jpg\"]'),(12,1,7,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/10-1.jpg\"]'),(13,10,2,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1.jpg\"]'),(14,9,20,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2-1.jpg\",\"products\\/8.jpg\",\"products\\/19.jpg\"]'),(16,9,2,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2-1.jpg\",\"products\\/4.jpg\"]'),(17,2,21,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/5-1.jpg\"]'),(18,3,1,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/19-1.jpg\",\"products\\/23-1.jpg\"]'),(19,5,19,2.00,'Clean & perfect source code','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1-1.jpg\"]'),(20,10,8,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/13.jpg\",\"products\\/18.jpg\"]'),(21,3,4,2.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/7.jpg\",\"products\\/11-1.jpg\",\"products\\/13.jpg\"]'),(22,10,17,3.00,'Clean & perfect source code','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/4-1.jpg\"]'),(23,8,13,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2.jpg\",\"products\\/9.jpg\"]'),(24,3,20,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/14-1.jpg\",\"products\\/18-1.jpg\"]'),(25,10,6,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3.jpg\",\"products\\/15.jpg\"]'),(26,1,8,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/8.jpg\",\"products\\/14-1.jpg\",\"products\\/16-4.jpg\",\"products\\/22.jpg\"]'),(27,3,24,3.00,'Best ecommerce CMS online store!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/7-1.jpg\",\"products\\/9.jpg\",\"products\\/19-1.jpg\"]'),(28,5,23,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16-3.jpg\",\"products\\/21-1.jpg\",\"products\\/23-1.jpg\"]'),(29,1,5,4.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16-6.jpg\"]'),(30,7,14,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/12-1.jpg\",\"products\\/16-4.jpg\",\"products\\/22-1.jpg\"]'),(31,8,1,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/5.jpg\",\"products\\/15.jpg\"]'),(32,8,22,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/6-1.jpg\",\"products\\/22.jpg\"]'),(34,9,16,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2.jpg\",\"products\\/15-1.jpg\",\"products\\/16.jpg\",\"products\\/23-1.jpg\"]'),(35,4,15,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/6-1.jpg\"]'),(36,4,8,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/9.jpg\",\"products\\/10.jpg\"]'),(37,5,11,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3-1.jpg\",\"products\\/18.jpg\",\"products\\/22-1.jpg\"]'),(38,3,21,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/8-1.jpg\",\"products\\/9.jpg\"]'),(39,8,9,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2-1.jpg\",\"products\\/5.jpg\",\"products\\/17-1.jpg\"]'),(40,4,14,5.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/4.jpg\",\"products\\/16-3.jpg\",\"products\\/17.jpg\"]'),(41,10,14,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/22.jpg\"]'),(43,10,20,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2-1.jpg\"]'),(44,8,23,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1-1.jpg\",\"products\\/5-1.jpg\",\"products\\/6.jpg\",\"products\\/21-1.jpg\"]'),(45,8,12,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3-1.jpg\",\"products\\/16-5.jpg\"]'),(46,1,12,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3-1.jpg\",\"products\\/12.jpg\",\"products\\/14-1.jpg\",\"products\\/16-2.jpg\"]'),(48,2,9,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/18-1.jpg\"]'),(49,10,19,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/6-1.jpg\",\"products\\/23.jpg\"]'),(50,8,19,4.00,'Best ecommerce CMS online store!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/14.jpg\",\"products\\/23.jpg\"]'),(51,3,7,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/4-1.jpg\",\"products\\/11-1.jpg\",\"products\\/11.jpg\",\"products\\/16-3.jpg\"]'),(52,1,11,4.00,'Best ecommerce CMS online store!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/8-1.jpg\",\"products\\/16-1.jpg\",\"products\\/16.jpg\",\"products\\/19-1.jpg\"]'),(53,5,14,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/6.jpg\",\"products\\/8-1.jpg\",\"products\\/16-3.jpg\",\"products\\/17.jpg\"]'),(55,10,10,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2-1.jpg\"]'),(56,6,20,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/10-1.jpg\",\"products\\/14.jpg\",\"products\\/16-4.jpg\"]'),(57,4,3,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/5.jpg\"]'),(58,5,24,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/19-1.jpg\",\"products\\/21-1.jpg\",\"products\\/22.jpg\"]'),(59,2,14,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16-5.jpg\",\"products\\/16.jpg\",\"products\\/24.jpg\"]'),(60,2,10,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/15.jpg\",\"products\\/16-2.jpg\",\"products\\/17.jpg\"]'),(61,1,23,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/9-1.jpg\",\"products\\/15-1.jpg\",\"products\\/20.jpg\"]'),(62,2,15,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/7-1.jpg\",\"products\\/16-5.jpg\"]'),(63,4,4,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/19.jpg\"]'),(64,8,7,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/6.jpg\",\"products\\/16-6.jpg\",\"products\\/19.jpg\"]'),(65,5,13,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3.jpg\",\"products\\/12-1.jpg\",\"products\\/16-2.jpg\",\"products\\/20.jpg\"]'),(66,7,8,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/8-1.jpg\",\"products\\/16-4.jpg\",\"products\\/23-1.jpg\"]'),(67,5,4,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/8.jpg\",\"products\\/22-1.jpg\",\"products\\/22.jpg\"]'),(69,2,16,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/7-1.jpg\",\"products\\/9-1.jpg\",\"products\\/16-1.jpg\"]'),(71,2,6,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/17-1.jpg\"]'),(72,8,2,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/18.jpg\"]'),(73,9,24,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2-1.jpg\",\"products\\/8.jpg\",\"products\\/9-1.jpg\"]'),(74,4,17,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/7-1.jpg\",\"products\\/9.jpg\",\"products\\/16.jpg\"]'),(75,2,5,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/15-1.jpg\",\"products\\/17-1.jpg\",\"products\\/18-1.jpg\",\"products\\/19.jpg\"]'),(76,9,14,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/5.jpg\",\"products\\/23.jpg\"]'),(77,7,20,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/24-1.jpg\"]'),(79,6,5,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16.jpg\"]'),(80,10,3,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/10-1.jpg\",\"products\\/15.jpg\",\"products\\/24-1.jpg\"]'),(81,5,2,4.00,'Best ecommerce CMS online store!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/12.jpg\"]'),(82,8,6,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/7-1.jpg\"]'),(86,3,3,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3-1.jpg\",\"products\\/16-1.jpg\"]'),(87,9,8,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/11-1.jpg\"]'),(88,7,13,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/24.jpg\"]'),(90,1,10,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/10-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-6.jpg\",\"products\\/20-1.jpg\"]'),(91,1,18,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3.jpg\",\"products\\/16-1.jpg\",\"products\\/19.jpg\"]'),(92,8,5,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/13-1.jpg\",\"products\\/16-4.jpg\"]'),(93,6,22,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3-1.jpg\",\"products\\/10.jpg\",\"products\\/15-1.jpg\",\"products\\/22.jpg\"]'),(95,2,18,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1.jpg\",\"products\\/14.jpg\",\"products\\/16-1.jpg\",\"products\\/16.jpg\"]'),(96,7,5,2.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3-1.jpg\",\"products\\/3.jpg\",\"products\\/9-1.jpg\"]'),(98,6,1,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/14.jpg\",\"products\\/15.jpg\",\"products\\/16-6.jpg\"]'),(100,4,23,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16-2.jpg\",\"products\\/17-1.jpg\",\"products\\/22-1.jpg\",\"products\\/23.jpg\"]'),(105,6,23,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3-1.jpg\"]'),(106,1,4,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/15.jpg\",\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-6.jpg\"]'),(107,6,19,5.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/6-1.jpg\",\"products\\/9-1.jpg\",\"products\\/18.jpg\"]'),(110,1,6,4.00,'Best ecommerce CMS online store!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16-2.jpg\",\"products\\/21.jpg\"]'),(112,2,12,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/12-1.jpg\",\"products\\/15.jpg\",\"products\\/16-3.jpg\"]'),(118,5,6,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/5-1.jpg\",\"products\\/13.jpg\",\"products\\/16-3.jpg\",\"products\\/21-1.jpg\"]'),(119,8,15,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/5-1.jpg\"]'),(121,4,1,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/4.jpg\",\"products\\/16-6.jpg\"]'),(124,8,4,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/7-1.jpg\",\"products\\/16-3.jpg\",\"products\\/24-1.jpg\"]'),(125,7,22,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/23.jpg\"]'),(126,4,7,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/22-1.jpg\",\"products\\/23-1.jpg\"]'),(128,4,5,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/19-1.jpg\",\"products\\/19.jpg\",\"products\\/20.jpg\",\"products\\/22.jpg\"]'),(129,1,20,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2-1.jpg\",\"products\\/19.jpg\"]'),(131,3,6,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/8.jpg\",\"products\\/24.jpg\"]'),(132,5,1,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/6.jpg\",\"products\\/10-1.jpg\"]'),(133,10,21,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16-4.jpg\",\"products\\/18.jpg\",\"products\\/19.jpg\"]'),(134,5,9,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/20-1.jpg\"]'),(135,5,7,2.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/8.jpg\",\"products\\/9.jpg\",\"products\\/12-1.jpg\",\"products\\/15-1.jpg\"]'),(136,3,13,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3.jpg\",\"products\\/12.jpg\",\"products\\/16-5.jpg\",\"products\\/24.jpg\"]'),(137,1,1,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16-4.jpg\",\"products\\/17-1.jpg\",\"products\\/18.jpg\",\"products\\/21-1.jpg\"]'),(145,7,3,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16-5.jpg\",\"products\\/17-1.jpg\"]'),(146,6,17,3.00,'Clean & perfect source code','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1-1.jpg\",\"products\\/3.jpg\",\"products\\/16-4.jpg\",\"products\\/19-1.jpg\"]'),(148,9,1,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/9-1.jpg\",\"products\\/9.jpg\"]'),(149,3,11,4.00,'Best ecommerce CMS online store!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16-5.jpg\",\"products\\/22-1.jpg\",\"products\\/24-1.jpg\"]'),(150,10,22,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/5.jpg\"]'),(151,1,24,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/14-1.jpg\",\"products\\/18.jpg\",\"products\\/22-1.jpg\"]'),(152,9,10,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2.jpg\",\"products\\/23-1.jpg\"]'),(154,3,5,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1-1.jpg\",\"products\\/4.jpg\",\"products\\/12-1.jpg\",\"products\\/12.jpg\"]'),(155,7,6,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/5.jpg\",\"products\\/16-6.jpg\",\"products\\/22-1.jpg\"]'),(161,4,21,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/4-1.jpg\",\"products\\/5.jpg\",\"products\\/7.jpg\",\"products\\/16.jpg\"]'),(163,6,16,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/8.jpg\",\"products\\/17.jpg\",\"products\\/21-1.jpg\"]'),(168,4,12,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16-5.jpg\"]'),(169,3,16,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/21.jpg\"]'),(172,6,3,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/14-1.jpg\",\"products\\/19-1.jpg\",\"products\\/20-1.jpg\"]'),(173,4,9,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/7-1.jpg\",\"products\\/19.jpg\",\"products\\/22-1.jpg\"]'),(174,7,2,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/9-1.jpg\",\"products\\/16-3.jpg\"]'),(179,3,8,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2-1.jpg\"]'),(182,10,1,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/7-1.jpg\",\"products\\/20-1.jpg\"]'),(184,2,1,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/5-1.jpg\",\"products\\/14-1.jpg\",\"products\\/22-1.jpg\"]'),(191,3,15,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/14-1.jpg\",\"products\\/18-1.jpg\",\"products\\/22-1.jpg\"]'),(194,4,13,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/5.jpg\"]'),(196,9,17,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2.jpg\",\"products\\/5-1.jpg\"]'),(201,6,10,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16-1.jpg\",\"products\\/23-1.jpg\"]'),(202,3,14,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/15-1.jpg\",\"products\\/18.jpg\",\"products\\/19-1.jpg\",\"products\\/21-1.jpg\"]'),(203,2,11,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/9-1.jpg\",\"products\\/16-6.jpg\",\"products\\/20.jpg\",\"products\\/22.jpg\"]'),(205,7,10,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/10-1.jpg\"]'),(206,9,19,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1.jpg\",\"products\\/12-1.jpg\",\"products\\/14.jpg\",\"products\\/22.jpg\"]'),(207,5,17,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16-2.jpg\",\"products\\/23-1.jpg\"]'),(210,5,22,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/12-1.jpg\",\"products\\/23.jpg\"]'),(217,10,7,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/11-1.jpg\",\"products\\/12-1.jpg\",\"products\\/16-1.jpg\",\"products\\/22-1.jpg\"]'),(222,9,3,1.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/15-1.jpg\",\"products\\/21.jpg\"]'),(223,10,16,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/4.jpg\",\"products\\/17-1.jpg\",\"products\\/21.jpg\",\"products\\/22-1.jpg\"]'),(226,1,16,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/5.jpg\",\"products\\/16-5.jpg\"]'),(228,10,12,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16-2.jpg\",\"products\\/22-1.jpg\",\"products\\/22.jpg\",\"products\\/24-1.jpg\"]'),(231,9,22,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/7-1.jpg\",\"products\\/10.jpg\",\"products\\/20.jpg\",\"products\\/23.jpg\"]'),(239,9,9,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/23-1.jpg\"]'),(246,8,14,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/5-1.jpg\",\"products\\/10.jpg\",\"products\\/16-1.jpg\",\"products\\/16-4.jpg\"]'),(247,3,9,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2.jpg\",\"products\\/14.jpg\",\"products\\/18-1.jpg\",\"products\\/21-1.jpg\"]'),(248,3,17,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1-1.jpg\",\"products\\/6-1.jpg\"]'),(249,4,18,4.00,'Best ecommerce CMS online store!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/6-1.jpg\",\"products\\/16-2.jpg\",\"products\\/21-1.jpg\"]'),(250,1,21,2.00,'Clean & perfect source code','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/4.jpg\",\"products\\/19.jpg\"]'),(255,4,19,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/10-1.jpg\",\"products\\/16-6.jpg\",\"products\\/20.jpg\",\"products\\/21-1.jpg\"]'),(256,2,20,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3.jpg\",\"products\\/15.jpg\"]'),(257,9,15,4.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3.jpg\",\"products\\/15.jpg\",\"products\\/20-1.jpg\"]'),(261,10,4,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3-1.jpg\",\"products\\/3.jpg\",\"products\\/23.jpg\"]'),(263,8,11,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/17.jpg\"]'),(264,9,12,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/21-1.jpg\"]'),(265,7,12,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/13.jpg\",\"products\\/15-1.jpg\",\"products\\/24-1.jpg\"]'),(268,3,23,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/4-1.jpg\",\"products\\/18.jpg\"]'),(271,2,8,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/4.jpg\",\"products\\/14.jpg\",\"products\\/16-2.jpg\",\"products\\/21.jpg\"]'),(274,9,6,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/22.jpg\",\"products\\/24.jpg\"]'),(275,2,23,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/8-1.jpg\",\"products\\/12.jpg\"]'),(278,9,4,4.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1-1.jpg\",\"products\\/5-1.jpg\",\"products\\/16-5.jpg\",\"products\\/21-1.jpg\"]'),(281,6,11,4.00,'Best ecommerce CMS online store!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3.jpg\",\"products\\/16.jpg\",\"products\\/21-1.jpg\"]'),(282,8,17,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3-1.jpg\",\"products\\/9.jpg\"]'),(284,10,23,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/20-1.jpg\"]'),(288,6,8,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1.jpg\"]'),(290,9,7,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/8-1.jpg\",\"products\\/10-1.jpg\",\"products\\/15.jpg\"]'),(297,2,22,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/4.jpg\",\"products\\/9-1.jpg\",\"products\\/11.jpg\",\"products\\/16-4.jpg\"]'),(299,2,17,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/4.jpg\",\"products\\/11-1.jpg\",\"products\\/16.jpg\",\"products\\/23.jpg\"]'),(300,10,24,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/11.jpg\",\"products\\/13.jpg\",\"products\\/15-1.jpg\"]'),(306,2,13,5.00,'Clean & perfect source code','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/8-1.jpg\",\"products\\/11-1.jpg\",\"products\\/14-1.jpg\"]'),(313,7,4,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/13-1.jpg\",\"products\\/14-1.jpg\"]'),(316,3,2,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/12.jpg\",\"products\\/13.jpg\",\"products\\/16-3.jpg\",\"products\\/18-1.jpg\"]'),(319,10,18,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/14-1.jpg\",\"products\\/16-2.jpg\"]'),(321,10,11,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2.jpg\",\"products\\/5-1.jpg\",\"products\\/11-1.jpg\",\"products\\/21.jpg\"]'),(324,2,2,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/14-1.jpg\",\"products\\/18-1.jpg\",\"products\\/24-1.jpg\"]'),(325,3,22,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/16-4.jpg\"]'),(329,8,21,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16.jpg\"]'),(334,4,2,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/7.jpg\",\"products\\/9-1.jpg\",\"products\\/12-1.jpg\"]'),(340,7,18,5.00,'Clean & perfect source code','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/15-1.jpg\",\"products\\/16-5.jpg\",\"products\\/23.jpg\",\"products\\/24.jpg\"]'),(341,7,9,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/12-1.jpg\"]'),(349,8,20,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2-1.jpg\",\"products\\/9.jpg\",\"products\\/19.jpg\"]'),(350,3,18,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/21.jpg\",\"products\\/24-1.jpg\"]'),(354,5,16,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/8.jpg\",\"products\\/16-4.jpg\",\"products\\/24.jpg\"]'),(357,1,13,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/6.jpg\",\"products\\/7-1.jpg\",\"products\\/16.jpg\",\"products\\/17-1.jpg\"]'),(358,7,11,1.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/7.jpg\",\"products\\/22.jpg\"]'),(362,6,6,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1.jpg\",\"products\\/9.jpg\",\"products\\/16-4.jpg\",\"products\\/18.jpg\"]'),(363,4,10,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/13.jpg\",\"products\\/19-1.jpg\"]'),(370,5,18,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/12-1.jpg\"]'),(378,2,19,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/14-1.jpg\",\"products\\/16-4.jpg\",\"products\\/21.jpg\"]'),(382,7,7,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/6.jpg\",\"products\\/7-1.jpg\",\"products\\/8.jpg\",\"products\\/11-1.jpg\"]'),(387,6,14,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/22-1.jpg\"]'),(397,2,3,3.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/13-1.jpg\",\"products\\/21-1.jpg\"]'),(404,6,7,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/9-1.jpg\",\"products\\/10-1.jpg\",\"products\\/13-1.jpg\",\"products\\/16.jpg\"]'),(414,8,3,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1.jpg\",\"products\\/13-1.jpg\",\"products\\/16-1.jpg\"]'),(421,5,3,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/7-1.jpg\"]'),(427,3,19,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/9-1.jpg\",\"products\\/13-1.jpg\"]'),(429,7,15,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/6-1.jpg\",\"products\\/8.jpg\",\"products\\/20.jpg\",\"products\\/24-1.jpg\"]'),(430,6,4,1.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2.jpg\",\"products\\/4.jpg\",\"products\\/15.jpg\",\"products\\/22-1.jpg\"]'),(444,9,23,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1-1.jpg\",\"products\\/17-1.jpg\"]'),(445,10,15,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/14-1.jpg\",\"products\\/16-3.jpg\",\"products\\/24-1.jpg\"]'),(446,6,21,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16-6.jpg\",\"products\\/17.jpg\",\"products\\/23.jpg\"]'),(449,7,21,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/12-1.jpg\",\"products\\/14-1.jpg\",\"products\\/17-1.jpg\"]'),(450,6,9,1.00,'Best ecommerce CMS online store!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16.jpg\",\"products\\/18.jpg\"]'),(459,7,17,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16-4.jpg\"]'),(471,3,10,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/24.jpg\"]'),(476,1,22,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2-1.jpg\"]'),(481,5,8,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2-1.jpg\",\"products\\/14-1.jpg\",\"products\\/18-1.jpg\",\"products\\/22.jpg\"]'),(486,10,5,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/14.jpg\",\"products\\/16-1.jpg\",\"products\\/16-6.jpg\"]'),(489,1,19,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/8.jpg\",\"products\\/15-1.jpg\",\"products\\/20-1.jpg\"]'),(492,1,3,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3.jpg\",\"products\\/14.jpg\"]'),(505,3,12,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2-1.jpg\",\"products\\/21-1.jpg\"]'),(534,4,24,4.00,'Best ecommerce CMS online store!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1.jpg\"]'),(536,2,7,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/7.jpg\",\"products\\/16-1.jpg\",\"products\\/21-1.jpg\"]'),(554,5,10,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1.jpg\",\"products\\/12.jpg\",\"products\\/16-5.jpg\"]'),(556,4,16,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/13.jpg\"]'),(572,6,2,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1-1.jpg\",\"products\\/21.jpg\",\"products\\/22-1.jpg\"]'),(578,9,21,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/7.jpg\",\"products\\/16-3.jpg\",\"products\\/23.jpg\"]'),(580,1,17,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/8.jpg\",\"products\\/16-2.jpg\"]'),(591,7,16,4.00,'Clean & perfect source code','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/10-1.jpg\"]'),(592,6,24,2.00,'Best ecommerce CMS online store!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/14.jpg\",\"products\\/22.jpg\"]'),(603,4,11,3.00,'Clean & perfect source code','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1-1.jpg\",\"products\\/12-1.jpg\"]'),(604,8,10,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/8-1.jpg\"]'),(615,4,6,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/20.jpg\",\"products\\/22-1.jpg\"]'),(616,5,20,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/22.jpg\"]'),(621,6,13,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1-1.jpg\",\"products\\/16-3.jpg\"]'),(625,4,20,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/9.jpg\"]'),(661,8,18,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/17.jpg\",\"products\\/20-1.jpg\",\"products\\/23-1.jpg\"]'),(669,9,11,3.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/3-1.jpg\",\"products\\/10-1.jpg\"]'),(678,5,15,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/6-1.jpg\"]'),(681,7,23,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/2.jpg\",\"products\\/16-1.jpg\"]'),(691,2,24,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/5-1.jpg\",\"products\\/5.jpg\",\"products\\/8.jpg\"]'),(711,2,4,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/19.jpg\"]'),(713,4,22,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/16-5.jpg\",\"products\\/24-1.jpg\"]'),(716,1,9,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/4.jpg\",\"products\\/15-1.jpg\",\"products\\/16-3.jpg\",\"products\\/16-5.jpg\"]'),(717,8,16,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/8-1.jpg\",\"products\\/16-4.jpg\",\"products\\/17.jpg\"]'),(737,6,15,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/1.jpg\",\"products\\/8-1.jpg\",\"products\\/9-1.jpg\"]'),(744,5,12,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/11.jpg\",\"products\\/14.jpg\"]'),(839,9,18,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/12.jpg\",\"products\\/17-1.jpg\",\"products\\/23-1.jpg\"]'),(989,1,15,3.00,'Best ecommerce CMS online store!','published','2024-02-24 01:32:36','2024-02-24 01:32:36','[\"products\\/10-1.jpg\",\"products\\/16-4.jpg\",\"products\\/17.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2024-02-20 17:32:49','2024-02-20 17:32:49','Botble\\ACL\\Models\\User'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2024-02-22 09:32:49','2024-02-24 01:32:49','Botble\\ACL\\Models\\User'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2024-02-09 01:32:49','2024-02-09 01:32:49','Botble\\ACL\\Models\\User'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2024-02-22 09:32:50','2024-02-24 01:32:50','Botble\\ACL\\Models\\User'),(5,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2024-02-10 17:32:50','2024-02-10 17:32:50','Botble\\ACL\\Models\\User'),(6,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2024-02-22 09:32:50','2024-02-24 01:32:50','Botble\\ACL\\Models\\User'),(7,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,3,'2024-02-24 01:32:50','2024-02-24 01:32:50','Botble\\ACL\\Models\\User'),(8,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2024-02-16 03:32:50','2024-02-16 03:32:50','Botble\\ACL\\Models\\User'),(9,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2024-02-22 11:32:50','2024-02-24 01:32:50','Botble\\ACL\\Models\\User'),(10,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,4,'2024-02-24 01:32:50','2024-02-24 01:32:50','Botble\\ACL\\Models\\User'),(11,'create_from_order','Shipping was created from order %order_id%',0,5,6,'2024-02-22 11:32:50','2024-02-22 11:32:50','Botble\\ACL\\Models\\User'),(12,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,6,'2024-02-22 11:32:51','2024-02-24 01:32:51','Botble\\ACL\\Models\\User'),(13,'create_from_order','Shipping was created from order %order_id%',0,6,7,'2024-02-13 13:32:51','2024-02-13 13:32:51','Botble\\ACL\\Models\\User'),(14,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,7,'2024-02-22 13:32:51','2024-02-24 01:32:51','Botble\\ACL\\Models\\User'),(15,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,7,'2024-02-24 01:32:51','2024-02-24 01:32:51','Botble\\ACL\\Models\\User'),(16,'create_from_order','Shipping was created from order %order_id%',0,7,8,'2024-02-15 01:32:51','2024-02-15 01:32:51','Botble\\ACL\\Models\\User'),(17,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,8,'2024-02-22 13:32:51','2024-02-24 01:32:51','Botble\\ACL\\Models\\User'),(18,'create_from_order','Shipping was created from order %order_id%',0,8,9,'2024-02-11 07:32:51','2024-02-11 07:32:51','Botble\\ACL\\Models\\User'),(19,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,9,'2024-02-22 15:32:51','2024-02-24 01:32:51','Botble\\ACL\\Models\\User'),(20,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,9,'2024-02-24 01:32:51','2024-02-24 01:32:51','Botble\\ACL\\Models\\User'),(21,'create_from_order','Shipping was created from order %order_id%',0,9,10,'2024-02-19 19:32:51','2024-02-19 19:32:51','Botble\\ACL\\Models\\User'),(22,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,10,'2024-02-22 15:32:52','2024-02-24 01:32:52','Botble\\ACL\\Models\\User'),(23,'create_from_order','Shipping was created from order %order_id%',0,10,11,'2024-02-12 17:32:52','2024-02-12 17:32:52','Botble\\ACL\\Models\\User'),(24,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,11,'2024-02-22 15:32:52','2024-02-24 01:32:52','Botble\\ACL\\Models\\User'),(25,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,11,'2024-02-24 01:32:52','2024-02-24 01:32:52','Botble\\ACL\\Models\\User'),(26,'create_from_order','Shipping was created from order %order_id%',0,11,12,'2024-02-18 17:32:52','2024-02-18 17:32:52','Botble\\ACL\\Models\\User'),(27,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,12,'2024-02-22 17:32:52','2024-02-24 01:32:52','Botble\\ACL\\Models\\User'),(28,'create_from_order','Shipping was created from order %order_id%',0,12,13,'2024-02-10 17:32:52','2024-02-10 17:32:52','Botble\\ACL\\Models\\User'),(29,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,13,'2024-02-22 17:32:52','2024-02-24 01:32:52','Botble\\ACL\\Models\\User'),(30,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,13,'2024-02-24 01:32:52','2024-02-24 01:32:52','Botble\\ACL\\Models\\User'),(31,'create_from_order','Shipping was created from order %order_id%',0,13,15,'2024-02-14 01:32:53','2024-02-14 01:32:53','Botble\\ACL\\Models\\User'),(32,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,15,'2024-02-22 19:32:53','2024-02-24 01:32:53','Botble\\ACL\\Models\\User'),(33,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,15,'2024-02-24 01:32:53','2024-02-24 01:32:53','Botble\\ACL\\Models\\User'),(34,'create_from_order','Shipping was created from order %order_id%',0,14,16,'2024-02-11 13:32:53','2024-02-11 13:32:53','Botble\\ACL\\Models\\User'),(35,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,16,'2024-02-22 19:32:53','2024-02-24 01:32:53','Botble\\ACL\\Models\\User'),(36,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,16,'2024-02-24 01:32:53','2024-02-24 01:32:53','Botble\\ACL\\Models\\User'),(37,'create_from_order','Shipping was created from order %order_id%',0,15,17,'2024-02-21 17:32:53','2024-02-21 17:32:53','Botble\\ACL\\Models\\User'),(38,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,17,'2024-02-22 21:32:53','2024-02-24 01:32:53','Botble\\ACL\\Models\\User'),(39,'create_from_order','Shipping was created from order %order_id%',0,16,18,'2024-02-22 21:32:53','2024-02-22 21:32:53','Botble\\ACL\\Models\\User'),(40,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,18,'2024-02-22 21:32:54','2024-02-24 01:32:54','Botble\\ACL\\Models\\User'),(41,'create_from_order','Shipping was created from order %order_id%',0,17,19,'2024-02-14 17:32:54','2024-02-14 17:32:54','Botble\\ACL\\Models\\User'),(42,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,19,'2024-02-22 21:32:54','2024-02-24 01:32:54','Botble\\ACL\\Models\\User'),(43,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,19,'2024-02-24 01:32:54','2024-02-24 01:32:54','Botble\\ACL\\Models\\User'),(44,'create_from_order','Shipping was created from order %order_id%',0,18,20,'2024-02-14 07:32:54','2024-02-14 07:32:54','Botble\\ACL\\Models\\User'),(45,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,20,'2024-02-22 23:32:54','2024-02-24 01:32:54','Botble\\ACL\\Models\\User'),(46,'create_from_order','Shipping was created from order %order_id%',0,19,21,'2024-02-14 07:32:54','2024-02-14 07:32:54','Botble\\ACL\\Models\\User'),(47,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,21,'2024-02-22 23:32:54','2024-02-24 01:32:54','Botble\\ACL\\Models\\User'),(48,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,21,'2024-02-24 01:32:54','2024-02-24 01:32:54','Botble\\ACL\\Models\\User'),(49,'create_from_order','Shipping was created from order %order_id%',0,20,22,'2024-02-13 05:32:54','2024-02-13 05:32:54','Botble\\ACL\\Models\\User'),(50,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,22,'2024-02-22 23:32:55','2024-02-24 01:32:55','Botble\\ACL\\Models\\User'),(51,'create_from_order','Shipping was created from order %order_id%',0,21,23,'2024-02-20 01:32:55','2024-02-20 01:32:55','Botble\\ACL\\Models\\User'),(52,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,23,'2024-02-23 01:32:55','2024-02-24 01:32:55','Botble\\ACL\\Models\\User'),(53,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,21,23,'2024-02-24 01:32:55','2024-02-24 01:32:55','Botble\\ACL\\Models\\User'),(54,'create_from_order','Shipping was created from order %order_id%',0,22,26,'2024-02-21 07:32:55','2024-02-21 07:32:55','Botble\\ACL\\Models\\User'),(55,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,26,'2024-02-23 03:32:55','2024-02-24 01:32:55','Botble\\ACL\\Models\\User'),(56,'create_from_order','Shipping was created from order %order_id%',0,23,27,'2024-02-17 15:32:55','2024-02-17 15:32:55','Botble\\ACL\\Models\\User'),(57,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,27,'2024-02-23 03:32:56','2024-02-24 01:32:56','Botble\\ACL\\Models\\User'),(58,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,27,'2024-02-24 01:32:56','2024-02-24 01:32:56','Botble\\ACL\\Models\\User'),(59,'create_from_order','Shipping was created from order %order_id%',0,24,28,'2024-02-16 13:32:56','2024-02-16 13:32:56','Botble\\ACL\\Models\\User'),(60,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,28,'2024-02-23 05:32:56','2024-02-24 01:32:56','Botble\\ACL\\Models\\User'),(61,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,28,'2024-02-24 01:32:56','2024-02-24 01:32:56','Botble\\ACL\\Models\\User'),(62,'create_from_order','Shipping was created from order %order_id%',0,25,29,'2024-02-17 09:32:56','2024-02-17 09:32:56','Botble\\ACL\\Models\\User'),(63,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,29,'2024-02-23 05:32:56','2024-02-24 01:32:56','Botble\\ACL\\Models\\User'),(64,'create_from_order','Shipping was created from order %order_id%',0,26,30,'2024-02-17 07:32:56','2024-02-17 07:32:56','Botble\\ACL\\Models\\User'),(65,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,30,'2024-02-23 07:32:56','2024-02-24 01:32:56','Botble\\ACL\\Models\\User'),(66,'create_from_order','Shipping was created from order %order_id%',0,27,31,'2024-02-17 09:32:56','2024-02-17 09:32:56','Botble\\ACL\\Models\\User'),(67,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,31,'2024-02-23 09:32:57','2024-02-24 01:32:57','Botble\\ACL\\Models\\User'),(68,'create_from_order','Shipping was created from order %order_id%',0,28,32,'2024-02-17 09:32:57','2024-02-17 09:32:57','Botble\\ACL\\Models\\User'),(69,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,32,'2024-02-23 09:32:57','2024-02-24 01:32:57','Botble\\ACL\\Models\\User'),(70,'create_from_order','Shipping was created from order %order_id%',0,29,33,'2024-02-22 17:32:57','2024-02-22 17:32:57','Botble\\ACL\\Models\\User'),(71,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,33,'2024-02-23 09:32:57','2024-02-24 01:32:57','Botble\\ACL\\Models\\User'),(72,'create_from_order','Shipping was created from order %order_id%',0,30,34,'2024-02-22 07:32:57','2024-02-22 07:32:57','Botble\\ACL\\Models\\User'),(73,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,34,'2024-02-23 11:32:57','2024-02-24 01:32:57','Botble\\ACL\\Models\\User'),(74,'create_from_order','Shipping was created from order %order_id%',0,31,35,'2024-02-19 09:32:57','2024-02-19 09:32:57','Botble\\ACL\\Models\\User'),(75,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,35,'2024-02-23 11:32:58','2024-02-24 01:32:58','Botble\\ACL\\Models\\User'),(76,'create_from_order','Shipping was created from order %order_id%',0,32,36,'2024-02-21 13:32:58','2024-02-21 13:32:58','Botble\\ACL\\Models\\User'),(77,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,36,'2024-02-23 13:32:58','2024-02-24 01:32:58','Botble\\ACL\\Models\\User'),(78,'create_from_order','Shipping was created from order %order_id%',0,33,37,'2024-02-22 01:32:58','2024-02-22 01:32:58','Botble\\ACL\\Models\\User'),(79,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,37,'2024-02-23 13:32:59','2024-02-24 01:32:59','Botble\\ACL\\Models\\User'),(80,'create_from_order','Shipping was created from order %order_id%',0,34,38,'2024-02-23 15:32:59','2024-02-23 15:32:59','Botble\\ACL\\Models\\User'),(81,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,38,'2024-02-23 15:32:59','2024-02-24 01:32:59','Botble\\ACL\\Models\\User'),(82,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,34,38,'2024-02-24 01:32:59','2024-02-24 01:32:59','Botble\\ACL\\Models\\User'),(83,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,34,38,'2024-02-24 01:32:59','2024-02-24 01:32:59','Botble\\ACL\\Models\\User'),(84,'create_from_order','Shipping was created from order %order_id%',0,35,39,'2024-02-20 17:32:59','2024-02-20 17:32:59','Botble\\ACL\\Models\\User'),(85,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,39,'2024-02-23 15:33:00','2024-02-24 01:33:00','Botble\\ACL\\Models\\User'),(86,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,39,'2024-02-24 01:33:00','2024-02-24 01:33:00','Botble\\ACL\\Models\\User'),(87,'create_from_order','Shipping was created from order %order_id%',0,36,41,'2024-02-22 01:33:00','2024-02-22 01:33:00','Botble\\ACL\\Models\\User'),(88,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,41,'2024-02-23 17:33:01','2024-02-24 01:33:01','Botble\\ACL\\Models\\User'),(89,'create_from_order','Shipping was created from order %order_id%',0,37,43,'2024-02-22 07:33:01','2024-02-22 07:33:01','Botble\\ACL\\Models\\User'),(90,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,43,'2024-02-23 19:33:02','2024-02-24 01:33:02','Botble\\ACL\\Models\\User'),(91,'create_from_order','Shipping was created from order %order_id%',0,38,44,'2024-02-23 01:33:02','2024-02-23 01:33:02','Botble\\ACL\\Models\\User'),(92,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,44,'2024-02-23 19:33:02','2024-02-24 01:33:02','Botble\\ACL\\Models\\User'),(93,'create_from_order','Shipping was created from order %order_id%',0,39,45,'2024-02-23 07:33:02','2024-02-23 07:33:02','Botble\\ACL\\Models\\User'),(94,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,45,'2024-02-23 19:33:03','2024-02-24 01:33:03','Botble\\ACL\\Models\\User'),(95,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,45,'2024-02-24 01:33:03','2024-02-24 01:33:03','Botble\\ACL\\Models\\User'),(96,'create_from_order','Shipping was created from order %order_id%',0,40,47,'2024-02-22 21:33:03','2024-02-22 21:33:03','Botble\\ACL\\Models\\User'),(97,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,40,47,'2024-02-23 21:33:04','2024-02-24 01:33:04','Botble\\ACL\\Models\\User'),(98,'create_from_order','Shipping was created from order %order_id%',0,41,48,'2024-02-23 21:33:04','2024-02-23 21:33:04','Botble\\ACL\\Models\\User'),(99,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,41,48,'2024-02-23 21:33:04','2024-02-24 01:33:04','Botble\\ACL\\Models\\User'),(100,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,48,'2024-02-24 01:33:04','2024-02-24 01:33:04','Botble\\ACL\\Models\\User'),(101,'create_from_order','Shipping was created from order %order_id%',0,42,50,'2024-02-23 05:33:04','2024-02-23 05:33:04','Botble\\ACL\\Models\\User'),(102,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,42,50,'2024-02-23 23:33:05','2024-02-24 01:33:05','Botble\\ACL\\Models\\User');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,2415.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:49','2024-02-24 01:32:49','JJD0082447734','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-03 08:32:49',NULL,NULL,NULL),(2,2,NULL,2319.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:50','2024-02-24 01:32:50','JJD0090559492','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-27 08:32:50',NULL,NULL,NULL),(3,3,NULL,590.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:50','2024-02-24 01:32:50','JJD0099652998','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-03 08:32:50','2024-02-24 08:32:50',NULL,NULL),(4,4,NULL,2366.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:50','2024-02-24 01:32:50','JJD007635522','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-26 08:32:50','2024-02-24 08:32:50',NULL,NULL),(5,6,NULL,1977.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:51','2024-02-24 01:32:51','JJD0045628160','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-04 08:32:51',NULL,NULL,NULL),(6,7,NULL,1728.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:51','2024-02-24 01:32:51','JJD0044624048','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-29 08:32:51','2024-02-24 08:32:51',NULL,NULL),(7,8,NULL,871.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:51','2024-02-24 01:32:51','JJD0077621276','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-27 08:32:51',NULL,NULL,NULL),(8,9,NULL,1557.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:51','2024-02-24 01:32:51','JJD0046942906','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-04 08:32:51','2024-02-24 08:32:51',NULL,NULL),(9,10,NULL,3535.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:52','2024-02-24 01:32:52','JJD0097029863','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-29 08:32:52',NULL,NULL,NULL),(10,11,NULL,1034.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:52','2024-02-24 01:32:52','JJD0076177534','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-25 08:32:52','2024-02-24 08:32:52',NULL,NULL),(11,12,NULL,1152.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:52','2024-02-24 01:32:52','JJD001823249','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-27 08:32:52',NULL,NULL,NULL),(12,13,NULL,5058.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:52','2024-02-24 01:32:52','JJD0067936321','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-02 08:32:52','2024-02-24 08:32:52',NULL,NULL),(13,15,NULL,1682.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:53','2024-02-24 01:32:53','JJD0060711929','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-26 08:32:53','2024-02-24 08:32:53',NULL,NULL),(14,16,NULL,773.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:53','2024-02-24 01:32:53','JJD0049038001','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-28 08:32:53','2024-02-24 08:32:53',NULL,NULL),(15,17,NULL,1557.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:53','2024-02-24 01:32:53','JJD0088752103','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-04 08:32:53',NULL,NULL,NULL),(16,18,NULL,1450.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:54','2024-02-24 01:32:54','JJD0037505447','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-28 08:32:54',NULL,NULL,NULL),(17,19,NULL,678.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:54','2024-02-24 01:32:54','JJD0080704059','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-05 08:32:54','2024-02-24 08:32:54',NULL,NULL),(18,20,NULL,1682.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:54','2024-02-24 01:32:54','JJD0044924130','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-04 08:32:54',NULL,NULL,NULL),(19,21,NULL,4171.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:54','2024-02-24 01:32:54','JJD002674255','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-29 08:32:54','2024-02-24 08:32:54',NULL,NULL),(20,22,NULL,871.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:55','2024-02-24 01:32:55','JJD0049362911','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-01 08:32:55',NULL,NULL,NULL),(21,23,NULL,4858.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:55','2024-02-24 01:32:55','JJD0089519405','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-26 08:32:55','2024-02-24 08:32:55',NULL,NULL),(22,26,NULL,1282.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:55','2024-02-24 01:32:55','JJD0079237499','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-26 08:32:55',NULL,NULL,NULL),(23,27,NULL,1014.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:56','2024-02-24 01:32:56','JJD0036551902','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-03 08:32:56','2024-02-24 08:32:56',NULL,NULL),(24,28,NULL,841.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:56','2024-02-24 01:32:56','JJD0070892874','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-02 08:32:56','2024-02-24 08:32:56',NULL,NULL),(25,29,NULL,2177.00,NULL,NULL,'','approved',350.00,'pending','pending',0.00,0,'2024-02-24 01:32:56','2024-02-24 01:32:56','JJD0023683726','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-26 08:32:56',NULL,NULL,NULL),(26,30,NULL,5113.00,NULL,NULL,'','approved',2616.00,'pending','pending',0.00,0,'2024-02-24 01:32:56','2024-02-24 01:32:56','JJD0068866172','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-05 08:32:56',NULL,NULL,NULL),(27,31,NULL,2660.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:57','2024-02-24 01:32:57','JJD0047833426','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-03 08:32:57',NULL,NULL,NULL),(28,32,NULL,2637.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:57','2024-02-24 01:32:57','JJD0041210721','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-29 08:32:57',NULL,NULL,NULL),(29,33,NULL,678.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:57','2024-02-24 01:32:57','JJD0066728263','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-29 08:32:57',NULL,NULL,NULL),(30,34,NULL,3957.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:57','2024-02-24 01:32:57','JJD0013741138','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-25 08:32:57',NULL,NULL,NULL),(31,35,NULL,1849.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:58','2024-02-24 01:32:58','JJD0082675402','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-29 08:32:58',NULL,NULL,NULL),(32,36,NULL,2613.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:58','2024-02-24 01:32:58','JJD0032651483','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-27 08:32:58',NULL,NULL,NULL),(33,37,NULL,2154.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:32:59','2024-02-24 01:32:59','JJD0020941328','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-03 08:32:59',NULL,NULL,NULL),(34,38,NULL,517.00,NULL,NULL,'','delivered',117.00,'completed','pending',0.00,0,'2024-02-24 01:32:59','2024-02-24 01:32:59','JJD0071181002','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-29 08:32:59','2024-02-24 08:32:59',NULL,NULL),(35,39,NULL,678.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:33:00','2024-02-24 01:33:00','JJD0052986431','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-02 08:33:00','2024-02-24 08:33:00',NULL,NULL),(36,41,NULL,517.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:33:01','2024-02-24 01:33:01','JJD0057929543','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-03 08:33:01',NULL,NULL,NULL),(37,43,NULL,1038.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:33:02','2024-02-24 01:33:02','JJD0082610931','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-05 08:33:02',NULL,NULL,NULL),(38,44,NULL,1758.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:33:02','2024-02-24 01:33:02','JJD0051435418','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-04 08:33:02',NULL,NULL,NULL),(39,45,NULL,1546.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:33:03','2024-02-24 01:33:03','JJD0010513846','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-28 08:33:03','2024-02-24 08:33:03',NULL,NULL),(40,47,NULL,1977.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:33:04','2024-02-24 01:33:04','JJD0070059686','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-04 08:33:04',NULL,NULL,NULL),(41,48,NULL,1014.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-24 01:33:04','2024-02-24 01:33:04','JJD0051961169','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-03 08:33:04','2024-02-24 08:33:04',NULL,NULL),(42,50,NULL,595.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-24 01:33:05','2024-02-24 01:33:05','JJD0049675930','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-05 08:33:05',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-02-24 01:32:37','2024-02-24 01:32:37');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-02-24 01:32:37','2024-02-24 01:32:37');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Nest','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2024-02-24 01:32:37','2024-02-24 01:32:37');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-02-24 01:32:33','2024-02-24 01:32:33'),(2,'None',0.000000,2,'published','2024-02-24 01:32:33','2024-02-24 01:32:33'),(3,'Import Tax',15.000000,3,'published','2024-02-24 01:32:33','2024-02-24 01:32:33');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2024-02-24 01:32:24','2024-02-24 01:32:24',NULL),(2,'Payment',1,'published','2024-02-24 01:32:24','2024-02-24 01:32:24',NULL),(3,'Order &amp; Returns',2,'published','2024-02-24 01:32:24','2024-02-24 01:32:24',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-02-24 01:32:24','2024-02-24 01:32:24'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-02-24 01:32:24','2024-02-24 01:32:24'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-02-24 01:32:24','2024-02-24 01:32:24'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-02-24 01:32:24','2024-02-24 01:32:24'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-02-24 01:32:24','2024-02-24 01:32:24'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-02-24 01:32:24','2024-02-24 01:32:24'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-02-24 01:32:24','2024-02-24 01:32:24'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-02-24 01:32:24','2024-02-24 01:32:24'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-02-24 01:32:24','2024-02-24 01:32:24'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-02-24 01:32:24','2024-02-24 01:32:24');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','9a470db7f3d441a617fd0a11eb5bc75f',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','6e3202dd0849250a17a8034e2f9345f6',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','aad54f6e209a0ff3b0025bffecb49ac9',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','6a59a974dab927f6f38655d30d605ed9',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','dd615a0a1c4124bdaedc9a2728c63308',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'en_US','919e1bf733f19a5ae7a437830e192a66',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,'en_US','85465865e3ad190ed3fde6649e0aadae',7,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,'en_US','3980eb4483c9978f2884aa94b31aec63',1,'Botble\\Menu\\Models\\MenuLocation'),(9,'en_US','e5fec8918ce5285cc9ec63e61c51beb1',1,'Botble\\Menu\\Models\\Menu'),(10,'en_US','c3438a355ffc4c4596dac3ac9bd717fb',2,'Botble\\Menu\\Models\\MenuLocation'),(11,'en_US','36f723681543e30ec51f1e8551ce8691',2,'Botble\\Menu\\Models\\Menu'),(12,'en_US','c05134f0e15d165199e7992410f6d8ff',3,'Botble\\Menu\\Models\\Menu'),(13,'en_US','aaf8def67bb02d6c50186972e1670ec9',4,'Botble\\Menu\\Models\\Menu'),(14,'en_US','3e14850b0cf231350713485472bbbc09',5,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'icon-1','icon-1',1,'image/png',5327,'product-categories/icon-1.png','[]','2024-02-24 01:32:24','2024-02-24 01:32:24',NULL),(2,0,'icon-10','icon-10',1,'image/png',5327,'product-categories/icon-10.png','[]','2024-02-24 01:32:24','2024-02-24 01:32:24',NULL),(3,0,'icon-11','icon-11',1,'image/png',5327,'product-categories/icon-11.png','[]','2024-02-24 01:32:24','2024-02-24 01:32:24',NULL),(4,0,'icon-12','icon-12',1,'image/png',5327,'product-categories/icon-12.png','[]','2024-02-24 01:32:24','2024-02-24 01:32:24',NULL),(5,0,'icon-13','icon-13',1,'image/png',5327,'product-categories/icon-13.png','[]','2024-02-24 01:32:24','2024-02-24 01:32:24',NULL),(6,0,'icon-14','icon-14',1,'image/png',5327,'product-categories/icon-14.png','[]','2024-02-24 01:32:24','2024-02-24 01:32:24',NULL),(7,0,'icon-2','icon-2',1,'image/png',5327,'product-categories/icon-2.png','[]','2024-02-24 01:32:25','2024-02-24 01:32:25',NULL),(8,0,'icon-3','icon-3',1,'image/png',5327,'product-categories/icon-3.png','[]','2024-02-24 01:32:25','2024-02-24 01:32:25',NULL),(9,0,'icon-4','icon-4',1,'image/png',5327,'product-categories/icon-4.png','[]','2024-02-24 01:32:25','2024-02-24 01:32:25',NULL),(10,0,'icon-5','icon-5',1,'image/png',5327,'product-categories/icon-5.png','[]','2024-02-24 01:32:25','2024-02-24 01:32:25',NULL),(11,0,'icon-6','icon-6',1,'image/png',5327,'product-categories/icon-6.png','[]','2024-02-24 01:32:25','2024-02-24 01:32:25',NULL),(12,0,'icon-7','icon-7',1,'image/png',5327,'product-categories/icon-7.png','[]','2024-02-24 01:32:25','2024-02-24 01:32:25',NULL),(13,0,'icon-8','icon-8',1,'image/png',5327,'product-categories/icon-8.png','[]','2024-02-24 01:32:25','2024-02-24 01:32:25',NULL),(14,0,'icon-9','icon-9',1,'image/png',5327,'product-categories/icon-9.png','[]','2024-02-24 01:32:25','2024-02-24 01:32:25',NULL),(15,0,'image-1','image-1',1,'image/png',5327,'product-categories/image-1.png','[]','2024-02-24 01:32:25','2024-02-24 01:32:25',NULL),(16,0,'image-10','image-10',1,'image/png',5327,'product-categories/image-10.png','[]','2024-02-24 01:32:25','2024-02-24 01:32:25',NULL),(17,0,'image-11','image-11',1,'image/png',5327,'product-categories/image-11.png','[]','2024-02-24 01:32:25','2024-02-24 01:32:25',NULL),(18,0,'image-12','image-12',1,'image/png',5327,'product-categories/image-12.png','[]','2024-02-24 01:32:25','2024-02-24 01:32:25',NULL),(19,0,'image-13','image-13',1,'image/png',5327,'product-categories/image-13.png','[]','2024-02-24 01:32:25','2024-02-24 01:32:25',NULL),(20,0,'image-14','image-14',1,'image/png',5327,'product-categories/image-14.png','[]','2024-02-24 01:32:25','2024-02-24 01:32:25',NULL),(21,0,'image-15','image-15',1,'image/png',5327,'product-categories/image-15.png','[]','2024-02-24 01:32:25','2024-02-24 01:32:25',NULL),(22,0,'image-2','image-2',1,'image/png',5327,'product-categories/image-2.png','[]','2024-02-24 01:32:25','2024-02-24 01:32:25',NULL),(23,0,'image-3','image-3',1,'image/png',5327,'product-categories/image-3.png','[]','2024-02-24 01:32:25','2024-02-24 01:32:25',NULL),(24,0,'image-4','image-4',1,'image/png',5327,'product-categories/image-4.png','[]','2024-02-24 01:32:26','2024-02-24 01:32:26',NULL),(25,0,'image-5','image-5',1,'image/png',5327,'product-categories/image-5.png','[]','2024-02-24 01:32:26','2024-02-24 01:32:26',NULL),(26,0,'image-6','image-6',1,'image/png',5327,'product-categories/image-6.png','[]','2024-02-24 01:32:26','2024-02-24 01:32:26',NULL),(27,0,'image-7','image-7',1,'image/png',5327,'product-categories/image-7.png','[]','2024-02-24 01:32:26','2024-02-24 01:32:26',NULL),(28,0,'image-8','image-8',1,'image/png',5327,'product-categories/image-8.png','[]','2024-02-24 01:32:26','2024-02-24 01:32:26',NULL),(29,0,'image-9','image-9',1,'image/png',5327,'product-categories/image-9.png','[]','2024-02-24 01:32:26','2024-02-24 01:32:26',NULL),(30,0,'1-1','1-1',2,'image/jpeg',9803,'products/1-1.jpg','[]','2024-02-24 01:32:26','2024-02-24 01:32:26',NULL),(31,0,'1','1',2,'image/jpeg',9803,'products/1.jpg','[]','2024-02-24 01:32:26','2024-02-24 01:32:26',NULL),(32,0,'10-1','10-1',2,'image/jpeg',9803,'products/10-1.jpg','[]','2024-02-24 01:32:26','2024-02-24 01:32:26',NULL),(33,0,'10','10',2,'image/jpeg',9803,'products/10.jpg','[]','2024-02-24 01:32:26','2024-02-24 01:32:26',NULL),(34,0,'11-1','11-1',2,'image/jpeg',9803,'products/11-1.jpg','[]','2024-02-24 01:32:26','2024-02-24 01:32:26',NULL),(35,0,'11','11',2,'image/jpeg',9803,'products/11.jpg','[]','2024-02-24 01:32:27','2024-02-24 01:32:27',NULL),(36,0,'12-1','12-1',2,'image/jpeg',9803,'products/12-1.jpg','[]','2024-02-24 01:32:27','2024-02-24 01:32:27',NULL),(37,0,'12','12',2,'image/jpeg',9803,'products/12.jpg','[]','2024-02-24 01:32:27','2024-02-24 01:32:27',NULL),(38,0,'13-1','13-1',2,'image/jpeg',9803,'products/13-1.jpg','[]','2024-02-24 01:32:27','2024-02-24 01:32:27',NULL),(39,0,'13','13',2,'image/jpeg',9803,'products/13.jpg','[]','2024-02-24 01:32:27','2024-02-24 01:32:27',NULL),(40,0,'14-1','14-1',2,'image/jpeg',9803,'products/14-1.jpg','[]','2024-02-24 01:32:27','2024-02-24 01:32:27',NULL),(41,0,'14','14',2,'image/jpeg',9803,'products/14.jpg','[]','2024-02-24 01:32:27','2024-02-24 01:32:27',NULL),(42,0,'15-1','15-1',2,'image/jpeg',9803,'products/15-1.jpg','[]','2024-02-24 01:32:27','2024-02-24 01:32:27',NULL),(43,0,'15','15',2,'image/jpeg',9803,'products/15.jpg','[]','2024-02-24 01:32:27','2024-02-24 01:32:27',NULL),(44,0,'16-1','16-1',2,'image/jpeg',9803,'products/16-1.jpg','[]','2024-02-24 01:32:27','2024-02-24 01:32:27',NULL),(45,0,'16-2','16-2',2,'image/jpeg',9803,'products/16-2.jpg','[]','2024-02-24 01:32:27','2024-02-24 01:32:27',NULL),(46,0,'16-3','16-3',2,'image/jpeg',9803,'products/16-3.jpg','[]','2024-02-24 01:32:27','2024-02-24 01:32:27',NULL),(47,0,'16-4','16-4',2,'image/jpeg',9803,'products/16-4.jpg','[]','2024-02-24 01:32:27','2024-02-24 01:32:27',NULL),(48,0,'16-5','16-5',2,'image/jpeg',9803,'products/16-5.jpg','[]','2024-02-24 01:32:28','2024-02-24 01:32:28',NULL),(49,0,'16-6','16-6',2,'image/jpeg',9803,'products/16-6.jpg','[]','2024-02-24 01:32:28','2024-02-24 01:32:28',NULL),(50,0,'16','16',2,'image/jpeg',9803,'products/16.jpg','[]','2024-02-24 01:32:28','2024-02-24 01:32:28',NULL),(51,0,'17-1','17-1',2,'image/jpeg',9803,'products/17-1.jpg','[]','2024-02-24 01:32:28','2024-02-24 01:32:28',NULL),(52,0,'17','17',2,'image/jpeg',9803,'products/17.jpg','[]','2024-02-24 01:32:28','2024-02-24 01:32:28',NULL),(53,0,'18-1','18-1',2,'image/jpeg',9803,'products/18-1.jpg','[]','2024-02-24 01:32:28','2024-02-24 01:32:28',NULL),(54,0,'18','18',2,'image/jpeg',9803,'products/18.jpg','[]','2024-02-24 01:32:28','2024-02-24 01:32:28',NULL),(55,0,'19-1','19-1',2,'image/jpeg',9803,'products/19-1.jpg','[]','2024-02-24 01:32:28','2024-02-24 01:32:28',NULL),(56,0,'19','19',2,'image/jpeg',9803,'products/19.jpg','[]','2024-02-24 01:32:28','2024-02-24 01:32:28',NULL),(57,0,'2-1','2-1',2,'image/jpeg',9803,'products/2-1.jpg','[]','2024-02-24 01:32:28','2024-02-24 01:32:28',NULL),(58,0,'2','2',2,'image/jpeg',9803,'products/2.jpg','[]','2024-02-24 01:32:28','2024-02-24 01:32:28',NULL),(59,0,'20-1','20-1',2,'image/jpeg',9803,'products/20-1.jpg','[]','2024-02-24 01:32:28','2024-02-24 01:32:28',NULL),(60,0,'20','20',2,'image/jpeg',9803,'products/20.jpg','[]','2024-02-24 01:32:28','2024-02-24 01:32:28',NULL),(61,0,'21-1','21-1',2,'image/jpeg',9803,'products/21-1.jpg','[]','2024-02-24 01:32:29','2024-02-24 01:32:29',NULL),(62,0,'21','21',2,'image/jpeg',9803,'products/21.jpg','[]','2024-02-24 01:32:29','2024-02-24 01:32:29',NULL),(63,0,'22-1','22-1',2,'image/jpeg',9803,'products/22-1.jpg','[]','2024-02-24 01:32:29','2024-02-24 01:32:29',NULL),(64,0,'22','22',2,'image/jpeg',9803,'products/22.jpg','[]','2024-02-24 01:32:29','2024-02-24 01:32:29',NULL),(65,0,'23-1','23-1',2,'image/jpeg',9803,'products/23-1.jpg','[]','2024-02-24 01:32:29','2024-02-24 01:32:29',NULL),(66,0,'23','23',2,'image/jpeg',9803,'products/23.jpg','[]','2024-02-24 01:32:29','2024-02-24 01:32:29',NULL),(67,0,'24-1','24-1',2,'image/jpeg',9803,'products/24-1.jpg','[]','2024-02-24 01:32:29','2024-02-24 01:32:29',NULL),(68,0,'24','24',2,'image/jpeg',9803,'products/24.jpg','[]','2024-02-24 01:32:29','2024-02-24 01:32:29',NULL),(69,0,'3-1','3-1',2,'image/jpeg',9803,'products/3-1.jpg','[]','2024-02-24 01:32:29','2024-02-24 01:32:29',NULL),(70,0,'3','3',2,'image/jpeg',9803,'products/3.jpg','[]','2024-02-24 01:32:29','2024-02-24 01:32:29',NULL),(71,0,'4-1','4-1',2,'image/jpeg',9803,'products/4-1.jpg','[]','2024-02-24 01:32:29','2024-02-24 01:32:29',NULL),(72,0,'4','4',2,'image/jpeg',9803,'products/4.jpg','[]','2024-02-24 01:32:29','2024-02-24 01:32:29',NULL),(73,0,'5-1','5-1',2,'image/jpeg',9803,'products/5-1.jpg','[]','2024-02-24 01:32:30','2024-02-24 01:32:30',NULL),(74,0,'5','5',2,'image/jpeg',9803,'products/5.jpg','[]','2024-02-24 01:32:30','2024-02-24 01:32:30',NULL),(75,0,'6-1','6-1',2,'image/jpeg',9803,'products/6-1.jpg','[]','2024-02-24 01:32:30','2024-02-24 01:32:30',NULL),(76,0,'6','6',2,'image/jpeg',9803,'products/6.jpg','[]','2024-02-24 01:32:30','2024-02-24 01:32:30',NULL),(77,0,'7-1','7-1',2,'image/jpeg',9803,'products/7-1.jpg','[]','2024-02-24 01:32:30','2024-02-24 01:32:30',NULL),(78,0,'7','7',2,'image/jpeg',9803,'products/7.jpg','[]','2024-02-24 01:32:30','2024-02-24 01:32:30',NULL),(79,0,'8-1','8-1',2,'image/jpeg',9803,'products/8-1.jpg','[]','2024-02-24 01:32:30','2024-02-24 01:32:30',NULL),(80,0,'8','8',2,'image/jpeg',9803,'products/8.jpg','[]','2024-02-24 01:32:30','2024-02-24 01:32:30',NULL),(81,0,'9-1','9-1',2,'image/jpeg',9803,'products/9-1.jpg','[]','2024-02-24 01:32:30','2024-02-24 01:32:30',NULL),(82,0,'9','9',2,'image/jpeg',9803,'products/9.jpg','[]','2024-02-24 01:32:30','2024-02-24 01:32:30',NULL),(83,0,'1','1',3,'image/jpeg',9803,'customers/1.jpg','[]','2024-02-24 01:32:33','2024-02-24 01:32:33',NULL),(84,0,'10','10',3,'image/jpeg',9803,'customers/10.jpg','[]','2024-02-24 01:32:33','2024-02-24 01:32:33',NULL),(85,0,'2','2',3,'image/jpeg',9803,'customers/2.jpg','[]','2024-02-24 01:32:33','2024-02-24 01:32:33',NULL),(86,0,'3','3',3,'image/jpeg',9803,'customers/3.jpg','[]','2024-02-24 01:32:33','2024-02-24 01:32:33',NULL),(87,0,'4','4',3,'image/jpeg',9803,'customers/4.jpg','[]','2024-02-24 01:32:33','2024-02-24 01:32:33',NULL),(88,0,'5','5',3,'image/jpeg',9803,'customers/5.jpg','[]','2024-02-24 01:32:33','2024-02-24 01:32:33',NULL),(89,0,'6','6',3,'image/jpeg',9803,'customers/6.jpg','[]','2024-02-24 01:32:33','2024-02-24 01:32:33',NULL),(90,0,'7','7',3,'image/jpeg',9803,'customers/7.jpg','[]','2024-02-24 01:32:34','2024-02-24 01:32:34',NULL),(91,0,'8','8',3,'image/jpeg',9803,'customers/8.jpg','[]','2024-02-24 01:32:34','2024-02-24 01:32:34',NULL),(92,0,'9','9',3,'image/jpeg',9803,'customers/9.jpg','[]','2024-02-24 01:32:34','2024-02-24 01:32:34',NULL),(93,0,'1','1',4,'image/png',17727,'flash-sales/1.png','[]','2024-02-24 01:32:37','2024-02-24 01:32:37',NULL),(94,0,'2','2',4,'image/png',12278,'flash-sales/2.png','[]','2024-02-24 01:32:37','2024-02-24 01:32:37',NULL),(95,0,'3','3',4,'image/png',12278,'flash-sales/3.png','[]','2024-02-24 01:32:37','2024-02-24 01:32:37',NULL),(96,0,'4','4',4,'image/png',12278,'flash-sales/4.png','[]','2024-02-24 01:32:37','2024-02-24 01:32:37',NULL),(97,0,'5','5',4,'image/png',12278,'flash-sales/5.png','[]','2024-02-24 01:32:37','2024-02-24 01:32:37',NULL),(98,0,'1-1','1-1',5,'image/png',28526,'sliders/1-1.png','[]','2024-02-24 01:32:37','2024-02-24 01:32:37',NULL),(99,0,'1-2','1-2',5,'image/png',28526,'sliders/1-2.png','[]','2024-02-24 01:32:37','2024-02-24 01:32:37',NULL),(100,0,'2-1','2-1',5,'image/png',15581,'sliders/2-1.png','[]','2024-02-24 01:32:37','2024-02-24 01:32:37',NULL),(101,0,'2-2','2-2',5,'image/png',15581,'sliders/2-2.png','[]','2024-02-24 01:32:38','2024-02-24 01:32:38',NULL),(102,0,'3-1','3-1',5,'image/png',28526,'sliders/3-1.png','[]','2024-02-24 01:32:38','2024-02-24 01:32:38',NULL),(103,0,'3-2','3-2',5,'image/png',28526,'sliders/3-2.png','[]','2024-02-24 01:32:38','2024-02-24 01:32:38',NULL),(104,0,'4-1','4-1',5,'image/png',28526,'sliders/4-1.png','[]','2024-02-24 01:32:38','2024-02-24 01:32:38',NULL),(105,0,'4-2','4-2',5,'image/png',28526,'sliders/4-2.png','[]','2024-02-24 01:32:38','2024-02-24 01:32:38',NULL),(106,0,'5-1','5-1',5,'image/png',23916,'sliders/5-1.png','[]','2024-02-24 01:32:38','2024-02-24 01:32:38',NULL),(107,0,'5-2','5-2',5,'image/png',23916,'sliders/5-2.png','[]','2024-02-24 01:32:38','2024-02-24 01:32:38',NULL),(108,0,'banner-1','banner-1',5,'image/png',212534,'sliders/banner-1.png','[]','2024-02-24 01:32:39','2024-02-24 01:32:39',NULL),(109,0,'thumbnail-1','thumbnail-1',5,'image/jpeg',9803,'sliders/thumbnail-1.jpg','[]','2024-02-24 01:32:39','2024-02-24 01:32:39',NULL),(110,0,'thumbnail-2','thumbnail-2',5,'image/jpeg',9803,'sliders/thumbnail-2.jpg','[]','2024-02-24 01:32:39','2024-02-24 01:32:39',NULL),(111,0,'thumbnail-3','thumbnail-3',5,'image/jpeg',9803,'sliders/thumbnail-3.jpg','[]','2024-02-24 01:32:39','2024-02-24 01:32:39',NULL),(112,0,'thumbnail-4','thumbnail-4',5,'image/jpeg',9803,'sliders/thumbnail-4.jpg','[]','2024-02-24 01:32:39','2024-02-24 01:32:39',NULL),(113,0,'thumbnail-5','thumbnail-5',5,'image/jpeg',9803,'sliders/thumbnail-5.jpg','[]','2024-02-24 01:32:39','2024-02-24 01:32:39',NULL),(114,0,'thumbnail-6','thumbnail-6',5,'image/jpeg',9803,'sliders/thumbnail-6.jpg','[]','2024-02-24 01:32:39','2024-02-24 01:32:39',NULL),(115,0,'1','1',6,'image/png',9803,'news/1.png','[]','2024-02-24 01:32:39','2024-02-24 01:32:39',NULL),(116,0,'10','10',6,'image/png',9803,'news/10.png','[]','2024-02-24 01:32:40','2024-02-24 01:32:40',NULL),(117,0,'11','11',6,'image/png',9803,'news/11.png','[]','2024-02-24 01:32:40','2024-02-24 01:32:40',NULL),(118,0,'2','2',6,'image/png',9803,'news/2.png','[]','2024-02-24 01:32:40','2024-02-24 01:32:40',NULL),(119,0,'3','3',6,'image/png',9803,'news/3.png','[]','2024-02-24 01:32:40','2024-02-24 01:32:40',NULL),(120,0,'4','4',6,'image/png',9803,'news/4.png','[]','2024-02-24 01:32:40','2024-02-24 01:32:40',NULL),(121,0,'5','5',6,'image/png',9803,'news/5.png','[]','2024-02-24 01:32:40','2024-02-24 01:32:40',NULL),(122,0,'6','6',6,'image/png',9803,'news/6.png','[]','2024-02-24 01:32:40','2024-02-24 01:32:40',NULL),(123,0,'7','7',6,'image/png',9803,'news/7.png','[]','2024-02-24 01:32:40','2024-02-24 01:32:40',NULL),(124,0,'8','8',6,'image/png',9803,'news/8.png','[]','2024-02-24 01:32:40','2024-02-24 01:32:40',NULL),(125,0,'9','9',6,'image/png',9803,'news/9.png','[]','2024-02-24 01:32:40','2024-02-24 01:32:40',NULL),(126,0,'app-store','app-store',7,'image/jpeg',1928,'general/app-store.jpg','[]','2024-02-24 01:32:42','2024-02-24 01:32:42',NULL),(127,0,'category-1','category-1',7,'image/png',1070,'general/category-1.png','[]','2024-02-24 01:32:42','2024-02-24 01:32:42',NULL),(128,0,'clock','clock',7,'image/png',4426,'general/clock.png','[]','2024-02-24 01:32:42','2024-02-24 01:32:42',NULL),(129,0,'credit-card','credit-card',7,'image/png',1446,'general/credit-card.png','[]','2024-02-24 01:32:42','2024-02-24 01:32:42',NULL),(130,0,'facebook','facebook',7,'image/png',768,'general/facebook.png','[]','2024-02-24 01:32:42','2024-02-24 01:32:42',NULL),(131,0,'favicon','favicon',7,'image/png',5331,'general/favicon.png','[]','2024-02-24 01:32:42','2024-02-24 01:32:42',NULL),(132,0,'google-play','google-play',7,'image/jpeg',1928,'general/google-play.jpg','[]','2024-02-24 01:32:42','2024-02-24 01:32:42',NULL),(133,0,'header-bg','header-bg',7,'image/png',36758,'general/header-bg.jpg','[]','2024-02-24 01:32:42','2024-02-24 01:32:42',NULL),(134,0,'home-6','home-6',7,'image/jpeg',103307,'general/home-6.jpeg','[]','2024-02-24 01:32:42','2024-02-24 01:32:42',NULL),(135,0,'icon-1','icon-1',7,'image/png',3159,'general/icon-1.png','[]','2024-02-24 01:32:42','2024-02-24 01:32:42',NULL),(136,0,'icon-2','icon-2',7,'image/png',5368,'general/icon-2.png','[]','2024-02-24 01:32:43','2024-02-24 01:32:43',NULL),(137,0,'icon-3','icon-3',7,'image/png',3459,'general/icon-3.png','[]','2024-02-24 01:32:43','2024-02-24 01:32:43',NULL),(138,0,'icon-4','icon-4',7,'image/png',3373,'general/icon-4.png','[]','2024-02-24 01:32:43','2024-02-24 01:32:43',NULL),(139,0,'icon-5','icon-5',7,'image/png',4430,'general/icon-5.png','[]','2024-02-24 01:32:43','2024-02-24 01:32:43',NULL),(140,0,'instagram','instagram',7,'image/png',2939,'general/instagram.png','[]','2024-02-24 01:32:43','2024-02-24 01:32:43',NULL),(141,0,'loading','loading',7,'image/gif',23986,'general/loading.gif','[]','2024-02-24 01:32:43','2024-02-24 01:32:43',NULL),(142,0,'login-1','login-1',7,'image/png',20332,'general/login-1.png','[]','2024-02-24 01:32:44','2024-02-24 01:32:44',NULL),(143,0,'logo','logo',7,'image/png',16262,'general/logo.png','[]','2024-02-24 01:32:44','2024-02-24 01:32:44',NULL),(144,0,'newsletter-background-image','newsletter-background-image',7,'image/png',58306,'general/newsletter-background-image.png','[]','2024-02-24 01:32:44','2024-02-24 01:32:44',NULL),(145,0,'newsletter-image','newsletter-image',7,'image/png',14191,'general/newsletter-image.png','[]','2024-02-24 01:32:44','2024-02-24 01:32:44',NULL),(146,0,'open-graph-image','open-graph-image',7,'image/png',387270,'general/open-graph-image.png','[]','2024-02-24 01:32:44','2024-02-24 01:32:44',NULL),(147,0,'paper-plane','paper-plane',7,'image/png',5296,'general/paper-plane.png','[]','2024-02-24 01:32:44','2024-02-24 01:32:44',NULL),(148,0,'payment-methods','payment-methods',7,'image/png',476,'general/payment-methods.png','[]','2024-02-24 01:32:44','2024-02-24 01:32:44',NULL),(149,0,'pinterest','pinterest',7,'image/png',2283,'general/pinterest.png','[]','2024-02-24 01:32:44','2024-02-24 01:32:44',NULL),(150,0,'twitter','twitter',7,'image/png',2020,'general/twitter.png','[]','2024-02-24 01:32:45','2024-02-24 01:32:45',NULL),(151,0,'youtube','youtube',7,'image/png',1263,'general/youtube.png','[]','2024-02-24 01:32:45','2024-02-24 01:32:45',NULL),(152,0,'1','1',8,'image/png',11540,'promotion/1.png','[]','2024-02-24 01:32:45','2024-02-24 01:32:45',NULL),(153,0,'10','10',8,'image/png',7883,'promotion/10.png','[]','2024-02-24 01:32:45','2024-02-24 01:32:45',NULL),(154,0,'11','11',8,'image/png',7883,'promotion/11.png','[]','2024-02-24 01:32:45','2024-02-24 01:32:45',NULL),(155,0,'12','12',8,'image/png',7883,'promotion/12.png','[]','2024-02-24 01:32:45','2024-02-24 01:32:45',NULL),(156,0,'2','2',8,'image/png',11540,'promotion/2.png','[]','2024-02-24 01:32:45','2024-02-24 01:32:45',NULL),(157,0,'3','3',8,'image/png',11540,'promotion/3.png','[]','2024-02-24 01:32:45','2024-02-24 01:32:45',NULL),(158,0,'4','4',8,'image/png',13954,'promotion/4.png','[]','2024-02-24 01:32:45','2024-02-24 01:32:45',NULL),(159,0,'5','5',8,'image/png',26326,'promotion/5.png','[]','2024-02-24 01:32:45','2024-02-24 01:32:45',NULL),(160,0,'6','6',8,'image/png',26326,'promotion/6.png','[]','2024-02-24 01:32:45','2024-02-24 01:32:45',NULL),(161,0,'7','7',8,'image/png',14402,'promotion/7.png','[]','2024-02-24 01:32:45','2024-02-24 01:32:45',NULL),(162,0,'8','8',8,'image/png',7028,'promotion/8.png','[]','2024-02-24 01:32:46','2024-02-24 01:32:46',NULL),(163,0,'9','9',8,'image/png',7883,'promotion/9.png','[]','2024-02-24 01:32:46','2024-02-24 01:32:46',NULL),(164,0,'1','1',9,'image/png',5327,'stores/1.png','[]','2024-02-24 01:32:46','2024-02-24 01:32:46',NULL),(165,0,'10','10',9,'image/png',5327,'stores/10.png','[]','2024-02-24 01:32:46','2024-02-24 01:32:46',NULL),(166,0,'11','11',9,'image/png',5327,'stores/11.png','[]','2024-02-24 01:32:46','2024-02-24 01:32:46',NULL),(167,0,'12','12',9,'image/png',5327,'stores/12.png','[]','2024-02-24 01:32:46','2024-02-24 01:32:46',NULL),(168,0,'13','13',9,'image/png',5327,'stores/13.png','[]','2024-02-24 01:32:46','2024-02-24 01:32:46',NULL),(169,0,'14','14',9,'image/png',5327,'stores/14.png','[]','2024-02-24 01:32:46','2024-02-24 01:32:46',NULL),(170,0,'15','15',9,'image/png',5327,'stores/15.png','[]','2024-02-24 01:32:46','2024-02-24 01:32:46',NULL),(171,0,'16','16',9,'image/png',5327,'stores/16.png','[]','2024-02-24 01:32:46','2024-02-24 01:32:46',NULL),(172,0,'17','17',9,'image/png',5327,'stores/17.png','[]','2024-02-24 01:32:46','2024-02-24 01:32:46',NULL),(173,0,'2','2',9,'image/png',5327,'stores/2.png','[]','2024-02-24 01:32:46','2024-02-24 01:32:46',NULL),(174,0,'3','3',9,'image/png',5327,'stores/3.png','[]','2024-02-24 01:32:46','2024-02-24 01:32:46',NULL),(175,0,'4','4',9,'image/png',5327,'stores/4.png','[]','2024-02-24 01:32:47','2024-02-24 01:32:47',NULL),(176,0,'5','5',9,'image/png',5327,'stores/5.png','[]','2024-02-24 01:32:47','2024-02-24 01:32:47',NULL),(177,0,'6','6',9,'image/png',5327,'stores/6.png','[]','2024-02-24 01:32:47','2024-02-24 01:32:47',NULL),(178,0,'7','7',9,'image/png',5327,'stores/7.png','[]','2024-02-24 01:32:47','2024-02-24 01:32:47',NULL),(179,0,'8','8',9,'image/png',5327,'stores/8.png','[]','2024-02-24 01:32:47','2024-02-24 01:32:47',NULL),(180,0,'9','9',9,'image/png',5327,'stores/9.png','[]','2024-02-24 01:32:47','2024-02-24 01:32:47',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'product-categories',NULL,'product-categories',0,'2024-02-24 01:32:24','2024-02-24 01:32:24',NULL),(2,0,'products',NULL,'products',0,'2024-02-24 01:32:26','2024-02-24 01:32:26',NULL),(3,0,'customers',NULL,'customers',0,'2024-02-24 01:32:33','2024-02-24 01:32:33',NULL),(4,0,'flash-sales',NULL,'flash-sales',0,'2024-02-24 01:32:37','2024-02-24 01:32:37',NULL),(5,0,'sliders',NULL,'sliders',0,'2024-02-24 01:32:37','2024-02-24 01:32:37',NULL),(6,0,'news',NULL,'news',0,'2024-02-24 01:32:39','2024-02-24 01:32:39',NULL),(7,0,'general',NULL,'general',0,'2024-02-24 01:32:42','2024-02-24 01:32:42',NULL),(8,0,'promotion',NULL,'promotion',0,'2024-02-24 01:32:45','2024-02-24 01:32:45',NULL),(9,0,'stores',NULL,'stores',0,'2024-02-24 01:32:46','2024-02-24 01:32:46',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-02-24 01:32:48','2024-02-24 01:32:48'),(2,2,'header-navigation','2024-02-24 01:32:48','2024-02-24 01:32:48');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/','fi-rs-home',0,'Home',NULL,'_self',1,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(2,1,1,1,'Botble\\Page\\Models\\Page','/',NULL,0,'Home 1',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(6,1,1,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Home 5',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(7,1,1,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Home 6',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(9,1,8,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(10,1,8,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(11,1,8,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(12,1,8,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Products Of Category',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(13,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',1,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(14,1,13,NULL,NULL,'/stores',NULL,0,'Stores - Grid',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(15,1,13,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Stores - List',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(16,1,13,NULL,NULL,'/stores/gopro',NULL,0,'Store - Detail',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(17,1,0,NULL,NULL,'/products/seeds-of-change-organic-quinoe-digital',NULL,0,'Product',NULL,'_self',1,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(18,1,17,NULL,NULL,'/products/seeds-of-change-organic-quinoe-digital',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(19,1,17,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(20,1,17,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Product Full Width',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(21,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(22,1,21,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Grid',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(23,1,21,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Blog List',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(24,1,21,14,'Botble\\Page\\Models\\Page','/blog-big',NULL,0,'Blog Big',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(25,1,21,15,'Botble\\Page\\Models\\Page','/blog-wide',NULL,0,'Blog Wide',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(26,1,21,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post',NULL,'_self',1,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(27,1,26,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(28,1,26,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(29,1,26,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Single Post Full Width',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(30,1,26,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(31,1,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(32,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(33,2,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(34,2,0,NULL,NULL,'/orders/tracking',NULL,0,'Order Tracking',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:48'),(35,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Men',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(36,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Women',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(37,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Accessories',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(38,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Shoes',NULL,'_self',0,'2024-02-24 01:32:48','2024-02-24 01:32:49'),(39,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Denim',NULL,'_self',0,'2024-02-24 01:32:49','2024-02-24 01:32:49'),(40,3,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Dress',NULL,'_self',0,'2024-02-24 01:32:49','2024-02-24 01:32:49'),(41,4,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact Us',NULL,'_self',0,'2024-02-24 01:32:49','2024-02-24 01:32:49'),(42,4,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2024-02-24 01:32:49','2024-02-24 01:32:49'),(43,4,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2024-02-24 01:32:49','2024-02-24 01:32:49'),(44,4,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2024-02-24 01:32:49','2024-02-24 01:32:49'),(45,4,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Returns & Exchanges',NULL,'_self',0,'2024-02-24 01:32:49','2024-02-24 01:32:49'),(46,4,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Shipping & Delivery',NULL,'_self',0,'2024-02-24 01:32:49','2024-02-24 01:32:49'),(47,4,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2024-02-24 01:32:49','2024-02-24 01:32:49'),(48,5,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2024-02-24 01:32:49','2024-02-24 01:32:49'),(49,5,0,NULL,NULL,'#',NULL,0,'Affiliate',NULL,'_self',0,'2024-02-24 01:32:49','2024-02-24 01:32:49'),(50,5,0,NULL,NULL,'#',NULL,0,'Career',NULL,'_self',0,'2024-02-24 01:32:49','2024-02-24 01:32:49'),(51,5,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2024-02-24 01:32:49','2024-02-24 01:32:49');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-02-24 01:32:48','2024-02-24 01:32:48'),(2,'Header menu','header-menu','published','2024-02-24 01:32:48','2024-02-24 01:32:48'),(3,'Product categories','product-categories','published','2024-02-24 01:32:48','2024-02-24 01:32:48'),(4,'Information','information','published','2024-02-24 01:32:49','2024-02-24 01:32:49'),(5,'Company','company','published','2024-02-24 01:32:49','2024-02-24 01:32:49');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'background_color','[\"#F2FCE4\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-24 01:32:26','2024-02-24 01:32:26'),(2,'background_color','[\"#FFFCEB\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-24 01:32:26','2024-02-24 01:32:26'),(3,'background_color','[\"#ECFFEC\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-24 01:32:26','2024-02-24 01:32:26'),(4,'background_color','[\"#FEEFEA\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-24 01:32:26','2024-02-24 01:32:26'),(5,'background_color','[\"#FFF3EB\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-24 01:32:26','2024-02-24 01:32:26'),(6,'background_color','[\"#FFF3FF\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-24 01:32:26','2024-02-24 01:32:26'),(7,'background_color','[\"#F2FCE4\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-24 01:32:26','2024-02-24 01:32:26'),(8,'background_color','[\"#FFFCEB\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-24 01:32:26','2024-02-24 01:32:26'),(9,'background_color','[\"#ECFFEC\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-24 01:32:26','2024-02-24 01:32:26'),(10,'background_color','[\"#FEEFEA\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-24 01:32:26','2024-02-24 01:32:26'),(11,'background_color','[\"#FFF3EB\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-24 01:32:26','2024-02-24 01:32:26'),(12,'background_color','[\"#FFF3FF\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-24 01:32:26','2024-02-24 01:32:26'),(13,'background_color','[\"#F2FCE4\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-24 01:32:26','2024-02-24 01:32:26'),(14,'background_color','[\"#FFFCEB\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-24 01:32:26','2024-02-24 01:32:26'),(15,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(16,'faq_ids','[[4,7,3,5,10]]',1,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(17,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(18,'is_popular','[\"1\"]',2,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(19,'faq_ids','[[7,10,3,4,6]]',2,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(20,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(21,'faq_ids','[[9,10,6,1,8]]',3,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(22,'is_popular','[\"1\"]',4,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(23,'faq_ids','[[2,9,6,8,1]]',4,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(24,'faq_ids','[[1,3,4,10,7]]',5,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(25,'is_popular','[\"1\"]',6,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(26,'faq_ids','[[6,9,1,8,5]]',6,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(27,'faq_ids','[[3,1,8,10,5]]',7,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(28,'is_popular','[\"1\"]',8,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(29,'faq_ids','[[5,8,3,6,9]]',8,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(30,'faq_ids','[[7,4,3,5,2]]',9,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(31,'is_popular','[\"1\"]',10,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(32,'faq_ids','[[10,1,5,9,6]]',10,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(33,'faq_ids','[[3,9,8,5,6]]',11,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(34,'is_popular','[\"1\"]',12,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(35,'faq_ids','[[7,6,5,8,3]]',12,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(36,'faq_ids','[[6,3,7,5,9]]',13,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(37,'is_popular','[\"1\"]',14,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(38,'faq_ids','[[6,4,10,5,7]]',14,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(39,'faq_ids','[[7,3,10,1,8]]',15,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(40,'is_popular','[\"1\"]',16,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(41,'faq_ids','[[8,3,10,6,4]]',16,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(42,'faq_ids','[[1,5,9,6,2]]',17,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(43,'is_popular','[\"1\"]',18,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(44,'faq_ids','[[9,10,6,4,7]]',18,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(45,'faq_ids','[[5,9,2,3,4]]',19,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(46,'is_popular','[\"1\"]',20,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(47,'faq_ids','[[1,9,6,4,2]]',20,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(48,'faq_ids','[[10,6,7,2,9]]',21,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(49,'is_popular','[\"1\"]',22,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(50,'faq_ids','[[7,4,3,9,10]]',22,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(51,'faq_ids','[[4,8,5,10,1]]',23,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(52,'is_popular','[\"1\"]',24,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(53,'faq_ids','[[10,3,5,9,1]]',24,'Botble\\Ecommerce\\Models\\Product','2024-02-24 01:32:31','2024-02-24 01:32:31'),(54,'image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2024-02-24 01:32:37','2024-02-24 01:32:37'),(55,'image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2024-02-24 01:32:37','2024-02-24 01:32:37'),(56,'image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2024-02-24 01:32:37','2024-02-24 01:32:37'),(57,'image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2024-02-24 01:32:37','2024-02-24 01:32:37'),(58,'image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2024-02-24 01:32:37','2024-02-24 01:32:37'),(59,'simple_slider_style','[\"style-4\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-02-24 01:32:39','2024-02-24 01:32:39'),(60,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-02-24 01:32:39','2024-02-24 01:32:39'),(61,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-02-24 01:32:39','2024-02-24 01:32:39'),(62,'simple_slider_style','[\"style-1\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-02-24 01:32:39','2024-02-24 01:32:39'),(63,'simple_slider_style','[\"style-5\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-02-24 01:32:39','2024-02-24 01:32:39'),(64,'simple_slider_style','[\"style-6\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-02-24 01:32:39','2024-02-24 01:32:39'),(65,'simple_slider_style','[\"style-1\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-02-24 01:32:39','2024-02-24 01:32:39'),(66,'header_style','[\"header-style-5\"]',16,'Botble\\Page\\Models\\Page','2024-02-24 01:32:41','2024-02-24 01:32:41'),(67,'header_style','[\"header-style-5\"]',17,'Botble\\Page\\Models\\Page','2024-02-24 01:32:41','2024-02-24 01:32:41'),(68,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(69,'subtitle','[\"Everyday Fresh & \\nClean with Our \\nProducts\"]',1,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(70,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(71,'subtitle','[\"Make your Breakfast Healthy and Easy\"]',2,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(72,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(73,'subtitle','[\"The best Organic Products Online\"]',3,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(74,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(75,'subtitle','[\"Bring nature into your home\"]',4,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(76,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(77,'subtitle','[\"Delivered to your home\"]',5,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(78,'button_text','[\"Shop now\"]',6,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(79,'subtitle','[\"Save 17% <br \\/>on Oganic <br \\/>Juice\"]',6,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(80,'button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(81,'subtitle','[\"Everyday Fresh & Clean with Our Products\"]',7,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(82,'button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(83,'subtitle','[\"The best Organic Products Online\"]',8,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(84,'button_text','[\"Go to supplier\"]',9,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(85,'subtitle','[\"Everyday Fresh with\\n Our Products\"]',9,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(86,'button_text','[\"Go to supplier\"]',10,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(87,'subtitle','[\"100% guaranteed all\\n Fresh items\"]',10,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(88,'button_text','[\"Go to supplier\"]',11,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(89,'subtitle','[\"Special grocery sale\\n off this month\"]',11,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(90,'button_text','[\"Go to supplier\"]',12,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(91,'subtitle','[\"Enjoy 15% OFF for all\\n vegetable and fruit\"]',12,'Botble\\Ads\\Models\\Ads','2024-02-24 01:32:46','2024-02-24 01:32:46'),(92,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',1,'Botble\\Marketplace\\Models\\Store','2024-02-24 01:32:48','2024-02-24 01:32:48'),(93,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',2,'Botble\\Marketplace\\Models\\Store','2024-02-24 01:32:48','2024-02-24 01:32:48'),(94,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',3,'Botble\\Marketplace\\Models\\Store','2024-02-24 01:32:48','2024-02-24 01:32:48'),(95,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',4,'Botble\\Marketplace\\Models\\Store','2024-02-24 01:32:48','2024-02-24 01:32:48'),(96,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',5,'Botble\\Marketplace\\Models\\Store','2024-02-24 01:32:48','2024-02-24 01:32:48');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_06_100448_change_random_hash_for_media',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2024_01_07_072057_update_theme_option_for_login_page',1),(34,'2020_11_18_150916_ads_create_ads_table',2),(35,'2021_12_02_035301_add_ads_translations_table',2),(36,'2023_04_17_062645_add_open_in_new_tab',2),(37,'2023_11_07_023805_add_tablet_mobile_image',2),(38,'2015_06_29_025744_create_audit_history',3),(39,'2023_11_14_033417_change_request_column_in_table_audit_histories',3),(40,'2015_06_18_033822_create_blog_table',4),(41,'2021_02_16_092633_remove_default_value_for_author_type',4),(42,'2021_12_03_030600_create_blog_translations',4),(43,'2022_04_19_113923_add_index_to_table_posts',4),(44,'2023_08_29_074620_make_column_author_id_nullable',4),(45,'2016_06_17_091537_create_contacts_table',5),(46,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',5),(47,'2020_03_05_041139_create_ecommerce_tables',6),(48,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(49,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(50,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(51,'2021_02_18_073505_update_table_ec_reviews',6),(52,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(53,'2021_03_10_025153_change_column_tax_amount',6),(54,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(55,'2021_04_28_074008_ecommerce_create_product_label_table',6),(56,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(57,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(58,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(59,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(60,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(61,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(62,'2021_11_23_071403_correct_languages_for_product_variations',6),(63,'2021_11_28_031808_add_product_tags_translations',6),(64,'2021_12_01_031123_add_featured_image_to_ec_products',6),(65,'2022_01_01_033107_update_table_ec_shipments',6),(66,'2022_02_16_042457_improve_product_attribute_sets',6),(67,'2022_03_22_075758_correct_product_name',6),(68,'2022_04_19_113334_add_index_to_ec_products',6),(69,'2022_04_28_144405_remove_unused_table',6),(70,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(71,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(72,'2022_06_16_095633_add_index_to_some_tables',6),(73,'2022_06_30_035148_create_order_referrals_table',6),(74,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(75,'2022_08_14_032836_create_ec_order_returns_table',6),(76,'2022_08_14_033554_create_ec_order_return_items_table',6),(77,'2022_08_15_040324_add_billing_address',6),(78,'2022_08_30_091114_support_digital_products_table',6),(79,'2022_09_13_095744_create_options_table',6),(80,'2022_09_13_104347_create_option_value_table',6),(81,'2022_10_05_163518_alter_table_ec_order_product',6),(82,'2022_10_12_041517_create_invoices_table',6),(83,'2022_10_12_142226_update_orders_table',6),(84,'2022_10_13_024916_update_table_order_returns',6),(85,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(86,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(87,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(88,'2022_11_19_041643_add_ec_tax_product_table',6),(89,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(90,'2022_12_17_041532_fix_address_in_order_invoice',6),(91,'2022_12_26_070329_create_ec_product_views_table',6),(92,'2023_01_04_033051_fix_product_categories',6),(93,'2023_01_09_050400_add_ec_global_options_translations_table',6),(94,'2023_01_10_093754_add_missing_option_value_id',6),(95,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',6),(96,'2023_01_26_021854_add_ec_customer_used_coupons_table',6),(97,'2023_02_08_015900_update_options_column_in_ec_order_product_table',6),(98,'2023_02_27_095752_remove_duplicate_reviews',6),(99,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',6),(100,'2023_04_21_082427_create_ec_product_categorizables_table',6),(101,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',6),(102,'2023_05_17_025812_fix_invoice_issue',6),(103,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',6),(104,'2023_05_27_144611_fix_exchange_rate_setting',6),(105,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',6),(106,'2023_06_30_042512_create_ec_order_tax_information_table',6),(107,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',6),(108,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',6),(109,'2023_08_15_064505_create_ec_tax_rules_table',6),(110,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',6),(111,'2023_08_22_094114_drop_unique_for_barcode',6),(112,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',6),(113,'2023_09_07_094312_add_index_to_product_sku_and_translations',6),(114,'2023_09_19_024955_create_discount_product_categories_table',6),(115,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',6),(116,'2023_11_22_154643_add_unique_in_table_ec_products_variations',6),(117,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',6),(118,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',6),(119,'2023_12_25_040604_ec_create_review_replies_table',6),(120,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',6),(121,'2024_01_16_070706_fix_translation_tables',6),(122,'2024_01_23_075227_add_proof_file_to_ec_orders_table',6),(123,'2018_07_09_221238_create_faq_table',7),(124,'2021_12_03_082134_create_faq_translations',7),(125,'2023_11_17_063408_add_description_column_to_faq_categories_table',7),(126,'2016_10_03_032336_create_languages_table',8),(127,'2023_09_14_022423_add_index_for_language_table',8),(128,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(129,'2021_12_03_075608_create_page_translations',9),(130,'2023_07_06_011444_create_slug_translations_table',9),(131,'2019_11_18_061011_create_country_table',10),(132,'2021_12_03_084118_create_location_translations',10),(133,'2021_12_03_094518_migrate_old_location_data',10),(134,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(135,'2022_01_16_085908_improve_plugin_location',10),(136,'2022_08_04_052122_delete_location_backup_tables',10),(137,'2023_04_23_061847_increase_state_translations_abbreviation_column',10),(138,'2023_07_26_041451_add_more_columns_to_location_table',10),(139,'2023_07_27_041451_add_more_columns_to_location_translation_table',10),(140,'2023_08_15_073307_drop_unique_in_states_cities_translations',10),(141,'2023_10_21_065016_make_state_id_in_table_cities_nullable',10),(142,'2021_07_06_030002_create_marketplace_table',11),(143,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',11),(144,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',11),(145,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',11),(146,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',11),(147,'2021_12_06_031304_update_table_mp_customer_revenues',11),(148,'2022_10_19_152916_add_columns_to_mp_stores_table',11),(149,'2022_10_20_062849_create_mp_category_sale_commissions_table',11),(150,'2022_11_02_071413_add_more_info_for_store',11),(151,'2022_11_02_080444_add_tax_info',11),(152,'2023_02_01_062030_add_store_translations',11),(153,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',11),(154,'2023_02_17_023648_fix_store_prefix',11),(155,'2017_10_24_154832_create_newsletter_table',12),(156,'2017_05_18_080441_create_payment_tables',13),(157,'2021_03_27_144913_add_customer_type_into_table_payments',13),(158,'2021_05_24_034720_make_column_currency_nullable',13),(159,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(160,'2021_10_19_020859_update_metadata_field',13),(161,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(162,'2022_07_07_153354_update_charge_id_in_table_payments',13),(163,'2017_07_11_140018_create_simple_slider_table',14),(164,'2016_10_07_193005_create_translations_table',15),(165,'2023_12_12_105220_drop_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,10,3,121.00,0.00,121.00,0.00,'USD',NULL,'2024-02-21 09:33:05','2024-02-21 09:33:05',0,'add-amount'),(2,10,4,463.00,0.00,463.00,121.00,'USD',NULL,'2024-02-21 03:33:06','2024-02-21 03:33:06',0,'add-amount'),(3,7,7,342.00,0.00,342.00,0.00,'USD',NULL,'2024-02-21 09:33:07','2024-02-21 09:33:07',0,'add-amount'),(4,5,9,264.00,0.00,264.00,0.00,'USD',NULL,'2024-02-16 13:33:08','2024-02-16 13:33:08',0,'add-amount'),(5,10,11,234.00,0.00,234.00,584.00,'USD',NULL,'2024-02-15 01:33:09','2024-02-15 01:33:09',0,'add-amount'),(6,5,15,774.00,0.00,774.00,264.00,'USD',NULL,'2024-02-14 17:33:10','2024-02-14 17:33:10',0,'add-amount'),(7,3,19,127.00,0.00,127.00,0.00,'USD',NULL,'2024-02-12 09:33:11','2024-02-12 09:33:11',0,'add-amount'),(8,7,23,653.00,0.00,653.00,342.00,'USD',NULL,'2024-02-14 01:33:13','2024-02-14 01:33:13',0,'add-amount'),(9,5,27,232.00,0.00,232.00,1038.00,'USD',NULL,'2024-02-12 09:33:14','2024-02-12 09:33:14',0,'add-amount'),(10,5,28,387.00,0.00,387.00,1270.00,'USD',NULL,'2024-02-14 09:33:15','2024-02-14 09:33:15',0,'add-amount'),(11,3,39,127.00,0.00,127.00,127.00,'USD',NULL,'2024-01-25 01:33:16','2024-01-25 01:33:16',0,'add-amount'),(12,7,45,250.00,0.00,250.00,995.00,'USD',NULL,'2024-01-24 09:33:17','2024-01-24 09:33:17',0,'add-amount'),(13,5,48,232.00,0.00,232.00,1657.00,'USD',NULL,'2024-01-26 11:33:17','2024-01-26 11:33:17',0,'add-amount');
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,3,0.00,25.00,254.00,'USD','','{\"name\":\"Fredy Cassin\",\"number\":\"+17198862053\",\"full_name\":\"Isabel Kihn\",\"description\":\"Margaretta Monahan III\"}',NULL,0,'completed',NULL,'2024-02-24 01:33:19','2024-02-24 01:33:19',NULL),(2,3,0.00,31.00,229.00,'USD','','{\"name\":\"Fredy Cassin\",\"number\":\"+17198862053\",\"full_name\":\"Isabel Kihn\",\"description\":\"Margaretta Monahan III\"}',NULL,0,'pending',NULL,'2024-02-24 01:33:20','2024-02-24 01:33:20',NULL),(3,5,0.00,318.00,1889.00,'USD','','{\"name\":\"Meredith Hodkiewicz MD\",\"number\":\"+12207449988\",\"full_name\":\"Hanna Kris\",\"description\":\"Gabriel Kuhlman\"}',NULL,0,'completed',NULL,'2024-02-24 01:33:21','2024-02-24 01:33:21',NULL),(4,5,0.00,145.00,1571.00,'USD','','{\"name\":\"Meredith Hodkiewicz MD\",\"number\":\"+12207449988\",\"full_name\":\"Hanna Kris\",\"description\":\"Gabriel Kuhlman\"}',NULL,0,'pending',NULL,'2024-02-24 01:33:22','2024-02-24 01:33:22',NULL),(5,5,0.00,329.00,1426.00,'USD','','{\"name\":\"Meredith Hodkiewicz MD\",\"number\":\"+12207449988\",\"full_name\":\"Hanna Kris\",\"description\":\"Gabriel Kuhlman\"}',NULL,0,'completed',NULL,'2024-02-24 01:33:23','2024-02-24 01:33:23',NULL),(6,5,0.00,335.00,1097.00,'USD','','{\"name\":\"Meredith Hodkiewicz MD\",\"number\":\"+12207449988\",\"full_name\":\"Hanna Kris\",\"description\":\"Gabriel Kuhlman\"}',NULL,0,'processing',NULL,'2024-02-24 01:33:24','2024-02-24 01:33:24',NULL),(7,7,0.00,41.00,1245.00,'USD','','{\"name\":\"Scarlett Halvorson\",\"number\":\"+18055882641\",\"full_name\":\"Afton Kuhn Sr.\",\"description\":\"Prof. Adrien Mante II\"}',NULL,0,'processing',NULL,'2024-02-24 01:33:25','2024-02-24 01:33:25',NULL),(8,7,0.00,326.00,1204.00,'USD','','{\"name\":\"Scarlett Halvorson\",\"number\":\"+18055882641\",\"full_name\":\"Afton Kuhn Sr.\",\"description\":\"Prof. Adrien Mante II\"}',NULL,0,'processing',NULL,'2024-02-24 01:33:25','2024-02-24 01:33:25',NULL),(9,7,0.00,40.00,878.00,'USD','','{\"name\":\"Scarlett Halvorson\",\"number\":\"+18055882641\",\"full_name\":\"Afton Kuhn Sr.\",\"description\":\"Prof. Adrien Mante II\"}',NULL,0,'pending',NULL,'2024-02-24 01:33:26','2024-02-24 01:33:26',NULL),(10,7,0.00,83.00,838.00,'USD','','{\"name\":\"Scarlett Halvorson\",\"number\":\"+18055882641\",\"full_name\":\"Afton Kuhn Sr.\",\"description\":\"Prof. Adrien Mante II\"}',NULL,0,'processing',NULL,'2024-02-24 01:33:27','2024-02-24 01:33:27',NULL),(11,10,0.00,26.00,818.00,'USD','','{\"name\":\"Deja Witting\",\"number\":\"+19562724661\",\"full_name\":\"Austyn Rath\",\"description\":\"Avis Anderson\"}',NULL,0,'completed',NULL,'2024-02-24 01:33:29','2024-02-24 01:33:29',NULL),(12,10,0.00,66.00,792.00,'USD','','{\"name\":\"Deja Witting\",\"number\":\"+19562724661\",\"full_name\":\"Austyn Rath\",\"description\":\"Avis Anderson\"}',NULL,0,'completed',NULL,'2024-02-24 01:33:30','2024-02-24 01:33:30',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','otis.dibbert@example.com','+14076360023','3426 Sauer Forge','HN','New York','East Clotilde',2,'stores/1.png','Explicabo ad adipisci non laboriosam.','Vel id ut at magnam. Recusandae et omnis et enim illo voluptatem. Rerum facere consequatur veniam occaecati facilis.','published',NULL,'2024-02-24 01:32:48','2024-02-24 01:32:48',NULL,NULL),(2,'Global Office','wyman43@example.com','+12082331848','36755 Isabella Unions Suite 201','TG','Colorado','Eulaliatown',3,'stores/2.png','Nesciunt labore natus corporis enim.','Quae laborum neque et amet. Praesentium tempore sapiente saepe. Adipisci impedit atque illo accusamus mollitia quaerat non.','published',NULL,'2024-02-24 01:32:48','2024-02-24 01:32:48',NULL,NULL),(3,'Young Shop','yasmeen.durgan@example.net','+17573357367','2958 Thompson Throughway Suite 883','PH','Iowa','Port Kelton',5,'stores/3.png','Sint et et amet quidem.','Dolore similique ut expedita consectetur. Qui qui aperiam deserunt repellendus incidunt occaecati. Tempore ullam dolor quia maxime et.','published',NULL,'2024-02-24 01:32:48','2024-02-24 01:32:48',NULL,NULL),(4,'Global Store','alia30@example.net','+17693606671','91049 Farrell Ville','TZ','Kansas','New Michelchester',7,'stores/4.png','Est natus in excepturi doloremque et tempora.','Similique autem perferendis itaque sit facere est blanditiis quia. Perspiciatis harum qui porro dolorem dicta sint. Nihil sit quia ut in.','published',NULL,'2024-02-24 01:32:48','2024-02-24 01:32:48',NULL,NULL),(5,'Robert’s Store','price23@example.net','+14588989401','174 Miles Haven Apt. 796','BI','Minnesota','Brandonside',10,'stores/5.png','Est officia labore deleniti sunt.','Qui aut ipsum expedita. Ut tempora ut dolorem omnis. Sint ut eum veniam animi quisquam. Commodi aut veniam animi in excepturi illo.','published',NULL,'2024-02-24 01:32:48','2024-02-24 01:32:48',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$7Ic/ncR5.Lkjq2nh7K2SleGytxbOL7HZNFxU2ihx45yldshla3nkO','{\"name\":\"Margarita Stracke\",\"number\":\"+13327234354\",\"full_name\":\"Albertha Homenick\",\"description\":\"Lavada Skiles\"}','2024-02-24 01:32:47','2024-02-24 01:32:47','bank_transfer',NULL),(2,3,198.00,0.00,254.00,'$2y$12$hUVFks06abAMp/jwmPEYdO2W2uaqW.uB0yFGrCmDiZeIu9/SDeuGu','{\"name\":\"Fredy Cassin\",\"number\":\"+17198862053\",\"full_name\":\"Isabel Kihn\",\"description\":\"Margaretta Monahan III\"}','2024-02-24 01:32:47','2024-02-24 01:33:21','bank_transfer',NULL),(3,5,762.00,0.00,1889.00,'$2y$12$CUZNH6PvY/8777LNlex4/e.i4a5SQDAzV.3qQUGPZsMIbJmYdu7OC','{\"name\":\"Meredith Hodkiewicz MD\",\"number\":\"+12207449988\",\"full_name\":\"Hanna Kris\",\"description\":\"Gabriel Kuhlman\"}','2024-02-24 01:32:48','2024-02-24 01:33:25','bank_transfer',NULL),(4,7,755.00,0.00,1245.00,'$2y$12$yWa0IC7hjgnAZh4xlVHTKO98sttTafD.DaESu5XjfL/TE4KG6hrvm','{\"name\":\"Scarlett Halvorson\",\"number\":\"+18055882641\",\"full_name\":\"Afton Kuhn Sr.\",\"description\":\"Prof. Adrien Mante II\"}','2024-02-24 01:32:48','2024-02-24 01:33:29','bank_transfer',NULL),(5,10,726.00,0.00,818.00,'$2y$12$cbBLqur/f7GWGUrZc0iM9OIMW3FPsA.KsrV6wtscHa.0MO2ryUZiG','{\"name\":\"Deja Witting\",\"number\":\"+19562724661\",\"full_name\":\"Austyn Rath\",\"description\":\"Avis Anderson\"}','2024-02-24 01:32:48','2024-02-24 01:33:31','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2024-02-24 01:32:41','2024-02-24 01:32:41'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div>',1,NULL,'homepage',NULL,'published','2024-02-24 01:32:41','2024-02-24 01:32:41'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2024-02-24 01:32:41','2024-02-24 01:32:41'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2024-02-24 01:32:41','2024-02-24 01:32:41'),(5,'Blog','<p>---</p>',1,NULL,'blog-grid',NULL,'published','2024-02-24 01:32:41','2024-02-24 01:32:41'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',NULL,'published','2024-02-24 01:32:41','2024-02-24 01:32:41'),(7,'About us','<p>Alice. \'Nothing WHATEVER?\' persisted the King. The next thing is, to get in?\' \'There might be hungry, in which the words \'DRINK ME,\' but nevertheless she uncorked it and put it to be full of smoke from one foot up the little golden key, and when she looked up, and there stood the Queen furiously, throwing an inkstand at the great hall, with the bread-and-butter getting so far off). \'Oh, my poor little thing sobbed again (or grunted, it was impossible to say it out into the court, she said to.</p><p>Alice, that she did not dare to laugh; and, as there was hardly room for her. \'I wish I could say if I can find them.\' As she said to the Queen. \'Their heads are gone, if it likes.\' \'I\'d rather finish my tea,\' said the Queen, turning purple. \'I won\'t!\' said Alice. \'Then it wasn\'t trouble enough hatching the eggs,\' said the Mock Turtle, \'but if you\'ve seen them so shiny?\' Alice looked up, but it just missed her. Alice caught the flamingo and brought it back, the fight was over, and both the.</p><p>Alice, surprised at this, she came upon a time she found her way through the glass, and she trembled till she heard her voice close to her, so she went out, but it was sneezing and howling alternately without a porpoise.\' \'Wouldn\'t it really?\' said Alice in a hurry: a large kitchen, which was the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an arrow. The Cat\'s head began fading away the moment she appeared; but she remembered the number of bathing.</p><p>Alice whispered to the heads of the others took the watch and looked along the sea-shore--\' \'Two lines!\' cried the Mock Turtle angrily: \'really you are painting those roses?\' Five and Seven said nothing, but looked at the end of the gloves, and she thought it would not join the dance? Will you, won\'t you, will you, old fellow?\' The Mock Turtle went on. \'Would you tell me,\' said Alice, and her face in her head, and she felt unhappy. \'It was much pleasanter at home,\' thought poor Alice, \'when.</p>',1,NULL,'right-sidebar',NULL,'published','2024-02-24 01:32:41','2024-02-24 01:32:41'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-02-24 01:32:41','2024-02-24 01:32:41'),(9,'Terms &amp; Conditions','<p>FIT you,\' said the Rabbit\'s voice along--\'Catch him, you by the whole pack of cards, after all. \"--SAID I COULD NOT SWIM--\" you can\'t swim, can you?\' he added, turning to Alice: he had to fall upon Alice, as she was to find herself still in existence; \'and now for the hedgehogs; and in despair she put her hand in her life; it was certainly not becoming. \'And that\'s the jury-box,\' thought Alice, \'shall I NEVER get any older than you, and don\'t speak a word till I\'ve finished.\' So they had to.</p><p>CURTSEYING as you\'re falling through the glass, and she went on eagerly. \'That\'s enough about lessons,\' the Gryphon went on eagerly: \'There is such a wretched height to rest her chin upon Alice\'s shoulder, and it was done. They had not the same, shedding gallons of tears, until there was a dead silence instantly, and neither of the thing Mock Turtle said: \'advance twice, set to work throwing everything within her reach at the Queen, and Alice heard it before,\' said Alice,) and round goes the.</p><p>I suppose Dinah\'ll be sending me on messages next!\' And she tried to fancy to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I can\'t remember,\' said the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t put my arm round your waist,\' the Duchess sneezed occasionally; and as it spoke (it was exactly the right size again; and the moment she quite forgot how to speak again. The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself how she would manage.</p><p>THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at Alice, and sighing. \'It IS the use of a procession,\' thought she, \'if people had all to lie down upon her: she gave one sharp kick, and waited to see if she meant to take the hint; but the great hall, with the end of the window, I only knew the meaning of it in asking riddles that have no answers.\' \'If you do. I\'ll set Dinah at you!\' There was not here before,\' said the Mock Turtle. Alice was not a moment like a Jack-in-the-box, and up.</p>',1,NULL,'default',NULL,'published','2024-02-24 01:32:41','2024-02-24 01:32:41'),(10,'Returns &amp; Exchanges','<p>Those whom she sentenced were taken into custody by the pope, was soon submitted to by all three dates on their backs was the White Rabbit. She was a little snappishly. \'You\'re enough to drive one crazy!\' The Footman seemed to listen, the whole party look so grave and anxious.) Alice could hardly hear the rattle of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon. \'We can do without lobsters, you know. Which shall sing?\' \'Oh, YOU sing,\' said the last few.</p><p>Mock Turtle went on, looking anxiously about as curious as it went. So she began nibbling at the Hatter, and here the Mock Turtle said: \'no wise fish would go round a deal too flustered to tell him. \'A nice muddle their slates\'ll be in a tone of the baby, the shriek of the doors of the lefthand bit. * * * * * * * * * * * * * * \'What a curious feeling!\' said Alice; \'it\'s laid for a minute or two, and the Mock Turtle at last, and managed to swallow a morsel of the Mock Turtle\'s Story \'You can\'t.</p><p>I\'m perfectly sure I can\'t quite follow it as to the jury. They were indeed a queer-looking party that assembled on the OUTSIDE.\' He unfolded the paper as he found it very nice, (it had, in fact, a sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then quietly marched off after the candle is like after the others. \'Are their heads down and began an account of the country is, you see, Alice had no idea what to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it all seemed quite natural).</p><p>When the procession came opposite to Alice, that she hardly knew what she did, she picked up a little bottle on it, (\'which certainly was not even get her head through the little golden key was too late to wish that! She went in without knocking, and hurried off at once: one old Magpie began wrapping itself up very carefully, nibbling first at one corner of it: for she had put the Dormouse turned out, and, by the Hatter, \'I cut some more of the garden, and marked, with one eye, How the Owl had.</p>',1,NULL,'default',NULL,'published','2024-02-24 01:32:41','2024-02-24 01:32:41'),(11,'Shipping &amp; Delivery','<p>There was not easy to take out of sight. Alice remained looking thoughtfully at the end of his head. But at any rate: go and live in that soup!\' Alice said to herself. At this moment the door and found in it a bit, if you drink much from a Caterpillar The Caterpillar was the matter with it. There was a general clapping of hands at this: it was perfectly round, she came upon a neat little house, and found in it about four inches deep and reaching half down the bottle, saying to her ear, and.</p><p>I\'m grown up now,\' she said, \'for her hair goes in such confusion that she was quite pale (with passion, Alice thought), and it put the Lizard in head downwards, and the sounds will take care of the cakes, and was suppressed. \'Come, that finished the guinea-pigs!\' thought Alice. \'I don\'t even know what they\'re like.\' \'I believe so,\' Alice replied eagerly, for she was playing against herself, for she was going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter grumbled: \'you.</p><p>Cheshire Cat, she was always ready to agree to everything that Alice quite hungry to look at all fairly,\' Alice began, in a hurry that she could guess, she was terribly frightened all the rats and--oh dear!\' cried Alice, quite forgetting her promise. \'Treacle,\' said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen added to one of its mouth, and its great eyes half shut. This seemed to be no chance of this, so she tried to speak, and no more to do with you. Mind now!\' The poor.</p><p>Gryphon, and the bright flower-beds and the others all joined in chorus, \'Yes, please do!\' but the cook and the fan, and skurried away into the sky all the creatures argue. It\'s enough to look over their shoulders, that all the first question, you know.\' \'Not at first, but, after watching it a minute or two, which gave the Pigeon in a mournful tone, \'he won\'t do a thing before, but she knew that were of the miserable Mock Turtle. So she swallowed one of the soldiers did. After these came the.</p>',1,NULL,'default',NULL,'published','2024-02-24 01:32:41','2024-02-24 01:32:41'),(12,'Privacy Policy','<p>Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. He looked at Alice. \'It goes on, you know,\' said Alice, swallowing down her anger as well she might, what a long silence after this, and Alice joined the procession, wondering very much of a muchness\"--did you ever see you again, you dear old thing!\' said the March Hare, \'that \"I breathe when I sleep\" is the same thing a Lobster Quadrille The Mock Turtle in a deep voice, \'are done with a little now and then, and.</p><p>Mock Turtle: \'crumbs would all wash off in the last words out loud, and the m--\' But here, to Alice\'s great surprise, the Duchess\'s knee, while plates and dishes crashed around it--once more the pig-baby was sneezing and howling alternately without a great deal of thought, and looked at each other for some while in silence. At last the Gryphon interrupted in a tone of great relief. \'Call the next moment a shower of little Alice herself, and shouted out, \'You\'d better not talk!\' said Five. \'I.</p><p>This is the use of a well?\' \'Take some more bread-and-butter--\' \'But what am I then? Tell me that first, and then nodded. \'It\'s no business of MINE.\' The Queen turned angrily away from her as she went on, \'I must be the use of repeating all that green stuff be?\' said Alice. The poor little Lizard, Bill, was in managing her flamingo: she succeeded in getting its body tucked away, comfortably enough, under her arm, with its eyelids, so he did,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I.</p><p>CHAPTER IX. The Mock Turtle yet?\' \'No,\' said Alice. \'Why, there they are!\' said the King; and as the Caterpillar took the hookah out of a dance is it?\' \'Why,\' said the King. \'Nothing whatever,\' said Alice. \'Why, you don\'t even know what a dear quiet thing,\' Alice went on so long that they could not think of any that do,\' Alice said very humbly; \'I won\'t have any rules in particular; at least, if there were TWO little shrieks, and more puzzled, but she got to the end of trials, \"There was some.</p>',1,NULL,'default',NULL,'published','2024-02-24 01:32:41','2024-02-24 01:32:41'),(13,'Blog List','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-list',NULL,'published','2024-02-24 01:32:41','2024-02-24 01:32:41'),(14,'Blog Big','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-big',NULL,'published','2024-02-24 01:32:41','2024-02-24 01:32:41'),(15,'Blog Wide','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-wide',NULL,'published','2024-02-24 01:32:41','2024-02-24 01:32:41'),(16,'Homepage 5','<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2024-02-24 01:32:41','2024-02-24 01:32:41'),(17,'Homepage 6','<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"What are you looking for?\"][/big-banner]</div><div>[trending-products title=\"Trending items\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2024-02-24 01:32:41','2024-02-24 01:32:41'),(18,'Faq','<div>[faqs][/faqs]</div>',1,NULL,'default',NULL,'published','2024-02-24 01:32:41','2024-02-24 01:32:41');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'LJ52XH5B28','paystack',NULL,1353.00,1,'completed','confirm',9,NULL,NULL,'2024-02-24 01:32:49','2024-02-24 01:32:49','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'NIJP55O14A','bank_transfer',NULL,375.00,2,'pending','confirm',9,NULL,NULL,'2024-02-24 01:32:49','2024-02-24 01:32:49','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'3EHLCM7AVM','stripe',NULL,121.00,3,'completed','confirm',9,NULL,NULL,'2024-02-24 01:32:50','2024-02-24 01:32:50','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'5A3FKHXB4M','sslcommerz',NULL,463.00,4,'completed','confirm',8,NULL,NULL,'2024-02-24 01:32:50','2024-02-24 01:32:50','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'8BQGVUQUOE','razorpay',NULL,357.00,5,'completed','confirm',8,NULL,NULL,'2024-02-24 01:32:50','2024-02-24 01:32:50','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'FFFX9LLW20','mollie',NULL,330.00,6,'completed','confirm',8,NULL,NULL,'2024-02-24 01:32:50','2024-02-24 01:32:50','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'KFMRGX5LIV','sslcommerz',NULL,342.00,7,'completed','confirm',6,NULL,NULL,'2024-02-24 01:32:51','2024-02-24 01:32:51','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'ZAJP2QZBFM','paystack',NULL,129.00,8,'completed','confirm',6,NULL,NULL,'2024-02-24 01:32:51','2024-02-24 01:32:51','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'YMZLDAC0MD','stripe',NULL,264.00,9,'completed','confirm',9,NULL,NULL,'2024-02-24 01:32:51','2024-02-24 01:32:51','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'70ZAINKQFW','sslcommerz',NULL,436.00,10,'completed','confirm',9,NULL,NULL,'2024-02-24 01:32:51','2024-02-24 01:32:51','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'OLCNB8NRVN','mollie',NULL,234.00,11,'completed','confirm',9,NULL,NULL,'2024-02-24 01:32:52','2024-02-24 01:32:52','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'ZRQ2AJRIMB','razorpay',NULL,228.00,12,'completed','confirm',1,NULL,NULL,'2024-02-24 01:32:52','2024-02-24 01:32:52','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'UUBIXIGORN','bank_transfer',NULL,723.00,13,'pending','confirm',1,NULL,NULL,'2024-02-24 01:32:52','2024-02-24 01:32:52','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'LZ61VCQRAR','paystack',NULL,782.00,14,'completed','confirm',1,NULL,NULL,'2024-02-24 01:32:52','2024-02-24 01:32:52','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'QQ16BDPPIF','paystack',NULL,774.00,15,'completed','confirm',1,NULL,NULL,'2024-02-24 01:32:53','2024-02-24 01:32:53','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'QXOJBIJY4T','bank_transfer',NULL,125.00,16,'pending','confirm',1,NULL,NULL,'2024-02-24 01:32:53','2024-02-24 01:32:53','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'AB2OMFK5DS','razorpay',NULL,264.00,17,'completed','confirm',4,NULL,NULL,'2024-02-24 01:32:53','2024-02-24 01:32:53','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'LPHOQPWOI0','mollie',NULL,228.00,18,'completed','confirm',4,NULL,NULL,'2024-02-24 01:32:53','2024-02-24 01:32:53','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'I7QXVRV9GC','sslcommerz',NULL,127.00,19,'completed','confirm',4,NULL,NULL,'2024-02-24 01:32:54','2024-02-24 01:32:54','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'ASKRNR9LWO','bank_transfer',NULL,774.00,20,'pending','confirm',6,NULL,NULL,'2024-02-24 01:32:54','2024-02-24 01:32:54','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'YVTI9MPTPH','bank_transfer',NULL,400.00,21,'pending','confirm',6,NULL,NULL,'2024-02-24 01:32:54','2024-02-24 01:32:54','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'HOYYZI3DYH','sslcommerz',NULL,129.00,22,'completed','confirm',6,NULL,NULL,'2024-02-24 01:32:54','2024-02-24 01:32:54','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'9HWWVT9EPS','paypal',NULL,653.00,23,'completed','confirm',6,NULL,NULL,'2024-02-24 01:32:55','2024-02-24 01:32:55','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'LCJHNR4D68','paystack',NULL,378.00,24,'completed','confirm',6,NULL,NULL,'2024-02-24 01:32:55','2024-02-24 01:32:55','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'JQNFSLUSTB','cod',NULL,50.00,25,'pending','confirm',9,NULL,NULL,'2024-02-24 01:32:55','2024-02-24 01:32:55','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'TXCSSZDHZV','sslcommerz',NULL,110.00,26,'completed','confirm',9,NULL,NULL,'2024-02-24 01:32:55','2024-02-24 01:32:55','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'MVUGSMTLYB','paypal',NULL,232.00,27,'completed','confirm',9,NULL,NULL,'2024-02-24 01:32:55','2024-02-24 01:32:55','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'IJ0JQDI8N1','paystack',NULL,387.00,28,'completed','confirm',9,NULL,NULL,'2024-02-24 01:32:56','2024-02-24 01:32:56','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'F1XCXD9XQX','cod',NULL,350.00,29,'pending','confirm',9,NULL,NULL,'2024-02-24 01:32:56','2024-02-24 01:32:56','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'39UNWWXKEE','cod',NULL,2616.00,30,'pending','confirm',9,NULL,NULL,'2024-02-24 01:32:56','2024-02-24 01:32:56','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'9KTJDDGHW0','sslcommerz',NULL,386.00,31,'completed','confirm',6,NULL,NULL,'2024-02-24 01:32:56','2024-02-24 01:32:56','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'Z8PKOAH2ZU','paypal',NULL,1500.00,32,'completed','confirm',6,NULL,NULL,'2024-02-24 01:32:57','2024-02-24 01:32:57','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'W3YE0QX6MR','stripe',NULL,127.00,33,'completed','confirm',6,NULL,NULL,'2024-02-24 01:32:57','2024-02-24 01:32:57','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'TYGAZZOXTE','bank_transfer',NULL,546.00,34,'pending','confirm',4,NULL,NULL,'2024-02-24 01:32:57','2024-02-24 01:32:57','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'OFI4ISH4PS','bank_transfer',NULL,346.00,35,'pending','confirm',4,NULL,NULL,'2024-02-24 01:32:57','2024-02-24 01:32:57','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'STABKONCGB','bank_transfer',NULL,387.00,36,'pending','confirm',9,NULL,NULL,'2024-02-24 01:32:58','2024-02-24 01:32:58','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'AZD7BG4IDL','stripe',NULL,348.00,37,'completed','confirm',9,NULL,NULL,'2024-02-24 01:32:58','2024-02-24 01:32:58','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'YJ4UZTI3H8','cod',NULL,117.00,38,'pending','confirm',8,NULL,NULL,'2024-02-24 01:32:59','2024-02-24 01:32:59','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'FEZNSBO6GX','paystack',NULL,127.00,39,'completed','confirm',8,NULL,NULL,'2024-02-24 01:32:59','2024-02-24 01:32:59','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'F0IDON7JIO','cod',NULL,50.00,40,'pending','confirm',4,NULL,NULL,'2024-02-24 01:33:00','2024-02-24 01:33:00','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'C2KEX35TGV','razorpay',NULL,117.00,41,'completed','confirm',4,NULL,NULL,'2024-02-24 01:33:00','2024-02-24 01:33:00','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'N4IGN9XJ7C','razorpay',NULL,252.00,42,'completed','confirm',4,NULL,NULL,'2024-02-24 01:33:01','2024-02-24 01:33:01','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'NOKZZQNGPW','paystack',NULL,176.00,43,'completed','confirm',9,NULL,NULL,'2024-02-24 01:33:01','2024-02-24 01:33:01','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'J5Y6VWSQ4T','paypal',NULL,1000.00,44,'completed','confirm',9,NULL,NULL,'2024-02-24 01:33:02','2024-02-24 01:33:02','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'LWWXYBBZ5H','paypal',NULL,250.00,45,'completed','confirm',9,NULL,NULL,'2024-02-24 01:33:02','2024-02-24 01:33:02','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'CUJKDURPMY','sslcommerz',NULL,224.00,46,'completed','confirm',9,NULL,NULL,'2024-02-24 01:33:03','2024-02-24 01:33:03','Botble\\Ecommerce\\Models\\Customer',NULL),(47,'USD',0,'OYIC9XZPL4','paypal',NULL,330.00,47,'completed','confirm',9,NULL,NULL,'2024-02-24 01:33:03','2024-02-24 01:33:03','Botble\\Ecommerce\\Models\\Customer',NULL),(48,'USD',0,'RYEYGXKSMM','stripe',NULL,232.00,48,'completed','confirm',9,NULL,NULL,'2024-02-24 01:33:04','2024-02-24 01:33:04','Botble\\Ecommerce\\Models\\Customer',NULL),(49,'USD',0,'KIP3GC1ZKH','cod',NULL,782.00,49,'pending','confirm',6,NULL,NULL,'2024-02-24 01:33:04','2024-02-24 01:33:04','Botble\\Ecommerce\\Models\\Customer',NULL),(50,'USD',0,'H1DGIES1AS','razorpay',NULL,112.00,50,'completed','confirm',6,NULL,NULL,'2024-02-24 01:33:05','2024-02-24 01:33:05','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(4,1),(2,2),(4,2),(1,3),(4,3),(1,4),(4,4),(1,5),(3,5),(1,6),(3,6),(2,7),(3,7),(2,8),(4,8),(1,9),(4,9),(1,10),(4,10),(2,11),(3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/1.png',1092,NULL,'2024-02-24 01:32:40','2024-02-24 01:32:40'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/2.png',953,NULL,'2024-02-24 01:32:40','2024-02-24 01:32:40'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/3.png',740,NULL,'2024-02-24 01:32:41','2024-02-24 01:32:41'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/4.png',1308,NULL,'2024-02-24 01:32:41','2024-02-24 01:32:41'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/5.png',1873,NULL,'2024-02-24 01:32:41','2024-02-24 01:32:41'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/6.png',1499,NULL,'2024-02-24 01:32:41','2024-02-24 01:32:41'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/7.png',751,NULL,'2024-02-24 01:32:41','2024-02-24 01:32:41'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/8.png',667,NULL,'2024-02-24 01:32:41','2024-02-24 01:32:41'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/9.png',1756,NULL,'2024-02-24 01:32:41','2024-02-24 01:32:41'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/10.png',1574,NULL,'2024-02-24 01:32:41','2024-02-24 01:32:41'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',0,'news/11.png',387,NULL,'2024-02-24 01:32:41','2024-02-24 01:32:41');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"extensions.index\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"plugins.captcha\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.general\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.settings\":true,\"marketplace.reports\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,2,2,'2024-02-24 01:32:42','2024-02-24 01:32:42');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','0f865eb8e03eb30d0b32d3f725652288',NULL,'2024-02-24 01:32:46'),(2,'api_enabled','0',NULL,'2024-02-24 01:32:46'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"bottom-bar-menu\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\"]',NULL,'2024-02-24 01:32:46'),(6,'theme','nest',NULL,'2024-02-24 01:32:46'),(7,'show_admin_bar','1',NULL,'2024-02-24 01:32:46'),(8,'language_hide_default','1',NULL,'2024-02-24 01:32:46'),(9,'language_switcher_display','dropdown',NULL,'2024-02-24 01:32:46'),(10,'language_display','all',NULL,'2024-02-24 01:32:46'),(11,'language_hide_languages','[]',NULL,'2024-02-24 01:32:46'),(12,'ecommerce_store_name','Nest',NULL,NULL),(13,'ecommerce_store_phone','18006268',NULL,NULL),(14,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(15,'ecommerce_store_state','Singapore',NULL,NULL),(16,'ecommerce_store_city','Singapore',NULL,NULL),(17,'ecommerce_store_country','SG',NULL,NULL),(18,'payment_cod_status','1',NULL,'2024-02-24 01:32:46'),(19,'payment_bank_transfer_status','1',NULL,'2024-02-24 01:32:46'),(20,'admin_favicon','general/favicon.png',NULL,'2024-02-24 01:32:46'),(21,'admin_logo','general/logo.png',NULL,'2024-02-24 01:32:46'),(22,'permalink-botble-blog-models-post','blog',NULL,'2024-02-24 01:32:46'),(23,'permalink-botble-blog-models-category','blog',NULL,'2024-02-24 01:32:46'),(24,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-02-24 01:32:46'),(25,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-02-24 01:32:46'),(26,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-02-24 01:32:46'),(27,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-02-24 01:32:46'),(28,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-02-24 01:32:46'),(29,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-02-24 01:32:46'),(30,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-02-24 01:32:46'),(31,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2024-02-24 01:32:46'),(32,'ecommerce_product_sku_format','NST-2443-[%S]',NULL,'2024-02-24 01:32:46'),(33,'theme-nest-site_title','Nest - Laravel Multipurpose eCommerce Script',NULL,NULL),(34,'theme-nest-seo_description','Nest is an attractive Laravel multivendor eCommerce script specially designed for the multipurpose shops like mega store, grocery store, supermarket, organic shop, and online stores selling products like beverages, vegetables, fruits, ice creams, paste, herbs, juice, meat, cold drinks, sausages, cocktails, soft drinks, cookies…',NULL,NULL),(35,'theme-nest-copyright','Copyright © 2024 Nest all rights reserved. Powered by Botble.',NULL,NULL),(36,'theme-nest-favicon','general/favicon.png',NULL,NULL),(37,'theme-nest-logo','general/logo.png',NULL,NULL),(38,'theme-nest-seo_og_image','general/open-graph-image.png',NULL,NULL),(39,'theme-nest-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(40,'theme-nest-hotline','1900 - 888',NULL,NULL),(41,'theme-nest-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(42,'theme-nest-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(43,'theme-nest-homepage_id','1',NULL,NULL),(44,'theme-nest-blog_page_id','5',NULL,NULL),(45,'theme-nest-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(46,'theme-nest-cookie_consent_learn_more_url','https://nest.test/cookie-policy',NULL,NULL),(47,'theme-nest-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(48,'theme-nest-payment_methods','general/payment-methods.png',NULL,NULL),(49,'theme-nest-number_of_cross_sale_product','4',NULL,NULL),(50,'theme-nest-mobile-header-message','<span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>',NULL,NULL),(51,'theme-nest-blog_page_background','general/header-bg.png',NULL,NULL),(52,'theme-nest-blog_page_icon','general/category-1.png',NULL,NULL),(53,'theme-nest-login_background','general/login-1.png',NULL,NULL),(54,'theme-nest-number_of_products_per_page','12',NULL,NULL),(55,'theme-nest-preloader_enabled','yes',NULL,NULL),(56,'theme-nest-preloader_version','v2',NULL,NULL),(57,'theme-nest-preloader_image','general/loading.gif',NULL,NULL),(58,'theme-nest-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"general\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"general\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"general\\/instagram.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"general\\/pinterest.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"general\\/youtube.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]',NULL,NULL),(59,'theme-nest-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Super Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(60,'theme-nest-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Don’t miss amazing<br> grocery deals','sliders/1-1.png','/products','Sign up for the daily newsletter',1,'2024-02-24 01:32:39','2024-02-24 01:32:39'),(2,1,'Fresh Vegetables<br>\n										Big discount','sliders/1-2.png','/products','Save up to 50% off on your first order',2,'2024-02-24 01:32:39','2024-02-24 01:32:39'),(3,2,'Don’t miss amazing<br> grocery deals','sliders/2-1.png','/products','Sign up for the daily newsletter',1,'2024-02-24 01:32:39','2024-02-24 01:32:39'),(4,2,'Fresh Vegetables<br>\n										Big discount','sliders/2-2.png','/products','Save up to 50% off on your first order',2,'2024-02-24 01:32:39','2024-02-24 01:32:39'),(5,3,'Don’t miss amazing<br> grocery deals','sliders/3-1.png','/products','Sign up for the daily newsletter',1,'2024-02-24 01:32:39','2024-02-24 01:32:39'),(6,3,'Fresh Vegetables<br>\n										Big discount','sliders/3-2.png','/products','Save up to 50% off on your first order',2,'2024-02-24 01:32:39','2024-02-24 01:32:39'),(7,4,'Don’t miss amazing<br> grocery deals','sliders/4-1.png','/products','Sign up for the daily newsletter',1,'2024-02-24 01:32:39','2024-02-24 01:32:39'),(8,4,'Fresh Vegetables<br>\n										Big discount','sliders/4-2.png','/products','Save up to 50% off on your first order',2,'2024-02-24 01:32:39','2024-02-24 01:32:39'),(9,5,'Don’t miss amazing<br> grocery deals','sliders/5-1.png','/products','Sign up for the daily newsletter',1,'2024-02-24 01:32:39','2024-02-24 01:32:39'),(10,5,'Fresh Vegetables<br>\n										Big discount','sliders/5-2.png','/products','Save up to 50% off on your first order',2,'2024-02-24 01:32:39','2024-02-24 01:32:39'),(11,6,'Don’t miss amazing<br> grocery deals','sliders/6-1.png','/products','Sign up for the daily newsletter',1,'2024-02-24 01:32:39','2024-02-24 01:32:39'),(12,7,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2024-02-24 01:32:39','2024-02-24 01:32:39'),(13,7,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2024-02-24 01:32:39','2024-02-24 01:32:39'),(14,7,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2024-02-24 01:32:39','2024-02-24 01:32:39'),(15,7,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2024-02-24 01:32:39','2024-02-24 01:32:39'),(16,7,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2024-02-24 01:32:39','2024-02-24 01:32:39'),(17,7,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2024-02-24 01:32:39','2024-02-24 01:32:39');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2024-02-24 01:32:39','2024-02-24 01:32:39'),(2,'Home slider 2','home-slider-2',NULL,'published','2024-02-24 01:32:39','2024-02-24 01:32:39'),(3,'Home slider 3','home-slider-3',NULL,'published','2024-02-24 01:32:39','2024-02-24 01:32:39'),(4,'Home slider 4','home-slider-4',NULL,'published','2024-02-24 01:32:39','2024-02-24 01:32:39'),(5,'Home slider 5','home-slider-5',NULL,'published','2024-02-24 01:32:39','2024-02-24 01:32:39'),(6,'Home slider 6','home-slider-6',NULL,'published','2024-02-24 01:32:39','2024-02-24 01:32:39'),(7,'Blog slider 1','blog-slider-1',NULL,'published','2024-02-24 01:32:39','2024-02-24 01:32:39');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-24 01:32:24','2024-02-24 01:32:24'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-24 01:32:24','2024-02-24 01:32:24'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-24 01:32:24','2024-02-24 01:32:24'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-24 01:32:24','2024-02-24 01:32:24'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-24 01:32:24','2024-02-24 01:32:24'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-24 01:32:24','2024-02-24 01:32:24'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-24 01:32:24','2024-02-24 01:32:24'),(8,'milks-and-dairies',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:32:26','2024-02-24 01:32:26'),(9,'clothing-beauty',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:32:26','2024-02-24 01:32:26'),(10,'pet-toy',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:32:26','2024-02-24 01:32:26'),(11,'baking-material',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:32:26','2024-02-24 01:32:26'),(12,'fresh-fruit',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:32:26','2024-02-24 01:32:26'),(13,'wines-drinks',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:32:26','2024-02-24 01:32:26'),(14,'fresh-seafood',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:32:26','2024-02-24 01:32:26'),(15,'fast-food',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:32:26','2024-02-24 01:32:26'),(16,'vegetables',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:32:26','2024-02-24 01:32:26'),(17,'bread-and-juice',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:32:26','2024-02-24 01:32:26'),(18,'cake-milk',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:32:26','2024-02-24 01:32:26'),(19,'coffee-teas',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:32:26','2024-02-24 01:32:26'),(20,'pet-foods',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:32:26','2024-02-24 01:32:26'),(21,'diet-foods',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-24 01:32:26','2024-02-24 01:32:26'),(22,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-24 01:32:26','2024-02-24 01:32:26'),(23,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-24 01:32:26','2024-02-24 01:32:26'),(24,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-24 01:32:26','2024-02-24 01:32:26'),(25,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-24 01:32:26','2024-02-24 01:32:26'),(26,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-24 01:32:26','2024-02-24 01:32:26'),(27,'seeds-of-change-organic-quinoe-digital',1,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(28,'all-natural-italian-style-chicken-meatballs',2,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(29,'angies-boomchickapop-sweet-salty-kettle-corn',3,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(30,'foster-farms-takeout-crispy-classic',4,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(31,'blue-diamond-almonds-lightly-digital',5,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(32,'chobani-complete-vanilla-greek',6,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(33,'canada-dry-ginger-ale-2-l-bottle',7,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(34,'encore-seafoods-stuffed-alaskan',8,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(35,'gortons-beer-battered-fish-fillets-digital',9,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(36,'haagen-dazs-caramel-cone-ice-cream',10,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(37,'nestle-original-coffee-mate-coffee-creamer',11,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(38,'naturally-flavored-cinnamon-vanilla-light-roast-coffee',12,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(39,'pepperidge-farm-farmhouse-hearty-white-bread-digital',13,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(40,'organic-frozen-triple-berry-blend',14,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(41,'oroweat-country-buttermilk-bread',15,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(42,'foster-farms-takeout-crispy-classic-buffalo-wings',16,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(43,'angies-boomchickapop-sweet-salty-kettle-corn-digital',17,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(44,'all-natural-italian-style-chicken-meatballs',18,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(45,'simply-lemonade-with-raspberry-juice',19,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(46,'perdue-simply-smart-organics-gluten-free',20,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(47,'chen-watermelon-digital',21,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(48,'organic-cage-free-grade-a-large-brown-eggs',22,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(49,'colorful-banana',23,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(50,'signature-wood-fired-mushroom-and-caramelized',24,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:32:31','2024-02-24 01:32:31'),(51,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2024-02-24 01:32:40','2024-02-24 01:32:45'),(52,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-02-24 01:32:40','2024-02-24 01:32:45'),(53,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-02-24 01:32:40','2024-02-24 01:32:45'),(54,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-02-24 01:32:40','2024-02-24 01:32:45'),(55,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-02-24 01:32:40','2024-02-24 01:32:40'),(56,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-02-24 01:32:40','2024-02-24 01:32:40'),(57,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-02-24 01:32:40','2024-02-24 01:32:40'),(58,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-02-24 01:32:40','2024-02-24 01:32:40'),(59,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-02-24 01:32:40','2024-02-24 01:32:40'),(60,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:32:40','2024-02-24 01:32:45'),(61,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:32:41','2024-02-24 01:32:45'),(62,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:32:41','2024-02-24 01:32:45'),(63,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:32:41','2024-02-24 01:32:45'),(64,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:32:41','2024-02-24 01:32:45'),(65,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:32:41','2024-02-24 01:32:45'),(66,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:32:41','2024-02-24 01:32:45'),(67,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:32:41','2024-02-24 01:32:45'),(68,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:32:41','2024-02-24 01:32:45'),(69,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:32:41','2024-02-24 01:32:45'),(70,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:32:41','2024-02-24 01:32:45'),(71,'homepage',1,'Botble\\Page\\Models\\Page','','2024-02-24 01:32:41','2024-02-24 01:32:41'),(72,'homepage-2',2,'Botble\\Page\\Models\\Page','','2024-02-24 01:32:41','2024-02-24 01:32:41'),(73,'homepage-3',3,'Botble\\Page\\Models\\Page','','2024-02-24 01:32:41','2024-02-24 01:32:41'),(74,'homepage-4',4,'Botble\\Page\\Models\\Page','','2024-02-24 01:32:41','2024-02-24 01:32:41'),(75,'blog',5,'Botble\\Page\\Models\\Page','','2024-02-24 01:32:41','2024-02-24 01:32:41'),(76,'contact',6,'Botble\\Page\\Models\\Page','','2024-02-24 01:32:41','2024-02-24 01:32:41'),(77,'about-us',7,'Botble\\Page\\Models\\Page','','2024-02-24 01:32:41','2024-02-24 01:32:41'),(78,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2024-02-24 01:32:41','2024-02-24 01:32:41'),(79,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2024-02-24 01:32:41','2024-02-24 01:32:41'),(80,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2024-02-24 01:32:41','2024-02-24 01:32:41'),(81,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2024-02-24 01:32:41','2024-02-24 01:32:41'),(82,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2024-02-24 01:32:41','2024-02-24 01:32:41'),(83,'blog-list',13,'Botble\\Page\\Models\\Page','','2024-02-24 01:32:41','2024-02-24 01:32:41'),(84,'blog-big',14,'Botble\\Page\\Models\\Page','','2024-02-24 01:32:41','2024-02-24 01:32:41'),(85,'blog-wide',15,'Botble\\Page\\Models\\Page','','2024-02-24 01:32:41','2024-02-24 01:32:41'),(86,'homepage-5',16,'Botble\\Page\\Models\\Page','','2024-02-24 01:32:41','2024-02-24 01:32:41'),(87,'homepage-6',17,'Botble\\Page\\Models\\Page','','2024-02-24 01:32:41','2024-02-24 01:32:41'),(88,'faq',18,'Botble\\Page\\Models\\Page','','2024-02-24 01:32:41','2024-02-24 01:32:41'),(89,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-02-24 01:32:48','2024-02-24 01:32:48'),(90,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-02-24 01:32:48','2024-02-24 01:32:48'),(91,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-02-24 01:32:48','2024-02-24 01:32:48'),(92,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-02-24 01:32:48','2024-02-24 01:32:48'),(93,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-02-24 01:32:48','2024-02-24 01:32:48'),(94,'seeds-of-change-organic-quinoe-digital',25,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(95,'all-natural-italian-style-chicken-meatballs',26,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(96,'angies-boomchickapop-sweet-salty-kettle-corn',27,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(97,'foster-farms-takeout-crispy-classic',28,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(98,'foster-farms-takeout-crispy-classic',29,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(99,'blue-diamond-almonds-lightly-digital',30,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(100,'blue-diamond-almonds-lightly-digital',31,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(101,'chobani-complete-vanilla-greek',32,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(102,'canada-dry-ginger-ale-2-l-bottle',33,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(103,'canada-dry-ginger-ale-2-l-bottle',34,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(104,'encore-seafoods-stuffed-alaskan',35,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(105,'encore-seafoods-stuffed-alaskan',36,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(106,'gortons-beer-battered-fish-fillets-digital',37,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(107,'gortons-beer-battered-fish-fillets-digital',38,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(108,'haagen-dazs-caramel-cone-ice-cream',39,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(109,'haagen-dazs-caramel-cone-ice-cream',40,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(110,'haagen-dazs-caramel-cone-ice-cream',41,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(111,'haagen-dazs-caramel-cone-ice-cream',42,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(112,'haagen-dazs-caramel-cone-ice-cream',43,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(113,'nestle-original-coffee-mate-coffee-creamer',44,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(114,'nestle-original-coffee-mate-coffee-creamer',45,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(115,'naturally-flavored-cinnamon-vanilla-light-roast-coffee',46,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(116,'naturally-flavored-cinnamon-vanilla-light-roast-coffee',47,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(117,'naturally-flavored-cinnamon-vanilla-light-roast-coffee',48,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(118,'pepperidge-farm-farmhouse-hearty-white-bread-digital',49,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(119,'pepperidge-farm-farmhouse-hearty-white-bread-digital',50,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(120,'pepperidge-farm-farmhouse-hearty-white-bread-digital',51,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(121,'organic-frozen-triple-berry-blend',52,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(122,'organic-frozen-triple-berry-blend',53,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(123,'organic-frozen-triple-berry-blend',54,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(124,'oroweat-country-buttermilk-bread',55,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(125,'oroweat-country-buttermilk-bread',56,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(126,'oroweat-country-buttermilk-bread',57,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(127,'oroweat-country-buttermilk-bread',58,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(128,'foster-farms-takeout-crispy-classic-buffalo-wings',59,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(129,'angies-boomchickapop-sweet-salty-kettle-corn-digital',60,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(130,'angies-boomchickapop-sweet-salty-kettle-corn-digital',61,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(131,'angies-boomchickapop-sweet-salty-kettle-corn-digital',62,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(132,'angies-boomchickapop-sweet-salty-kettle-corn-digital',63,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(133,'all-natural-italian-style-chicken-meatballs',64,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(134,'all-natural-italian-style-chicken-meatballs',65,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(135,'simply-lemonade-with-raspberry-juice',66,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(136,'simply-lemonade-with-raspberry-juice',67,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(137,'simply-lemonade-with-raspberry-juice',68,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(138,'simply-lemonade-with-raspberry-juice',69,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(139,'simply-lemonade-with-raspberry-juice',70,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(140,'perdue-simply-smart-organics-gluten-free',71,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(141,'perdue-simply-smart-organics-gluten-free',72,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(142,'perdue-simply-smart-organics-gluten-free',73,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(143,'perdue-simply-smart-organics-gluten-free',74,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(144,'chen-watermelon-digital',75,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(145,'chen-watermelon-digital',76,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(146,'organic-cage-free-grade-a-large-brown-eggs',77,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(147,'colorful-banana',78,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(148,'colorful-banana',79,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31'),(149,'signature-wood-fired-mushroom-and-caramelized',80,'Botble\\Ecommerce\\Models\\Product','products','2024-02-24 01:33:31','2024-02-24 01:33:31');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User','','published','2024-02-24 01:32:40','2024-02-24 01:32:40'),(2,'Design',NULL,'Botble\\ACL\\Models\\User','','published','2024-02-24 01:32:40','2024-02-24 01:32:40'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User','','published','2024-02-24 01:32:40','2024-02-24 01:32:40'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User','','published','2024-02-24 01:32:40','2024-02-24 01:32:40'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User','','published','2024-02-24 01:32:40','2024-02-24 01:32:40');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mills.anabel@cole.info',NULL,'$2y$12$ORCwly87ffbGo/jkxs9NSeSJuAJHubAAdckJY2I5bpyflkJqgYBD6',NULL,'2024-02-24 01:32:41','2024-02-24 01:32:41','Eldridge','Anderson','botble',NULL,1,1,NULL,NULL),(2,'millie12@stracke.com',NULL,'$2y$12$9nm7t9BMaVyG5LddTCFcF.SG1aqO4pEyYornjhyDLKb8giZn5hsca',NULL,'2024-02-24 01:32:42','2024-02-24 01:32:42','Branson','Huel','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','nest',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\",\"about\":\"Awesome grocery store website template\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Mon - Sat\"}','2024-02-24 01:32:46','2024-02-24 01:32:46'),(2,'CustomMenuWidget','footer_sidebar','nest',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2024-02-24 01:32:46','2024-02-24 01:32:46'),(3,'CustomMenuWidget','footer_sidebar','nest',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2024-02-24 01:32:46','2024-02-24 01:32:46'),(4,'CustomMenuWidget','footer_sidebar','nest',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2024-02-24 01:32:46','2024-02-24 01:32:46'),(5,'InstallAppWidget','footer_sidebar','nest',3,'{\"id\":\"InstallAppWidget\",\"name\":\"Install App\",\"apps_description\":\"From App Store or Google Play\",\"ios_app_url\":\"#\",\"ios_app_image\":\"general\\/app-store.jpg\",\"android_app_url\":\"#\",\"android_app_image\":\"general\\/google-play.jpg\",\"payment_gateway_description\":\"Secured Payment Gateways\",\"payment_gateway_image\":\"general\\/payment-methods.png\"}','2024-02-24 01:32:46','2024-02-24 01:32:46'),(6,'BlogSearchWidget','primary_sidebar','nest',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2024-02-24 01:32:46','2024-02-24 01:32:46'),(7,'ProductCategoriesWidget','primary_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2024-02-24 01:32:46','2024-02-24 01:32:46'),(8,'TrendingProductsWidget','primary_sidebar','nest',2,'{\"id\":\"TrendingProductsWidget\",\"name\":\"Trending Now\",\"number_display\":4}','2024-02-24 01:32:46','2024-02-24 01:32:46'),(9,'GalleryWidget','primary_sidebar','nest',3,'{\"id\":\"GalleryWidget\",\"name\":\"Gallery\",\"slider_key\":\"slider-blog-1\"}','2024-02-24 01:32:46','2024-02-24 01:32:46'),(10,'TagsWidget','primary_sidebar','nest',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2024-02-24 01:32:46','2024-02-24 01:32:46'),(11,'AdsWidget','primary_sidebar','nest',5,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2024-02-24 01:32:46','2024-02-24 01:32:46'),(12,'ProductCategoriesWidget','product_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2024-02-24 01:32:46','2024-02-24 01:32:46'),(13,'NewProductsWidget','product_sidebar','nest',3,'{\"id\":\"NewProductsWidget\",\"name\":\"New products\"}','2024-02-24 01:32:46','2024-02-24 01:32:46'),(14,'AdsWidget','product_sidebar','nest',4,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2024-02-24 01:32:46','2024-02-24 01:32:46'),(15,'NewsletterWidget','pre_footer_sidebar','nest',0,'{\"id\":\"NewsletterWidget\",\"title\":\"Stay home & get your daily <br \\/>needs from our shop\",\"subtitle\":\"Start Your Daily Shopping with <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2024-02-24 01:32:46','2024-02-24 01:32:46'),(16,'SiteFeaturesWidget','pre_footer_sidebar','nest',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Best prices & offers\",\"subtitle\":\"Orders $50 or more\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Free delivery\",\"subtitle\":\"24\\/7 amazing services\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"Great daily deal\",\"subtitle\":\"When you sign up\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Wide assortment\",\"subtitle\":\"Mega Discounts\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"Easy returns\",\"subtitle\":\"Within 30 days\"}}}','2024-02-24 01:32:46','2024-02-24 01:32:46');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-24 15:33:39
