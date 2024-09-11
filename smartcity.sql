select * from biometric;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: smart_card_system
-- ------------------------------------------------------
-- Server version	8.0.39
use smart;
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
-- Table structure for table `aadhar`
--

DROP TABLE IF EXISTS `aadhar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aadhar` (
  `aadhar_number` varchar(12) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`aadhar_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aadhar`
--

LOCK TABLES `aadhar` WRITE;
/*!40000 ALTER TABLE `aadhar` DISABLE KEYS */;
INSERT INTO `aadhar` VALUES ('111213141516','Daniel Miller','1992-08-08','M','432 Fir Street','2233445566','danielmiller@example.com'),('123456789012','John Doe','1985-05-14','Male','123 Main St, Cityville','9876543210','john.doe@example.com'),('171819202122','Emma Moore','1980-04-29','F','876 Walnut Road','3344556677','emmoore@example.com'),('232425262728','James Taylor','1991-01-15','M','321 Chestnut Blvd','4455667788','jamestaylor@example.com'),('258976547899','Olivia Harris','1988-12-11','F','987 Birch Blvd','7788990011','oliviaharris@example.com'),('293031323334','Ava Anderson','1986-07-20','F','654 Willow Street','5566778899','avaanderson@example.com'),('353637383940','Admin User','1985-05-15','M','123 Admin Lane','6677889900','admin@example.com'),('378654479976','William Clark','1995-09-30','M','654 Cedar Lane','6677889900','williamclark@example.com'),('456789123456','Robert Brown','1980-11-30','Male','789 Oak St, Villageville','9876543212','robert.brown@example.com'),('567865556789','Emily Davis','1978-07-25','F','321 Maple Drive','5566778899','emilydavis@example.com'),('654321987654','Emily Davis','1995-01-12','Female','321 Pine St, Hamletville','9876543213','emily.davis@example.com'),('789456123789','Michael Johnson','1983-09-25','Male','654 Cedar St, Boroughville','9876543214','michael.johnson@example.com'),('987654321098','Jane Smith','1990-07-22','Female','456 Elm St, Townsville','9876543211','jane.smith@example.com');
/*!40000 ALTER TABLE `aadhar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academic_record`
--

DROP TABLE IF EXISTS `academic_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_record` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `aadhar_number` varchar(12) DEFAULT NULL,
  `institution_name` varchar(255) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `year_of_completion` int DEFAULT NULL,
  `cgpa` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `aadhar_number` (`aadhar_number`),
  CONSTRAINT `academic_record_ibfk_1` FOREIGN KEY (`aadhar_number`) REFERENCES `aadhar` (`aadhar_number`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_record`
--

LOCK TABLES `academic_record` WRITE;
/*!40000 ALTER TABLE `academic_record` DISABLE KEYS */;
INSERT INTO `academic_record` VALUES (1,'123456789012','Tech University','B.Tech',2007,8.50),(2,'987654321098','City College','MBA',2012,9.20),(3,'456789123456','Commerce College','B.Com',2000,7.80),(4,'654321987654','Data Science Institute','M.Sc',2018,9.00),(5,'789456123789','State University','BA',2003,8.10),(6,'567865556789','OPQ College','M.Sc.',2001,8.20),(7,'171819202122','XYZ University','M.Tech',2010,8.30),(8,'232425262728','ABC College','BBA',2011,7.90),(9,'293031323334','LMN University','B.Ed.',2006,8.10),(10,'353637383940','OPQ Institute','B.Com',2005,8.40),(11,'378654479976','RST University','MBA',2016,9.10);
/*!40000 ALTER TABLE `academic_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `admin_view`
--

DROP TABLE IF EXISTS `admin_view`;
/*!50001 DROP VIEW IF EXISTS `admin_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `admin_view` AS SELECT 
 1 AS `aadhar_number`,
 1 AS `name`,
 1 AS `dob`,
 1 AS `gender`,
 1 AS `address`,
 1 AS `phone_number`,
 1 AS `email`,
 1 AS `pan_number`,
 1 AS `license_number`,
 1 AS `license_class`,
 1 AS `driving_license_expiry_date`,
 1 AS `passport_number`,
 1 AS `issue_date`,
 1 AS `passport_expiry_date`,
 1 AS `property_type`,
 1 AS `location`,
 1 AS `area_sq_ft`,
 1 AS `purchase_date`,
 1 AS `price`,
 1 AS `bank_name`,
 1 AS `account_number`,
 1 AS `balance`,
 1 AS `crime_description`,
 1 AS `crime_date`,
 1 AS `punishment`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `bank_account`
--

DROP TABLE IF EXISTS `bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_account` (
  `account_number` varchar(20) NOT NULL,
  `aadhar_number` varchar(12) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `balance` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`account_number`),
  KEY `aadhar_number` (`aadhar_number`),
  CONSTRAINT `bank_account_ibfk_1` FOREIGN KEY (`aadhar_number`) REFERENCES `aadhar` (`aadhar_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_account`
--

LOCK TABLES `bank_account` WRITE;
/*!40000 ALTER TABLE `bank_account` DISABLE KEYS */;
INSERT INTO `bank_account` VALUES ('AC1718192021','171819202122','XYZ Bank','Walnut Branch','Savings',700000.00),('AC2324252627','232425262728','ABC Bank','Chestnut Branch','Fixed Deposit',800000.00),('AC2930313233','293031323334','LMN Bank','Willow Branch','Savings',900000.00),('AC3536373839','353637383940','OPQ Bank','Admin Branch','Current',1000000.00),('AC3786544799','378654479976','RST Bank','Cedar Branch','Savings',1100000.00),('AC5678901234','567865556789','OPQ Bank','Maple Branch','Fixed Deposit',400000.00),('ACC1234567890','123456789012','SBI','Cityville Branch','Savings',100000.00),('ACC4567891234','456789123456','ICICI','Villageville Branch','Current',150000.00),('ACC6543219876','654321987654','Axis','Hamletville Branch','Savings',180000.00),('ACC7894561230','789456123789','Kotak','Boroughville Branch','Savings',500000.00),('ACC9876543210','987654321098','HDFC','Townsville Branch','Savings',250000.00);
/*!40000 ALTER TABLE `bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biometric`
--

DROP TABLE IF EXISTS `biometric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biometric` (
  `aadhar_number` varchar(12) NOT NULL,
  `fingerprint` blob,
  `iris_scan` blob,
  `face_id` blob,
  PRIMARY KEY (`aadhar_number`),
  CONSTRAINT `biometric_ibfk_1` FOREIGN KEY (`aadhar_number`) REFERENCES `aadhar` (`aadhar_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biometric`
--

LOCK TABLES `biometric` WRITE;
/*!40000 ALTER TABLE `biometric` DISABLE KEYS */;
INSERT INTO `biometric` VALUES ('123456789012',NULL,NULL,NULL),('171819202122',_binary 'fingerprint_data_7',_binary 'iris_scan_data_7',_binary 'face_id_data_7'),('232425262728',_binary 'fingerprint_data_8',_binary 'iris_scan_data_8',_binary 'face_id_data_8'),('293031323334',_binary 'fingerprint_data_9',_binary 'iris_scan_data_9',_binary 'face_id_data_9'),('353637383940',_binary 'fingerprint_data_10',_binary 'iris_scan_data_10',_binary 'face_id_data_10'),('378654479976',_binary 'fingerprint_data_11',_binary 'iris_scan_data_11',_binary 'face_id_data_11'),('456789123456',NULL,NULL,NULL),('567865556789',_binary 'fingerprint_data_4',_binary 'iris_scan_data_4',_binary 'face_id_data_4'),('654321987654',NULL,NULL,NULL),('789456123789',NULL,NULL,NULL),('987654321098',NULL,NULL,NULL);
/*!40000 ALTER TABLE `biometric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `commissioner_view`
--

DROP TABLE IF EXISTS `commissioner_view`;
/*!50001 DROP VIEW IF EXISTS `commissioner_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `commissioner_view` AS SELECT 
 1 AS `aadhar_number`,
 1 AS `name`,
 1 AS `dob`,
 1 AS `gender`,
 1 AS `address`,
 1 AS `phone_number`,
 1 AS `email`,
 1 AS `crime_description`,
 1 AS `crime_date`,
 1 AS `punishment`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `constable_view`
--

DROP TABLE IF EXISTS `constable_view`;
/*!50001 DROP VIEW IF EXISTS `constable_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `constable_view` AS SELECT 
 1 AS `aadhar_number`,
 1 AS `name`,
 1 AS `crime_description`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `criminal_history`
--

DROP TABLE IF EXISTS `criminal_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `criminal_history` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `aadhar_number` varchar(12) DEFAULT NULL,
  `crime_description` text,
  `crime_date` date DEFAULT NULL,
  `punishment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `aadhar_number` (`aadhar_number`),
  CONSTRAINT `criminal_history_ibfk_1` FOREIGN KEY (`aadhar_number`) REFERENCES `aadhar` (`aadhar_number`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criminal_history`
--

LOCK TABLES `criminal_history` WRITE;
/*!40000 ALTER TABLE `criminal_history` DISABLE KEYS */;
INSERT INTO `criminal_history` VALUES (1,'123456789012','No criminal record',NULL,NULL),(2,'987654321098','No criminal record',NULL,NULL),(3,'456789123456','Minor Traffic Violation','2005-09-15','Fine'),(4,'654321987654','No criminal record',NULL,NULL),(5,'789456123789','Shoplifting','2002-11-12','Probation'),(6,'567865556789','Assault','2021-09-30','6 months imprisonment'),(7,'171819202122','Cybercrime','2020-08-20','5 years imprisonment'),(8,'232425262728','Forgery','2016-06-15','3 years probation'),(9,'293031323334','Blackmail','2021-02-05','1 year imprisonment'),(10,'353637383940','Fraud','2018-04-30','2 years imprisonment'),(11,'378654479976','Assault','2021-09-05','6 months probation');
/*!40000 ALTER TABLE `criminal_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driving_license`
--

DROP TABLE IF EXISTS `driving_license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driving_license` (
  `license_number` varchar(15) NOT NULL,
  `aadhar_number` varchar(12) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `license_class` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`license_number`),
  KEY `aadhar_number` (`aadhar_number`),
  CONSTRAINT `driving_license_ibfk_1` FOREIGN KEY (`aadhar_number`) REFERENCES `aadhar` (`aadhar_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driving_license`
--

LOCK TABLES `driving_license` WRITE;
/*!40000 ALTER TABLE `driving_license` DISABLE KEYS */;
INSERT INTO `driving_license` VALUES ('DL12345678','123456789012','John Doe','1985-05-14','2006-04-20','2026-04-20','LMV'),('DL171819202122','171819202122','Emma Moore','1980-04-29','2000-01-12','2025-01-12','G'),('DL232425262728','232425262728','James Taylor','1991-01-15','2011-02-05','2031-02-05','H'),('DL23456789','987654321098','Jane Smith','1990-07-22','2012-08-15','2032-08-15','LMV'),('DL293031323334','293031323334','Ava Anderson','1986-07-20','2006-11-20','2026-11-20','I'),('DL34567890','456789123456','Robert Brown','1980-11-30','2001-09-05','2021-09-05','LMV'),('DL353637383940','353637383940','Admin User','1985-05-15','2015-04-25','2035-04-25','J'),('DL378654479976','378654479976','William Clark','1995-09-30','2015-09-30','2035-09-30','K'),('DL45678901','654321987654','Emily Davis','1995-01-12','2016-12-20','2036-12-20','LMV'),('DL456789123456','456789123456','Robert Brown','1980-11-30','2000-11-30','2020-11-30','L'),('DL567865556789','567865556789','Emily Davis','1978-07-25','2000-06-20','2020-06-20','D'),('DL56789012','789456123789','Michael Johnson','1983-09-25','2005-11-10','2025-11-10','LMV');
/*!40000 ALTER TABLE `driving_license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employment`
--

DROP TABLE IF EXISTS `employment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employment` (
  `employment_id` int NOT NULL AUTO_INCREMENT,
  `aadhar_number` varchar(12) DEFAULT NULL,
  `employer_name` varchar(255) DEFAULT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `salary` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`employment_id`),
  KEY `aadhar_number` (`aadhar_number`),
  CONSTRAINT `employment_ibfk_1` FOREIGN KEY (`aadhar_number`) REFERENCES `aadhar` (`aadhar_number`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employment`
--

LOCK TABLES `employment` WRITE;
/*!40000 ALTER TABLE `employment` DISABLE KEYS */;
INSERT INTO `employment` VALUES (1,'123456789012','ABC Corp','Software Engineer','2007-04-01','2015-08-30',70000.00),(2,'987654321098','XYZ Pvt Ltd','Project Manager','2012-01-10',NULL,120000.00),(3,'456789123456','LMN Inc','Accountant','2000-05-15','2010-03-25',55000.00),(4,'654321987654','PQR Tech','Data Analyst','2017-06-01',NULL,90000.00),(5,'789456123789','RST Ltd','Marketing Executive','2005-02-20','2013-11-10',60000.00),(6,'567865556789','Real Estate LLC','Property Manager','2008-09-01','2018-08-31',110000.00),(7,'171819202122','Tech Solutions','IT Manager','2011-01-01','2021-12-31',140000.00),(8,'232425262728','Consulting Group','Consultant','2017-05-15','2027-05-14',120000.00),(9,'293031323334','Education Ltd.','Teacher','2005-09-01','2025-08-31',90000.00),(10,'353637383940','Admin Services','Admin Officer','2010-04-01','2020-03-31',85000.00),(11,'378654479976','Engineering Ltd.','Project Manager','2014-02-01','2024-01-31',110000.00);
/*!40000 ALTER TABLE `employment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `incometax_clerk_view`
--

DROP TABLE IF EXISTS `incometax_clerk_view`;
/*!50001 DROP VIEW IF EXISTS `incometax_clerk_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `incometax_clerk_view` AS SELECT 
 1 AS `aadhar_number`,
 1 AS `name`,
 1 AS `address`,
 1 AS `pan_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `incometax_commissioner_view`
--

DROP TABLE IF EXISTS `incometax_commissioner_view`;
/*!50001 DROP VIEW IF EXISTS `incometax_commissioner_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `incometax_commissioner_view` AS SELECT 
 1 AS `aadhar_number`,
 1 AS `name`,
 1 AS `dob`,
 1 AS `gender`,
 1 AS `address`,
 1 AS `phone_number`,
 1 AS `email`,
 1 AS `pan_number`,
 1 AS `property_type`,
 1 AS `location`,
 1 AS `area_sq_ft`,
 1 AS `purchase_date`,
 1 AS `price`,
 1 AS `bank_name`,
 1 AS `account_number`,
 1 AS `balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `incometax_officer_view`
--

DROP TABLE IF EXISTS `incometax_officer_view`;
/*!50001 DROP VIEW IF EXISTS `incometax_officer_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `incometax_officer_view` AS SELECT 
 1 AS `aadhar_number`,
 1 AS `name`,
 1 AS `dob`,
 1 AS `gender`,
 1 AS `address`,
 1 AS `pan_number`,
 1 AS `bank_name`,
 1 AS `account_number`,
 1 AS `balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `inspector_view`
--

DROP TABLE IF EXISTS `inspector_view`;
/*!50001 DROP VIEW IF EXISTS `inspector_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `inspector_view` AS SELECT 
 1 AS `aadhar_number`,
 1 AS `name`,
 1 AS `dob`,
 1 AS `gender`,
 1 AS `address`,
 1 AS `crime_description`,
 1 AS `crime_date`*/;
SET character_set_client = @saved_cs_client;
