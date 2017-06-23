CREATE DATABASE  IF NOT EXISTS `minis` CHARACTER SET utf8;
USE `minis`;
-- MySQL dump 10.13  Distrib 5.7.9, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: minis
-- ------------------------------------------------------
-- Server version	5.6.33-0ubuntu0.14.04.1

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
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('00000000000001','jhipster','classpath:config/liquibase/changelog/00000000000000_initial_schema.xml','2017-03-11 14:13:04',1,'EXECUTED','7:053aa863743acfbd7662a9037a804f87','createTable, createIndex (x2), createTable (x2), addPrimaryKey, addForeignKeyConstraint (x2), loadData, dropDefaultValue, loadData (x2), createTable (x2), addPrimaryKey, createIndex (x2), addForeignKeyConstraint','',NULL,'3.4.1',NULL,NULL),('00000000000002','jhipster','classpath:config/liquibase/changelog/00000000000002_added_authorities.xml','2017-03-11 14:13:04',2,'EXECUTED','7:fd2fb2e8a28311e0d26ec0807d49ad9c','loadUpdateData','',NULL,'3.4.1',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,'\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7qccl6ocqoyxx07f4erujlyr4` (`language_id`),
  CONSTRAINT `FK_7qccl6ocqoyxx07f4erujlyr4` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,'1',NULL,'Obrazovanje',NULL),(2,'2',NULL,'Istraživanje',NULL);
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_name_translations`
--

DROP TABLE IF EXISTS `activity_name_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_name_translations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_id` bigint(20) DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_njkmm7l40x1bqbc6dwobvxuwe` (`activity_id`),
  KEY `FK_heo8uyd6qjmkb1yj2kgbjrnnl` (`language_id`),
  CONSTRAINT `FK_heo8uyd6qjmkb1yj2kgbjrnnl` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FK_njkmm7l40x1bqbc6dwobvxuwe` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_name_translations`
--

LOCK TABLES `activity_name_translations` WRITE;
/*!40000 ALTER TABLE `activity_name_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_name_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3m05lth5f32lxxthnga0hd8t1` (`language_id`),
  CONSTRAINT `FK_3m05lth5f32lxxthnga0hd8t1` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_name_translations`
--

DROP TABLE IF EXISTS `category_name_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_name_translations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_10pfcu6djwe967iety1wyalft` (`category_id`),
  KEY `FK_17gaiisq1hsckhdmw1fawmtoe` (`language_id`),
  CONSTRAINT `FK_10pfcu6djwe967iety1wyalft` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_17gaiisq1hsckhdmw1fawmtoe` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_name_translations`
--

LOCK TABLES `category_name_translations` WRITE;
/*!40000 ALTER TABLE `category_name_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_name_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_code` bigint(20) DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_fywt1lwmd5r4o5m3gqkt1i1bd` (`zip_code`),
  KEY `FK_2j7ti3o20ort55u8gm6fj31vf` (`language_id`),
  KEY `FK_ogqc1b0omhdvgo6vojoj95hv7` (`state_id`),
  CONSTRAINT `FK_2j7ti3o20ort55u8gm6fj31vf` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FK_ogqc1b0omhdvgo6vojoj95hv7` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_name_translations`
--

DROP TABLE IF EXISTS `class_name_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_name_translations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification_id` bigint(20) DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_k3egq5h6nbin4c6p272wcdvc4` (`classification_id`),
  KEY `FK_7g9fltkdmij80ba6lli0bdpho` (`language_id`),
  CONSTRAINT `FK_7g9fltkdmij80ba6lli0bdpho` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FK_k3egq5h6nbin4c6p272wcdvc4` FOREIGN KEY (`classification_id`) REFERENCES `classification` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_name_translations`
--

LOCK TABLES `class_name_translations` WRITE;
/*!40000 ALTER TABLE `class_name_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_name_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classification`
--

DROP TABLE IF EXISTS `classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `scheme_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_n5sp8wfdtc5vavxknujm5qxcy` (`language_id`),
  KEY `FK_qtrqmjf238jrbufg5d7muqemu` (`scheme_id`),
  CONSTRAINT `FK_n5sp8wfdtc5vavxknujm5qxcy` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FK_qtrqmjf238jrbufg5d7muqemu` FOREIGN KEY (`scheme_id`) REFERENCES `scheme` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classification`
--

LOCK TABLES `classification` WRITE;
/*!40000 ALTER TABLE `classification` DISABLE KEYS */;
/*!40000 ALTER TABLE `classification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `founder_name_translations`
--

DROP TABLE IF EXISTS `founder_name_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `founder_name_translations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_44ofdotnckk52l37g74m7h5pv` (`language_id`),
  CONSTRAINT `FK_44ofdotnckk52l37g74m7h5pv` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `founder_name_translations`
--

LOCK TABLES `founder_name_translations` WRITE;
/*!40000 ALTER TABLE `founder_name_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `founder_name_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function`
--

DROP TABLE IF EXISTS `function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oz` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ptr2h0ljvdn5n1qwifjyunmxf` (`language_id`),
  CONSTRAINT `FK_ptr2h0ljvdn5n1qwifjyunmxf` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function`
--

LOCK TABLES `function` WRITE;
/*!40000 ALTER TABLE `function` DISABLE KEYS */;
INSERT INTO `function` VALUES (1,NULL,'Dekan',NULL,NULL),(2,NULL,'Vođa tima',NULL,NULL),(3,NULL,'Profesor',NULL,NULL);
/*!40000 ALTER TABLE `function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_name_translations`
--

DROP TABLE IF EXISTS `function_name_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_name_translations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `function_id` bigint(20) DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_32rm4mabde4gj14fs6ko3jrtl` (`function_id`),
  KEY `FK_kwnkusbair7sol2k6rd08dccp` (`language_id`),
  CONSTRAINT `FK_32rm4mabde4gj14fs6ko3jrtl` FOREIGN KEY (`function_id`) REFERENCES `function` (`id`),
  CONSTRAINT `FK_kwnkusbair7sol2k6rd08dccp` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_name_translations`
--

LOCK TABLES `function_name_translations` WRITE;
/*!40000 ALTER TABLE `function_name_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `function_name_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution`
--

DROP TABLE IF EXISTS `institution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accreditation_date` date DEFAULT NULL,
  `accreditation_note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accreditation_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `creator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `ecrisid` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `founder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modification_date` datetime DEFAULT NULL,
  `maticni_broj` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mntr_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nio_id` int(11) DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orcid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownership_structure` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pib` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `place` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL,
  `record_status` int(11) DEFAULT NULL,
  `rescript_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town_ship_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `institution_status_id` bigint(20) DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `supet_institution_id` bigint(20) DEFAULT NULL,
  `town_ship_id` bigint(20) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5a3a7slldixai7adnl1a7q6qr` (`city_id`),
  KEY `FK_hss2t68mxpo0u5x2v7ila6ycd` (`institution_status_id`),
  KEY `FK_ot53voyutndwmwgww4xtub4e5` (`language_id`),
  KEY `FK_1883ah6xpk8bvfphbbykl6c07` (`state_id`),
  KEY `FK_g5wvrkg1mws3bq71t3rf4m2o` (`supet_institution_id`),
  KEY `FK_buq0nii9j60eilhrb9ebqbv9s` (`town_ship_id`),
  KEY `FK_tpdemkui8wj745enregcc2tqf` (`type_id`),
  CONSTRAINT `FK_1883ah6xpk8bvfphbbykl6c07` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`),
  CONSTRAINT `FK_5a3a7slldixai7adnl1a7q6qr` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `FK_buq0nii9j60eilhrb9ebqbv9s` FOREIGN KEY (`town_ship_id`) REFERENCES `town_ship` (`id`),
  CONSTRAINT `FK_g5wvrkg1mws3bq71t3rf4m2o` FOREIGN KEY (`supet_institution_id`) REFERENCES `institution` (`id`),
  CONSTRAINT `FK_hss2t68mxpo0u5x2v7ila6ycd` FOREIGN KEY (`institution_status_id`) REFERENCES `institution_status` (`id`),
  CONSTRAINT `FK_ot53voyutndwmwgww4xtub4e5` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FK_tpdemkui8wj745enregcc2tqf` FOREIGN KEY (`type_id`) REFERENCES `institution_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution`
--

LOCK TABLES `institution` WRITE;
/*!40000 ALTER TABLE `institution` DISABLE KEYS */;
INSERT INTO `institution` VALUES (1,NULL,NULL,NULL,NULL,NULL,'Trg Dositeja Obradovića 6','2017-03-11 14:26:36',NULL,NULL,NULL,'test@ftn.uns.ac.rs',NULL,NULL,NULL,NULL,NULL,NULL,'Fakultet tehničkih nauka','Faculty of technical sciences',NULL,NULL,NULL,NULL,'123132132',NULL,'Novi Sad',NULL,3,NULL,'Novi Sad','www.ftn.uns.ac.rs',NULL,NULL,NULL,1,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL,'-','2017-03-11 14:30:19',NULL,NULL,NULL,'test@test.com',NULL,NULL,NULL,NULL,NULL,NULL,'Institut Vinča','Vinča institute',NULL,NULL,NULL,NULL,'2313232131213',NULL,'Vinča',NULL,3,NULL,NULL,'www.vin.bg.ac.rs',NULL,NULL,NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `institution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_activitie`
--

DROP TABLE IF EXISTS `institution_activitie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_activitie` (
  `institutions_id` bigint(20) NOT NULL,
  `activities_id` bigint(20) NOT NULL,
  PRIMARY KEY (`institutions_id`,`activities_id`),
  KEY `FK_rcxnyj9fvtvae0fvdjyc24hcq` (`activities_id`),
  CONSTRAINT `FK_jfooravxipddqga8os6cgo9p5` FOREIGN KEY (`institutions_id`) REFERENCES `institution` (`id`),
  CONSTRAINT `FK_rcxnyj9fvtvae0fvdjyc24hcq` FOREIGN KEY (`activities_id`) REFERENCES `activity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_activitie`
--

LOCK TABLES `institution_activitie` WRITE;
/*!40000 ALTER TABLE `institution_activitie` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution_activitie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_classification`
--

DROP TABLE IF EXISTS `institution_classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_classification` (
  `institutions_id` bigint(20) NOT NULL,
  `classifications_id` bigint(20) NOT NULL,
  PRIMARY KEY (`institutions_id`,`classifications_id`),
  KEY `FK_tmysin14g43gg06p5pm1vqfs4` (`classifications_id`),
  CONSTRAINT `FK_elhiywlh618a3j4x5947rom1l` FOREIGN KEY (`institutions_id`) REFERENCES `institution` (`id`),
  CONSTRAINT `FK_tmysin14g43gg06p5pm1vqfs4` FOREIGN KEY (`classifications_id`) REFERENCES `classification` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_classification`
--

LOCK TABLES `institution_classification` WRITE;
/*!40000 ALTER TABLE `institution_classification` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution_classification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_file`
--

DROP TABLE IF EXISTS `institution_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_modified` datetime DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name_client` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `length` bigint(20) DEFAULT NULL,
  `license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uploader` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `institution_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_8ojro3on2o9pebs9f0fldw768` (`institution_id`),
  CONSTRAINT `FK_8ojro3on2o9pebs9f0fldw768` FOREIGN KEY (`institution_id`) REFERENCES `institution` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_file`
--

LOCK TABLES `institution_file` WRITE;
/*!40000 ALTER TABLE `institution_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_keywords_translations`
--

DROP TABLE IF EXISTS `institution_keywords_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_keywords_translations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `institution_id` bigint(20) DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gbp5wtvj7wj2abss3eurekpii` (`institution_id`),
  KEY `FK_gwlasvbq7ghy9odw18wmbr3qd` (`language_id`),
  CONSTRAINT `FK_gbp5wtvj7wj2abss3eurekpii` FOREIGN KEY (`institution_id`) REFERENCES `institution` (`id`),
  CONSTRAINT `FK_gwlasvbq7ghy9odw18wmbr3qd` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_keywords_translations`
--

LOCK TABLES `institution_keywords_translations` WRITE;
/*!40000 ALTER TABLE `institution_keywords_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution_keywords_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_name_translations`
--

DROP TABLE IF EXISTS `institution_name_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_name_translations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `institution_id` bigint(20) DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_oasnrfc6peuy07lqumwb97nom` (`institution_id`),
  KEY `FK_hhwjml76qil9lovrqhtfmsve5` (`language_id`),
  CONSTRAINT `FK_hhwjml76qil9lovrqhtfmsve5` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FK_oasnrfc6peuy07lqumwb97nom` FOREIGN KEY (`institution_id`) REFERENCES `institution` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_name_translations`
--

LOCK TABLES `institution_name_translations` WRITE;
/*!40000 ALTER TABLE `institution_name_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution_name_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_research_area`
--

DROP TABLE IF EXISTS `institution_research_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_research_area` (
  `institutions_id` bigint(20) NOT NULL,
  `research_areas_id` bigint(20) NOT NULL,
  PRIMARY KEY (`institutions_id`,`research_areas_id`),
  KEY `FK_i0dyt3mhvmbgn4cq6utx961mp` (`research_areas_id`),
  CONSTRAINT `FK_i0dyt3mhvmbgn4cq6utx961mp` FOREIGN KEY (`research_areas_id`) REFERENCES `research_area` (`id`),
  CONSTRAINT `FK_mc2nfq5akohl70u5x5jv0nhw5` FOREIGN KEY (`institutions_id`) REFERENCES `institution` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_research_area`
--

LOCK TABLES `institution_research_area` WRITE;
/*!40000 ALTER TABLE `institution_research_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution_research_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_status`
--

DROP TABLE IF EXISTS `institution_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qr3wfvfh3jg7sen926bajcb6n` (`language_id`),
  CONSTRAINT `FK_qr3wfvfh3jg7sen926bajcb6n` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_status`
--

LOCK TABLES `institution_status` WRITE;
/*!40000 ALTER TABLE `institution_status` DISABLE KEYS */;
INSERT INTO `institution_status` VALUES (1,NULL,'U izgradnji',NULL),(2,NULL,'Aktivan',NULL),(3,NULL,'Akreditovan',NULL),(4,NULL,'Neakreditovan',NULL);
/*!40000 ALTER TABLE `institution_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_status_name_translations`
--

DROP TABLE IF EXISTS `institution_status_name_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_status_name_translations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `institution_status_id` bigint(20) DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_td75rvt9idjvpvac1b8nfp4sl` (`institution_status_id`),
  KEY `FK_4ri5qv9fohwt8a5rvu0cq8wdg` (`language_id`),
  CONSTRAINT `FK_4ri5qv9fohwt8a5rvu0cq8wdg` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FK_td75rvt9idjvpvac1b8nfp4sl` FOREIGN KEY (`institution_status_id`) REFERENCES `institution_status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_status_name_translations`
--

LOCK TABLES `institution_status_name_translations` WRITE;
/*!40000 ALTER TABLE `institution_status_name_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution_status_name_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_type`
--

DROP TABLE IF EXISTS `institution_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_rrouugemvx8tdhmfbjgqc4pqg` (`language_id`),
  CONSTRAINT `FK_rrouugemvx8tdhmfbjgqc4pqg` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_type`
--

LOCK TABLES `institution_type` WRITE;
/*!40000 ALTER TABLE `institution_type` DISABLE KEYS */;
INSERT INTO `institution_type` VALUES (1,NULL,'Istraživački centar',NULL),(2,NULL,'Fakultet',NULL),(3,NULL,'Univerzitet',NULL);
/*!40000 ALTER TABLE `institution_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_type_name_translations`
--

DROP TABLE IF EXISTS `institution_type_name_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_type_name_translations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `institution_type_id` bigint(20) DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ku324vjyij9vrbgsqkyn62ilu` (`institution_type_id`),
  KEY `FK_h35l4fy3jswa3vh8tyds6ngxq` (`language_id`),
  CONSTRAINT `FK_h35l4fy3jswa3vh8tyds6ngxq` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FK_ku324vjyij9vrbgsqkyn62ilu` FOREIGN KEY (`institution_type_id`) REFERENCES `institution_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_type_name_translations`
--

LOCK TABLES `institution_type_name_translations` WRITE;
/*!40000 ALTER TABLE `institution_type_name_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution_type_name_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhi_authority`
--

DROP TABLE IF EXISTS `jhi_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhi_authority` (
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhi_authority`
--

LOCK TABLES `jhi_authority` WRITE;
/*!40000 ALTER TABLE `jhi_authority` DISABLE KEYS */;
INSERT INTO `jhi_authority` VALUES ('ROLE_ADMIN'),('ROLE_INSTITUTION_ADMIN'),('ROLE_RESEARCHER'),('ROLE_USER');
/*!40000 ALTER TABLE `jhi_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhi_persistent_audit_event`
--

DROP TABLE IF EXISTS `jhi_persistent_audit_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhi_persistent_audit_event` (
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `principal` varchar(255) NOT NULL,
  `event_date` timestamp NULL DEFAULT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `idx_persistent_audit_event` (`principal`,`event_date`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhi_persistent_audit_event`
--

LOCK TABLES `jhi_persistent_audit_event` WRITE;
/*!40000 ALTER TABLE `jhi_persistent_audit_event` DISABLE KEYS */;
INSERT INTO `jhi_persistent_audit_event` VALUES (1,'admin','2017-03-11 13:35:31','AUTHENTICATION_SUCCESS'),(2,'admin','2017-03-11 13:38:16','AUTHENTICATION_SUCCESS'),(3,'djura@djuraminis.com','2017-03-11 13:39:12','AUTHENTICATION_SUCCESS'),(4,'djura@djuraminis.com','2017-03-11 14:24:33','AUTHENTICATION_SUCCESS'),(5,'djura@djuraminis.com','2017-03-11 14:28:12','AUTHENTICATION_SUCCESS');
/*!40000 ALTER TABLE `jhi_persistent_audit_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhi_persistent_audit_evt_data`
--

DROP TABLE IF EXISTS `jhi_persistent_audit_evt_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhi_persistent_audit_evt_data` (
  `event_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`event_id`,`name`),
  KEY `idx_persistent_audit_evt_data` (`event_id`),
  CONSTRAINT `fk_evt_pers_audit_evt_data` FOREIGN KEY (`event_id`) REFERENCES `jhi_persistent_audit_event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhi_persistent_audit_evt_data`
--

LOCK TABLES `jhi_persistent_audit_evt_data` WRITE;
/*!40000 ALTER TABLE `jhi_persistent_audit_evt_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `jhi_persistent_audit_evt_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhi_user`
--

DROP TABLE IF EXISTS `jhi_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhi_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `PASSWORD` varchar(60) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `activated` bit(1) NOT NULL,
  `lang_key` varchar(5) DEFAULT NULL,
  `activation_key` varchar(20) DEFAULT NULL,
  `reset_key` varchar(20) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reset_date` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  `institution_id` bigint(20) DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `idx_user_login` (`login`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `idx_user_email` (`email`),
  KEY `FK_ak67h4v7rgvk94vt84by9netg` (`institution_id`),
  KEY `FK_cd0pq1t2rq74ta114ctinj7hn` (`person_id`),
  CONSTRAINT `FK_ak67h4v7rgvk94vt84by9netg` FOREIGN KEY (`institution_id`) REFERENCES `institution` (`id`),
  CONSTRAINT `FK_cd0pq1t2rq74ta114ctinj7hn` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhi_user`
--

LOCK TABLES `jhi_user` WRITE;
/*!40000 ALTER TABLE `jhi_user` DISABLE KEYS */;
INSERT INTO `jhi_user` VALUES (2,'anonymousUser','$2a$10$j8S5d7Sr7.8VTOYNviDPOeWX8KcYILUVJBsYV83Y5NtECayypx9lO','Anonymous','User','anonymous@localhost','','en',NULL,NULL,'system','2017-03-11 13:13:04',NULL,NULL,NULL,NULL,NULL),(3,'admin','$2a$10$Jyd2dG..iJc3fY8UZEuoc.32fdIxC9PlphEragAVDzK1ZBs6vRxUi','Administrator','Administrator','admin@localhost','','en',NULL,NULL,'system','2017-03-11 13:13:04',NULL,'admin','2017-03-11 13:37:45',NULL,NULL),(4,'user','$2a$10$VEjxo0jq2YG9Rbk2HmX9S.k1uZBGYUHdUcid3g/vfiEl7lwWgOH/K','User','User','user@localhost','','en',NULL,NULL,'system','2017-03-11 13:13:04',NULL,NULL,NULL,NULL,NULL),(5,'djura@djuraminis.com','$2a$10$Jyd2dG..iJc3fY8UZEuoc.32fdIxC9PlphEragAVDzK1ZBs6vRxUi','Djura','Djuric','djura@djuraminis.com','',NULL,'82446024143139770497',NULL,'admin','2017-03-11 13:31:56',NULL,'admin','2017-03-11 13:37:24',2,3),(6,'pera@peraminis.com','$2a$10$GPC6OTSNoJf0u2qF8L0dMeheZelb5DQ5DtOnEVFBK2udTl8BPt2qi','Petar','Petrovic','pera@peraminis.com','',NULL,'13528046427645867350',NULL,'admin','2017-03-11 13:36:29',NULL,'admin','2017-03-11 13:36:29',1,1);
/*!40000 ALTER TABLE `jhi_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhi_user_authority`
--

DROP TABLE IF EXISTS `jhi_user_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhi_user_authority` (
  `user_id` bigint(20) NOT NULL,
  `authority_name` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`,`authority_name`),
  KEY `fk_authority_name` (`authority_name`),
  CONSTRAINT `fk_authority_name` FOREIGN KEY (`authority_name`) REFERENCES `jhi_authority` (`name`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `jhi_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhi_user_authority`
--

LOCK TABLES `jhi_user_authority` WRITE;
/*!40000 ALTER TABLE `jhi_user_authority` DISABLE KEYS */;
INSERT INTO `jhi_user_authority` VALUES (3,'ROLE_ADMIN'),(5,'ROLE_INSTITUTION_ADMIN'),(6,'ROLE_INSTITUTION_ADMIN'),(3,'ROLE_USER'),(4,'ROLE_USER'),(5,'ROLE_USER'),(6,'ROLE_USER');
/*!40000 ALTER TABLE `jhi_user_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `already_registered` bit(1) DEFAULT NULL,
  `bibliography` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `creator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jmbg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modification_date` datetime DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mntrn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orcid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phones` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `place_of_birth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `record_status` int(11) DEFAULT NULL,
  `research_areas` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_of_residence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `township_of_birth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `township_of_residence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `person_status_id` bigint(20) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_4xr2ic0okq7bk55srprpmwqen` (`jmbg`),
  KEY `FK_4fnrs40gfje9kdnt1codup2io` (`language_id`),
  KEY `FK_81iyrah115b2mk9oav6vato7w` (`person_status_id`),
  KEY `FK_pe5dn300x9t60690evt5b02qt` (`type_id`),
  KEY `FK_77e12pjkm9v423j9hd3u10bk1` (`user_id`),
  CONSTRAINT `FK_4fnrs40gfje9kdnt1codup2io` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FK_77e12pjkm9v423j9hd3u10bk1` FOREIGN KEY (`user_id`) REFERENCES `jhi_user` (`id`),
  CONSTRAINT `FK_81iyrah115b2mk9oav6vato7w` FOREIGN KEY (`person_status_id`) REFERENCES `person_status` (`id`),
  CONSTRAINT `FK_pe5dn300x9t60690evt5b02qt` FOREIGN KEY (`type_id`) REFERENCES `person_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,NULL,NULL,NULL,NULL,'2017-03-11 14:21:09',NULL,'1963-02-28',NULL,'Petar','1','123123123',NULL,'2017-03-11 14:23:39','Petrovic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL,'2017-03-11 14:22:06',NULL,'1990-02-09',NULL,'Djura','1','123321123',NULL,'2017-03-11 14:22:56','Djuric',NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_bibliography_translations`
--

DROP TABLE IF EXISTS `person_bibliography_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_bibliography_translations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bibliography` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6adjakc561756mlxoe9np57hf` (`language_id`),
  KEY `FK_hs9wgu1grg1625xwmd5ovo7o8` (`person_id`),
  CONSTRAINT `FK_6adjakc561756mlxoe9np57hf` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FK_hs9wgu1grg1625xwmd5ovo7o8` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_bibliography_translations`
--

LOCK TABLES `person_bibliography_translations` WRITE;
/*!40000 ALTER TABLE `person_bibliography_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_bibliography_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_category`
--

DROP TABLE IF EXISTS `person_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fixe0sru3llyujdvfq8uufqu5` (`category_id`),
  KEY `FK_ndc9l2t1rbsm3logwi04vr6ec` (`person_id`),
  CONSTRAINT `FK_fixe0sru3llyujdvfq8uufqu5` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_ndc9l2t1rbsm3logwi04vr6ec` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_category`
--

LOCK TABLES `person_category` WRITE;
/*!40000 ALTER TABLE `person_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_classification`
--

DROP TABLE IF EXISTS `person_classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_classification` (
  `persons_id` bigint(20) NOT NULL,
  `classifications_id` bigint(20) NOT NULL,
  PRIMARY KEY (`persons_id`,`classifications_id`),
  KEY `FK_els3pj1dljnf2vexj76ohxm9` (`classifications_id`),
  CONSTRAINT `FK_64jibbc72l3h82m2cv8pot8h3` FOREIGN KEY (`persons_id`) REFERENCES `person` (`id`),
  CONSTRAINT `FK_els3pj1dljnf2vexj76ohxm9` FOREIGN KEY (`classifications_id`) REFERENCES `classification` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_classification`
--

LOCK TABLES `person_classification` WRITE;
/*!40000 ALTER TABLE `person_classification` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_classification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_file`
--

DROP TABLE IF EXISTS `person_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_modified` datetime DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name_client` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `length` bigint(20) DEFAULT NULL,
  `license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uploader` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5qhjhej8jvq7nkey0dw5dfjn7` (`person_id`),
  CONSTRAINT `FK_5qhjhej8jvq7nkey0dw5dfjn7` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_file`
--

LOCK TABLES `person_file` WRITE;
/*!40000 ALTER TABLE `person_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_institution`
--

DROP TABLE IF EXISTS `person_institution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_institution` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employment_percentage` int(11) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `max_month_engagement` int(11) DEFAULT NULL,
  `research_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `function_id` bigint(20) DEFAULT NULL,
  `institution_id` bigint(20) DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  `position_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_87qtuoixfqwp2s777rm9v7sgs` (`function_id`),
  KEY `FK_k588x1i8f07fbw411iw70oa3a` (`institution_id`),
  KEY `FK_j98pcatca9y6y8iwf85uff56c` (`person_id`),
  KEY `FK_kulwsiot763p47goavac5bkee` (`position_id`),
  CONSTRAINT `FK_87qtuoixfqwp2s777rm9v7sgs` FOREIGN KEY (`function_id`) REFERENCES `function` (`id`),
  CONSTRAINT `FK_j98pcatca9y6y8iwf85uff56c` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`),
  CONSTRAINT `FK_k588x1i8f07fbw411iw70oa3a` FOREIGN KEY (`institution_id`) REFERENCES `institution` (`id`),
  CONSTRAINT `FK_kulwsiot763p47goavac5bkee` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_institution`
--

LOCK TABLES `person_institution` WRITE;
/*!40000 ALTER TABLE `person_institution` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_institution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_keywords_translations`
--

DROP TABLE IF EXISTS `person_keywords_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_keywords_translations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mb0u3l9ii86gc5p2kb8lu5td5` (`language_id`),
  KEY `FK_f04yj9moge8tcrhrur1eqlx92` (`person_id`),
  CONSTRAINT `FK_f04yj9moge8tcrhrur1eqlx92` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`),
  CONSTRAINT `FK_mb0u3l9ii86gc5p2kb8lu5td5` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_keywords_translations`
--

LOCK TABLES `person_keywords_translations` WRITE;
/*!40000 ALTER TABLE `person_keywords_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_keywords_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_name`
--

DROP TABLE IF EXISTS `person_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_name` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_845mosnmcu4043c655mhq6kft` (`person_id`),
  CONSTRAINT `FK_845mosnmcu4043c655mhq6kft` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_name`
--

LOCK TABLES `person_name` WRITE;
/*!40000 ALTER TABLE `person_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_position`
--

DROP TABLE IF EXISTS `person_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_position` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  `position_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_baonbfxog1h88w9cw3bk51w8u` (`person_id`),
  KEY `FK_l312mdo2uvv1wseva25k1rxaa` (`position_id`),
  CONSTRAINT `FK_baonbfxog1h88w9cw3bk51w8u` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`),
  CONSTRAINT `FK_l312mdo2uvv1wseva25k1rxaa` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_position`
--

LOCK TABLES `person_position` WRITE;
/*!40000 ALTER TABLE `person_position` DISABLE KEYS */;
INSERT INTO `person_position` VALUES (4,NULL,'2017-03-11 14:23:38',1,1),(5,NULL,'2017-03-11 14:24:10',3,2);
/*!40000 ALTER TABLE `person_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_status`
--

DROP TABLE IF EXISTS `person_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qgj0ld6myxs6mno4v1glorgg8` (`language_id`),
  CONSTRAINT `FK_qgj0ld6myxs6mno4v1glorgg8` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_status`
--

LOCK TABLES `person_status` WRITE;
/*!40000 ALTER TABLE `person_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_status_name_translations`
--

DROP TABLE IF EXISTS `person_status_name_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_status_name_translations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `person_status_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3oypqtlbyvsvac89d8bahli4n` (`language_id`),
  KEY `FK_eyu9b57v68x3yfd5peanocnby` (`person_status_id`),
  CONSTRAINT `FK_3oypqtlbyvsvac89d8bahli4n` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FK_eyu9b57v68x3yfd5peanocnby` FOREIGN KEY (`person_status_id`) REFERENCES `person_status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_status_name_translations`
--

LOCK TABLES `person_status_name_translations` WRITE;
/*!40000 ALTER TABLE `person_status_name_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_status_name_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_type`
--

DROP TABLE IF EXISTS `person_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sc2py9dc3c58cyfm3hh2r9rm4` (`language_id`),
  CONSTRAINT `FK_sc2py9dc3c58cyfm3hh2r9rm4` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_type`
--

LOCK TABLES `person_type` WRITE;
/*!40000 ALTER TABLE `person_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_type_name_translations`
--

DROP TABLE IF EXISTS `person_type_name_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_type_name_translations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `person_type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_aqfcn2ul2i2iu231tuggj8094` (`language_id`),
  KEY `FK_7fwgm6k7orl90bi0jplnu065a` (`person_type_id`),
  CONSTRAINT `FK_7fwgm6k7orl90bi0jplnu065a` FOREIGN KEY (`person_type_id`) REFERENCES `person_type` (`id`),
  CONSTRAINT `FK_aqfcn2ul2i2iu231tuggj8094` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_type_name_translations`
--

LOCK TABLES `person_type_name_translations` WRITE;
/*!40000 ALTER TABLE `person_type_name_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_type_name_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oz` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_44nbmwtj3we9qwqtcvm7bu6in` (`language_id`),
  CONSTRAINT `FK_44nbmwtj3we9qwqtcvm7bu6in` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,NULL,'Doktor nauka',NULL,NULL),(2,NULL,'Asistent',NULL,NULL);
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_name_translations`
--

DROP TABLE IF EXISTS `position_name_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position_name_translations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `position_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3ul4cevtrblis5m4ah41q9xgb` (`language_id`),
  KEY `FK_76a12j21gmrv2ksjemlg4nj6p` (`position_id`),
  CONSTRAINT `FK_3ul4cevtrblis5m4ah41q9xgb` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FK_76a12j21gmrv2ksjemlg4nj6p` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_name_translations`
--

LOCK TABLES `position_name_translations` WRITE;
/*!40000 ALTER TABLE `position_name_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `position_name_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilege` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege`
--

LOCK TABLES `privilege` WRITE;
/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;
/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `research_area`
--

DROP TABLE IF EXISTS `research_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `research_area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mto1qj8repde8b9pangv40mn8` (`language_id`),
  CONSTRAINT `FK_mto1qj8repde8b9pangv40mn8` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `research_area`
--

LOCK TABLES `research_area` WRITE;
/*!40000 ALTER TABLE `research_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `research_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `research_area_name_translations`
--

DROP TABLE IF EXISTS `research_area_name_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `research_area_name_translations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `research_area_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ejp3qk3kuexv1p8jd1bruilx4` (`language_id`),
  KEY `FK_fe1911v86kafmogpbn1wydy99` (`research_area_id`),
  CONSTRAINT `FK_ejp3qk3kuexv1p8jd1bruilx4` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FK_fe1911v86kafmogpbn1wydy99` FOREIGN KEY (`research_area_id`) REFERENCES `research_area` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `research_area_name_translations`
--

LOCK TABLES `research_area_name_translations` WRITE;
/*!40000 ALTER TABLE `research_area_name_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `research_area_name_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_privilage`
--

DROP TABLE IF EXISTS `role_privilage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_privilage` (
  `roles_id` bigint(20) NOT NULL,
  `privilages_id` bigint(20) NOT NULL,
  PRIMARY KEY (`roles_id`,`privilages_id`),
  KEY `FK_41ch89lggmrbyxp5l20du1mvt` (`privilages_id`),
  CONSTRAINT `FK_41ch89lggmrbyxp5l20du1mvt` FOREIGN KEY (`privilages_id`) REFERENCES `privilege` (`id`),
  CONSTRAINT `FK_hrcdctr8coq8ouk1olaig9o6q` FOREIGN KEY (`roles_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_privilage`
--

LOCK TABLES `role_privilage` WRITE;
/*!40000 ALTER TABLE `role_privilage` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_privilage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheme`
--

DROP TABLE IF EXISTS `scheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheme` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3l4hcny5edl9sjw1bmkw8lw8f` (`language_id`),
  CONSTRAINT `FK_3l4hcny5edl9sjw1bmkw8lw8f` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheme`
--

LOCK TABLES `scheme` WRITE;
/*!40000 ALTER TABLE `scheme` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheme_name_translations`
--

DROP TABLE IF EXISTS `scheme_name_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheme_name_translations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `scheme_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cct7es6dmfkmtjq3k7hqfs6t1` (`language_id`),
  KEY `FK_jsiq8c7ei4mkdyoyajpcp0w11` (`scheme_id`),
  CONSTRAINT `FK_cct7es6dmfkmtjq3k7hqfs6t1` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FK_jsiq8c7ei4mkdyoyajpcp0w11` FOREIGN KEY (`scheme_id`) REFERENCES `scheme` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheme_name_translations`
--

LOCK TABLES `scheme_name_translations` WRITE;
/*!40000 ALTER TABLE `scheme_name_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheme_name_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cities_registered` bit(1) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_k718hsixv6aunvw42fhgrywcw` (`language_id`),
  CONSTRAINT `FK_k718hsixv6aunvw42fhgrywcw` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,NULL,NULL,'Srbija',NULL);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title_institution`
--

DROP TABLE IF EXISTS `title_institution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title_institution` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `institution_id` bigint(20) DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2oqqiv97w2iw9hkaqgp17t6l` (`institution_id`),
  KEY `FK_b58ebw2tha19py9nsjjy8n2da` (`person_id`),
  CONSTRAINT `FK_2oqqiv97w2iw9hkaqgp17t6l` FOREIGN KEY (`institution_id`) REFERENCES `institution` (`id`),
  CONSTRAINT `FK_b58ebw2tha19py9nsjjy8n2da` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title_institution`
--

LOCK TABLES `title_institution` WRITE;
/*!40000 ALTER TABLE `title_institution` DISABLE KEYS */;
/*!40000 ALTER TABLE `title_institution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `town_ship`
--

DROP TABLE IF EXISTS `town_ship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `town_ship` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_o5c3mr2dr1tj6prni3cfucl12` (`language_id`),
  KEY `FK_6hmousctgr4b5q3ryakg606eu` (`state_id`),
  CONSTRAINT `FK_6hmousctgr4b5q3ryakg606eu` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`),
  CONSTRAINT `FK_o5c3mr2dr1tj6prni3cfucl12` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `town_ship`
--

LOCK TABLES `town_ship` WRITE;
/*!40000 ALTER TABLE `town_ship` DISABLE KEYS */;
/*!40000 ALTER TABLE `town_ship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userpassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `institution_id` bigint(20) DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  `user_group_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9wrc9t91qaxn9vfio07jp87kr` (`institution_id`),
  KEY `FK_kebo4ns9vbd4bbx81x7uylgh5` (`language_id`),
  KEY `FK_fqfn7sv6xx80uqwsmnal0tipj` (`person_id`),
  KEY `FK_4mjv79h23en2i7hcdq35chvbe` (`user_group_id`),
  CONSTRAINT `FK_4mjv79h23en2i7hcdq35chvbe` FOREIGN KEY (`user_group_id`) REFERENCES `user_group` (`id`),
  CONSTRAINT `FK_9wrc9t91qaxn9vfio07jp87kr` FOREIGN KEY (`institution_id`) REFERENCES `institution` (`id`),
  CONSTRAINT `FK_fqfn7sv6xx80uqwsmnal0tipj` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`),
  CONSTRAINT `FK_kebo4ns9vbd4bbx81x7uylgh5` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group`
--

LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group_role`
--

DROP TABLE IF EXISTS `user_group_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group_role` (
  `user_groups_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_groups_id`,`roles_id`),
  KEY `FK_iog2s2n9ycn7pm0ufeucwjbfm` (`roles_id`),
  CONSTRAINT `FK_1axxbyvbtx4yyr1av1e33k52g` FOREIGN KEY (`user_groups_id`) REFERENCES `user_group` (`id`),
  CONSTRAINT `FK_iog2s2n9ycn7pm0ufeucwjbfm` FOREIGN KEY (`roles_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group_role`
--

LOCK TABLES `user_group_role` WRITE;
/*!40000 ALTER TABLE `user_group_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_group_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-11 15:53:13
