-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: portfolio
-- ------------------------------------------------------
-- Server version	5.5.59

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
-- Table structure for table `directus_activity`
--

DROP TABLE IF EXISTS `directus_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `identifier` varchar(100) DEFAULT NULL,
  `table_name` varchar(100) NOT NULL DEFAULT '',
  `row_id` int(11) unsigned DEFAULT '0',
  `user` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  `delta` text,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `parent_table` varchar(100) DEFAULT NULL,
  `parent_changed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Did the top-level record in the change set alter (scalar values/many-to-one relationships)? Or only the data within its related foreign collection records? (*toMany)',
  `datetime` datetime DEFAULT NULL,
  `logged_ip` varchar(20) DEFAULT NULL,
  `user_agent` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_activity`
--

LOCK TABLES `directus_activity` WRITE;
/*!40000 ALTER TABLE `directus_activity` DISABLE KEYS */;
REPLACE INTO `directus_activity` VALUES (1,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-01-26 10:55:39','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(2,'ENTRY','UPDATE',NULL,'directus_columns',10,1,'{\"id\":\"10\",\"table_name\":\"projects\",\"column_name\":\"weight\",\"data_type\":\"INT\",\"ui\":\"slider\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"5\",\"comment\":\"The minimum weight of the project. Describes the card size\",\"options\":\"{\\\"id\\\":\\\"slider\\\",\\\"minimum\\\":\\\"1\\\",\\\"maximum\\\":\\\"10\\\"}\"}','{\"comment\":\"The minimum weight of the project. Describes the card size\",\"options\":\"{\\\"id\\\":\\\"slider\\\",\\\"minimum\\\":\\\"1\\\",\\\"maximum\\\":\\\"10\\\"}\",\"data_type\":\"INT\",\"ui\":\"slider\",\"sort\":5,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"10\"}',NULL,NULL,1,'2018-01-26 11:02:27','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(3,'ENTRY','UPDATE',NULL,'directus_columns',16,1,'{\"id\":\"16\",\"table_name\":\"skills\",\"column_name\":\"rating\",\"data_type\":\"INT\",\"ui\":\"rating\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"4\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"rating\\\"}\"}','{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"rating\\\"}\",\"data_type\":\"INT\",\"ui\":\"rating\",\"sort\":4,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"16\"}',NULL,NULL,1,'2018-01-26 11:16:26','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(4,'ENTRY','UPDATE',NULL,'directus_columns',16,1,'{\"id\":\"16\",\"table_name\":\"skills\",\"column_name\":\"rating\",\"data_type\":\"INT\",\"ui\":\"rating\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"4\",\"comment\":\"How good you are at this\",\"options\":\"{\\\"id\\\":\\\"rating\\\"}\"}','{\"comment\":\"How good you are at this\",\"options\":\"{\\\"id\\\":\\\"rating\\\"}\",\"data_type\":\"INT\",\"ui\":\"rating\",\"sort\":4,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"16\"}',NULL,NULL,1,'2018-01-26 11:17:02','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(5,'ENTRY','UPDATE',NULL,'directus_columns',16,1,'{\"id\":\"16\",\"table_name\":\"skills\",\"column_name\":\"rating\",\"data_type\":\"INT\",\"ui\":\"rating\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"4\",\"comment\":\"How good you are at this\",\"options\":\"{\\\"id\\\":\\\"rating\\\",\\\"max_score\\\":\\\"5\\\"}\"}','{\"comment\":\"How good you are at this\",\"options\":\"{\\\"id\\\":\\\"rating\\\",\\\"max_score\\\":\\\"5\\\"}\",\"data_type\":\"INT\",\"ui\":\"rating\",\"sort\":4,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"16\"}',NULL,NULL,1,'2018-01-26 11:17:13','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(6,'ENTRY','UPDATE',NULL,'directus_columns',22,1,'{\"id\":\"22\",\"table_name\":\"projects\",\"column_name\":\"skills\",\"data_type\":\"ALIAS\",\"ui\":\"many_to_many\",\"relationship_type\":\"MANYTOMANY\",\"related_table\":\"skills\",\"junction_table\":\"skills_for_project\",\"junction_key_left\":\"project_id\",\"junction_key_right\":\"skill_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"7\",\"comment\":\"Skills used for this project\",\"options\":\"{\\\"id\\\":\\\"many_to_many\\\",\\\"visible_columns\\\":\\\"name\\\",\\\"visible_column_template\\\":\\\"{{name}}\\\",\\\"filter_column\\\":\\\"name\\\",\\\"no_duplicates\\\":1}\"}','{\"comment\":\"Skills used for this project\",\"options\":\"{\\\"id\\\":\\\"many_to_many\\\",\\\"visible_columns\\\":\\\"name\\\",\\\"visible_column_template\\\":\\\"{{name}}\\\",\\\"filter_column\\\":\\\"name\\\",\\\"no_duplicates\\\":1}\",\"related_table\":\"skills\",\"junction_table\":\"skills_for_project\",\"relationship_type\":\"MANYTOMANY\",\"data_type\":\"ALIAS\",\"ui\":\"many_to_many\",\"junction_key_left\":\"project_id\",\"junction_key_right\":\"skill_id\",\"sort\":7,\"required\":false,\"hidden_input\":false,\"id\":\"22\"}',NULL,NULL,1,'2018-01-26 11:21:43','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(7,'ENTRY','UPDATE',NULL,'directus_columns',20,1,'{\"id\":\"20\",\"table_name\":\"skills_for_project\",\"column_name\":\"project_id\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"projects\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"project_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\"}\"}','{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\"}\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"sort\":2,\"required\":false,\"hidden_input\":false,\"relationship_type\":\"MANYTOONE\",\"related_table\":\"projects\",\"junction_table\":null,\"junction_key_right\":\"project_id\",\"junction_key_left\":null,\"id\":\"20\"}',NULL,NULL,1,'2018-01-26 11:22:32','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(8,'ENTRY','UPDATE',NULL,'directus_columns',20,1,'{\"id\":\"20\",\"table_name\":\"skills_for_project\",\"column_name\":\"project_id\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"projects\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"project_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\",\\\"visible_column\\\":\\\"name,id\\\",\\\"visible_column_template\\\":\\\"{{id}}-{{name}}\\\"}\"}','{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\",\\\"visible_column\\\":\\\"name,id\\\",\\\"visible_column_template\\\":\\\"{{id}}-{{name}}\\\"}\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"sort\":2,\"required\":false,\"hidden_input\":false,\"relationship_type\":\"MANYTOONE\",\"related_table\":\"projects\",\"junction_table\":null,\"junction_key_right\":\"project_id\",\"junction_key_left\":null,\"id\":\"20\"}',NULL,NULL,1,'2018-01-26 11:23:02','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(9,'ENTRY','UPDATE',NULL,'directus_columns',21,1,'{\"id\":\"21\",\"table_name\":\"skills_for_project\",\"column_name\":\"skill_id\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"skills\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"skill_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\"}\"}','{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\"}\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"sort\":3,\"required\":false,\"hidden_input\":false,\"relationship_type\":\"MANYTOONE\",\"related_table\":\"skills\",\"junction_table\":null,\"junction_key_right\":\"skill_id\",\"junction_key_left\":null,\"id\":\"21\"}',NULL,NULL,1,'2018-01-26 11:23:18','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(10,'ENTRY','UPDATE',NULL,'directus_columns',21,1,'{\"id\":\"21\",\"table_name\":\"skills_for_project\",\"column_name\":\"skill_id\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"skills\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"skill_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\",\\\"visible_column\\\":\\\"name\\\",\\\"visible_column_template\\\":\\\"{{name}}\\\"}\"}','{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\",\\\"visible_column\\\":\\\"name\\\",\\\"visible_column_template\\\":\\\"{{name}}\\\"}\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"sort\":3,\"required\":false,\"hidden_input\":false,\"relationship_type\":\"MANYTOONE\",\"related_table\":\"skills\",\"junction_table\":null,\"junction_key_right\":\"skill_id\",\"junction_key_left\":null,\"id\":\"21\"}',NULL,NULL,1,'2018-01-26 11:23:40','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(11,'ENTRY','ADD','1','projects',1,1,'{\"id\":\"1\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"WADI\",\"summary\":\"Email\\/SMS campaign delivery system\",\"weight\":\"5\",\"description\":\"#WADI\\nThis was a tricky project when working at JLabs (Delhi). Had to build out a server tool to handle email and SMS delivery by fetching data from a *Google sheet!*\\n\"}','[]',NULL,NULL,1,'2018-01-26 11:26:27','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(12,'ENTRY','ADD','1','skills',1,1,'{\"id\":\"1\",\"status\":\"2\",\"name\":\"Google APIs\",\"rating\":null}','[]',1,'projects',1,'2018-01-26 11:26:27','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(13,'ENTRY','ADD','2','skills',2,1,'{\"id\":\"2\",\"status\":\"2\",\"name\":\"SQL\",\"rating\":null}','[]',1,'projects',1,'2018-01-26 11:26:27','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(14,'ENTRY','UPDATE',NULL,'directus_columns',21,1,'{\"id\":\"21\",\"table_name\":\"skills_for_project\",\"column_name\":\"skill_id\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"skills\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"skill_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\",\\\"visible_column\\\":\\\"id,name\\\",\\\"visible_column_template\\\":\\\"{{name}}\\\",\\\"filter_column\\\":\\\"name\\\"}\"}','{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\",\\\"visible_column\\\":\\\"id,name\\\",\\\"visible_column_template\\\":\\\"{{name}}\\\",\\\"filter_column\\\":\\\"name\\\"}\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"sort\":3,\"required\":false,\"hidden_input\":false,\"relationship_type\":\"MANYTOONE\",\"related_table\":\"skills\",\"junction_table\":null,\"junction_key_right\":\"skill_id\",\"junction_key_left\":null,\"id\":\"21\"}',NULL,NULL,1,'2018-01-26 11:29:11','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(15,'ENTRY','UPDATE','2','skills',2,1,'{\"id\":\"2\",\"status\":\"1\",\"name\":\"SQL\",\"rating\":null}','{\"status\":1,\"id\":\"2\"}',NULL,NULL,1,'2018-01-26 11:29:59','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(16,'ENTRY','UPDATE','2','skills',2,1,'{\"id\":\"2\",\"status\":\"2\",\"name\":\"SQL\",\"rating\":null}','{\"status\":2,\"id\":\"2\"}',NULL,NULL,1,'2018-01-26 11:30:09','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(17,'ENTRY','UPDATE',NULL,'directus_columns',23,1,'{\"id\":\"23\",\"table_name\":\"projects\",\"column_name\":\"type\",\"data_type\":\"ENUM\",\"ui\":\"dropdown_enum\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"8\",\"comment\":\"Whether it was from a job, or personal, or something else\",\"options\":\"{\\\"id\\\":\\\"dropdown_enum\\\"}\"}','{\"comment\":\"Whether it was from a job, or personal, or something else\",\"options\":\"{\\\"id\\\":\\\"dropdown_enum\\\"}\",\"data_type\":\"ENUM\",\"ui\":\"dropdown_enum\",\"sort\":8,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"23\"}',NULL,NULL,1,'2018-01-26 11:38:14','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(18,'ENTRY','UPDATE',NULL,'directus_columns',8,1,'{\"id\":\"8\",\"table_name\":\"projects\",\"column_name\":\"name\",\"data_type\":\"VARCHAR\",\"ui\":\"text_input\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"1\",\"sort\":\"3\",\"comment\":\"The project title\",\"options\":null}','{\"required\":true,\"id\":\"8\"}',NULL,NULL,1,'2018-01-26 11:38:26','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(19,'ENTRY','UPDATE',NULL,'directus_columns',9,1,'{\"id\":\"9\",\"table_name\":\"projects\",\"column_name\":\"summary\",\"data_type\":\"VARCHAR\",\"ui\":\"textarea\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"1\",\"sort\":\"4\",\"comment\":\"A brief summary of the project. To be shown on the card\",\"options\":null}','{\"required\":true,\"id\":\"9\"}',NULL,NULL,1,'2018-01-26 11:38:29','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(20,'ENTRY','UPDATE',NULL,'directus_columns',25,1,'{\"id\":\"25\",\"table_name\":\"projects\",\"column_name\":\"page_id\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"work_pages\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"page_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"9\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\",\\\"visible_column\\\":\\\"id\\\",\\\"visible_column_template\\\":\\\"{{id}}\\\",\\\"placeholder\\\":\\\"Add this to page #\\\"}\"}','{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\",\\\"visible_column\\\":\\\"id\\\",\\\"visible_column_template\\\":\\\"{{id}}\\\",\\\"placeholder\\\":\\\"Add this to page #\\\"}\",\"junction_key_right\":\"page_id\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"related_table\":\"work_pages\",\"sort\":9,\"required\":false,\"hidden_input\":false,\"relationship_type\":\"MANYTOONE\",\"junction_table\":null,\"junction_key_left\":null,\"id\":\"25\"}',NULL,NULL,1,'2018-01-26 11:41:10','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(21,'ENTRY','UPDATE',NULL,'directus_columns',26,1,'{\"id\":\"26\",\"table_name\":\"work_pages\",\"column_name\":\"number\",\"data_type\":\"INT\",\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"1\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"numeric\\\",\\\"size\\\":\\\"small\\\"}\"}','{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"numeric\\\",\\\"size\\\":\\\"small\\\"}\",\"data_type\":\"INT\",\"ui\":\"numeric\",\"sort\":1,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"26\"}',NULL,NULL,1,'2018-01-26 11:42:18','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(22,'ENTRY','UPDATE',NULL,'directus_columns',26,1,'{\"id\":\"26\",\"table_name\":\"work_pages\",\"column_name\":\"number\",\"data_type\":\"INT\",\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"1\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"numeric\\\",\\\"size\\\":\\\"small\\\"}\"}','{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"numeric\\\",\\\"size\\\":\\\"small\\\"}\",\"data_type\":\"INT\",\"ui\":\"numeric\",\"sort\":1,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"26\"}',NULL,NULL,1,'2018-01-26 11:42:37','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(23,'ENTRY','ADD','1','work_pages',1,1,'{\"id\":\"1\",\"number\":\"1\"}','[]',NULL,NULL,1,'2018-01-26 11:42:46','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(24,'ENTRY','ADD','2','work_pages',2,1,'{\"id\":\"2\",\"number\":\"2\"}','[]',NULL,NULL,1,'2018-01-26 11:42:51','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(25,'ENTRY','UPDATE','1','projects',1,1,'{\"id\":\"1\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"WADI\",\"summary\":\"Email\\/SMS campaign delivery system\",\"weight\":\"5\",\"description\":\"#WADI\\nThis was a tricky project when working at JLabs (Delhi). Had to build out a server tool to handle email and SMS delivery by fetching data from a *Google sheet!*\\n\",\"type\":null,\"page_id\":\"1\"}','{\"page_id\":1,\"id\":\"1\"}',NULL,NULL,1,'2018-01-26 11:43:05','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(26,'ENTRY','UPDATE',NULL,'directus_columns',27,1,'{\"id\":\"27\",\"table_name\":\"work_pages\",\"column_name\":\"projects\",\"data_type\":\"ALIAS\",\"ui\":\"one_to_many\",\"relationship_type\":\"ONETOMANY\",\"related_table\":\"projects\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"page_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"one_to_many\\\",\\\"visible_columns\\\":\\\"name\\\"}\"}','{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"one_to_many\\\",\\\"visible_columns\\\":\\\"name\\\"}\",\"related_table\":\"projects\",\"junction_key_right\":\"page_id\",\"relationship_type\":\"ONETOMANY\",\"data_type\":\"ALIAS\",\"ui\":\"one_to_many\",\"sort\":2,\"required\":false,\"hidden_input\":false,\"junction_table\":null,\"junction_key_left\":null,\"id\":\"27\"}',NULL,NULL,1,'2018-01-26 11:44:59','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(27,'ENTRY','UPDATE',NULL,'directus_columns',27,1,'{\"id\":\"27\",\"table_name\":\"work_pages\",\"column_name\":\"projects\",\"data_type\":\"ALIAS\",\"ui\":\"one_to_many\",\"relationship_type\":\"ONETOMANY\",\"related_table\":\"projects\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"page_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"one_to_many\\\",\\\"visible_columns\\\":\\\"name,weight\\\"}\"}','{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"one_to_many\\\",\\\"visible_columns\\\":\\\"name,weight\\\"}\",\"related_table\":\"projects\",\"junction_key_right\":\"page_id\",\"relationship_type\":\"ONETOMANY\",\"data_type\":\"ALIAS\",\"ui\":\"one_to_many\",\"sort\":2,\"required\":false,\"hidden_input\":false,\"junction_table\":null,\"junction_key_left\":null,\"id\":\"27\"}',NULL,NULL,1,'2018-01-26 11:45:42','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(28,'ENTRY','UPDATE',NULL,'directus_columns',27,1,'{\"id\":\"27\",\"table_name\":\"work_pages\",\"column_name\":\"projects\",\"data_type\":\"ALIAS\",\"ui\":\"one_to_many\",\"relationship_type\":\"ONETOMANY\",\"related_table\":\"projects\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"page_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"one_to_many\\\",\\\"visible_columns\\\":\\\"name,weight,type\\\",\\\"only_unassigned\\\":1}\"}','{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"one_to_many\\\",\\\"visible_columns\\\":\\\"name,weight,type\\\",\\\"only_unassigned\\\":1}\",\"related_table\":\"projects\",\"junction_key_right\":\"page_id\",\"relationship_type\":\"ONETOMANY\",\"data_type\":\"ALIAS\",\"ui\":\"one_to_many\",\"sort\":2,\"required\":false,\"hidden_input\":false,\"junction_table\":null,\"junction_key_left\":null,\"id\":\"27\"}',NULL,NULL,1,'2018-01-26 11:46:27','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(29,'ENTRY','UPDATE',NULL,'directus_columns',27,1,'{\"id\":\"27\",\"table_name\":\"work_pages\",\"column_name\":\"projects\",\"data_type\":\"ALIAS\",\"ui\":\"one_to_many\",\"relationship_type\":\"ONETOMANY\",\"related_table\":\"projects\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"page_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"one_to_many\\\",\\\"visible_columns\\\":\\\"name,weight,type\\\",\\\"only_unassigned\\\":1}\"}','{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"one_to_many\\\",\\\"visible_columns\\\":\\\"name,weight,type\\\",\\\"only_unassigned\\\":1}\",\"related_table\":\"projects\",\"junction_key_right\":\"page_id\",\"relationship_type\":\"ONETOMANY\",\"data_type\":\"ALIAS\",\"ui\":\"one_to_many\",\"sort\":2,\"required\":false,\"hidden_input\":false,\"junction_table\":null,\"junction_key_left\":null,\"id\":\"27\"}',NULL,NULL,1,'2018-01-26 11:47:38','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(30,'ENTRY','UPDATE',NULL,'directus_columns',28,1,'{\"id\":\"28\",\"table_name\":\"projects\",\"column_name\":\"type\",\"data_type\":\"VARCHAR\",\"ui\":\"dropdown\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"10\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"dropdown\\\",\\\"options\\\":\\\"{\\\\\\\"work\\\\\\\": \\\\\\\"work\\\\\\\", \\\\\\\"personal\\\\\\\": \\\\\\\"personal\\\\\\\", \\\\\\\"other\\\\\\\": \\\\\\\"other\\\\\\\" }\\\",\\\"placeholder\\\":\\\"Select type of project\\\"}\"}','{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"dropdown\\\",\\\"options\\\":\\\"{\\\\\\\"work\\\\\\\": \\\\\\\"work\\\\\\\", \\\\\\\"personal\\\\\\\": \\\\\\\"personal\\\\\\\", \\\\\\\"other\\\\\\\": \\\\\\\"other\\\\\\\" }\\\",\\\"placeholder\\\":\\\"Select type of project\\\"}\",\"data_type\":\"VARCHAR\",\"ui\":\"dropdown\",\"sort\":10,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"28\"}',NULL,NULL,1,'2018-01-26 11:49:57','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(31,'ENTRY','UPDATE',NULL,'directus_columns',28,1,'{\"id\":\"28\",\"table_name\":\"projects\",\"column_name\":\"type\",\"data_type\":\"VARCHAR\",\"ui\":\"dropdown\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"10\",\"comment\":\"Select type of work\",\"options\":\"{\\\"id\\\":\\\"dropdown\\\",\\\"options\\\":\\\"{\\\\\\\"work\\\\\\\": \\\\\\\"work\\\\\\\", \\\\\\\"personal\\\\\\\": \\\\\\\"personal\\\\\\\", \\\\\\\"other\\\\\\\": \\\\\\\"other\\\\\\\" }\\\",\\\"placeholder\\\":\\\"Select type of project\\\"}\"}','{\"comment\":\"Select type of work\",\"options\":\"{\\\"id\\\":\\\"dropdown\\\",\\\"options\\\":\\\"{\\\\\\\"work\\\\\\\": \\\\\\\"work\\\\\\\", \\\\\\\"personal\\\\\\\": \\\\\\\"personal\\\\\\\", \\\\\\\"other\\\\\\\": \\\\\\\"other\\\\\\\" }\\\",\\\"placeholder\\\":\\\"Select type of project\\\"}\",\"data_type\":\"VARCHAR\",\"ui\":\"dropdown\",\"sort\":10,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"28\"}',NULL,NULL,1,'2018-01-26 11:50:31','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(32,'ENTRY','UPDATE',NULL,'directus_columns',28,1,'{\"id\":\"28\",\"table_name\":\"projects\",\"column_name\":\"type\",\"data_type\":\"VARCHAR\",\"ui\":\"dropdown\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"10\",\"comment\":\"Select type of work\",\"options\":\"{\\\"id\\\":\\\"dropdown\\\",\\\"options\\\":\\\"{\\\\\\\"work\\\\\\\": \\\\\\\"work\\\\\\\", \\\\\\\"personal\\\\\\\": \\\\\\\"personal\\\\\\\", \\\\\\\"other\\\\\\\": \\\\\\\"other\\\\\\\" }\\\",\\\"placeholder\\\":\\\"Select type of project\\\"}\"}','{\"comment\":\"Select type of work\",\"options\":\"{\\\"id\\\":\\\"dropdown\\\",\\\"options\\\":\\\"{\\\\\\\"work\\\\\\\": \\\\\\\"work\\\\\\\", \\\\\\\"personal\\\\\\\": \\\\\\\"personal\\\\\\\", \\\\\\\"other\\\\\\\": \\\\\\\"other\\\\\\\" }\\\",\\\"placeholder\\\":\\\"Select type of project\\\"}\",\"data_type\":\"VARCHAR\",\"ui\":\"dropdown\",\"sort\":10,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"28\"}',NULL,NULL,1,'2018-01-26 11:50:35','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(33,'ENTRY','UPDATE','1','projects',1,1,'{\"id\":\"1\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"WADI\",\"summary\":\"Email\\/SMS campaign delivery system\",\"weight\":\"5\",\"description\":\"#WADI\\nThis was a tricky project when working at JLabs (Delhi). Had to build out a server tool to handle email and SMS delivery by fetching data from a *Google sheet!*\\n\",\"page_id\":\"1\",\"type\":\"work\"}','{\"type\":\"work\",\"id\":\"1\"}',NULL,NULL,1,'2018-01-26 11:51:02','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(34,'ENTRY','UPDATE','1','work_pages',1,1,'{\"id\":\"1\",\"number\":\"1\"}','{\"id\":\"1\"}',NULL,NULL,1,'2018-01-26 15:12:12','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(35,'ENTRY','UPDATE','1','projects',1,1,'{\"id\":\"1\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"WADI\",\"summary\":\"Email\\/SMS campaign delivery system\",\"weight\":\"5\",\"description\":\"#WADI\\nThis was a tricky project when working at JLabs (Delhi). Had to build out a server tool to handle email and SMS delivery by fetching data from a *Google sheet!*\\n\",\"page_id\":\"1\",\"type\":\"work\"}','{\"id\":1,\"page_id\":1}',1,'work_pages',1,'2018-01-26 15:12:11','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(36,'ENTRY','ADD','3','skills',3,1,'{\"id\":\"3\",\"name\":\"CSS\",\"rating\":\"5\"}','[]',1,'work_pages',1,'2018-01-26 15:12:12','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(37,'ENTRY','ADD','2','projects',2,1,'{\"id\":\"2\",\"status\":\"2\",\"sort\":\"0\",\"name\":\"Bigstream\",\"summary\":\"Data flows and process pipelines\",\"weight\":\"5\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"work\"}','[]',1,'work_pages',1,'2018-01-26 15:12:12','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(38,'ENTRY','UPDATE','2','projects',2,1,'{\"id\":\"2\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Bigstream\",\"summary\":\"Data flows and process pipelines\",\"weight\":\"5\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"work\"}','{\"status\":1,\"id\":\"2\"}',NULL,NULL,1,'2018-01-26 15:12:35','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(39,'ENTRY','UPDATE',NULL,'directus_columns',25,1,'{\"id\":\"25\",\"table_name\":\"projects\",\"column_name\":\"page_id\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"work_pages\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"page_id\",\"hidden_input\":\"1\",\"required\":\"0\",\"sort\":\"7\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\",\\\"visible_column\\\":\\\"id\\\",\\\"visible_column_template\\\":\\\"{{id}}\\\",\\\"placeholder\\\":\\\"Add this to page #\\\"}\"}','{\"hidden_input\":true,\"id\":\"25\"}',NULL,NULL,1,'2018-01-26 15:13:04','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(40,'ENTRY','UPDATE','1','work_pages',1,1,'{\"id\":\"1\",\"number\":\"1\"}','{\"id\":\"1\"}',NULL,NULL,1,'2018-01-26 15:14:23','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(41,'ENTRY','UPDATE','1','projects',1,1,'{\"id\":\"1\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"WADI\",\"summary\":\"Email\\/SMS campaign delivery system\",\"weight\":\"5\",\"description\":\"#WADI\\nThis was a tricky project when working at JLabs (Delhi). Had to build out a server tool to handle email and SMS delivery by fetching data from a *Google sheet!*\\n\",\"page_id\":\"1\",\"type\":\"work\"}','{\"id\":1,\"page_id\":1}',1,'work_pages',1,'2018-01-26 15:14:21','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(42,'ENTRY','UPDATE','2','projects',2,1,'{\"id\":\"2\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Bigstream\",\"summary\":\"Data flows and process pipelines\",\"weight\":\"5\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"work\"}','{\"id\":2,\"page_id\":1}',1,'work_pages',1,'2018-01-26 15:14:22','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(43,'ENTRY','ADD','4','skills',4,1,'{\"id\":\"4\",\"name\":\"AngularJS\",\"rating\":\"5\"}','[]',1,'work_pages',1,'2018-01-26 15:14:22','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(44,'ENTRY','ADD','5','skills',5,1,'{\"id\":\"5\",\"name\":\"Python\",\"rating\":\"3\"}','[]',1,'work_pages',1,'2018-01-26 15:14:22','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(45,'ENTRY','ADD','6','skills',6,1,'{\"id\":\"6\",\"name\":\"Microservices\",\"rating\":null}','[]',1,'work_pages',1,'2018-01-26 15:14:22','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(46,'ENTRY','ADD','3','projects',3,1,'{\"id\":\"3\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Enfold UI\",\"summary\":\"Personal Digital Locker\",\"weight\":\"6\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"work\"}','[]',1,'work_pages',1,'2018-01-26 15:14:23','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(47,'ENTRY','UPDATE','1','work_pages',1,1,'{\"id\":\"1\",\"number\":\"1\"}','{\"id\":\"1\"}',NULL,NULL,1,'2018-01-26 15:20:14','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(48,'ENTRY','UPDATE','1','projects',1,1,'{\"id\":\"1\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"WADI\",\"summary\":\"Email\\/SMS campaign delivery system\",\"weight\":\"5\",\"description\":\"#WADI\\nThis was a tricky project when working at JLabs (Delhi). Had to build out a server tool to handle email and SMS delivery by fetching data from a *Google sheet!*\\n\",\"page_id\":\"1\",\"type\":\"work\"}','{\"id\":1,\"page_id\":1}',1,'work_pages',1,'2018-01-26 15:20:13','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(49,'ENTRY','UPDATE','2','projects',2,1,'{\"id\":\"2\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Bigstream\",\"summary\":\"Data flows and process pipelines\",\"weight\":\"5\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"work\"}','{\"id\":2,\"page_id\":1}',1,'work_pages',1,'2018-01-26 15:20:14','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(50,'ENTRY','UPDATE','3','projects',3,1,'{\"id\":\"3\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Enfold UI\",\"summary\":\"Personal Digital Locker\",\"weight\":\"6\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"work\"}','{\"id\":3,\"page_id\":1}',1,'work_pages',1,'2018-01-26 15:20:14','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(51,'ENTRY','UPDATE','3','skills',3,1,'{\"id\":\"3\",\"name\":\"CSS\",\"rating\":\"5\"}','{\"id\":3}',1,'work_pages',0,'2018-01-26 15:20:14','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(52,'ENTRY','ADD','7','skills',7,1,'{\"id\":\"7\",\"name\":\"Wordpress\",\"rating\":\"2\"}','[]',1,'work_pages',1,'2018-01-26 15:20:14','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(53,'ENTRY','ADD','4','projects',4,1,'{\"id\":\"4\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"BooksPlus\",\"summary\":\"AR for books\",\"weight\":\"4\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"work\"}','[]',1,'work_pages',1,'2018-01-26 15:20:14','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(54,'ENTRY','ADD','8','skills',8,1,'{\"id\":\"8\",\"name\":\"CakePHP\",\"rating\":\"4\"}','[]',1,'work_pages',1,'2018-01-26 15:20:14','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(55,'ENTRY','UPDATE','2','skills',2,1,'{\"id\":\"2\",\"name\":\"SQL\",\"rating\":null}','{\"id\":2}',1,'work_pages',0,'2018-01-26 15:20:14','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(56,'ENTRY','ADD','5','projects',5,1,'{\"id\":\"5\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"poundWISHES\",\"summary\":\"Crowdfunding platform that enables animal-welfare organizations to create fundraising campaigns and find new donors.\",\"weight\":\"10\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"work\"}','[]',1,'work_pages',1,'2018-01-26 15:20:14','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(57,'ENTRY','UPDATE',NULL,'directus_columns',9,1,'{\"id\":\"9\",\"table_name\":\"projects\",\"column_name\":\"summary\",\"data_type\":\"VARCHAR\",\"ui\":\"textarea\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"4\",\"comment\":\"A brief summary of the project. To be shown on the card\",\"options\":null}','{\"required\":false,\"id\":\"9\"}',NULL,NULL,1,'2018-01-26 15:21:30','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(58,'ENTRY','UPDATE','1','work_pages',1,1,'{\"id\":\"1\",\"number\":\"1\"}','{\"id\":\"1\"}',NULL,NULL,1,'2018-01-26 15:22:29','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(59,'ENTRY','UPDATE','1','projects',1,1,'{\"id\":\"1\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"WADI\",\"summary\":\"Email\\/SMS campaign delivery system\",\"weight\":\"5\",\"description\":\"#WADI\\nThis was a tricky project when working at JLabs (Delhi). Had to build out a server tool to handle email and SMS delivery by fetching data from a *Google sheet!*\\n\",\"page_id\":\"1\",\"type\":\"work\"}','{\"id\":1,\"page_id\":1}',1,'work_pages',1,'2018-01-26 15:22:29','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(60,'ENTRY','UPDATE','2','projects',2,1,'{\"id\":\"2\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Bigstream\",\"summary\":\"Data flows and process pipelines\",\"weight\":\"5\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"work\"}','{\"id\":2,\"page_id\":1}',1,'work_pages',1,'2018-01-26 15:22:29','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(61,'ENTRY','UPDATE','3','projects',3,1,'{\"id\":\"3\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Enfold UI\",\"summary\":\"Personal Digital Locker\",\"weight\":\"6\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"work\"}','{\"id\":3,\"page_id\":1}',1,'work_pages',1,'2018-01-26 15:22:29','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(62,'ENTRY','UPDATE','4','projects',4,1,'{\"id\":\"4\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"BooksPlus\",\"summary\":\"AR for books\",\"weight\":\"4\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"work\"}','{\"id\":4,\"page_id\":1}',1,'work_pages',1,'2018-01-26 15:22:29','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(63,'ENTRY','UPDATE','5','projects',5,1,'{\"id\":\"5\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"poundWISHES\",\"summary\":\"Crowdfunding platform that enables animal-welfare organizations to create fundraising campaigns and find new donors.\",\"weight\":\"10\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"work\"}','{\"id\":5,\"page_id\":1}',1,'work_pages',1,'2018-01-26 15:22:29','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(64,'ENTRY','ADD','9','skills',9,1,'{\"id\":\"9\",\"name\":\"Ansible\",\"rating\":\"3\"}','[]',1,'work_pages',1,'2018-01-26 15:22:29','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(65,'ENTRY','ADD','6','projects',6,1,'{\"id\":\"6\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Workstation deployment\",\"summary\":null,\"weight\":\"4\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"personal\"}','[]',1,'work_pages',1,'2018-01-26 15:22:29','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(66,'ENTRY','UPDATE','3','projects',3,1,'{\"id\":\"3\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Enfold UI\",\"summary\":\"Personal Digital Locker\",\"weight\":\"6\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"work\"}','{\"id\":\"3\"}',NULL,NULL,1,'2018-01-26 15:23:07','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(67,'ENTRY','UPDATE','4','skills',4,1,'{\"id\":\"4\",\"name\":\"AngularJS\",\"rating\":\"5\"}','{\"id\":4}',3,'projects',0,'2018-01-26 15:23:07','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(68,'ENTRY','UPDATE','5','skills',5,1,'{\"id\":\"5\",\"name\":\"Python\",\"rating\":\"3\"}','{\"id\":5}',3,'projects',0,'2018-01-26 15:23:07','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(69,'ENTRY','UPDATE','6','skills',6,1,'{\"id\":\"6\",\"name\":\"Microservices\",\"rating\":null}','{\"id\":6}',3,'projects',0,'2018-01-26 15:23:07','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(70,'ENTRY','UPDATE','9','skills',9,1,'{\"id\":\"9\",\"name\":\"Ansible\",\"rating\":\"3\"}','{\"id\":9}',3,'projects',0,'2018-01-26 15:23:07','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(71,'ENTRY','UPDATE','2','work_pages',2,1,'{\"id\":\"2\",\"number\":\"2\"}','{\"id\":\"2\"}',NULL,NULL,1,'2018-01-26 15:24:55','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(72,'ENTRY','ADD','10','skills',10,1,'{\"id\":\"10\",\"name\":\"Angular\",\"rating\":\"4\"}','[]',2,'work_pages',1,'2018-01-26 15:24:54','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(73,'ENTRY','ADD','11','skills',11,1,'{\"id\":\"11\",\"name\":\"Webpack\",\"rating\":\"3\"}','[]',2,'work_pages',1,'2018-01-26 15:24:54','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(74,'ENTRY','ADD','7','projects',7,1,'{\"id\":\"7\",\"status\":\"2\",\"sort\":\"0\",\"name\":\"Shivani\'s Portfolio\",\"summary\":\"Portfolio website for Shivani (UI-UX designer)\",\"weight\":\"10\",\"description\":null,\"page_id\":\"2\",\"type\":\"other\"}','[]',2,'work_pages',1,'2018-01-26 15:24:55','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(75,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-01-28 15:42:17','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(76,'ENTRY','ADD',NULL,'directus_privileges',17,1,'{\"id\":\"17\",\"table_name\":\"projects\",\"allow_view\":\"1\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','[]',NULL,NULL,1,'2018-01-28 15:42:28','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(77,'ENTRY','ADD',NULL,'directus_privileges',18,1,'{\"id\":\"18\",\"table_name\":\"skills\",\"allow_view\":\"1\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','[]',NULL,NULL,1,'2018-01-28 15:42:29','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(78,'ENTRY','ADD',NULL,'directus_privileges',19,1,'{\"id\":\"19\",\"table_name\":\"skills_for_project\",\"allow_view\":\"1\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','[]',NULL,NULL,1,'2018-01-28 15:42:29','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(79,'ENTRY','ADD',NULL,'directus_privileges',20,1,'{\"id\":\"20\",\"table_name\":\"work_pages\",\"allow_view\":\"1\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','[]',NULL,NULL,1,'2018-01-28 15:42:30','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(80,'ENTRY','UPDATE',NULL,'directus_privileges',17,1,'{\"id\":\"17\",\"table_name\":\"projects\",\"allow_view\":\"2\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":2,\"id\":\"17\"}',NULL,NULL,1,'2018-01-28 15:42:32','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(81,'ENTRY','UPDATE',NULL,'directus_privileges',18,1,'{\"id\":\"18\",\"table_name\":\"skills\",\"allow_view\":\"2\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":2,\"id\":\"18\"}',NULL,NULL,1,'2018-01-28 15:42:36','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(82,'ENTRY','UPDATE',NULL,'directus_privileges',19,1,'{\"id\":\"19\",\"table_name\":\"skills_for_project\",\"allow_view\":\"2\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":2,\"id\":\"19\"}',NULL,NULL,1,'2018-01-28 15:42:36','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(83,'ENTRY','UPDATE',NULL,'directus_privileges',20,1,'{\"id\":\"20\",\"table_name\":\"work_pages\",\"allow_view\":\"2\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":2,\"id\":\"20\"}',NULL,NULL,1,'2018-01-28 15:42:37','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(84,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-01-29 09:21:33','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(85,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-01-30 09:17:51','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(86,'ENTRY','UPDATE','7','projects',7,1,'{\"id\":\"7\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Shivani\'s Portfolio\",\"summary\":\"Portfolio website for Shivani (UI-UX designer)\",\"weight\":\"10\",\"description\":null,\"page_id\":\"2\",\"type\":\"other\"}','{\"status\":1,\"id\":\"7\"}',NULL,NULL,1,'2018-01-30 10:31:18','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(87,'ENTRY','UPDATE','7','projects',7,1,'{\"id\":\"7\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Shivani\'s Portfolio\",\"summary\":\"Portfolio website for Shivani (UI-UX designer)\",\"weight\":\"4\",\"description\":null,\"page_id\":\"2\",\"type\":\"other\"}','{\"weight\":\"4\",\"id\":\"7\"}',NULL,NULL,1,'2018-01-30 10:32:06','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(88,'ENTRY','UPDATE','7','projects',7,1,'{\"id\":\"7\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Shivani\'s Portfolio\",\"summary\":\"Portfolio website for Shivani (UI-UX designer)\",\"weight\":\"4\",\"description\":null,\"page_id\":\"1\",\"type\":\"other\"}','{\"page_id\":1,\"id\":\"7\"}',NULL,NULL,1,'2018-01-30 10:32:33','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(89,'ENTRY','UPDATE','7','projects',7,1,'{\"id\":\"7\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Shivani\'s Portfolio\",\"summary\":\"Portfolio website for Shivani (UI-UX designer)\",\"weight\":\"4\",\"description\":null,\"page_id\":\"1\",\"type\":\"personal\"}','{\"type\":\"personal\",\"id\":\"7\"}',NULL,NULL,1,'2018-01-30 10:33:34','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(90,'ENTRY','UPDATE','7','projects',7,1,'{\"id\":\"7\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Shivani\'s Portfolio\",\"summary\":\"Portfolio website for Shivani (UI-UX designer)\",\"weight\":\"8\",\"description\":null,\"page_id\":\"1\",\"type\":\"personal\"}','{\"weight\":\"8\",\"id\":\"7\"}',NULL,NULL,1,'2018-01-30 11:00:13','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(91,'ENTRY','UPDATE','1','work_pages',1,1,'{\"id\":\"1\",\"number\":\"1\",\"status\":\"1\"}','{\"id\":\"1\"}',NULL,NULL,1,'2018-01-30 11:00:36','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(92,'ENTRY','UPDATE','1','projects',1,1,'{\"id\":\"1\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"WADI\",\"summary\":\"Email\\/SMS campaign delivery system\",\"weight\":\"5\",\"description\":\"#WADI\\nThis was a tricky project when working at JLabs (Delhi). Had to build out a server tool to handle email and SMS delivery by fetching data from a *Google sheet!*\\n\",\"page_id\":\"1\",\"type\":\"work\"}','{\"id\":1,\"page_id\":1}',1,'work_pages',1,'2018-01-30 11:00:36','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(93,'ENTRY','UPDATE','2','projects',2,1,'{\"id\":\"2\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Bigstream\",\"summary\":\"Data flows and process pipelines\",\"weight\":\"5\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"work\"}','{\"id\":2,\"page_id\":1}',1,'work_pages',1,'2018-01-30 11:00:36','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(94,'ENTRY','UPDATE','3','projects',3,1,'{\"id\":\"3\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Enfold UI\",\"summary\":\"Personal Digital Locker\",\"weight\":\"6\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"work\"}','{\"id\":3,\"page_id\":1}',1,'work_pages',1,'2018-01-30 11:00:36','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(95,'ENTRY','UPDATE','4','projects',4,1,'{\"id\":\"4\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"BooksPlus\",\"summary\":\"AR for books\",\"weight\":\"4\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"work\"}','{\"id\":4,\"page_id\":1}',1,'work_pages',1,'2018-01-30 11:00:36','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(96,'ENTRY','UPDATE','5','projects',5,1,'{\"id\":\"5\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"poundWISHES\",\"summary\":\"Crowdfunding platform that enables animal-welfare organizations to create fundraising campaigns and find new donors.\",\"weight\":\"10\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"work\"}','{\"id\":5,\"page_id\":1}',1,'work_pages',1,'2018-01-30 11:00:36','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(97,'ENTRY','UPDATE','6','projects',6,1,'{\"id\":\"6\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Workstation deployment\",\"summary\":null,\"weight\":\"4\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"personal\"}','{\"id\":6,\"page_id\":1}',1,'work_pages',1,'2018-01-30 11:00:36','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(98,'ENTRY','UPDATE','7','projects',7,1,'{\"id\":\"7\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Shivani\'s Portfolio\",\"summary\":\"Portfolio website for Shivani (UI-UX designer)\",\"weight\":\"8\",\"description\":null,\"page_id\":null,\"type\":\"personal\"}','{\"page_id\":null,\"id\":7}',1,'work_pages',1,'2018-01-30 11:00:36','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(99,'ENTRY','UPDATE','2','work_pages',2,1,'{\"id\":\"2\",\"number\":\"2\",\"status\":\"1\"}','{\"status\":1,\"id\":\"2\"}',NULL,NULL,1,'2018-01-30 11:01:02','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(100,'ENTRY','UPDATE','7','projects',7,1,'{\"id\":\"7\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Shivani\'s Portfolio\",\"summary\":\"Portfolio website for Shivani (UI-UX designer)\",\"weight\":\"8\",\"description\":null,\"page_id\":\"2\",\"type\":\"personal\"}','{\"page_id\":2,\"id\":\"7\"}',NULL,NULL,1,'2018-01-30 11:01:12','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(101,'ENTRY','UPDATE','3','projects',3,1,'{\"id\":\"3\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Enfold UI\",\"summary\":\"Personal Digital Locker. Did a lot of mehnat for this shit.\",\"weight\":\"6\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"work\"}','{\"summary\":\"Personal Digital Locker. Did a lot of mehnat for this shit.\",\"id\":\"3\"}',NULL,NULL,1,'2018-01-30 11:02:00','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(102,'ENTRY','UPDATE','7','projects',7,1,'{\"id\":\"7\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Shivani\'s Portfolio\",\"summary\":\"Portfolio website for Shivani (UI-UX designer)\",\"weight\":\"8\",\"description\":null,\"page_id\":\"2\",\"type\":\"other\"}','{\"type\":\"other\",\"id\":\"7\"}',NULL,NULL,1,'2018-01-30 11:02:48','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(103,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-02-01 04:52:59','172.19.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),(104,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-02-01 05:34:06','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(105,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-02-01 17:34:25','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(106,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-02-02 04:09:32','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(107,'ENTRY','UPDATE','1','projects',1,1,'{\"id\":\"1\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"WADI\",\"summary\":\"Email\\/SMS campaign delivery system\",\"weight\":\"5\",\"description\":\"# WADI\\nThis was a tricky project when working at JLabs (Delhi). Had to build out a server tool to handle email and SMS delivery by fetching data from a *Google sheet!*\\n\",\"page_id\":\"1\",\"type\":\"work\"}','{\"description\":\"# WADI\\nThis was a tricky project when working at JLabs (Delhi). Had to build out a server tool to handle email and SMS delivery by fetching data from a *Google sheet!*\\n\",\"id\":\"1\"}',NULL,NULL,1,'2018-02-02 04:10:00','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(108,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-02-12 04:15:13','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(109,'ENTRY','UPDATE','6','projects',6,1,'{\"id\":\"6\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Workstation deployment\",\"summary\":null,\"weight\":\"8\",\"description\":\"\",\"page_id\":\"1\",\"type\":\"personal\"}','{\"weight\":\"8\",\"id\":\"6\"}',NULL,NULL,1,'2018-02-12 04:16:26','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(110,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-02-14 06:58:00','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(111,'ENTRY','UPDATE','2','work_pages',2,1,'{\"id\":\"2\",\"number\":\"2\",\"status\":\"1\"}','{\"id\":\"2\"}',NULL,NULL,1,'2018-02-14 06:59:35','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(112,'ENTRY','UPDATE','7','projects',7,1,'{\"id\":\"7\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Shivani\'s Portfolio\",\"summary\":\"Portfolio website for Shivani (UI-UX designer)\",\"weight\":\"8\",\"description\":null,\"page_id\":\"2\",\"type\":\"other\"}','{\"id\":7,\"page_id\":2}',2,'work_pages',1,'2018-02-14 06:59:35','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(113,'ENTRY','ADD','8','projects',8,1,'{\"id\":\"8\",\"status\":\"1\",\"sort\":\"0\",\"name\":\"Trial\",\"summary\":\"Trying things out\",\"weight\":\"5\",\"description\":\"#### just a trial\\n\\nhello world\",\"page_id\":\"2\",\"type\":\"other\"}','[]',2,'work_pages',1,'2018-02-14 06:59:35','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(114,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-02-24 06:03:01','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(115,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-03-02 03:26:34','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(116,'ENTRY','UPDATE','4','skills',4,1,'{\"id\":\"4\",\"name\":\"AngularJS\",\"rating\":\"5\",\"featured\":\"1\"}','{\"featured\":1,\"id\":\"4\"}',NULL,NULL,1,'2018-03-02 03:29:57','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(117,'ENTRY','UPDATE','10','skills',10,1,'{\"id\":\"10\",\"name\":\"Angular\",\"rating\":\"4\",\"featured\":\"1\"}','{\"featured\":1,\"id\":\"10\"}',NULL,NULL,1,'2018-03-02 03:30:06','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(118,'ENTRY','UPDATE','11','skills',11,1,'{\"id\":\"11\",\"name\":\"Webpack\",\"rating\":\"3\",\"featured\":\"1\"}','{\"featured\":1,\"id\":\"11\"}',NULL,NULL,1,'2018-03-02 03:30:12','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(119,'ENTRY','UPDATE','8','skills',8,1,'{\"id\":\"8\",\"name\":\"CakePHP\",\"rating\":\"4\",\"featured\":\"1\"}','{\"featured\":1,\"id\":\"8\"}',NULL,NULL,1,'2018-03-02 03:30:20','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(120,'ENTRY','UPDATE','5','skills',5,1,'{\"id\":\"5\",\"name\":\"Python\",\"rating\":\"3\",\"featured\":\"1\"}','{\"featured\":1,\"id\":\"5\"}',NULL,NULL,1,'2018-03-02 03:30:28','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(121,'ENTRY','UPDATE',NULL,'directus_columns',31,1,'{\"id\":\"31\",\"table_name\":\"skills\",\"column_name\":\"pos-mobile-x\",\"data_type\":\"INT\",\"ui\":\"slider\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"6\",\"comment\":\"%X position in mobile\",\"options\":\"{\\\"id\\\":\\\"slider\\\"}\"}','{\"comment\":\"%X position in mobile\",\"options\":\"{\\\"id\\\":\\\"slider\\\"}\",\"data_type\":\"INT\",\"ui\":\"slider\",\"sort\":6,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"31\"}',NULL,NULL,1,'2018-03-02 03:33:43','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(122,'ENTRY','UPDATE',NULL,'directus_columns',31,1,'{\"id\":\"31\",\"table_name\":\"skills\",\"column_name\":\"pos-mobile-x\",\"data_type\":\"INT\",\"ui\":\"slider\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"6\",\"comment\":\"%X position in mobile\",\"options\":\"{\\\"id\\\":\\\"slider\\\",\\\"unit\\\":\\\"%\\\"}\"}','{\"comment\":\"%X position in mobile\",\"options\":\"{\\\"id\\\":\\\"slider\\\",\\\"unit\\\":\\\"%\\\"}\",\"data_type\":\"INT\",\"ui\":\"slider\",\"sort\":6,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"31\"}',NULL,NULL,1,'2018-03-02 03:33:55','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(123,'ENTRY','UPDATE',NULL,'directus_columns',32,1,'{\"id\":\"32\",\"table_name\":\"skills\",\"column_name\":\"pos-mobile-y\",\"data_type\":\"INT\",\"ui\":\"slider\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"7\",\"comment\":\"%Y position on mobile\",\"options\":\"{\\\"id\\\":\\\"slider\\\",\\\"unit\\\":\\\"%\\\"}\"}','{\"comment\":\"%Y position on mobile\",\"options\":\"{\\\"id\\\":\\\"slider\\\",\\\"unit\\\":\\\"%\\\"}\",\"data_type\":\"INT\",\"ui\":\"slider\",\"sort\":7,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"32\"}',NULL,NULL,1,'2018-03-02 03:34:35','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(124,'ENTRY','UPDATE','4','skills',4,1,'{\"id\":\"4\",\"name\":\"AngularJS\",\"rating\":\"3\",\"featured\":\"1\",\"pos-mobile-x\":\"50\",\"pos-mobile-y\":\"50\"}','{\"rating\":\"3\",\"id\":\"4\"}',NULL,NULL,1,'2018-03-02 03:35:35','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(125,'ENTRY','UPDATE','4','skills',4,1,'{\"id\":\"4\",\"name\":\"AngularJS\",\"rating\":\"5\",\"featured\":\"1\",\"pos-mobile-x\":\"35\",\"pos-mobile-y\":\"21\"}','{\"rating\":\"5\",\"pos-mobile-x\":\"35\",\"pos-mobile-y\":\"21\",\"id\":\"4\"}',NULL,NULL,1,'2018-03-02 03:36:13','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(126,'ENTRY','UPDATE','5','skills',5,1,'{\"id\":\"5\",\"name\":\"Python\",\"rating\":\"3\",\"featured\":\"1\",\"pos-mobile-x\":\"66\",\"pos-mobile-y\":\"61\"}','{\"pos-mobile-x\":\"66\",\"pos-mobile-y\":\"61\",\"id\":\"5\"}',NULL,NULL,1,'2018-03-02 03:36:45','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(127,'ENTRY','UPDATE','8','skills',8,1,'{\"id\":\"8\",\"name\":\"CakePHP\",\"rating\":\"4\",\"featured\":\"1\",\"pos-mobile-x\":\"7\",\"pos-mobile-y\":\"87\"}','{\"pos-mobile-x\":\"7\",\"pos-mobile-y\":\"87\",\"id\":\"8\"}',NULL,NULL,1,'2018-03-02 03:36:57','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(128,'ENTRY','UPDATE','10','skills',10,1,'{\"id\":\"10\",\"name\":\"Angular\",\"rating\":\"4\",\"featured\":\"1\",\"pos-mobile-x\":\"64\",\"pos-mobile-y\":\"59\"}','{\"pos-mobile-x\":\"64\",\"pos-mobile-y\":\"59\",\"id\":\"10\"}',NULL,NULL,1,'2018-03-02 03:37:06','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(129,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-03-02 05:36:51','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(130,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-03-13 17:16:37','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(131,'ENTRY','UPDATE','4','skills',4,1,'{\"id\":\"4\",\"name\":\"AngularJS\",\"rating\":\"5\",\"featured\":\"1\",\"pos-mobile-x\":\"35\",\"pos-mobile-y\":\"79\"}','{\"pos-mobile-y\":\"79\",\"id\":\"4\"}',NULL,NULL,1,'2018-03-13 17:17:12','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(132,'ENTRY','UPDATE','4','skills',4,1,'{\"id\":\"4\",\"name\":\"AngularJS\",\"rating\":\"5\",\"featured\":\"1\",\"pos-mobile-x\":\"82\",\"pos-mobile-y\":\"79\"}','{\"pos-mobile-x\":\"82\",\"id\":\"4\"}',NULL,NULL,1,'2018-03-13 17:17:50','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(133,'ENTRY','UPDATE','10','skills',10,1,'{\"id\":\"10\",\"name\":\"Angular\",\"rating\":\"4\",\"featured\":\"1\",\"pos-mobile-x\":\"23\",\"pos-mobile-y\":\"27\"}','{\"pos-mobile-x\":\"23\",\"pos-mobile-y\":\"27\",\"id\":\"10\"}',NULL,NULL,1,'2018-03-13 17:18:24','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36'),(134,'ENTRY','UPDATE','11','skills',11,1,'{\"id\":\"11\",\"name\":\"Webpack\",\"rating\":\"3\",\"featured\":\"1\",\"pos-mobile-x\":\"30\",\"pos-mobile-y\":\"50\"}','{\"pos-mobile-x\":\"30\",\"id\":\"11\"}',NULL,NULL,1,'2018-03-13 17:18:50','172.19.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36');
/*!40000 ALTER TABLE `directus_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_bookmarks`
--

DROP TABLE IF EXISTS `directus_bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_bookmarks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_bookmarks`
--

LOCK TABLES `directus_bookmarks` WRITE;
/*!40000 ALTER TABLE `directus_bookmarks` DISABLE KEYS */;
REPLACE INTO `directus_bookmarks` VALUES (1,1,'Activity','activity','other'),(2,1,'Files','files','other'),(3,1,'Messages','messages','other'),(4,1,'Users','users','other');
/*!40000 ALTER TABLE `directus_bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_columns`
--

DROP TABLE IF EXISTS `directus_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_columns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `data_type` varchar(64) DEFAULT NULL,
  `ui` varchar(64) DEFAULT NULL,
  `relationship_type` enum('MANYTOONE','MANYTOMANY','ONETOMANY') DEFAULT NULL,
  `related_table` varchar(64) DEFAULT NULL,
  `junction_table` varchar(64) DEFAULT NULL,
  `junction_key_left` varchar(64) DEFAULT NULL,
  `junction_key_right` varchar(64) DEFAULT NULL,
  `hidden_input` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  `comment` varchar(1024) DEFAULT NULL,
  `options` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table-column` (`table_name`,`column_name`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_columns`
--

LOCK TABLES `directus_columns` WRITE;
/*!40000 ALTER TABLE `directus_columns` DISABLE KEYS */;
REPLACE INTO `directus_columns` VALUES (1,'directus_users','group',NULL,'many_to_one','MANYTOONE','directus_groups',NULL,NULL,'group_id',0,0,NULL,'',NULL),(2,'directus_users','avatar_file_id','INT','single_file','MANYTOONE','directus_files',NULL,NULL,'avatar_file_id',0,0,NULL,'',NULL),(3,'directus_groups','users','ALIAS','directus_users','ONETOMANY','directus_users',NULL,NULL,'group',0,0,NULL,NULL,NULL),(4,'directus_groups','permissions','ALIAS','directus_permissions','ONETOMANY','directus_privileges',NULL,NULL,'group_id',0,0,NULL,NULL,NULL),(5,'projects','id','INT','primary_key',NULL,NULL,NULL,NULL,NULL,1,0,0,NULL,NULL),(6,'projects','sort','INT','sort',NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL),(7,'projects','status','INT','status',NULL,NULL,NULL,NULL,NULL,1,0,2,NULL,NULL),(8,'projects','name','VARCHAR','text_input',NULL,NULL,NULL,NULL,NULL,0,1,3,'The project title',NULL),(9,'projects','summary','VARCHAR','textarea',NULL,NULL,NULL,NULL,NULL,0,0,4,'A brief summary of the project. To be shown on the card',NULL),(10,'projects','weight','INT','slider',NULL,NULL,NULL,NULL,NULL,0,0,5,'The minimum weight of the project. Describes the card size','{\"id\":\"slider\",\"minimum\":\"1\",\"maximum\":\"10\"}'),(11,'projects','description','TEXT','markdown',NULL,NULL,NULL,NULL,NULL,0,0,6,'A complete description',NULL),(12,'skills','id','INT','primary_key',NULL,NULL,NULL,NULL,NULL,1,0,0,NULL,NULL),(15,'skills','name','VARCHAR','text_input',NULL,NULL,NULL,NULL,NULL,0,0,3,'Short name of the skill',NULL),(16,'skills','rating','INT','rating',NULL,NULL,NULL,NULL,NULL,0,0,4,'How good you are at this','{\"id\":\"rating\",\"max_score\":\"5\"}'),(17,'skills_for_project','id','INT','primary_key',NULL,NULL,NULL,NULL,NULL,1,0,0,NULL,NULL),(18,'skills_for_project','sort','INT','sort',NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL),(20,'skills_for_project','project_id','INT','many_to_one','MANYTOONE','projects',NULL,NULL,'project_id',0,0,2,'','{\"id\":\"many_to_one\",\"visible_column\":\"name,id\",\"visible_column_template\":\"{{id}}-{{name}}\"}'),(21,'skills_for_project','skill_id','INT','many_to_one','MANYTOONE','skills',NULL,NULL,'skill_id',0,0,3,'','{\"id\":\"many_to_one\",\"visible_column\":\"id,name\",\"visible_column_template\":\"{{name}}\",\"filter_column\":\"name\"}'),(22,'projects','skills','ALIAS','many_to_many','MANYTOMANY','skills','skills_for_project','project_id','skill_id',0,0,9,'Skills used for this project','{\"id\":\"many_to_many\",\"visible_columns\":\"name\",\"visible_column_template\":\"{{name}}\",\"filter_column\":\"name\",\"no_duplicates\":1}'),(24,'work_pages','id','INT','primary_key',NULL,NULL,NULL,NULL,NULL,1,0,0,NULL,NULL),(25,'projects','page_id','INT','many_to_one','MANYTOONE','work_pages',NULL,NULL,'page_id',1,0,7,'','{\"id\":\"many_to_one\",\"visible_column\":\"id\",\"visible_column_template\":\"{{id}}\",\"placeholder\":\"Add this to page #\"}'),(26,'work_pages','number','INT','numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,'','{\"id\":\"numeric\",\"size\":\"small\"}'),(27,'work_pages','projects','ALIAS','one_to_many','ONETOMANY','projects',NULL,NULL,'page_id',0,0,2,'','{\"id\":\"one_to_many\",\"visible_columns\":\"name,weight,type\",\"only_unassigned\":1}'),(28,'projects','type','VARCHAR','dropdown',NULL,NULL,NULL,NULL,NULL,0,0,8,'Select type of work','{\"id\":\"dropdown\",\"options\":\"{\\\"work\\\": \\\"work\\\", \\\"personal\\\": \\\"personal\\\", \\\"other\\\": \\\"other\\\" }\",\"placeholder\":\"Select type of project\"}'),(29,'work_pages','status','TINYINT','status',NULL,NULL,NULL,NULL,NULL,0,0,3,'',NULL),(30,'skills','featured','TINYINT','toggle',NULL,NULL,NULL,NULL,NULL,0,0,5,'Will show up on the Skills page if this is featured',NULL),(31,'skills','pos-mobile-x','INT','slider',NULL,NULL,NULL,NULL,NULL,0,0,6,'%X position in mobile','{\"id\":\"slider\",\"unit\":\"%\"}'),(32,'skills','pos-mobile-y','INT','slider',NULL,NULL,NULL,NULL,NULL,0,0,7,'%Y position on mobile','{\"id\":\"slider\",\"unit\":\"%\"}');
/*!40000 ALTER TABLE `directus_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_files`
--

DROP TABLE IF EXISTS `directus_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_files` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `location` varchar(200) DEFAULT NULL,
  `caption` text,
  `type` varchar(255) DEFAULT '',
  `charset` varchar(50) DEFAULT '',
  `tags` varchar(255) DEFAULT '',
  `width` int(11) unsigned DEFAULT '0',
  `height` int(11) unsigned DEFAULT '0',
  `size` int(11) unsigned DEFAULT '0',
  `embed_id` varchar(200) DEFAULT NULL,
  `user` int(11) unsigned NOT NULL,
  `date_uploaded` datetime DEFAULT NULL,
  `storage_adapter` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_files`
--

LOCK TABLES `directus_files` WRITE;
/*!40000 ALTER TABLE `directus_files` DISABLE KEYS */;
REPLACE INTO `directus_files` VALUES (1,1,'00000000001.jpg','Mountain Range','Earth','A gorgeous view of this wooded mountain range','image/jpeg','binary','trees,rocks,nature,mountains,forest',1800,1200,602058,NULL,1,'2018-01-26 10:55:01','local');
/*!40000 ALTER TABLE `directus_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_groups`
--

DROP TABLE IF EXISTS `directus_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `restrict_to_ip_whitelist` text,
  `nav_override` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `directus_users_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_groups`
--

LOCK TABLES `directus_groups` WRITE;
/*!40000 ALTER TABLE `directus_groups` DISABLE KEYS */;
REPLACE INTO `directus_groups` VALUES (1,'Administrator','Admins have access to all managed data within the system by default',NULL,NULL),(2,'Public','This sets the data that is publicly available through the API without a token',NULL,NULL);
/*!40000 ALTER TABLE `directus_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_messages`
--

DROP TABLE IF EXISTS `directus_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(11) unsigned DEFAULT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `attachment` varchar(512) DEFAULT NULL,
  `response_to` int(11) unsigned DEFAULT NULL,
  `comment_metadata` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_messages`
--

LOCK TABLES `directus_messages` WRITE;
/*!40000 ALTER TABLE `directus_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_messages_recipients`
--

DROP TABLE IF EXISTS `directus_messages_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_messages_recipients` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(11) unsigned NOT NULL,
  `recipient` int(11) unsigned NOT NULL,
  `read` tinyint(1) NOT NULL,
  `group` int(11) unsigned DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_messages_recipients`
--

LOCK TABLES `directus_messages_recipients` WRITE;
/*!40000 ALTER TABLE `directus_messages_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_messages_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_preferences`
--

DROP TABLE IF EXISTS `directus_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_preferences` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) unsigned DEFAULT NULL,
  `table_name` varchar(64) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `columns_visible` varchar(300) DEFAULT NULL,
  `sort` varchar(64) DEFAULT 'id',
  `sort_order` varchar(5) DEFAULT 'ASC',
  `status` varchar(64) DEFAULT '3',
  `search_string` text,
  `list_view_options` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`,`table_name`,`title`),
  UNIQUE KEY `pref_title_constraint` (`user`,`table_name`,`title`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_preferences`
--

LOCK TABLES `directus_preferences` WRITE;
/*!40000 ALTER TABLE `directus_preferences` DISABLE KEYS */;
REPLACE INTO `directus_preferences` VALUES (1,1,'directus_activity',NULL,'type,action,identifier,table_name,row_id,user,data','id','ASC','1,2',NULL,NULL),(2,1,'directus_bookmarks',NULL,'user,title,url,section','id','ASC','1,2',NULL,NULL),(3,1,'directus_files',NULL,'name,title,location,caption,type,charset,tags','id','DESC','1,2',NULL,NULL),(4,1,'directus_groups',NULL,'name,description,restrict_to_ip_whitelist,nav_override,users,permissions','id','ASC','1,2',NULL,NULL),(5,1,'directus_messages',NULL,'from,subject,message,datetime,attachment,response_to,comment_metadata','id','ASC','1,2',NULL,NULL),(6,1,'directus_messages_recipients',NULL,'message_id,recipient,read,group,archived','id','ASC','1,2',NULL,NULL),(7,1,'directus_schema_migrations',NULL,'version','id','ASC','1,2',NULL,NULL),(8,1,'directus_users',NULL,'first_name,last_name,email,password,salt,token,access_token','id','ASC','1,2',NULL,NULL),(9,1,'projects',NULL,'name,summary,weight,description','sort','ASC','1,2',NULL,'{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),(10,1,'skills',NULL,'name,rating,featured,pos-mobile-x,pos-mobile-y','id','ASC','1,2',NULL,'{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),(11,1,'skills_for_project',NULL,'project_id,skill_id','sort','ASC','1,2',NULL,'{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),(12,1,'work_pages',NULL,'number','id','ASC','1,2',NULL,'{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),(13,0,'work_pages',NULL,'number,projects','id','ASC','1,2',NULL,NULL);
/*!40000 ALTER TABLE `directus_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_privileges`
--

DROP TABLE IF EXISTS `directus_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_privileges` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) NOT NULL,
  `allow_view` tinyint(1) NOT NULL DEFAULT '0',
  `allow_add` tinyint(1) NOT NULL DEFAULT '0',
  `allow_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_delete` tinyint(1) NOT NULL DEFAULT '0',
  `allow_alter` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` int(11) unsigned NOT NULL,
  `read_field_blacklist` varchar(1000) DEFAULT NULL,
  `write_field_blacklist` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `nav_listed` tinyint(1) NOT NULL DEFAULT '1',
  `status_id` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_privileges`
--

LOCK TABLES `directus_privileges` WRITE;
/*!40000 ALTER TABLE `directus_privileges` DISABLE KEYS */;
REPLACE INTO `directus_privileges` VALUES (1,'directus_activity',2,1,2,2,1,1,NULL,NULL,1,NULL),(2,'directus_columns',2,1,2,2,1,1,NULL,NULL,1,NULL),(3,'directus_groups',2,1,2,2,1,1,NULL,NULL,1,NULL),(4,'directus_files',2,1,2,2,1,1,NULL,NULL,1,NULL),(5,'directus_messages',2,1,2,2,1,1,NULL,NULL,1,NULL),(6,'directus_preferences',2,1,2,2,1,1,NULL,NULL,1,NULL),(7,'directus_privileges',2,1,2,2,1,1,NULL,NULL,1,NULL),(8,'directus_settings',2,1,2,2,1,1,NULL,NULL,1,NULL),(9,'directus_tables',2,1,2,2,1,1,NULL,NULL,1,NULL),(10,'directus_users',2,1,2,2,1,1,NULL,NULL,1,NULL),(11,'directus_messages_recipients',2,1,2,2,1,1,NULL,NULL,1,NULL),(12,'directus_bookmarks',2,1,2,2,1,1,NULL,NULL,1,NULL),(13,'projects',2,1,2,2,1,1,NULL,NULL,1,NULL),(14,'skills',2,1,2,2,1,1,NULL,NULL,1,NULL),(15,'skills_for_project',2,1,2,2,1,1,NULL,NULL,1,NULL),(16,'work_pages',2,1,2,2,1,1,NULL,NULL,1,NULL),(17,'projects',2,0,0,0,0,2,NULL,NULL,1,NULL),(18,'skills',2,0,0,0,0,2,NULL,NULL,1,NULL),(19,'skills_for_project',2,0,0,0,0,2,NULL,NULL,1,NULL),(20,'work_pages',2,0,0,0,0,2,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `directus_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_schema_migrations`
--

DROP TABLE IF EXISTS `directus_schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_schema_migrations` (
  `version` varchar(255) DEFAULT NULL,
  UNIQUE KEY `idx_directus_schema_migrations_version` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_schema_migrations`
--

LOCK TABLES `directus_schema_migrations` WRITE;
/*!40000 ALTER TABLE `directus_schema_migrations` DISABLE KEYS */;
REPLACE INTO `directus_schema_migrations` VALUES ('20150203221946'),('20150203235646'),('20150204002341'),('20150204003426'),('20150204015251'),('20150204021255'),('20150204022237'),('20150204023325'),('20150204024327'),('20150204031412'),('20150204041007'),('20150204042725');
/*!40000 ALTER TABLE `directus_schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_settings`
--

DROP TABLE IF EXISTS `directus_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `collection` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique Collection and Name` (`collection`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_settings`
--

LOCK TABLES `directus_settings` WRITE;
/*!40000 ALTER TABLE `directus_settings` DISABLE KEYS */;
REPLACE INTO `directus_settings` VALUES (1,'global','cms_user_auto_sign_out','60'),(2,'global','project_name','directus'),(3,'global','project_url','http://localhost/'),(4,'global','rows_per_page','200'),(5,'files','thumbnail_quality','100'),(6,'files','thumbnail_size','200'),(7,'global','cms_thumbnail_url',''),(8,'files','file_naming','file_id'),(9,'files','thumbnail_crop_enabled','1'),(10,'files','youtube_api_key','');
/*!40000 ALTER TABLE `directus_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_tables`
--

DROP TABLE IF EXISTS `directus_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_tables` (
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_template` varchar(255) DEFAULT '',
  `preview_url` varchar(255) DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `single` tinyint(1) NOT NULL DEFAULT '0',
  `default_status` tinyint(1) NOT NULL DEFAULT '1',
  `footer` tinyint(1) DEFAULT '0',
  `column_groupings` varchar(255) DEFAULT NULL,
  `primary_column` varchar(64) DEFAULT NULL,
  `sort_column` varchar(64) DEFAULT NULL,
  `status_column` varchar(64) DEFAULT NULL,
  `status_mapping` text,
  `user_create_column` varchar(64) DEFAULT NULL,
  `user_update_column` varchar(64) DEFAULT NULL,
  `date_create_column` varchar(64) DEFAULT NULL,
  `date_update_column` varchar(64) DEFAULT NULL,
  `filter_column_blacklist` text,
  PRIMARY KEY (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_tables`
--

LOCK TABLES `directus_tables` WRITE;
/*!40000 ALTER TABLE `directus_tables` DISABLE KEYS */;
REPLACE INTO `directus_tables` VALUES ('directus_bookmarks','','',1,0,1,0,NULL,NULL,NULL,NULL,NULL,'user',NULL,NULL,NULL,NULL),('directus_files','','',1,0,1,0,NULL,NULL,NULL,NULL,NULL,'user',NULL,NULL,NULL,NULL),('directus_messages_recipients','','',1,0,1,0,NULL,NULL,NULL,NULL,NULL,'recipient',NULL,NULL,NULL,NULL),('directus_preferences','','',1,0,1,0,NULL,NULL,NULL,NULL,NULL,'user',NULL,NULL,NULL,NULL),('directus_users','','',1,0,1,0,NULL,NULL,NULL,NULL,NULL,'id',NULL,NULL,NULL,NULL),('skills_for_project','','',1,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `directus_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_users`
--

DROP TABLE IF EXISTS `directus_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT '1',
  `first_name` varchar(50) DEFAULT '',
  `last_name` varchar(50) DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `salt` varchar(255) DEFAULT '',
  `token` varchar(128) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT '',
  `reset_token` varchar(255) DEFAULT '',
  `reset_expiration` datetime DEFAULT NULL,
  `position` varchar(500) DEFAULT '',
  `email_messages` tinyint(1) DEFAULT '1',
  `last_login` datetime DEFAULT NULL,
  `last_access` datetime DEFAULT NULL,
  `last_page` varchar(255) DEFAULT '',
  `ip` varchar(50) DEFAULT '',
  `group` int(11) unsigned DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `avatar_file_id` int(11) unsigned DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `language` varchar(8) DEFAULT 'en',
  `timezone` varchar(32) DEFAULT 'America/New_York',
  `invite_token` varchar(255) DEFAULT NULL,
  `invite_date` datetime DEFAULT NULL,
  `invite_sender` int(11) unsigned DEFAULT NULL,
  `invite_accepted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `directus_users_email_unique` (`email`),
  UNIQUE KEY `directus_users_token_unique` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_users`
--

LOCK TABLES `directus_users` WRITE;
/*!40000 ALTER TABLE `directus_users` DISABLE KEYS */;
REPLACE INTO `directus_users` VALUES (1,1,'Admin','User','admin@admin.com','$2y$12$sC4Jzj1Fg.SF51rdLgJTo.tFZvefWG2R6eXjj2fyRhJhg5n1/5W2O','FV3C4b9h5eozIzSj','jRzJ8qIb4zpcjIp3SbVzlUVzYKxhGw7f','9501de1c94b73dc5e6489e3b216ee006e00bb67a','',NULL,'',1,'2018-03-13 17:16:37','2018-03-13 17:18:51','{\"path\":\"tables/skills\",\"route\":\"entries\"}','172.19.0.1',1,'//www.gravatar.com/avatar/64e1b8d34f425d19e1ee2ea7236d3028?s=200&d=identicon&r=g',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'en','America/New_York',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `directus_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '''The project title''',
  `summary` varchar(255) DEFAULT NULL COMMENT '''A brief summary of the project. To be shown on the card''',
  `weight` int(4) DEFAULT '5' COMMENT 'The minimum weight of the project. Describes the card size',
  `description` text COMMENT '''A complete description''',
  `page_id` int(11) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'work' COMMENT 'Select type of work',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
REPLACE INTO `projects` VALUES (1,1,0,'WADI','Email/SMS campaign delivery system',5,'# WADI\nThis was a tricky project when working at JLabs (Delhi). Had to build out a server tool to handle email and SMS delivery by fetching data from a *Google sheet!*\n',1,'work'),(2,1,0,'Bigstream','Data flows and process pipelines',5,'',1,'work'),(3,1,0,'Enfold UI','Personal Digital Locker. Did a lot of mehnat for this shit.',6,'',1,'work'),(4,1,0,'BooksPlus','AR for books',4,'',1,'work'),(5,1,0,'poundWISHES','Crowdfunding platform that enables animal-welfare organizations to create fundraising campaigns and find new donors.',10,'',1,'work'),(6,1,0,'Workstation deployment',NULL,8,'',1,'personal'),(7,1,0,'Shivani\'s Portfolio','Portfolio website for Shivani (UI-UX designer)',8,NULL,2,'other'),(8,1,0,'Trial','Trying things out',5,'#### just a trial\n\nhello world',2,'other');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '''Short name of the skill''',
  `rating` int(11) DEFAULT NULL COMMENT 'How good you are at this',
  `featured` tinyint(1) DEFAULT NULL COMMENT '''Will show up on the Skills page if this is featured''',
  `pos-mobile-x` int(1) DEFAULT '50' COMMENT '%X position in mobile',
  `pos-mobile-y` int(1) DEFAULT '50' COMMENT '%Y position on mobile',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
REPLACE INTO `skills` VALUES (1,'Google APIs',NULL,NULL,50,50),(2,'SQL',NULL,NULL,50,50),(3,'CSS',5,NULL,50,50),(4,'AngularJS',5,1,82,79),(5,'Python',3,1,66,61),(6,'Microservices',NULL,NULL,50,50),(7,'Wordpress',2,NULL,50,50),(8,'CakePHP',4,1,7,87),(9,'Ansible',3,NULL,50,50),(10,'Angular',4,1,23,27),(11,'Webpack',3,1,30,50);
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills_for_project`
--

DROP TABLE IF EXISTS `skills_for_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills_for_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills_for_project`
--

LOCK TABLES `skills_for_project` WRITE;
/*!40000 ALTER TABLE `skills_for_project` DISABLE KEYS */;
REPLACE INTO `skills_for_project` VALUES (1,0,1,1),(2,0,1,2),(3,0,2,3),(4,0,3,4),(5,0,3,5),(6,0,3,6),(7,0,4,3),(8,0,4,7),(9,0,5,8),(10,0,5,2),(11,0,6,9),(12,0,3,9),(13,0,7,10),(14,0,7,11);
/*!40000 ALTER TABLE `skills_for_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_pages`
--

DROP TABLE IF EXISTS `work_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '''''',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_pages`
--

LOCK TABLES `work_pages` WRITE;
/*!40000 ALTER TABLE `work_pages` DISABLE KEYS */;
REPLACE INTO `work_pages` VALUES (1,1,1),(2,2,1);
/*!40000 ALTER TABLE `work_pages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-18  9:31:11
