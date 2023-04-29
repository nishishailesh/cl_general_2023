-- MariaDB dump 10.19  Distrib 10.5.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: clg
-- ------------------------------------------------------
-- Server version	10.5.18-MariaDB-0+deb11u1

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
-- Table structure for table `record_tables`
--

DROP TABLE IF EXISTS `record_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_tables`
--

LOCK TABLES `record_tables` WRITE;
/*!40000 ALTER TABLE `record_tables` DISABLE KEYS */;
INSERT INTO `record_tables` VALUES (62,'reagent_name',0,NULL,NULL);
/*!40000 ALTER TABLE `record_tables` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `tname_fname` (`tname`,`fname`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_field_specification`
--

LOCK TABLES `table_field_specification` WRITE;
/*!40000 ALTER TABLE `table_field_specification` DISABLE KEYS */;
INSERT INTO `table_field_specification` VALUES (1,'equipment_record','equipment','table','equipment','equipment'),(2,'equipment_record','equipment_record_type','table','equipment_record_type','equipment_record_type'),(3,'equipment_record','date','date','',''),(4,'equipment_record','description','textarea','',''),(5,'calibration','date','date','',''),(6,'calibration','cal_equipment','table','cal_equipment','cal_equipment'),(7,'calibration','remarks','textarea','',''),(8,'calibration','correlation','textarea','',''),(9,'calibration','cal_examination','table','host_code','code'),(10,'reagent','name','table','reagent_name','reagent_name'),(11,'reagent','date_of_preparation','date','',''),(12,'reagent','date_of_expiry','date','',''),(13,'reagent','date_of_receipt','date','',''),(14,'reagent_use','date_of_opening','date','',''),(15,'reagent','unit','table','unit_name','unit_name'),(16,'Nonconformity','Process_affected','table','Process_affected','Process_affected'),(17,'Nonconformity','Extent','table','Extent','Extent'),(18,'Nonconformity','source','table','nc_source','source'),(19,'Nonconformity','Quality_manual_section','table','Quality_manual_section','clause'),(20,'Nonconformity','Immediate_control','textarea','',''),(21,'Performance_characteristics','Performance_characteristics','table','Performance_characteristics_list','Performance_specification'),(22,'Nonconformity','NC_Name','textarea','',''),(23,'Nonconformity','RCA','textarea','',''),(24,'Nonconformity','Corrective_and_preventive_actions','textarea','',''),(25,'scope','nabl_accreditation_status','table','nabl_accreditation_status','nabl_accreditation_status'),(26,'scope','instruction_for_preparation_of_the_patient','textarea','',''),(27,'scope','instructions_for_patient_collected_samples','textarea','',''),(28,'scope','unit_of_measurement','table','unit_of_measurement','unit_of_measurement'),(29,'scope','container_additives','table','container_additives','container_additives'),(30,'scope','sample_type','table','sample_type','sample_type'),(31,'scope','examination_is_currently_available','table','examination_is_currently_available','examination_is_currently_available'),(32,'NABL_Records','doc_type','table','Quality_manual_section','clause'),(33,'reagent_date_of_completion','date_of_completion','date','',''),(34,'reagent_use','date_of_closing','date','',''),(35,'HIB_Vaccination','Name','table','Name','Name'),(36,'HIB_Vaccination','First_Dose','date','',''),(37,'HIB_Vaccination','Second_Dose','date','',''),(38,'HIB_Vaccination','Third_Dose','date','',''),(40,'IQC','Description','table','Description','Description'),(41,'IQC','parameter','table','parameter','parameter'),(42,'Refrigerator_Temp','date_of_reading','date','',''),(43,'Refrigerator_Temp','time_of_reading','time','',''),(44,'Sample_Transporter','name','table','Sample_Transporter_name','name'),(45,'Sample_Transporter','date','date','',''),(46,'Sample_Transporter','time','time','',''),(47,'documents','Personal_Records','table','Personal_Records','Personal_Records'),(48,'remarks','Personal_Records','table','Personal_Records','Personal_Records'),(49,'Name','varchar','varchar','varchar','varchar'),(50,'Personal_Records','Name','table','Name','Name');
/*!40000 ALTER TABLE `table_field_specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_new`
--

DROP TABLE IF EXISTS `menu_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_new` (
  `id` int(11) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `ex_list` varchar(100) NOT NULL,
  `route` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_new`
--

LOCK TABLES `menu_new` WRITE;
/*!40000 ALTER TABLE `menu_new` DISABLE KEYS */;
INSERT INTO `menu_new` VALUES (1,'New Thyroid','1002,1008,1004,1005,1006,1007,1041,1023,1045,1017,1018',''),(2,'New ABG','1002,1008,1004,1005,1006,1007,5143,5144,5145,5148,5159,5150,5158,5195',''),(3,'Ward Request','1045,1047',''),(4,'Biochemistry','1002,1008,1004,1005,1006,1007,1041,1023,1045,1017','Biochemistry,Abs'),(5,'OPD','1002,1008,1004,1005,1006,1007,1041,1023,1045,1017','OPD'),(6,'Example','1001,11001,11002,11003,11004,11005,11006,11007,11008,11009,11010',''),(10,'OPD Request','1045,1046','');
/*!40000 ALTER TABLE `menu_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copy_bin_text`
--

DROP TABLE IF EXISTS `copy_bin_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copy_bin_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `text` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copy_bin_text`
--

LOCK TABLES `copy_bin_text` WRITE;
/*!40000 ALTER TABLE `copy_bin_text` DISABLE KEYS */;
INSERT INTO `copy_bin_text` VALUES (1,'Absurd K+ EDTA','Absurd K+ may be due to EDTA contamination of Plain Blood. '),(3,'Absurd K+ Hemolysis','Sample Grossly Hemolysed. Absurd K+ may be due to Excess hemolysis'),(4,'High DBIL','Majority of bilirubin is of conjugated bilirubin(Direct), disregard total bilirubin.'),(5,'QNS','Test is not done as sample is inadequate'),(6,'Missing sample','Test is not done as sample is not received'),(7,'Bilirubin interfence','Very High bilirubin has negative interferance in creatinine estimation  '),(8,'Lipemic sample','Test is not done as sample is lipemic'),(9,'Viscous sample','Test is not done as sample is highly viscous'),(10,'email for COVID-19','suratcv19@gmail.com'),(11,'Not done','Test is not done as lab resources are inadequate');
/*!40000 ALTER TABLE `copy_bin_text` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`route`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_priority`
--

LOCK TABLES `route_priority` WRITE;
/*!40000 ALTER TABLE `route_priority` DISABLE KEYS */;
INSERT INTO `route_priority` VALUES ('.Sample Details/IDs','IDs','','10');
/*!40000 ALTER TABLE `route_priority` ENABLE KEYS */;
UNLOCK TABLES;

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
  `edit_specification` varchar(1000) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `request_route` varchar(300) DEFAULT NULL,
  `display_route` varchar(300) DEFAULT NULL,
  `request_route_priority` varchar(10) DEFAULT NULL,
  `display_route_priority` varchar(10) DEFAULT NULL,
  `display_format` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`examination_id`),
  KEY `sample_requirement` (`sample_requirement`)
) ENGINE=InnoDB AUTO_INCREMENT=100024 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examination`
--

LOCK TABLES `examination` WRITE;
/*!40000 ALTER TABLE `examination` DISABLE KEYS */;
INSERT INTO `examination` VALUES (1,'WBC (Leucocyte Count)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\" /cmm  4000-10000 (Impedance)\",\"step\":\"1\", \"interval_l\":\"4000\",\"interval_h\":\"10000\",\"cinterval_l\":\"2000\",\"cinterval_h\":\"30000\"}','',NULL,NULL,NULL,NULL,NULL),(2,'RBC (Erythrocyte Count)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"M/cmm, M:4.5-5.5 F:3.8-4.8 (Impedance)\",\"interval_l\":\"3.8\",\"interval_h\":\"5.5\",\"step\":\"0.01\"}','None',NULL,NULL,NULL,NULL,NULL),(3,'Hemoglobin','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"gm/dL M: 13-17 F:12-15 (Non-CyanomethHb)\",\"interval_l\":\"12\",\"interval_h\":\"17\",\"cinterval_l\":\"7\",\"cinterval_h\":\"20\",\"step\":\"0.1\"}','None',NULL,NULL,NULL,NULL,NULL),(4,'PCV (Packed Cell Volume)','EDTA-Blood-HI','{\"type\":\"number\",\"step\":\"0.1\",\"help\":\"% M:40-50 F:36-46 (Impedance)\",\"interval_l\":\"36\",\"interval_h\":\"50\",\"cinterval_l\":\"20\",\"cinterval_h\":\"60\"}','None',NULL,NULL,NULL,NULL,NULL),(5,'MCV (Mean Corp Vol)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"fL 80-96 (Calculated)\",\"step\":\"0.1\",\"interval_l\":\"80\",\"interval_h\":\"96\"}','None',NULL,NULL,NULL,NULL,NULL),(6,'MCH (Mean Corp Hb)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"pg 27-31 (Calculated)\",\"step\":\"0.1\",\"interval_l\":\"27\",\"interval_h\":\"31\"}','None',NULL,NULL,NULL,NULL,NULL),(7,'MCHC (Mean Corp Hb Conc)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"gm/dL 32-36 (Calculated)\",\"step\":\"0.1\",\"interval_l\":\"32\",\"interval_h\":\"36\"}','None',NULL,NULL,NULL,NULL,NULL),(8,'RDW (Red Cell Dist Width)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"% 11.5-14 (Calculated)\",\"step\":\"0.1\",\"interval_l\":\"11.5\",\"interval_h\":\"14\"}','None',NULL,NULL,NULL,NULL,NULL),(9,'Platelet','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"/cmm 150000-400000 (Impedance)\",\"step\":\"1\",\"interval_l\":\"150000\",\"interval_h\":\"400000\",\"cinterval_l\":\"20000\",\"cinterval_h\":\"1000000\"}','None',NULL,NULL,NULL,NULL,NULL),(13,'Lymphocyte%','EDTA-Blood-HI','{\"type\":\"text\",\"help\":\"Describe\"}','None',NULL,NULL,NULL,NULL,NULL),(14,'Monocyte%','EDTA-Blood-HI','{\"type\":\"text\",\"help\":\"Describe\"}','None',NULL,NULL,NULL,NULL,NULL),(15,'Granulocyte%','EDTA-Blood-HI','{\"type\":\"text\",\"help\":\"Describe\"}','None',NULL,NULL,NULL,NULL,NULL),(19,'RBC Graph','EDTA-Blood-HI','{\"type\":\"blob\",\"readonly\":\"readonly\",\"img\":\"dw\"}','None',NULL,NULL,NULL,NULL,NULL),(20,'WBC Graph','EDTA-Blood-HI','{\"type\":\"blob\",\"readonly\":\"readonly\",\"img\":\"dw\"}','None',NULL,NULL,NULL,NULL,NULL),(21,'Platelet Graph','EDTA-Blood-HI','{\"type\":\"blob\",\"readonly\":\"readonly\",\"img\":\"dw\"}','None',NULL,NULL,NULL,NULL,NULL),(26,'Sample_Report_Time','None','{\"type\":\"datetime-local\", \"pattern\":\"[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}\",\"default\":\"date(\'Y-m-d\')\" }','',NULL,NULL,NULL,NULL,NULL),(39,'Neutrophils','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"% 40-80\",\"step\":\"1\",\"interval_l\":\"40\",\"interval_h\":\"80\"}','',NULL,NULL,NULL,NULL,NULL),(40,'Lymphocytes','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"% 20-40\",\"step\":\"1\",\"interval_l\":\"20\",\"interval_h\":\"40\"}','',NULL,NULL,NULL,NULL,NULL),(41,'Eosinophils','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"% 01-06\",\"step\":\"1\",\"interval_h\":\"6\"}','',NULL,NULL,NULL,NULL,NULL),(42,'Monocytes','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"% 02-10\",\"step\":\"1\",\"interval_h\":\"10\"}','',NULL,NULL,NULL,NULL,NULL),(43,'Basophils','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"% 00-02\",\"step\":\"1\",\"interval_h\":\"2\"}','',NULL,NULL,NULL,NULL,NULL),(44,'NRBCs','EDTA-Blood-HI','','',NULL,NULL,NULL,NULL,NULL),(45,'Platelets on smear','EDTA-Blood-HI','{\"type\":\"select\",\"help\":\"\",\"option\":\",Adequate,Reduced,Increased,Mildly Reduced, Markedly Reduced,\"}','',NULL,NULL,NULL,NULL,NULL),(46,'Plasmodium Vivax Malarial Antigen','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",Negative, Positive\"}','For P. Vivax',NULL,NULL,NULL,NULL,NULL),(47,'Plasmodium Falciparum Malarial Antigen','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",Negative, Positive\"}','For P. Vivax',NULL,NULL,NULL,NULL,NULL),(48,'ANC (Absolute Neutrophil Count)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"/cmm 1600-8000 (Calculation)\",\"step\":\"1\",\"interval_l\":\"1600\",\"interval_h\":\"8000\"}','',NULL,NULL,NULL,NULL,NULL),(49,'ALC (Absolute Lymphocyte Count)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"/cmm 800-4000 (Calculation)\",\"step\":\"1\",\"interval_l\":\"800\",\"interval_h\":\"4000\"}','',NULL,NULL,NULL,NULL,NULL),(50,'AEC (Absolute Eosinophil Count)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"/cmm 20-500 (Calculation)\",\"step\":\"1\",\"interval_l\":\"20\",\"interval_h\":\"500\"}','',NULL,NULL,NULL,NULL,NULL),(51,'Blasts','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"%\"}','',NULL,NULL,NULL,NULL,NULL),(52,'Promyelocytes','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"%\"}','',NULL,NULL,NULL,NULL,NULL),(53,'Myelocytes','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"%\"}','',NULL,NULL,NULL,NULL,NULL),(54,'Metamyelocytes','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"%\"}','',NULL,NULL,NULL,NULL,NULL),(55,'Neutrophils + Band Cells','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"%\"}','',NULL,NULL,NULL,NULL,NULL),(56,'Remark','EDTA-Blood-HI','{\"type\":\"text\"}','For Differential Count',NULL,NULL,NULL,NULL,NULL),(57,'Morphology','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",Normocytic,Normochromic,Normocytic Normochromic,Hypochromic Microcytic,Predominantly Normocytic Normochromic\"}','',NULL,NULL,NULL,NULL,NULL),(58,'Anisocytosis','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",+,++,+++,++++,Mild,Occasional,Few\"}','',NULL,NULL,NULL,NULL,NULL),(59,'Poikilocytosis','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",+,++,+++,++++,Mild,Occasional,Few\"}','',NULL,NULL,NULL,NULL,NULL),(60,'Microcytosis','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",+,++,+++,++++,Mild,Occasional,Few\"}','',NULL,NULL,NULL,NULL,NULL),(61,'Macrocytosis','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",+,++,+++,++++,Mild,Occasional,Few\"}','',NULL,NULL,NULL,NULL,NULL),(62,'Hypochromia','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",+,++,+++,++++,Mild,Occasional,Few\"}','',NULL,NULL,NULL,NULL,NULL),(63,'Target Cells','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",+,Occasional,Few\"}','',NULL,NULL,NULL,NULL,NULL),(64,'Elliptocytes','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",+,Occasional,Few\"}','',NULL,NULL,NULL,NULL,NULL),(65,'Tear Drop Cells','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",+,Occasional,Few\"}','',NULL,NULL,NULL,NULL,NULL),(66,'Others','EDTA-Blood-HI','{\"type\":\"text\"}','For RBC Morphology',NULL,NULL,NULL,NULL,NULL),(67,'Platelet Morphology','EDTA-Blood-HI','	{\"type\":\"select\",\"option\":\",Giant Platelet seen,Platelet aggregates seen\"}','',NULL,NULL,NULL,NULL,NULL),(68,'Species','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",Not Detected, Plasmodium Vivax Ring Forms and Trophozoites,Plasmodium Falciparum Ring Forms, Plasmodium Falciparum Ring Forms with Gametocytes, Plasmodium Falciparum Gametocytes Detected,Plasmodium Vivax Ring and Trophozoites with Schizonts, Plasmodium Vivax Ring and Trophozoites with Gametocytes, Mixed Infection, Others\"}','',NULL,NULL,NULL,NULL,NULL),(69,'Grade','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",+,++,+++,++++\"}','',NULL,NULL,NULL,NULL,NULL),(70,'Others','EDTA-Blood-HI','{\"type\":\"text\"}','For other parasites and mixed',NULL,NULL,NULL,NULL,NULL),(71,'MPV (Mean Platelet Volume)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"fL 6.5-10 (Calculated)\",\"step\":\"0.1\",\"interval_l\":\"6.5\",\"interval_h\":\"10\"}','None',NULL,NULL,NULL,NULL,NULL),(72,'PDW (Platelet Distribution Width)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"% 10-18 (Calculated)\",\"step\":\"0.1\",\"interval_l\":\"10\",\"interval_h\":\"18\"}','None',NULL,NULL,NULL,NULL,NULL),(73,'Reticulocyte Count ','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"% 0.5-2.5 (Microscopy)\",\"step\":\"0.1\",\"interval_l\":\"0.5\",\"interval_h\":\"2.5\"}','None',NULL,NULL,NULL,NULL,NULL),(74,'Corrected Reticulocyte Count ','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"% (Calculated)\",\"step\":\"0.1\"}','None',NULL,NULL,NULL,NULL,NULL),(75,'Erythrocyte Sedimentation Rate','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"mm/hr 0-12 (Westergren Method)\",\"interval_l\":\"0\",\"interval_h\":\"12\"}','None',NULL,NULL,NULL,NULL,NULL),(76,'Prothrombin Time (PT)','Citrate-Blood-HI','{\"type\":\"number\",\"help\":\"secs 11-16 (Clot Based)\",\"interval_l\":\"11\",\"interval_h\":\"16\",\"cinterval_h\":\"60\"}','None',NULL,NULL,NULL,NULL,NULL),(77,'Control (MNPT)','Citrate-Blood-HI','{\"type\":\"number\",\"help\":\"secs\"}','None',NULL,NULL,NULL,NULL,NULL),(78,'Ratio','Citrate-Blood-HI','{\"type\":\"number\",\"calculate\":\"max(E/e,1)\",\"ex_list\":\"76,77\",\"step\":\"0.01\",\"decimal\":\"2\",\"help\":\"PT/MNPT (Calculated)\"}','None',NULL,NULL,NULL,NULL,NULL),(79,'Index','Citrate-Blood-HI','{\"type\":\"number\",\"calculate\":\"100/e\",\"ex_list\":\"78\",\"step\":\"1\",\"decimal\":\"0\",\"help\":\"% 100/Ratio (Calculated)\"}','None',NULL,NULL,NULL,NULL,NULL),(80,'PT (INR) Value','Citrate-Blood-HI','{\"type\":\"number\",\"calculate\":\"e^1.08\",\"ex_list\":\"78\",\"step\":\"0.01\",\"decimal\":\"2\",\"help\":\"Normal Population: 0.8-1.2\\nStandard Therapy: 2.0-3.0\\nHigh Dose Therapy: 3.0-4.5\\n(Calculated, ISI=1.0)\"}','None',NULL,NULL,NULL,NULL,NULL),(81,'aPTT - Test','Citrate-Blood-HI','{\"type\":\"number\",\"help\":\"secs 27-34 (Clot Based)\",\"interval_l\":\"27\",\"interval_h\":\"34\",\"cinterval_h\":\"100\"}','None',NULL,NULL,NULL,NULL,NULL),(82,'aPTT - Control ','Citrate-Blood-HI','{\"type\":\"number\",\"help\":\"secs\"}','None',NULL,NULL,NULL,NULL,NULL),(83,'Fibrinogen','Citrate-Blood-HI','{\"type\":\"number\",\"help\":\"mg% 150-400 (Clot Based)\",\"interval_l\":\"150\",\"interval_h\":\"400\"}','None',NULL,NULL,NULL,NULL,NULL),(84,'Fibrinogen Degradation Product (FDP)','Citrate-Blood-HI','{\"type\":\"select\",\"help\":\"(Agglutination)\",\"option\":\",Negative, Positive\"}','None',NULL,NULL,NULL,NULL,NULL),(85,'Factor VIII Assay','Citrate-Blood-HI','{\"type\":\"number\",\"help\":\"% 50-150 (Clot Based)\",\"interval_l\":\"50\",\"interval_h\":\"150\"}','None',NULL,NULL,NULL,NULL,NULL),(86,'Factor IX Assay','Citrate-Blood-HI','{\"type\":\"number\",\"help\":\"% 50-150 (Clot Based)\",\"interval_l\":\"50\",\"interval_h\":\"150\"}','None',NULL,NULL,NULL,NULL,NULL),(87,'Bleeding Time (BT)','Citrate-Blood-HI','{\"type\":\"number\",\"help\":\"mins 02-05 (Duke Method)\",\"interval_l\":\"2\",\"interval_h\":\"5\"}','None',NULL,NULL,NULL,NULL,NULL),(88,'Clotting Time (BT)','Citrate-Blood-HI','{\"type\":\"number\",\"help\":\"mins 08-15 (Capillary Tube Method)\",\"interval_l\":\"8\",\"interval_h\":\"15\"}','None',NULL,NULL,NULL,NULL,NULL),(89,'Physical Examination','Plain-Urine-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Urine Physical Examination',NULL,NULL,NULL,NULL,NULL),(90,'Quantity','Plain-Urine-CP','{\"type\":\"number\",\"help\":\"ml\"}','None',NULL,NULL,NULL,NULL,NULL),(91,'Colour','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Pale Yellow\",\"option\":\",Pale Yellow, Yellow, Reddish, Dark Yellow,Slightly Reddish,Amber,Colourless,Pink\"}','None',NULL,NULL,NULL,NULL,NULL),(92,'Appearance','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Clear\",\"option\":\",Clear, Slightly Turbid, Turbid, Cloudy\"}','None','','','','',''),(93,'Odour','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Non-Specific\",\"option\":\",Non-Specific, Fruity, Mousy/Musty, Fishy, Ammoniacal, Foul, Rancid, Maple Syrup/Burnt Sugar\"}','For Urine Odour','','','','',''),(94,'Chemical Examination','Plain-Urine-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Urine Chemical Examination',NULL,NULL,NULL,NULL,NULL),(95,'pH','Plain-Urine-CP','{\"type\":\"text\",\"help\":\"4.5 - 8\"}','',NULL,NULL,NULL,NULL,NULL),(96,'Specific Gravity','Plain-Urine-CP','{\"type\":\"text\",\"help\":\"1.003 - 1.030\"}','',NULL,NULL,NULL,NULL,NULL),(97,'Protein (Albumin)','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent,Trace,+,++,+++,++++\"}','None',NULL,NULL,NULL,NULL,NULL),(98,'Glucose','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent,Trace,+,++,+++,++++\"}','None',NULL,NULL,NULL,NULL,NULL),(99,'Ketones','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent,Trace,+,++,+++,++++\"}','None',NULL,NULL,NULL,NULL,NULL),(100,'Bile Salts','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent, Present\"}','None',NULL,NULL,NULL,NULL,NULL),(101,'Bile Pigments','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent, Present\"}','None',NULL,NULL,NULL,NULL,NULL),(102,'Blood','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent,Trace,+,++,+++,++++\"}','None',NULL,NULL,NULL,NULL,NULL),(103,'Microscopic Examination','Plain-Urine-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Urine Microscopic Examination',NULL,NULL,NULL,NULL,NULL),(104,'Pus Cells','Plain-Urine-CP','{\"type\":\"text\",\"help\":\"Absent\",\"option\":\",Nil,1-2,2-4\"}','',NULL,NULL,NULL,NULL,NULL),(105,'RBC (Red Blood Cells)','Plain-Urine-CP','{\"type\":\"text\",\"help\":\"Absent\",\"option\":\",Nil,1-2,2-4\"}','',NULL,NULL,NULL,NULL,NULL),(106,'Epithelial Cells Number','Plain-Urine-CP','{\"type\":\"text\",\"help\":\"/hpf 0 - 5\"}','',NULL,NULL,NULL,NULL,NULL),(107,'Crystals','Plain-Urine-CP','	{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Nil\"}','None',NULL,NULL,NULL,NULL,NULL),(108,'Casts','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Nil\"}','None',NULL,NULL,NULL,NULL,NULL),(109,'Others','Plain-Urine-CP','{\"type\":\"text\"}','For Urine Microscopic Examination',NULL,NULL,NULL,NULL,NULL),(110,'Special Tests','Plain-Urine-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Urine Special Tests',NULL,NULL,NULL,NULL,NULL),(111,'Test  Name','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\"NA, Bence Jones Proteins, Porphobilinogen, Chyluria, Cylindroids\"}','None','','','','',''),(113,'Result','Plain-Urine-CP','{\"type\":\"text\"}','For Urine Special Test Result',NULL,NULL,NULL,NULL,NULL),(114,'Physical Examination','Plain-Stool-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Stool Physical Examination',NULL,NULL,NULL,NULL,NULL),(115,'Colour','Plain-Stool-CP','{\"type\":\"select\",\"option\":\",Brown, Yellow, Green,  Black, Greenish Yellow, Dark Yellow, Dark Brown, Whitish, Rice-water \"}','None',NULL,NULL,NULL,NULL,NULL),(116,'Consistency','Plain-Stool-CP','{\"type\":\"select\",\"option\":\", Solid, Semi-solid, Loose, Watery\"}','None','','','','',''),(117,'Chemical Examination','Plain-Stool-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Stool Chemical Examination',NULL,NULL,NULL,NULL,NULL),(118,'Occult Blood','Plain-Stool-CP','{\"type\":\"select\",\"help\":\"Absent (Benzidine Test)\",\"option\":\",Absent, Present\"}','None','','','','',''),(119,'Microscopic Examination','Plain-Stool-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Stool Microscopic Examination',NULL,NULL,NULL,NULL,NULL),(120,'Trophozoites','Plain-Stool-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent, Present\"}','None',NULL,NULL,NULL,NULL,NULL),(121,'Ova','Plain-Stool-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent, Present\"}','None',NULL,NULL,NULL,NULL,NULL),(122,'Cysts','Plain-Stool-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Nil\"}','None',NULL,NULL,NULL,NULL,NULL),(123,'Pus Cells','Plain-Stool-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent, 1-2, 3-5, 6-8, 10-12, 15-20, Plenty\"}','None',NULL,NULL,NULL,NULL,NULL),(124,'RBC (Red Blood Cells)','Plain-Stool-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent, 1-2, 3-5, 6-8, 10-12, 15-20, Plenty\"}','None',NULL,NULL,NULL,NULL,NULL),(125,'Others','Plain-Stool-CP','{\"type\":\"text\"}','For Stool Microscopic Examination',NULL,NULL,NULL,NULL,NULL),(126,'Specimen','EDTA-BodyFluid-CP','{\"type\":\"select\",\"option\":\",Cerebrospinal Fluid (CSF), Ascitic Fluid, Pleural Fluid, Peritoneal Fluid, Synovial Fluid, Pus, Pericardial Fluid, Cystic Fluid, Drain Fluid, Colposcopy Fluid, Abscess Material\"}','None','','','','',''),(127,'Physical Examination','EDTA-BodyFluid-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Body Fluidl Examination',NULL,NULL,NULL,NULL,NULL),(128,'Quantity','EDTA-BodyFluid-CP','{\"type\":\"select\",\"help\":\"ml\",\"option\":\",0.5, 1, 1.5, 2, 2.5, 3, 3.5\"}','None',NULL,NULL,NULL,NULL,NULL),(129,'Colour','EDTA-BodyFluid-CP','{\"type\":\"select\",\"option\":\",Colourless, Pale Yellow, Yellow, Reddish, Dark Yellow,Slightly Reddish, Amber, Brownish, Greenish, Greyish, Milky-white, Black\"}','None',NULL,NULL,NULL,NULL,NULL),(130,'Appearance','EDTA-BodyFluid-CP','{\"type\":\"select\",\"help\":\"Clear\",\"option\":\",Clear, Slightly Turbid, Turbid, Cloudy\"}','None','','','','',''),(131,'Clot Formation','EDTA-BodyFluid-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent, Present\"}','None',NULL,NULL,NULL,NULL,NULL),(132,'Microscopic Examination','EDTA-BodyFluid-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Microscopic Body Fluid Examination',NULL,NULL,NULL,NULL,NULL),(133,'Total RBC (Red Blood Cells) Count','EDTA-BodyFluid-CP','{\"type\":\"text\",\"help\":\"cells/cmm\"}','None',NULL,NULL,NULL,NULL,NULL),(134,'Total WBC (White Blood Cell) Count','EDTA-BodyFluid-CP','{\"type\":\"text\",\"help\":\"cells/cmm\"}','None',NULL,NULL,NULL,NULL,NULL),(135,'Polymorphs','EDTA-BodyFluid-CP','{\"type\":\"text\",\"help\":\"%\"}','None',NULL,NULL,NULL,NULL,NULL),(136,'Lymphocytes','EDTA-BodyFluid-CP','{\"type\":\"text\",\"help\":\"%\"}','None',NULL,NULL,NULL,NULL,NULL),(137,'Remarks','EDTA-BodyFluid-CP','{\"type\":\"text\"}','For Body Fluid Microscopy',NULL,NULL,NULL,NULL,NULL),(138,'Physical Examination','Plain-Semen-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Semen Physical Examination',NULL,NULL,NULL,NULL,NULL),(139,'Quantity','Plain-Semen-CP','{\"type\":\"select\",\"help\":\"ml 2 - 5\",\"option\":\",0.5, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10\"}','None',NULL,NULL,NULL,NULL,NULL),(140,'Colour','Plain-Semen-CP','{\"type\":\"select\",\"help\":\"Greyish White\",\"option\":\",Greyish White, Whitish, Pale Yellow, Reddish, Slightly Reddish\"}','None',NULL,NULL,NULL,NULL,NULL),(141,'Microscopic Examination','Plain-Semen-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Semen Examination',NULL,NULL,NULL,NULL,NULL),(142,'Total Sperm Count','Plain-Semen-CP','{\"type\":\"text\",\"help\":\"mil/mL 30 - 300\"}','None',NULL,NULL,NULL,NULL,NULL),(143,'Sperm motility','Plain-Semen-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Sperm Motility ',NULL,NULL,NULL,NULL,NULL),(144,'Actively Motile','Plain-Semen-CP','{\"type\":\"text\",\"help\":\"% 60 - 70\"}','None',NULL,NULL,NULL,NULL,NULL),(145,'Sluggishly Motile','Plain-Semen-CP','{\"type\":\"text\",\"help\":\"%\"}','None',NULL,NULL,NULL,NULL,NULL),(146,'Non - Motile','Plain-Semen-CP','{\"type\":\"text\",\"help\":\"%\"}','None',NULL,NULL,NULL,NULL,NULL),(147,'Bone Marrow Aspiration/Biopsy Number:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration and biopsy',NULL,NULL,NULL,NULL,NULL),(148,'Nature of Specimen:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration and biopsy',NULL,NULL,NULL,NULL,NULL),(149,'Brief Clinical History:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration and biopsy',NULL,NULL,NULL,NULL,NULL),(150,'Bone Marrow Aspiration Report','EDTA-Blood-HI','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','',NULL,NULL,NULL,NULL,NULL),(151,'Site:','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",Left Posterior Superior Iliac Spine, Right Posterior Superior Iliac Spine, Left Anterior Superior Iliac Spine, Right Anterior Superior Iliac Spine, Left Tibial Tuberosity, Right Tibial Tuberosity\"}','',NULL,NULL,NULL,NULL,NULL),(152,'Particles:','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",Grossly appreciated, Grossly not appreciated, Heavily diluted with blood\"}','',NULL,NULL,NULL,NULL,NULL),(153,'Cellularity:','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",Normocellular for age of patient, Hypocellular for age of patient, Hypercellular for age of patient\"}','',NULL,NULL,NULL,NULL,NULL),(154,'M:E ratio','EDTA-Blood-HI','{\"type\":\"text\"}','',NULL,NULL,NULL,NULL,NULL),(155,'Erythropoiesis','EDTA-Blood-HI','{\"type\":\"text\"}','',NULL,NULL,NULL,NULL,NULL),(156,'Myelopoiesis','EDTA-Blood-HI','{\"type\":\"text\"}','',NULL,NULL,NULL,NULL,NULL),(157,'Megakaryopoiesis','EDTA-Blood-HI','{\"type\":\"text\"}','',NULL,NULL,NULL,NULL,NULL),(158,'Iron store:','EDTA-Blood-HI','{\"type\":\"text\"}','',NULL,NULL,NULL,NULL,NULL),(159,'Differential count','EDTA-Blood-HI','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Bone marrow aspiration',NULL,NULL,NULL,NULL,NULL),(160,'Blasts:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration',NULL,NULL,NULL,NULL,NULL),(161,'Promyelocytes:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration',NULL,NULL,NULL,NULL,NULL),(162,'Myelocytes:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration',NULL,NULL,NULL,NULL,NULL),(163,'Metamyelocytes:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration',NULL,NULL,NULL,NULL,NULL),(164,'Neutrophils/Band cells','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration',NULL,NULL,NULL,NULL,NULL),(165,'Lymphocytes:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration',NULL,NULL,NULL,NULL,NULL),(166,'Eosinophils and precursors','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration',NULL,NULL,NULL,NULL,NULL),(167,'Monocytes:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration',NULL,NULL,NULL,NULL,NULL),(168,'Basophils:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration',NULL,NULL,NULL,NULL,NULL),(169,'Plasma cells:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration',NULL,NULL,NULL,NULL,NULL),(170,'others:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration',NULL,NULL,NULL,NULL,NULL),(171,'Findings:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration',NULL,NULL,NULL,NULL,NULL),(172,'Conclusion:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration',NULL,NULL,NULL,NULL,NULL),(173,'Bone Marrow Biopsy Report','EDTA-Blood-HI','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','',NULL,NULL,NULL,NULL,NULL),(174,'Site:','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",Left Posterior Superior Iliac Spine, Right Posterior Superior Iliac Spine, Left Anterior Superior Iliac Spine, Right Anterior Superior Iliac Spine, Left Tibial Tuberosity, Right Tibial Tuberosity\"}','for BMB','','','','',''),(175,'Cellularity:','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",Normocellular for age of patient, Hypocellular for age of patient, Hypercellular for age of patient\"}','for BMB','','','','',''),(176,'Erythropoesis:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow biopsy','','','','',''),(177,'Myelopoesis:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow biopsy','','','','',''),(178,'Megakaryopoesis:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow biopsy','','','','',''),(179,'Findings:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow biopsy','','','','',''),(180,'Conclusion:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow biopsy','','','','',''),(181,'Epithelial Cells Type','Plain-Urine-CP','{\"type\":\"select\",\"option\":\",Squamous Epithelial Cells, Transitional Epithelial Cells\"}','','','','','',''),(400,'Lymphocyte','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"%\"}','','','','','',''),(401,'Eosinophil','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"%\"}','','','','','',''),(402,'Monocyte','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"%\"}','','','','','',''),(403,'Basophil','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"%\"}','','','','','',''),(404,'Others','EDTA-Blood-HI','{\"type\":\"text\"}','For premature dc','','','','',''),(501,'Parasite','EDTA-Blood-HI','{\"type\":\"json\",\"json\":{\"Parasite Name\":{\"select\":\",PF,PV,F\"},\"Number\":{\"select\":\",+,++,+++\"},\"Stages\":\"Text\"}}','','','','','',''),(502,'Basic','EDTA-Blood-HI','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Basic PS','','','','',''),(503,'Advanced','EDTA-Blood-HI','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Advanced PS','','','','',''),(510,'Manual Platelet Count','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"/cmm 150000-400000 (Impedance)\",\"step\":\"1\",\"interval_l\":\"150000\",\"interval_h\":\"400000\",\"cinterval_l\":\"20000\",\"cinterval_h\":\"1000000\"}','None','','','','',''),(511,'Platelets on Peripheral Smear','EDTA-Blood-HI','{\"type\":\"select\",\"help\":\"\",\"option\":\",Adequate,Reduced,Increased,Mildly Reduced, Markedly Reduced,\"}','','','','','',''),(555,'Hemoglobin','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"gm/dL M: 13-17 F:12-15 (Non-CyanomethHb)\",\"interval_l\":\"12\",\"interval_h\":\"17\",\"cinterval_l\":\"7\",\"cinterval_h\":\"20\",\"step\":\"0.1\"}','None','','','','',''),(600,'Hemogram and Blood Indices','EDTA-Blood-HI','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For CBC','','','','',''),(601,'Differential Count (Microscopy)','EDTA-Blood-HI','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For CBC','','','','',''),(602,'Remark','Citrate-Blood-HI','{\"type\":\"text\"}','For PT','','','','',''),(603,'Remark','Citrate-Blood-HI','{\"type\":\"text\"}','For aPTT','','','','',''),(1000,'Sample_requirement','None','{\"type\":\"text\",\"help\":\"Describe\",\"readonly\":\"readonly\"}','None','','.Sample Details','','','compact_report'),(1001,'MRD','None','{\"readonly\":\"readonly\"}','None','','.Patient Details','','','compact_report'),(1002,'Name','None','{\"type\":\"text\"}','None','','.Patient Details','','','compact_report'),(1003,'Request_id','None','{\"type\":\"text\",\"help\":\"Describe\"}','None','','.Patient Details','','','compact_report'),(1004,'Department','None','{\"type\":\"select\",\"option\":\",ART,Dentistry,IHBT,EmergencyMedicine,ENT,Medicine,OG,Opthalmology,Orthopaedics,Kidney Hospital,Paediatrics,PlasticSurgery,Psychiatry,Skin,Surgery,TBChest,Samaras,Unspecified\"}','None','','.Patient Details','','','compact_report'),(1005,'Unit','None','{\"type\":\"select\",\"option\":\",-,1,2,3,4,5,6,7,8,A,B\"}','None','','.Patient Details','','','compact_report'),(1006,'Location','None','{\"type\":\"select\",\"option\":\",C2(684),Radio_camp,old building 1st floor,old building 2nd floor,old building 3rd floor,old building ground floor,IHBT,C3(685),PICU,Casualty(446),E0(506),E1(507),E2(508),E3(509),E4(510),EMW(485),EOT(591),F0(511),F1(512),F2(513),F3(514),F3N(503),F4(515),FOW,G0(516),G0MICU(500),G1(517),G2(518),G3(519),G4(520),GOT(551),H0(497),H1(522),H2(523),H3(524),H4(525),HemodialysisUNIT(741),Isolation Ward,J0(521),J1(531),J2(527),J3(529),J4(530),LeptoWard(506),MICU(500-2),MOT(567),MOW(310),NEWORTHO(311),NOT(551),NOW(311),O2(539),OB(546),OBICU,OLDORTHO(310),OPD,PrisonerWard(310),RI(548),RII(564),RIII(580),SICU(478),SpecialWard(570-71),SwineFluWard(529),StemGround,StemF1,StemF2,StemF3,StemF4,StemF5,StemF6,StemF7,StemF8,StemF9,StemF10,StemHosp,KidneyOPD,StemOPD,TBICU,TRAUMA1(476),TRAUMA2(485),TraumaCenter(472-87),KidneyF5ICU,KidneyF5,kidneyF6,StemTriageSemiCritical,StemTriageICU,Stem Triage,Kidney 6th ICU- B,Kidney 6th ICU-A,Kidney F7,NICU,SAMRAS,Unspecified\"}','None','','.Patient Details','','','compact_report'),(1007,'Age(Y)','None','{\"type\":\"number\",\"help\":\"Full Years\"}','','','.Patient Details','','','compact_report'),(1008,'Sex','None','{\"type\":\"select\",\"option\":\",M,F,O\"}','','','.Patient Details','','','compact_report'),(1009,'Sample_Collection_Time','None','{\"type\":\"datetime-local\", \"pattern\":\"[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}\" }','','','.Sample Details','','','compact_report'),(1010,'Sample_Receipt_Time','None','{\"type\":\"datetime-local\", \"pattern\":\"[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}\" }','','','.Sample Details','','','compact_report'),(1011,'Request_Entry_time','None','{\"type\":\"datetime-local\",\"pattern\":\"[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}\"}','','','.Sample Details','','','compact_report'),(1012,'DOB','None','{\"type\":\"date\"}','','','','','',''),(1013,'Laboratory Name','None','{\"type\":\"select\",\"option\":\",Haematology and Clinical Pathology OPD-10 New Civil Hospital Surat Ph: 216-2244456 Ext: 424 425 426,Biochemistry Near Blood Bank New Civil Hospital Surat Ph: 0216-2244456 Ext: 317\"}','','','','','',''),(1014,'released_by','None','{\"type\":\"text\",\"readonly\":\"readonly\"}','','','','','',''),(1015,'Collection_Date','None','{\"type\":\"date\"}','','FNAC','.Sample Details','','','compact_report'),(1016,'Collection_Time','None','{\"type\":\"time\"}','','FNAC','.Sample Details','','','compact_report'),(1017,'Received_on','None','{\"type\":\"date\"}','','','.Sample Details','','','compact_report'),(1018,'Receipt_time','None','{\"type\":\"time\"}','','','.Sample Details','','','compact_report'),(1019,'(Interim) Released by ','None','{\"type\":\"text\"}','','','.Sample Details','','','compact_report'),(1020,'Age(M)','None','{\"type\":\"number\",\"help\":\"Full Months\"}','','','.Patient Details','','','compact_report'),(1021,'Age(D)','None','{\"type\":\"number\",\"help\":\"Days\"}','','','.Patient Details','','','compact_report'),(1022,'Sample Remark','None','','','','.Sample Details','','','compact_report'),(1023,'Sample Collection Condition','None','{\"type\":\"select\",\"option\":\"Random,Fasting,Postprendial-2HR,PostGlucose-75GM-1HR,PostGlucose-75GM-2HR,PostGlucose-75GM-3HR,PostGlucose-50GM-1HR\"}','','','.Sample Details','','','compact_report'),(1024,'email','None','{\"type\":\"select\",\"option\":\",suratcv19@gmail.com\"}','suratcv19@gmail.com','','.Patient Details','','','compact_report'),(1025,'mobile','None','{\"type\":\"realtext\"}','','','.Patient Details','','','compact_report'),(1026,'sample_volume','None','{\"type\":\"select\",\"option\":\"-,0.5,1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5\"}','','','.Sample Details','','','compact_report'),(1027,'request_date','None','{\"type\":\"date\",\"hide\":\"yes\"}','','','.Sample Details','','','compact_report'),(1028,'request_time','None','{\"type\":\"time\",\"hide\":\"yes\"}','','','.Sample Details','','','compact_report'),(1029,'sample_preparation_date','None','{\"type\":\"date\",\"hide\":\"yes\"}','','','.Sample Details','','','compact_report'),(1030,'sample_preparation_time','None','{\"type\":\"time\",\"hide\":\"yes\"}','','','.Sample Details','','','compact_report'),(1031,'analysis_date','None','{\"type\":\"date\",\"hide\":\"yes\"}','','','.Sample Details','','','compact_report'),(1032,'analysis_time','None','{\"type\":\"time\",\"hide\":\"yes\"}','','','.Sample Details','','','compact_report'),(1033,'verification_date','None','{\"type\":\"date\",\"hide\":\"yes\"}','','','.Sample Details','','','compact_report'),(1034,'verification_time','None','{\"type\":\"time\",\"hide\":\"yes\"}','','','.Sample Details','','','compact_report'),(1035,'release_date','None','{\"type\":\"date\",\"readonly\":\"readonly\"}','','','.Sample Details','','','compact_report'),(1036,'release_time','None','{\"type\":\"time\",\"readonly\":\"readonly\"}','','','.Sample Details','','','compact_report'),(1037,'interim_release_date','None','{\"type\":\"date\",\"readonly\":\"readonly\"}','','','.Sample Details','','','compact_report'),(1038,'interim_release_time','None','{\"type\":\"time\",\"readonly\":\"readonly\"}','','','.Sample Details','','','compact_report'),(1039,'wing','None','{\"type\":\"select\",\"option\":\"-,A,B,C,D\"}','','','.Sample Details','','','compact_report'),(1040,'Transporter','None','{\"type\":\"select\",\"option\":\"-,Manish,Jignesh,Jayaben,Suraj\"}','','','.Sample Details','','','compact_report'),(1041,'ThyroxinRx','None','{\"type\":\"select\",\"option\":\",Yes,No\"}','','','.Sample Details','','','compact_report'),(1043,'sms_date','None','{\"type\":\"date\",\"hide\":\"yes\"}','','','','','',''),(1044,'sms_time','None','{\"type\":\"time\",\"hide\":\"yes\"}','','','','','',''),(1045,'request_id','None','{\"type\":\"id_multi_sample\",\"table\":\"request_id\",\"readonly\":\"readonly\",\"unique_prefix\":\"R-\"}','inserted, never edited, as group of samples','unique','.Sample Details/IDs','','10','compact_report'),(1046,'opd_id','None','{\"type\":\"id_single_sample\",\"table\":\"opd_id\",\"readonly\":\"readonly\",\"unique_prefix\":\"O-\"}','inserted, never edited, one for each sample','unique','.Sample Details/IDs','','20','compact_report'),(1047,'ward_id','None','{\"type\":\"id_single_sample\",\"table\":\"ward_id\",\"readonly\":\"readonly\",\"unique_prefix\":\"W-\"}','inserted, never edited, one for each sample','unique','.Sample Details/IDs','','30','compact_report'),(1099,'LDL Cholesterol(alt)','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" mg/dL <130 (Calculated)\",\"calculate\":\"(E/0.948) - (E/0.971) -  (E/8.56 + ( (E-E)/2140 ) - ( (E^2)/16100 )) - 9.44\",\"ex_list\":\" 5015,5016,5018,5015,5016,5018\",\"equipment\":\"C\"}','','','','','',''),(2001,'Clinical History','Formalin-Tissue-HP','{\"zoom\":\"zoom\"}','','','','','',''),(2002,'Nature of specimen','Formalin-Tissue-HP','{\"zoom\":\"zoom\"}','','','','','',''),(2003,'Macroscopic examination done by','Formalin-Tissue-HP','','','','','','',''),(2004,'Total Number of Blocks','Formalin-Tissue-HP','','','','','','',''),(2005,'Macroscopic Examination','Formalin-Tissue-HP','{\"zoom\":\"zoom\"}','','','','','',''),(2006,'Microscopic Examination','Formalin-Tissue-HP','{\"zoom\":\"zoom\"}','','','','','',''),(2007,'Conclusion','Formalin-Tissue-HP','{\"zoom\":\"zoom\"}','For Formalin HP specimen','','','','',''),(2008,'Notes','Formalin-Tissue-HP','{\"zoom\":\"zoom\"}','For Formalin HP specimen','','','','',''),(2009,'Stains','Formalin-Tissue-HP','','','','','','',''),(2010,'General','Formalin-Tissue-HP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Histopathology','','','','',''),(2011,'.                                              .','Formalin-Tissue-HP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Histopathology','','','','',''),(2012,'Dr.','None','{\"type\":\"select\",\"option\":\",Komal Patel (M.D Pathology),V M Bhagat (M.D Pathology),Sejal Gamit (M.D Pathology)\"}','','','','','',''),(2013,'Dr.','None','{\"type\":\"select\",\"option\":\",Komal Patel (M.D Pathology),V M Bhagat (M.D Pathology),Sejal Gamit (M.D Pathology)\"}','','','','','',''),(2014,'Dr.','None','{\"type\":\"select\",\"option\":\",Komal Patel (M.D Pathology),V M Bhagat (M.D Pathology),Sejal Gamit (M.D Pathology)\"}','','','','','',''),(2015,'Dr.','None','{\"type\":\"select\",\"option\":\",Komal Patel (M.D Pathology),V M Bhagat (M.D Pathology),Sejal Gamit (M.D Pathology)\"}','','','','','',''),(5001,'Creatinine','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"mg/dL (Jaffe two point)\\n Male: 0.9-1.3\\n Female: 0.6-1.1\\n(Not in NABL Scope)\",\"step\":\"0.1\",\"interval_h\":\"1.3\",\"cinterval_h\":\"4.0\",\"ainterval_h\":\"40.0\",\"ainterval_l\":\"0.1\",\"equipment\":\"C\",\"accr_status\":\"no\",\"cost\":\"150\"}','Biochemistry/OPD/RFT,Biochemistry/OPD/Basic,Biochemistry/Basic/RFT','LRE,LRE-GLC,RFT-Electrolyte','RFT','','',''),(5002,'Urea','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"mg/dL 13-43 (Urease  GLDH)\",\"interval_h\":\"43\",\"interval_l\":\"13\",\"cinterval_h\":\"100\",\"ainterval_h\":\"400\",\"equipment\":\"C\",\"cost\":\"200\"}','Biochemistry/OPD/RFT,Biochemistry/OPD/Basic,Biochemistry/Basic/RFT','Biochemistry/OPD/RFT,Biochemistry/OPD/Basic,Biochemistry/Basic/RFT','RFT','','',''),(5006,'Alanine Transaminase','Plain-Blood-BI','{\"type\":\"text\",\"help\":\"U/L <45 (L-Alanine LDH UV Kinetic)\",\"interval_h\":\"45\",\"cinterval_h\":\"450\",\"ainterval_h\":\"4500\",\"equipment\":\"C\",\"cost\":\"100\"}','Biochemistry/OPD/LFT,Biochemistry/OPD/Basic,Biochemistry/Basic/LFT','LRE,LRE-GLC,Biochemistry/OPD/LFT,Biochemistry/OPD/Basic,Biochemistry/Basic/LFT','LFT','','',''),(5007,'Alkaline Phosphatase','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"U/L 42-128 (pNPP with AMP buffer)\",\"interval_h\":\"128\",\"cinterval_h\":\"1000\",\"ainterval_h\":\"3000\",\"equipment\":\"C\",\"cost\":\"70\"}','Biochemistry/OPD/LFT,Biochemistry/OPD/Basic,Biochemistry/Basic/LFT','Biochemistry/OPD/LFT,Biochemistry/OPD/Basic,Biochemistry/Basic/LFT','LFT','','',''),(5008,'Amylase','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"U/L 28-100 (CNPG)\",\"interval_h\":\"100\",\"cinterval_h\":\"400\",\"ainterval_h\":\"5000\",\"equipment\":\"C\",\"cost\":\"350\"}','','','','','',''),(5009,'Total Billirubin','Plain-Blood-BI','{\"type\":\"text\",\"help\":\"mg/dL <1.3 (Diazo Reaction)\",\"step\":\"0.1\",\"cinterval_h\":\"15\",\"interval_h\":\"1.3\",\"ainterval_h\":\"50\",\"equipment\":\"C\",\"cost\":\"50\"}','Biochemistry/OPD/LFT,Biochemistry/OPD/Basic,Biochemistry/OPD/LFT,/Biochemistryochemistry/Basic/LFT','LRE,LRE-GLC,Biochemistry/OPD/LFT,Biochemistry/OPD/Basic,Biochemistry/OPD/LFT,Biochemistry/Basic/LFT','LFT','','',''),(5010,'Direct Billirubin','Plain-Blood-BI','{\"type\":\"text\",\"help\":\"mg/dL <0.4 (Diazo Reaction)\",\"step\":\"0.1\",\"interval_h\":\"0.4\",\"ainterval_h\":\"50\",\"equipment\":\"C\",\"cost\":\"50\"}','Biochemistry/OPD/LFT,Biochemistry/OPD/Basic,Biochemistry/Basic/LFT','LRE,LRE-GLC,Biochemistry/OPD/LFT,Biochemistry/OPD/Basic,Biochemistry/Basic/LFT','LFT','','',''),(5011,'Albumin','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" g/dL <3.5-5.2 (BCG)\",\"step\":\"0.1\",\"cinterval_l\":\"1\",\"interval_h\":\"5.2\",\"interval_l\":\"3.5\",\"ainterval_h\":\"10\",\"ainterval_l\":\"0.5\",\"equipment\":\"C\",\"cost\":\"130\"}','Ca-PO-Alb-TP','Ca-PO-Alb-TP','LFT','','',''),(5012,'Total Protein','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" g/dL <6.4-8.3 (Biuret)\",\"step\":\"0.1\",\"cinterval_l\":\"3\",\"interval_h\":\"8.3\",\"interval_l\":\"6.4\",\"ainterval_h\":\"15\",\"ainterval_l\":\"1\",\"equipment\":\"C\",\"cost\":\"100\"}','Ca-PO-Alb-TP','Ca-PO-Alb-TP','LFT','','',''),(5013,'Aspartate transaminase','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"U/L <35 ( UV Kinetic)\",\"interval_h\":\"35\",\"cinterval_h\":\"450\",\"ainterval_h\":\"4500\",\"equipment\":\"C\"}','Biochemistry/OPD/LFT/Advanced,Biochemistry/OPD/Advanced,Biochemistry/Basic/LFT/Advanced','Biochemistry/OPD/LFT/Advanced,Biochemistry/OPD/Advanced,Biochemistry/Basic/LFT/Advanced','LFT','','',''),(5014,'Calcium','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"mg/dL 8.6-10.2 (Arsenazo III)\",\"step\":\"0.1\",\"cinterval_l\":\"6.5\",\"cinterval_h\":\"13\",\"interval_l\":\"8.6\",\"interval_h\":\"10.2\",\"ainterval_h\":\"15\",\"ainterval_l\":\"3\",\"equipment\":\"C\"}','Ca-PO-Alb-TP','Ca-PO-Alb-TP','Electrolytes','','',''),(5015,'Total Cholesterol','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" mg/dL <200 (CHOD-POD)\",\"interval_h\":\"200\",\"ainterval_h\":\"1000\",\"ainterval_l\":\"30\",\"equipment\":\"C\"}','Others','GLC-Lipid,Others','LFT','','',''),(5016,'HDL Cholesterol','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" mg/dL >40 (Dextransulphate-Mg2+precipitat)\",\"interval_l\":\"40\",\"equipment\":\"C\"}','Others','Others','','','',''),(5017,'LDL Cholesterol','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" mg/dL <130 (Calculated)\",\"interval_h\":\"130\",\"calculate\":\"E-E-E\",\"ex_list\":\"5015,5016,5028\",\"equipment\":\"C\"}','Others','Others','','','',''),(5018,'Triglyceride','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"mg/dL <150 (LipaseGPOPOD)\",\"interval_h\":\"150\",\"cinterval_h\":\"1000\",\"ainterval_h\":\"1500\",\"equipment\":\"C\"}','Others','GLC-Lipid,Others','Lipid Profile','','',''),(5019,'Sodium','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" mmol/L 136-145 (Direct ISE)\",\"cinterval_l\":\"129\",\"cinterval_h\":\"160\",\"interval_h\":\"145\",\"interval_l\":\"136\",\"ainterval_h\":\"175\",\"ainterval_l\":\"110\",\"equipment\":\"C\",\"accr_status\":\"yes\"}','Others','LRE,LRE-GLC,RFT-Electrolyte','Electrolytes',NULL,NULL,NULL),(5020,'Potassium','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" mmol/L 3.5-5.1 (Direct ISE)\",\"step\":\"0.1\",\"cinterval_l\":\"3\",\"cinterval_h\":\"7.1\",\"interval_h\":\"5.1\",\"interval_l\":\"3.5\",\"ainterval_h\":\"7.5\",\"ainterval_l\":\"1\",\"equipment\":\"C\"}','','LRE,LRE-GLC,RFT-Electrolyte','Electrolytes',NULL,NULL,NULL),(5021,'Iron','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"microgm/dL 41-141 (Ferrozine)\",\"interval_h\":\"141\",\"interval_l\":\"41\",\"ainterval_h\":\"750\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5022,'TIBC','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"microgm/dL 251-406(calculated)\",\"interval_h\":\"406\",\"interval_l\":\"251\",\"ainterval_h\":\"750\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5023,'UIBC','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"microgm/dL 120-470((Ferrozine Alkaline PH)\",\"interval_h\":\"470\",\"interval_l\":\"120\",\"ainterval_h\":\"600\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5024,'Indirect Billirubin','Plain-Blood-BI','{\"type\":\"text\",\"calculate\":\"E-E\",\"ex_list\":\"5009,5010\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mg/dL)<1.3\",\"cinterval_h\":\"15\",\"interval_h\":\"1.3\",\"ainterval_h\":\"50\",\"equipment\":\"C\"}','','LRE,LRE-GLC','LFT',NULL,NULL,NULL),(5025,'Lactate Dehydrogenase','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"U/L <360 (L to P UV Kinetic)\",\"interval_h\":\"360\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5026,'Lipase','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" U/L 0-5 (Turbidimetry )\",\"interval_h\":\"5\",\"equipment\":\"C\"}','','','','','',''),(5027,'Uric Acid','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"mg/dL 2.6-7.2 (Uricase POD)\",\"step\":\"0.1\",\"interval_h\":\"7.2\",\"cinterval_h\":\"10\",\"ainterval_h\":\"20\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5028,'VLDL Cholesterol','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" mg/dL <30 (Calculated)\",\"interval_h\":\"30\",\"calculate\":\"E/5\",\"ex_list\":\"5018\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5029,'Glucose','Plain-CSF-BI','{\"type\":\"number\",\"help\":\"mg/dl 40-70 (GOD-POD)\",\"interval_l\":\"40\",\"interval_h\":\"70\",\"cinterval_l\":\"30\",\"ainterval_h\":\"1500\",\"equipment\":\"C\"}','','LRE-GLC,GLC-Lipid,Glucose','',NULL,NULL,NULL),(5030,'Total Protein','Plain-CSF-BI','{\"type\":\"number\",\"help\":\"mg/dL 15-40 (Pyrogallol red)\",\"interval_l\":\"15\",\"interval_h\":\"40\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5031,'Glucose','Fluoride-Blood-BI','{\"type\":\"number\",\"help\":\"mg/dl (GOD-POD endpoint)\\n **Diabetes Mellitus (ADA 2016)**\\n   ===========================\\nFasting >126 mg/dL \\nPost Glucose (75gm) >=200 mg/dL \\n\\n **Impaired Glucose Tolerance (ADA 2016)**\\n   =====================================\\nFasting 100-125 mg/dL\\nPost Glucose (75gm) 140-199 mg/dL\",\"interval_l\":\"70\",\"interval_h\":\"140\",\"cinterval_l\":\"55\",\"cinterval_h\":\"300\",\"ainterval_h\":\"1500\",\"ainterval_l\":\"5\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5032,'Adenosine Deaminase','Plain-CSF-BI','{\"type\":\"number\",\"help\":\"U/mL <15 (Berthelot)\",\"interval_h\":\"15\"}','','','',NULL,NULL,NULL),(5033,'Adenosine Deaminase','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\"U/mL N/A (Berthelot)\"}','','','',NULL,NULL,NULL),(5034,'Adenosine Deaminase','Plain-Pleural Fluid-BI','{\"type\":\"number\",\"help\":\"U/mL N/A (Berthelot)\"}','','','',NULL,NULL,NULL),(5035,'Glucose','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\"mg/dl NA(GOD-POD)\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5036,'Glucose','Plain-Pleural Fluid-BI','{\"type\":\"number\",\"help\":\"mg/dl NA(GOD-POD)\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5037,'Total Protein','Plain-Pleural Fluid-BI','{\"type\":\"number\",\"help\":\"g/dL NA(Biuret)\",\"step\":\"0.1\",\"method\":\"Biuret\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5038,'Total Protein','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\"g/dL NA(Biuret)\",\"step\":\"0.1\",\"method\":\"Biuret\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5039,'Lipase','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\"U/L NA (Turbidimetry)\",\"equipment\":\"C\"}','','','','','',''),(5040,'Amylase','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\"U/L NA(CNPG)\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5041,'Lactate Dehydrogenase','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\"U/L NA(L to P UV Kinetic)\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5042,'Cholesterol','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A(CHOD-POD)\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5043,'Triglyceride','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A(Lipase  GPO - POD)\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5044,'Amylase','Plain-Pleural Fluid-BI','{\"type\":\"number\",\"help\":\"U/L NA(CNPG)\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5045,'Lipase','Plain-Pleural Fluid-BI','{\"type\":\"number\",\"help\":\"U/L NA (Turbidimetry)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','','','',''),(5046,'Lactate Dehydrogenase','Plain-Pleural Fluid-BI','{\"type\":\"number\",\"help\":\"U/L NA(L to P UV Kinetic)\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5047,'Lactate Dehydrogenase','Plain-CSF-BI','{\"type\":\"number\",\"help\":\"U/L NA(L to P UV Kinetic)\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5048,'Sodium','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mmol/L N/A(Direct ISE)\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5049,'Potassium','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mmol/L N/A(Direct ISE)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5050,'Calcium','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A (Arsenazo III)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5051,'Phosphorus','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A (Ammonium Molybdate)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5052,'Creatinine','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A (Jaffe two point)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5053,'Total Protein','Plain-Urine-BI','{\"type\":\"number\",\"help\":\"g/dL N/A (Biuret)\",\"step\":\"0.1\",\"method\":\"Biuret\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5054,'Ketone body','Plain-Urine-BI','{\"type\":\"select\",\"option\":\", Positive , Negative\",\"help\":\" (Nitropruside)\",\"equipment\":\"K\"}','','','','','',''),(5055,'Uric Acid','Plain-Urine-BI','{\"type\":\"number\",\"help\":\"mg/dL N/A (Uricase POD)\",\"step\":\"0.1\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5056,'Protein:creatinine Ratio','Plain-Urine-BI','{\"type\":\"number\",\"calculate\":\"E/e\",\"ex_list\":\"5085,5052\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mg/mg)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5057,'Calcium:creatinine Ratio','Plain-Urine-BI','{\"type\":\"number\",\"calculate\":\"E/e\",\"ex_list\":\"5050,5052\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mg/mg)\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5058,'24 hours Urine Volume','Plain-Urine-BI','{\"type\":\"number\",\"help\":\"mL (24 hours urine volume)\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5059,'24 hours Urine  Protein','Plain-Urine-BI','{\"type\":\"number\",\"calculate\":\"E*E/100\",\"ex_list\":\"5058,5085,\",\"step\":\"0.1\", \"decimal\":\"1\",\"help\":\"mg(Calculated)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5060,'eGFR','Plain-Blood-BI','{\"type\":\"number\",\"calculate\":\"175*E^-1.154*E^-.203*E*E\",\"ex_list\":\"5001,5088,5087,5089\",\"step\":\"0.1\", \"decimal\":\"1\",\"help\":\"mL/min/1.73 m²(Calculated)(MDRD)\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5061,'Serum Osmolality','Plain-Blood-BI','{\"type\":\"number\",\"calculate\":\"2*E+(E*0.17)+(E*0.06)+9\",\"ex_list\":\"5019,5002,5031\",\"step\":\"0.1\", \"decimal\":\"1\",\"help\":\"(Calculated)\",\"equipment\":\"C\"}','','','',NULL,NULL,NULL),(5062,'Protein Electrophoresis','Plain-Blood-BI','{\"zoom\":\"zoom\"}','','','',NULL,NULL,NULL),(5063,'Electrophoresis Observation','EDTA-Blood-BI','{\"type\":\"subsection\",\"readonly\":\"readonly\",\"equipment\":\"E\"}','','','',NULL,NULL,NULL),(5064,'Dithonite Test Observation','EDTA-Blood-BI','{\"type\":\"subsection\",\"readonly\":\"readonl\"}','','','',NULL,NULL,NULL),(5065,'Band at HbA position','EDTA-Blood-BI','{\"type\":\"select\",\"option\":\",Not Seen,Light,Dark\"}','','','',NULL,NULL,NULL),(5066,'Band at HbF position','EDTA-Blood-BI','{\"type\":\"select\",\"option\":\",Not Seen,Light,Dark\"}','','','',NULL,NULL,NULL),(5067,'Band at HbS position','EDTA-Blood-BI','{\"type\":\"select\",\"option\":\",Not Seen,Light,Dark\"}','','','',NULL,NULL,NULL),(5068,'Band at HbA2 position','EDTA-Blood-BI','{\"type\":\"select\",\"option\":\",Not Seen,Light,Dark\"}','','','',NULL,NULL,NULL),(5069,'Other Bands','EDTA-Blood-BI','{\"zoom\":\"zoom\"}','','','',NULL,NULL,NULL),(5070,'Dithonite test without Urea','EDTA-Blood-BI','{\"type\":\"select\",\"option\":\",Not Done,Turbid,Clear\"}','','','','','',''),(5071,'Dithonite test with Urea','EDTA-Blood-BI','{\"type\":\"select\",\"option\":\",Not Done,Turbid,Clear\"}','','','','','',''),(5072,'Clinical Laboratory Interpretation','EDTA-Blood-BI','{\"zoom\":\"zoom\"}','For HB Electrophoresis',NULL,NULL,NULL,NULL,NULL),(5073,'Electrophoresis Image','EDTA-Blood-BI','{\"type\":\"blob\",\"img\":\"png\",\"width\":\"300\",\"height\":\"200\"}','','','','','',''),(5074,'Remarks','EDTA-Blood-BI','','',NULL,NULL,NULL,NULL,NULL),(5075,'Remarks','Plain-Blood-BI','','',NULL,NULL,NULL,NULL,NULL),(5076,'Electrophoresis Image','Plain-Blood-BI','{\"type\":\"blob\",\"img\":\"png\",\"width\":\"300\",\"height\":\"200\"}','','','','','',''),(5077,'Clinical Laboratory Interpretation','Plain-Blood-BI','{\"zoom\":\"zoom\",\"equipment\":\"PR\"}','For HB Electrophoresis',NULL,NULL,NULL,NULL,NULL),(5078,'Electrophoresis Observation','Plain-Blood-BI','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','',NULL,NULL,NULL,NULL,NULL),(5079,'Band at M position','Plain-Blood-BI','{\"type\":\"select\",\"option\":\",Not Seen,Light,Dark\"}','',NULL,NULL,NULL,NULL,NULL),(5080,'Total Protein','Plain-CSF-BI','{\"type\":\"number\",\"help\":\"g/dL 0.015-0.040 (Biuret)\",\"method\":\"Biuret\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5081,'Total Protein','Plain-Pleural Fluid-BI','{\"type\":\"number\",\"help\":\"mg/dL NA(Pyrogallol Red)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5082,'Total Protein','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\"mg/dL NA(Pyrogallol Red)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5083,'Sodium','Plain-CSF-BI','{\"type\":\"number\",\"help\":\" mmol/L N/A(Direct ISE)\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5084,'Calcium','HCL-Urine-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A (Arsenazo III)(Preservative:30 mL 6 M HCL)\",\"step\":\"0.1\",\"method\":\"24Hr Urine\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5085,'Total Protein','Plain-Urine-BI','{\"type\":\"number\",\"help\":\"mg/dL NA(Pyrogallol Red)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5086,'Protein:creatinine Ratio','Plain-Urine-BI','{\"type\":\"number\",\"calculate\":\"(E*1000)/e\", \"ex_list\":\"5053,5052\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mg/mg)\",\"method\":\"Biuret\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5087,'Sex for eGFR','Plain-Blood-BI','{\"type\":\"select\",\"option\":\",1,0.742\",\"help\":\" (male:1) (female:0.742)\"}','',NULL,NULL,NULL,NULL,NULL),(5088,'Age for GFR','Plain-Blood-BI','{\"type\":\"number\"}','',NULL,NULL,NULL,NULL,NULL),(5089,'race for eGFR','Plain-Blood-BI','{\"type\":\"select\",\"option\":\",1,1.210\",\"help\":\" (Non african:1) (African:1.210)\"}','',NULL,NULL,NULL,NULL,NULL),(5092,'CK','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"U/L 25-125 (phosphocreatine HK G6PD)\",\"interval_h\":\"125\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5093,'CK-MB','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"U/L 0-24 (Immunoinhibition, HK, G6PD)\",\"interval_h\":\"24\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5094,'Creatinine','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A (Jaffe two point)\",\"step\":\"0.1\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5095,'Sample_Rejection','None','{\"type\":\"select\",\"option\":\",not done as sample inadequate\"}','',NULL,NULL,NULL,NULL,NULL),(5096,'Examination_Rejection','None','{\"type\":\"select\",\"option\":\",not done because instrument is breakdown, some examinations are not done because sample is inadequate,Creatinine is  not done because sample is highly icteric and high bilirubin has negative interference on creatinine level,not done because sample not received, not  done because sample was highly hemolyzed, not done as lab resources are inadequate ,not  done because sample was highly viscous ,examinations are not done because sample is clotted,not done because sample is overfilled\"}','',NULL,NULL,NULL,NULL,NULL),(5097,'Critical_Alert','None','{\"zoom\":\"zoom\"}','',NULL,NULL,NULL,NULL,NULL),(5098,'Remark','None','{\"zoom\":\"zoom\"}','',NULL,NULL,NULL,NULL,NULL),(5099,'Withdrawn_Report','None','{\"zoom\":\"zoom\"}','',NULL,NULL,NULL,NULL,NULL),(5100,'Phosphorus','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" mg/dL <2.5-4.5 (Ammonium Molybdate)\",\"step\":\"0.1\",\"cinterval_l\":\"1\",\"cinterval_h\":\"8.9\",\"interval_h\":\"4.5\",\"interval_l\":\"2.5\",\"ainterval_h\":\"12.0\",\"ainterval_l\":\"0.5\",\"equipment\":\"C\"}','','Ca-PO-Alb-TP','Electrolytes',NULL,NULL,NULL),(5101,'Corrected Calcium','Plain-Blood-BI','{\"type\":\"number\",\"calculate\":\"0.8*(4-E)+E\",\"ex_list\":\"5011,5014\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mg/dL)8.6 - 10.2\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5102,'Ketone body','Plain-Blood-BI','{\"type\":\"select\",\"option\":\",Positive,Negative,Not Done(See Remark)\",\"help\":\" (Nitropruside)\",\"equipment\":\"K\"}','','','','','',''),(5103,'OPD_Sequence','None','','For Biochemistry OPD Sequence',NULL,NULL,NULL,NULL,NULL),(5105,'Lactate Dehydrogenase','Plain-Other-BI','{\"type\":\"number\",\"help\":\"U/L NA(L to P UV Kinetic)\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5106,'Amylase','Plain-Other-BI','{\"type\":\"number\",\"help\":\"U/L NA(CNPG)\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5107,'Lipase','Plain-Other-BI','{\"type\":\"number\",\"help\":\"U/L NA (Turbidimetry)\",\"equipment\":\"C\"}','','','','','',''),(5108,'Glucose','Plain-Other-BI','{\"type\":\"number\",\"help\":\"mg/dl NA(GOD-POD)\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5109,'Cholesterol','Plain-Other-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A(CHOD-POD)\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5110,'Triglyceride','Plain-Other-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A(Lipase  GPO - POD)\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5111,'Micro Protein','Plain-Other-BI','{\"type\":\"number\",\"help\":\"mg/dL NA(Pyrogallol Red)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5112,'Total Protein','Plain-Other-BI','{\"type\":\"number\",\"help\":\" g/dL N/A (Biuret)\",\"step\":\"0.1\",\"method\":\"Biuret\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5113,'Cholinesterase','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" U/L <3000-13000 (Butyrylthiocholine)\",\"cinterval_l\":\"3000\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5114,'HCL wash','Plain-Blood-BI','{\"hide\":\"yes\"}','','','','','',''),(5115,'Total T4','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"nmol/L , 71.2-141 , (ECIA)\",\"equipment\":\"I\"}','',NULL,NULL,NULL,NULL,NULL),(5116,'Total T3','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"nmol/L , 1.49-2.60 , (ECIA)\",\"equipment\":\"I\"}',NULL,NULL,NULL,NULL,NULL,NULL),(5117,'TSH','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"mIU/L , 0.465-4.68 \\n(ECIA)\",\"interval_l\":\"0.465\",\"interval_h\":\"4.68\",\"equipment\":\"I\"}',NULL,NULL,NULL,NULL,NULL,NULL),(5118,'Ferritin','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"microgram/L\\n Male(Adult): 20-250\\n Female(Adult): 10-120\\n Newborn: 25-200 \\n 1 month: 200-600  \\n 2-5 month:50-200  \\n 6 month-15 years:7-140  \\n(ECLIA) \",\"interval_l\":\"6.24\",\"interval_h\":\"464\",\"equipment\":\"I\"}','',NULL,NULL,NULL,NULL,NULL),(5120,'Procalcitonin (PCT)','Plain-Blood-BI','{\"type\":\"number\",\"help\": \"microgram/L \\n # less than 0.5 => systemic bacterial infection is unlikely \\n # 0.5-2.0 => systemic bacterial infection is possible \\n # 2.0-10.0 => systemic bacterial infection is likely \\n # more than 10.0 => almost exclusively due to systemic bacterial infection\\n(ECIA)\", \"interval_h\":\"0.5\",\"cinterval_h\":\"2\",\"equipment\":\"I\"}','',NULL,NULL,NULL,NULL,NULL),(5121,'CRP','Plain-Blood-BI','{\"type\":\"number\",\"help\": \"mg/L \\n less than 10 \\n This is not hsCRP. Donot use this result for interpretation when result is less than 10\\n(Immunoturbidimetry)\",\"interval_h\":\"10\",\"equipment\":\"D\"}','','','.sample_details','','','compact_report'),(5122,'D-dimer','Citrate-Blood-BI','{\"type\":\"number\",\"help\":\"microgram/L , <500 , (ECIA)\",\"interval_h\":\"500\",\"equipment\":\"D\"}',NULL,NULL,NULL,NULL,NULL,NULL),(5123,'Cardiac Troponin I (cTnI)','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"ng/L\\n Male: 8.8-23.7\\n Female: 4.4-21.4\\n (high sensitivity, ECIA)\",\"interval_h\":\"23.7\",\"equipment\":\"I\"}',NULL,NULL,NULL,NULL,NULL,NULL),(5124,'Interleukin-6','EDTA-Blood-BI','{\"help\":\"pg/mL\\n  <7.0 \\n (upconverting phosphor immunoassay)\",\"interval_h\":\"7\",\"equipment\":\"6\"}',NULL,NULL,NULL,NULL,NULL,NULL),(5125,'NT-ProBNP','Plain-Blood-BI','{\"help\":\"pg/ml (ECIA)\\n===Heart Failure Unlikely===\\n # Any age, <300\\n====Heart Failure Likely====\\n # 20-50 Y, >450 \\n # 50-75 Y, >900\\n # >75Y, >1800\",\"interval_h\":\"300\",\"equipment\":\"I\"}',NULL,NULL,NULL,NULL,NULL,NULL),(5126,'Request Form','None','{\"type\":\"blob\"}',NULL,NULL,NULL,NULL,NULL,NULL),(5127,'Free T4','Plain-Blood-BI','{\"type\":\"number\",\"help\": \"pmol/L \\n 10.0-28.2 \\n(ECIA)\",\"interval_l\":\"10.0\",\"interval_h\":\"28.2\",\"equipment\":\"I\"}',NULL,NULL,NULL,NULL,NULL,NULL),(5128,'Free T3','Plain-Blood-BI','{\"type\":\"number\",\"help\": \"pmol/L \\n 4.26-8.10 \\n(ECIA)\",\"interval_l\":\"4.26\",\"interval_h\":\"8.10\",\"equipment\":\"I\"}',NULL,NULL,NULL,NULL,NULL,NULL),(5129,'prolactin','Plain-Blood-BI','{\"type\":\"number\",\"help\": \"ng/mL \\n Normal Nonpregnant Female: 3.0-18.6 \\n Male:3.7-17.9 \\n(ECIA)\",\"interval_h\":\"18.6\",\"equipment\":\"I\"}',NULL,NULL,NULL,NULL,NULL,NULL),(5130,'FSH','Plain-Blood-BI','{\"type\":\"number\",\"help\": \"IU/L \\n # normal female follicular phase => 1.98-11.6 \\n # norma female midcycle peak=>5.14-23.4 \\n # normal female lueal phase => 1.38-9.58 \\n # post menopausal female => 21.5- 131 \\n Normal male=> 1.555-9.74 \\n(ECIA)\", \"equipment\":\"I\"}','','','','','',''),(5131,'LH','Plain-Blood-BI','{\"type\":\"number\",\"help\": \"IU/L \\n # normal female follicular phase => 2.58-12.1 \\n # norma female midcycle peak=>27.3-96.9 \\n # normal female lueal phase => 0.833-15.5 \\n # post menopausal female => 13.1- 86.5 \\n(ECIA)\", \"equipment\":\"I\"}','','','','','',''),(5132,'Magnesium','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" mg/dL 1.7-2.7 (Xylidyl blue)\",\"step\":\"0.1\",\"interval_h\":\"2.7\",\"interval_l\":\"1.7\",\"equipment\":\"C\"}','','','','','',''),(5133,'B-hCG','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"IU/L,\\n<=25, \\n(ECIA)\",\"interval_h\":\"25\",\"equipment\":\"I\"}',NULL,NULL,NULL,NULL,NULL,NULL),(5134,'Urine osmolality','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mmol/L<1200 (Calculated)\",\"calculate\":\"E/6+E/18+2*E+2*E+E/11.312\",\"ex_list\":\"5135,5136,5048,5049,5052\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5135,'Urea','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mg/dl(urease GLDH)\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5136,'Glucose','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mg/dl(GOD-POD endpoint)\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5137,'Creatinine','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A (Jaffe two point)\",\"step\":\"0.1\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5138,'HCL wash','Plain-Blood-BI','{\"hide\":\"yes\"}','','','','','',''),(5139,'Adenosine Deaminase','Plain-Other-BI','{\"type\":\"number\",\"help\":\"U/mL N/A (Berthelot)\"}','',NULL,NULL,NULL,NULL,NULL),(5140,'Testosterone','Plain-Blood-BI','{\"type\":\"number\",\"help\": \"nmol/L \\n #  Normal male(20-49 years) : 4.56-28.2 \\n # Normal males(>50 years): 2.49-21.6 \\n #  Females with normal  menstrual  cycles : 0.198-2.67  \\n(ECIA)\", \"equipment\":\"I\"}',NULL,NULL,NULL,NULL,NULL,NULL),(5141,'Total 25-OH Vit-D','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"nmol/L\\n Deficient: <50\\n Insufficient: 50-<75\\n Sufficient: 75-250 \\n potential toxicity: >250\\n(ECIA) \\n Multiply The Value with 0.4 to Covert it from nmol/L into ng/ml \",\"interval_l\":\"75\",\"interval_h\":\"250\",\"equipment\":\"I\"}',NULL,NULL,NULL,NULL,NULL,NULL),(5142,'Vitamin B12','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"pmol/L 176-687  \\n(ECIA)\",\"interval_h\":\"687\",\"interval_l\":\"176\",\"equipment\":\"I\"}',NULL,NULL,NULL,NULL,NULL,NULL),(5143,'pH','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"7.35-7.45 (Direct ISE)\",\"interval_l\":\"7.35\",\"interval_h\":\"7.45\",\"cinterval_l\":\"7.20\",\"cinterval_h\":\"7.60\",\"ainterval_h\":\"7.8\",\"ainterval_l\":\"6.9\",\"equipment\":\"A\"}','',NULL,NULL,NULL,NULL,NULL),(5144,'PCO2','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmHg 32-48 (Direct ISE)\",\"interval_l\":\"32\",\"interval_h\":\"48\",\"cinterval_l\":\"20\",\"cinterval_h\":\"70\",\"equipment\":\"A\"}','',NULL,NULL,NULL,NULL,NULL),(5145,'PO2','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmHg 83-108 (Direct ISE)\",\"interval_l\":\"83\",\"interval_h\":\"108\",\"cinterval_l\":\"40\",\"cinterval_h\":\"250\",\"ainterval_h\":\"500\",\"ainterval_l\":\"20\",\"equipment\":\"A\"}','',NULL,NULL,NULL,NULL,NULL),(5146,'Hematocrit','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"% (Calculated)\\n Male 20-60\\n Female 30-60\",\"interval_l\":\"20\",\"interval_h\":\"60\",\"equipment\":\"A\"}','',NULL,NULL,NULL,NULL,NULL),(5147,'ct Hct','Heparinised Arterial-Blood-BI','','',NULL,NULL,NULL,NULL,NULL),(5148,'Na+','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L 136-145 (Direct ISE)\",\"interval_l\":\"136\",\"interval_h\":\"145\",\"equipment\":\"A\"}','',NULL,NULL,NULL,NULL,NULL),(5149,'K+','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L 3.5-5.1 (Direct ISE)\",\"interval_l\":\"3.5\",\"interval_h\":\"5.1\",\"equipment\":\"A\"}','',NULL,NULL,NULL,NULL,NULL),(5150,'Ionized Calcium(Ca2+)','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L 1.15-1.30 (Direct ISE)\",\"interval_l\":\"1.15\",\"interval_h\":\"1.30\",\"equipment\":\"A\"}','',NULL,NULL,NULL,NULL,NULL),(5151,'Cl-','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L 101-110 (Direct ISE)\",\"interval_l\":\"101\",\"interval_h\":\"110\",\"equipment\":\"A\"}','',NULL,NULL,NULL,NULL,NULL),(5152,' Base(B)','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L -3.0-3.0 (Calculated)\",\"interval_l\":\"-3.0\",\"interval_h\":\"3.0\",\"equipment\":\"A\"}','',NULL,NULL,NULL,NULL,NULL),(5153,'Anion Gap','Heparinised Arterial-Blood-BI','','',NULL,NULL,NULL,NULL,NULL),(5154,'HCO3 ','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L 22.0-28.0 (Calculated)\",\"interval_l\":\"22.0\",\"interval_h\":\"28.0\",\"equipment\":\"A\"}','',NULL,NULL,NULL,NULL,NULL),(5155,'cHCO3-(P,st)c','Heparinised Arterial-Blood-BI','','',NULL,NULL,NULL,NULL,NULL),(5156,'sO2','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L 95.0-99.0 (Calculated)\",\"interval_l\":\"95.0\",\"interval_h\":\"99.0\",\"equipment\":\"A\"}','',NULL,NULL,NULL,NULL,NULL),(5157,'Bilirubin Reference range','Plain-Blood-BI','{\"zoom\":\"zoom\"}',NULL,NULL,NULL,NULL,NULL,NULL),(5158,'Glucose','Heparinised Arterial-Blood-BI','','',NULL,NULL,NULL,NULL,NULL),(5159,'Lactate','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L\\n <1.39 at Bed Rest\\n (Direct ISE)\",\"interval_h\":\"1.3\"}','',NULL,NULL,NULL,NULL,NULL),(5160,'tHb','Heparinised Arterial-Blood-BI','','',NULL,NULL,NULL,NULL,NULL),(5161,'FO2Hb','Heparinised Arterial-Blood-BI','','',NULL,NULL,NULL,NULL,NULL),(5162,'FCOHb','Heparinised Arterial-Blood-BI','','',NULL,NULL,NULL,NULL,NULL),(5163,'FMetHb','Heparinised Arterial-Blood-BI','','',NULL,NULL,NULL,NULL,NULL),(5164,'FHHb','Heparinised Arterial-Blood-BI','','',NULL,NULL,NULL,NULL,NULL),(5165,'HCO3-std','Heparinised Arterial-Blood-BI','','',NULL,NULL,NULL,NULL,NULL),(5166,'ctCO2','Heparinised Arterial-Blood-BI','','',NULL,NULL,NULL,NULL,NULL),(5167,'mOSm','Heparinised Arterial-Blood-BI','','',NULL,NULL,NULL,NULL,NULL),(5168,'BO2','Heparinised Arterial-Blood-BI','','',NULL,NULL,NULL,NULL,NULL),(5169,'ct O2(a)','Heparinised Arterial-Blood-BI','','',NULL,NULL,NULL,NULL,NULL),(5170,'Albumin','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" g/dL <3.5-5.2 (BCG)\",\"step\":\"0.1\",\"cinterval_l\":\"1\",\"interval_h\":\"5.2\",\"interval_l\":\"3.5\",\"ainterval_h\":\"10\",\"ainterval_l\":\"0.5\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5171,'Anti-SARS-CoV-2 IgG','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"Test/Cutoff Ratio \\n <1   = Non reactive\\n >1   = Reactive \\n(ECIA)\",\"equipment\":\"I\"}','',NULL,NULL,NULL,NULL,NULL),(5172,'Sodium','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mmol/L N/A(Direct ISE)\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5173,'Potassium','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mmol/L N/A(Direct ISE)\",\"step\":\"0.1\",\"equipment\":\"C\"}','',NULL,NULL,NULL,NULL,NULL),(5174,'HbA1c','EDTA-Blood-BI','{\"type\":\"number\",\"help\":\" % \\n < 5.7 =normal \\n 5.7-6.4 =prediabetes \\n >6.4 =diabetes \\n (HPLC)\",\"step\":\"0.1\",\"interval_h\":\"6.5\",\"equipment\":\"H\",\"accreditation\":\"yes\"}','','','','','',''),(5175,'SARS-CoV-2 Ag','Plain-Swab-BI','{\"type\":\"number\",\"help\":\"Test/Cutoff Ratio \\n <1   = Non reactive\\n >1   = Reactive \\n(ECIA)\",\"equipment\":\"I\"}','','','','','',''),(5176,'SARS-CoV-2 RT-PCR-E','Plain-Swab-BI','{\"type\":\"number\",\"help\":\"Test/Cutoff Ratio \\n <1   = Non reactive\\n >1   = Reactive \\n(ECIA)\",\"equipment\":\"I\"}','','','','','',''),(5177,'SARS-CoV-2 RT-PCR-N','Plain-Swab-BI','{\"type\":\"number\",\"help\":\"Test/Cutoff Ratio \\n <1   = Non reactive\\n >1   = Reactive \\n(ECIA)\",\"equipment\":\"I\"}','','','','','',''),(5178,'HbA1c Chromatogram','EDTA-Blood-BI','{\"type\":\"blob\",\"img\":\"png\"}','','','','','',''),(5179,'HbF','EDTA-Blood-BI','{\"equipment\":\"H\"}','','','','','',''),(5180,'Rapid SARS-CoV-2 Ag card test','Plain-Swab-BI','{\"type\":\"select\",\"option\":\", Positive , Negative\"}','','','','','',''),(5181,'Albumin','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\" g/dL N/A (BCG)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','','','',''),(5182,'Micro albumin','Plain-Urine-BI','{\"type\":\"number\",\"help\":\"mg/L (Turbilatex)\",\"method\":\"Turbilatex\",\"equipment\":\"C\"}','','','','','',''),(5183,'ACR (Albumin-creatinine ratio)','Plain-Urine-BI','{\"type\":\"number\",\"calculate\":\"(E*100)/e\", \"ex_list\":\"5182,5137\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mg/gm) \\n Normal<30 \\n Microalbuminuria 30-300 \\n Macroalbuminuria >300\",\"method\":\"Turbilatex\",\"interval_h\":\"30\",\"equipment\":\"C\"}','','','','','',''),(5184,'pH','Heparinised Venous-Blood-BI','{\"type\":\"number\",\"help\":\"7.30-7.43 (Direct ISE)\",\"interval_l\":\"7.30\",\"interval_h\":\"7.43\",\"equipment\":\"A\"}','','','','','',''),(5185,'PCO2','Heparinised Venous-Blood-BI','{\"type\":\"number\",\"help\":\"mmHg 38-58 (Direct ISE)\",\"interval_l\":\"38\",\"interval_h\":\"58\",\"equipment\":\"A\"}','','','','','',''),(5186,'PO2','Heparinised Venous-Blood-BI','{\"type\":\"number\",\"help\":\"mmHg 19-65 (Direct ISE)\",\"interval_l\":\"19\",\"interval_h\":\"65\",\"equipment\":\"A\"}','','','','','',''),(5187,'HCO3 ','Heparinised Venous-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L 22.0-30.0 (Calculated)\",\"interval_l\":\"22.0\",\"interval_h\":\"30.0\",\"equipment\":\"A\"}','','','','','',''),(5188,'Na+','Heparinised Venous-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L 136-145 (Direct ISE)\",\"interval_l\":\"136\",\"interval_h\":\"145\",\"equipment\":\"V\"}','','','','','',''),(5189,'K+','Heparinised Venous-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L 3.5-5.1 (Direct ISE)\",\"interval_l\":\"3.5\",\"interval_h\":\"5.1\",\"equipment\":\"V\"}','','','','','',''),(5190,'Lactate','Heparinised Venous-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L\\n <2.2 at Bed Rest\\n (Direct ISE)\",\"interval_h\":\"2.2\"}','','','','','',''),(5191,'TAT_remark','None','','','','','','',''),(5195,'Total bilirubin','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mg/dl <1.3 (photometry)\",\"equipment\":\"A\"}','','','','','',''),(7001,'Cyto No','Plain-FNA-CY','','','FNAC','FNAC/Sample Parameters','50','','horizontal2'),(7002,'Brief Clinical History / Diagnosis','Plain-FNA-CY','','','FNAC','FNAC/Sample Parameters','','','horizontal1'),(7003,'Site of Aspiration','Plain-FNA-CY','','','FNAC','FNAC/Sample Parameters','','','horizontal2'),(7004,'On Examination','Plain-FNA-CY','','','FNAC','FNAC/Sample Parameters','','','horizontal2'),(7005,'Aspiration Done By','Plain-FNA-CY','','','FNAC','FNAC/Sample Parameters','','','horizontal2'),(7006,'Gross Nature of Aspirate','Plain-FNA-CY','','','FNAC','FNAC/Sample Parameters','','','horizontal2'),(7007,'Radiological Findings','Plain-FNA-CY','','','FNAC','FNAC/Sample Parameters','','','horizontal2'),(7008,'Stain','Plain-FNA-CY','','','FNAC','FNAC','','','horizontal2'),(7009,'Cellularity','Plain-FNA-CY','','','FNAC','FNAC','10','','horizontal2'),(7010,'Findings','Plain-FNA-CY','','','FNAC','FNAC','','','horizontal1'),(7011,'Conclusion','Plain-FNA-CY','','','FNAC','FNAC','','','horizontal1'),(7012,'Reported by','Plain-FNA-CY','','','FNAC','FNAC','','','horizontal2'),(9000,'QC Equipment','None','{\"type\":\"select\",\"option\":\",XL_640,XL_1000,VITROS3600,HPLC_723GX,Erba Chem 5 Plus semiauto(060379) 2 \"}','','','','','',''),(9001,'Creatinine','QC-QC-BI','','','','','','',''),(9002,'Urea','QC-QC-BI','','','','','','',''),(9006,'ALT','QC-QC-BI','','','','','','',''),(9007,'Alkaline Phosphatase','QC-QC-BI','','','','','','',''),(9008,'Amylase','QC-QC-BI','','','','','','',''),(9009,'Total Billirubin','QC-QC-BI','','','','','','',''),(9010,'Direct Billirubin','QC-QC-BI','','','','','','',''),(9011,'Albumin','QC-QC-BI','','','','','','',''),(9012,'Total Protein','QC-QC-BI','','','','','','',''),(9013,'Aspartate transaminase','QC-QC-BI','','','','','','',''),(9014,'Calcium','QC-QC-BI','','','','','','',''),(9015,'Total Cholesterol','QC-QC-BI','','','','','','',''),(9016,'HDL Cholesterol','QC-QC-BI','','','','','','',''),(9018,'Triglyceride','QC-QC-BI','','','','','','',''),(9019,'Sodium','QC-QC-BI','','','','','','',''),(9020,'Potassium','QC-QC-BI','','','','','','',''),(9021,'Iron','QC-QC-BI','','','','','','',''),(9023,'UIBC','QC-QC-BI','','','','','','',''),(9025,'Lactate Dehydrogenase','QC-QC-BI','','','','','','',''),(9026,'Lipase','QC-QC-BI','','','','','','',''),(9027,'Uric Acid','QC-QC-BI','','','','','','',''),(9031,'Glucose','QC-QC-BI','','','','','','',''),(9051,'Phosphorus','QC-QC-BI','','','','','','',''),(9081,'Micro Protein','QC-QC-BI','','','','','','',''),(9092,'CK','QC-QC-BI','','','','','','',''),(9093,'CK-MB','QC-QC-BI','','','','','','',''),(9113,'Cholinesterase','QC-QC-BI','','','','','','',''),(9114,'HCL wash','QC-QC-BI','{\"hide\":\"yes\"}','','','','','',''),(9201,'Ferritin','QC-QC-BI','','','','','','',''),(9202,'CRP','QC-QC-BI','','','','','','',''),(9203,'TSH','QC-QC-BI','','','','','','',''),(9204,'D-dimer','QC-QC-BI','','','','','','',''),(9205,'PCT','QC-QC-BI','','','','','','',''),(9206,'Total T4','QC-QC-BI','','','','','','',''),(9207,'Cardiac Troponin I(cTnI)','QC-QC-BI','','','','','','',''),(9208,'Interlukin-6','QC-QC-BI','','','','','','',''),(9209,'NT-ProBNP','QC-QC-BI','','','','','','',''),(9210,'Magnesium','QC-QC-BI','','',NULL,NULL,NULL,NULL,NULL),(9211,'FSH','QC-QC-BI','','',NULL,NULL,NULL,NULL,NULL),(9212,'LH','QC-QC-BI','',NULL,NULL,NULL,NULL,NULL,NULL),(9213,'Free T3','QC-QC-BI','',NULL,NULL,NULL,NULL,NULL,NULL),(9214,'Free T4','QC-QC-BI','',NULL,NULL,NULL,NULL,NULL,NULL),(9215,'prolactin','QC-QC-BI','',NULL,NULL,NULL,NULL,NULL,NULL),(9216,'B-hCG','QC-QC-BI','',NULL,NULL,NULL,NULL,NULL,NULL),(9217,'Lipase','QC-QC-BI','',NULL,NULL,NULL,NULL,NULL,NULL),(9218,'ADA','QC-QC-BI','',NULL,NULL,NULL,NULL,NULL,NULL),(9219,'VitaminB12','QC-QC-BI','',NULL,NULL,NULL,NULL,NULL,NULL),(9220,'Total-25-OH-Vitamin-D','QC-QC-BI','',NULL,NULL,NULL,NULL,NULL,NULL),(9221,'DDIMER','QC-QC-BI','',NULL,NULL,NULL,NULL,NULL,NULL),(9222,'HbA1c','QC-QC-BI','','',NULL,NULL,NULL,NULL,NULL),(9223,'HbA1c Chromatogram','QC-QC-BI','{\"type\":\"blob\",\"img\":\"png\"}','',NULL,NULL,NULL,NULL,NULL),(9224,'HbF','QC-QC-BI','',NULL,NULL,NULL,NULL,NULL,NULL),(9225,'Micro albumin','QC-QC-BI','',NULL,NULL,NULL,NULL,NULL,NULL),(10001,'SARS-CoV2','Plain-BodyFluid-MI','{\"type\":\"select\",\"option\":\"Positive,Negative\"}','',NULL,NULL,NULL,NULL,NULL),(10002,'Other Respiratory Viruses','Plain-BodyFluid-MI','','',NULL,NULL,NULL,NULL,NULL),(10003,'Laboratory Section','None','{\"type\":\"select\",\"option\":\",VDRL\"}','',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_record_type`
--

DROP TABLE IF EXISTS `equipment_record_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_record_type` (
  `equipment_record_type` varchar(100) NOT NULL,
  PRIMARY KEY (`equipment_record_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_record_type`
--

LOCK TABLES `equipment_record_type` WRITE;
/*!40000 ALTER TABLE `equipment_record_type` DISABLE KEYS */;
INSERT INTO `equipment_record_type` VALUES ('i. conformation of initial acceptability for use (initial calibration/verification)'),('j. conformation of ongoing acceptability for use (ongoing calibration/verification)'),('k. maintenance aggrement'),('l. maintenance carried out'),('m. damage, malfunction, modification, repair');
/*!40000 ALTER TABLE `equipment_record_type` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `request_id`
--

LOCK TABLES `request_id` WRITE;
/*!40000 ALTER TABLE `request_id` DISABLE KEYS */;
INSERT INTO `request_id` VALUES (1,5000000),(2,1000001),(2,5000001),(3,1000002),(3020202,1000003),(3020203,1000004),(3020204,1000005),(3020205,1000006),(3020205,1000007),(3020206,1000008),(3020206,1000009);
/*!40000 ALTER TABLE `request_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prototype_data`
--

DROP TABLE IF EXISTS `prototype_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prototype_data` (
  `prototype_id` int(11) NOT NULL,
  `examination_id` int(11) NOT NULL,
  `result` varchar(5000) NOT NULL,
  PRIMARY KEY (`prototype_id`,`examination_id`),
  KEY `examination_id` (`examination_id`),
  CONSTRAINT `prototype_data_ibfk_1` FOREIGN KEY (`examination_id`) REFERENCES `examination` (`examination_id`),
  CONSTRAINT `prototype_data_ibfk_2` FOREIGN KEY (`prototype_id`) REFERENCES `prototype` (`prototype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prototype_data`
--

LOCK TABLES `prototype_data` WRITE;
/*!40000 ALTER TABLE `prototype_data` DISABLE KEYS */;
INSERT INTO `prototype_data` VALUES (1,2001,'Lump in Right Breast'),(1,2002,'MRM specimen'),(1,2005,'Received specimen of left/right modified radical mastectomy consists of resected breast and attached /separately lying axillary fat tissue. Resected breast measures ________           cm3. Overlying skin measures _______       cm2 . Attached /separately lying axillary tissue measures ________          cm3. Overlying skin, nipple and areola appears to be unremarkable.  A ulceration/suture /scar is identified measuring      cm .it is   cm away from nipple at        quadrant. (If surface is bosselated due to tumour than mention it). On serial cutting of specimen a single/multiple tumour is identified measuring         cm3 is seen at _____________quadrant. Tumour is ______        consistency. Areas of haemorrhage, necrosis is seen /not seen. Tumour is    __cm away from overlying skin and ______cm away from deep resected margin. Tumour lies (mention other margins) ____________________________________________________________ . On dissecting axillary tissue total __    lymph nodes are identified. Largest measures ___cm. Macroscopic tumour involvement is seen/not seen in _____lymph nodes. Soft tissue deposit of tumour is seen/not seen. (If seen than mention measurement).  '),(1,2006,'Sections from tumour show features of ‘invasive mammary carcinoma with no special type ‘.if other type than_________________________. Overall Histologic grade (Nottingham histologic score) is 1/2/3.[Glandular(Acinar /Tubular differentiation score 1/2/3, nuclear  pleomorphism 1,2,3, mitotic rate 1,2,3, Total score ____].Specimen has single/multiple  focus of invasive carcinoma .(if multiple than refer CAP). There is presence/absence of extensive lympho-vascular invasion. Overlying skin, nipple, and areola are uninvolved by invasive carcinoma. (If skin is involved than show CAP for exact wording)  Deep resected margin is uninvolved by invasive carcinoma.  Superior, inferior, medial, lateral resected margin are uninvolved by invasive carcinoma. Rest of breast shows ________________(if DCIS then refer  C AP) . Out of ________lymph nodes dissected from axillary tissue,____ are involved by invasive carcinoma . Extra nodal extension is present /absent.  Pathological staging (pTNM) -   '),(1,2007,'Overall histopathological features are that of Invasive Ductal Carcinoma- Not Otherwise Specified with Ductal Carcinoma In Situ Component- Comedo Type. Modified Bloom Richardson Grade- II (2+2+3). Pathological stage- pT2N0. Base is 1 mm away from tumour. Lymphovascular invasion and perinuclear invasion is not seen. Overlying skin, nipple, areola and all four margins are free from tumour. Total 15 lymphnodes are identified, all are free from tumour. '),(1,2009,'H&E'),(2,2001,'neck lymphadanopathy'),(3,5072,'As Dithionite test is positive, Band at HbS is likely to be of Hemoglobin S.\r\nPatient is (((Sickle cell disease))).\r\nCorrelate with clinical history.\r\n\r\n==========================================================================\r\nCommon Beta-variants that Migrate same as HbS position with Negative dithionite test\r\n--------------------------------------------------------------------------------\r\n	-HbD\r\n	-HbLepore\r\nCommon Beta-variants that Migrate same as HbA2 position with Negative dithionite test\r\n-----------------------------------------------------------------------------------\r\n	-HbO-Arab\r\n	-HbC\r\n	-HbE\r\nCommon Beta-variants that Migrate same as HbA2 position with Positive dithionite test\r\n-------------------------------------------------------------------------------------\r\n	-HbC(Herlem/Georgetown)\r\n\r\n'),(4,5072,'As Dithionite test is positive, Band at HbS is likely to be of Hemoglobin S.\r\nPatient is (((Sickle cell trait))).\r\nCorrelate with clinical history and history of blood Transfusion\r\nIf There is recent history of Blood transfusion, after three month of BT-free period or\r\nrepeat the examinations before next blood transfusion.	\r\n	\r\n\r\nCommon Beta-variants that Migrate same as HbA2 position with Negative dithionite test	\r\n-----------------------------------------------------------------------------------	\r\n	-HbO-Arab\r\n	-HbC\r\n	-HbE\r\nCommon Beta-variants that Migrate same as HbA2 position with Positive dithionite test	\r\n-------------------------------------------------------------------------------------	\r\n	-HbC(Herlem/Georgetown)\r\n'),(5,5078,'No M Band Seen.'),(6,5072,'Majority of Hemoglobin is HbA.Correlate Clinically\r\n==========================================================================\r\nCommon Beta-variants that Migrate same as HbS position with Negative dithionite test\r\n--------------------------------------------------------------------------------\r\n	-HbD\r\n	-HbLepore\r\nCommon Beta-variants that Migrate same as HbA2 position with Negative dithionite test\r\n-----------------------------------------------------------------------------------\r\n	-HbO-Arab\r\n	-HbC\r\n	-HbE\r\nCommon Beta-variants that Migrate same as HbA2 position with Positive dithionite test\r\n-------------------------------------------------------------------------------------\r\n	-HbC(Herlem/Georgetown)\r\n\r\n'),(7,5157,'=========mg/dL, Serum/Plasma========\r\nNeonate, Full Term, Total Bilirubin (NICE 2016)\r\nAge(Hours)      Phototherapy    Exchange Transfusion\r\n0               >5.8            >5.8\r\n6		>7.3		>8.8\r\n12		>8.8		>11.7\r\n18		>10.2		>14.8\r\n24		>11.7		>17.5\r\n30		>12.4		>20.5\r\n36		>13.2		>23.4\r\n42		>13.9		>26.3\r\n48              >14.6           >26.3\r\n54              >15.3           >26.3\r\n60              >16.1           >26.3\r\n66              >16.8           >26.3\r\n72              >17.5           >26.3\r\n78              >18.2           >26.3\r\n84              >19.0           >26.3\r\n90              >19.7           >26.3\r\n96+             >20.5           >26.3');
/*!40000 ALTER TABLE `prototype_data` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opd_id`
--

LOCK TABLES `opd_id` WRITE;
/*!40000 ALTER TABLE `opd_id` DISABLE KEYS */;
INSERT INTO `opd_id` VALUES (16,1000002),(17,1000003),(18,1000005),(19,1000006),(20,1000007);
/*!40000 ALTER TABLE `opd_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `min` varchar(5) NOT NULL,
  `hour` varchar(5) NOT NULL,
  `day` varchar(5) NOT NULL,
  `month` varchar(5) NOT NULL,
  `week` varchar(5) NOT NULL,
  `text` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_id_strategy`
--

LOCK TABLES `sample_id_strategy` WRITE;
/*!40000 ALTER TABLE `sample_id_strategy` DISABLE KEYS */;
INSERT INTO `sample_id_strategy` VALUES ('Citrate-Blood-BI',1000000,1999999,'Biochemistry'),('Citrate-Blood-HI',2000000,2999999,'Haematology'),('EDTA-Blood-BI',1000000,1999999,'Biochemistry'),('EDTA-Blood-HI',2000000,2999999,'Haematology'),('EDTA-BodyFluid-CP',3000000,3999999,'Clinical Pathology - Body Fluid'),('EDTA-CSF-CP',3000000,3999999,'Clinical Pathology - CSF'),('Fluoride-Blood-BI',1000000,1999999,'Biochemistry'),('Formalin-Tissue-HP',4000000,4999999,''),('Frozen-Tissue-HP',4000000,4999999,''),('HCL-Urine-BI',1000000,1999999,'Biochemistry'),('Heparinised Arterial-Blood-BI',1000000,1999999,'Biochemistry'),('Heparinised Venous-Blood-BI',1000000,1999999,'Biochemistry'),('None',NULL,NULL,''),('Plain-Blood-BI',1000000,1999999,'Biochemistry'),('Plain-Blood-DM',1,1000,'Dummy plain sample'),('Plain-Blood-XX',1,500,'Dummy plain sample'),('Plain-BodyFluid-CY',5000000,5999999,''),('Plain-BodyFluid-MI',6000000,6999999,'Microbiology'),('Plain-CSF-BI',1000000,1999999,'Biochemistry'),('Plain-FNA-CY',5000000,5999999,''),('Plain-Nasopharyngeal-MI',6000000,6999999,'Microbiology'),('Plain-Other-BI',1000000,1999999,'Biochemistry'),('Plain-PAP-CY',5000000,5999999,''),('Plain-Peritoneal Fluid-BI',1000000,1999999,'Biochemistry'),('Plain-Pleural Fluid-BI',1000000,1999999,'Biochemistry'),('Plain-Semen-CP',3000000,3999999,'Clinical Pathology - Semen'),('Plain-Smear-CY',5000000,5999999,''),('Plain-Stool-CP',3000000,3999999,'Clinical Pathology - Stool'),('Plain-Swab-BI',1000000,1999999,'Biochemistry'),('Plain-Urine-BI',1000000,1999999,'Biochemistry'),('Plain-Urine-CP',3000000,3999999,'Clinical Pathology - Urine'),('QC-QC-BI',9000000,9999999,'For Biochemistry QC');
/*!40000 ALTER TABLE `sample_id_strategy` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'shailesh','cxG8EDaP1e8jQ','2024-04-21','lock,unlock,interimlock');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `im_message`
--

DROP TABLE IF EXISTS `im_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `im_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_to` varchar(50) DEFAULT NULL,
  `message` varchar(5000) DEFAULT NULL,
  `message_status` int(1) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `im_message`
--

LOCK TABLES `im_message` WRITE;
/*!40000 ALTER TABLE `im_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `im_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moving_average`
--

DROP TABLE IF EXISTS `moving_average`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moving_average` (
  `examination_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `avg_value` decimal(10,2) DEFAULT NULL,
  `median_value` decimal(10,2) DEFAULT NULL,
  `ewma` decimal(10,2) DEFAULT NULL,
  `xbar` decimal(10,2) DEFAULT NULL,
  `sample_id` bigint(20) DEFAULT NULL,
  `value` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`examination_id`,`date_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moving_average`
--

LOCK TABLES `moving_average` WRITE;
/*!40000 ALTER TABLE `moving_average` DISABLE KEYS */;
/*!40000 ALTER TABLE `moving_average` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `display_examination`
--

DROP TABLE IF EXISTS `display_examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `display_examination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route` varchar(500) NOT NULL,
  `examination_id_list` varchar(500) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `display_examination`
--

LOCK TABLES `display_examination` WRITE;
/*!40000 ALTER TABLE `display_examination` DISABLE KEYS */;
/*!40000 ALTER TABLE `display_examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipment` varchar(100) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `equipment` (`equipment`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'11_REFRIGERATOR_HE_78_SAMSUNG',NULL,NULL),(2,'12_REFRIGERATOR_HE_78_SAMSUNG',NULL,NULL),(3,'13_REFRIGERATOR_HE_78_SAMSUNG',NULL,NULL),(5,'Centrfuge Remi PR-23 HOSP-EQ-P-138-VCDB-4172_not working',NULL,NULL),(6,'Centrfuge Remi PR-23 HOSP-EQ-P-138-VCDB-4173',NULL,NULL),(7,'Centrfuge Remi PR-23 HOSP-EQ-P-138-VCDB-4174',NULL,NULL),(8,'Centrfuge Remi PR-23 HOSP-EQ-P-138-VCDB-4175_not in Use but working',NULL,NULL),(9,'Centrfuge Remi PR-23 HOSP-EQ-P-52-ZEHN 25664',NULL,NULL),(10,'Centrfuge Remi PR-23 HOSP-EQ-P-52-ZEHN 25665',NULL,NULL),(11,'Centrfuge Remi PR-23 HOSP-EQ-P-52-ZEHN 25666',NULL,NULL),(12,'Centrfuge Remi PR-23 HOSP-EQ-P-52-ZEHN 25667',NULL,NULL),(13,'Centrfuge Remi PR-24 HOSP-EQ-P-51-ZCBN 4721',NULL,NULL),(14,'D.I.Water Plant COLL EQ Pg 03',NULL,NULL),(15,'Deep freezer(-40) HOSP-EQ-P-136_not in use but working',NULL,NULL),(16,'Digital display thermometer',NULL,NULL),(17,'Digital Tachometer- indi6121','2020-09-01 12:49:36','8866829055'),(18,'Elinco Digital Precision Thermometer (Model No. TTX-483)','2020-09-01 12:47:36','8866829055'),(19,'Erba Chem 5 Plus semiauto(0703120) 1 HOSP-EQ-P-3-1',NULL,NULL),(20,'Erba Chem 5 Plus semiauto(060379) 2 HOSP-EQ-P-3-2',NULL,NULL),(21,'Erba Chem 5 Plus semiauto(0703123) 3 HOSP-EQ-P-3-3',NULL,NULL),(22,'Erba XL-640 HOSP-EQ-P-10',NULL,NULL),(23,'Haier chest freezer: HOSP-EQ-P-136',NULL,NULL),(24,'HP Server COLL-EQ-P-133',NULL,NULL),(25,'Laboratory Fume hood COLL-EQ-P-15',NULL,NULL),(26,'Laminar air flow COLL-EQ-P-15',NULL,NULL),(27,'Maruti Calibrated weights (1kg & 2Kg) COLL EQ Pg-05',NULL,NULL),(28,'Neer R.O.Water Plant COLL-EQ-Pg-02',NULL,NULL),(29,'Pipettes','2021-08-17 14:12:48','7'),(30,'Prolyte Electrolyte Analyzer HOSP-EQ-P-40-81001755_Not working',NULL,NULL),(31,'Remi Centrifuge R-8C BL HOSP-EQ-P-50-BCLC-682_Not working',NULL,NULL),(32,'Remi Centrifuge R-8C BL HOSP-EQ-P-50-HCLC-3959_Not working',NULL,NULL),(33,'Remi Centrifuge R-8C DX HOSP-EQ-P-50-DBLC-3586_Not working',NULL,NULL),(34,'Remi Centrifuge R-8C DX HOSP-EQ-P-50-EBLC-5162_Not working',NULL,NULL),(35,'Remi Cooling Incubator CI-35 HOSP-EQ-P-71-IHC-3182',NULL,NULL),(36,'remi quick freezer(-20) Biochemistry: HOSP-EQ-P-138',NULL,NULL),(37,'Reptech weighing machine COLL-EQ-P-05',NULL,NULL),(38,'Ricoh Printer MP 2000 L2 COLL EQ P-123-17126750553',NULL,NULL),(39,'Ricoh printer MP 2001 L COLL EQ-P-123-E343MB50051',NULL,NULL),(40,'Sartorius  Weight',NULL,NULL),(41,'Shimadzu Analytic Balance HOSP-EQ-P-21Shimadzu Sci',NULL,NULL),(42,'Shimadzu Analytic Balance HOSP-EQ-P-21Shimadzu Sci_D450028778',NULL,NULL),(43,'SYSTRONICS Digital Electrophoresis power supply HOSP-EQ-P-139-850',NULL,NULL),(44,'Thermo_Hygrometers',NULL,NULL),(45,'volumetric flask',NULL,NULL),(46,'Water Treatment Plant - Clinical Laboratory',NULL,NULL),(47,'Water Treatment Plant - Research Lab',NULL,NULL),(48,'Yorco Hot air oven YSI431D HOSP-EQ-P-69-14B5312',NULL,NULL),(49,'Zebra Technologies ZTC _GC420t_Barcode Printer',NULL,NULL),(50,'Zebra tip 2844 Barcode Printer',NULL,NULL),(51,'Ricoh printer AFICIO MP 2501 SP HOSP-EQ-P-79-E338M920808',NULL,NULL),(52,'Ricoh printer IM 2702 HOSP-EQ-P-79-3299M420817',NULL,NULL),(53,'ERBA XL-1000',NULL,NULL),(55,'Mettler Toledo Weight Machine Sr.No-2741281030(in Use) ','2021-08-08 16:06:06','8866580625'),(56,'Mettler Toledo Weight Machine-Sr.No-2741281029(Not in Use But Working)','2020-09-02 15:05:34','8447530645'),(57,'Agarose gel electrophoresis appratus with power supply pack(installed but not in use)','2020-09-15 12:44:40','8866829055'),(58,'VITROS3600','2021-02-24 11:03:02','9099514805'),(61,'Refrigerator-LG','2020-12-22 12:14:21','9099514805'),(63,'MICRO WEIGHING BALANCE-HOSP-EQ-PG NO-6 Serial no-2741511036','2021-04-16 10:56:43','8866580625'),(64,'RAPIDPOINT 500 SIEMENS _SR NO-53726_MODEL NO-11416755_HOSP-EQ-PG-80','2021-02-24 10:19:18','9099514805'),(65,'RAPIDPOINT 500 SIEMENS _SR NO-45064_MODEL NO-10697306_HOSP-EQ-PG-80','2021-02-24 10:20:05','9099514805'),(66,'MICRO WEIGHING BALANCE-HOSP-EQ-PG NO-6  Serial no-2741511038','2021-04-16 10:55:26','8866580625'),(68,'TOSOH automated glycohemoglobin analyzer_SR NO-1182094_MODEL NO-HLC- 723 GX_HOSP-EQ-PG-04 ','2021-06-07 16:12:51','8866580625'),(71,'(RAPIDPOINT 500e SIEMENS_SR NO-53726_MODEL NO-11416755_HOSP-EQ-PG-80)','2021-07-24 12:44:36','8866580625'),(72,'(RAPIDPOINT 500 SIEMENS_SR NO-45064_MODEL NO-10697306_HOSP-EQ-PG-80) ','2021-07-28 10:29:35','8866580625'),(74,'UPT Immunoassay Analyser','2021-09-22 11:27:27','8447530645');
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

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
  `data` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
INSERT INTO `labels` VALUES (1,'1045','','C128','{\"1\":\"1045,h,b,05,05,30,10\",\"2\":\"1000,h,t,20,15,15,03\",\"3\":\"1045,h,t,05,15,15,03\",\"4\":\"sample_id,h,t,05,18,15,03\",\"5\":\"1002,h,t,20,18,15,03\",\"7\":\"1045,v,t,40,21,9,03\",\"8\":\"sample_id,v,t,43.5,21,9,03\",\"9\":\"1000,v,t,40,12,7.5,03\",\"10\":\"1002,v,t,43.5,12,7.5,03\"}'),(2,'1046','','C128','{\"1\":\"1046,h,b,05,05,30,10\",\"2\":\"1000,h,t,20,15,15,03\",\"3\":\"1046,h,t,05,15,15,03\",\"4\":\"sample_id,h,t,05,18,15,03\",\"5\":\"1002,h,t,20,18,15,03\",\"7\":\"1046,v,t,40,21,9,03\",\"8\":\"sample_id,v,t,43.5,21,9,03\",\"9\":\"1000,v,t,40,12,7.5,03\",\"10\":\"1002,v,t,43.5,12,7.5,03\"}'),(7,'1045','-Long','C128','{\"1\":\"1045,h,b,05,05,40,10\",\"2\":\"1000,h,t,20,15,15,03\",\"3\":\"1045,h,t,05,15,15,03\",\"4\":\"sample_id,h,t,05,18,15,03\",\"5\":\"1002,h,t,20,18,15,03\"}'),(8,'1047','','C128','{\"1\":\"1047,h,b,05,05,30,10\",\"2\":\"1000,h,t,20,15,15,03\",\"3\":\"1047,h,t,05,15,15,03\",\"4\":\"sample_id,h,t,05,18,15,03\",\"5\":\"1002,h,t,20,18,15,03\",\"7\":\"sample_id,v,t,40,21,7.5,03\",\"8\":\"1047,v,t,40,13,7.5,03\"}'),(9,'sample_id','','C128','{\"1\":\"sample_id,h,b,05,05,30,10\",\"2\":\"1000,h,t,20,15,15,03\",\"3\":\"1001,h,t,05,15,15,03\",\"4\":\"sample_id,h,t,05,18,15,03\",\"5\":\"1002,h,t,20,18,15,03\",\"7\":\"sample_id,v,t,40,21,9,03\",\"8\":\"sample_id,v,t,43.5,21,9,03\",\"9\":\"1000,v,t,40,12,7.5,03\",\"10\":\"1002,v,t,43.5,12,7.5,03\"}'),(10,'sample_id','-Long','C128','{\"1\":\"sample_id,h,b,05,05,40,10\",\"2\":\"1000,h,t,20,15,15,03\",\"3\":\"1001,h,t,05,15,15,03\",\"4\":\"sample_id,h,t,05,18,15,03\",\"5\":\"1002,h,t,20,18,15,03\"}');
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dementia`
--

LOCK TABLES `dementia` WRITE;
/*!40000 ALTER TABLE `dementia` DISABLE KEYS */;
INSERT INTO `dementia` VALUES (28,'0','8','*','*','*','Pepsin wash in ISE module','2020-09-15 09:45:42','3'),(29,'0','8','26','*','*','Print Erba640/1000 maintanance sheet, DI Plant(big+small) sheet','2020-08-12 13:49:45','3'),(40,'0','8','1','8','*','Tejal - External calibration, 7 items','2021-02-15 11:24:41','9099514805'),(41,'0','8','1','8,02','*','Inhouse Calibration pipettes, wMachine, Glassware, Centri, incubat, refi','2021-05-13 11:37:27','9099514805'),(43,'0','8','*','*','0','640+1000 Autowash With 0.1N HCL and 0.1N NaOH','2020-08-13 12:36:23','3'),(44,'0','8','1','*','*','Change saturated KCL solution in PH meter','2020-08-13 12:35:34','3'),(45,'0','8','1','1','*','Check Expiry Date of drugs in ART kit, Eye wash kit and First aid kit','2020-08-13 12:35:10','3'),(46,'0','8','1','8','*','Yearly calibration of volumetric flask','2020-12-16 11:08:46','8866580625'),(47,'0','8','*/5','*','*','Refilling of Std-A and std-B','2020-08-13 12:17:05','3'),(50,'0','8','1','5','*','Renewal of CMC of Erba XL 640 and 3 semi-auto','2020-08-13 12:14:48','3'),(52,'0','8','1','4,10','*','PUT REQUEST FOR PRINTER CONSUMABLE','2020-08-13 12:13:08','3'),(55,'0','8','1','*','*','Back up of volume parameters,programming parameter, reapeat flags from Erba XL-640 to doks','2021-06-30 18:09:58','8866580625'),(56,'0','8','1','1,5,9','*','quarterly maintenence for 3 semi auto ','2020-08-13 12:09:08','3'),(58,'0','8','1','7,12','*','refilling of fire extinguisher','2020-08-13 12:03:00','3'),(59,'0','8','*','*','4','Perform HE and PRE','2020-10-07 16:38:50','9099514805'),(66,'0','8','1','*','*','Centrifuge Cleaning','2020-09-09 09:06:25','9099514805'),(69,'0','8','*','*','*','Run IRON and UIBC samples and graph monitoring','2020-09-15 12:36:44','1'),(72,'0','8','16','7','*','Yearly ealuation of all records before internal audit','2021-07-15 15:13:31','9099514805'),(73,'0','8','16','*','*','check location and content of eye wash kit and first aid kit','2020-09-26 15:22:52','9099514805'),(74,'10','8','1,15','*','*','cleaning of barcode printer opd and clinical lab','2021-08-09 16:09:58','9099514805'),(76,'0','8','1','3','*','calibration certificate of ERBA XL-640 and semiauto from jiteshbhai','2021-02-24 12:38:07','9099514805'),(77,'50','11','13,28','*','*','Calibration of CRP every 15 day','2021-05-13 11:47:37','9099514805'),(78,'0','8','1','12','*','Install new electrode_Install before date-1-12-2021','2021-05-17 13:31:59','9099514805'),(80,'*','*','1','8','*','REMINDER FOR INHOUSE CALIBRATION','2021-08-18 12:24:13','3'),(81,'10','8','*','*','6','change sediment filter and backwash of DI plant','2021-08-09 16:09:10','9099514805'),(82,'10','8','*','*','*','IQC of ketone','2021-08-09 16:09:00','9099514805'),(83,'10','8','*','*','*','Refrigerator temperature and environmental temperature and humidity entry in LIS','2021-08-09 16:08:53','9099514805'),(84,'10','8','*','*','*','Daily maintenence  and IQC of ERBA XL-640 ,ERBA XL-1000 and VITROS-3600','2021-08-18 12:25:42','9099514805'),(87,'10','8','2,17','*','*','cleaning of RO water','2021-08-09 16:08:42','9099514805'),(88,'10','8','*','*','2','weekly maintenence of VITROS-3600','2021-08-18 12:28:35','9099514805'),(89,'10','8','10','*','*','Hypowash of XL-1000 and XL-640','2021-08-18 12:44:37','9099514805'),(91,'10','8','1','*','*','Monthly IQC and EQC file of XL-640,XL-1000 and VITROS-3600','2021-08-25 09:46:05','9099514805'),(92,'10','8','1','*','*','Monthly TAT file','2021-08-25 09:46:43','9099514805');
/*!40000 ALTER TABLE `dementia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_name` varchar(100) NOT NULL,
  `examination_id` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,'ABG','5143,5144,5145,5148,5149,5154,5159'),(2,'Chinka','1000,1001,1003,1004,1006,1009,1010,1011,1012,1026,1015,1016,1017,1018');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `view_info_data`
--

LOCK TABLES `view_info_data` WRITE;
/*!40000 ALTER TABLE `view_info_data` DISABLE KEYS */;
INSERT INTO `view_info_data` VALUES (0,'Scope','','select * from scope'),(1,'Total Sample On a Day','<input type=date name=__p1 title=\'Give Date\'>','select count(examination_id) as Total_Sample from result where examination_id=1017 and result=\"__p1\"'),(2,'Test count on a date','<input type=date name=__p1 title=\'Give Date\'>','select  	r1.examination_id A ,e1.name B ,  	r2.examination_id C ,e2.name D, 	r2.result E, 	count(r2.result) F from  	examination e1,examination e2,  	result r1,result r2  where  	r1.sample_id=r2.sample_id and  	r2.examination_id=1017 and  	r2.result=\"__p1\" and 	e1.examination_id=r1.examination_id and  	e2.examination_id=r2.examination_id  group by r1.examination_id order by r1.examination_id'),(3,'Max ID (series 2,3,1)','','select 2 as series, max(sample_id) from result where sample_id between 2000000 and 2999999 union select 3 as series, max(sample_id) from result where sample_id between 3000000 and 3999999 union select 1 as series, max(sample_id) from result where sample_id between 1000000 and 1999999'),(4,'Test count on a date (a bit better)','<input type=date name=__p1 title=\'Give Date\'>','select  	r1.examination_id examination_id ,e1.name Test,  r2.result Date, 	count(r2.result) Test_Count  from  	examination e1,examination e2,  	result r1,result r2  where  	r1.sample_id=r2.sample_id and  	r2.examination_id=1017 and  	r2.result=\"__p1\" and 	e1.examination_id=r1.examination_id and  	e2.examination_id=r2.examination_id  and e1.sample_requirement!=\'None\' group by r1.examination_id order by r1.examination_id'),(5,'Test count on between two dates','From:<input type=date name=__p1 title=\'Give From  Date\'>To:<input type=date name=__p2 title=\'Give To Date\'>','select r1.examination_id examination_id ,e1.name Test,  	count(r2.result) Test_Count   from  	examination e1,examination e2,  	result r1,result r2   where  	r1.sample_id=r2.sample_id and  	r2.examination_id=1017 and  	 r2.result between str_to_date(\'__p1\',\'%Y-%m-%d\') and str_to_date(\'__p2\',\'%Y-%m-%d\') and 	 e1.examination_id=r1.examination_id and  	e2.examination_id=r2.examination_id   and e1.sample_requirement!=\'None\' group by r1.examination_id order by r1.examination_id'),(6,'(Worklist) Sample_ID,Test name and result of a date','Date:<input type=date name=__p1 title=\'Give From  Date\'>Ex_ID:<input type=number name=__p2 title=\'Give Examination_id\'>','select  	 r1.sample_id sample_id, r1.examination_id examination_id ,e1.name Test, r1.result , r2.result Date  from  	 examination e1,examination e2,  	 result r1,result r2    where  	 r1.sample_id=r2.sample_id and  	 r2.examination_id=1017 and  	 r2.result=\"__p1\" and 	 e1.examination_id=r1.examination_id and  	 e2.examination_id=r2.examination_id  and  e1.examination_id=\"__p2\" and e1.sample_requirement!=\'None\'   order by r1.examination_id'),(7,'Test ID and their Name','','select examination_id,name,sample_requirement from examination order by name'),(8,'Profile count between two dates','From:<input type=date name=__p1 title=\'Give From  Date\'>To:<input type=date name=__p2 title=\'Give To Date\'>','select  p.profile_id, p.name,  	count(r2.result) Test_Count   from  	 examination e1,examination e2, result r1,result r2, profile p  where  	 r1.sample_id=r2.sample_id and  	 r2.examination_id=1017 and  	  r2.result between str_to_date(\'__p1\',\'%Y-%m-%d\') and str_to_date(\'__p2\',\'%Y-%m-%d\') and e1.examination_id=r1.examination_id and  	 e2.examination_id=r2.examination_id   and  e1.sample_requirement!=\'None\' and substring_index(p.examination_id_list,\',\',1)=e1.examination_id  group by  r1.examination_id   order by  p.profile_id'),(9,'sample count: age more than 60 years','From:<input type=date name=__p1 title=\'Give From Date\'>To<input type=date name=__p2 title=\'Give To Date\'>','select count(sample_id) from result where examination_id=1007  and (recording_time between \"__p1\" and \"__p2\" )and result>=60'),(10,'Sample Location with  Specific Date','<input type=date name=__p1 title=\'Give Date\'>','select s1.sample_id as sample_id ,s1.result as date ,s2.result as location  from result s1, result s2  where    s1.examination_id=1017 and s1. result like \"__p1\" and  s2.examination_id=1006    and  s1.sample_id=s2.sample_id'),(11,'Sample Location with  Specific Date(color)','<input type=date name=__p1 title=\'Give Date\'>','select s1.sample_id as sample_id ,s1.result as date ,if(s2.result=\"OPD\",concat(\'<span class=bg-danger>\',s2.result,\'</span>\'),s2.result) as location  from result s1, result s2  where    s1.examination_id=1017 and s1. result like \"__p1\" and  s2.examination_id=1006    and  s1.sample_id=s2.sample_id'),(12,'Sample Release Status(between two sample_id)','<input type=number name=__p1><input type=number name=__p2>','select sample_id,if(examination_id=1017,\"Received on\",\"Released_by\"),result from result where examination_id in (1017,1014) and sample_id between \"__p1\" and \"__p2\" order by sample_id'),(13,'Test count of a date with total','<input type=date name=__p1 title=\'Give Date\'>','(select  r1.examination_id examination_id ,e1.name Test,  r2.result Date, 	count(r2.result) Test_Count  from  	examination e1,examination e2,  	result r1,result r2  where  	r1.sample_id=r2.sample_id and  	r2.examination_id=1017 and  	r2.result=\"__p1\" and 	e1.examination_id=r1.examination_id and  	e2.examination_id=r2.examination_id  and e1.sample_requirement!=\'None\' group by r1.examination_id order by r1.examination_id) UNION (select  \'Grand \' ,\'Total \',  \' \', 	count(r2.result) Test_Count  from  	examination e1,examination e2,  	result r1,result r2  where  	r1.sample_id=r2.sample_id and  	r2.examination_id=1017 and  	r2.result=\"__p1\" and 	e1.examination_id=r1.examination_id and  	e2.examination_id=r2.examination_id  and e1.sample_requirement!=\'None\')'),(14,'Test count between two dates with total','From:<input type=date name=__p1 title=\'Give Date\'>To:<input type=date name=__p2 title=\'Give Date\'>','(select  r1.examination_id examination_id ,e1.name Test,  r2.result Date, 	count(r2.result) Test_Count    from  	examination e1,examination e2,  	result r1,result r2  where  	 r1.sample_id=r2.sample_id and  	r2.examination_id=1017 and  	r2.result between \"__p1\" and \"__p2\"	and  e1.examination_id=r1.examination_id and  	e2.examination_id=r2.examination_id  and e1.sample_requirement!=\'None\'  group by r1.examination_id order by r1.examination_id) UNION   (select  \'Grand \' ,\'Total \',  \' \', 	count(r2.result) Test_Count  from  	examination e1,examination e2,  	 result r1,result r2  where  	r1.sample_id=r2.sample_id and  	r2.examination_id=1017 and  	 (r2.result between \"__p1\" and \"__p2\")	and e1.examination_id=r1.examination_id and  	e2.examination_id=r2.examination_id  and e1.sample_requirement!=\'None\')'),(15,'Samples Types count between two dates','From:<input type=date name=__p1 title=\'Give Date\'>To:<input type=date name=__p2 title=\'Give Date\'>','select r1.result,count(r1.sample_id)  from result  r1, result r2   where  r2.examination_id=1017  and (r2.result between \"__p1\" and \"__p2\")  and r1.examination_id=1000 and r1.sample_id=r2.sample_id  group by result '),(16,'Samples Types count between two dates (only OPD)','From:<input type=date name=__p1 title=\'Give Date\'>To:<input type=date name=__p2 title=\'Give Date\'>','select r1.result,count(r1.sample_id)  from result  r1, result r2 ,result r3  where  r2.examination_id=1017  and (r2.result between \"__p1\" and \"__p2\")  and r1.examination_id=1000 and r1.sample_id=r2.sample_id and r1.sample_id=r3.sample_id and r3.examination_id=1006  and (r3.result =\'OPD\')   group by result  '),(17,'Worklist between two dates','From:<input type=date name=__p1 title=\'Give From  Date\'>To:<input type=date name=__p2 title=\'Give From  Date\'>Ex_ID:<input type=number name=__p3 title=\'Give Examination_id\'>','select  	  r1.sample_id sample_id, r1.examination_id examination_id ,e1.name Test, r1.result , r2.result Date    from  	  examination e1,examination e2,  	 result r1,result r2      where  	   r1.sample_id=r2.sample_id and  	 r2.examination_id=1017 and  	  (r2.result between \"__p1\" and \"__p2\") and 	 e1.examination_id=r1.examination_id and  	  e2.examination_id=r2.examination_id  and  e1.examination_id=\"__p3\"  and e1.sample_requirement!=\'None\'     order by r1.examination_id'),(18,'OPD Samples on a date','<input type=date name=__p1 title=\'Give Date\'>','select s1.sample_id as sample_id ,s1.result as date ,if(s2.result=\"OPD\",concat(\'<span class=bg-danger>\',s2.result,\'</span>\'),s2.result) as location   from result s1, result s2   where    s1.examination_id=1017 and s1. result like \"__p1\" and  s2.examination_id=1006    and  s1.sample_id=s2.sample_id and s2.result=\'OPD\''),(19,'non-OPD Samples on a date','<input type=date name=__p1 title=\'Give Date\'>','select s1.sample_id as sample_id ,s1.result as date ,if(s2.result!=\"OPD\",concat(\'<span class=bg-danger>\',s2.result,\'</span>\'),s2.result) as location   from result s1, result s2   where    s1.examination_id=1017 and s1. result like \"__p1\" and  s2.examination_id=1006    and  s1.sample_id=s2.sample_id and s2.result!=\'OPD\''),(20,'QC Statistics on between two dates','From:<input type=date name=__p1 title=\'Give From  Date\'>To:<input type=date name=__p2 title=\'Give To Date\'>','select  	r1.examination_id examination_id , 	e1.name Test,  	 	r3.result MRD, 	count(r2.result) Test_Count  ,  	avg(r1.result) mean,    	STDDEV(r1.result) SD    	 from  	 	examination e1,examination e2, 	result r1,result r2,result r3     where  	 	r1.sample_id=r2.sample_id  		and  	 	r1.sample_id=r3.sample_id  		and 		 	r2.examination_id=1015  		and 	r3.examination_id=1001  		and		 	r2.result between str_to_date(\'__p1\',\'%Y-%m-%d\') and str_to_date(\'__p2\',\'%Y-%m-%d\')  		and 	  		 	e1.examination_id=r1.examination_id  		and  	 	e2.examination_id=r2.examination_id    		and  		 	e1.sample_requirement!=\'None\' 		and 	r1.sample_id between 9000000 and 9999999 		 group by  	r1.examination_id, r3.result  order by  	r1.examination_id'),(21,'Current QC Target and Mean','','SELECT mrd,examination.examination_id,examination.name,equipment,mean,sd,start_date,start_time FROM `lab_reference_value`,examination WHERE `end_date`>sysdate() and `lab_reference_value`.examination_id=examination.examination_id order by examination.examination_id,mrd, equipment'),(101,'Sample Release Status(between two sample_id)','<input type=number name=__p1><input type=number name=__p2>','select sample_id,result from result where examination_id =1014  and sample_id between \"__p1\" and \"__p2\" order by sample_id'),(102,'OPD Release Status of Samples on a date','<input type=date name=__p1 title=\'Give Date\'>','select \r\n	s1.sample_id as sample_id ,\r\n	s1.result as date ,\r\n	if(s2.result=\"OPD\",concat(\'<span class=bg-danger>\',s2.result,\'</span>\'),s2.result) as location,   \r\n	s3.result as release_status\r\nfrom \r\n	result s1, result s2, result s3\r\n	\r\nwhere\r\n    s1.examination_id=1017 \r\n    and \r\n    s1. result like \"__p1\" and  s2.examination_id=1006    \r\n    and  \r\n	s3.examination_id=1014    \r\n    and      \r\n    \r\n    s1.sample_id=s2.sample_id \r\n    and\r\n    s1.sample_id=s3.sample_id \r\n    \r\n    and\r\n    s2.result=\'OPD\''),(103,'OPD Release Status of Samples on a date','<input type=date name=__p1 title=\'Give Date\'>','select \r\n	s1.sample_id as sample_id ,\r\n\r\nconcat(\'<div class=\"d-inline-block\" ><form target=_blank method=post action=edit_general.php class=print_hide>\r\n	<button class=\"btn btn-outline-primary btn-sm\" name=sample_id value=\\\'\',s1.sample_id,\'\\\' >\',s1.sample_id,\'</button>\r\n	<input type=hidden name=session_name value=\\\'\\\'.$_POST[\\\'session_name\\\'].\\\'\\\'>\r\n	<input type=hidden name=action value=edit_general>\r\n	</form></div>\')\r\n\r\nas sample_id,\r\n\r\n	s1.result as date ,\r\n	if(s2.result=\"OPD\",concat(\'<span class=bg-danger>\',s2.result,\'</span>\'),s2.result) as location,   \r\n	s3.result as release_status\r\nfrom \r\n	result s1, result s2, result s3\r\n	\r\nwhere\r\n    s1.examination_id=1017 \r\n    and \r\n    s1. result like \"__p1\" and  s2.examination_id=1006    \r\n    and  \r\n	s3.examination_id=1014    \r\n    and      \r\n    \r\n    s1.sample_id=s2.sample_id \r\n    and\r\n    s1.sample_id=s3.sample_id \r\n    \r\n    and\r\n    s2.result=\'OPD\''),(104,'Location + Date Specific Release Status','<input type=date name=__p1 title=\'Give Date\'><input type=text name=__p2 title=\'Give Location\' placeholder=OPDWard>','select \r\n	s1.sample_id as sample_id ,\r\n	s1.result as date ,\r\n	if(s2.result=\"__p2\",concat(\'<span class=bg-danger>\',s2.result,\'</span>\'),s2.result) as location,   \r\n	s3.result as release_status\r\nfrom \r\n	result s1, result s2, result s3\r\n	\r\nwhere\r\n    s1.examination_id=1017 \r\n    and \r\n    s1. result like \"__p1\" and  s2.examination_id=1006    \r\n    and  \r\n	s3.examination_id=1014    \r\n    and      \r\n    \r\n    s1.sample_id=s2.sample_id \r\n    and\r\n    s1.sample_id=s3.sample_id \r\n    \r\n    and\r\n    s2.result=\'__p2\''),(105,'NMC (date + department sample numbers)','<input type=date name=__p1 title=\'Give Date\'><input type=text name=__p2 title=\'Give Department\' placeholder=Department>','select r.result as date,o.result as department ,count(r.sample_id) as Total_Samples\r\n\r\nfrom \r\nresult r, result o \r\n\r\nwhere \r\nr.examination_id=1017 and r.result like \"%__p1%\" \r\nand \r\no.examination_id=1004 and o.result like \"%__p2%\"\r\n\r\nand o.sample_id=r.sample_id'),(106,'(problem)','','select * from result where result like \"%(problem)%\"');
/*!40000 ALTER TABLE `view_info_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prototype`
--

DROP TABLE IF EXISTS `prototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prototype` (
  `prototype_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`prototype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prototype`
--

LOCK TABLES `prototype` WRITE;
/*!40000 ALTER TABLE `prototype` DISABLE KEYS */;
INSERT INTO `prototype` VALUES (1,'Breast CAP'),(2,'Lymphoma'),(3,'Sickle Cell disease'),(4,'Sickle Cell trait'),(5,'Multiple Myeloma'),(6,'Only HbA'),(7,'Bilirubin Reference range (Paediatric)');
/*!40000 ALTER TABLE `prototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `display_examination_view`
--

DROP TABLE IF EXISTS `display_examination_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `display_examination_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route` varchar(500) NOT NULL,
  `examination_id_list` varchar(500) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `display_examination_view`
--

LOCK TABLES `display_examination_view` WRITE;
/*!40000 ALTER TABLE `display_examination_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `display_examination_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `super_profile`
--

DROP TABLE IF EXISTS `super_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `super_profile` (
  `super_profile_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `profile_id_list` varchar(500) NOT NULL,
  `extra` varchar(300) DEFAULT NULL,
  `edit_specification` varchar(500) NOT NULL,
  PRIMARY KEY (`super_profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `super_profile`
--

LOCK TABLES `super_profile` WRITE;
/*!40000 ALTER TABLE `super_profile` DISABLE KEYS */;
INSERT INTO `super_profile` VALUES (1,'Blood Counts - Hb, TC, Platelet','21','',''),(2,'CBC (Routine)','21,23','',''),(3,'CBC MP (Routine)','21,23,26,27','',''),(4,'PSCM','21,23,25,26,27','',''),(5,'RC','30','',''),(6,'ESR','31','',''),(7,'PT','32','',''),(8,'Urine Routine','37','',''),(9,'Stool Routine','38','',''),(10,'CBC (Emergency)','21','',''),(11,'CBC MP (Emergency)','21,26,27','',''),(12,'PSCM Leukemia Panel','21,22,25,26,27','',''),(13,'Bone Marrow Examination Report','20,21,23,25,26,27,30,41','',''),(14,'Expert Level PSCM','21,23,25,26,27','',''),(15,'Fine Needle Aspiration Cytology Report','201,202','',''),(16,'RFT+Electrolyte','507,506','','{\"group\":\"BI\",\"readonly_availability\":\"yes\"}'),(17,'creatinine + eGFR','507,514','','{\"group\":\"BI\"}'),(18,'LRE','503,507,506','','{\"group\":\"BI\",\"readonly_availability\":\"yes\"}'),(19,'LRE+GLC','501,503,507,506','','{\"group\":\"BI\",\"readonly_availability\":\"yes\"}'),(20,'LL-RR-E','503,507,508,504','','{\"group\":\"BI\",\"readonly_availability\":\"yes\"}'),(22,'Glc + Lipid','501,515','','{\"group\":\"BI\",\"readonly_availability\":\"yes\"}'),(23,'CAL+PHO+ALb+TP','509,504','','{\"group\":\"BI\"}'),(24,'COVID profile','502,503,506,507,511','','{\"group\":\"BI\"}'),(25,'Radio camp','501,503,507,515','','{\"group\":\"BI\"}');
/*!40000 ALTER TABLE `super_profile` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `dashboard`
--

LOCK TABLES `dashboard` WRITE;
/*!40000 ALTER TABLE `dashboard` DISABLE KEYS */;
INSERT INTO `dashboard` VALUES (1,'Calculated Parameters','Prothrombin Time related calculation of indexes is now available. \nWhen in <b>Edit</b> mode, Click <b>Calculate</b> to refresh calculation.\nModification in database is required to add new calculated tests.\nChanging ISI value in database as required is essential',NULL),(2,'Suggestions and Feedback','For suggestion for improvement, contact lab in-charge or whatsApp: 9664555812 Dr Shailesh ',NULL),(3,'Super Profiles','Use Super Profiles to reduce your clicks and prevent lapses in entry',3),(4,'View Statistics','Click <b>HOME</b>. select Click <span class=\"bg-danger\">red colored number</span> to view data. Provide appropriate input (e.g date). Export Data in spreadsheet if required',4),(5,'Bold','use (((xyz)) to bold a word',NULL),(6,'New Software','New Software have 7 digit sample ID (REMEMBER)',5),(7,'Dokuwiki and Docs Old LIS Started',' Click ---> <a href=\"\\dokuwiki\">Dokuwiki</a> <a href=\"\\docs\">Docs</a>  <a href=\"http://12.207.3.250\">Old LIS</a>',6),(8,'Worklist Print','See number 6 (get examination id from 7)',8);
/*!40000 ALTER TABLE `dashboard` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ward_id`
--

LOCK TABLES `ward_id` WRITE;
/*!40000 ALTER TABLE `ward_id` DISABLE KEYS */;
INSERT INTO `ward_id` VALUES (1,1000001),(3,1000008),(4,1000009),(2,5000001);
/*!40000 ALTER TABLE `ward_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copy_sample`
--

DROP TABLE IF EXISTS `copy_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copy_sample` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `keep_ex_list` varchar(500) NOT NULL,
  `add_ex_list` varchar(500) NOT NULL,
  `add_ex_with_result` varchar(500) NOT NULL,
  `remark` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copy_sample`
--

LOCK TABLES `copy_sample` WRITE;
/*!40000 ALTER TABLE `copy_sample` DISABLE KEYS */;
INSERT INTO `copy_sample` VALUES (2,'creatinine Urea','1001,1002,','5031,5032','{}','');
/*!40000 ALTER TABLE `copy_sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `profile_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `examination_id_list` varchar(500) NOT NULL,
  `extra` varchar(300) DEFAULT NULL,
  `edit_specification` varchar(500) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,'Patient_Identification','1001,1002,1008,1004,1005,1006,1007','1020,1021,1012,1024,1025,1039,1041','{\"header\":\"no\",\"print_style\":\"horizontal\",\"compact\":\"no\"}'),(2,'Sample Details','1000,1015,1016,1017,1018,1014,1026,1045','1019,1022,1023,5103,9000,5126,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1040,1043,1044','{\"header\":\"no\",\"print_style\":\"horizontal\",\"compact\":\"no\"}'),(20,'Bone Marrow Examination Details','147,148','',''),(21,'Hemogram - Blood Counts and Indices','3,2,4,5,6,7,8,1,9','',''),(22,'Differential Leucocyte Count  with Premature Cells (Microscopy)','51,52,53,54,55,400,401,402,403,404','',''),(23,'Differential Leucocyte Count (Microscopy)','39,40,41,42,43,56','',''),(24,'Absolute Counts','48,49,50','',''),(25,'Peripheral Smear (Red Blood Cells)','57,58,59,60,61,62,63,64,65,66','',''),(26,'Peripheral Smear (Platelets)','45,67','',''),(27,'Peripheral Smear (Parasites)','68,69,70','',''),(28,'Rapid Malarial Antigen Test','46,47','',''),(29,'Platelet Indices','510,511,71,72','',''),(30,'Reticulocyte Count (RC)','73,74','',''),(31,'Erythrocyte Sedimentation Rate','75','',''),(32,'Prothrombin Time ','76,77,78,79,80,602','',''),(33,'Activated Partial Thromboplastin Time (aPTT)','81,82,603','',''),(34,'Plasma Fibrinogen','83,84','',''),(35,'Factor Assay','85,86','',''),(36,'Bleeding Time (BT) and Clotting Time (CT)','87,88','',''),(37,'Urine Routine and Microscopy','89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,181,107,108,109,110,111,113','',''),(38,'Stool Examination','114,115,116,117,118,119,120,121,122,123,124,125','',''),(39,'Body Fluid Examination','126,127,128,129,130,131,132,133,134,135,136,137','',''),(40,'Semen Examination','138,139,140,141,142,143,144,145,146','',''),(41,'Bone Marrow Examination Report','150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180','',''),(101,'Histopathology','2010,2001,2002,2003,2004,2011,2005,2009,2006,2007,2008','','{\"header\":\"no\",\"print_style\":\"vertical\"}'),(231,'Dw Graphs','19,20,21','','{\"display_name\":\"no\",\"header\":\"no\",\"print_hide\":\"no\"}'),(300,'Reported by','2012,2013,2014','2015','{\"header\":\"no\",\"print_style\":\"horizontal\"}'),(501,'Diabetes Mellitus Profile','5031','5102,5174,5178,5179','{\"group\":\"BI\"}'),(502,'Immuno-assay','5118,5121,5122','5117,5120,5123,5124,5127,5128,5129,5130,5131,5133,5125,5140,5141,5142,5171','{\"group\":\"BI\"}'),(503,'LFT','5006,5009,5010,5024','5013','{\"group\":\"BI\",\"readonly_availability\":\"yes\"}'),(504,'ALB+TP(ALP)','5012,5011','5007','{\"display_name\":\"no\",\"group\":\"BI\"}'),(505,'Pancreatic profile','5008,5026','','{\"group\":\"BI\"}'),(506,'Electrolyte','5019,5020','','{\"group\":\"BI\"}'),(507,'RFT','5001','','{\"group\":\"BI\"}'),(508,'Adavanced RFT','5002,5027','','{\"group\":\"BI\",\"display_name\":\"no\",\"header\":\"no\"}'),(509,'Cal+PO4','5014,5100,5114,5101','','{\"display_name\":\"no\",\"group\":\"BI\"}'),(510,'Cardiac profile','5092,5093','','{\"group\":\"BI\"}'),(511,'Misc','5025','5113','{\"display_name\":\"no\",\"group\":\"BI\"}'),(512,'Urine','5054,5050,5057,5052,5056,5086,5085,5053,5058,5059,5172,5173,5136,5182,5051,5183','','{\"group\":\"BI\"}'),(514,'eGFR','5088,5089,5087,5060','','{\"group\":\"BI\"}'),(515,'Lipid profile','5015,5018','5016,5017,5028,1099','{\"group\":\"BI\"}'),(516,'Mg 2+','5132,5138','','{\"group\":\"BI\"}'),(517,'urine osmolality','5134,5135,5136,5048,5049,5137','','{\"group\":\"BI\"}'),(519,'Other Fluid','5105,5139','5106,5107,5108,5109,5110,5111,5112','{\"display_name\":\"no\",\"group\":\"BI\"}'),(520,'Peritoneal profile','5033,5035,5038,5039,5040,5041,5042,5043,5082,5094,5181','','{\"group\":\"BI\"}'),(521,'Pleural profile','5034,5036,5037,5044,5045,5046,5081','','{\"group\":\"BI\"}'),(522,'Anemia profile','5021,5022,5023','','{\"group\":\"BI\"}'),(529,'ABG ','5143,5144,5145,5154,5148,5149,5159','5146,5147,5152,5153,5155,5160,5161,5162,5163,5164,5165,5166,5167,5168,5169,5150,5151,5156,5158','{\"group\":\"BI\"}'),(530,'Protein Electrophoresis','5076,5078,5079,5077,5075','','{\"header\":\"no\",\"print_style\":\"vertical\",\"group\":\"BI\"}'),(531,'Hemoglobin Electrophoresis','5063,5065,5066,5067,5068,5069,5064,5070,5071,5072,5073,5074','','{\"header\":\"no\",\"print_style\":\"vertical\",\"group\":\"BI\"}'),(532,'CSF profile','5029,5030,5080,5032','5047','{\"group\":\"BI\"}'),(533,'venous blood gas analysis','5184,5185,5186,5187,5188,5189,5190','','{\"group\":\"BI\"}'),(534,'Serum osmolality','5061','','{\"group\":\"BI\"}'),(535,'QC others','9016,9021,9023,9092,9093,9113,9081,9210,9217,9218,9222,9223,9224,9225','','{\"group\":\"BI\"}'),(536,'Morning QC','9001,9002,9006,9007,9008,9009,9010,9011,9012,9014,9015,9031,9018,9019,9020,9025,9027,9051,9114',NULL,'{\"group\":\"BI\"}'),(537,'QC Immuno-assay','9201,9202,9203,9205,9206,9207,9208,9209,9211,9212,9213,9214,9215,9216,9219,9220,9221','','{\"group\":\"BI\"}'),(538,'Bilirubin Reference range (Paediatric)','5157','','{\"display_name\":\"no\",\"header\":\"no\",\"print_style\":\"vertical\",\"group\":\"BI\"}'),(539,'COVID research','5175,5176,5177,5180','','{\"group\":\"BI\"}'),(1001,'Remark','','5095,5096,5097,5098,5099,5191','{\"header\":\"no\",\"print_style\":\"vertical\",\"group\":\"BI\"}'),(2001,'COVID19','10003,10001,10002','','{\"group\":\"MI\"}');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Quality_manual_section`
--

DROP TABLE IF EXISTS `Quality_manual_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Quality_manual_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recording_time` datetime DEFAULT NULL,
  `recorded_by` varchar(100) DEFAULT NULL,
  `clause` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Quality_manual_section`
--

LOCK TABLES `Quality_manual_section` WRITE;
/*!40000 ALTER TABLE `Quality_manual_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `Quality_manual_section` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `host_code`
--

LOCK TABLES `host_code` WRITE;
/*!40000 ALTER TABLE `host_code` DISABLE KEYS */;
INSERT INTO `host_code` VALUES (5001,'XL_640','CR'),(5002,'XL_640','UREA'),(5006,'XL_640','ALT'),(5007,'XL_640','ALP'),(5008,'XL_640','AMY'),(5009,'XL_640','TBIL'),(5010,'XL_640','DBIL'),(5011,'XL_640','ALB'),(5012,'XL_640','TP'),(5013,'XL_640','AST'),(5014,'XL_640','CAL'),(5015,'XL_640','CHO'),(5016,'XL_640','CHOH'),(5017,'XL_640','CHOL'),(5018,'XL_640','TG'),(5019,'XL_640','Na'),(5020,'XL_640','K'),(5021,'XL_640','IRON'),(5022,'XL_640','TIBC'),(5023,'XL_640','UIBC'),(5024,'XL_640','IBIL'),(5025,'XL_640','LDH'),(5026,'XL_640','LIP'),(5027,'XL_640','UA'),(5028,'XL_640','CHOV'),(5029,'XL_640','GLC'),(5030,'XL_640','MPR'),(5031,'XL_640','GLC'),(5032,'XL_640','ADA'),(5033,'XL_640','ADA'),(5034,'XL_640','ADA'),(5035,'XL_640','GLC'),(5036,'XL_640','GLC'),(5037,'XL_640','TP'),(5038,'XL_640','TP'),(5039,'XL_640','LIP'),(5040,'XL_640','AMY'),(5041,'XL_640','LDH'),(5042,'XL_640','CHO'),(5043,'XL_640','TG'),(5044,'XL_640','AMY'),(5045,'XL_640','LIP'),(5046,'XL_640','LDH'),(5047,'XL_640','LDH'),(5048,'XL_640','Na'),(5049,'XL_640','K'),(5050,'XL_640','CAL'),(5051,'XL_640','PHO'),(5052,'XL_640','CR'),(5053,'XL_640','TP'),(5054,'XL_640','KTO'),(5055,'XL_640','UA'),(5080,'XL_640','TP'),(5081,'XL_640','MPR'),(5082,'XL_640','MPR'),(5083,'XL_640','Na'),(5084,'XL_640','CAL'),(5085,'XL_640','MPR'),(5092,'XL_640','CK'),(5093,'XL_640','CKMB'),(5100,'XL_640','PHO'),(5105,'XL_640','LDH'),(5106,'XL_640','AMY'),(5107,'XL_640','LIP'),(5108,'XL_640','GLC'),(5109,'XL_640','CHO'),(5110,'XL_640','TG'),(5111,'XL_640','MPR'),(5112,'XL_640','TP'),(5113,'XL_640','CHE'),(5121,'XL_640','CRPPP'),(5122,'XL_640','DIMER'),(5132,'XL_640','MGGG'),(5135,'XL_640','UREA'),(5136,'XL_640','GLC'),(5137,'XL_640','CR'),(5138,'XL_640','HCL'),(9001,'XL_640','CR'),(9002,'XL_640','UREA'),(9006,'XL_640','ALT'),(9007,'XL_640','ALP'),(9008,'XL_640','AMY'),(9009,'XL_640','TBIL'),(9010,'XL_640','DBIL'),(9011,'XL_640','ALB'),(9012,'XL_640','TP'),(9013,'XL_640','AST'),(9014,'XL_640','CAL'),(9015,'XL_640','CHO'),(9016,'XL_640','CHOH'),(9018,'XL_640','TG'),(9019,'XL_640','Na'),(9020,'XL_640','K'),(9021,'XL_640','IRON'),(9023,'XL_640','UIBC'),(9025,'XL_640','LDH'),(9027,'XL_640','UA'),(9031,'XL_640','GLC'),(9051,'XL_640','PHO'),(9081,'XL_640','MPR'),(9092,'XL_640','CK'),(9093,'XL_640','CKMB'),(9113,'XL_640','CHE'),(9114,'XL_640','HCL'),(9202,'XL_640','CRPPP'),(9204,'XL_640','DIMER'),(9210,'XL_640','MGGG'),(9217,'XL_640','LIP'),(5001,'XL_1000','CRR'),(5002,'XL_1000','UREE'),(5006,'XL_1000','ALTT'),(5007,'XL_1000','ALPP'),(5008,'XL_1000','AMYY'),(5009,'XL_1000','TBILL'),(5010,'XL_1000','DBILL'),(5011,'XL_1000','ALBB'),(5012,'XL_1000','TPP'),(5013,'XL_1000','ASTT'),(5014,'XL_1000','CALL'),(5015,'XL_1000','CHOO'),(5016,'XL_1000',''),(5018,'XL_1000','TGG'),(5019,'XL_1000','Naa'),(5020,'XL_1000','Kk'),(5021,'XL_1000','IRONN'),(5023,'XL_1000','UIBCC'),(5025,'XL_1000','LDHH'),(5026,'XL_1000','LIPP'),(5027,'XL_1000','UAA'),(5029,'XL_1000','GLCC'),(5030,'XL_1000','MPRR'),(5031,'XL_1000','GLCC'),(5032,'XL_1000','ADAA'),(5033,'XL_1000','ADAA'),(5034,'XL_1000','ADAA'),(5035,'XL_1000','GLCC'),(5036,'XL_1000','GLCC'),(5037,'XL_1000','TPP'),(5038,'XL_1000','TPP'),(5039,'XL_1000','LIPP'),(5040,'XL_1000','AMYY'),(5041,'XL_1000','LDHH'),(5042,'XL_1000','CHOO'),(5043,'XL_1000','TGG'),(5044,'XL_1000','AMYY'),(5045,'XL_1000','LIPP'),(5046,'XL_1000','LDHH'),(5047,'XL_1000','LDHH'),(5048,'XL_1000','Naa'),(5049,'XL_1000','Kk'),(5050,'XL_1000','CALL'),(5051,'XL_1000','PHOO'),(5052,'XL_1000','CRR'),(5053,'XL_1000','TPP'),(5054,'XL_1000','KTOO'),(5055,'XL_1000','UAA'),(5080,'XL_1000','TPP'),(5081,'XL_1000','MPRR'),(5082,'XL_1000','MPRR'),(5083,'XL_1000','Naa'),(5084,'XL_1000','CALL'),(5085,'XL_1000','MPRR'),(5092,'XL_1000','CKK'),(5093,'XL_1000','CKMBB'),(5100,'XL_1000','PHOO'),(5105,'XL_1000','LDHH'),(5106,'XL_1000','AMYY'),(5107,'XL_1000','LIPP'),(5108,'XL_1000','GLCC'),(5109,'XL_1000','CHOO'),(5110,'XL_1000','TGG'),(5111,'XL_1000','MPRR'),(5112,'XL_1000','TPP'),(5113,'XL_1000','CHEE'),(5114,'XL_1000','HCLL'),(5121,'XL_1000','CRPP'),(5122,'XL_1000','DDMR'),(5132,'XL_1000','MGG'),(5137,'XL_1000','CRR'),(5138,'XL_1000','HCLL'),(5182,'XL_1000','UALBB'),(9001,'XL_1000','CRR'),(9002,'XL_1000','UREE'),(9006,'XL_1000','ALTT'),(9007,'XL_1000','ALPP'),(9008,'XL_1000','AMYY'),(9009,'XL_1000','TBILL'),(9010,'XL_1000','DBILL'),(9011,'XL_1000','ALBB'),(9012,'XL_1000','TPP'),(9013,'XL_1000','ASTT'),(9014,'XL_1000','CALL'),(9015,'XL_1000','CHOO'),(9016,'XL_1000',''),(9018,'XL_1000','TGG'),(9019,'XL_1000','Naa'),(9020,'XL_1000','Kk'),(9021,'XL_1000','IRONN'),(9023,'XL_1000',''),(9025,'XL_1000','LDHH'),(9027,'XL_1000','UAA'),(9031,'XL_1000','GLCC'),(9051,'XL_1000','PHOO'),(9081,'XL_1000','MPRR'),(9092,'XL_1000','CKK'),(9093,'XL_1000','CKMBB'),(9113,'XL_1000','CHEE'),(9114,'XL_1000','HCLL'),(9202,'XL_1000','CRPP'),(9204,'XL_1000','DDMR'),(9210,'XL_1000','MGG'),(9217,'XL_1000','LIPP'),(9221,'XL_1000','DDMR'),(5115,'VITROS3600','002'),(5117,'VITROS3600','001'),(5118,'VITROS3600','031'),(5120,'VITROS3600','086'),(5123,'VITROS3600','082'),(5125,'VITROS3600','052'),(5127,'VITROS3600','004'),(5128,'VITROS3600','005'),(5129,'VITROS3600','011'),(5130,'VITROS3600','010'),(5131,'VITROS3600','009'),(5133,'VITROS3600','013'),(5140,'VITROS3600','014'),(5141,'VITROS3600','074'),(5142,'VITROS3600','032'),(5171,'VITROS3600','087'),(5175,'VITROS3600','091'),(9201,'VITROS3600','031'),(9203,'VITROS3600','001'),(9205,'VITROS3600','086'),(9206,'VITROS3600','002'),(9207,'VITROS3600','082'),(9209,'VITROS3600','052'),(9211,'VITROS3600','010'),(9212,'VITROS3600','009'),(9213,'VITROS3600','005'),(9214,'VITROS3600','004'),(9215,'VITROS3600','011'),(9216,'VITROS3600','013'),(9219,'VITROS3600','032'),(9220,'VITROS3600','074'),(5143,'RP500','mpH'),(5144,'RP500','mPCO2'),(5145,'RP500','mPO2'),(5148,'RP500','mNa+'),(5149,'RP500','mK+'),(5154,'RP500','cHCO3act'),(5159,'RP500','mLactate'),(5174,'TOSOH','SA1C'),(5178,'TOSOH','chrom'),(5179,'TOSOH','F'),(9222,'TOSOH','SA1C'),(9223,'TOSOH','chrom'),(9224,'TOSOH','F');
/*!40000 ALTER TABLE `host_code` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `lis_to_vitros_sample_type`
--

LOCK TABLES `lis_to_vitros_sample_type` WRITE;
/*!40000 ALTER TABLE `lis_to_vitros_sample_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `lis_to_vitros_sample_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-29 10:35:01
