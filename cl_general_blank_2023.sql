-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: clg
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-0+deb12u1

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
-- Table structure for table `Anemia_id`
--

DROP TABLE IF EXISTS `Anemia_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Anemia_id` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sample_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sample_id` (`sample_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8825 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Comparison_ID`
--

DROP TABLE IF EXISTS `Comparison_ID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comparison_ID` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sample_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sample_id` (`sample_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1767 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `KIPD_ID`
--

DROP TABLE IF EXISTS `KIPD_ID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KIPD_ID` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sample_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sample_id` (`sample_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14765 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `M1_ID`
--

DROP TABLE IF EXISTS `M1_ID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `M1_ID` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sample_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sample_id` (`sample_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4327 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `M2_ID`
--

DROP TABLE IF EXISTS `M2_ID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `M2_ID` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sample_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sample_id` (`sample_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3475 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abga_id`
--

DROP TABLE IF EXISTS `abga_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abga_id` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sample_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sample_id` (`sample_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29347 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cal_id`
--

DROP TABLE IF EXISTS `cal_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cal_id` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sample_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sample_id` (`sample_id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
-- Table structure for table `consumable_name`
--

DROP TABLE IF EXISTS `consumable_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumable_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consumable_name` varchar(100) DEFAULT NULL,
  `reorder_value` decimal(10,0) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `consumable_name` (`consumable_name`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `consumable_receipt`
--

DROP TABLE IF EXISTS `consumable_receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumable_receipt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consumable_name` varchar(100) DEFAULT NULL,
  `lot_identifier` varchar(20) DEFAULT NULL,
  `serial_number` varchar(20) DEFAULT NULL,
  `unit_size` varchar(50) DEFAULT NULL,
  `manufacturer` varchar(50) DEFAULT NULL,
  `date_of_manufacture` date DEFAULT NULL,
  `date_of_expiry` date DEFAULT NULL,
  `date_of_receipt` date DEFAULT NULL,
  `condition_on_receipt` varchar(50) DEFAULT NULL,
  `date_of_starting_use` varchar(100) DEFAULT NULL,
  `date_of_ending_use` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `consumable_name_lot_identifier_serial_number` (`consumable_name`,`lot_identifier`,`serial_number`),
  CONSTRAINT `consumable_receipt_ibfk_1` FOREIGN KEY (`consumable_name`) REFERENCES `consumable_name` (`consumable_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `display_choice`
--

DROP TABLE IF EXISTS `display_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `display_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examination_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `examination_id` (`examination_id`),
  CONSTRAINT `display_choice_ibfk_1` FOREIGN KEY (`examination_id`) REFERENCES `examination` (`examination_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ehospital`
--

DROP TABLE IF EXISTS `ehospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ehospital` (
  `UHID` varchar(100) NOT NULL,
  `visit_date` varchar(100) DEFAULT NULL,
  `prefix` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `billing_type` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `clinic` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `f8` varchar(100) DEFAULT NULL,
  `f10` varchar(100) DEFAULT NULL,
  `f11` varchar(100) DEFAULT NULL,
  `f15` varchar(100) DEFAULT NULL,
  `f16` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to` varchar(100) NOT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `att` mediumblob DEFAULT NULL,
  `att_name` varchar(200) DEFAULT NULL,
  `sent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `display_choice` varchar(10) DEFAULT NULL,
  `displayed_scope` varchar(10) DEFAULT NULL,
  `instruction_for_requester` text DEFAULT NULL,
  `class_tag` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`examination_id`),
  KEY `sample_requirement` (`sample_requirement`)
) ENGINE=InnoDB AUTO_INCREMENT=105092 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
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
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sample_id` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=935 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fluid_id`
--

DROP TABLE IF EXISTS `fluid_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fluid_id` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sample_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7580 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `host_code`
--

DROP TABLE IF EXISTS `host_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_code` (
  `examination_id` int(11) NOT NULL,
  `equipment` enum('XL_640','XL_1000','VITROS3600','RP500','TOSOH','R9-402016','BS600M','JOKOH','NXL_1000') NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `data` text DEFAULT NULL,
  `other_data` varchar(5000) DEFAULT NULL,
  `border` int(11) DEFAULT NULL,
  `fontsize` varchar(100) DEFAULT NULL,
  `fontweight` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
-- Table structure for table `log_entry`
--

DROP TABLE IF EXISTS `log_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_entry` (
  `name` varchar(100) NOT NULL,
  `value` varchar(1000) NOT NULL,
  `help` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`name`)
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
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
-- Table structure for table `menu_view_fast`
--

DROP TABLE IF EXISTS `menu_view_fast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_view_fast` (
  `id` int(11) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `examination_id` int(11) NOT NULL,
  `range` int(11) NOT NULL,
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
-- Table structure for table `my_procedure_code`
--

DROP TABLE IF EXISTS `my_procedure_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_procedure_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `code` text DEFAULT NULL,
  `help` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=9881 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=209527 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=22989 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `in_use_date` varchar(200) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=6910 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `link` varchar(10) NOT NULL,
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
  KEY `recording_time` (`recording_time`),
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
-- Table structure for table `stem_id`
--

DROP TABLE IF EXISTS `stem_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stem_id` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sample_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sample_id` (`sample_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7478 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `table_field_specification`
--

DROP TABLE IF EXISTS `table_field_specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_field_specification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `ftype` varchar(50) DEFAULT NULL,
  `table` varchar(50) DEFAULT NULL,
  `field` varchar(50) DEFAULT NULL,
  `field_description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tname_fname` (`tname`,`fname`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `unit_name`
--

DROP TABLE IF EXISTS `unit_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(100) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=1642 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `sql` text NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=406185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `manufacturer_data` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`lab_reference_value_id`),
  KEY `qc_lot` (`qc_lot`),
  CONSTRAINT `xxx_lab_reference_value_ibfk_1` FOREIGN KEY (`qc_lot`) REFERENCES `qc_lot` (`qc_lot`)
) ENGINE=InnoDB AUTO_INCREMENT=107840 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'clg'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculate_eGFRbis` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`cluser`@`localhost` PROCEDURE `calculate_eGFRbis`(IN sid BIGINT)
BEGIN
  DECLARE cr DECIMAL(5,2);
  DECLARE age INT;
  DECLARE sex VARCHAR(10);
  DECLARE sex_factor DOUBLE;
  DECLARE egfr DOUBLE;
  DECLARE err TEXT DEFAULT '';

  -- Fetch values
  SELECT result INTO cr FROM result WHERE sample_id = sid AND examination_id = 5001;
  SELECT result INTO age FROM result WHERE sample_id = sid AND examination_id = 1007;
  SELECT result INTO sex FROM result WHERE sample_id = sid AND examination_id = 1008;

  -- Input validations
  IF cr IS NULL OR cr < 0.2 THEN
    SET err = CONCAT(err, 'Invalid Creatinine, ');
  END IF;

  IF age IS NULL OR age < 1.1 THEN
    SET err = CONCAT(err, 'Invalid Age, ');
  END IF;

  IF sex IS NULL OR (sex != 'Male' AND sex != 'Female') THEN
    SET err = CONCAT(err, 'Invalid Sex, ');
  END IF;

  -- If errors, store the error message
  IF CHAR_LENGTH(err) > 0 THEN
    SET err = CONCAT(err, 'eGFR-BIS cannot be calculated');
    UPDATE result SET result = err WHERE sample_id = sid AND examination_id = 5226;
  ELSE
    -- Set sex factor
    IF sex = 'Female' THEN
      SET sex_factor = 0.82;
    ELSE
      SET sex_factor = 1;
    END IF;

    -- Calculate BIS1 eGFR (rounded to 1 decimal place)
    SET egfr = ROUND(3736 * POW(cr, -0.87) * POW(age, -0.95) * sex_factor, 1);

    -- Store result
    UPDATE result SET result = egfr WHERE sample_id = sid AND examination_id = 5226;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculate_eGFRcr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`cluser`@`%` PROCEDURE `calculate_eGFRcr`(IN sid BIGINT)
BEGIN
  SET @cr = '';
  SET @age = '';
  SET @sex = '';

  SET @e_cr = '';
  SET @e_age = '';
  SET @e_sex = '';
  SET @er = '';

  -- Fetch inputs
  SELECT result INTO @cr FROM result WHERE sample_id = sid AND examination_id = 5001;
  SELECT result INTO @age FROM result WHERE sample_id = sid AND examination_id = 1007;
  SELECT result INTO @sex FROM result WHERE sample_id = sid AND examination_id = 1008;

  -- Validation for creatinine
  IF (CHAR_LENGTH(@cr) < 1) THEN
    SET @e_cr = 'cr?';
  ELSEIF (@cr < 0.2) THEN
    SET @e_cr = 'cr<LOQ,';
  END IF;

  -- Validation for age
  IF (CHAR_LENGTH(@age) < 1) THEN
    SET @e_age = 'age?';
  ELSEIF (@age < 1) THEN
    SET @e_age = 'age<18,';
  END IF;

  -- Validation for sex
  IF (CHAR_LENGTH(@sex) < 1) THEN
    SET @e_sex = 'sex?';
  ELSEIF (@sex != 'Male' AND @sex != 'Female') THEN
    SET @e_sex = 'Sex must be M or F,';
  ELSEIF (@sex = 'Male') THEN
    SET @kappa = 0.9;
    SET @alpha = -0.302;
    SET @sex_factor = 1;
  ELSEIF (@sex = 'Female') THEN
    SET @kappa = 0.7;
    SET @alpha = -0.241;
    SET @sex_factor = 1.012;
  END IF;

  -- Error handling
  SET @er = CONCAT(@e_age, @e_sex, @e_cr);
  IF (CHAR_LENGTH(@er) > 0) THEN
    SET @er = CONCAT(@er, ' eGFR cannot be calculated');
    UPDATE result SET result = @er WHERE sample_id = sid AND examination_id = 5225;
  ELSE
    -- eGFR calculation (CKD-EPI) with 1 decimal place
    SET @egfr = ROUND(
      142 * POWER(LEAST(@cr / @kappa, 1), @alpha) * 
      POWER(GREATEST(@cr / @kappa, 1), -1.200) * 
      POWER(0.9938, @age) * @sex_factor, 
    1);
    
    UPDATE result SET result = @egfr WHERE sample_id = sid AND examination_id = 5225;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reflex_eGFRcr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`cluser`@`%` PROCEDURE `reflex_eGFRcr`(IN sid BIGINT)
BEGIN
  DECLARE age VARCHAR(10);
  DECLARE sex VARCHAR(10);
  DECLARE cr_count INT;

  -- Get age
  SELECT TRIM(result) INTO age FROM result WHERE sample_id = sid AND examination_id = 1007;

  IF CHAR_LENGTH(age) > 0 THEN
    -- Get sex
    SELECT result INTO sex FROM result WHERE sample_id = sid AND examination_id = 1008;

    IF CHAR_LENGTH(sex) > 0 THEN
      -- Check if creatinine result exists
      SELECT COUNT(examination_id) INTO cr_count 
      FROM result 
      WHERE sample_id = sid AND examination_id = 5001;

      IF cr_count = 1 THEN
        -- Insert required reflex result entries
        INSERT INTO result 
        VALUES (sid, 5225, '', '', SYSDATE(), 999) 
        ON DUPLICATE KEY UPDATE result = result;

        INSERT INTO result 
        VALUES (sid, 5226, '', '', SYSDATE(), 999) 
        ON DUPLICATE KEY UPDATE result = result;

        INSERT INTO result 
        VALUES (sid, 5060, '', '', SYSDATE(), 999) 
        ON DUPLICATE KEY UPDATE result = result;
      END IF;
    END IF;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reflex_ldl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`cluser`@`%` PROCEDURE `reflex_ldl`(IN sid INT)
BEGIN
  DECLARE trig DECIMAL(10,2) DEFAULT NULL;
  DECLARE trig_count INT DEFAULT 0;

  -- Check if triglyceride result exists
  SELECT COUNT(*) INTO trig_count
  FROM result
  WHERE sample_id = sid AND examination_id = 5018;

  IF trig_count = 1 THEN
    -- Get triglyceride result
    SELECT CAST(TRIM(result) AS DECIMAL(10,2)) INTO trig
    FROM result
    WHERE sample_id = sid AND examination_id = 5018;

    -- If triglyceride > 400, do reflex changes
    IF trig > 400 THEN
      -- Insert examination_id = 1099 if not already present
      INSERT INTO result (sample_id, examination_id, result)
      SELECT sid, 1099, ''
      FROM DUAL
      WHERE NOT EXISTS (
        SELECT 1 FROM result 
        WHERE sample_id = sid AND examination_id = 1099
      );

      -- Delete LDL result (examination_id = 5017) if present
      DELETE FROM result 
      WHERE sample_id = sid AND examination_id = 5017;
    END IF;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-20 19:08:13
