-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: flower_shopping_guide_system
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add user profile',7,'add_userprofile'),(26,'Can change user profile',7,'change_userprofile'),(27,'Can delete user profile',7,'delete_userprofile'),(28,'Can view user profile',7,'view_userprofile'),(29,'Can add user profile',8,'add_userprofile'),(30,'Can change user profile',8,'change_userprofile'),(31,'Can delete user profile',8,'delete_userprofile'),(32,'Can view user profile',8,'view_userprofile'),(33,'Can add 分类',9,'add_category'),(34,'Can change 分类',9,'change_category'),(35,'Can delete 分类',9,'delete_category'),(36,'Can view 分类',9,'view_category'),(37,'Can add 分类与节日关系',10,'add_categoryholiday'),(38,'Can change 分类与节日关系',10,'change_categoryholiday'),(39,'Can delete 分类与节日关系',10,'delete_categoryholiday'),(40,'Can view 分类与节日关系',10,'view_categoryholiday'),(41,'Can add 节日',11,'add_holiday'),(42,'Can change 节日',11,'change_holiday'),(43,'Can delete 节日',11,'delete_holiday'),(44,'Can view 节日',11,'view_holiday'),(45,'Can add raw products',12,'add_rawproducts'),(46,'Can change raw products',12,'change_rawproducts'),(47,'Can delete raw products',12,'delete_rawproducts'),(48,'Can view raw products',12,'view_rawproducts'),(49,'Can add shop',13,'add_shop'),(50,'Can change shop',13,'change_shop'),(51,'Can delete shop',13,'delete_shop'),(52,'Can view shop',13,'view_shop'),(53,'Can add cron job log',14,'add_cronjoblog'),(54,'Can change cron job log',14,'change_cronjoblog'),(55,'Can delete cron job log',14,'delete_cronjoblog'),(56,'Can view cron job log',14,'view_cronjoblog'),(57,'Can add cron job lock',15,'add_cronjoblock'),(58,'Can change cron job lock',15,'change_cronjoblock'),(59,'Can delete cron job lock',15,'delete_cronjoblock'),(60,'Can view cron job lock',15,'view_cronjoblock'),(61,'Can add data source',16,'add_datasource'),(62,'Can change data source',16,'change_datasource'),(63,'Can delete data source',16,'delete_datasource'),(64,'Can view data source',16,'view_datasource'),(65,'Can add flower purpose',17,'add_flowerpurpose'),(66,'Can change flower purpose',17,'change_flowerpurpose'),(67,'Can delete flower purpose',17,'delete_flowerpurpose'),(68,'Can view flower purpose',17,'view_flowerpurpose'),(69,'Can add flower location',18,'add_flowerlocation'),(70,'Can change flower location',18,'change_flowerlocation'),(71,'Can delete flower location',18,'delete_flowerlocation'),(72,'Can view flower location',18,'view_flowerlocation'),(73,'Can add normalized product',19,'add_normalizedproduct'),(74,'Can change normalized product',19,'change_normalizedproduct'),(75,'Can delete normalized product',19,'delete_normalizedproduct'),(76,'Can view normalized product',19,'view_normalizedproduct'),(77,'Can add contact message',20,'add_contactmessage'),(78,'Can change contact message',20,'change_contactmessage'),(79,'Can delete contact message',20,'delete_contactmessage'),(80,'Can view contact message',20,'view_contactmessage'),(81,'Can add 公告',21,'add_announcement'),(82,'Can change 公告',21,'change_announcement'),(83,'Can delete 公告',21,'delete_announcement'),(84,'Can view 公告',21,'view_announcement');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_management_announcement`
--

DROP TABLE IF EXISTS `data_management_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_management_announcement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_management_announcement`
--

LOCK TABLES `data_management_announcement` WRITE;
/*!40000 ALTER TABLE `data_management_announcement` DISABLE KEYS */;
INSERT INTO `data_management_announcement` VALUES (4,'公告1','数据已经更新~','2025-03-02 07:47:23.397022',1);
/*!40000 ALTER TABLE `data_management_announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_management_category`
--

DROP TABLE IF EXISTS `data_management_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_management_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext,
  `date_created` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_management_category`
--

LOCK TABLES `data_management_category` WRITE;
/*!40000 ALTER TABLE `data_management_category` DISABLE KEYS */;
INSERT INTO `data_management_category` VALUES (1,'玫瑰','爱情的象征，适合表白、求婚、纪念日等场合。','2024-12-17 12:52:17.449889',1),(2,'百合','象征纯洁和高雅，常用于祝贺新婚或表达纯真的友情。','2024-12-17 12:52:17.460338',1),(3,'康乃馨','爱与感恩的象征，尤其是母爱。','2024-12-17 12:52:17.469978',1),(4,'郁金香','高雅的象征，适合用来表达祝福、爱的告白或祝愿成功。','2024-12-17 12:52:17.477858',1),(5,'向日葵','象征阳光、热情与希望，是祝福朋友或爱人的理想选择。','2024-12-17 12:52:17.485624',1),(6,'满天星','象征纯洁和浪漫，常作为辅助花材搭配其他主花。','2024-12-17 12:52:17.494001',1),(7,'牡丹','中国传统名花，象征富贵与吉祥。','2024-12-17 12:52:17.503133',1),(8,'兰花','象征高洁与优雅，适合用来表达敬意。','2024-12-17 12:52:17.513966',1),(9,'桔梗','代表不变的爱与真诚，适合用来表达友情或爱情。','2024-12-17 12:52:17.523973',1),(10,'勿忘我','寓意永恒的思念与爱情。','2024-12-17 12:52:17.533605',1),(11,'菊花','东方文化中多用作追思，西方文化中象征长寿和希望。','2024-12-17 12:52:17.544059',1),(12,'剑兰','象征怀念与祝福，常用于庆贺新生活的开始。','2024-12-17 12:52:17.554128',1),(13,'紫罗兰','代表忠诚和美德，适合表达感激之情。','2024-12-17 12:52:17.565313',1),(14,'洋桔梗','寓意纯洁的爱、感激和真诚。','2024-12-17 12:52:17.576761',1),(15,'芍药花','象征美丽与害羞，常用于爱情的表白。','2024-12-17 12:52:17.587159',1);
/*!40000 ALTER TABLE `data_management_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_management_categoryholiday`
--

DROP TABLE IF EXISTS `data_management_categoryholiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_management_categoryholiday` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `priority` int unsigned DEFAULT NULL,
  `category_id` bigint NOT NULL,
  `holiday_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_management_category_category_id_holiday_id_b67e2d27_uniq` (`category_id`,`holiday_id`),
  KEY `data_management_cate_holiday_id_9d31b3d5_fk_data_mana` (`holiday_id`),
  CONSTRAINT `data_management_cate_category_id_19886a1e_fk_data_mana` FOREIGN KEY (`category_id`) REFERENCES `data_management_category` (`id`),
  CONSTRAINT `data_management_cate_holiday_id_9d31b3d5_fk_data_mana` FOREIGN KEY (`holiday_id`) REFERENCES `data_management_holiday` (`id`),
  CONSTRAINT `data_management_categoryholiday_chk_1` CHECK ((`priority` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_management_categoryholiday`
--

LOCK TABLES `data_management_categoryholiday` WRITE;
/*!40000 ALTER TABLE `data_management_categoryholiday` DISABLE KEYS */;
INSERT INTO `data_management_categoryholiday` VALUES (1,1,1,1),(2,2,3,2),(3,3,3,3),(4,4,3,4);
/*!40000 ALTER TABLE `data_management_categoryholiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_management_datasource`
--

DROP TABLE IF EXISTS `data_management_datasource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_management_datasource` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` varchar(8) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_management_datasource`
--

LOCK TABLES `data_management_datasource` WRITE;
/*!40000 ALTER TABLE `data_management_datasource` DISABLE KEYS */;
INSERT INTO `data_management_datasource` VALUES (1,'淘宝','https://www.taobao.com','active','2024-12-19 13:27:20.140896');
/*!40000 ALTER TABLE `data_management_datasource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_management_flowerlocation`
--

DROP TABLE IF EXISTS `data_management_flowerlocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_management_flowerlocation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_management_flowerlocation`
--

LOCK TABLES `data_management_flowerlocation` WRITE;
/*!40000 ALTER TABLE `data_management_flowerlocation` DISABLE KEYS */;
INSERT INTO `data_management_flowerlocation` VALUES (1,'北京','2024-12-19 13:27:20.131856'),(2,'上海','2024-12-19 13:27:20.140896'),(3,'天津','2024-12-19 13:27:20.150998'),(4,'重庆','2024-12-19 13:27:20.161130'),(5,'广州','2024-12-19 13:27:20.170082'),(6,'深圳','2024-12-19 13:27:20.178621'),(7,'成都','2024-12-19 13:27:20.189003'),(8,'杭州','2024-12-19 13:27:20.198142'),(9,'武汉','2024-12-19 13:27:20.207112'),(10,'南京','2024-12-19 13:27:20.216317'),(11,'西安','2024-12-19 13:27:20.225214'),(12,'苏州','2024-12-19 13:27:20.234729'),(13,'沈阳','2024-12-19 13:27:20.244264'),(14,'青岛','2024-12-19 13:27:20.253214'),(15,'大连','2024-12-19 13:27:20.261818'),(16,'宁波','2024-12-19 13:27:20.271168'),(17,'厦门','2024-12-19 13:27:20.280314'),(18,'济南','2024-12-19 13:27:20.288323'),(19,'郑州','2024-12-19 13:27:20.297061'),(20,'长沙','2024-12-19 13:27:20.308232'),(21,'昆明','2024-12-19 13:27:20.318069'),(22,'合肥','2024-12-19 13:27:20.326851'),(23,'福州','2024-12-19 13:27:20.335884'),(24,'哈尔滨','2024-12-19 13:27:20.345181'),(25,'长春','2024-12-19 13:27:20.354257'),(26,'南昌','2024-12-19 13:27:20.364682'),(27,'贵阳','2024-12-19 13:27:20.373495'),(28,'兰州','2024-12-19 13:27:20.385276'),(29,'南宁','2024-12-19 13:27:20.395539'),(30,'呼和浩特','2024-12-19 13:27:20.405644'),(31,'银川','2024-12-19 13:27:20.416653'),(32,'乌鲁木齐','2024-12-19 13:27:20.426644'),(33,'海口','2024-12-19 13:27:20.436184'),(34,'西宁','2024-12-19 13:27:20.448182'),(35,'拉萨','2024-12-19 13:27:20.457668'),(36,'台北','2024-12-19 13:27:20.466008'),(37,'香港','2024-12-19 13:27:20.474726'),(38,'澳门','2024-12-19 13:27:20.484944');
/*!40000 ALTER TABLE `data_management_flowerlocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_management_flowerpurpose`
--

DROP TABLE IF EXISTS `data_management_flowerpurpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_management_flowerpurpose` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_management_flowerpurpose`
--

LOCK TABLES `data_management_flowerpurpose` WRITE;
/*!40000 ALTER TABLE `data_management_flowerpurpose` DISABLE KEYS */;
INSERT INTO `data_management_flowerpurpose` VALUES (1,'生日','2024-12-19 13:32:14.004413'),(2,'告白','2024-12-19 13:32:14.013001'),(3,'庆祝','2024-12-19 13:32:14.025001'),(4,'纪念日','2024-12-19 13:32:14.033689'),(5,'求婚','2024-12-19 13:32:14.041699'),(6,'道歉','2024-12-19 13:32:14.052697'),(7,'慰问','2024-12-19 13:32:14.062698');
/*!40000 ALTER TABLE `data_management_flowerpurpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_management_holiday`
--

DROP TABLE IF EXISTS `data_management_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_management_holiday` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `date` date DEFAULT NULL,
  `description` longtext,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_management_holiday`
--

LOCK TABLES `data_management_holiday` WRITE;
/*!40000 ALTER TABLE `data_management_holiday` DISABLE KEYS */;
INSERT INTO `data_management_holiday` VALUES (1,'情人节','2025-02-14','情人节是庆祝爱情和浪漫的节日，情侣们通常会互赠礼物，表达爱意。',1),(2,'母亲节','2025-05-10','母亲节是向母亲表达感恩和爱的节日。',1),(3,'教师节','2025-09-10','教师节是中国专门设立来感恩和尊敬教师的节日。',1),(4,'妇女节','2025-03-08','国际妇女节旨在庆祝女性在社会、经济、文化和政治等方面的成就。',1);
/*!40000 ALTER TABLE `data_management_holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_management_normalizedproduct`
--

DROP TABLE IF EXISTS `data_management_normalizedproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_management_normalizedproduct` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `detail_url` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `source_id` int NOT NULL,
  `post_free` tinyint(1) NOT NULL,
  `shop_id` bigint DEFAULT NULL,
  `deal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `data_management_norm_source_id_d18a08a9_fk_data_mana` (`source_id`),
  KEY `data_management_norm_shop_id_854418bd_fk_data_mana` (`shop_id`),
  CONSTRAINT `data_management_norm_shop_id_854418bd_fk_data_mana` FOREIGN KEY (`shop_id`) REFERENCES `data_management_shop` (`id`),
  CONSTRAINT `data_management_norm_source_id_d18a08a9_fk_data_mana` FOREIGN KEY (`source_id`) REFERENCES `data_management_datasource` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_management_normalizedproduct`
--

LOCK TABLES `data_management_normalizedproduct` WRITE;
/*!40000 ALTER TABLE `data_management_normalizedproduct` DISABLE KEYS */;
INSERT INTO `data_management_normalizedproduct` VALUES (140,'向日葵香槟玫瑰花束鲜花同城速递北京天津上海花店配送女友生日',98.00,'http://img.alicdn.com/img/i3/14756097/O1CN01WuIl2b1uuTZcC3A9R_!!0-saturn_solar.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22357329f7946836d1739725afe3fbdaa3%22%7D&id=676021370130&ns=1&xxc=ad_ztc&skuId=5625675371258','2024-12-25 06:53:13.874793',1,1,1,700.00),(141,'全国向日葵混搭花束鲜花速递同城香槟玫瑰生日配送女友北京上海店 鲜花',49.00,'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/2104939368/O1CN01gvlGl22J4bJ9HViiC_!!0-item_pic.jpg_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22dd6d17c008d608183a132dc03160b843%22%7D&id=671466807182&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5002908783933','2024-12-25 06:53:13.951283',1,1,2,20000.00),(142,'云南昆明鲜花基地直发红玫瑰花水养百合花束鲜切花向日葵花材批发 鲜花',9.90,'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/1626289364/O1CN01GAiEVd2J2lRrFDBwy_!!0-item_pic.jpg_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22c9f822344181a4bbfe3a9178409760af%22%7D&id=610960262336&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5662872984750','2024-12-25 06:53:14.027830',1,1,3,200000.00),(143,'超大巨型绣球花束玫瑰花生日深圳北京上海鲜花速递同城配送全国店 鲜花',88.00,'https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/2212414546141/O1CN01afQUSV1vEcwypgI8Z_!!0-item_pic.jpg_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%229566beb63c2c4b29e0883546220fdb5a%22%7D&id=656770136768&ns=1&abbucket=6&xxc=taobaoSearch&skuId=4914154186053','2024-12-25 06:53:14.136046',1,1,4,10000.00),(144,'长春鲜花店同城速递玫瑰康乃馨向日葵花生日南关宽城朝阳配送',72.00,'http://img.alicdn.com/img/i3/13744105/O1CN01QJK8841gC8jYlg8gf_!!0-saturn_solar.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%2272b4a1c49db3b4c3cc9a34a10e3d1e8d%22%7D&id=708254750132&ns=1&xxc=ad_ztc&skuId=5284265719570','2024-12-25 06:53:14.232792',1,1,5,53.00),(145,'鲜花速递同城香槟玫瑰向日葵混搭花束上海北京杭州广州生日配送店 鲜花',65.00,'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/2907292540/O1CN01txPh5P1UdMzs1UzW5_!!2-item_pic.png_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22dde28bef8386a6cef876ef72b95e6d5a%22%7D&id=610527323283&ns=1&abbucket=6&xxc=taobaoSearch&skuId=4459429042576','2024-12-25 06:53:14.313608',1,1,6,10000.00),(146,'沈阳鲜花同城速递生日表白玫瑰康乃馨向日葵花铁西和平花店配送',65.00,'http://img.alicdn.com/img/i4/850870196/O1CN01RZELu31DJobuG6Tx6_!!0-saturn_solar.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%2259256dfabb451bd917a374e934a25b4d%22%7D&id=708237448561&ns=1&xxc=ad_ztc&skuId=5546457317629','2024-12-25 06:53:14.406000',1,1,7,24.00),(147,'北京同城郁金香生日花束天津太原送女友繁花阁玫瑰花告白鲜花速递 鲜花',138.00,'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2445977191/O1CN01sqXlV522zX3cr3nvg_!!2445977191.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22fd6707262060e8407cfc6444b1b2949c%22%7D&id=541758599858&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5265076711628','2024-12-25 06:53:14.480492',1,1,8,5000.00),(148,'长春鲜花同城速递生日表白玫瑰康乃馨向日葵花二道朝阳宽城花店',63.00,'http://img.alicdn.com/img/i4/850870196/O1CN01xU6ssB1DJobwCHodO_!!0-saturn_solar.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%2285d1196d5f69feef1c7dc2c48e16706a%22%7D&id=710135219630&ns=1&xxc=ad_ztc&skuId=5714569159778','2024-12-25 06:53:14.590156',1,1,11,51.00),(149,'全国卡布奇诺玫瑰花束鲜花速递同城配送女友生日上海广州北京花店 鲜花',62.00,'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/2215121256871/O1CN01KurXFy20cyAFbm4cJ_!!0-item_pic.jpg_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22d030cd274bd5dbf2ede4dad15e83a879%22%7D&id=694112450570&ns=1&abbucket=6&xxc=taobaoSearch&skuId=4928561417003','2024-12-25 06:53:14.669173',1,1,12,4000.00),(150,'天津北京鲜花速递同城99朵香槟玫瑰送女友生日混搭花束同城配送',98.00,'http://img.alicdn.com/img/i2/14756097/O1CN01hLVc6Q1uuTpAWjgmt_!!4611686018427382017-0-saturn_solar.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%2241bf0f42107df60f0dd3fd07da77fb5d%22%7D&id=684824513962&ns=1&xxc=ad_ztc&skuId=5064988006329','2024-12-25 06:53:14.760060',1,1,15,29.00),(151,'鲜花速递同城花店向日葵玫瑰鲜花康乃馨生日花束礼物送女友速递 鲜花 鲜花',58.00,'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/2218757067385/O1CN01qXYcG224QNwwZDOL9_!!2218757067385.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22c22619e8c4167114d7cabb31e24b32f1%22%7D&id=848180065757&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5802862435920','2024-12-25 06:53:14.835702',1,1,16,100.00),(152,'全国配送草莓熊抱抱桶花束送女友生日鲜花速递同城店北京上海深圳 鲜花',128.00,'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/2214157028869/O1CN01K4a65I2FO3aI61YzB_!!2214157028869.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22a2bb4af18e6a341074a8ae8e7fb915ec%22%7D&id=738164940863&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5124339592636','2024-12-25 06:53:14.900499',1,1,17,5000.00),(153,'白色粉色混色郁金香鲜切花客厅办公室养花家用送人上海直发包邮',47.90,'http://img.alicdn.com/img/i4/106763952/O1CN01LvpPAt1f44AbUUujH_!!0-saturn_solar.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%225c7af1b62f1e28902eb0d6773b0d4315%22%7D&id=760082034811&ns=1&xxc=ad_ztc&skuId=5237688128529','2024-12-25 06:53:14.977603',1,0,18,300.00),(154,'巨型超大绣球花束玫瑰花上海北京深圳生日鲜花速递同城花店配送花 鲜花',68.00,'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/1744362897/O1CN01SzUMMu1XGs2Awhw3Z_!!0-item_pic.jpg_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%227aefaa5901fdcf537ac6ce2d8ecc7156%22%7D&id=630258030875&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5424183168657','2024-12-25 06:53:15.025290',1,0,19,20000.00),(155,'香槟玫瑰鲜花速递向日葵圣诞花束北京上海广州同城生日配送店女友 鲜花',63.00,'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2207385728320/O1CN01QwHIen2BKc3fpBa3c_!!0-item_pic.jpg_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22fc81208f654f47b7d8f00c93fcdda719%22%7D&id=691554432615&ns=1&abbucket=6&xxc=taobaoSearch&skuId=4912318712893','2024-12-25 06:53:15.098017',1,1,20,1000.00),(156,'山东基地直发无土玫瑰顺丰包邮鲜花鲜切花束混搭新鲜家用插花 鲜花',17.90,'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2213996435835/O1CN01jT1BXG1syTriAZ0rZ_!!2213996435835.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%229d11d0b33d4248d01220bbf355c5bb1e%22%7D&id=673986835878&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5824014507866','2024-12-25 06:53:15.205473',1,1,21,9000.00),(157,'香雪兰小苍兰云南基地直发鲜花家庭办公室水养花卉情人节带香味',29.88,'http://img.alicdn.com/img/i4/4373288798/O1CN01pP0dpi2ErXZOHzyo8_!!0-saturn_solar.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22780a7f0d3710bc44b48c1b3aa94c9c5f%22%7D&id=770339194179&ns=1&xxc=ad_ztc&skuId=5545279580541','2024-12-25 06:53:15.235646',1,1,22,200.00),(158,'ins玫瑰花束鲜花速递同城配送女友生日北京上海广州深圳全国花店 鲜花',67.00,'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/2215121256871/O1CN0141zNWs20cyL2Bb2Sm_!!0-item_pic.jpg_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22db1780a2e1ed25920119ce738e37381b%22%7D&id=724627217070&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5202815830772','2024-12-25 06:53:15.252968',1,1,23,1000.00),(159,'向日葵混搭花束鲜花速递同城香槟玫瑰生日全国配送女友北京上海店 鲜花',52.00,'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/1744362897/O1CN01fGSiq51XGsN1I20yu_!!0-item_pic.jpg_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%220b2dd221f1fde6f057a32e5e75fb84b9%22%7D&id=43412951940&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5117214099523','2024-12-25 06:53:15.337043',1,1,24,1000.00),(160,'ins花束鲜花速递同城配送女友闺蜜玫瑰花上海北京广州杭州生日店 鲜花',99.00,'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/3563068145/O1CN01vhOcqw2A2SnKvawbW_!!0-item_pic.jpg_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22bc12086315a1eb58a3657a08973eb06d%22%7D&id=707729948077&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5142565470816','2024-12-25 06:53:15.417554',1,1,25,3000.00),(161,'多头泡泡卡布奇诺巧克力小玫瑰鲜花花束云南基地直发鲜切花圣诞节 鲜花',9.90,'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/2976062918/O1CN01aW9v7V1XQUYAULrRE_!!2976062918.png_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22089a3f893000793b6a6dce5760f8cf66%22%7D&id=719872177316&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5258225257426','2024-12-25 06:53:15.504247',1,0,26,20000.00),(162,'巨型超大绣球花束玫瑰花生日鲜花速递同城北京上海深圳店全国配送',60.00,'http://img.alicdn.com/img/i1/127301118/O1CN01KE8rYX1K85kXqSiTK_!!2-saturn_solar.png_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22e9f7cff492246295ff5b75711a3ea5ef%22%7D&id=768473548207&ns=1&xxc=ad_ztc&skuId=5698640075872','2024-12-25 06:53:15.538828',1,1,27,400.00),(163,'全国卡布奇诺玫瑰花束抱抱桶鲜花速递同城配送北京上海深圳生日店 鲜花',123.00,'https://g-search2.alicdn.com/img/bao/uploaded/i4/i3/2208150528302/O1CN01GnXORj2BCN8oTSRu2_!!2208150528302.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22f7f154dd076231370fdba43872f90292%22%7D&id=726649720326&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5430768219966','2024-12-25 06:53:15.613449',1,1,28,2000.00),(164,'草莓熊抱抱桶花束玫瑰鲜花速递同城配送女友生日表白上海北京花店 鲜花',118.00,'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2206944853260/O1CN0116gopT1Zx8ArK5P0d_!!0-item_pic.jpg_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%225e140d02e944c44986480b85c949616a%22%7D&id=716904743579&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5006611493853','2024-12-25 06:53:15.681889',1,0,29,1000.00),(165,'上海北京杭州广东鲜花速递同城配送混搭花束玫瑰圣诞生日礼物节日 鲜花',228.00,'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/2218637137037/O1CN01A8bVyd21r06pt4IsX_!!2-item_pic.png_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22546c28bd4644d1be8b2aa4840aec4b6c%22%7D&id=837941262208&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5600400785318','2024-12-25 06:53:15.746234',1,1,30,900.00),(166,'金鱼草鲜花云南直发基地鲜切花束办公观赏客厅水养插花瓶小众花材',35.80,'http://img.alicdn.com/img/i2/5971847776/O1CN018KShme27JSlVBp7fG_!!0-saturn_solar.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%222330dd0b8fc2930e20d758cbaa64e48d%22%7D&id=771668606680&ns=1&xxc=ad_ztc&skuId=5284039336986','2024-12-25 06:53:15.826056',1,1,31,100.00),(167,'玫瑰花鲜花云南直发昆明基地直批七夕花束水养插花鲜切花速递同城 鲜花',29.90,'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/3973167256/O1CN01iGtMY023TIgccECNp_!!3973167256.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22da5b2f7ef39c48582fb4a41f5b54faae%22%7D&id=575215251554&ns=1&abbucket=6&xxc=taobaoSearch&skuId=3768826872243','2024-12-25 06:53:15.846850',1,1,32,9000.00),(168,'水果花束成品礼盒乔迁鲜花速递同城配送长辈生日北京上海广州花店 鲜花',196.00,'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/3563068145/O1CN01uzcohO2A2SpB5Z1IK_!!0-item_pic.jpg_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22b322e0c7567171df4c80ec1fd763e411%22%7D&id=696584714653&ns=1&abbucket=6&xxc=taobaoSearch&skuId=4941941449092','2024-12-25 06:53:15.880344',1,1,25,4000.00),(169,'浓香型腊梅鲜花摆件水培客厅花束鲜切花干枝水养鲜花枝原生好养活 鲜花 鲜花',28.80,'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/2206588314948/O1CN01NBIW2z1mQEkjl1Wfm_!!2206588314948-0-C2M.jpg_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22bd94a566d87360b48b953142fd7581d5%22%7D&id=857851281347&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5835686839148','2024-12-25 06:53:15.937524',1,1,33,1000.00),(170,'99朵粉玫瑰花束生日鲜花速递同城成都北京上海花店全国配送女友 鲜花',98.00,'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2684335729/O1CN01uivTa61sBw1wg78bx_!!2684335729.png_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%220e88af2b0fdf5e9fe1c58ac5db58e6ad%22%7D&id=812070311979&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5505578776963','2024-12-25 06:53:15.952532',1,1,34,600.00),(171,'全国鲜花速递同城向日葵玫瑰花束配送女友生日北京上海深圳广州店',70.00,'http://img.alicdn.com/img/i2/5113223064/O1CN01qyQWHa1YVMXJhBHwR_!!0-saturn_solar.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22567280ae211dfc95b5e582d3e2a98023%22%7D&id=749906190388&ns=1&xxc=ad_ztc&skuId=5460287622376','2024-12-25 06:53:16.032156',1,0,35,8000.00),(172,'泰迪向日葵混搭油画风花束生日鲜花速递同城配送女友北京上海广州 鲜花',106.00,'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/3563068145/O1CN01js9C1Y2A2SxP7zzy1_!!0-item_pic.jpg_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22817e2207627f82233c645dec4cf77ccd%22%7D&id=843178153021&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5786274275042','2024-12-25 06:53:16.156482',1,1,25,100.00),(173,'全国配送碎冰蓝玫瑰花束送女友生日鲜花速递同城北京上海广州深圳 鲜花',78.00,'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2217059496293/O1CN01PSIJEA1wMFRdOrh0z_!!2217059496293.png_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%2255dd2985e31c56348d4ca4a4c6b07b69%22%7D&id=829811596884&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5660935261087','2024-12-25 06:53:16.230744',1,1,36,200.00),(174,'多头小玫瑰泡泡云南直发鲜花花束速递同城苏菲宝贝520情人节礼物 鲜花',9.80,'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/548839091/O1CN01o93oHd2H1jdhAD4z9_!!548839091.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22efa9a70cc362840fa107cc8b827790b2%22%7D&id=848940493128&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5638080709573','2024-12-25 06:53:16.325820',1,1,37,1000.00),(175,'小玫瑰把束手札仿真花27头小牡丹假花摄影道具新娘手捧花家居摆件',14.80,'http://img.alicdn.com/img/i3/502650104/O1CN01u6k7jG1Cdg2TiqNa6_!!0-saturn_solar.jpg_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22e97ca0a6a5748aa8f45e84c3b25c8e23%22%7D&id=681069138260&ns=1&xxc=ad_ztc&skuId=5049995378421','2024-12-25 06:53:16.359312',1,0,38,7000.00),(176,'全国向日葵香槟玫瑰混搭花束配送生日鲜花速递同城广州深圳上海店 鲜花',35.00,'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/3490049325/O1CN01dIrpg12Iku9k7ddps_!!0-item_pic.jpg_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%2251ac57dd8702dcb9c2cee561b454f59f%22%7D&id=589587889703&ns=1&abbucket=6&xxc=taobaoSearch&skuId=4034664249787','2024-12-25 06:53:16.395461',1,1,39,20000.00),(177,'香雪兰小苍兰鲜花云南昆明基地直发家用办公室插花花店婚庆花材 鲜花',19.80,'https://g-search2.alicdn.com/img/bao/uploaded/i4/i1/2701764395/O1CN01gz7f9l1iKxS9DQvnx_!!2701764395.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22c4d03fde17f5cc6da19d39871f333de9%22%7D&id=635835330934&ns=1&abbucket=6&xxc=taobaoSearch&skuId=4725401375428','2024-12-25 06:53:16.487195',1,1,40,400.00),(178,'花点时间每周鲜花包月订云南基地直发配送送花插花鲜切花圣诞礼物 鲜花',99.00,'https://g-search2.alicdn.com/img/bao/uploaded/i4/i3/3625079559/O1CN01y5cXe12KU50qelrnZ_!!4611686018427384583-2-item_pic.png_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%2287a18d0198177528deb57cb8b219a2b2%22%7D&id=596004701701&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5038085368482','2024-12-25 06:53:16.527207',1,1,41,6000.00),(179,'玫瑰花鲜花山东基地直发顺丰包邮鲜切花白玫瑰插花花束水养真花 鲜花',17.90,'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2213996435835/O1CN01wCn8Hm1syTsQjbC5k_!!2213996435835.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22da5112988410bbd643130c30248ab8ee%22%7D&id=704252566210&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5654431200517','2024-12-25 06:53:16.549196',1,1,21,10000.00),(180,'多头玫瑰10支 苏菲宝宝,全店鲜花任意两束顺风航空包邮鲜切花',89.00,'http://img.alicdn.com/img/i3/101191171/O1CN01CJFqeT1KWMdab6P3t_!!0-saturn_solar.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%224e3409efe07cd1d279c284dd4fe00233%22%7D&id=719736403966&ns=1&xxc=ad_ztc&skuId=5189030511483','2024-12-25 06:53:16.585083',1,1,42,98.00),(181,'乌梅子酱曼塔玫瑰花束鲜花速递同城配送女友全国生日上海广州北京 鲜花',85.00,'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/2201261993308/O1CN01BdUUZZ1aJ7AiPfPJf_!!0-item_pic.jpg_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%220d9cb1c9442f0449d469f4b5dd49d464%22%7D&id=736632150035&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5427938740852','2024-12-25 06:53:16.614564',1,1,43,5000.00),(182,'新鲜玫瑰花鲜花云南基地直发直批家用插花昆明花卉斗南速递包邮 鲜花',29.90,'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/2882273113/O1CN016y5Vj61Yrnv2fpLk7_!!2882273113.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%220b13be27060c68a8b879d7f07acafb18%22%7D&id=625680065672&ns=1&abbucket=6&xxc=taobaoSearch&skuId=4608348867615','2024-12-25 06:53:16.687564',1,1,44,20000.00),(183,'全国油画风向日葵花束生日蝴蝶兰玫瑰鲜花速递同城上海北京配送 鲜花',48.00,'https://picasso.alicdn.com/imgextra/O1CNA113LD6p1lFPk9ePl5Y_!!2212685794789-0-psf.jpg_580x580q90.jpg','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22b896d71349190b7b06f1a35faf6a9b07%22%7D&id=807677864466&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5497289189294','2024-12-25 06:53:16.728268',1,0,45,700.00),(184,'全国佛弗洛伊德玫瑰花束鲜花速递同城生日上海北京广州深圳成都送',78.00,'http://img.alicdn.com/img/i3/5124498837/O1CN01P0iLm32F9OwiKYiEU_!!0-saturn_solar.jpg_580x580q90.jpg','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22e678667ada5d0302946a82be898a2bd6%22%7D&id=748184083884&ns=1&xxc=ad_ztc&skuId=5425523138908','2024-12-25 06:53:16.800604',1,1,46,1000.00);
/*!40000 ALTER TABLE `data_management_normalizedproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_management_normalizedproduct_category`
--

DROP TABLE IF EXISTS `data_management_normalizedproduct_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_management_normalizedproduct_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `normalizedproduct_id` int NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_management_normaliz_normalizedproduct_id_cat_139ba84f_uniq` (`normalizedproduct_id`,`category_id`),
  KEY `data_management_norm_category_id_9d290832_fk_data_mana` (`category_id`),
  CONSTRAINT `data_management_norm_category_id_9d290832_fk_data_mana` FOREIGN KEY (`category_id`) REFERENCES `data_management_category` (`id`),
  CONSTRAINT `data_management_norm_normalizedproduct_id_b4fc3121_fk_data_mana` FOREIGN KEY (`normalizedproduct_id`) REFERENCES `data_management_normalizedproduct` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_management_normalizedproduct_category`
--

LOCK TABLES `data_management_normalizedproduct_category` WRITE;
/*!40000 ALTER TABLE `data_management_normalizedproduct_category` DISABLE KEYS */;
INSERT INTO `data_management_normalizedproduct_category` VALUES (216,140,1),(215,140,5),(218,141,1),(217,141,5),(220,142,1),(221,142,2),(219,142,5),(222,143,1),(224,144,1),(225,144,3),(223,144,5),(227,145,1),(226,145,5),(229,146,1),(230,146,3),(228,146,5),(232,147,1),(231,147,4),(234,148,1),(235,148,3),(233,148,5),(236,149,1),(237,150,1),(239,151,1),(240,151,3),(238,151,5),(241,153,4),(242,154,1),(244,155,1),(243,155,5),(245,156,1),(246,158,1),(248,159,1),(247,159,5),(249,160,1),(250,161,1),(251,162,1),(252,163,1),(253,164,1),(254,165,1),(255,167,1),(256,170,1),(258,171,1),(257,171,5),(259,172,5),(260,173,1),(261,174,1),(263,175,1),(262,175,7),(265,176,1),(264,176,5),(266,179,1),(267,180,1),(268,181,1),(269,182,1),(271,183,1),(270,183,5),(272,184,1);
/*!40000 ALTER TABLE `data_management_normalizedproduct_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_management_normalizedproduct_location`
--

DROP TABLE IF EXISTS `data_management_normalizedproduct_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_management_normalizedproduct_location` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `normalizedproduct_id` int NOT NULL,
  `flowerlocation_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_management_normaliz_normalizedproduct_id_flo_15779bd1_uniq` (`normalizedproduct_id`,`flowerlocation_id`),
  KEY `data_management_norm_flowerlocation_id_933ca18b_fk_data_mana` (`flowerlocation_id`),
  CONSTRAINT `data_management_norm_flowerlocation_id_933ca18b_fk_data_mana` FOREIGN KEY (`flowerlocation_id`) REFERENCES `data_management_flowerlocation` (`id`),
  CONSTRAINT `data_management_norm_normalizedproduct_id_15ffa022_fk_data_mana` FOREIGN KEY (`normalizedproduct_id`) REFERENCES `data_management_normalizedproduct` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=355 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_management_normalizedproduct_location`
--

LOCK TABLES `data_management_normalizedproduct_location` WRITE;
/*!40000 ALTER TABLE `data_management_normalizedproduct_location` DISABLE KEYS */;
INSERT INTO `data_management_normalizedproduct_location` VALUES (268,140,1),(269,140,2),(270,140,3),(271,141,1),(272,141,2),(273,142,21),(276,143,1),(275,143,2),(274,143,6),(277,144,25),(278,145,1),(280,145,2),(279,145,5),(281,145,8),(282,146,13),(283,147,1),(284,147,3),(285,148,25),(288,149,1),(287,149,2),(286,149,5),(289,150,1),(290,150,3),(291,152,1),(293,152,2),(292,152,6),(294,153,2),(295,154,1),(297,154,2),(296,154,6),(298,155,1),(300,155,2),(299,155,5),(301,158,1),(303,158,2),(302,158,5),(304,158,6),(305,159,1),(306,159,2),(307,160,1),(309,160,2),(308,160,5),(310,160,8),(311,162,1),(313,162,2),(312,162,6),(314,163,1),(316,163,2),(315,163,6),(317,164,1),(318,164,2),(319,165,1),(320,165,2),(321,165,8),(322,167,21),(323,168,1),(325,168,2),(324,168,5),(326,170,1),(328,170,2),(327,170,7),(329,171,1),(332,171,2),(331,171,5),(330,171,6),(333,172,1),(335,172,2),(334,172,5),(336,173,1),(338,173,2),(337,173,5),(339,173,6),(342,176,2),(340,176,5),(341,176,6),(343,177,21),(346,181,1),(345,181,2),(344,181,5),(347,182,21),(348,183,1),(349,183,2),(354,184,1),(351,184,2),(352,184,5),(353,184,6),(350,184,7);
/*!40000 ALTER TABLE `data_management_normalizedproduct_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_management_normalizedproduct_purpose`
--

DROP TABLE IF EXISTS `data_management_normalizedproduct_purpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_management_normalizedproduct_purpose` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `normalizedproduct_id` int NOT NULL,
  `flowerpurpose_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_management_normaliz_normalizedproduct_id_flo_a27a2ec5_uniq` (`normalizedproduct_id`,`flowerpurpose_id`),
  KEY `data_management_norm_flowerpurpose_id_d20dad41_fk_data_mana` (`flowerpurpose_id`),
  CONSTRAINT `data_management_norm_flowerpurpose_id_d20dad41_fk_data_mana` FOREIGN KEY (`flowerpurpose_id`) REFERENCES `data_management_flowerpurpose` (`id`),
  CONSTRAINT `data_management_norm_normalizedproduct_id_a7a00cb2_fk_data_mana` FOREIGN KEY (`normalizedproduct_id`) REFERENCES `data_management_normalizedproduct` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_management_normalizedproduct_purpose`
--

LOCK TABLES `data_management_normalizedproduct_purpose` WRITE;
/*!40000 ALTER TABLE `data_management_normalizedproduct_purpose` DISABLE KEYS */;
INSERT INTO `data_management_normalizedproduct_purpose` VALUES (107,140,1),(108,141,1),(109,143,1),(110,144,1),(111,145,1),(112,146,1),(113,147,1),(114,147,2),(115,148,1),(116,149,1),(117,150,1),(118,151,1),(119,152,1),(120,154,1),(121,155,1),(122,158,1),(123,159,1),(124,160,1),(125,162,1),(126,163,1),(127,164,1),(128,165,1),(129,168,1),(130,170,1),(131,171,1),(132,172,1),(133,173,1),(134,176,1),(135,181,1),(136,183,1),(137,184,1);
/*!40000 ALTER TABLE `data_management_normalizedproduct_purpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_management_rawproducts`
--

DROP TABLE IF EXISTS `data_management_rawproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_management_rawproducts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `deal` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `shop` varchar(255) NOT NULL,
  `title_url` varchar(3000) NOT NULL,
  `shop_url` varchar(3000) NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  `style_1` varchar(100) DEFAULT NULL,
  `style_2` varchar(100) DEFAULT NULL,
  `style_3` varchar(100) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `postText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_management_rawproducts`
--

LOCK TABLES `data_management_rawproducts` WRITE;
/*!40000 ALTER TABLE `data_management_rawproducts` DISABLE KEYS */;
INSERT INTO `data_management_rawproducts` VALUES (1,'向日葵香槟玫瑰花束鲜花同城速递北京天津上海花店配送女友生日',98.00,'700+人付款','天津','佰艺鲜花企业店','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22357329f7946836d1739725afe3fbdaa3%22%7D&id=676021370130&ns=1&xxc=ad_ztc&skuId=5625675371258','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1665&e=%2BJXHVVZkKeJ%2B5lRwu8uRJjNd3sbJe9xjPXJxEBS%2FE5PF%2BwS7raRQuf15KAaTEU3GaIw709DlrVCMV8hTlAjBswavY4a5OfPb87DobosM0c%2B6tI%2F4RoetvkfuPuW%2BHgym92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38kkOWn3Jk%2Bk0mqM3wmOTJaRpWbSk1L%2BII5ljypNz5UUm6kSAdO%2FBhQCtO8V%2FXKX9UFe%2FiF7vupheYieHXloAiCzhsMZk6%2FqUMEibcZU5MHKyv5IJrOghvPQUeAEj2OE8aEXMLlD8p5qH4iO1qNgcsZ16JyilNC9jeEkBYp%2BQasNMDy%2FsskSK1LJn7F8nASD8gOuY71XpIoz9u%2FbKFyUfpHJniEOSuBuzUo08hIrE5jiF3AqBdwS%2FFwjg0ldcXZLRzWr4rLyIFoan7bUiqCbXUV7sv5zSwJ2dwHuEIrDaou7xSQFin5Bqw0zO46E5ks8WZxrasXCid77Vw4IuudJGYHCGtta8SmBMcHlNcUT5V5uca3OnQSdnKiQ%2BRibzN8qzrH9ok46qfamvTb5JO4M57LkuHn7ZMbrDJXON30EHoSh7iDqaq1YwEs6lMQl1m0YqnmWOsqiB2F3yMXA2zYrcE2UKczQB1gohhaFf1cSNzG%2BigGCrsDiRvjRSelwSZDr3RMislJFzGkg6CSMUR0rynGJPiKpjFy6WxQTsiUegDekuUqP4hzVDTns3FPQuq2CSa2pxef3hfmDXtEC4aknEMfPd2uppD12zbdsFbXyG1oYqZSN4CvKZFaMpe1ZAFuRbVf7VTdlexU4rN9grcyqqObbEHVn7COiMxJSgyMCwReMOEvCFxfY8reZ%2Bz7MI7%2BkQLHxPy5mJjB3Yc%2BbqTLDbeBx6NV2KGFRUK56nlHkd%2FQf9UO3g4NrneXhaSZrZ4civCkzoY%2BBVMswUTSjf8g6beCBA9kSq22gb2HWBn%2B2%2F2jEAwomu7eU%2FHBrMxJe10TOpICLoABxgBCoNqsaJJi08z56WiEQej%2BFD0TNVn4wgsfd6SnzRA1VOvBd5IniiXJpJIgHSiRzVZxzOBC9I1iq9jhvIEM4kpZbvdJg4CjKq23z%2BsBwDPC7%2FVi26rqLKEpCgLgqANAcaJYCzRNUQW4ed7wGwHAM8Lv9WLRPLP5VAlq3ug0HqZHFLXmWnWS9tudvcR6syk%2F4MFjYLKYHdIYLUSc5RnDJEoyi3mw73vGuX7DZGVUNYZ%2F7fxuODH%2FXzogCTk7DtxVRH7U722Eo8T6qEBsSf2mKY%2Fd9xJw1DyOeRcCvlxbg%2Bd%2FNNLEwXwZ%2FUdRqD%2Fbo%2BjYnwmvD%2Fv5psxTSBM%2BX%2FaxRvWNFON%2BaXiOUVI6U53KwPvN6bUrrxnv%2FRsUEbNORe4YICrTd1UwxBU7c%2BEPbm94RoxzzWWRPfsaLPKOfBZJ5fu%2FqQhkSAUpy1ZGnphcXiKJg77rei4ExVFjAUKrCHz39ZIwfSjEMmo0pQvuZNSnzRA1VOvBd5IniiXJpJIvU7hBlLdQww','http://img.alicdn.com/img/i3/14756097/O1CN01WuIl2b1uuTZcC3A9R_!!0-saturn_solar.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:04.720731','包邮'),(2,'全国向日葵混搭花束鲜花速递同城香槟玫瑰生日配送女友北京上海店 鲜花',49.00,'2万+人付款','北京','爱里旗舰店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22dd6d17c008d608183a132dc03160b843%22%7D&id=671466807182&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5002908783933','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWRnXWPnimotyXfYrc4qA3UqZ53rW87xuqQccnsTJu5ryk','https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/2104939368/O1CN01gvlGl22J4bJ9HViiC_!!0-item_pic.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:04.732059','包邮'),(3,'云南昆明鲜花基地直发红玫瑰花水养百合花束鲜切花向日葵花材批发 鲜花',9.90,'20万+人付款','云南 昆明','一网情深旗舰店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22c9f822344181a4bbfe3a9178409760af%22%7D&id=610960262336&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5662872984750','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWQcrUXc6cdv1EvMYYxZoU1Cx1czQvd99rz19egXGgf9TK','https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/1626289364/O1CN01GAiEVd2J2lRrFDBwy_!!0-item_pic.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:04.743351','包邮'),(4,'超大巨型绣球花束玫瑰花生日深圳北京上海鲜花速递同城配送全国店 鲜花',88.00,'1万+人付款','广东 深圳','花屿七寻旗舰店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%229566beb63c2c4b29e0883546220fdb5a%22%7D&id=656770136768&ns=1&abbucket=6&xxc=taobaoSearch&skuId=4914154186053','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWWcwgmDPqxZz1ZHbTVRNXvts7J7G832bRTjuizEsLPuet','https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/2212414546141/O1CN01afQUSV1vEcwypgI8Z_!!0-item_pic.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:04.753251','包邮'),(5,'长春鲜花店同城速递玫瑰康乃馨向日葵花生日南关宽城朝阳配送',72.00,'53人付款','吉林 长春','鲜花实惠 实体花店 同城速递','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%2272b4a1c49db3b4c3cc9a34a10e3d1e8d%22%7D&id=708254750132&ns=1&xxc=ad_ztc&skuId=5284265719570','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1625&e=2W8cKRCUSI5%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVCJfnc4FguoNPQq2CySmE%2FnNGiaETok7eoKZO82EheotKTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38gGKiIx4ZvehicMeO6hHlpZTaegaRy552SdQk4YMqXhAkMmycm9yjfxG39cvVZ4BjK3lUbux7iQQUTMbkymYWuo51wnNCiOHPMxbAZGYM9s8jXkFYkcKRBqP%2FElhqqtEQg4XHXLiPTodveMHG1XVhXKJpl132AW5QHVlcG0d3OEDqmN%2BRgjjEzHbcyktizh%2Foz0HZEQXWR1mhClGC%2BBpJfJSheoXn6IRa%2Fbbx72A2KN8fG2966ibRNgtC1bajOmTkgTdRuwEIpOoWBOrqe1eCkcl47EVAvCaHiXM%2FNYoHuaEDdxPq7xWzXOA1hFtVz1JeelQ%2B5NbZ74chsnsQ40DJcOGtta8SmBMcLpOzTVaFwg24KkiNr3o%2FMqjkerEqYqzztQHeYL8D1Yb4m1YrYts0Nuon2NpzNsJZQphOpdbEly%2FYUQ7mDjhFocBPGvG%2FKZbF7PCk9YifAPjVv5hvl2YTW6GcRnICRzrBQY4M93vSo9WAl8dOWFt1z8vWY9r0Nhu92d7HvH4%2Fxber%2FXmMNzBUWYdRjB%2FsFvv0VQJ0XL8ldZRUynyruW5jCtJ2V131JF28GAIedT1BwUP0K9otVKlWaq4sRqX3eopFn5Fc99oTSL6Lix7XmbTE1cWl08qL3hkuz00AiX9eN%2B7ltZOTsYQ61ulBsUR1%2B8C440H6P8EII7HPkCF0zyGGNXa3L3v%2BABN%2FbUfnsm3%2BA05aNlPaV3%2BvD4oz9ldPxyDZDvSotcLRCBbDhcdcuI9Oh1pame1mRT5eUyGFhEFWtGVxNxiZosA12kZcqq33EuIuqFDAj4%2FRmi0tNGkBJyASlQFkMu49kj5jVLUmFU8EVDbAhzFftKgzv%2FKK6l%2BzsRDvGO%2Bx8PqtzL63n9BMq2wYKI6seEeyWovo8AqmUAfecsIrL8RL9gvr7%2BjkerEqYqzzo2whjREW1YMofra8CUw2HsVmmgRtjfyXqOR6sSpirPOYN6C4tj1Ud1H7j7lvh4Mpt9vayO5PzeiZYEscTSQMIYuknpb1jViPc7avNc%2Fy5A5UvZ%2F210ye33nPc1JosiwlYA33umyxAQ8agGh2nhX6XVP2Znw9q4UIV7wdMWG9oMLoMebScceXBKHvr56a7JfxP61Wlcls95L4Fvt5BgFQqVaC%2BcZsQ4TgmS4mfHAY0vXWj2cxfyprxzUUjQb7qsVuhAs1Cg39wEvhrdGhMF%2BL9mjkerEqYqzztQHeYL8D1Yb6a%2BgtWZbECR9zakFedmvDlLUmFU8EVDb%2FWfwo8GWjbnSV%2FK3%2BwjKy5wNuwX53x8SVsJ2MTyLtxVmvTc15V7obg%3D%3D','http://img.alicdn.com/img/i3/13744105/O1CN01QJK8841gC8jYlg8gf_!!0-saturn_solar.jpg_580x580q90.jpg_.webp','50朵','','','2024-12-18 13:42:04.762668','包邮'),(6,'鲜花速递同城香槟玫瑰向日葵混搭花束上海北京杭州广州生日配送店 鲜花',65.00,'1万+人付款','上海','涛骋家居专营店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22dde28bef8386a6cef876ef72b95e6d5a%22%7D&id=610527323283&ns=1&abbucket=6&xxc=taobaoSearch&skuId=4459429042576','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWbKXazKNMxa6pjYUFoE4wNFAncyKaiXKg6optyaBoY44t','https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/2907292540/O1CN01txPh5P1UdMzs1UzW5_!!2-item_pic.png_580x580q90.jpg_.webp','19朵','','','2024-12-18 13:42:04.772719','包邮'),(7,'沈阳鲜花同城速递生日表白玫瑰康乃馨向日葵花铁西和平花店配送',65.00,'24人付款','辽宁 沈阳','花念花坊','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%2259256dfabb451bd917a374e934a25b4d%22%7D&id=708237448561&ns=1&xxc=ad_ztc&skuId=5546457317629','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1697&e=sDPmAr62F9B%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVCfujw6Ik9l0YIJdPXRrGwVBn4lRkYjI9UKZO82EheotKTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38idK5CeKwqgbN13Ks%2BcMCkuFY%2BSy7XiEKKXre%2BlYX2LnkMmycm9yjfxG39cvVZ4BjKUDxK8SfF61KuidSddBy800hElcbjvGSfhOKdxlxnsmBSWWNUM%2Fe%2BGtmWjnGv1ju15zEV2SfQ4TZ%2BIUpVgfzkqzWfxvpKCO6FDjaGJJMPBlZM0NXcWorzpHVJCxQYcIf9l3Nbhq4zQSbsDUWaHtleKlkm4r9V3%2FnlKF6hefohFrsWtFug8%2FiQiWqryotdRyR1ECjjN%2FDMGlSlCCWaORfiKHxsc0wSq5QK0DngpR0qrdh1cLshc2GVYGl0trfT337jcnxM%2FVy9a2o2Yazhr74Y9yK2lL%2F3qU5RUoJ%2BmP%2BoM%2BeAko4kuGCgA5VmqCl%2BU%2BGt4ZTo2GLH%2FH5u0TS0ylm7GToVcsYH%2BQnrL50moAC%2F3dX58SHOvvjEvZP8WCSF6CNSAPWFRX8sYEDGSaE%2FC9ipC21vGsrCr%2Fnl%2FyJNYLSWzaB2KrAYOTT3eGcRnICRzrBQY4M93vSo9WAl8dOWFt1z8vWY9r0Nhu92d7HvH4%2Fxber%2FXmMNzBUWYdRjB%2FsFvv0VQJ0XL8ldZRUynyruW5jCtJ2V131JF28GAIedT1BwUP0K9otVKlWaq4sRqX3eopFn5Fc99oTSL6gQCimXcbEsgraBrwsEq9SDl8aRE3%2BMLOeH1cQig8k7a5zoC%2BzABn09O%2FKKfYFKydii5J2jv0EKMHkvQjV73DbmlvaeW46jfW%2BfX%2F%2FtP1NeJtp006RiJ%2B7OwFKJP9we5nttbxrKwq%2F54DqMM1yON6bsAUJvSbvDwixY72jlWAT9die0tk9qkBXtC4%2Fvdj7pATCzhm%2FyYCB3IXWUB1%2BqwNW87w940bU5ltG%2Fa0l32r4Sxwz8fSl3yl4DxoC%2FdEoxrqnA27BfnfHxJWwnYxPIu3FdWS%2BFeYJA%2BygB1IE5ajzYBOOlOCYEq%2Fwye8%2BIGWyy%2B6rB3iNTyNh%2Blve5b335L9ipuN3P%2FWxxRsJ7z4gZbLL7qsHeI1PI2H6YPyIdoM2Yn5n2oppxrCS9NYwqkFSQdjhV7%2BS1uWANjy9ErApLuUzSSJcSI%2FcwVOPTUJ401T%2FVl%2FUqZppCRFKsUcplRF6%2BhzXWoBodp4V%2Bl1T9mZ8PauFCFe8HTFhvaDC6DHm0nHHlwSHLgGNle1QxQG1cWU8K5Zw%2BnpOtpsRuu9aSRUmzDQNkkUHqYgEOF4HI1zllZOjjTObTIMDSVbA9ZJqZe44t5NTWULrQKFX6tmNCDWu8kv4gVkLpKzVcIvCsXHPx5oWH5U5%2FY1f9nPO5SNr8FOyQHsH0Ql%2FLW0A0VcyCRWha3wU5BuwNRZoe2V4mekWSsUc60ZIP%2FdxdKytWUTMtyghMZ658q8YzHT%2Bvhc','http://img.alicdn.com/img/i4/850870196/O1CN01RZELu31DJobuG6Tx6_!!0-saturn_solar.jpg_580x580q90.jpg_.webp','33朵','','','2024-12-18 13:42:04.782769','包邮'),(8,'北京同城郁金香生日花束天津太原送女友繁花阁玫瑰花告白鲜花速递 鲜花',138.00,'5000+人付款','北京','繁花阁鲜花店','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22fd6707262060e8407cfc6444b1b2949c%22%7D&id=541758599858&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5265076711628','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWaTXPQC9uKcQMsx8hH365nVs1svv6AFHezZweUr3PTh2h','https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2445977191/O1CN01sqXlV522zX3cr3nvg_!!2445977191.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:04.792331','包邮'),(9,'长春鲜花同城速递生日表白玫瑰康乃馨向日葵花二道朝阳宽城花店',63.00,'51人付款','吉林 长春','花念花坊','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%2285d1196d5f69feef1c7dc2c48e16706a%22%7D&id=710135219630&ns=1&xxc=ad_ztc&skuId=5714569159778','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1677&e=pj2MAszkhw9%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVCfujw6Ik9l0YIJdPXRrGwVDrjRc3Rm1xEKZO82EheotKTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38idK5CeKwqgbN13Ks%2BcMCkuFY%2BSy7XiEKKXre%2BlYX2LnkMmycm9yjfxG39cvVZ4BjDUc5unDKXIKf5Vg7gIjfuxcGlK9PzLpLyVI6JVkMev8d3LIuh%2B4QzLtUC6vZ4zrffu0WyfYN2pzaqv0%2FY1H2Ov24yS51g6ytnUm91GIJWbOtVJMGdjwPR%2BOZLvMj837x%2F38YgF4VzimPn9QOSONmIUpIchXYAx341KF6hefohFrsWtFug8%2FiQiWqryotdRyR1ECjjN%2FDMGlSlCCWaORfiK%2FyJcn7MowO9OXX9RWhCZOh1cLshc2GVYGl0trfT337q%2F4lOGUONkTxf0hXOcas91yK2lL%2F3qU5RUoJ%2BmP%2BoM%2BeAko4kuGCgA5VmqCl%2BU%2BGnyJc4Cbv5lMvM46hi1mCScl0h8yhi2oUOJtWK2LbNDb%2FeUOHTzmQaB0aKzph5jxuRmhWKsZBvsbXBpSvT8y6S%2B8x8og1yRt39NVLaX6DNO1sPptr33B2a%2FTD5cFDsVN7BaTzIjcWQ38k8VQmR8wfEvs6%2FcDuwKznF9QPdywIRADtAN57bBk1JNSC6thvBE%2BoeDybOJh7xoGsatFoVPSgkeC%2BsVIT9B1avK7vrW0leEVCL2Tqm0KWFW49qTaXTtb%2BJ29D7HeCqg1901TfPsFT6Mcui4ccBcavQfYwLq7Dr5NnZfD9E1YfoZtFp%2Fdb9KKseIGwE4uZfJOPkCF0zyGGNXt0kSJKNQYd%2B1QLq9njOt98WJB15v8uBxAda%2F7BIDF2FwaUr0%2FMukvrI4vBYTxpoxqq%2FT9jUfY6zRKeMJKBfiLvcA9ZJGWCaa2yC6OCr29pQYyTcrNdDLGpOSRcX%2BNHQZeTArE8%2FajGCJNo0H8XKLnPn9QOSONmIWKYLNzaJQ2iSU%2FVSuV5P%2BytInJnK2w12Z3x9YmbGUGhAqMoNXDl67Nke5BbSJ3FXY%2BZwGVvZ%2BhZ1ERC0DrJ0I7Z0QB3pN%2BXY0%2FAIrrhbIWwkswmNuZMzdwURELQOsnQjtJWnrq%2BbZjXI88pPvyQzxUqSujEY1WyGYBClzexq%2F5%2BjvDexEEqJa%2F99T5ck%2FH%2FIWIOb3aUusNZsnhLZT7jPLYcxqhk2CJgBQu%2FKf7n18cO9mwhWjh%2FUZjQRCMLTFshY%2BIXgknC1zJH7%2BZZ5G5AAqOUKmhi0FkqsRSsAZHsc4jQhVolLTiX6HU%2B5rs%2Fy6OpJTkaNpomKJ0MPUK6y1VkL16SC8sYTuR0jMiG3jfl7u25rw6sk7nP%2BLL%2Ftne31UNTgRr%2FEU2KzZNxuRtoTc8fcDSi4m82Z7ZNr%2BEUsiibwyW0pKwGcvjJocLhu%2BD3fRTYR0Zmple9%2BfFaT%2FaZe%2Fo17s%2FXx%2FSawKDTk4%3D','http://img.alicdn.com/img/i4/850870196/O1CN01xU6ssB1DJobwCHodO_!!0-saturn_solar.jpg_580x580q90.jpg_.webp','33朵','','','2024-12-18 13:42:04.802329','包邮'),(10,'全国卡布奇诺玫瑰花束鲜花速递同城配送女友生日上海广州北京花店 鲜花',62.00,'4000+人付款','广东 深圳','蘩花碧玉旗舰店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22d030cd274bd5dbf2ede4dad15e83a879%22%7D&id=694112450570&ns=1&abbucket=6&xxc=taobaoSearch&skuId=4928561417003','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWa4ecySWYhGKbaMGeNPuit1DVG7sXhU6uQ3JFrncDW7dH','https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/2215121256871/O1CN01KurXFy20cyAFbm4cJ_!!0-item_pic.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:04.811529','包邮'),(11,'天津北京鲜花速递同城99朵香槟玫瑰送女友生日混搭花束同城配送',98.00,'29人付款','天津','佰艺鲜花企业店','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%2241bf0f42107df60f0dd3fd07da77fb5d%22%7D&id=684824513962&ns=1&xxc=ad_ztc&skuId=5064988006329','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1665&e=DHsjeyNoNiJ%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVCMV8hTlAjBswavY4a5OfPbZ9QEZcx%2FF7u6tI%2F4RoetvqTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38kkOWn3Jk%2Bk0mqM3wmOTJaRpWbSk1L%2BII5ljypNz5UUmPmDqob9zhFaoaA44vW696Ve%2FiF7vupheuUmDDvk%2BYW5U4RUXEnAExEP%2Bo%2F%2BfA1pQXe7Xpx%2BsFfKl%2Bt88BgABs6CFomPuzR8s5q37SjAw3dO7dPLywOyGCEkBYp%2BQasNMpbLUgXJn2i5jOy8527BFMOuY71XpIoz9u%2FbKFyUfpHJniEOSuBuzUo08hIrE5jiF3AqBdwS%2FFwinYuBGGjFiQOGsuZvLZiOjt0%2FyiIJP9CtjVAtcqHgP1i9yEgQQq9IUrSvKlq4nsP535TVCva74Uo1zllZOjjTObTIMDSVbA9ZJqZe44t5NTWULrQKFX6tmKnkkIFWqdFYXMFc%2FLY%2B%2BO%2Fj4CYXRadVyja%2FBTskB7B%2FJe2%2Buu2c0Csvgsz2jE715wAOA7lt5qJIi%2B4N6ElPVSMW940cjZ30tSxlfUNM1JQWxA6oDDpAcVQPZ1WjaMszpphhRkuoS8rSRD7K%2B38Mt3uIHbTANMZM4dCFddtfwSDZjOiBZAf%2F1UFkPWGJ6q4T4a6Q9v05bLByLMBtTGK7SuUkE0%2B32AqOyEbODV%2FLFa1DKBpq8zqWYKYDpn9Ubj3siJ%2FpFjmN6q5raHIrxWHIvdGA8LUoH4ona2iyj%2F%2BXY9iXlKw6%2B6Uomhaup4HSWAk%2Fr1cTjuRxmsAfP7493TzmWB9X7GDSRGOuUU1rcPXyW7a3I1McZ2GgjvhQknwosBnuDz%2BhVckDxORyLTdrhrvOXJHtircdWDsz0BsEDEfnyMNtMO1KsGPsr96N0iH7%2FNNAPGXKqt9xLiLodxu0HaO8ziBQknwosBnuDh1wsGJxV8QzRWoFcR6XCATWvRXu673r2yiupfs7EQ7xjvsfD6rcy%2Bt5%2FQTKtsGCiOrHhHslqL6PAKplAH3nLCIsm0%2B66zWV5qZcE8Ckr2akEX35Xp9qy6KH62vAlMNh7SlzQFdel0UiplwTwKSvZqU2EGt0nT6djR%2B4%2B5b4eDKbfb2sjuT83omWBLHE0kDCGLpJ6W9Y1Yj3O2rzXP8uQOVL2f9tdMnt9oPr%2FiOVywnT0Y9cnbqPVoZ73mZX6Wg5r%2F43JvfR63C906kVXqhKKprBT9dkPFfD3KXCC4ZNLH2PtghX6VKvspzBXL9YlQ0qaRYYGaAIcjC89xtpYuV3QO%2BlQ%2B5NbZ74c7uLAY34bUHFaPZzF%2FKmvHCLvkekCt1%2FMQPez%2FVQJ0irL4LM9oxO9ed8DHkwCWugXfGKbjVc0NjzSarAP0jdzfu99O%2BQCVcOdzNPpQUiz0MZmO5OT%2BIcETNJX8rf7CMrL82A3Enl6luFjvsfD6rcy%2Bq1V%2BwWyz64V','http://img.alicdn.com/img/i2/14756097/O1CN01hLVc6Q1uuTpAWjgmt_!!4611686018427382017-0-saturn_solar.jpg_580x580q90.jpg_.webp','99朵','','','2024-12-18 13:42:04.821526','包邮'),(12,'鲜花速递同城花店向日葵玫瑰鲜花康乃馨生日花束礼物送女友速递 鲜花 鲜花',58.00,'100+人付款','上海','七彩花卉花屋','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22c22619e8c4167114d7cabb31e24b32f1%22%7D&id=848180065757&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5802862435920','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWXQ7P64onvvW1QoBcxBbLGxpWMTBf1G74N66g9bRnQxiK','https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/2218757067385/O1CN01qXYcG224QNwwZDOL9_!!2218757067385.jpg_580x580q90.jpg_.webp','11朵','','','2024-12-18 13:42:04.836460','包邮'),(13,'全国配送草莓熊抱抱桶花束送女友生日鲜花速递同城店北京上海深圳 鲜花',128.00,'5000+人付款','北京','认真卖鲜花','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22a2bb4af18e6a341074a8ae8e7fb915ec%22%7D&id=738164940863&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5124339592636','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWKRzMQkrf8LU7a9MrAbP3ksGYhqr6tkvQurgZbMFZHgYu','https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/2214157028869/O1CN01K4a65I2FO3aI61YzB_!!2214157028869.jpg_580x580q90.jpg_.webp','33朵','','','2024-12-18 13:42:04.846100','包邮'),(14,'白色粉色混色郁金香鲜切花客厅办公室养花家用送人上海直发包邮',47.90,'300+人付款','上海','青山 Azure','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%225c7af1b62f1e28902eb0d6773b0d4315%22%7D&id=760082034811&ns=1&xxc=ad_ztc&skuId=5237688128529','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1753&e=lZXA6%2BXN8lB%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVCo7xNNuq%2BaVh4zCUxquzVSdDOCWqcX7b%2B6tI%2F4RoetvqTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38kkOWn3Jk%2Bk0mqM3wmOTJaRpWbSk1L%2BII7svc8X82dRLMUstanzqVTj8h3Qnrmeoct2Ixob3tnurp8KegLuCR%2BqxFgAcr%2B3eSbfH6JkRX5dj7xmIM7mawtZSI1X1wLmnbjvYStJcNwnHwfpzPdHxqekaMW7gBxMJ995a2NB81xceMK9rdalTVcZbGxdM3AmJrhv9w64p2YS6saU1GQu%2FlhreYZxOpPAjwodMs0kRle3U2eJwcdlzuyZSxk%2BBdxIe1vSs%2B0w1O8ZDjgROgmIPNl2dZq4fT9zEft4bspt78j3fbPC1CD3oirxUWhPCW3m23XnopFJUxssKUTSHuwizuitWKcG80%2FStZdDr1AmWemByIht435e7tuZxOK3oGqXOe7x5bw1yWa8MGJQXFm26QUk4gE3WdcMiqmvXMUD45VV0q6AmnIgcxFdq8I2Rc5NT9%2BJtWK2LbNDbgMPwHAmV8l2TazWImhchlQY4lQfM1hpS%2BFYXwlem1JW8x8og1yRt31r5OHImQrbcsPptr33B2a%2FTD5cFDsVN7BaTzIjcWQ38k8VQmR8wfEvs6%2FcDuwKznF9QPdywIRADtAN57bBk1JNSC6thvBE%2BoeDybOJh7xoGsatFoVPSgkeC%2BsVIT9B1avK7vrW0leEVCL2Tqm0KWFW49qTaXTtb%2BOlpbNsFWr4SOj8WRKmMivug3dxazqUUlwfYwLq7Dr5NnZfD9E1YfoZtFp%2Fdb9KKsdp9h6LZg0ZaPkCF0zyGGNXt0kSJKNQYd6rxosHTW8%2FHz8pDvAL7QNEZuOL5d8WodfhWF8JXptSVDJw%2BHS1MxckU9QpcT6QNqNSqPp5hh9EqmzLllyithN62yC6OCr29pQYyTcrNdDLG0wa4YyWoLYb35YjQ34%2FDbyJNo0H8XKLnPm6TyaLIExrXqmdToe16tSU%2FVSuV5P%2BytInJnK2w12Z3x9YmbGUGhOEjVPtWsNdZke5BbSJ3FXZoIgUtBbQAOBDFDeAUnSJiZ0QB3pN%2BXY0%2FAIrrhbIWwoU%2Bk9GcBv27EMUN4BSdImJJWnrq%2BbZjXI88pPvyQzxUqSujEY1WyGYBClzexq%2F5%2BjvDexEEqJa%2F99T5ck%2FH%2FIWIOb3aUusNZr0Xl6gmh69iPaMh2YlgQzAmPS6N6MakWoyViIPQtMfz1kdzYMKYbaqPV4VIYurO5RyClFZzA1mTEcNIf%2BVpfeio6JuU0DGP6PhWF8JXptSV%2BfTT%2FLbA8gM5M2QtPtgCkv1hDh1KLsvyOVZqgpflPhoBA%2BUozDLIgPuXHEVRwloTOEks8kh2DhjYbgHi40BwPa0euRKmuQmUROiGu3OmF3DAFs0t%2FNlTbq5ZJSlZ4C2E4m1NhDOUaQx3vNrVmDJHkdK%2F4l%2FGhPSbYOjPHVPB1skkOG4OYn09VCU%2FVSuV5P%2BytInJnK2w12aDIe%2FR8gOZYQ%3D%3D','http://img.alicdn.com/img/i4/106763952/O1CN01LvpPAt1f44AbUUujH_!!0-saturn_solar.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:04.856117','/'),(15,'巨型超大绣球花束玫瑰花上海北京深圳生日鲜花速递同城花店配送花 鲜花',68.00,'2万+人付款','北京','唯爱鲜花旗舰店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%227aefaa5901fdcf537ac6ce2d8ecc7156%22%7D&id=630258030875&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5424183168657','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWN8eQaHLR7vqUx3RVqGaoSbvusn7k5JPE6ewEt7efjsfX','https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/1744362897/O1CN01SzUMMu1XGs2Awhw3Z_!!0-item_pic.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:04.865630','/'),(16,'香槟玫瑰鲜花速递向日葵圣诞花束北京上海广州同城生日配送店女友 鲜花',63.00,'1000+人付款','北京','花开口旗舰店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22fc81208f654f47b7d8f00c93fcdda719%22%7D&id=691554432615&ns=1&abbucket=6&xxc=taobaoSearch&skuId=4912318712893','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWbEU6bE5YSaXKLedxNwqfooUhTnRkhbP6TmgyfS3zSU3C','https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2207385728320/O1CN01QwHIen2BKc3fpBa3c_!!0-item_pic.jpg_580x580q90.jpg_.webp','11朵','','','2024-12-18 13:42:04.877011','包邮'),(17,'山东基地直发无土玫瑰顺丰包邮鲜花鲜切花束混搭新鲜家用插花 鲜花',17.90,'9000+人付款','山东 日照','有好花','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%229d11d0b33d4248d01220bbf355c5bb1e%22%7D&id=673986835878&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5824014507866','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWLhSdWdJRAL4Voj91NEKQ6Hk6orztivWugqaxJEyTnHyd','https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2213996435835/O1CN01jT1BXG1syTriAZ0rZ_!!2213996435835.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:04.892474','包邮'),(18,'香雪兰小苍兰云南基地直发鲜花家庭办公室水养花卉情人节带香味',29.88,'200+人付款','云南 昆明','云南花信小铺','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22780a7f0d3710bc44b48c1b3aa94c9c5f%22%7D&id=770339194179&ns=1&xxc=ad_ztc&skuId=5545279580541','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1741&e=lsgRoLE7zy9%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVDvRw6R7K%2FH7qWFZkvutJeCRj6waj3KcyUKZO82EheotKTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38sdn1HRcQ5dVlX1ikWT%2B0cjnlnswNmfuITgtHUWkn1QnOKlFmHq6ka58E2uTLPIfJAGobvfvEy%2FanpOYvm8IlOlLLRBNcfX2LpNys51KLy6fvR%2FPEZLyjI98PWp56Fq8vKQxF335O9VpFNGE%2BMTbJS9YO%2BZe5I4Gnm0PqlMj8knQaHyivyAX5%2FM6QaMtbm%2BZY2I3GJzkVXqOrr1o74VAfMWEnv2vOMHyE3665j6TlKd72y4jPmLLlhqxn45BXdf7Wd%2FQSyz3jGzyjY4pItzdiqjHMT4em8q3lLf9SFYauSOrfGOnKfDzWuenYuBGGjFiQIm0DiNSWCrplOKwOuFIPfaphjJQpyzIOLobyjdA7sbqQgBeVaDUiXEAp9DxGhO4W3IraUv%2FepTlFSgn6Y%2F6gz54CSjiS4YKADlWaoKX5T4a3hlOjYYsf8e901eIn55%2F%2BjvTj1of6Mtnb0ENrdeZpohfnxIc6%2B%2BMS9bLOCBYmmRG0nZTqzoDdCpDXK19DGINZKQxF335O9VpNc3CtRNm2drRLa3p9oS3NIZxGcgJHOsFBjgz3e9Kj1YCXx05YW3XPy9Zj2vQ2G73Z3se8fj%2FFt6v9eYw3MFRZh1GMH%2BwW%2B%2FRVAnRcvyV1lFTKfKu5bmMK0nZXXfUkXbwYAh51PUHBQ%2FQr2i1UqVZqrixGpfd6ikWfkVz32hNIvq12u8hToEK016CSuaHpd%2BFOXxpETf4ws54fVxCKDyTtrnOgL7MAGfT078op9gUrJ2KLknaO%2FQQoweS9CNXvcNuhTB52y5dB25tD6pTI%2FJJ0CIZe0wVxsffS0dzNx0DEdGkMRd9%2BTvVae8egkYICc4%2BisJVvr1w%2FKUYTcwjvFsNpdbjY%2BpiS6P3tsgujgq9vaUGMk3KzXQyxtft1Iz1ybI%2BItrpp0GxfL28MggPO6wqLi47iu1GjimW7mzMJi8XZtIlP1UrleT%2FsrSJyZytsNdmd8fWJmxlBoThI1T7VrDXWZHuQW0idxV2b0rJanSAElr7X%2FBGRemev2dEAd6Tfl2NPwCK64WyFsIwX40IwpwJ8vtf8EZF6Z6%2FSVp66vm2Y1yPPKT78kM8VKkroxGNVshmAQpc3sav%2Bfo7w3sRBKiWv%2FfU%2BXJPx%2FyFiDm92lLrDWbkpHF%2F5lV59K%2FtWIuq2qa5Jj0ujejGpFqMlYiD0LTH89ZHc2DCmG2qj1eFSGLqzuUcgpRWcwNZk%2Bp6iVvUd%2Bk7qOiblNAxj%2BhYjM5mOIOPASvh6tNH3bB6GtqxcKJ3vtXDgi650kZgcIa21rxKYExweU1xRPlXm5xMGknZH71vgwX3G6b9BmfDg0L4x6yGwA5LMCkkrTJmlVG8YXscTn1RIpnhhVpooTZnwtoU34n7SXspxl%2BWJoxw2YPPsYrBAexAx2B4%2F86u1teTgL1Vw1VO43XVb7t6EzY%3D','http://img.alicdn.com/img/i4/4373288798/O1CN01pP0dpi2ErXZOHzyo8_!!0-saturn_solar.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:04.907600','包邮'),(19,'ins玫瑰花束鲜花速递同城配送女友生日北京上海广州深圳全国花店 鲜花',67.00,'1000+人付款','北京','蘩花碧玉旗舰店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22db1780a2e1ed25920119ce738e37381b%22%7D&id=724627217070&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5202815830772','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWa4ecySWYhGKbaMGeNPuit1DVG7sXhU6uQ3JFrncDW7dH','https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/2215121256871/O1CN0141zNWs20cyL2Bb2Sm_!!0-item_pic.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:04.945867','包邮'),(20,'向日葵混搭花束鲜花速递同城香槟玫瑰生日全国配送女友北京上海店 鲜花',52.00,'1000+人付款','广东 广州','唯爱鲜花旗舰店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%220b2dd221f1fde6f057a32e5e75fb84b9%22%7D&id=43412951940&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5117214099523','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWN8eQaHLR7vqUx3RVqGaoSbvusn7k5JPE6ewEt7efjsfX','https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/1744362897/O1CN01fGSiq51XGsN1I20yu_!!0-item_pic.jpg_580x580q90.jpg_.webp','19朵','','','2024-12-18 13:42:04.955881','包邮'),(21,'ins花束鲜花速递同城配送女友闺蜜玫瑰花上海北京广州杭州生日店 鲜花',99.00,'3000+人付款','上海','蜜心旗舰店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22bc12086315a1eb58a3657a08973eb06d%22%7D&id=707729948077&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5142565470816','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWSkjAAGGNzd3iBS3C4FB55eEKHFbn2chRNrWpzBd5f7QW','https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/3563068145/O1CN01vhOcqw2A2SnKvawbW_!!0-item_pic.jpg_580x580q90.jpg_.webp','19朵','','','2024-12-18 13:42:04.965887','包邮'),(22,'多头泡泡卡布奇诺巧克力小玫瑰鲜花花束云南基地直发鲜切花圣诞节 鲜花',9.90,'2万+人付款','云南 昆明','昆明斗南花坊','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22089a3f893000793b6a6dce5760f8cf66%22%7D&id=719872177316&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5258225257426','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWN7rTybsNx6x7NvRQCjgb3uGF3NbyDKryWbK6QSmNenYE','https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/2976062918/O1CN01aW9v7V1XQUYAULrRE_!!2976062918.png_580x580q90.jpg_.webp','','','','2024-12-18 13:42:04.974396','/'),(23,'巨型超大绣球花束玫瑰花生日鲜花速递同城北京上海深圳店全国配送',60.00,'400+人付款','北京','花漫全国同城配送','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22e9f7cff492246295ff5b75711a3ea5ef%22%7D&id=768473548207&ns=1&xxc=ad_ztc&skuId=5698640075872','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1741&e=tz54c8VteP1%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVAFMVXA22lH9ghgi91wXzOEaCZPkCjZCQS6tI%2F4RoetvqTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38kkOWn3Jk%2Bk0mqM3wmOTJaRpWbSk1L%2BII5ljypNz5UUm0qWDpEsUjtA3OkywzH%2F2MmvYIvgVYAWYMTmJfJe3yRfgE2vJRx%2BdLaa7cVM3Q5p8SUWq2UGPuq0dZT54Z4DHn7R3zzq8GYlIgffhRgEQG5vCu8x6vvRu13hxFwEI5aB6U78dB5IN1TxUFnuRsqo5weuY71XpIoz9yHI2Cn7VmaNEepTq8DVfAd7c%2Bce0OTr25E8JkFiqGMcu5EpVP%2BSX%2Faq9pc7La4svQ2oyraEyglOofjxkKO%2BYGi9yEgQQq9IU%2F3t0o8OCd0NCsiq%2B97EuXI1zllZOjjTOy4ffSq%2F4WNdaPZzF%2FKmvHMGRuXRCokJc8Cs4H%2FMipwLe6ck0AdpZql7y9Uajo6w7wmy17g3pyvA92%2BMunjfyqGo7863zjIkWUJrL0e5CYTAA34q3u4c9pMnRZL2qjFOXcl99r7Nn6xBXGkDbQcU1TRkjjlEGLjy1P8%2F92C2uEWuxA6oDDpAcVQPZ1WjaMszpphhRkuoS8rSRD7K%2B38Mt3uIHbTANMZM4dCFddtfwSDZjOiBZAf%2F1UFkPWGJ6q4T4a6Q9v05bLByLMBtTGK7SuUkE0%2B32AqOyEbODV%2FLFa1DKBpq8zqWYKYDpn9Ubj3siJ%2FpFjmN6q5qbwN26U04SsBpg080pKLIR%2BKtw%2BX9QDGCB1CsUthG%2FjA5I34kaoEtctiHCa6Rv%2F2mMxlGjz1AbaQeQQ37mxe9t7dH5BqOEl3%2FieTPkgfDP1pC1foyPofF5p1JEYFfXLtbMhxbPytp4yplc0Ux5tCxQvy%2BKcU6dAOX1XFDBhUTw76FhU4zEbl5hM%2FB3cShv36H%2FiKPsYu6FjUZf7vlAbz9%2Fi4cJafHiFh03bPkAiHBM0ULL8cDAz5tqxtPMhtkXlgjtPRnrj%2B4VSSgHiAt5HruOBQYPDO4b3DNgAPPDblmA1JiVQwIh85BD4uUSA84W5sNigWOaKWk1xfFweCR1vuPHekzzsxwoUDji5RIDzhbmw97NXtnwNzyxzSJUpUHOEeaNYydI5UQBtZ6k3KQXabIbzP2IqzTo70y2Za%2BOMWObqjmd8X%2FmXsAvLCVEwFvL2ogwb922gxTTd1LL8e0mWcXPMIGnysTtq1Mm8TovfmjlHNGuAA7mgxhM7gRgcdK2vbDFuD53800sTBfBn9R1GoP9nQxP4ENuCbJwCdbdIPCRtw%2FUuAG8R7yw5peI5RUjpTnPu%2Fal6nTuGDC2QWOwnXwUDAjVghU09XYYB%2Blr7v%2Fm2FRy9YAsdlTcvuQ4Ubh26dxoswAP1eXikBgyo32ej0CQ0qWDpEsUjtCUhsMTeDH6lFaFUkVr6UwW1jZ2HjLR5M0VH18sMV9X40HC1zL13dmSJDhuDmJ9PVQlP1UrleT%2FsrSJyZytsNdmgyHv0fIDmWE%3D','http://img.alicdn.com/img/i1/127301118/O1CN01KE8rYX1K85kXqSiTK_!!2-saturn_solar.png_580x580q90.jpg_.webp','','','','2024-12-18 13:42:04.984361','包邮'),(24,'全国卡布奇诺玫瑰花束抱抱桶鲜花速递同城配送北京上海深圳生日店 鲜花',123.00,'2000+人付款','北京','千树花花铺','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22f7f154dd076231370fdba43872f90292%22%7D&id=726649720326&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5430768219966','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWLa5uXsZ8uyCPnJyn3hgqDuiERKAtUpXSkMPcz2WZ3f1u','https://g-search2.alicdn.com/img/bao/uploaded/i4/i3/2208150528302/O1CN01GnXORj2BCN8oTSRu2_!!2208150528302.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:04.994956','包邮'),(25,'草莓熊抱抱桶花束玫瑰鲜花速递同城配送女友生日表白上海北京花店 鲜花',118.00,'1000+人付款','北京','iou旗舰店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%225e140d02e944c44986480b85c949616a%22%7D&id=716904743579&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5006611493853','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWL4FS8e68AC4ey8nGs45YzKv9cAYTvj9gcB6KWexWdk3a','https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2206944853260/O1CN0116gopT1Zx8ArK5P0d_!!0-item_pic.jpg_580x580q90.jpg_.webp','33朵','','','2024-12-18 13:42:05.004556','/'),(26,'上海北京杭州广东鲜花速递同城配送混搭花束玫瑰圣诞生日礼物节日 鲜花',228.00,'900+人付款','上海','花研色旗舰店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22546c28bd4644d1be8b2aa4840aec4b6c%22%7D&id=837941262208&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5600400785318','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWYHUiEEN7hgehsboP4nvJNjHRFp12L1yLWknGbnD4Kk9C','https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/2218637137037/O1CN01A8bVyd21r06pt4IsX_!!2-item_pic.png_580x580q90.jpg_.webp','','','','2024-12-18 13:42:05.014266','包邮'),(27,'金鱼草鲜花云南直发基地鲜切花束办公观赏客厅水养插花瓶小众花材',35.80,'100+人付款','云南 昆明','朝花夕拾花铺','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%222330dd0b8fc2930e20d758cbaa64e48d%22%7D&id=771668606680&ns=1&xxc=ad_ztc&skuId=5284039336986','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1825&e=JvvtmUKXktJ%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVBuLa76pXRyWmtyWVwTz5yt%2Fqt1HtljyVsKZO82EheotKTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38kkOWn3Jk%2Bk0OKlFmHq6ka71w5lOkibQqDIiOnT9hjMDBYjAkSHWNYbnlnswNmfuITgrzZ3vTnqVxB68RhxW%2BcRbcUK5q3R%2BekkYR4ZAkDexvvY16tjXHUls3Jy1qkNifC66bJT5G0a%2F1PuyiDd156g9jF4bv3UiB6exSpQ9Q8HS9umCSTX7p9ZwWaOdt6%2BBoMt8uYICUOMei3hFml6WyKOl8qLtjZFVPWD2kTgc%2BCQmY5sCXgj8mwxILwYoTgiyugDZn5wvF451IiJ8Q%2BEx%2Fpf%2B%2BlMKAB8bnVu5qO5Dg02P6b7QM7bHy0dN22nPAXYKwxj63MGbUn7EcPyaCy5s9N%2F%2BagWp%2FET7%2FgdmPsxFHtwse4QisNqi7vHkrmcfwAoYW40WwyeJDou3GtqxcKJ3vtXQi3NMG%2B7GQvGe%2F9GxQRs09jIK54n9Uy5nbJgKYcC4Ah%2FIBHV8GW91n9YDUCvKu9i5EHACtc6FqGvXMUD45VV0xkwq5Nve7e2Ul2jsFHDyWeJtWK2LbNDbUSp3%2FqlE8Y83tZnuLvTv7nQgYyes%2BWLJ5K5nH8AKGFu%2FtRvyAf8WNphx%2FiZMDtArsPptr33B2a%2FTD5cFDsVN7BaTzIjcWQ38k8VQmR8wfEvs6%2FcDuwKznF9QPdywIRADtAN57bBk1JNSC6thvBE%2BoeDybOJh7xoGsatFoVPSgkeC%2BsVIT9B1avK7vrW0leEVCL2Tqm0KWFW49qTaXTtb%2BKOCAwlhyecB8UZ71wqDXjKg3dxazqUUlwfYwLq7Dr5NnZfD9E1YfoZtFp%2Fdb9KKseIGwE4uZfJOPkCF0zyGGNXt0kSJKNQYd46Iep5HxD5VVsGG32ABFauVU3Y%2BtJDBpuSuZx%2FAChhbMRj88v1u%2FjzFVcA3A6bGpdzIz%2BzX%2F0VqWYNqVSz8mHF1gZ%2Ftv9oxAMKJru3lPxwaUQEt3EutiQ5D2%2Bk5cG4p%2BKrGiSYtPM%2BeprZKMb8W3suVTn0M4H3UhEp80QNVTrwXeSJ4olyaSSIB0okc1WcczgQvSNYqvY4byBDOJKWW73SVF622WKv8sGWtat%2ByZFgruq6iyhKQoC4KgDQHGiWAs3PLM6pvzL2QZa1q37JkWCsTyz%2BVQJat7oNB6mRxS15lp1kvbbnb3EerMpP%2BDBY2CymB3SGC1EnOUZwyRKMot5sO97xrl%2Bw2RllmlzHgR3idwCg3qWqNaOae95mV%2BloOa%2F%2BNyb30etwvdOpFV6oSiqa9Ra0JfgjMQE9ut3ib2LXa7YIV%2BlSr7KcwVy%2FWJUNKmut1CzeFQchpJKlagTRqayrpUPuTW2e%2BHDNvSKa1K23yhrbWvEpgTHC7kzPbhruCCALdCYiDfELuLN3BBnxreqqV77IHruw3Z9BV2b1SZeCDLY7CH76GAOpN%2BXm49jXY9kUCMaT%2FwVVhNbnUxBvi5wGxECIgqdoyf0Pb6Tlwbin44u2zVhahLvM%2Bnc%2F7tjMxnCQ4bg5ifT1UJT9VK5Xk%2F7K0icmcrbDXZoMh79HyA5lh','http://img.alicdn.com/img/i2/5971847776/O1CN018KShme27JSlVBp7fG_!!0-saturn_solar.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:05.024673','包邮'),(28,'玫瑰花鲜花云南直发昆明基地直批七夕花束水养插花鲜切花速递同城 鲜花',29.90,'9000+人付款','云南 昆明','有花就好','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22da5b2f7ef39c48582fb4a41f5b54faae%22%7D&id=575215251554&ns=1&abbucket=6&xxc=taobaoSearch&skuId=3768826872243','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWRShACW8wbK8s4F4MQNZyksNGkitYzU3RYcK78KFpHpKm','https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/3973167256/O1CN01iGtMY023TIgccECNp_!!3973167256.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:05.038257','包邮'),(29,'水果花束成品礼盒乔迁鲜花速递同城配送长辈生日北京上海广州花店 鲜花',196.00,'4000+人付款','上海','蜜心旗舰店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22b322e0c7567171df4c80ec1fd763e411%22%7D&id=696584714653&ns=1&abbucket=6&xxc=taobaoSearch&skuId=4941941449092','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWSkjAAGGNzd3iBS3C4FB55eEKHFbn2chRNrWpzBd5f7QW','https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/3563068145/O1CN01uzcohO2A2SpB5Z1IK_!!0-item_pic.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:05.048263','包邮'),(30,'浓香型腊梅鲜花摆件水培客厅花束鲜切花干枝水养鲜花枝原生好养活 鲜花 鲜花',28.80,'1000+人看过','浙江 杭州','官方国货甄选','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22bd94a566d87360b48b953142fd7581d5%22%7D&id=857851281347&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5835686839148','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWNRSByu5epBKu3KQhNSjsCz1wmEwbTdRRRfdHu2e7J5tf','https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/2206588314948/O1CN01NBIW2z1mQEkjl1Wfm_!!2206588314948-0-C2M.jpg_580x580q90.jpg_.webp','1朵','','','2024-12-18 13:42:05.058419','包邮'),(31,'99朵粉玫瑰花束生日鲜花速递同城成都北京上海花店全国配送女友 鲜花',98.00,'600+人付款','四川 成都','花千朵鲜花礼品','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%220e88af2b0fdf5e9fe1c58ac5db58e6ad%22%7D&id=812070311979&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5505578776963','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWTrtiF5BCXzMsJkJ3ar7i7CC5dkQFdEfu1dNKKj25E4mJ','https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2684335729/O1CN01uivTa61sBw1wg78bx_!!2684335729.png_580x580q90.jpg_.webp','99朵','','','2024-12-18 13:42:05.069454','包邮'),(32,'全国鲜花速递同城向日葵玫瑰花束配送女友生日北京上海深圳广州店',70.00,'8000+人付款','北京','格菲茉 鲜花全国配送中心','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22567280ae211dfc95b5e582d3e2a98023%22%7D&id=749906190388&ns=1&xxc=ad_ztc&skuId=5460287622376','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1785&e=t%2BQOG2n%2FoR9%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVCXR8MFL58jfvwVp8Xxf%2FeyjJ4TBhK8JKMKZO82EheotKTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38vKHbE46eNDwijik1Oof%2FbBBUl3aJUhwVmIeyJs%2BS25OVQnxOkN01622x5SI9P9F8eH%2B%2Bem%2BhjFo0CQPTy%2B2TlsN8T8Ja1LM6NoYFncfcVxtnbBMtfSJrT%2FuFJY6%2FlQJkGG8CzWi3761hxWPopg%2BUcEzEnHzgNVgIZFhIoHjixyahUqVEBVrliB6E%2F3me44dry%2F4hSRtWavROHiYJ343Co8mxeaJy2NTnFYidG3wrBVXaMim1fZVQZ2M3GEU%2B7LjLFXL%2B5pMp2Lg5E8JkFiqGMemhyUDX5jTk4ejIafx15kNbQkM8U1qk43d%2FeIM8kHZli3pJ8BoSHpvkp7qIBjo%2BnvzDWRdxOEONuRo2miYonQw9QrrLVWQvXpILyxhO5HSMyIbeN%2BXu7bmTT0IfRueZl8Ay9KGrIXGEH5zCIERxHMcm6qy4kNPEsfA1dsVA4T5j9ft95N4vggPdNn1Ye0SMkSRbA9HK3ilmW62MsByh6g7JdpUGUDzWfgHYqsBg5NPd4ZxGcgJHOsFBjgz3e9Kj1YCXx05YW3XPy9Zj2vQ2G73Z3se8fj%2FFt6v9eYw3MFRZh1GMH%2BwW%2B%2FRVAnRcvyV1lFTKfKu5bmMK0nZXXfUkXbwYAh51PUHBQ%2FQr2i1UqVZqrixGpfd6ikWfkVz32hNIvq%2BHrgJCznElWaahiz8ioJQjEe6yjhb5WF4fVxCKDyTtrnOgL7MAGfT078op9gUrJ2KLknaO%2FQQoweS9CNXvcNulXTfNGPnVES7vTjLF5i2Whdt1MHCnWwRGdGuIMuf0BmaMbc8jXwIHCTM03gMts%2F%2Ff77FkEt8Zf0OyXgbdwwNa81u3FRx54iTtsgujgq9vaUGMk3KzXQyxnxaE%2B88595VC1VOEVOzvTR65PXpBEePZP1iY1GJOZllh3L6aGtvzqwlP1UrleT%2FsrSJyZytsNdmd8fWJmxlBoQKjKDVw5euza4IM86RwRugOj2bVpJ%2B9O8z6vvkoGNp%2FBdvF%2FRUAPagKb1E%2FrkMtFdEHXhZYzk4BnXmSB3rvkRSEZL98COWWgDhy6YS1K2Jmn5zCIERxHMc%2FCqMOLLPFK8KgDQHGiWAs0RRLLTaaomffnMIgRHEcxzUfEzJSd4qIINB6mRxS15lp1kvbbnb3EerMpP%2BDBY2CymB3SGC1EnOUZwyRKMot5sO97xrl%2Bw2Rq%2F9krua97p%2Fzy7%2Bas08vS6e95mV%2BloOa%2F%2BNyb30etwvdOpFV6oSiqbuY%2BmayHpJBmLrWxCc8G2PUKmhi0FkqsRSsAZHsc4jQpKe6iAY6Pp78w1kXcThDjbkaNpomKJ0MPUK6y1VkL16SC8sYTuR0jMiG3jfl7u25tAgSH%2BoIo%2F%2F6SK7E6XAPUpqwKIqOnkh4n5zCIERxHMcm6qy4kNPEsfmyA5w92Z9M5%2BTUFoGlOk2HUeW9P7x9Bkrf16PJ5xcQb1tpvBQuRmP7T0Z64%2FuFUnLOGY1pbe1Yg%3D%3D','http://img.alicdn.com/img/i2/5113223064/O1CN01qyQWHa1YVMXJhBHwR_!!0-saturn_solar.jpg_580x580q90.jpg_.webp','19朵','','','2024-12-18 13:42:05.080497','/'),(33,'泰迪向日葵混搭油画风花束生日鲜花速递同城配送女友北京上海广州 鲜花',106.00,'100+人付款','上海','蜜心旗舰店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22817e2207627f82233c645dec4cf77ccd%22%7D&id=843178153021&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5786274275042','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWSkjAAGGNzd3iBS3C4FB55eEKHFbn2chRNrWpzBd5f7QW','https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/3563068145/O1CN01js9C1Y2A2SxP7zzy1_!!0-item_pic.jpg_580x580q90.jpg_.webp','11朵','','','2024-12-18 13:42:05.093633','包邮'),(34,'全国配送碎冰蓝玫瑰花束送女友生日鲜花速递同城北京上海广州深圳 鲜花',78.00,'200+人付款','北京','花时间 全国同城配送','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%2255dd2985e31c56348d4ca4a4c6b07b69%22%7D&id=829811596884&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5660935261087','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWR7kdFK8ud6JZSaoMKdbCjqBuv5N8LkiKaMKpZirFiAAg','https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2217059496293/O1CN01PSIJEA1wMFRdOrh0z_!!2217059496293.png_580x580q90.jpg_.webp','19朵','','','2024-12-18 13:42:05.103672','包邮'),(35,'多头小玫瑰泡泡云南直发鲜花花束速递同城苏菲宝贝520情人节礼物 鲜花',9.80,'1000+人付款','云南 昆明','昆明晗朵朵鲜花','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22efa9a70cc362840fa107cc8b827790b2%22%7D&id=848940493128&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5638080709573','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWVwYWg1juMXsnpMH56Xp7eeUqFEvEmUADF8wrSReyV14m','https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/548839091/O1CN01o93oHd2H1jdhAD4z9_!!548839091.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:05.114382','包邮'),(36,'小玫瑰把束手札仿真花27头小牡丹假花摄影道具新娘手捧花家居摆件',14.80,'7000+人付款','广东 广州','西湖碟花卉旗舰店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22e97ca0a6a5748aa8f45e84c3b25c8e23%22%7D&id=681069138260&ns=1&xxc=ad_ztc&skuId=5049995378421','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1793&e=JTBJ6a%2BcWEx%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVCtQjZdkMaZLDd411zubwp2XQIIwjVZGYEKZO82EheotKTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38idK5CeKwqgbN13Ks%2BcMCkvZ%2Fec%2FleHfvIICPHpsD7C8mqM3wmOTJaRpWbSk1L%2BIIwf9LuNEMLa6aT8RGT%2F%2Fom1W18ve5w2ZzK%2FVdSNV6qFN9hSIW6kY6AJRxbyaQZbjb61vzS%2BDZv9UW6EYSyT5cTrccNzT%2BoLj4PigUmDW%2B%2F1jd0yx%2Bd4TdcsMsmDc6dOlxFCiqANiXKms76v%2BF9uJG5zguDZNGapiidnV9ISoHfayoGTZ6522cujeYZxOpPAjwtdtc%2FXCUoPDAa%2FnH0KdyAZN22nPAXYKwxi2RHrD3D1sSISjdAvdgyUczwPoGU93NrrDiiokmjcnjsFbDDXKMDSuJUxFPvQ0CT4xTWvLJ%2BjtOTNkLT7YApKR8DO%2B4nbz2DlWaoKX5T4aAQPlKMwyyID7lxxFUcJaE4B%2FVGRhdSrwNy5ZG6UlAswm19Zi%2FtwULRuQ%2BJq54VGzFA4bYxcYTeVr2p5jCcY0iV%2BfEhzr74xLKJctV%2BldN3suCsYbK8N3j7FNjXuOxvxbQiqp8Ef3M7w1zcK1E2bZ2gdiqwGDk093hnEZyAkc6wUGODPd70qPVgJfHTlhbdc%2FL1mPa9DYbvdnex7x%2BP8W3q%2F15jDcwVFmHUYwf7Bb79FUCdFy%2FJXWUVMp8q7luYwrSdldd9SRdvBgCHnU9QcFD9CvaLVSpVmquLEal93qKRZ%2BRXPfaE0i%2BjpQZhqY2XlWPqqeB1wQ76%2BMR7rKOFvlYXh9XEIoPJO2uc6AvswAZ9PTvyin2BSsnYouSdo79BCjB5L0I1e9w24I7FIbiU99xaP1K8Y2pHcobuhVnx9TQIrVZyxZURttBEIqqfBH9zO8cq9btf6SAixcpKwJvzM7LTyjve7DQrCSAj%2F6bWsBwSDQuP73Y%2B6QEws4Zv8mAgdy2RBG%2FPu6CoFHXsCjQiOT7JXYw%2F%2F59VFxixNNCGZhWwdgqpqh1HWd7pwNuwX53x8SVsJ2MTyLtxXVkvhXmCQPsoAdSBOWo82ATjpTgmBKv8P3veFwDMECsB%2FoCNA32Jvkb3uW99%2BS%2FYqbjdz%2F1scUbPe94XAMwQKwH%2BgI0DfYm%2BSD8iHaDNmJ%2BZ9qKacawkvTWMKpBUkHY4Ve%2FktblgDY8vRKwKS7lM0kiXEiP3MFTj01CeNNU%2F1Zf48pyLZQ1%2BVZI5OkAMTLhG9qAaHaeFfpdU%2FZmfD2rhQhXvB0xYb2gwugx5tJxx5cEhy4BjZXtUMUBtXFlPCuWcPp6TrabEbrvWtuZzrSn56AD3H7Z8B3gP7ml4jlFSOlOc%2B79qXqdO4YMLZBY7CdfBQMCNWCFTT1dhgH6Wvu%2F%2BbYVHL1gCx2VNy%2FkEop2WxYOU74898XxldjGS7XpEc1O1szWd8NVbwZntPOSBj1U5v%2FbObHWOFxXI117Vf4R%2Fhv9LkMpAMbgyaiUD8QjtvfqPbZ4LEAily9mCQ4bg5ifT1UJT9VK5Xk%2F7K0icmcrbDXZoMh79HyA5lh','http://img.alicdn.com/img/i3/502650104/O1CN01u6k7jG1Cdg2TiqNa6_!!0-saturn_solar.jpg_580x580q90.jpg_.webp','绢花','摆放花艺','','2024-12-18 13:42:05.124885','/'),(37,'全国向日葵香槟玫瑰混搭花束配送生日鲜花速递同城广州深圳上海店 鲜花',35.00,'2万+人付款','广东 广州','荟鲜阁旗舰店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%2251ac57dd8702dcb9c2cee561b454f59f%22%7D&id=589587889703&ns=1&abbucket=6&xxc=taobaoSearch&skuId=4034664249787','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWLU4SSLvBAFajx66VCsMK4jSz7qMg7PWHE9AJf7vRCeSe','https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/3490049325/O1CN01dIrpg12Iku9k7ddps_!!0-item_pic.jpg_580x580q90.jpg_.webp','33朵','','','2024-12-18 13:42:05.135494','包邮'),(38,'香雪兰小苍兰鲜花云南昆明基地直发家用办公室插花花店婚庆花材 鲜花',19.80,'400+人付款','云南 昆明','融鑫花坊','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22c4d03fde17f5cc6da19d39871f333de9%22%7D&id=635835330934&ns=1&abbucket=6&xxc=taobaoSearch&skuId=4725401375428','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWQGBxtsBkFeZsgU1HV21LHVEn4aTeABn3n6z8qsUJqpBC','https://g-search2.alicdn.com/img/bao/uploaded/i4/i1/2701764395/O1CN01gz7f9l1iKxS9DQvnx_!!2701764395.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:05.146186','包邮'),(39,'花点时间每周鲜花包月订云南基地直发配送送花插花鲜切花圣诞礼物 鲜花',99.00,'6000+人付款','北京','花点时间旗舰店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%2287a18d0198177528deb57cb8b219a2b2%22%7D&id=596004701701&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5038085368482','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWabXDLPAjZGB5jVBjNrs4q3BQ7Wb6eBAgV6yjEGK3GSBW','https://g-search2.alicdn.com/img/bao/uploaded/i4/i3/3625079559/O1CN01y5cXe12KU50qelrnZ_!!4611686018427384583-2-item_pic.png_580x580q90.jpg_.webp','','','','2024-12-18 13:42:05.155084','包邮'),(40,'玫瑰花鲜花山东基地直发顺丰包邮鲜切花白玫瑰插花花束水养真花 鲜花',17.90,'1万+人付款','山东 日照','有好花','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22da5112988410bbd643130c30248ab8ee%22%7D&id=704252566210&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5654431200517','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWLhSdWdJRAL4Voj91NEKQ6Hk6orztivWugqaxJEyTnHyd','https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2213996435835/O1CN01wCn8Hm1syTsQjbC5k_!!2213996435835.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:05.165127','包邮'),(41,'多头玫瑰10支 苏菲宝宝,全店鲜花任意两束顺风航空包邮鲜切花',89.00,'98人付款','云南 昆明','妲己鲜花','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%224e3409efe07cd1d279c284dd4fe00233%22%7D&id=719736403966&ns=1&xxc=ad_ztc&skuId=5189030511483','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1633&e=iw0cGedcSUJ%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVAkIerD0QmbcCYNvXpxphutnLRia4nkAPC6tI%2F4RoetvqTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38kkOWn3Jk%2Bk0mqM3wmOTJaRpWbSk1L%2BII7svc8X82dRLMUstanzqVThyj9Xx84C3HCOOmi2pmq%2F7%2FKauL9%2BCohcAsyySBnnz2ALfZ4VuPdgLfWGf3FAHw3r%2BFC%2F14w2Qb8XkcVSpDWgnSpXifT3YDbAimD%2Bjs5ZjNSW4cWm4HzN7su9SacJSnEh%2F7YJnDmb7nK7Fh%2BmEVMK83mGcTqTwI8KHTLNJEZXt1OtiTTfOAwAhUsZPgXcSHtb0rPtMNTvGQyTshmx%2FEWC%2Blhxg%2BqS6yidHStWDFPDrYK5fX8YjgzHM9wEayTUoXKKYZPyMWZrjLHlNcUT5V5ucOQtFqqGVgzEB%2FxTXqXp5Bc1Y%2BzXSyB2yCBXQZSdG%2B%2BoE%2BRlafa3ad2rnpod9HR23ja%2FBTskB7B9N2rA2IhwuzseGLQrDftqM1bgt6pgHF6lXj7VgKxb9txomkZqgznIF5617bo8dTVpzV%2F6RA9fDEm%2BzX7lgD%2Fm4jwZ2UIv%2FqV7qEsEJLfAItJZRyhbB2MYFas3Tgj2nAan%2Bbp0D14PPrRsrV4C%2FaSCa1iDa%2Bu%2BtcLjGOawmb0d7XTqT3ZTFCqIiaf36Prasn2KBfUIkpC5DZopf48wO0RvKx2YxOaxDjCLrYk03zgMAIWA8LUoH4ona%2BQQQHIQBBhDlKw6%2B6Uomhb6IyzLvUfIG%2FNgIKclzaBBtrgBMsJCA2wom0lPrid%2BxLOqpvrdNurmU%2F1eW2FV1c68My4JDxLCaDfYWPY13IZqKdj87oq95K4z96q%2BwmHfmabMpXSeQWVM1gGUko5eGutmwhWjh%2FUZjnGrgH%2FRfZdORDzbkGa2gjAh6ofJmhH1BJlzOBVkWjUMD0eErE4uRc4VqdYn0KcBU15OAvVXDVU6pLLaBlHgT5CaFbpYguWPZl9nMrex2xZo2ipYR2z%2Fzjmo2XA0hRA1r72NKVOx7EEfOO6%2FRT9G3yfBiqaBq3Cg7ajZcDSFEDWuM2vNkbHn2GPPrkrW0ORbX%2BQgT8f5Xe24BZL5e1iit94zNnNifXRR733HtLej0dgwSBMnx4EN1Bs2pD%2FP%2F%2B%2FaHLIySwZrzyJtqAaHaeFfpdU%2FZmfD2rhQhXvB0xYb2gwugx5tJxx5cEoe%2Bvnprsl%2FEr8G2tNAwywe9S2Vr3Y%2F8B%2BRe4YICrTd1en1HUCF3i%2Bf4p1HIs%2BeG%2FE%2FZgHimf15HQTnVlTnjlbXHhi0Kw37ajIs4nHJQs%2B0sMA1KARfOpC2iyyMT4eVVGYZN%2F8K3a4OmCJSTQwx2LksE5%2BBhZ0jIjNmDz7GKwQHsQMdgeP%2FOrtbXk4C9VcNVTuN11W%2B7ehM2','http://img.alicdn.com/img/i3/101191171/O1CN01CJFqeT1KWMdab6P3t_!!0-saturn_solar.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:05.174739','包邮'),(42,'乌梅子酱曼塔玫瑰花束鲜花速递同城配送女友全国生日上海广州北京 鲜花',85.00,'5000+人付款','北京','flomiss旗舰店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%220d9cb1c9442f0449d469f4b5dd49d464%22%7D&id=736632150035&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5427938740852','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWPetq2h8aJWMp5nbm4Nb4X6Y5bweg1HRtcENv1YatRF3B','https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/2201261993308/O1CN01BdUUZZ1aJ7AiPfPJf_!!0-item_pic.jpg_580x580q90.jpg_.webp','33朵','','','2024-12-18 13:42:05.185490','包邮'),(43,'新鲜玫瑰花鲜花云南基地直发直批家用插花昆明花卉斗南速递包邮 鲜花',29.90,'2万+人付款','云南 昆明','亿亩花田','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%220b13be27060c68a8b879d7f07acafb18%22%7D&id=625680065672&ns=1&abbucket=6&xxc=taobaoSearch&skuId=4608348867615','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWMkEtnDpmq6CsrpRf5BakesFibtm1zHVsTxxiioq33PQy','https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/2882273113/O1CN016y5Vj61Yrnv2fpLk7_!!2882273113.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:05.194530','包邮'),(44,'全国油画风向日葵花束生日蝴蝶兰玫瑰鲜花速递同城上海北京配送 鲜花',48.00,'700+人付款','上海','花曼屿旗舰店','//detail.tmall.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22b896d71349190b7b06f1a35faf6a9b07%22%7D&id=807677864466&ns=1&abbucket=6&xxc=taobaoSearch&skuId=5497289189294','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWQDgYeAmjTvUEqaZgShfzZ74bidHUsRMgCjDR1ocfEV84','https://picasso.alicdn.com/imgextra/O1CNA113LD6p1lFPk9ePl5Y_!!2212685794789-0-psf.jpg_580x580q90.jpg_.webp','','','','2024-12-18 13:42:05.204537','/'),(45,'全国佛弗洛伊德玫瑰花束鲜花速递同城生日上海北京广州深圳成都送',78.00,'1000+人付款','北京','小城森林鲜花店','//item.taobao.com/item.htm?priceTId=2100c80517345293120163021e0b5b&utparam=%7B%22aplus_abtest%22%3A%22e678667ada5d0302946a82be898a2bd6%22%7D&id=748184083884&ns=1&xxc=ad_ztc&skuId=5425523138908','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1689&e=n%2FCWEC%2B8jb5%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVBb7BUbjEkiB%2B45nKBS7a83kgHfwUR6GTy6tI%2F4RoetvqTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38kkOWn3Jk%2Bk0mqM3wmOTJaRpWbSk1L%2BII5ljypNz5UUmJekB6PL7DPEoeRvW1aZJp4%2BLnHJt7k6BptCYTWmH4BmNqS61ZXlAQmFK0iqzHrMm%2BkSY39EPrZKvwzKC8K8buiqh5x%2B4f57PM%2BDMZXkcGrL79HZphm2%2FX5iWJDxv3hYN%2FAts0rNvPYBP%2FflM3GWrfuuY71XpIoz9oDdBhk2zYKVjLf4AuyLZ6Ko6frGwxfufMkek2Ph6H1MgJerq0DU5R1ECjjN%2FDMGletSZ7XRQVURA5lR3%2FnYWXH2C28%2BcFNeTarxG0YULcaqZMn5zqIx2nK0Nw1QAN15aaK%2BtLWlgcqdyK2lL%2F3qU5RUoJ%2BmP%2BoM%2BeAko4kuGCgA5VmqCl%2BU%2BGnyJc4Cbv5lM%2FKzdzZY5aebJkG%2F1%2BOLwzeJtWK2LbNDbLtLL8TTQTuvjul7Vtwop8xmhWKsZBvsbmJYkPG%2FeFg1sW8ZYytw7Wqg2Rf5eJvSDadvud10gMYkuqRL4JmT85K1LNNsKyCQ5ndBUijmCa68wveZCuqYBTMtxGjE0%2Fe4cmrYUMBbbEwks8iZ3XPi2fKiQAbesV7gPGgUO%2FrhSHvyNU5zzNH5B58qDCvetPPHAEDnlM9hFrxpMTfqveh%2F%2F3bQXkHFe5K3CMFqB7q%2BYrHAsofmwOodBfJHGU8cNyEC40ESDIJJvxYiIWxClh7yl%2ByRdcNP6LXhZBpi2z2KOWWMB%2FonnaT2cHq6J3s18gGHOYrKMxoT4XU87L4nM7Yh1AUcq%2Fg0OWyAqWL3jT9eA45R2LAPL%2BhYi3b8qQDlIKvhHarxG0YULcap9N2Pjx%2FOERNmwhWjh%2FUZjcLcwSh0t9Gf8ub%2BoY0Lr%2BAh6ofJmhH1BXy3eyPUDcGeFNwOsbudWEYVqdYn0KcBU15OAvVXDVU6pLLaBlHgT5KqZQjpJTsvbl9nMrex2xZr5zwSjZXTNtCIiogWyLrAdg5c7wnlVA2%2FOO6%2FRT9G3yUAvmtEPmwdUIiKiBbIusB25L8ouSYm8DPPrkrW0ORbX%2BQgT8f5Xe24BZL5e1iit94zNnNifXRR733HtLej0dgwSBMnx4EN1Bp4xiPMh944ymj55a61CMOVqAaHaeFfpdU%2FZmfD2rhQhXvB0xYb2gwugx5tJxx5cEpuFo5Nl5YQXCk5JlywN5XZ2EG7ZfYcSSK0Nw1QAN15aaK%2BtLWlgcqdyK2lL%2F3qU5RUoJ%2BmP%2BoM%2BeAko4kuGCgA5VmqCl%2BU%2BGlkTJy2laWQY4l8siali9ND8rN3Nljlp5smQb%2FX44vDNmnxSn2OByngW0xcGhJtZQl%2FvyZsxyQXQCK5mJK8namXSV%2FK3%2BwjKy5wNuwX53x8SVsJ2MTyLtxVmvTc15V7obg%3D%3D','http://img.alicdn.com/img/i3/5124498837/O1CN01P0iLm32F9OwiKYiEU_!!0-saturn_solar.jpg_580x580q90.jpg_.webp','19朵','','','2024-12-18 13:42:05.214580','包邮');
/*!40000 ALTER TABLE `data_management_rawproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_management_shop`
--

DROP TABLE IF EXISTS `data_management_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_management_shop` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `website_url` varchar(3000) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_management_shop`
--

LOCK TABLES `data_management_shop` WRITE;
/*!40000 ALTER TABLE `data_management_shop` DISABLE KEYS */;
INSERT INTO `data_management_shop` VALUES (1,'佰艺鲜花企业店','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1665&e=%2BJXHVVZkKeJ%2B5lRwu8uRJjNd3sbJe9xjPXJxEBS%2FE5PF%2BwS7raRQuf15KAaTEU3GaIw709DlrVCMV8hTlAjBswavY4a5OfPb87DobosM0c%2B6tI%2F4RoetvkfuPuW%2BHgym92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38kkOWn3Jk%2Bk0mqM3wmOTJaRpWbSk1L%2BII5ljypNz5UUm6kSAdO%2FBhQCtO8V%2FXKX9UFe%2FiF7vupheYieHXloAiCzhsMZk6%2FqUMEibcZU5MHKyv5IJrOghvPQUeAEj2OE8aEXMLlD8p5qH4iO1qNgcsZ16JyilNC9jeEkBYp%2BQasNMDy%2FsskSK1LJn7F8nASD8gOuY71XpIoz9u%2FbKFyUfpHJniEOSuBuzUo08hIrE5jiF3AqBdwS%2FFwjg0ldcXZLRzWr4rLyIFoan7bUiqCbXUV7sv5zSwJ2dwHuEIrDaou7xSQFin5Bqw0zO46E5ks8WZxrasXCid77Vw4IuudJGYHCGtta8SmBMcHlNcUT5V5uca3OnQSdnKiQ%2BRibzN8qzrH9ok46qfamvTb5JO4M57LkuHn7ZMbrDJXON30EHoSh7iDqaq1YwEs6lMQl1m0YqnmWOsqiB2F3yMXA2zYrcE2UKczQB1gohhaFf1cSNzG%2BigGCrsDiRvjRSelwSZDr3RMislJFzGkg6CSMUR0rynGJPiKpjFy6WxQTsiUegDekuUqP4hzVDTns3FPQuq2CSa2pxef3hfmDXtEC4aknEMfPd2uppD12zbdsFbXyG1oYqZSN4CvKZFaMpe1ZAFuRbVf7VTdlexU4rN9grcyqqObbEHVn7COiMxJSgyMCwReMOEvCFxfY8reZ%2Bz7MI7%2BkQLHxPy5mJjB3Yc%2BbqTLDbeBx6NV2KGFRUK56nlHkd%2FQf9UO3g4NrneXhaSZrZ4civCkzoY%2BBVMswUTSjf8g6beCBA9kSq22gb2HWBn%2B2%2F2jEAwomu7eU%2FHBrMxJe10TOpICLoABxgBCoNqsaJJi08z56WiEQej%2BFD0TNVn4wgsfd6SnzRA1VOvBd5IniiXJpJIgHSiRzVZxzOBC9I1iq9jhvIEM4kpZbvdJg4CjKq23z%2BsBwDPC7%2FVi26rqLKEpCgLgqANAcaJYCzRNUQW4ed7wGwHAM8Lv9WLRPLP5VAlq3ug0HqZHFLXmWnWS9tudvcR6syk%2F4MFjYLKYHdIYLUSc5RnDJEoyi3mw73vGuX7DZGVUNYZ%2F7fxuODH%2FXzogCTk7DtxVRH7U722Eo8T6qEBsSf2mKY%2Fd9xJw1DyOeRcCvlxbg%2Bd%2FNNLEwXwZ%2FUdRqD%2Fbo%2BjYnwmvD%2Fv5psxTSBM%2BX%2FaxRvWNFON%2BaXiOUVI6U53KwPvN6bUrrxnv%2FRsUEbNORe4YICrTd1UwxBU7c%2BEPbm94RoxzzWWRPfsaLPKOfBZJ5fu%2FqQhkSAUpy1ZGnphcXiKJg77rei4ExVFjAUKrCHz39ZIwfSjEMmo0pQvuZNSnzRA1VOvBd5IniiXJpJIvU7hBlLdQww','天津'),(2,'爱里旗舰店','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWRnXWPnimotyXfYrc4qA3UqZ53rW87xuqQccnsTJu5ryk','北京'),(3,'一网情深旗舰店','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWQcrUXc6cdv1EvMYYxZoU1Cx1czQvd99rz19egXGgf9TK','云南 昆明'),(4,'花屿七寻旗舰店','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWWcwgmDPqxZz1ZHbTVRNXvts7J7G832bRTjuizEsLPuet','广东 深圳'),(5,'鲜花实惠 实体花店 同城速递','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1625&e=2W8cKRCUSI5%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVCJfnc4FguoNPQq2CySmE%2FnNGiaETok7eoKZO82EheotKTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38gGKiIx4ZvehicMeO6hHlpZTaegaRy552SdQk4YMqXhAkMmycm9yjfxG39cvVZ4BjK3lUbux7iQQUTMbkymYWuo51wnNCiOHPMxbAZGYM9s8jXkFYkcKRBqP%2FElhqqtEQg4XHXLiPTodveMHG1XVhXKJpl132AW5QHVlcG0d3OEDqmN%2BRgjjEzHbcyktizh%2Foz0HZEQXWR1mhClGC%2BBpJfJSheoXn6IRa%2Fbbx72A2KN8fG2966ibRNgtC1bajOmTkgTdRuwEIpOoWBOrqe1eCkcl47EVAvCaHiXM%2FNYoHuaEDdxPq7xWzXOA1hFtVz1JeelQ%2B5NbZ74chsnsQ40DJcOGtta8SmBMcLpOzTVaFwg24KkiNr3o%2FMqjkerEqYqzztQHeYL8D1Yb4m1YrYts0Nuon2NpzNsJZQphOpdbEly%2FYUQ7mDjhFocBPGvG%2FKZbF7PCk9YifAPjVv5hvl2YTW6GcRnICRzrBQY4M93vSo9WAl8dOWFt1z8vWY9r0Nhu92d7HvH4%2Fxber%2FXmMNzBUWYdRjB%2FsFvv0VQJ0XL8ldZRUynyruW5jCtJ2V131JF28GAIedT1BwUP0K9otVKlWaq4sRqX3eopFn5Fc99oTSL6Lix7XmbTE1cWl08qL3hkuz00AiX9eN%2B7ltZOTsYQ61ulBsUR1%2B8C440H6P8EII7HPkCF0zyGGNXa3L3v%2BABN%2FbUfnsm3%2BA05aNlPaV3%2BvD4oz9ldPxyDZDvSotcLRCBbDhcdcuI9Oh1pame1mRT5eUyGFhEFWtGVxNxiZosA12kZcqq33EuIuqFDAj4%2FRmi0tNGkBJyASlQFkMu49kj5jVLUmFU8EVDbAhzFftKgzv%2FKK6l%2BzsRDvGO%2Bx8PqtzL63n9BMq2wYKI6seEeyWovo8AqmUAfecsIrL8RL9gvr7%2BjkerEqYqzzo2whjREW1YMofra8CUw2HsVmmgRtjfyXqOR6sSpirPOYN6C4tj1Ud1H7j7lvh4Mpt9vayO5PzeiZYEscTSQMIYuknpb1jViPc7avNc%2Fy5A5UvZ%2F210ye33nPc1JosiwlYA33umyxAQ8agGh2nhX6XVP2Znw9q4UIV7wdMWG9oMLoMebScceXBKHvr56a7JfxP61Wlcls95L4Fvt5BgFQqVaC%2BcZsQ4TgmS4mfHAY0vXWj2cxfyprxzUUjQb7qsVuhAs1Cg39wEvhrdGhMF%2BL9mjkerEqYqzztQHeYL8D1Yb6a%2BgtWZbECR9zakFedmvDlLUmFU8EVDb%2FWfwo8GWjbnSV%2FK3%2BwjKy5wNuwX53x8SVsJ2MTyLtxVmvTc15V7obg%3D%3D','吉林 长春'),(6,'涛骋家居专营店','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWbKXazKNMxa6pjYUFoE4wNFAncyKaiXKg6optyaBoY44t','上海'),(7,'花念花坊','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1697&e=sDPmAr62F9B%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVCfujw6Ik9l0YIJdPXRrGwVBn4lRkYjI9UKZO82EheotKTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38idK5CeKwqgbN13Ks%2BcMCkuFY%2BSy7XiEKKXre%2BlYX2LnkMmycm9yjfxG39cvVZ4BjKUDxK8SfF61KuidSddBy800hElcbjvGSfhOKdxlxnsmBSWWNUM%2Fe%2BGtmWjnGv1ju15zEV2SfQ4TZ%2BIUpVgfzkqzWfxvpKCO6FDjaGJJMPBlZM0NXcWorzpHVJCxQYcIf9l3Nbhq4zQSbsDUWaHtleKlkm4r9V3%2FnlKF6hefohFrsWtFug8%2FiQiWqryotdRyR1ECjjN%2FDMGlSlCCWaORfiKHxsc0wSq5QK0DngpR0qrdh1cLshc2GVYGl0trfT337jcnxM%2FVy9a2o2Yazhr74Y9yK2lL%2F3qU5RUoJ%2BmP%2BoM%2BeAko4kuGCgA5VmqCl%2BU%2BGt4ZTo2GLH%2FH5u0TS0ylm7GToVcsYH%2BQnrL50moAC%2F3dX58SHOvvjEvZP8WCSF6CNSAPWFRX8sYEDGSaE%2FC9ipC21vGsrCr%2Fnl%2FyJNYLSWzaB2KrAYOTT3eGcRnICRzrBQY4M93vSo9WAl8dOWFt1z8vWY9r0Nhu92d7HvH4%2Fxber%2FXmMNzBUWYdRjB%2FsFvv0VQJ0XL8ldZRUynyruW5jCtJ2V131JF28GAIedT1BwUP0K9otVKlWaq4sRqX3eopFn5Fc99oTSL6gQCimXcbEsgraBrwsEq9SDl8aRE3%2BMLOeH1cQig8k7a5zoC%2BzABn09O%2FKKfYFKydii5J2jv0EKMHkvQjV73DbmlvaeW46jfW%2BfX%2F%2FtP1NeJtp006RiJ%2B7OwFKJP9we5nttbxrKwq%2F54DqMM1yON6bsAUJvSbvDwixY72jlWAT9die0tk9qkBXtC4%2Fvdj7pATCzhm%2FyYCB3IXWUB1%2BqwNW87w940bU5ltG%2Fa0l32r4Sxwz8fSl3yl4DxoC%2FdEoxrqnA27BfnfHxJWwnYxPIu3FdWS%2BFeYJA%2BygB1IE5ajzYBOOlOCYEq%2Fwye8%2BIGWyy%2B6rB3iNTyNh%2Blve5b335L9ipuN3P%2FWxxRsJ7z4gZbLL7qsHeI1PI2H6YPyIdoM2Yn5n2oppxrCS9NYwqkFSQdjhV7%2BS1uWANjy9ErApLuUzSSJcSI%2FcwVOPTUJ401T%2FVl%2FUqZppCRFKsUcplRF6%2BhzXWoBodp4V%2Bl1T9mZ8PauFCFe8HTFhvaDC6DHm0nHHlwSHLgGNle1QxQG1cWU8K5Zw%2BnpOtpsRuu9aSRUmzDQNkkUHqYgEOF4HI1zllZOjjTObTIMDSVbA9ZJqZe44t5NTWULrQKFX6tmNCDWu8kv4gVkLpKzVcIvCsXHPx5oWH5U5%2FY1f9nPO5SNr8FOyQHsH0Ql%2FLW0A0VcyCRWha3wU5BuwNRZoe2V4mekWSsUc60ZIP%2FdxdKytWUTMtyghMZ658q8YzHT%2Bvhc','辽宁 沈阳'),(8,'繁花阁鲜花店','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWaTXPQC9uKcQMsx8hH365nVs1svv6AFHezZweUr3PTh2h','北京'),(11,'花念花坊','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1677&e=pj2MAszkhw9%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVCfujw6Ik9l0YIJdPXRrGwVDrjRc3Rm1xEKZO82EheotKTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38idK5CeKwqgbN13Ks%2BcMCkuFY%2BSy7XiEKKXre%2BlYX2LnkMmycm9yjfxG39cvVZ4BjDUc5unDKXIKf5Vg7gIjfuxcGlK9PzLpLyVI6JVkMev8d3LIuh%2B4QzLtUC6vZ4zrffu0WyfYN2pzaqv0%2FY1H2Ov24yS51g6ytnUm91GIJWbOtVJMGdjwPR%2BOZLvMj837x%2F38YgF4VzimPn9QOSONmIUpIchXYAx341KF6hefohFrsWtFug8%2FiQiWqryotdRyR1ECjjN%2FDMGlSlCCWaORfiK%2FyJcn7MowO9OXX9RWhCZOh1cLshc2GVYGl0trfT337q%2F4lOGUONkTxf0hXOcas91yK2lL%2F3qU5RUoJ%2BmP%2BoM%2BeAko4kuGCgA5VmqCl%2BU%2BGnyJc4Cbv5lMvM46hi1mCScl0h8yhi2oUOJtWK2LbNDb%2FeUOHTzmQaB0aKzph5jxuRmhWKsZBvsbXBpSvT8y6S%2B8x8og1yRt39NVLaX6DNO1sPptr33B2a%2FTD5cFDsVN7BaTzIjcWQ38k8VQmR8wfEvs6%2FcDuwKznF9QPdywIRADtAN57bBk1JNSC6thvBE%2BoeDybOJh7xoGsatFoVPSgkeC%2BsVIT9B1avK7vrW0leEVCL2Tqm0KWFW49qTaXTtb%2BJ29D7HeCqg1901TfPsFT6Mcui4ccBcavQfYwLq7Dr5NnZfD9E1YfoZtFp%2Fdb9KKseIGwE4uZfJOPkCF0zyGGNXt0kSJKNQYd%2B1QLq9njOt98WJB15v8uBxAda%2F7BIDF2FwaUr0%2FMukvrI4vBYTxpoxqq%2FT9jUfY6zRKeMJKBfiLvcA9ZJGWCaa2yC6OCr29pQYyTcrNdDLGpOSRcX%2BNHQZeTArE8%2FajGCJNo0H8XKLnPn9QOSONmIWKYLNzaJQ2iSU%2FVSuV5P%2BytInJnK2w12Z3x9YmbGUGhAqMoNXDl67Nke5BbSJ3FXY%2BZwGVvZ%2BhZ1ERC0DrJ0I7Z0QB3pN%2BXY0%2FAIrrhbIWwkswmNuZMzdwURELQOsnQjtJWnrq%2BbZjXI88pPvyQzxUqSujEY1WyGYBClzexq%2F5%2BjvDexEEqJa%2F99T5ck%2FH%2FIWIOb3aUusNZsnhLZT7jPLYcxqhk2CJgBQu%2FKf7n18cO9mwhWjh%2FUZjQRCMLTFshY%2BIXgknC1zJH7%2BZZ5G5AAqOUKmhi0FkqsRSsAZHsc4jQhVolLTiX6HU%2B5rs%2Fy6OpJTkaNpomKJ0MPUK6y1VkL16SC8sYTuR0jMiG3jfl7u25rw6sk7nP%2BLL%2Ftne31UNTgRr%2FEU2KzZNxuRtoTc8fcDSi4m82Z7ZNr%2BEUsiibwyW0pKwGcvjJocLhu%2BD3fRTYR0Zmple9%2BfFaT%2FaZe%2Fo17s%2FXx%2FSawKDTk4%3D','吉林 长春'),(12,'蘩花碧玉旗舰店','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWa4ecySWYhGKbaMGeNPuit1DVG7sXhU6uQ3JFrncDW7dH','广东 深圳'),(15,'佰艺鲜花企业店','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1665&e=DHsjeyNoNiJ%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVCMV8hTlAjBswavY4a5OfPbZ9QEZcx%2FF7u6tI%2F4RoetvqTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38kkOWn3Jk%2Bk0mqM3wmOTJaRpWbSk1L%2BII5ljypNz5UUmPmDqob9zhFaoaA44vW696Ve%2FiF7vupheuUmDDvk%2BYW5U4RUXEnAExEP%2Bo%2F%2BfA1pQXe7Xpx%2BsFfKl%2Bt88BgABs6CFomPuzR8s5q37SjAw3dO7dPLywOyGCEkBYp%2BQasNMpbLUgXJn2i5jOy8527BFMOuY71XpIoz9u%2FbKFyUfpHJniEOSuBuzUo08hIrE5jiF3AqBdwS%2FFwinYuBGGjFiQOGsuZvLZiOjt0%2FyiIJP9CtjVAtcqHgP1i9yEgQQq9IUrSvKlq4nsP535TVCva74Uo1zllZOjjTObTIMDSVbA9ZJqZe44t5NTWULrQKFX6tmKnkkIFWqdFYXMFc%2FLY%2B%2BO%2Fj4CYXRadVyja%2FBTskB7B%2FJe2%2Buu2c0Csvgsz2jE715wAOA7lt5qJIi%2B4N6ElPVSMW940cjZ30tSxlfUNM1JQWxA6oDDpAcVQPZ1WjaMszpphhRkuoS8rSRD7K%2B38Mt3uIHbTANMZM4dCFddtfwSDZjOiBZAf%2F1UFkPWGJ6q4T4a6Q9v05bLByLMBtTGK7SuUkE0%2B32AqOyEbODV%2FLFa1DKBpq8zqWYKYDpn9Ubj3siJ%2FpFjmN6q5raHIrxWHIvdGA8LUoH4ona2iyj%2F%2BXY9iXlKw6%2B6Uomhaup4HSWAk%2Fr1cTjuRxmsAfP7493TzmWB9X7GDSRGOuUU1rcPXyW7a3I1McZ2GgjvhQknwosBnuDz%2BhVckDxORyLTdrhrvOXJHtircdWDsz0BsEDEfnyMNtMO1KsGPsr96N0iH7%2FNNAPGXKqt9xLiLodxu0HaO8ziBQknwosBnuDh1wsGJxV8QzRWoFcR6XCATWvRXu673r2yiupfs7EQ7xjvsfD6rcy%2Bt5%2FQTKtsGCiOrHhHslqL6PAKplAH3nLCIsm0%2B66zWV5qZcE8Ckr2akEX35Xp9qy6KH62vAlMNh7SlzQFdel0UiplwTwKSvZqU2EGt0nT6djR%2B4%2B5b4eDKbfb2sjuT83omWBLHE0kDCGLpJ6W9Y1Yj3O2rzXP8uQOVL2f9tdMnt9oPr%2FiOVywnT0Y9cnbqPVoZ73mZX6Wg5r%2F43JvfR63C906kVXqhKKprBT9dkPFfD3KXCC4ZNLH2PtghX6VKvspzBXL9YlQ0qaRYYGaAIcjC89xtpYuV3QO%2BlQ%2B5NbZ74c7uLAY34bUHFaPZzF%2FKmvHCLvkekCt1%2FMQPez%2FVQJ0irL4LM9oxO9ed8DHkwCWugXfGKbjVc0NjzSarAP0jdzfu99O%2BQCVcOdzNPpQUiz0MZmO5OT%2BIcETNJX8rf7CMrL82A3Enl6luFjvsfD6rcy%2Bq1V%2BwWyz64V','天津'),(16,'七彩花卉花屋','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWXQ7P64onvvW1QoBcxBbLGxpWMTBf1G74N66g9bRnQxiK','上海'),(17,'认真卖鲜花','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWKRzMQkrf8LU7a9MrAbP3ksGYhqr6tkvQurgZbMFZHgYu','北京'),(18,'青山 Azure','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1753&e=lZXA6%2BXN8lB%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVCo7xNNuq%2BaVh4zCUxquzVSdDOCWqcX7b%2B6tI%2F4RoetvqTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38kkOWn3Jk%2Bk0mqM3wmOTJaRpWbSk1L%2BII7svc8X82dRLMUstanzqVTj8h3Qnrmeoct2Ixob3tnurp8KegLuCR%2BqxFgAcr%2B3eSbfH6JkRX5dj7xmIM7mawtZSI1X1wLmnbjvYStJcNwnHwfpzPdHxqekaMW7gBxMJ995a2NB81xceMK9rdalTVcZbGxdM3AmJrhv9w64p2YS6saU1GQu%2FlhreYZxOpPAjwodMs0kRle3U2eJwcdlzuyZSxk%2BBdxIe1vSs%2B0w1O8ZDjgROgmIPNl2dZq4fT9zEft4bspt78j3fbPC1CD3oirxUWhPCW3m23XnopFJUxssKUTSHuwizuitWKcG80%2FStZdDr1AmWemByIht435e7tuZxOK3oGqXOe7x5bw1yWa8MGJQXFm26QUk4gE3WdcMiqmvXMUD45VV0q6AmnIgcxFdq8I2Rc5NT9%2BJtWK2LbNDbgMPwHAmV8l2TazWImhchlQY4lQfM1hpS%2BFYXwlem1JW8x8og1yRt31r5OHImQrbcsPptr33B2a%2FTD5cFDsVN7BaTzIjcWQ38k8VQmR8wfEvs6%2FcDuwKznF9QPdywIRADtAN57bBk1JNSC6thvBE%2BoeDybOJh7xoGsatFoVPSgkeC%2BsVIT9B1avK7vrW0leEVCL2Tqm0KWFW49qTaXTtb%2BOlpbNsFWr4SOj8WRKmMivug3dxazqUUlwfYwLq7Dr5NnZfD9E1YfoZtFp%2Fdb9KKsdp9h6LZg0ZaPkCF0zyGGNXt0kSJKNQYd6rxosHTW8%2FHz8pDvAL7QNEZuOL5d8WodfhWF8JXptSVDJw%2BHS1MxckU9QpcT6QNqNSqPp5hh9EqmzLllyithN62yC6OCr29pQYyTcrNdDLG0wa4YyWoLYb35YjQ34%2FDbyJNo0H8XKLnPm6TyaLIExrXqmdToe16tSU%2FVSuV5P%2BytInJnK2w12Z3x9YmbGUGhOEjVPtWsNdZke5BbSJ3FXZoIgUtBbQAOBDFDeAUnSJiZ0QB3pN%2BXY0%2FAIrrhbIWwoU%2Bk9GcBv27EMUN4BSdImJJWnrq%2BbZjXI88pPvyQzxUqSujEY1WyGYBClzexq%2F5%2BjvDexEEqJa%2F99T5ck%2FH%2FIWIOb3aUusNZr0Xl6gmh69iPaMh2YlgQzAmPS6N6MakWoyViIPQtMfz1kdzYMKYbaqPV4VIYurO5RyClFZzA1mTEcNIf%2BVpfeio6JuU0DGP6PhWF8JXptSV%2BfTT%2FLbA8gM5M2QtPtgCkv1hDh1KLsvyOVZqgpflPhoBA%2BUozDLIgPuXHEVRwloTOEks8kh2DhjYbgHi40BwPa0euRKmuQmUROiGu3OmF3DAFs0t%2FNlTbq5ZJSlZ4C2E4m1NhDOUaQx3vNrVmDJHkdK%2F4l%2FGhPSbYOjPHVPB1skkOG4OYn09VCU%2FVSuV5P%2BytInJnK2w12aDIe%2FR8gOZYQ%3D%3D','上海'),(19,'唯爱鲜花旗舰店','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWN8eQaHLR7vqUx3RVqGaoSbvusn7k5JPE6ewEt7efjsfX','北京'),(20,'花开口旗舰店','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWbEU6bE5YSaXKLedxNwqfooUhTnRkhbP6TmgyfS3zSU3C','北京'),(21,'有好花','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWLhSdWdJRAL4Voj91NEKQ6Hk6orztivWugqaxJEyTnHyd','山东 日照'),(22,'云南花信小铺','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1741&e=lsgRoLE7zy9%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVDvRw6R7K%2FH7qWFZkvutJeCRj6waj3KcyUKZO82EheotKTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38sdn1HRcQ5dVlX1ikWT%2B0cjnlnswNmfuITgtHUWkn1QnOKlFmHq6ka58E2uTLPIfJAGobvfvEy%2FanpOYvm8IlOlLLRBNcfX2LpNys51KLy6fvR%2FPEZLyjI98PWp56Fq8vKQxF335O9VpFNGE%2BMTbJS9YO%2BZe5I4Gnm0PqlMj8knQaHyivyAX5%2FM6QaMtbm%2BZY2I3GJzkVXqOrr1o74VAfMWEnv2vOMHyE3665j6TlKd72y4jPmLLlhqxn45BXdf7Wd%2FQSyz3jGzyjY4pItzdiqjHMT4em8q3lLf9SFYauSOrfGOnKfDzWuenYuBGGjFiQIm0DiNSWCrplOKwOuFIPfaphjJQpyzIOLobyjdA7sbqQgBeVaDUiXEAp9DxGhO4W3IraUv%2FepTlFSgn6Y%2F6gz54CSjiS4YKADlWaoKX5T4a3hlOjYYsf8e901eIn55%2F%2BjvTj1of6Mtnb0ENrdeZpohfnxIc6%2B%2BMS9bLOCBYmmRG0nZTqzoDdCpDXK19DGINZKQxF335O9VpNc3CtRNm2drRLa3p9oS3NIZxGcgJHOsFBjgz3e9Kj1YCXx05YW3XPy9Zj2vQ2G73Z3se8fj%2FFt6v9eYw3MFRZh1GMH%2BwW%2B%2FRVAnRcvyV1lFTKfKu5bmMK0nZXXfUkXbwYAh51PUHBQ%2FQr2i1UqVZqrixGpfd6ikWfkVz32hNIvq12u8hToEK016CSuaHpd%2BFOXxpETf4ws54fVxCKDyTtrnOgL7MAGfT078op9gUrJ2KLknaO%2FQQoweS9CNXvcNuhTB52y5dB25tD6pTI%2FJJ0CIZe0wVxsffS0dzNx0DEdGkMRd9%2BTvVae8egkYICc4%2BisJVvr1w%2FKUYTcwjvFsNpdbjY%2BpiS6P3tsgujgq9vaUGMk3KzXQyxtft1Iz1ybI%2BItrpp0GxfL28MggPO6wqLi47iu1GjimW7mzMJi8XZtIlP1UrleT%2FsrSJyZytsNdmd8fWJmxlBoThI1T7VrDXWZHuQW0idxV2b0rJanSAElr7X%2FBGRemev2dEAd6Tfl2NPwCK64WyFsIwX40IwpwJ8vtf8EZF6Z6%2FSVp66vm2Y1yPPKT78kM8VKkroxGNVshmAQpc3sav%2Bfo7w3sRBKiWv%2FfU%2BXJPx%2FyFiDm92lLrDWbkpHF%2F5lV59K%2FtWIuq2qa5Jj0ujejGpFqMlYiD0LTH89ZHc2DCmG2qj1eFSGLqzuUcgpRWcwNZk%2Bp6iVvUd%2Bk7qOiblNAxj%2BhYjM5mOIOPASvh6tNH3bB6GtqxcKJ3vtXDgi650kZgcIa21rxKYExweU1xRPlXm5xMGknZH71vgwX3G6b9BmfDg0L4x6yGwA5LMCkkrTJmlVG8YXscTn1RIpnhhVpooTZnwtoU34n7SXspxl%2BWJoxw2YPPsYrBAexAx2B4%2F86u1teTgL1Vw1VO43XVb7t6EzY%3D','云南 昆明'),(23,'蘩花碧玉旗舰店','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWa4ecySWYhGKbaMGeNPuit1DVG7sXhU6uQ3JFrncDW7dH','北京'),(24,'唯爱鲜花旗舰店','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWN8eQaHLR7vqUx3RVqGaoSbvusn7k5JPE6ewEt7efjsfX','广东 广州'),(25,'蜜心旗舰店','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWSkjAAGGNzd3iBS3C4FB55eEKHFbn2chRNrWpzBd5f7QW','上海'),(26,'昆明斗南花坊','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWN7rTybsNx6x7NvRQCjgb3uGF3NbyDKryWbK6QSmNenYE','云南 昆明'),(27,'花漫全国同城配送','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1741&e=tz54c8VteP1%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVAFMVXA22lH9ghgi91wXzOEaCZPkCjZCQS6tI%2F4RoetvqTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38kkOWn3Jk%2Bk0mqM3wmOTJaRpWbSk1L%2BII5ljypNz5UUm0qWDpEsUjtA3OkywzH%2F2MmvYIvgVYAWYMTmJfJe3yRfgE2vJRx%2BdLaa7cVM3Q5p8SUWq2UGPuq0dZT54Z4DHn7R3zzq8GYlIgffhRgEQG5vCu8x6vvRu13hxFwEI5aB6U78dB5IN1TxUFnuRsqo5weuY71XpIoz9yHI2Cn7VmaNEepTq8DVfAd7c%2Bce0OTr25E8JkFiqGMcu5EpVP%2BSX%2Faq9pc7La4svQ2oyraEyglOofjxkKO%2BYGi9yEgQQq9IU%2F3t0o8OCd0NCsiq%2B97EuXI1zllZOjjTOy4ffSq%2F4WNdaPZzF%2FKmvHMGRuXRCokJc8Cs4H%2FMipwLe6ck0AdpZql7y9Uajo6w7wmy17g3pyvA92%2BMunjfyqGo7863zjIkWUJrL0e5CYTAA34q3u4c9pMnRZL2qjFOXcl99r7Nn6xBXGkDbQcU1TRkjjlEGLjy1P8%2F92C2uEWuxA6oDDpAcVQPZ1WjaMszpphhRkuoS8rSRD7K%2B38Mt3uIHbTANMZM4dCFddtfwSDZjOiBZAf%2F1UFkPWGJ6q4T4a6Q9v05bLByLMBtTGK7SuUkE0%2B32AqOyEbODV%2FLFa1DKBpq8zqWYKYDpn9Ubj3siJ%2FpFjmN6q5qbwN26U04SsBpg080pKLIR%2BKtw%2BX9QDGCB1CsUthG%2FjA5I34kaoEtctiHCa6Rv%2F2mMxlGjz1AbaQeQQ37mxe9t7dH5BqOEl3%2FieTPkgfDP1pC1foyPofF5p1JEYFfXLtbMhxbPytp4yplc0Ux5tCxQvy%2BKcU6dAOX1XFDBhUTw76FhU4zEbl5hM%2FB3cShv36H%2FiKPsYu6FjUZf7vlAbz9%2Fi4cJafHiFh03bPkAiHBM0ULL8cDAz5tqxtPMhtkXlgjtPRnrj%2B4VSSgHiAt5HruOBQYPDO4b3DNgAPPDblmA1JiVQwIh85BD4uUSA84W5sNigWOaKWk1xfFweCR1vuPHekzzsxwoUDji5RIDzhbmw97NXtnwNzyxzSJUpUHOEeaNYydI5UQBtZ6k3KQXabIbzP2IqzTo70y2Za%2BOMWObqjmd8X%2FmXsAvLCVEwFvL2ogwb922gxTTd1LL8e0mWcXPMIGnysTtq1Mm8TovfmjlHNGuAA7mgxhM7gRgcdK2vbDFuD53800sTBfBn9R1GoP9nQxP4ENuCbJwCdbdIPCRtw%2FUuAG8R7yw5peI5RUjpTnPu%2Fal6nTuGDC2QWOwnXwUDAjVghU09XYYB%2Blr7v%2Fm2FRy9YAsdlTcvuQ4Ubh26dxoswAP1eXikBgyo32ej0CQ0qWDpEsUjtCUhsMTeDH6lFaFUkVr6UwW1jZ2HjLR5M0VH18sMV9X40HC1zL13dmSJDhuDmJ9PVQlP1UrleT%2FsrSJyZytsNdmgyHv0fIDmWE%3D','北京'),(28,'千树花花铺','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWLa5uXsZ8uyCPnJyn3hgqDuiERKAtUpXSkMPcz2WZ3f1u','北京'),(29,'iou旗舰店','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWL4FS8e68AC4ey8nGs45YzKv9cAYTvj9gcB6KWexWdk3a','北京'),(30,'花研色旗舰店','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWYHUiEEN7hgehsboP4nvJNjHRFp12L1yLWknGbnD4Kk9C','上海'),(31,'朝花夕拾花铺','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1825&e=JvvtmUKXktJ%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVBuLa76pXRyWmtyWVwTz5yt%2Fqt1HtljyVsKZO82EheotKTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38kkOWn3Jk%2Bk0OKlFmHq6ka71w5lOkibQqDIiOnT9hjMDBYjAkSHWNYbnlnswNmfuITgrzZ3vTnqVxB68RhxW%2BcRbcUK5q3R%2BekkYR4ZAkDexvvY16tjXHUls3Jy1qkNifC66bJT5G0a%2F1PuyiDd156g9jF4bv3UiB6exSpQ9Q8HS9umCSTX7p9ZwWaOdt6%2BBoMt8uYICUOMei3hFml6WyKOl8qLtjZFVPWD2kTgc%2BCQmY5sCXgj8mwxILwYoTgiyugDZn5wvF451IiJ8Q%2BEx%2Fpf%2B%2BlMKAB8bnVu5qO5Dg02P6b7QM7bHy0dN22nPAXYKwxj63MGbUn7EcPyaCy5s9N%2F%2BagWp%2FET7%2FgdmPsxFHtwse4QisNqi7vHkrmcfwAoYW40WwyeJDou3GtqxcKJ3vtXQi3NMG%2B7GQvGe%2F9GxQRs09jIK54n9Uy5nbJgKYcC4Ah%2FIBHV8GW91n9YDUCvKu9i5EHACtc6FqGvXMUD45VV0xkwq5Nve7e2Ul2jsFHDyWeJtWK2LbNDbUSp3%2FqlE8Y83tZnuLvTv7nQgYyes%2BWLJ5K5nH8AKGFu%2FtRvyAf8WNphx%2FiZMDtArsPptr33B2a%2FTD5cFDsVN7BaTzIjcWQ38k8VQmR8wfEvs6%2FcDuwKznF9QPdywIRADtAN57bBk1JNSC6thvBE%2BoeDybOJh7xoGsatFoVPSgkeC%2BsVIT9B1avK7vrW0leEVCL2Tqm0KWFW49qTaXTtb%2BKOCAwlhyecB8UZ71wqDXjKg3dxazqUUlwfYwLq7Dr5NnZfD9E1YfoZtFp%2Fdb9KKseIGwE4uZfJOPkCF0zyGGNXt0kSJKNQYd46Iep5HxD5VVsGG32ABFauVU3Y%2BtJDBpuSuZx%2FAChhbMRj88v1u%2FjzFVcA3A6bGpdzIz%2BzX%2F0VqWYNqVSz8mHF1gZ%2Ftv9oxAMKJru3lPxwaUQEt3EutiQ5D2%2Bk5cG4p%2BKrGiSYtPM%2BeprZKMb8W3suVTn0M4H3UhEp80QNVTrwXeSJ4olyaSSIB0okc1WcczgQvSNYqvY4byBDOJKWW73SVF622WKv8sGWtat%2ByZFgruq6iyhKQoC4KgDQHGiWAs3PLM6pvzL2QZa1q37JkWCsTyz%2BVQJat7oNB6mRxS15lp1kvbbnb3EerMpP%2BDBY2CymB3SGC1EnOUZwyRKMot5sO97xrl%2Bw2RllmlzHgR3idwCg3qWqNaOae95mV%2BloOa%2F%2BNyb30etwvdOpFV6oSiqa9Ra0JfgjMQE9ut3ib2LXa7YIV%2BlSr7KcwVy%2FWJUNKmut1CzeFQchpJKlagTRqayrpUPuTW2e%2BHDNvSKa1K23yhrbWvEpgTHC7kzPbhruCCALdCYiDfELuLN3BBnxreqqV77IHruw3Z9BV2b1SZeCDLY7CH76GAOpN%2BXm49jXY9kUCMaT%2FwVVhNbnUxBvi5wGxECIgqdoyf0Pb6Tlwbin44u2zVhahLvM%2Bnc%2F7tjMxnCQ4bg5ifT1UJT9VK5Xk%2F7K0icmcrbDXZoMh79HyA5lh','云南 昆明'),(32,'有花就好','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWRShACW8wbK8s4F4MQNZyksNGkitYzU3RYcK78KFpHpKm','云南 昆明'),(33,'官方国货甄选','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWNRSByu5epBKu3KQhNSjsCz1wmEwbTdRRRfdHu2e7J5tf','浙江 杭州'),(34,'花千朵鲜花礼品','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWTrtiF5BCXzMsJkJ3ar7i7CC5dkQFdEfu1dNKKj25E4mJ','四川 成都'),(35,'格菲茉 鲜花全国配送中心','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1785&e=t%2BQOG2n%2FoR9%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVCXR8MFL58jfvwVp8Xxf%2FeyjJ4TBhK8JKMKZO82EheotKTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38vKHbE46eNDwijik1Oof%2FbBBUl3aJUhwVmIeyJs%2BS25OVQnxOkN01622x5SI9P9F8eH%2B%2Bem%2BhjFo0CQPTy%2B2TlsN8T8Ja1LM6NoYFncfcVxtnbBMtfSJrT%2FuFJY6%2FlQJkGG8CzWi3761hxWPopg%2BUcEzEnHzgNVgIZFhIoHjixyahUqVEBVrliB6E%2F3me44dry%2F4hSRtWavROHiYJ343Co8mxeaJy2NTnFYidG3wrBVXaMim1fZVQZ2M3GEU%2B7LjLFXL%2B5pMp2Lg5E8JkFiqGMemhyUDX5jTk4ejIafx15kNbQkM8U1qk43d%2FeIM8kHZli3pJ8BoSHpvkp7qIBjo%2BnvzDWRdxOEONuRo2miYonQw9QrrLVWQvXpILyxhO5HSMyIbeN%2BXu7bmTT0IfRueZl8Ay9KGrIXGEH5zCIERxHMcm6qy4kNPEsfA1dsVA4T5j9ft95N4vggPdNn1Ye0SMkSRbA9HK3ilmW62MsByh6g7JdpUGUDzWfgHYqsBg5NPd4ZxGcgJHOsFBjgz3e9Kj1YCXx05YW3XPy9Zj2vQ2G73Z3se8fj%2FFt6v9eYw3MFRZh1GMH%2BwW%2B%2FRVAnRcvyV1lFTKfKu5bmMK0nZXXfUkXbwYAh51PUHBQ%2FQr2i1UqVZqrixGpfd6ikWfkVz32hNIvq%2BHrgJCznElWaahiz8ioJQjEe6yjhb5WF4fVxCKDyTtrnOgL7MAGfT078op9gUrJ2KLknaO%2FQQoweS9CNXvcNulXTfNGPnVES7vTjLF5i2Whdt1MHCnWwRGdGuIMuf0BmaMbc8jXwIHCTM03gMts%2F%2Ff77FkEt8Zf0OyXgbdwwNa81u3FRx54iTtsgujgq9vaUGMk3KzXQyxnxaE%2B88595VC1VOEVOzvTR65PXpBEePZP1iY1GJOZllh3L6aGtvzqwlP1UrleT%2FsrSJyZytsNdmd8fWJmxlBoQKjKDVw5euza4IM86RwRugOj2bVpJ%2B9O8z6vvkoGNp%2FBdvF%2FRUAPagKb1E%2FrkMtFdEHXhZYzk4BnXmSB3rvkRSEZL98COWWgDhy6YS1K2Jmn5zCIERxHMc%2FCqMOLLPFK8KgDQHGiWAs0RRLLTaaomffnMIgRHEcxzUfEzJSd4qIINB6mRxS15lp1kvbbnb3EerMpP%2BDBY2CymB3SGC1EnOUZwyRKMot5sO97xrl%2Bw2Rq%2F9krua97p%2Fzy7%2Bas08vS6e95mV%2BloOa%2F%2BNyb30etwvdOpFV6oSiqbuY%2BmayHpJBmLrWxCc8G2PUKmhi0FkqsRSsAZHsc4jQpKe6iAY6Pp78w1kXcThDjbkaNpomKJ0MPUK6y1VkL16SC8sYTuR0jMiG3jfl7u25tAgSH%2BoIo%2F%2F6SK7E6XAPUpqwKIqOnkh4n5zCIERxHMcm6qy4kNPEsfmyA5w92Z9M5%2BTUFoGlOk2HUeW9P7x9Bkrf16PJ5xcQb1tpvBQuRmP7T0Z64%2FuFUnLOGY1pbe1Yg%3D%3D','北京'),(36,'花时间 全国同城配送','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWR7kdFK8ud6JZSaoMKdbCjqBuv5N8LkiKaMKpZirFiAAg','北京'),(37,'昆明晗朵朵鲜花','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWVwYWg1juMXsnpMH56Xp7eeUqFEvEmUADF8wrSReyV14m','云南 昆明'),(38,'西湖碟花卉旗舰店','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1793&e=JTBJ6a%2BcWEx%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVCtQjZdkMaZLDd411zubwp2XQIIwjVZGYEKZO82EheotKTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38idK5CeKwqgbN13Ks%2BcMCkvZ%2Fec%2FleHfvIICPHpsD7C8mqM3wmOTJaRpWbSk1L%2BIIwf9LuNEMLa6aT8RGT%2F%2Fom1W18ve5w2ZzK%2FVdSNV6qFN9hSIW6kY6AJRxbyaQZbjb61vzS%2BDZv9UW6EYSyT5cTrccNzT%2BoLj4PigUmDW%2B%2F1jd0yx%2Bd4TdcsMsmDc6dOlxFCiqANiXKms76v%2BF9uJG5zguDZNGapiidnV9ISoHfayoGTZ6522cujeYZxOpPAjwtdtc%2FXCUoPDAa%2FnH0KdyAZN22nPAXYKwxi2RHrD3D1sSISjdAvdgyUczwPoGU93NrrDiiokmjcnjsFbDDXKMDSuJUxFPvQ0CT4xTWvLJ%2BjtOTNkLT7YApKR8DO%2B4nbz2DlWaoKX5T4aAQPlKMwyyID7lxxFUcJaE4B%2FVGRhdSrwNy5ZG6UlAswm19Zi%2FtwULRuQ%2BJq54VGzFA4bYxcYTeVr2p5jCcY0iV%2BfEhzr74xLKJctV%2BldN3suCsYbK8N3j7FNjXuOxvxbQiqp8Ef3M7w1zcK1E2bZ2gdiqwGDk093hnEZyAkc6wUGODPd70qPVgJfHTlhbdc%2FL1mPa9DYbvdnex7x%2BP8W3q%2F15jDcwVFmHUYwf7Bb79FUCdFy%2FJXWUVMp8q7luYwrSdldd9SRdvBgCHnU9QcFD9CvaLVSpVmquLEal93qKRZ%2BRXPfaE0i%2BjpQZhqY2XlWPqqeB1wQ76%2BMR7rKOFvlYXh9XEIoPJO2uc6AvswAZ9PTvyin2BSsnYouSdo79BCjB5L0I1e9w24I7FIbiU99xaP1K8Y2pHcobuhVnx9TQIrVZyxZURttBEIqqfBH9zO8cq9btf6SAixcpKwJvzM7LTyjve7DQrCSAj%2F6bWsBwSDQuP73Y%2B6QEws4Zv8mAgdy2RBG%2FPu6CoFHXsCjQiOT7JXYw%2F%2F59VFxixNNCGZhWwdgqpqh1HWd7pwNuwX53x8SVsJ2MTyLtxXVkvhXmCQPsoAdSBOWo82ATjpTgmBKv8P3veFwDMECsB%2FoCNA32Jvkb3uW99%2BS%2FYqbjdz%2F1scUbPe94XAMwQKwH%2BgI0DfYm%2BSD8iHaDNmJ%2BZ9qKacawkvTWMKpBUkHY4Ve%2FktblgDY8vRKwKS7lM0kiXEiP3MFTj01CeNNU%2F1Zf48pyLZQ1%2BVZI5OkAMTLhG9qAaHaeFfpdU%2FZmfD2rhQhXvB0xYb2gwugx5tJxx5cEhy4BjZXtUMUBtXFlPCuWcPp6TrabEbrvWtuZzrSn56AD3H7Z8B3gP7ml4jlFSOlOc%2B79qXqdO4YMLZBY7CdfBQMCNWCFTT1dhgH6Wvu%2F%2BbYVHL1gCx2VNy%2FkEop2WxYOU74898XxldjGS7XpEc1O1szWd8NVbwZntPOSBj1U5v%2FbObHWOFxXI117Vf4R%2Fhv9LkMpAMbgyaiUD8QjtvfqPbZ4LEAily9mCQ4bg5ifT1UJT9VK5Xk%2F7K0icmcrbDXZoMh79HyA5lh','广东 广州'),(39,'荟鲜阁旗舰店','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWLU4SSLvBAFajx66VCsMK4jSz7qMg7PWHE9AJf7vRCeSe','广东 广州'),(40,'融鑫花坊','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWQGBxtsBkFeZsgU1HV21LHVEn4aTeABn3n6z8qsUJqpBC','云南 昆明'),(41,'花点时间旗舰店','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWabXDLPAjZGB5jVBjNrs4q3BQ7Wb6eBAgV6yjEGK3GSBW','北京'),(42,'妲己鲜花','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1633&e=iw0cGedcSUJ%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVAkIerD0QmbcCYNvXpxphutnLRia4nkAPC6tI%2F4RoetvqTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38kkOWn3Jk%2Bk0mqM3wmOTJaRpWbSk1L%2BII7svc8X82dRLMUstanzqVThyj9Xx84C3HCOOmi2pmq%2F7%2FKauL9%2BCohcAsyySBnnz2ALfZ4VuPdgLfWGf3FAHw3r%2BFC%2F14w2Qb8XkcVSpDWgnSpXifT3YDbAimD%2Bjs5ZjNSW4cWm4HzN7su9SacJSnEh%2F7YJnDmb7nK7Fh%2BmEVMK83mGcTqTwI8KHTLNJEZXt1OtiTTfOAwAhUsZPgXcSHtb0rPtMNTvGQyTshmx%2FEWC%2Blhxg%2BqS6yidHStWDFPDrYK5fX8YjgzHM9wEayTUoXKKYZPyMWZrjLHlNcUT5V5ucOQtFqqGVgzEB%2FxTXqXp5Bc1Y%2BzXSyB2yCBXQZSdG%2B%2BoE%2BRlafa3ad2rnpod9HR23ja%2FBTskB7B9N2rA2IhwuzseGLQrDftqM1bgt6pgHF6lXj7VgKxb9txomkZqgznIF5617bo8dTVpzV%2F6RA9fDEm%2BzX7lgD%2Fm4jwZ2UIv%2FqV7qEsEJLfAItJZRyhbB2MYFas3Tgj2nAan%2Bbp0D14PPrRsrV4C%2FaSCa1iDa%2Bu%2BtcLjGOawmb0d7XTqT3ZTFCqIiaf36Prasn2KBfUIkpC5DZopf48wO0RvKx2YxOaxDjCLrYk03zgMAIWA8LUoH4ona%2BQQQHIQBBhDlKw6%2B6Uomhb6IyzLvUfIG%2FNgIKclzaBBtrgBMsJCA2wom0lPrid%2BxLOqpvrdNurmU%2F1eW2FV1c68My4JDxLCaDfYWPY13IZqKdj87oq95K4z96q%2BwmHfmabMpXSeQWVM1gGUko5eGutmwhWjh%2FUZjnGrgH%2FRfZdORDzbkGa2gjAh6ofJmhH1BJlzOBVkWjUMD0eErE4uRc4VqdYn0KcBU15OAvVXDVU6pLLaBlHgT5CaFbpYguWPZl9nMrex2xZo2ipYR2z%2Fzjmo2XA0hRA1r72NKVOx7EEfOO6%2FRT9G3yfBiqaBq3Cg7ajZcDSFEDWuM2vNkbHn2GPPrkrW0ORbX%2BQgT8f5Xe24BZL5e1iit94zNnNifXRR733HtLej0dgwSBMnx4EN1Bs2pD%2FP%2F%2B%2FaHLIySwZrzyJtqAaHaeFfpdU%2FZmfD2rhQhXvB0xYb2gwugx5tJxx5cEoe%2Bvnprsl%2FEr8G2tNAwywe9S2Vr3Y%2F8B%2BRe4YICrTd1en1HUCF3i%2Bf4p1HIs%2BeG%2FE%2FZgHimf15HQTnVlTnjlbXHhi0Kw37ajIs4nHJQs%2B0sMA1KARfOpC2iyyMT4eVVGYZN%2F8K3a4OmCJSTQwx2LksE5%2BBhZ0jIjNmDz7GKwQHsQMdgeP%2FOrtbXk4C9VcNVTuN11W%2B7ehM2','云南 昆明'),(43,'flomiss旗舰店','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWPetq2h8aJWMp5nbm4Nb4X6Y5bweg1HRtcENv1YatRF3B','北京'),(44,'亿亩花田','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWMkEtnDpmq6CsrpRf5BakesFibtm1zHVsTxxiioq33PQy','云南 昆明'),(45,'花曼屿旗舰店','//store.taobao.com/shop/view_shop.htm?appUid=RAzN8HWQDgYeAmjTvUEqaZgShfzZ74bidHUsRMgCjDR1ocfEV84','上海'),(46,'小城森林鲜花店','http://click.simba.taobao.com/cc_im?p=%CF%CA%BB%A8&s=398642221&k=1689&e=n%2FCWEC%2B8jb5%2B5lRwu8uRJjNd3sbJe9xjqU0AYTFUsTtOgdPEoZkLCAA%2BM7i4%2Fw3gaIw709DlrVBb7BUbjEkiB%2B45nKBS7a83kgHfwUR6GTy6tI%2F4RoetvqTgSmulnnpI92vnu%2Bpmqm40aUHLd7WcPAT3T3BMqpIZLCj9NpEWzwOXWGvjxJbhZCIxxPdtrG6EtcPM1ffr61hG15DtyXcBfBelEq1s61%2B6RLj1BBdPenU7fqiMBJjiBP0Q8BWktI6xort6YeBfKqq5NiW74eBc%2Bna%2FeDbD2AH9QfffDf18vhdPQWQJDUd38kkOWn3Jk%2Bk0mqM3wmOTJaRpWbSk1L%2BII5ljypNz5UUmJekB6PL7DPEoeRvW1aZJp4%2BLnHJt7k6BptCYTWmH4BmNqS61ZXlAQmFK0iqzHrMm%2BkSY39EPrZKvwzKC8K8buiqh5x%2B4f57PM%2BDMZXkcGrL79HZphm2%2FX5iWJDxv3hYN%2FAts0rNvPYBP%2FflM3GWrfuuY71XpIoz9oDdBhk2zYKVjLf4AuyLZ6Ko6frGwxfufMkek2Ph6H1MgJerq0DU5R1ECjjN%2FDMGletSZ7XRQVURA5lR3%2FnYWXH2C28%2BcFNeTarxG0YULcaqZMn5zqIx2nK0Nw1QAN15aaK%2BtLWlgcqdyK2lL%2F3qU5RUoJ%2BmP%2BoM%2BeAko4kuGCgA5VmqCl%2BU%2BGnyJc4Cbv5lM%2FKzdzZY5aebJkG%2F1%2BOLwzeJtWK2LbNDbLtLL8TTQTuvjul7Vtwop8xmhWKsZBvsbmJYkPG%2FeFg1sW8ZYytw7Wqg2Rf5eJvSDadvud10gMYkuqRL4JmT85K1LNNsKyCQ5ndBUijmCa68wveZCuqYBTMtxGjE0%2Fe4cmrYUMBbbEwks8iZ3XPi2fKiQAbesV7gPGgUO%2FrhSHvyNU5zzNH5B58qDCvetPPHAEDnlM9hFrxpMTfqveh%2F%2F3bQXkHFe5K3CMFqB7q%2BYrHAsofmwOodBfJHGU8cNyEC40ESDIJJvxYiIWxClh7yl%2ByRdcNP6LXhZBpi2z2KOWWMB%2FonnaT2cHq6J3s18gGHOYrKMxoT4XU87L4nM7Yh1AUcq%2Fg0OWyAqWL3jT9eA45R2LAPL%2BhYi3b8qQDlIKvhHarxG0YULcap9N2Pjx%2FOERNmwhWjh%2FUZjcLcwSh0t9Gf8ub%2BoY0Lr%2BAh6ofJmhH1BXy3eyPUDcGeFNwOsbudWEYVqdYn0KcBU15OAvVXDVU6pLLaBlHgT5KqZQjpJTsvbl9nMrex2xZr5zwSjZXTNtCIiogWyLrAdg5c7wnlVA2%2FOO6%2FRT9G3yUAvmtEPmwdUIiKiBbIusB25L8ouSYm8DPPrkrW0ORbX%2BQgT8f5Xe24BZL5e1iit94zNnNifXRR733HtLej0dgwSBMnx4EN1Bp4xiPMh944ymj55a61CMOVqAaHaeFfpdU%2FZmfD2rhQhXvB0xYb2gwugx5tJxx5cEpuFo5Nl5YQXCk5JlywN5XZ2EG7ZfYcSSK0Nw1QAN15aaK%2BtLWlgcqdyK2lL%2F3qU5RUoJ%2BmP%2BoM%2BeAko4kuGCgA5VmqCl%2BU%2BGlkTJy2laWQY4l8siali9ND8rN3Nljlp5smQb%2FX44vDNmnxSn2OByngW0xcGhJtZQl%2FvyZsxyQXQCK5mJK8namXSV%2FK3%2BwjKy5wNuwX53x8SVsJ2MTyLtxVmvTc15V7obg%3D%3D','北京');
/*!40000 ALTER TABLE `data_management_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_management_userprofile` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (5,'2025-03-02 07:47:00.587925','15','芍药花',2,'[{\"changed\": {\"fields\": [\"\\u662f\\u5426\\u6709\\u6548\"]}}]',9,2),(6,'2025-03-02 07:47:06.258859','15','芍药花',2,'[{\"changed\": {\"fields\": [\"\\u662f\\u5426\\u6709\\u6548\"]}}]',9,2),(7,'2025-03-02 07:47:23.398496','4','公告1',1,'[{\"added\": {}}]',21,2),(8,'2025-03-02 08:14:48.496971','1','user1',2,'[{\"changed\": {\"fields\": [\"Is active\"]}}]',8,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(21,'data_management','announcement'),(9,'data_management','category'),(10,'data_management','categoryholiday'),(16,'data_management','datasource'),(18,'data_management','flowerlocation'),(17,'data_management','flowerpurpose'),(11,'data_management','holiday'),(19,'data_management','normalizedproduct'),(12,'data_management','rawproducts'),(13,'data_management','shop'),(15,'django_cron','cronjoblock'),(14,'django_cron','cronjoblog'),(6,'sessions','session'),(20,'user_management','contactmessage'),(8,'user_management','userprofile'),(7,'userapp','userprofile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_cron_cronjoblock`
--

DROP TABLE IF EXISTS `django_cron_cronjoblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_cron_cronjoblock` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `job_name` varchar(200) NOT NULL,
  `locked` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `job_name` (`job_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_cron_cronjoblock`
--

LOCK TABLES `django_cron_cronjoblock` WRITE;
/*!40000 ALTER TABLE `django_cron_cronjoblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_cron_cronjoblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_cron_cronjoblog`
--

DROP TABLE IF EXISTS `django_cron_cronjoblog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_cron_cronjoblog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `is_success` tinyint(1) NOT NULL,
  `message` longtext NOT NULL,
  `ran_at_time` time(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `django_cron_cronjoblog_code_is_success_ran_at_time_84da9606_idx` (`code`,`is_success`,`ran_at_time`),
  KEY `django_cron_cronjoblog_code_start_time_4fc78f9d_idx` (`code`,`start_time`),
  KEY `django_cron_cronjoblog_code_start_time_ran_at_time_8b50b8fa_idx` (`code`,`start_time`,`ran_at_time`),
  KEY `django_cron_cronjoblog_code_48865653` (`code`),
  KEY `django_cron_cronjoblog_start_time_d68c0dd9` (`start_time`),
  KEY `django_cron_cronjoblog_end_time_7918602a` (`end_time`),
  KEY `django_cron_cronjoblog_ran_at_time_7fed2751` (`ran_at_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_cron_cronjoblog`
--

LOCK TABLES `django_cron_cronjoblog` WRITE;
/*!40000 ALTER TABLE `django_cron_cronjoblog` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_cron_cronjoblog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (45,'user_management','0001_initial','2025-03-02 06:20:41.297944'),(46,'data_management','0001_initial','2025-03-02 06:21:56.259187'),(47,'contenttypes','0001_initial','2025-03-02 06:22:42.568604'),(48,'contenttypes','0002_remove_content_type_name','2025-03-02 06:22:42.584019'),(49,'admin','0001_initial','2025-03-02 06:23:17.967965'),(50,'admin','0002_logentry_remove_auto_add','2025-03-02 06:23:17.980789'),(51,'admin','0003_logentry_add_action_flag_choices','2025-03-02 06:23:17.996618'),(52,'auth','0001_initial','2025-03-02 06:23:48.160209'),(53,'auth','0002_alter_permission_name_max_length','2025-03-02 06:23:48.174199'),(54,'auth','0003_alter_user_email_max_length','2025-03-02 06:23:48.191711'),(55,'auth','0004_alter_user_username_opts','2025-03-02 06:23:48.201710'),(56,'auth','0005_alter_user_last_login_null','2025-03-02 06:23:48.212709'),(57,'auth','0006_require_contenttypes_0002','2025-03-02 06:23:48.222711'),(58,'auth','0007_alter_validators_add_error_messages','2025-03-02 06:23:48.231753'),(59,'auth','0008_alter_user_username_max_length','2025-03-02 06:23:48.242745'),(60,'auth','0009_alter_user_last_name_max_length','2025-03-02 06:23:48.253989'),(61,'auth','0010_alter_group_name_max_length','2025-03-02 06:23:48.265997'),(62,'auth','0011_update_proxy_permissions','2025-03-02 06:23:48.276080'),(63,'auth','0012_alter_user_first_name_max_length','2025-03-02 06:23:48.285826'),(64,'django_cron','0001_initial','2025-03-02 06:24:18.219484'),(65,'django_cron','0002_remove_max_length_from_CronJobLog_message','2025-03-02 06:24:18.230031'),(66,'django_cron','0003_cronjoblock','2025-03-02 06:24:18.239496'),(67,'django_cron','0004_auto_20241218_2134','2025-03-02 06:24:18.248187'),(68,'sessions','0001_initial','2025-03-02 06:24:42.054129'),(69,'data_management','0002_normalizedproduct_deal','2025-03-02 06:25:13.732433'),(70,'data_management','0003_alter_normalizedproduct_deal','2025-03-02 06:51:21.571873'),(71,'data_management','0004_announcement','2025-03-02 07:14:57.424272'),(72,'user_management','0002_userprofile_is_superuser','2025-03-02 07:26:48.541448');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4n6qu6dlkf1au6evubts7jprt6z0ooaf','eyJlbWFpbCI6IjQ5Nzg5ODI0OEBxcS5jb20iLCJuYW1lIjoiRiIsInJlY29yZCI6InJlZ2lzdGVyZWQhIn0:1tNBZd:ZsYrtBgHz-1P9Zo_kkQDDbHnGZtFsxtZ41XuOgFw5FI','2024-12-30 13:55:49.860455'),('7t4cdj3y0acnyjzsce0mo1wkuohbcxm7','.eJxVjMEOwiAYg9-Fs1nkBzbwpj4IKfAjxoCJbCfjuzvNDpqe2q_tU3gsc_FL54e_JnEQUux-s4B44_YBX1vRcOHKbR420ofz0ud7Pa6T01b-eyjoZZ1PkAFMzo42RJigOVtHBARopzCpGLJM-6QmZaMZkQ3BrSKixCZr8XoDf_85nQ:1toac5:sqg5XM6ud9rjWm8TFi8KrmrjFxnibHvu9sYb_YWHYYc','2025-03-02 05:07:37.333848'),('8kbfv0r497js1qslsjw3ea638k5cz6oi','e30:1tQmP1:bRkRUBZRZ8RnwVg_9G9LNvXswXjRuHQU-RggF6hyokw','2024-12-26 12:51:43.091176'),('d928683qq606ju7fxx34wxlggb8jbt0x','.eJxVjMEOwiAYg9-Fs1nkBzbwpj4IKfAjxoCJbCfjuzvNDpqe2q_tU3gsc_FL54e_JnEQUux-s4B44_YBX1vRcOHKbR420ofz0ud7Pa6T01b-eyjoZZ1PkAFMzo42RJigOVtHBARopzCpGLJM-6QmZaMZkQ3BrSKixCZr8XoDf_85nQ:1tQmrd:2TAZ0qax-M-29MBskEEllssQyLl1sax5CxeesOzDxR4','2024-12-26 13:21:17.957937'),('gkxcdt3un22rnu8hemmqetl7fg8uex30','.eJxVjMEOwiAYg9-Fs1nkBzbwpj4IKfAjxoCJbCfjuzvNDpqe2q_tU3gsc_FL54e_JnEQUux-s4B44_YBX1vRcOHKbR420ofz0ud7Pa6T01b-eyjoZZ1PkAFMzo42RJigOVtHBARopzCpGLJM-6QmZaMZkQ3BrSKixCZr8XoDf_85nQ:1tRoeq:wn6zlrnb5y0iAV_qm3o3-RUUPn9QfGWSGdO0Xvrqk4c','2024-12-29 09:28:20.834711'),('heg7spw26zpp4eg4foujhk24per2x13b','.eJxVjMEOwiAQRP-Fs2koZRfwpn4Ige0ixhSTAifjv1tND3qcefPmKXzoLfteefW3WRyFEoffLga6c_mAb1xCCVdeuLRhJ3W49Noey2lTzvv47yGHmjfdWSQXEyJMo1MTa0s6oAYmjmAMIEjJ5EaOJGlOoEiBxkictHUpGvF6A1NmOQM:1toeOD:OS2jhiN6iqlxdQQaexeNj6QiMHXCU2oV1v_fiV1zLYA','2025-03-02 09:09:33.780227'),('nf8v60soj1f60pr1rw1xlpf14vwyo38s','.eJxVjMEOwiAYg9-Fs1nkBzbwpj4IKfAjxoCJbCfjuzvNDpqe2q_tU3gsc_FL54e_JnEQUux-s4B44_YBX1vRcOHKbR420ofz0ud7Pa6T01b-eyjoZZ1PkAFMzo42RJigOVtHBARopzCpGLJM-6QmZaMZkQ3BrSKixCZr8XoDf_85nQ:1tRpcL:ZgXG-mnqQVAc_mxT3d1wGkkAaBtaQmSb9vooGxObZNY','2024-12-29 10:29:49.553330'),('r9ec6z76758y6blmy48d171zzelu2one','.eJxVjMEOwiAYg9-Fs1nkBzbwpj4IKfAjxoCJbCfjuzvNDpqe2q_tU3gsc_FL54e_JnEQUux-s4B44_YBX1vRcOHKbR420ofz0ud7Pa6T01b-eyjoZZ1PkAFMzo42RJigOVtHBARopzCpGLJM-6QmZaMZkQ3BrSKixCZr8XoDf_85nQ:1tRmwn:UbZJ3NiYpXkq6awl2clmcUKFGqYrlCX3-D_fKpY1QR4','2024-12-29 07:38:45.142124');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_management_contactmessage`
--

DROP TABLE IF EXISTS `user_management_contactmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_management_contactmessage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_management_contactmessage`
--

LOCK TABLES `user_management_contactmessage` WRITE;
/*!40000 ALTER TABLE `user_management_contactmessage` DISABLE KEYS */;
INSERT INTO `user_management_contactmessage` VALUES (1,'User1','user1@qq.com','Test','2024-12-29 05:25:37.530144'),(2,'U1','1@qq.com','111','2024-12-29 09:51:36.917017'),(3,'U1','1@qq.com','111','2024-12-29 09:52:11.928990'),(4,'U1','1@qq.com','111','2024-12-29 09:52:48.679191'),(5,'U1','1@qq.com','111','2024-12-29 09:54:15.586852'),(6,'aaa','1@qq.com','aaa','2024-12-29 09:56:13.806604'),(7,'aaa','1@qq.com','aaa','2024-12-29 09:56:41.037666'),(8,'aaa','1@qq.com','aaa','2024-12-29 09:57:02.616344');
/*!40000 ALTER TABLE `user_management_contactmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_management_userprofile`
--

DROP TABLE IF EXISTS `user_management_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_management_userprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `c_time` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_management_userprofile`
--

LOCK TABLES `user_management_userprofile` WRITE;
/*!40000 ALTER TABLE `user_management_userprofile` DISABLE KEYS */;
INSERT INTO `user_management_userprofile` VALUES (1,'user1','$2b$12$kVcDkdXYoo4yIbClqnA.J.gT/Zn01SJJF15iSWbh2vxiHGmy3SAty','user1@qq.com','11111111111','2024-12-25 08:40:56.100646',1,0,'2025-03-02 07:52:13.000000',0),(2,'admin','pbkdf2_sha256$260000$Aa8ZUi7NCIkvEepN2JsFOC$Q93Ae89UF8wJhME2VsG4HnZrsLOJFHc/CcuWvqy5+Cs=','admin@qq.com','18712344321','2025-03-02 07:27:16.597617',1,1,'2025-03-02 08:09:33.772691',1);
/*!40000 ALTER TABLE `user_management_userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-02 16:49:52
