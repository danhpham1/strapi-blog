-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: blog_game
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `sub_content` longtext,
  `category` int DEFAULT NULL,
  `game` int DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `content` longtext,
  `slug` varchar(255) DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blogs_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (12,'Test 1',NULL,1,2,'2021-10-25 08:09:17',1,1,'2021-10-25 01:09:15','2021-10-25 01:23:25','<p><span style=\"color:hsl(180,75%,60%);\"><strong>Điều kiện mở: Quân Chủ sẽ thực hiện thao tác kích duyên theo Hướng dẫn tân thủ.</strong></span></p><p><span style=\"color:hsl(180,75%,60%);\"><strong>Lối vào: bấm vào icon Võ Tướng ở thanh công cụ bên dưới, chọn Võ Tướng sẽ thấy mục “Duyên Phận” ở bên phải hình ảnh tướng.</strong></span></p><p>&nbsp;</p><p><img src=\"/uploads/kd1_850acbd199.jpg\" alt=\"\"></p><p><img src=\"/uploads/kd2_081386286a.jpg\" alt=\"\"></p><p>Chỉ cần sở hữu đủ Võ Tướng theo yêu cầu là có thể kích hoạt duyên phận và nhận nhiều thuộc tính tăng ích.</p><p>&nbsp;</p><p><img src=\"/uploads/kd3_cf10705cd9.png\" alt=\"\"></p><p><img src=\"/uploads/kd4_d40abdd195.png\" alt=\"\"></p><p>Tất cả Võ Tướng dùng để kích hoạt duyên phận cần đạt cấp sao yêu cầu thì mới có thể tăng cấp duyên phận.</p><p>&nbsp;</p><p><img src=\"/uploads/kd5_df6d7a78a5.png\" alt=\"\"></p><p>Kích hoạt và tăng cấp kích duyên tăng nhiều chỉ số của Võ Tướng tương ứng.</p><blockquote><p><strong>Lưu ý:</strong></p></blockquote><ul><li>Tính năng Kích Duyên chỉ cần sở hữu Võ Tướng theo yêu cầu, không cần Võ Tướng kích duyên ra trận.</li><li>Kích duyên của Võ Tướng nào thì chỉ tăng thuộc tính cho Võ Tướng đó.</li></ul><blockquote><p><i>Các Quân Chủ có thể tham gia thảo luận và tìm hiểu về Tân Tam Quốc tại:</i></p><p><i>Facebook:</i><a href=\"https://www.facebook.com/tamquoc.itap.vn\"><i> https://www.facebook.com/tamquoc.itap.vn</i></a><br><i>Group Cộng Đồng:</i><a href=\"https://www.facebook.com/groups/226951309287911\"> https://www.facebook.com/groups/ttq.itap</a><br><i>Chúc Quân Chủ chơi game vui vẻ</i>.</p></blockquote>','test-1',NULL),(13,'điều khoản',NULL,NULL,2,'2021-10-29 02:48:20',1,1,'2021-10-28 19:48:18','2021-10-28 19:48:23','<p>dqwdqweqweqweq</p>','djieu-khoan',NULL),(14,'asdasd',NULL,NULL,NULL,'2021-11-08 07:18:25',1,1,'2021-11-08 00:18:16','2021-11-08 00:18:25','<p><span style=\"color:hsl(0,75%,60%);\">qwdqwdqwdqwdasd</span><span style=\"color:hsl(0,0%,0%);\">asdasdqwdqwd</span></p>','asdasd',NULL),(15,'dqwqwe','qdqwdq',2,2,'2021-12-24 03:26:49',1,1,'2021-12-23 20:26:47','2021-12-23 20:27:00','<p>qweqwdqd</p><p><img src=\"http://localhost:1337/uploads/logo_game_778e4da8c9.png\" alt=\"\"></p>','dqwqwe',NULL);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `category_slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_category_name_unique` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Tin Tức','2021-10-11 03:54:14',1,1,'2021-10-10 20:53:30','2021-10-10 20:54:14','tin-tuc'),(2,'Sự Kiện','2021-10-11 03:53:45',1,1,'2021-10-10 20:53:42','2021-10-10 20:54:08','su-kien'),(3,'Hướng Dẫn','2021-10-11 03:54:42',1,1,'2021-10-10 20:54:39','2021-10-10 20:54:42','huong-dan'),(4,'Cẩm Nang','2021-10-11 03:54:54',1,1,'2021-10-10 20:54:52','2021-10-10 20:54:54','cam-nang');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_store` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'model_def_strapi::core-store','{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}','object',NULL,NULL),(2,'model_def_strapi::webhooks','{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(3,'model_def_strapi::permission','{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}','object',NULL,NULL),(4,'model_def_strapi::role','{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}','object',NULL,NULL),(5,'model_def_strapi::user','{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}}}','object',NULL,NULL),(6,'model_def_plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(7,'model_def_plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(8,'model_def_plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(9,'model_def_plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(10,'model_def_plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"collectionName\":\"i18n_locales\",\"kind\":\"collectionType\",\"info\":{\"name\":\"locale\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(11,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}','object','',''),(12,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),(13,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"Properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),(14,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),(15,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"PreferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreferedLanguage\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}','object','',''),(16,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(17,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(18,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(19,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(20,'plugin_content_manager_configuration_content_types::plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object','',''),(21,'plugin_i18n_default_locale','\"en\"','string','',''),(22,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(23,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','',''),(24,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object','',''),(25,'model_def_application::game.game','{\"uid\":\"application::game.game\",\"collectionName\":\"games\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Games\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"game_name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"blogs\":{\"via\":\"game\",\"collection\":\"blogs\",\"isVirtual\":true},\"game_slug\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(27,'model_def_application::category.category','{\"uid\":\"application::category.category\",\"collectionName\":\"categories\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Categories\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"category_name\":{\"type\":\"string\",\"unique\":true,\"required\":true},\"blogs\":{\"via\":\"category\",\"collection\":\"blogs\",\"isVirtual\":true},\"category_slug\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(29,'model_def_application::blogs.blogs','{\"uid\":\"application::blogs.blogs\",\"collectionName\":\"blogs\",\"kind\":\"collectionType\",\"info\":{\"name\":\"blogs\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"category\":{\"via\":\"blogs\",\"model\":\"categories\"},\"game\":{\"via\":\"blogs\",\"model\":\"games\"},\"sub_content\":{\"type\":\"text\"},\"content\":{\"type\":\"richtext\",\"required\":true},\"slug\":{\"type\":\"string\"},\"publish_at\":{\"type\":\"datetime\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(30,'plugin_content_manager_configuration_content_types::application::blogs.blogs','{\"uid\":\"application::blogs.blogs\",\"settings\":{\"bulkable\":false,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"DESC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"Category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"category_name\"},\"list\":{\"label\":\"Category\",\"searchable\":true,\"sortable\":true}},\"game\":{\"edit\":{\"label\":\"Game\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"game_name\"},\"list\":{\"label\":\"Game\",\"searchable\":true,\"sortable\":true}},\"sub_content\":{\"edit\":{\"label\":\"Sub_content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Sub_content\",\"searchable\":false,\"sortable\":false}},\"content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":false,\"sortable\":false}},\"slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"Generated automatically based on the title.\",\"visible\":true,\"editable\":false},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"publish_at\":{\"edit\":{\"label\":\"Publish_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Publish_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"category\",\"game\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"sub_content\",\"size\":6}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"publish_at\",\"size\":6}]],\"editRelations\":[\"category\",\"game\"]}}','object','',''),(31,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','dev',''),(32,'model_def_application::categories.category','{\"uid\":\"application::categories.category\",\"collectionName\":\"categories\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Categories\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"category_name\":{\"type\":\"string\",\"unique\":true,\"required\":true},\"blogs\":{\"via\":\"category\",\"collection\":\"blogs\",\"isVirtual\":true},\"category_slug\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(33,'model_def_application::games.game','{\"uid\":\"application::games.game\",\"collectionName\":\"games\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Games\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"game_name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"blogs\":{\"via\":\"game\",\"collection\":\"blogs\",\"isVirtual\":true},\"game_slug\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(36,'model_def_application::categories.categories','{\"uid\":\"application::categories.categories\",\"collectionName\":\"categories\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Categories\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"category_name\":{\"type\":\"string\",\"unique\":true,\"required\":true},\"blogs\":{\"via\":\"category\",\"collection\":\"blogs\",\"isVirtual\":true},\"category_slug\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(37,'model_def_application::games.games','{\"uid\":\"application::games.games\",\"collectionName\":\"games\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Games\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"game_name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"blogs\":{\"via\":\"game\",\"collection\":\"blogs\",\"isVirtual\":true},\"game_slug\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(38,'plugin_content_manager_configuration_content_types::application::categories.categories','{\"uid\":\"application::categories.categories\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"category_name\",\"defaultSortBy\":\"category_name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"category_name\":{\"edit\":{\"label\":\"Category_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Category_name\",\"searchable\":true,\"sortable\":true}},\"blogs\":{\"edit\":{\"label\":\"Blogs\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"Blogs\",\"searchable\":false,\"sortable\":false}},\"category_slug\":{\"edit\":{\"label\":\"Category_slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Category_slug\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"category_name\",\"blogs\",\"category_slug\"],\"editRelations\":[\"blogs\"],\"edit\":[[{\"name\":\"category_name\",\"size\":6},{\"name\":\"category_slug\",\"size\":6}]]}}','object','',''),(39,'plugin_content_manager_configuration_content_types::application::games.games','{\"uid\":\"application::games.games\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"game_name\",\"defaultSortBy\":\"game_name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"game_name\":{\"edit\":{\"label\":\"Game_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Game_name\",\"searchable\":true,\"sortable\":true}},\"blogs\":{\"edit\":{\"label\":\"Blogs\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"Blogs\",\"searchable\":false,\"sortable\":false}},\"game_slug\":{\"edit\":{\"label\":\"Game_slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Game_slug\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"game_name\",\"blogs\",\"game_slug\"],\"editRelations\":[\"blogs\"],\"edit\":[[{\"name\":\"game_name\",\"size\":6},{\"name\":\"game_slug\",\"size\":6}]]}}','object','','');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `game_name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `game_slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `games_game_name_unique` (`game_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'Game City','2021-10-11 03:50:39',1,1,'2021-10-10 20:49:36','2021-10-10 20:50:39','gamecity'),(2,'Tân Tam Quốc','2021-10-11 03:51:25',1,1,'2021-10-10 20:51:21','2021-10-10 20:51:25','tantamquoc');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n_locales`
--

DROP TABLE IF EXISTS `i18n_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `i18n_locales` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i18n_locales_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n_locales`
--

LOCK TABLES `i18n_locales` WRITE;
/*!40000 ALTER TABLE `i18n_locales` DISABLE KEYS */;
INSERT INTO `i18n_locales` VALUES (1,'English (en)','en',NULL,NULL,'2021-09-19 21:46:45','2021-09-19 21:46:45');
/*!40000 ALTER TABLE `i18n_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_administrator`
--

DROP TABLE IF EXISTS `strapi_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_administrator` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `preferedLanguage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_administrator`
--

LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` VALUES (1,'Danh','Pham',NULL,'admin@gmail.com','$2a$10$G/jTofJ1x0AbFZw3q7Y4Du.N7JRdBp4avpC801UbmbUpYcLJhVqg2',NULL,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_permission`
--

DROP TABLE IF EXISTS `strapi_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext,
  `conditions` longtext,
  `role` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1988 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_permission`
--

LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` VALUES (1,'plugins::upload.read',NULL,'{}','[]',2,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(2,'plugins::upload.assets.create',NULL,'{}','[]',2,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(3,'plugins::upload.assets.update',NULL,'{}','[]',2,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(4,'plugins::upload.assets.download',NULL,'{}','[]',2,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(5,'plugins::upload.assets.copy-link',NULL,'{}','[]',2,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(6,'plugins::upload.read',NULL,'{}','[\"admin::is-creator\"]',3,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(7,'plugins::upload.assets.create',NULL,'{}','[]',3,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(8,'plugins::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]',3,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(9,'plugins::upload.assets.download',NULL,'{}','[]',3,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(10,'plugins::upload.assets.copy-link',NULL,'{}','[]',3,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(11,'plugins::content-manager.explorer.create','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(12,'plugins::content-manager.explorer.read','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(13,'plugins::content-manager.explorer.update','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(15,'plugins::content-type-builder.read',NULL,'{}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(16,'plugins::email.settings.read',NULL,'{}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(17,'plugins::upload.read',NULL,'{}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(18,'plugins::upload.assets.create',NULL,'{}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(19,'plugins::upload.assets.update',NULL,'{}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(20,'plugins::upload.assets.download',NULL,'{}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(21,'plugins::upload.assets.copy-link',NULL,'{}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(22,'plugins::upload.settings.read',NULL,'{}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(23,'plugins::content-manager.single-types.configure-view',NULL,'{}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(24,'plugins::content-manager.collection-types.configure-view',NULL,'{}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(25,'plugins::content-manager.components.configure-layout',NULL,'{}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(26,'plugins::i18n.locale.create',NULL,'{}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(27,'plugins::i18n.locale.read',NULL,'{}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(28,'plugins::i18n.locale.update',NULL,'{}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(29,'plugins::i18n.locale.delete',NULL,'{}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(30,'plugins::users-permissions.roles.create',NULL,'{}','[]',1,'2021-09-19 21:46:49','2021-09-19 21:46:49'),(31,'plugins::users-permissions.roles.read',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(32,'plugins::users-permissions.roles.update',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(33,'plugins::users-permissions.roles.delete',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(34,'plugins::users-permissions.providers.read',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(35,'plugins::users-permissions.providers.update',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(36,'plugins::users-permissions.email-templates.read',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(37,'plugins::users-permissions.email-templates.update',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(38,'plugins::users-permissions.advanced-settings.read',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(39,'plugins::users-permissions.advanced-settings.update',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(40,'admin::marketplace.read',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(41,'admin::marketplace.plugins.install',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(42,'admin::marketplace.plugins.uninstall',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(43,'admin::webhooks.create',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(44,'admin::webhooks.read',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(45,'admin::webhooks.update',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(46,'admin::webhooks.delete',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(47,'admin::users.create',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(48,'admin::users.read',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(49,'admin::users.update',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(50,'admin::users.delete',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(51,'admin::roles.delete',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(52,'admin::roles.create',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(53,'admin::roles.read',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(54,'admin::roles.update',NULL,'{}','[]',1,'2021-09-19 21:46:50','2021-09-19 21:46:50'),(420,'plugins::content-manager.explorer.delete','plugins::users-permissions.user','{}','[]',NULL,'2021-09-21 01:35:27','2021-09-21 01:35:43'),(421,'plugins::content-manager.explorer.publish','application::blogs.blogs','{}','[]',NULL,'2021-09-21 01:35:27','2021-09-21 01:35:43'),(1146,'plugins::content-manager.explorer.create','application::categories.categories','{\"fields\":[\"category_name\",\"blogs\",\"category_slug\"]}','[]',1,'2021-10-10 21:18:31','2021-10-10 21:18:31'),(1147,'plugins::content-manager.explorer.create','application::games.games','{\"fields\":[\"game_name\",\"blogs\",\"game_slug\"]}','[]',1,'2021-10-10 21:18:31','2021-10-10 21:18:31'),(1148,'plugins::content-manager.explorer.read','application::categories.categories','{\"fields\":[\"category_name\",\"blogs\",\"category_slug\"]}','[]',1,'2021-10-10 21:18:31','2021-10-10 21:18:31'),(1149,'plugins::content-manager.explorer.read','application::games.games','{\"fields\":[\"game_name\",\"blogs\",\"game_slug\"]}','[]',1,'2021-10-10 21:18:31','2021-10-10 21:18:31'),(1150,'plugins::content-manager.explorer.update','application::categories.categories','{\"fields\":[\"category_name\",\"blogs\",\"category_slug\"]}','[]',1,'2021-10-10 21:18:31','2021-10-10 21:18:31'),(1151,'plugins::content-manager.explorer.update','application::games.games','{\"fields\":[\"game_name\",\"blogs\",\"game_slug\"]}','[]',1,'2021-10-10 21:18:31','2021-10-10 21:18:31'),(1677,'plugins::content-manager.explorer.create','application::blogs.blogs','{\"fields\":[\"title\",\"category\",\"game\",\"sub_content\",\"content\",\"slug\",\"publish_at\"]}','[]',1,'2021-10-21 09:10:49','2021-10-21 09:10:49'),(1678,'plugins::content-manager.explorer.read','application::blogs.blogs','{\"fields\":[\"title\",\"category\",\"game\",\"sub_content\",\"content\",\"slug\",\"publish_at\"]}','[]',1,'2021-10-21 09:10:49','2021-10-21 09:10:49'),(1679,'plugins::content-manager.explorer.update','application::blogs.blogs','{\"fields\":[\"title\",\"category\",\"game\",\"sub_content\",\"content\",\"slug\",\"publish_at\"]}','[]',1,'2021-10-21 09:10:49','2021-10-21 09:10:49'),(1981,'plugins::content-manager.explorer.delete','application::blogs.blogs','{}','[]',1,'2021-12-23 20:26:01','2021-12-23 20:26:01'),(1982,'plugins::content-manager.explorer.delete','application::categories.categories','{}','[]',1,'2021-12-23 20:26:01','2021-12-23 20:26:01'),(1983,'plugins::content-manager.explorer.delete','application::games.games','{}','[]',1,'2021-12-23 20:26:01','2021-12-23 20:26:01'),(1984,'plugins::content-manager.explorer.delete','plugins::users-permissions.user','{}','[]',1,'2021-12-23 20:26:01','2021-12-23 20:26:01'),(1985,'plugins::content-manager.explorer.publish','application::blogs.blogs','{}','[]',1,'2021-12-23 20:26:01','2021-12-23 20:26:01'),(1986,'plugins::content-manager.explorer.publish','application::categories.categories','{}','[]',1,'2021-12-23 20:26:01','2021-12-23 20:26:01'),(1987,'plugins::content-manager.explorer.publish','application::games.games','{}','[]',1,'2021-12-23 20:26:01','2021-12-23 20:26:01');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_role`
--

DROP TABLE IF EXISTS `strapi_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_role`
--

LOCK TABLES `strapi_role` WRITE;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2021-09-19 21:46:49','2021-09-19 21:46:49'),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2021-09-19 21:46:49','2021-09-19 21:46:49'),(3,'Author','strapi-author','Authors can manage the content they have created.','2021-09-19 21:46:49','2021-09-19 21:46:49');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_users_roles`
--

DROP TABLE IF EXISTS `strapi_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_users_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_users_roles`
--

LOCK TABLES `strapi_users_roles` WRITE;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
INSERT INTO `strapi_users_roles` VALUES (1,1,1);
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
INSERT INTO `upload_file` VALUES (1,'logo-game.png','','',512,512,'{\"thumbnail\":{\"name\":\"thumbnail_logo-game.png\",\"hash\":\"thumbnail_logo_game_778e4da8c9\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":156,\"height\":156,\"size\":61.49,\"path\":null,\"url\":\"/uploads/thumbnail_logo_game_778e4da8c9.png\"},\"small\":{\"name\":\"small_logo-game.png\",\"hash\":\"small_logo_game_778e4da8c9\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":500,\"size\":526.12,\"path\":null,\"url\":\"/uploads/small_logo_game_778e4da8c9.png\"}}','logo_game_778e4da8c9','.png','image/png',360.29,'/uploads/logo_game_778e4da8c9.png',NULL,'local',NULL,1,1,'2021-09-20 00:52:58','2021-09-20 00:52:58'),(2,'bg1.png','','',1920,1419,'{\"thumbnail\":{\"name\":\"thumbnail_bg1.png\",\"hash\":\"thumbnail_bg1_18103734af\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":211,\"height\":156,\"size\":71.91,\"path\":null,\"url\":\"/uploads/thumbnail_bg1_18103734af.png\"},\"large\":{\"name\":\"large_bg1.png\",\"hash\":\"large_bg1_18103734af\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":739,\"size\":1289.21,\"path\":null,\"url\":\"/uploads/large_bg1_18103734af.png\"},\"medium\":{\"name\":\"medium_bg1.png\",\"hash\":\"medium_bg1_18103734af\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":554,\"size\":752.71,\"path\":null,\"url\":\"/uploads/medium_bg1_18103734af.png\"},\"small\":{\"name\":\"small_bg1.png\",\"hash\":\"small_bg1_18103734af\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":370,\"size\":352.78,\"path\":null,\"url\":\"/uploads/small_bg1_18103734af.png\"}}','bg1_18103734af','.png','image/png',2920.99,'/uploads/bg1_18103734af.png',NULL,'local',NULL,1,1,'2021-09-20 00:59:07','2021-09-20 00:59:07');
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file_morph` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int DEFAULT NULL,
  `related_id` int DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'content-manager','collection-types','bulkdelete',0,'',1,NULL,NULL),(2,'content-manager','collection-types','bulkdelete',0,'',2,NULL,NULL),(3,'content-manager','collection-types','create',0,'',1,NULL,NULL),(4,'content-manager','collection-types','create',0,'',2,NULL,NULL),(5,'content-manager','collection-types','delete',0,'',1,NULL,NULL),(6,'content-manager','collection-types','delete',0,'',2,NULL,NULL),(7,'content-manager','collection-types','find',0,'',1,NULL,NULL),(8,'content-manager','collection-types','find',0,'',2,NULL,NULL),(9,'content-manager','collection-types','findone',0,'',1,NULL,NULL),(10,'content-manager','collection-types','findone',0,'',2,NULL,NULL),(11,'content-manager','collection-types','previewmanyrelations',0,'',1,NULL,NULL),(12,'content-manager','collection-types','previewmanyrelations',0,'',2,NULL,NULL),(13,'content-manager','collection-types','publish',0,'',1,NULL,NULL),(14,'content-manager','collection-types','publish',0,'',2,NULL,NULL),(15,'content-manager','collection-types','unpublish',0,'',1,NULL,NULL),(16,'content-manager','collection-types','unpublish',0,'',2,NULL,NULL),(17,'content-manager','collection-types','update',0,'',1,NULL,NULL),(18,'content-manager','collection-types','update',0,'',2,NULL,NULL),(19,'content-manager','components','findcomponentconfiguration',0,'',1,NULL,NULL),(20,'content-manager','components','findcomponentconfiguration',0,'',2,NULL,NULL),(21,'content-manager','components','findcomponents',0,'',1,NULL,NULL),(22,'content-manager','components','findcomponents',0,'',2,NULL,NULL),(23,'content-manager','components','updatecomponentconfiguration',0,'',1,NULL,NULL),(24,'content-manager','components','updatecomponentconfiguration',0,'',2,NULL,NULL),(25,'content-manager','content-types','findcontenttypeconfiguration',0,'',1,NULL,NULL),(26,'content-manager','content-types','findcontenttypeconfiguration',0,'',2,NULL,NULL),(27,'content-manager','content-types','findcontenttypes',0,'',1,NULL,NULL),(28,'content-manager','content-types','findcontenttypes',0,'',2,NULL,NULL),(29,'content-manager','content-types','findcontenttypessettings',0,'',1,NULL,NULL),(30,'content-manager','content-types','findcontenttypessettings',0,'',2,NULL,NULL),(31,'content-manager','content-types','updatecontenttypeconfiguration',0,'',1,NULL,NULL),(32,'content-manager','content-types','updatecontenttypeconfiguration',0,'',2,NULL,NULL),(33,'content-manager','relations','find',0,'',1,NULL,NULL),(34,'content-manager','relations','find',0,'',2,NULL,NULL),(35,'content-manager','single-types','createorupdate',0,'',1,NULL,NULL),(36,'content-manager','single-types','createorupdate',0,'',2,NULL,NULL),(37,'content-manager','single-types','delete',0,'',1,NULL,NULL),(38,'content-manager','single-types','delete',0,'',2,NULL,NULL),(39,'content-manager','single-types','find',0,'',1,NULL,NULL),(40,'content-manager','single-types','find',0,'',2,NULL,NULL),(41,'content-manager','single-types','publish',0,'',1,NULL,NULL),(42,'content-manager','single-types','publish',0,'',2,NULL,NULL),(43,'content-manager','single-types','unpublish',0,'',1,NULL,NULL),(44,'content-manager','single-types','unpublish',0,'',2,NULL,NULL),(45,'content-manager','uid','checkuidavailability',0,'',1,NULL,NULL),(46,'content-manager','uid','checkuidavailability',0,'',2,NULL,NULL),(47,'content-manager','uid','generateuid',0,'',1,NULL,NULL),(48,'content-manager','uid','generateuid',0,'',2,NULL,NULL),(49,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),(50,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),(51,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),(52,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),(53,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),(54,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),(55,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),(56,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),(57,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),(58,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),(59,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),(60,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),(61,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),(62,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),(63,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),(64,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),(65,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),(66,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(67,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(68,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(69,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(70,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(71,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(72,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(73,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(74,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(75,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(76,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(77,'email','email','getsettings',0,'',1,NULL,NULL),(78,'email','email','getsettings',0,'',2,NULL,NULL),(79,'email','email','send',0,'',1,NULL,NULL),(80,'email','email','send',0,'',2,NULL,NULL),(81,'email','email','test',0,'',1,NULL,NULL),(82,'email','email','test',0,'',2,NULL,NULL),(83,'i18n','content-types','getnonlocalizedattributes',0,'',1,NULL,NULL),(84,'i18n','content-types','getnonlocalizedattributes',0,'',2,NULL,NULL),(85,'i18n','iso-locales','listisolocales',0,'',1,NULL,NULL),(86,'i18n','iso-locales','listisolocales',0,'',2,NULL,NULL),(87,'i18n','locales','createlocale',0,'',1,NULL,NULL),(88,'i18n','locales','createlocale',0,'',2,NULL,NULL),(89,'i18n','locales','deletelocale',0,'',1,NULL,NULL),(90,'i18n','locales','deletelocale',0,'',2,NULL,NULL),(91,'i18n','locales','listlocales',0,'',1,NULL,NULL),(92,'i18n','locales','listlocales',0,'',2,NULL,NULL),(93,'i18n','locales','updatelocale',0,'',1,NULL,NULL),(94,'i18n','locales','updatelocale',0,'',2,NULL,NULL),(95,'upload','upload','count',0,'',1,NULL,NULL),(96,'upload','upload','count',0,'',2,NULL,NULL),(97,'upload','upload','destroy',0,'',1,NULL,NULL),(98,'upload','upload','destroy',0,'',2,NULL,NULL),(99,'upload','upload','find',0,'',2,NULL,NULL),(100,'upload','upload','find',0,'',1,NULL,NULL),(101,'upload','upload','findone',0,'',1,NULL,NULL),(102,'upload','upload','findone',0,'',2,NULL,NULL),(103,'upload','upload','getsettings',0,'',1,NULL,NULL),(104,'upload','upload','getsettings',0,'',2,NULL,NULL),(105,'upload','upload','search',0,'',1,NULL,NULL),(106,'upload','upload','search',0,'',2,NULL,NULL),(107,'upload','upload','updatesettings',0,'',1,NULL,NULL),(108,'upload','upload','updatesettings',0,'',2,NULL,NULL),(109,'upload','upload','upload',0,'',1,NULL,NULL),(110,'upload','upload','upload',0,'',2,NULL,NULL),(111,'users-permissions','auth','callback',0,'',1,NULL,NULL),(112,'users-permissions','auth','callback',1,'',2,NULL,NULL),(113,'users-permissions','auth','connect',1,'',1,NULL,NULL),(114,'users-permissions','auth','connect',1,'',2,NULL,NULL),(115,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(116,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(117,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),(118,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(119,'users-permissions','auth','register',0,'',1,NULL,NULL),(120,'users-permissions','auth','register',1,'',2,NULL,NULL),(121,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),(122,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(123,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(124,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(125,'users-permissions','user','count',0,'',1,NULL,NULL),(126,'users-permissions','user','count',0,'',2,NULL,NULL),(127,'users-permissions','user','create',0,'',1,NULL,NULL),(128,'users-permissions','user','create',0,'',2,NULL,NULL),(129,'users-permissions','user','destroy',0,'',1,NULL,NULL),(130,'users-permissions','user','destroy',0,'',2,NULL,NULL),(131,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(132,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(133,'users-permissions','user','find',0,'',1,NULL,NULL),(134,'users-permissions','user','find',0,'',2,NULL,NULL),(135,'users-permissions','user','findone',0,'',1,NULL,NULL),(136,'users-permissions','user','findone',0,'',2,NULL,NULL),(137,'users-permissions','user','me',1,'',1,NULL,NULL),(138,'users-permissions','user','me',1,'',2,NULL,NULL),(139,'users-permissions','user','update',0,'',1,NULL,NULL),(140,'users-permissions','user','update',0,'',2,NULL,NULL),(141,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(142,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(143,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(144,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(145,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(146,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(147,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(148,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(149,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(150,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(151,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(152,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(153,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(154,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(155,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(156,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(157,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),(158,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),(159,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(160,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(161,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(162,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(163,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(164,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(165,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(166,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(167,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(168,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(169,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(170,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(171,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(172,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),(197,'application','blogs','count',0,'',1,NULL,NULL),(198,'application','blogs','count',0,'',2,NULL,NULL),(199,'application','blogs','create',0,'',1,NULL,NULL),(200,'application','blogs','create',0,'',2,NULL,NULL),(201,'application','blogs','delete',0,'',1,NULL,NULL),(202,'application','blogs','delete',0,'',2,NULL,NULL),(203,'application','blogs','find',0,'',1,NULL,NULL),(204,'application','blogs','find',1,'',2,NULL,NULL),(205,'application','blogs','findone',0,'',1,NULL,NULL),(206,'application','blogs','findone',1,'',2,NULL,NULL),(207,'application','blogs','update',0,'',1,NULL,NULL),(208,'application','blogs','update',0,'',2,NULL,NULL),(209,'wysiwyg','wysiwyg','index',0,'',1,NULL,NULL),(210,'wysiwyg','wysiwyg','index',0,'',2,NULL,NULL),(213,'application','blogs','home',0,'',1,NULL,NULL),(214,'application','blogs','home',1,'',2,NULL,NULL),(215,'application','blogs','blogwithslug',0,'',1,NULL,NULL),(216,'application','blogs','blogwithslug',1,'',2,NULL,NULL),(217,'application','blogs','blogswithcategory',0,'',1,NULL,NULL),(218,'application','blogs','blogswithcategory',1,'',2,NULL,NULL),(219,'application','categories','count',0,'',1,NULL,NULL),(220,'application','categories','count',0,'',2,NULL,NULL),(221,'application','categories','create',0,'',1,NULL,NULL),(222,'application','categories','create',0,'',2,NULL,NULL),(223,'application','categories','delete',0,'',1,NULL,NULL),(224,'application','categories','delete',0,'',2,NULL,NULL),(225,'application','categories','find',0,'',1,NULL,NULL),(226,'application','categories','find',0,'',2,NULL,NULL),(227,'application','categories','findone',0,'',1,NULL,NULL),(228,'application','categories','findone',0,'',2,NULL,NULL),(229,'application','categories','update',0,'',1,NULL,NULL),(230,'application','categories','update',0,'',2,NULL,NULL),(231,'application','games','count',0,'',1,NULL,NULL),(232,'application','games','count',0,'',2,NULL,NULL),(233,'application','games','create',0,'',1,NULL,NULL),(234,'application','games','create',0,'',2,NULL,NULL),(235,'application','games','delete',0,'',1,NULL,NULL),(236,'application','games','delete',0,'',2,NULL,NULL),(237,'application','games','find',0,'',1,NULL,NULL),(238,'application','games','find',0,'',2,NULL,NULL),(239,'application','games','findone',0,'',1,NULL,NULL),(240,'application','games','findone',0,'',2,NULL,NULL),(241,'application','games','update',0,'',1,NULL,NULL),(242,'application','games','update',0,'',2,NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-24 10:29:01
