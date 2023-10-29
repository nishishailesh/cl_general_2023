-- MariaDB dump 10.19  Distrib 10.11.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: clg
-- ------------------------------------------------------
-- Server version	10.11.3-MariaDB-1

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
-- Table structure for table `Laboratory`
--

DROP TABLE IF EXISTS `Laboratory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Laboratory` (
  `Laboratory` varchar(200) NOT NULL,
  PRIMARY KEY (`Laboratory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `name` varchar(100) NOT NULL,
  `value` text DEFAULT NULL,
  `value_blob` mediumblob DEFAULT NULL,
  `help` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(100) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dementia`
--

DROP TABLE IF EXISTS `dementia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dementia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Minutes` varchar(10) DEFAULT NULL,
  `Hours` varchar(10) DEFAULT NULL,
  `DayM` varchar(10) DEFAULT NULL,
  `Month` varchar(10) DEFAULT NULL,
  `DayW` varchar(10) DEFAULT NULL,
  `Text` varchar(200) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `emergency_id`
--

DROP TABLE IF EXISTS `emergency_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emergency_id` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sample_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sample_id` (`sample_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `examination`
--

DROP TABLE IF EXISTS `examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examination` (
  `examination_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sample_requirement` varchar(100) NOT NULL DEFAULT 'NULL',
  `edit_specification` varchar(5000) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `request_route` varchar(300) DEFAULT NULL,
  `display_route` varchar(300) DEFAULT NULL,
  `print_route` varchar(300) DEFAULT NULL,
  `request_route_priority` varchar(10) DEFAULT NULL,
  `display_route_priority` varchar(10) DEFAULT NULL,
  `print_route_priority` varchar(10) DEFAULT NULL,
  `display_format` varchar(50) DEFAULT NULL,
  `insert_minimum_authorization_level` int(11) DEFAULT NULL,
  `update_minimum_authorization_level` int(11) DEFAULT NULL,
  `select_minimum_authorization_level` int(11) DEFAULT NULL,
  `delete_minimum_authorization_level` int(11) DEFAULT NULL,
  `append_user` int(11) DEFAULT NULL COMMENT 'if ''yes;, it will add last editor name beside result',
  `default_value` varchar(200) DEFAULT NULL,
  `equipment` varchar(10) DEFAULT NULL,
  `display_help` text DEFAULT NULL COMMENT 'help on screen',
  `print_help` text DEFAULT NULL COMMENT 'help in report',
  `accr_status` varchar(10) DEFAULT NULL COMMENT 'if ''yes'', it report will display symbol',
  PRIMARY KEY (`examination_id`),
  KEY `sample_requirement` (`sample_requirement`)
) ENGINE=InnoDB AUTO_INCREMENT=105039 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `examination_field_specification`
--

DROP TABLE IF EXISTS `examination_field_specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examination_field_specification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examination_id` int(11) DEFAULT NULL,
  `ftype` varchar(50) DEFAULT NULL,
  `table` varchar(50) DEFAULT NULL,
  `field` varchar(50) DEFAULT NULL,
  `field_description` varchar(50) DEFAULT NULL,
  `where` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `host_code`
--

DROP TABLE IF EXISTS `host_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_code` (
  `examination_id` int(11) NOT NULL,
  `equipment` enum('XL_640','XL_1000','VITROS3600','RP500','TOSOH') NOT NULL,
  `code` varchar(10) NOT NULL,
  PRIMARY KEY (`equipment`,`examination_id`),
  KEY `examination_id` (`examination_id`),
  CONSTRAINT `host_code_ibfk_1` FOREIGN KEY (`examination_id`) REFERENCES `examination` (`examination_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `label_group`
--

DROP TABLE IF EXISTS `label_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `label_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `lable_list` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examination_id` varchar(30) DEFAULT NULL,
  `caption` varchar(10) DEFAULT NULL,
  `barcode_format` varchar(50) DEFAULT NULL,
  `data` text NOT NULL,
  `other_data` varchar(5000) NOT NULL,
  `border` int(11) NOT NULL,
  `fontsize` varchar(100) NOT NULL,
  `fontweight` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `labels_old`
--

DROP TABLE IF EXISTS `labels_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labels_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examination_id` varchar(30) DEFAULT NULL,
  `caption` varchar(10) DEFAULT NULL,
  `barcode_format` varchar(50) DEFAULT NULL,
  `data` text NOT NULL,
  `other_data` varchar(5000) NOT NULL,
  `border` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lis_to_vitros_sample_type`
--

DROP TABLE IF EXISTS `lis_to_vitros_sample_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lis_to_vitros_sample_type` (
  `lis_sample_type` varchar(100) NOT NULL,
  `vitros_sample_type` varchar(10) NOT NULL,
  PRIMARY KEY (`lis_sample_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu_new`
--

DROP TABLE IF EXISTS `menu_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `ex_list` varchar(600) NOT NULL,
  `route` varchar(200) NOT NULL,
  `default_value` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=902 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu_view`
--

DROP TABLE IF EXISTS `menu_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_view` (
  `id` int(11) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `unique_id` varchar(200) NOT NULL,
  `additional_search_id` varchar(200) NOT NULL,
  `additional_range_search_id` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu_worklist`
--

DROP TABLE IF EXISTS `menu_worklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_worklist` (
  `id` int(11) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `unique_id` varchar(200) NOT NULL,
  `additional_search_id` varchar(200) NOT NULL,
  `additional_range_search_id` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `niramaya_id`
--

DROP TABLE IF EXISTS `niramaya_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `niramaya_id` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sample_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sample_id` (`sample_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opd_id`
--

DROP TABLE IF EXISTS `opd_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opd_id` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sample_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sample_id` (`sample_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5365 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `primary_result`
--

DROP TABLE IF EXISTS `primary_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `primary_result` (
  `sample_id` bigint(20) NOT NULL,
  `examination_id` int(11) NOT NULL,
  `result` varchar(5000) NOT NULL,
  `extra` varchar(5000) DEFAULT NULL,
  `uniq` varchar(100) NOT NULL,
  PRIMARY KEY (`sample_id`,`examination_id`,`uniq`),
  KEY `examination_id` (`examination_id`),
  CONSTRAINT `primary_result_ibfk_1` FOREIGN KEY (`sample_id`) REFERENCES `sample_link` (`sample_id`),
  CONSTRAINT `primary_result_ibfk_2` FOREIGN KEY (`examination_id`) REFERENCES `examination` (`examination_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `primary_result_blob`
--

DROP TABLE IF EXISTS `primary_result_blob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `primary_result_blob` (
  `sample_id` bigint(20) NOT NULL,
  `examination_id` int(11) NOT NULL,
  `uniq` varchar(100) NOT NULL,
  `result` mediumblob DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `extra` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`sample_id`,`examination_id`,`uniq`),
  KEY `examination_id` (`examination_id`),
  CONSTRAINT `primary_result_blob_ibfk_1` FOREIGN KEY (`sample_id`) REFERENCES `sample_link` (`sample_id`),
  CONSTRAINT `primary_result_blob_ibfk_3` FOREIGN KEY (`examination_id`) REFERENCES `examination` (`examination_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qc_id`
--

DROP TABLE IF EXISTS `qc_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_id` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sample_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sample_id` (`sample_id`)
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qc_lot`
--

DROP TABLE IF EXISTS `qc_lot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_lot` (
  `qc_lot` varchar(100) NOT NULL,
  `in_use` varchar(100) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`qc_lot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminder` varchar(100) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `response` varchar(100) DEFAULT NULL,
  `completed` int(11) DEFAULT NULL,
  `recording_time` varchar(100) DEFAULT NULL,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `request_id`
--

DROP TABLE IF EXISTS `request_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_id` (
  `id` bigint(20) NOT NULL,
  `sample_id` bigint(20) NOT NULL,
  PRIMARY KEY (`sample_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `sample_id` bigint(20) NOT NULL,
  `examination_id` int(11) NOT NULL,
  `result` varchar(5000) DEFAULT NULL,
  `extra` varchar(5000) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  `recorded_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sample_id`,`examination_id`),
  KEY `examination_id` (`examination_id`),
  KEY `recorded_by` (`recorded_by`),
  CONSTRAINT `result_ibfk_1` FOREIGN KEY (`examination_id`) REFERENCES `examination` (`examination_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `result_ibfk_2` FOREIGN KEY (`sample_id`) REFERENCES `sample_link` (`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `result_blob`
--

DROP TABLE IF EXISTS `result_blob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result_blob` (
  `sample_id` bigint(20) NOT NULL,
  `examination_id` int(11) NOT NULL,
  `result` mediumblob DEFAULT NULL,
  `extra` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  `recorded_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sample_id`,`examination_id`),
  KEY `examination_id` (`examination_id`),
  KEY `recorded_by` (`recorded_by`),
  CONSTRAINT `result_blob_ibfk_1` FOREIGN KEY (`examination_id`) REFERENCES `examination` (`examination_id`) ON UPDATE CASCADE,
  CONSTRAINT `result_blob_ibfk_3` FOREIGN KEY (`sample_id`) REFERENCES `sample_link` (`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `route_priority`
--

DROP TABLE IF EXISTS `route_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `route_priority` (
  `route` varchar(100) NOT NULL,
  `node` varchar(100) NOT NULL,
  `request_route_priority` varchar(10) NOT NULL,
  `display_route_priority` varchar(10) NOT NULL,
  `print_route_priority` varchar(10) NOT NULL,
  PRIMARY KEY (`route`,`node`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sample_id_strategy`
--

DROP TABLE IF EXISTS `sample_id_strategy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_id_strategy` (
  `sample_requirement` varchar(100) NOT NULL,
  `lowest_id` bigint(20) DEFAULT NULL,
  `highest_id` bigint(20) DEFAULT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`sample_requirement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sample_link`
--

DROP TABLE IF EXISTS `sample_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_link` (
  `sample_id` bigint(20) NOT NULL,
  `link` varchar(500) NOT NULL,
  PRIMARY KEY (`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sample_status`
--

DROP TABLE IF EXISTS `sample_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` decimal(10,3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `examination_id` int(11) NOT NULL,
  `color` varchar(50) NOT NULL,
  `shortcut` int(11) NOT NULL,
  `dependancy_examination_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `examination_id` (`examination_id`),
  CONSTRAINT `sample_status_ibfk_1` FOREIGN KEY (`examination_id`) REFERENCES `examination` (`examination_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sql`
--

DROP TABLE IF EXISTS `sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sql` (
  `name` varchar(100) NOT NULL,
  `sql` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `upload_data`
--

DROP TABLE IF EXISTS `upload_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_data` mediumblob NOT NULL,
  `upload_data_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `expirydate` date NOT NULL,
  `authorization` varchar(300) NOT NULL,
  `insert_authorization_level` int(11) NOT NULL,
  `update_authorization_level` int(11) NOT NULL,
  `select_authorization_level` int(11) NOT NULL,
  `delete_authorization_level` int(11) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `view_info_data`
--

DROP TABLE IF EXISTS `view_info_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `view_info_data` (
  `id` int(11) NOT NULL,
  `info` varchar(100) NOT NULL,
  `Fields` varchar(2000) NOT NULL,
  `sql` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ward_id`
--

DROP TABLE IF EXISTS `ward_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ward_id` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sample_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sample_id` (`sample_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10487 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xxx_lab_reference_value`
--

DROP TABLE IF EXISTS `xxx_lab_reference_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xxx_lab_reference_value` (
  `lab_reference_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `qc_lot` varchar(100) NOT NULL,
  `examination_id` int(11) NOT NULL,
  `equipment` varchar(100) NOT NULL,
  `start_datetime` datetime DEFAULT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `mean` decimal(10,2) NOT NULL,
  `sd` decimal(10,2) NOT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `manufacturer_data` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`lab_reference_value_id`),
  KEY `qc_lot` (`qc_lot`),
  CONSTRAINT `xxx_lab_reference_value_ibfk_1` FOREIGN KEY (`qc_lot`) REFERENCES `qc_lot` (`qc_lot`)
) ENGINE=InnoDB AUTO_INCREMENT=10420 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-29 16:23:33
