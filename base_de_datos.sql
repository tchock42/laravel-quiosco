-- MySQL dump 10.13  Distrib 8.4.5, for Linux (x86_64)
--
-- Host: localhost    Database: laravel-quiosco
-- ------------------------------------------------------
-- Server version	8.4.5

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Café','cafe','2025-07-15 20:44:01','2025-07-15 20:44:01'),(2,'Hamburguesas','hamburguesa','2025-07-15 20:44:01','2025-07-15 20:44:01'),(3,'Pizzas','pizza','2025-07-15 20:44:01','2025-07-15 20:44:01'),(4,'Donas','dona','2025-07-15 20:44:01','2025-07-15 20:44:01'),(5,'Pasteles','pastel','2025-07-15 20:44:01','2025-07-15 20:44:01'),(6,'Galletas','galletas','2025-07-15 20:44:01','2025-07-15 20:44:01');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (7,'0001_01_01_000000_create_users_table',1),(8,'0001_01_01_000001_create_cache_table',1),(9,'0001_01_01_000002_create_jobs_table',1),(10,'2025_07_15_015231_create_categorias_table',1),(11,'2025_07_15_022139_create_personal_access_tokens_table',1),(12,'2025_07_15_200125_create_productos_table',1),(13,'2025_07_21_213545_create_pedidos_table',2),(14,'2025_07_22_194210_create_pedido_productos_table',3),(15,'2025_07_23_192721_add_admin_column_to_users_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `pedido_productos`
--

DROP TABLE IF EXISTS `pedido_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_productos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pedido_id` bigint unsigned NOT NULL,
  `producto_id` bigint unsigned NOT NULL,
  `cantidad` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pedido_productos_pedido_id_foreign` (`pedido_id`),
  KEY `pedido_productos_producto_id_foreign` (`producto_id`),
  CONSTRAINT `pedido_productos_pedido_id_foreign` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `pedido_productos_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_productos`
--

LOCK TABLES `pedido_productos` WRITE;
/*!40000 ALTER TABLE `pedido_productos` DISABLE KEYS */;
INSERT INTO `pedido_productos` VALUES (1,2,12,1,'2025-07-24 19:53:08','2025-07-24 19:53:08'),(2,2,11,1,'2025-07-24 19:53:08','2025-07-24 19:53:08'),(3,3,9,2,'2025-07-24 19:55:04','2025-07-24 19:55:04'),(4,3,5,1,'2025-07-24 19:55:04','2025-07-24 19:55:04'),(5,3,2,2,'2025-07-24 19:55:04','2025-07-24 19:55:04'),(6,4,9,1,'2025-07-24 20:52:55','2025-07-24 20:52:55'),(7,4,6,1,'2025-07-24 20:52:55','2025-07-24 20:52:55'),(8,4,3,5,'2025-07-24 20:52:55','2025-07-24 20:52:55'),(9,4,1,5,'2025-07-24 20:52:55','2025-07-24 20:52:55'),(10,5,12,2,'2026-01-01 23:02:40','2026-01-01 23:02:40'),(11,5,5,1,'2026-01-01 23:02:40','2026-01-01 23:02:40');
/*!40000 ALTER TABLE `pedido_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `total` double NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidos_user_id_foreign` (`user_id`),
  CONSTRAINT `pedidos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (2,10,79.8,0,'2025-07-24 19:53:08','2025-07-24 19:53:08'),(3,10,254.5,1,'2025-07-24 19:55:04','2025-07-24 21:13:02'),(4,10,663.8,1,'2025-07-24 20:52:55','2025-07-24 20:53:38'),(5,11,114.7,0,'2026-01-01 23:02:40','2026-01-01 23:02:40');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (9,'App\\Models\\User',7,'token','982c511dd3eb16664f8e0d6dd124454391fb4ee837f7df00ff34bdf0cb42d906','[\"*\"]',NULL,NULL,'2025-07-18 23:55:07','2025-07-18 23:55:07'),(10,'App\\Models\\User',7,'token','f2e20c0e0687a555f83f33463d528630b9d786f03c16af1331386b4caa317d7a','[\"*\"]','2025-07-19 01:25:43',NULL,'2025-07-19 00:40:25','2025-07-19 01:25:43'),(11,'App\\Models\\User',7,'token','a302d359dc65b717ea8f559523eb18806d87efb41d1fc9f6d08b23b4942c2c10','[\"*\"]','2025-07-19 01:31:07',NULL,'2025-07-19 01:27:58','2025-07-19 01:31:07'),(12,'App\\Models\\User',7,'token','d5bdd296e91e1f49c7a489e967d8fb2df76664d89bf584e9dd9bb51eebdd8443','[\"*\"]','2025-07-19 01:33:16',NULL,'2025-07-19 01:31:23','2025-07-19 01:33:16'),(13,'App\\Models\\User',7,'token','0df8ef204751a48993dfb2318c25a9918c2f2b38cc71433c76e8f3c55af8f18b','[\"*\"]','2025-07-21 18:36:29',NULL,'2025-07-19 01:34:03','2025-07-21 18:36:29'),(16,'App\\Models\\User',8,'token','740b7a88ace63b7c38d77cc767df46f47c83cd31a471d9a4594346f67a5fd5f3','[\"*\"]',NULL,NULL,'2025-07-21 21:00:27','2025-07-21 21:00:27'),(17,'App\\Models\\User',9,'token','2e8fc1ae8b725c4bda4f6a83dbddaffaa24fb4795dd7b0cf55e31876659dc444','[\"*\"]',NULL,NULL,'2025-07-21 21:11:00','2025-07-21 21:11:00'),(18,'App\\Models\\User',10,'token','74ddfc9e08a85cba365a1a2249703af76b22945ba50751a09c86c73efc228a0a','[\"*\"]','2025-07-21 23:18:14',NULL,'2025-07-21 21:19:05','2025-07-21 23:18:14'),(20,'App\\Models\\User',7,'token','00d0d8a49383af133c677dc0532f234a11abcfe141cedd46daa4566476f47a76','[\"*\"]','2025-07-22 00:29:49',NULL,'2025-07-21 23:31:25','2025-07-22 00:29:49'),(24,'App\\Models\\User',7,'token','3aae27310e3310403224e39fe7bd86f217bd4f5757de2642c4b0fc5066bd3bfa','[\"*\"]','2025-07-25 01:41:01',NULL,'2025-07-24 19:55:16','2025-07-25 01:41:01'),(27,'App\\Models\\User',11,'token','a37c2f1c09e1923791bf678538a1e3ae7b8270f4b81c59fc6880337995f54817','[\"*\"]',NULL,NULL,'2025-12-30 22:33:44','2025-12-30 22:33:44'),(28,'App\\Models\\User',11,'token','3de9b4262d15044c81a0b9a7019b91c09bd8bdcc6688ff21871359d9b3e7674d','[\"*\"]',NULL,NULL,'2026-01-01 23:01:19','2026-01-01 23:01:19'),(33,'App\\Models\\User',11,'token','5b889789deb6b9e64e86de17932b785d60296f791b08555967cfe3e6a9d672b3','[\"*\"]','2026-01-02 22:20:08',NULL,'2026-01-02 21:56:06','2026-01-02 22:20:08');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` double NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disponible` tinyint(1) NOT NULL DEFAULT '1',
  `categoria_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productos_categoria_id_foreign` (`categoria_id`),
  CONSTRAINT `productos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Café Caramel con Chocolate',59.9,'cafe_01',1,1,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(2,'Café Frio con Chocolate Grande',49.9,'cafe_02',1,1,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(3,'Latte Frio con Chocolate Grande',54.9,'cafe_03',1,1,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(4,'Latte Frio con Chocolate Grande',54.9,'cafe_04',1,1,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(5,'Malteada Fria con Chocolate Grande',54.9,'cafe_05',1,1,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(6,'Café Mocha Caliente Chico',39.9,'cafe_06',1,1,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(7,'Café Mocha Caliente Grande con Chocolate',59.9,'cafe_07',1,1,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(8,'Café Caliente Capuchino Grande',59.9,'cafe_08',1,1,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(9,'Café Mocha Caliente Mediano',49.9,'cafe_09',1,1,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(10,'Café Mocha Frio con Caramelo Mediano',49.9,'cafe_10',1,1,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(11,'Café Mocha Frio con Chocolate Mediano',49.9,'cafe_11',1,1,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(12,'Café Espresso',29.9,'cafe_12',1,1,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(13,'Café Capuchino Grande con Caramelo',59.9,'cafe_13',1,1,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(14,'Café Caramelo Grande',59.9,'cafe_14',0,1,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(15,'Paquete de 3 donas de Chocolate',39.9,'donas_01',1,4,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(16,'Paquete de 3 donas Glaseadas',39.9,'donas_02',1,4,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(17,'Dona de Fresa',19.9,'donas_03',1,4,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(18,'Dona con Galleta de Chocolate',19.9,'donas_04',1,4,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(19,'Dona glass con Chispas Sabor Fresa',19.9,'donas_05',1,4,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(20,'Dona glass con Chocolate',19.9,'donas_06',1,4,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(21,'Dona de Chocolate con MÁS Chocolate',19.9,'donas_07',1,4,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(22,'Paquete de 3 donas de Chocolate',39.9,'donas_08',1,4,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(23,'Paquete de 3 donas con Vainilla y Chocolate',39.9,'donas_09',1,4,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(24,'Paquete de 6 Donas',69.9,'donas_10',1,4,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(25,'Paquete de 3 Variadas',39.9,'donas_11',1,4,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(26,'Dona Natural con Chocolate',19.9,'donas_12',1,4,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(27,'Paquete de 3 Donas de Chocolate con Chispas',39.9,'donas_13',1,4,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(28,'Dona Chocolate y Coco',19.9,'donas_14',1,4,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(29,'Paquete Galletas de Chocolate',29.9,'galletas_01',1,6,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(30,'Paquete Galletas de Chocolate y Avena',39.9,'galletas_02',1,6,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(31,'Paquete de Muffins de Vainilla',39.9,'galletas_03',1,6,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(32,'Paquete de 4 Galletas de Avena',24.9,'galletas_04',1,6,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(33,'Galletas de Mantequilla Variadas',39.9,'galletas_05',1,6,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(34,'Galletas de sabores frutales',39.9,'galletas_06',1,6,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(35,'Hamburguesa Sencilla',59.9,'hamburguesas_01',1,2,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(36,'Hamburguesa de Pollo',59.9,'hamburguesas_02',1,2,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(37,'Hamburguesa de Pollo y Chili',59.9,'hamburguesas_03',1,2,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(38,'Hamburguesa Queso y Pepinos',59.9,'hamburguesas_04',1,2,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(39,'Hamburguesa Cuarto de Libra',59.9,'hamburguesas_05',1,2,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(40,'Hamburguesa Doble Queso',69.9,'hamburguesas_06',1,2,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(41,'Hot Dog Especial',49.9,'hamburguesas_07',1,2,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(42,'Paquete 2 Hot Dogs',69.9,'hamburguesas_08',1,2,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(43,'4 Rebanadas de Pay de Queso',69.9,'pastel_01',1,5,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(44,'Waffle Especial',49.9,'pastel_02',1,5,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(45,'Croissants De la casa',39.9,'pastel_03',1,5,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(46,'Pay de Queso',19.9,'pastel_04',1,5,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(47,'Pastel de Chocolate',29.9,'pastel_05',1,5,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(48,'Rebanada Pastel de Chocolate',29.9,'pastel_06',1,5,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(49,'Pizza Spicy con Doble Queso',69.9,'pizzas_01',1,3,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(50,'Pizza Jamón y Queso',69.9,'pizzas_02',1,3,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(51,'Pizza Doble Queso',69.9,'pizzas_03',1,3,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(52,'Pizza Especial de la Casa',69.9,'pizzas_04',1,3,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(53,'Pizza Chorizo',69.9,'pizzas_05',1,3,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(54,'Pizza Hawaiana',69.9,'pizzas_06',1,3,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(55,'Pizza Tocino',69.9,'pizzas_07',1,3,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(56,'Pizza Vegetales y Queso',69.9,'pizzas_08',1,3,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(57,'Pizza Pepperoni y Queso',69.9,'pizzas_09',1,3,'2025-07-15 20:44:01','2025-07-15 20:44:01'),(58,'Pizza Aceitunas y Queso',69.9,'pizzas_10',0,3,'2025-07-15 20:44:01','2025-07-24 22:35:28'),(59,'Pizza Queso, Jamón y Champiñones',69.9,'pizzas_11',0,3,'2025-07-15 20:44:01','2025-07-24 22:34:39');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'Juan Conejo','correo2@correo.com',NULL,'$2y$12$0iA3omIjg.x/HHA2w7n6QOz9kQm3unldb0jSp5pnAOX8gE.DtAuOC',NULL,'2025-07-21 21:19:05','2025-07-21 21:19:05',0),(11,'Mary','correo3@correo.com',NULL,'$2y$12$TimQiqSPFaCj3ZrlwQyoo.Kn6/k.QaeQGk.eLCOrxTb8EJwC3bn8.',NULL,'2025-12-30 22:33:44','2025-12-30 22:33:44',0),(12,'Jacob','correo@correo.com',NULL,'$2y$12$nPswqHCogD5KYanWB6Bs..IPlG3aE98MW9s2nDxYaXowE5x1aOKnm',NULL,'2026-01-01 23:09:03','2026-01-01 23:09:03',1);
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

-- Dump completed on 2026-01-06  1:32:36
