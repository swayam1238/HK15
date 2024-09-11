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

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `policy_number` varchar(20) NOT NULL,
  `aadhar_number` varchar(12) DEFAULT NULL,
  `provider_name` varchar(100) DEFAULT NULL,
  `policy_type` varchar(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `sum_assured` decimal(15,2) DEFAULT NULL,
  `premium_amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`policy_number`),
  KEY `aadhar_number` (`aadhar_number`),
  CONSTRAINT `insurance_ibfk_1` FOREIGN KEY (`aadhar_number`) REFERENCES `aadhar` (`aadhar_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES ('POL11223','456789123456','Bajaj Allianz','Motor','2008-06-12','2023-06-12',300000.00,12000.00),('POL12345','123456789012','Life Insurance Corp','Life','2010-05-10','2030-05-10',500000.00,15000.00),('POL171819','171819202122','XYZ Insurance','Health','2018-07-15','2028-07-15',1200000.00,4500.00),('POL232425','232425262728','ABC Insurance','Home','2020-04-20','2030-04-20',2000000.00,6000.00),('POL293031','293031323334','LMN Insurance','Car','2017-12-30','2027-12-30',700000.00,4200.00),('POL353637','353637383940','OPQ Insurance','Health','2016-08-05','2026-08-05',1000000.00,4700.00),('POL378654','378654479976','RST Insurance','Life','2015-10-12','2025-10-12',1800000.00,6000.00),('POL44556','654321987654','HDFC Ergo','Life','2020-10-10','2040-10-10',1000000.00,25000.00),('POL567865','567865556789','OPQ Insurance','Home','2016-10-10','2026-10-10',3000000.00,7000.00),('POL67890','987654321098','ICICI Lombard','Health','2015-03-25','2025-03-25',200000.00,8000.00),('POL77889','789456123789','SBI General','Property','2012-07-18','2022-07-18',700000.00,18000.00);
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks_card_10th`
--

DROP TABLE IF EXISTS `marks_card_10th`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marks_card_10th` (
  `aadhar_number` varchar(12) NOT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `board` varchar(50) DEFAULT NULL,
  `year_of_completion` int DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`aadhar_number`),
  CONSTRAINT `marks_card_10th_ibfk_1` FOREIGN KEY (`aadhar_number`) REFERENCES `aadhar` (`aadhar_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks_card_10th`
--

LOCK TABLES `marks_card_10th` WRITE;
/*!40000 ALTER TABLE `marks_card_10th` DISABLE KEYS */;
INSERT INTO `marks_card_10th` VALUES ('123456789012','Central High School','CBSE',2001,88.50),('171819202122','Walnut School','CBSE',1998,85.00),('232425262728','Chestnut School','ICSE',2009,78.00),('293031323334','Willow School','State Board',2005,81.00),('353637383940','Admin School','CBSE',2000,90.00),('378654479976','Cedar School','ICSE',2008,83.00),('456789123456','Sunrise Public School','CBSE',1997,76.40),('567865556789','Maple High School','CBSE',1994,82.00),('654321987654','City Montessori School','State Board',2013,85.70),('789456123789','Riverdale Academy','ICSE',1999,80.20),('987654321098','Greenwood High','ICSE',2006,92.30);
/*!40000 ALTER TABLE `marks_card_10th` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks_card_12th`
--

DROP TABLE IF EXISTS `marks_card_12th`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marks_card_12th` (
  `aadhar_number` varchar(12) NOT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `board` varchar(50) DEFAULT NULL,
  `year_of_completion` int DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`aadhar_number`),
  CONSTRAINT `marks_card_12th_ibfk_1` FOREIGN KEY (`aadhar_number`) REFERENCES `aadhar` (`aadhar_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks_card_12th`
--

LOCK TABLES `marks_card_12th` WRITE;
/*!40000 ALTER TABLE `marks_card_12th` DISABLE KEYS */;
INSERT INTO `marks_card_12th` VALUES ('123456789012','Central High School','CBSE',2003,85.90),('171819202122','Walnut School','CBSE',2003,88.00),('232425262728','Chestnut School','ICSE',2010,80.00),('293031323334','Willow School','State Board',2007,83.00),('353637383940','Admin School','CBSE',2005,91.00),('378654479976','Cedar School','ICSE',2014,85.00),('456789123456','Sunrise Public School','CBSE',1999,78.20),('567865556789','Maple High School','CBSE',1996,84.00),('654321987654','City Montessori School','State Board',2015,87.40),('789456123789','Riverdale Academy','ICSE',2001,82.10),('987654321098','Greenwood High','ICSE',2008,90.70);
/*!40000 ALTER TABLE `marks_card_12th` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pan`
--

DROP TABLE IF EXISTS `pan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pan` (
  `pan_number` varchar(10) NOT NULL,
  `aadhar_number` varchar(12) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  PRIMARY KEY (`pan_number`),
  KEY `aadhar_number` (`aadhar_number`),
  CONSTRAINT `pan_ibfk_1` FOREIGN KEY (`aadhar_number`) REFERENCES `aadhar` (`aadhar_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pan`
--

LOCK TABLES `pan` WRITE;
/*!40000 ALTER TABLE `pan` DISABLE KEYS */;
INSERT INTO `pan` VALUES ('ABCDE1234F','123456789012','John Doe','2005-03-15'),('ABCDE9999X','171819202122','Emma Moore','2005-09-30'),('FGHIJ5678K','987654321098','Jane Smith','2010-06-25'),('KLMNO9123P','456789123456','Robert Brown','2002-09-10'),('LMN09876B','456789123456','Robert Brown','2016-11-30'),('LMNOP4567C','293031323334','Ava Anderson','2007-02-21'),('QRSTU1234V','567865556789','Emily Davis','2008-12-25'),('QRSTU4567V','654321987654','Emily Davis','2018-11-20'),('QRSTU6789M','353637383940','Admin User','2015-08-17'),('VWXYZ8910W','789456123789','Michael Johnson','2007-05-30'),('WXYZ1234F','378654479976','William Clark','2012-10-12'),('XYZ1234AB','232425262728','James Taylor','2011-05-15');
/*!40000 ALTER TABLE `pan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passport`
--

DROP TABLE IF EXISTS `passport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passport` (
  `passport_number` varchar(10) NOT NULL,
  `aadhar_number` varchar(12) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  PRIMARY KEY (`passport_number`),
  KEY `aadhar_number` (`aadhar_number`),
  CONSTRAINT `passport_ibfk_1` FOREIGN KEY (`aadhar_number`) REFERENCES `aadhar` (`aadhar_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passport`
--

LOCK TABLES `passport` WRITE;
/*!40000 ALTER TABLE `passport` DISABLE KEYS */;
INSERT INTO `passport` VALUES ('P01234567','456789123456','Robert Brown','Indian','2005-12-30','2015-12-30'),('P1234567','123456789012','John Doe','Indian','2006-02-14','2016-02-14'),('P2345678','987654321098','Jane Smith','Indian','2012-05-22','2022-05-22'),('P3456789','456789123456','Robert Brown','Indian','2003-10-30','2013-10-30'),('P4567890','654321987654','Emily Davis','Indian','2015-01-12','2025-01-12'),('P5678901','789456123789','Michael Johnson','Indian','2007-08-25','2017-08-25'),('P56789012','171819202122','Emma Moore','Indian','2005-07-15','2015-07-15'),('P67890123','232425262728','James Taylor','Indian','2015-04-20','2025-04-20'),('P78901234','293031323334','Ava Anderson','Indian','2000-06-30','2010-06-30'),('P89012345','353637383940','Admin User','Indian','2015-12-15','2025-12-15'),('P90123456','378654479976','William Clark','Indian','2010-03-05','2020-03-05'),('P98765432','567865556789','Emily Davis','Indian','2010-10-10','2020-10-10');
/*!40000 ALTER TABLE `passport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `passport_officer_commissioner_view`
--

DROP TABLE IF EXISTS `passport_officer_commissioner_view`;
/*!50001 DROP VIEW IF EXISTS `passport_officer_commissioner_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `passport_officer_commissioner_view` AS SELECT 
 1 AS `aadhar_number`,
 1 AS `name`,
 1 AS `dob`,
 1 AS `passport_number`,
 1 AS `issue_date`,
 1 AS `expiry_date`,
 1 AS `crime_description`,
 1 AS `crime_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `passport_officer_junior_view`
--

DROP TABLE IF EXISTS `passport_officer_junior_view`;
/*!50001 DROP VIEW IF EXISTS `passport_officer_junior_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `passport_officer_junior_view` AS SELECT 
 1 AS `aadhar_number`,
 1 AS `name`,
 1 AS `passport_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `passport_officer_senior_view`
--

DROP TABLE IF EXISTS `passport_officer_senior_view`;
/*!50001 DROP VIEW IF EXISTS `passport_officer_senior_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `passport_officer_senior_view` AS SELECT 
 1 AS `aadhar_number`,
 1 AS `name`,
 1 AS `passport_number`,
 1 AS `issue_date`,
 1 AS `expiry_date`,
 1 AS `crime_description`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `property_id` int NOT NULL AUTO_INCREMENT,
  `aadhar_number` varchar(12) DEFAULT NULL,
  `property_type` varchar(50) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `area_sq_ft` decimal(10,2) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`property_id`),
  KEY `aadhar_number` (`aadhar_number`),
  CONSTRAINT `property_ibfk_1` FOREIGN KEY (`aadhar_number`) REFERENCES `aadhar` (`aadhar_number`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,'123456789012','Apartment','Cityville',1200.00,'2010-05-25',5000000.00),(2,'987654321098','House','Townsville',2000.00,'2015-09-10',8000000.00),(3,'456789123456','Land','Villageville',5000.00,'2003-11-15',3000000.00),(4,'654321987654','Apartment','Hamletville',1000.00,'2020-02-28',4500000.00),(5,'789456123789','Villa','Boroughville',2500.00,'2012-08-05',9500000.00),(6,'567865556789','Residential','321 Maple Drive',2000.00,'2008-10-10',6000000.00),(7,'171819202122','Industrial','876 Walnut Road',4000.00,'2012-07-15',12000000.00),(8,'232425262728','Residential','321 Chestnut Blvd',1600.00,'2016-04-20',5500000.00),(9,'293031323334','Commercial','654 Willow Street',3500.00,'2008-12-30',8000000.00),(10,'353637383940','Residential','123 Admin Lane',1700.00,'2015-08-05',4700000.00),(11,'378654479976','Industrial','654 Cedar Lane',5500.00,'2017-09-10',14000000.00);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `traffic_police_commissioner_view`
--

DROP TABLE IF EXISTS `traffic_police_commissioner_view`;
/*!50001 DROP VIEW IF EXISTS `traffic_police_commissioner_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `traffic_police_commissioner_view` AS SELECT 
 1 AS `aadhar_number`,
 1 AS `name`,
 1 AS `dob`,
 1 AS `license_number`,
 1 AS `license_class`,
 1 AS `expiry_date`,
 1 AS `crime_description`,
 1 AS `crime_date`,
 1 AS `punishment`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `traffic_police_constable_view`
--

DROP TABLE IF EXISTS `traffic_police_constable_view`;
/*!50001 DROP VIEW IF EXISTS `traffic_police_constable_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `traffic_police_constable_view` AS SELECT 
 1 AS `aadhar_number`,
 1 AS `name`,
 1 AS `license_number`,
 1 AS `license_class`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `traffic_police_inspector_view`
--

DROP TABLE IF EXISTS `traffic_police_inspector_view`;
/*!50001 DROP VIEW IF EXISTS `traffic_police_inspector_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `traffic_police_inspector_view` AS SELECT 
 1 AS `aadhar_number`,
 1 AS `name`,
 1 AS `license_number`,
 1 AS `license_class`,
 1 AS `expiry_date`,
 1 AS `crime_description`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `aadhar_number` varchar(12) DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  KEY `aadhar_number` (`aadhar_number`),
  CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`aadhar_number`) REFERENCES `aadhar` (`aadhar_number`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (14,'123456789012','IncomeTaxCommissioner'),(15,'987654321098','IncomeTaxOfficer'),(16,'456789123456','IncomeTaxClerk'),(17,'567865556789','Inspector'),(18,'378654479976','Commissioner'),(19,'258976547899','Constable'),(20,'654321987654','TrafficPoliceCommissioner'),(21,'789456123789','TrafficPoliceInspector'),(22,'111213141516','TrafficPoliceConstable'),(23,'171819202122','PassportOfficerCommissioner'),(24,'232425262728','PassportOfficerSenior'),(25,'293031323334','PassportOfficerJunior'),(26,'353637383940','Admin');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `admin_view`
--

/*!50001 DROP VIEW IF EXISTS `admin_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `admin_view` AS select `aadhar`.`aadhar_number` AS `aadhar_number`,`aadhar`.`name` AS `name`,`aadhar`.`dob` AS `dob`,`aadhar`.`gender` AS `gender`,`aadhar`.`address` AS `address`,`aadhar`.`phone_number` AS `phone_number`,`aadhar`.`email` AS `email`,`pan`.`pan_number` AS `pan_number`,`driving_license`.`license_number` AS `license_number`,`driving_license`.`license_class` AS `license_class`,`driving_license`.`expiry_date` AS `driving_license_expiry_date`,`passport`.`passport_number` AS `passport_number`,`passport`.`issue_date` AS `issue_date`,`passport`.`expiry_date` AS `passport_expiry_date`,`property`.`property_type` AS `property_type`,`property`.`location` AS `location`,`property`.`area_sq_ft` AS `area_sq_ft`,`property`.`purchase_date` AS `purchase_date`,`property`.`price` AS `price`,`bank_account`.`bank_name` AS `bank_name`,`bank_account`.`account_number` AS `account_number`,`bank_account`.`balance` AS `balance`,`criminal_history`.`crime_description` AS `crime_description`,`criminal_history`.`crime_date` AS `crime_date`,`criminal_history`.`punishment` AS `punishment` from ((((((`aadhar` left join `pan` on((`aadhar`.`aadhar_number` = `pan`.`aadhar_number`))) left join `driving_license` on((`aadhar`.`aadhar_number` = `driving_license`.`aadhar_number`))) left join `passport` on((`aadhar`.`aadhar_number` = `passport`.`aadhar_number`))) left join `property` on((`aadhar`.`aadhar_number` = `property`.`aadhar_number`))) left join `bank_account` on((`aadhar`.`aadhar_number` = `bank_account`.`aadhar_number`))) left join `criminal_history` on((`aadhar`.`aadhar_number` = `criminal_history`.`aadhar_number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `commissioner_view`
--

/*!50001 DROP VIEW IF EXISTS `commissioner_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `commissioner_view` AS select `aadhar`.`aadhar_number` AS `aadhar_number`,`aadhar`.`name` AS `name`,`aadhar`.`dob` AS `dob`,`aadhar`.`gender` AS `gender`,`aadhar`.`address` AS `address`,`aadhar`.`phone_number` AS `phone_number`,`aadhar`.`email` AS `email`,`criminal_history`.`crime_description` AS `crime_description`,`criminal_history`.`crime_date` AS `crime_date`,`criminal_history`.`punishment` AS `punishment` from (`aadhar` left join `criminal_history` on((`aadhar`.`aadhar_number` = `criminal_history`.`aadhar_number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `constable_view`
--

/*!50001 DROP VIEW IF EXISTS `constable_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `constable_view` AS select `aadhar`.`aadhar_number` AS `aadhar_number`,`aadhar`.`name` AS `name`,`criminal_history`.`crime_description` AS `crime_description` from (`aadhar` left join `criminal_history` on((`aadhar`.`aadhar_number` = `criminal_history`.`aadhar_number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `incometax_clerk_view`
--

/*!50001 DROP VIEW IF EXISTS `incometax_clerk_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `incometax_clerk_view` AS select `aadhar`.`aadhar_number` AS `aadhar_number`,`aadhar`.`name` AS `name`,`aadhar`.`address` AS `address`,`pan`.`pan_number` AS `pan_number` from (`aadhar` left join `pan` on((`aadhar`.`aadhar_number` = `pan`.`aadhar_number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `incometax_commissioner_view`
--

/*!50001 DROP VIEW IF EXISTS `incometax_commissioner_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `incometax_commissioner_view` AS select `aadhar`.`aadhar_number` AS `aadhar_number`,`aadhar`.`name` AS `name`,`aadhar`.`dob` AS `dob`,`aadhar`.`gender` AS `gender`,`aadhar`.`address` AS `address`,`aadhar`.`phone_number` AS `phone_number`,`aadhar`.`email` AS `email`,`pan`.`pan_number` AS `pan_number`,`property`.`property_type` AS `property_type`,`property`.`location` AS `location`,`property`.`area_sq_ft` AS `area_sq_ft`,`property`.`purchase_date` AS `purchase_date`,`property`.`price` AS `price`,`bank_account`.`bank_name` AS `bank_name`,`bank_account`.`account_number` AS `account_number`,`bank_account`.`balance` AS `balance` from (((`aadhar` left join `pan` on((`aadhar`.`aadhar_number` = `pan`.`aadhar_number`))) left join `property` on((`aadhar`.`aadhar_number` = `property`.`aadhar_number`))) left join `bank_account` on((`aadhar`.`aadhar_number` = `bank_account`.`aadhar_number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `incometax_officer_view`
--

/*!50001 DROP VIEW IF EXISTS `incometax_officer_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `incometax_officer_view` AS select `aadhar`.`aadhar_number` AS `aadhar_number`,`aadhar`.`name` AS `name`,`aadhar`.`dob` AS `dob`,`aadhar`.`gender` AS `gender`,`aadhar`.`address` AS `address`,`pan`.`pan_number` AS `pan_number`,`bank_account`.`bank_name` AS `bank_name`,`bank_account`.`account_number` AS `account_number`,`bank_account`.`balance` AS `balance` from ((`aadhar` left join `pan` on((`aadhar`.`aadhar_number` = `pan`.`aadhar_number`))) left join `bank_account` on((`aadhar`.`aadhar_number` = `bank_account`.`aadhar_number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inspector_view`
--

/*!50001 DROP VIEW IF EXISTS `inspector_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inspector_view` AS select `aadhar`.`aadhar_number` AS `aadhar_number`,`aadhar`.`name` AS `name`,`aadhar`.`dob` AS `dob`,`aadhar`.`gender` AS `gender`,`aadhar`.`address` AS `address`,`criminal_history`.`crime_description` AS `crime_description`,`criminal_history`.`crime_date` AS `crime_date` from (`aadhar` left join `criminal_history` on((`aadhar`.`aadhar_number` = `criminal_history`.`aadhar_number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `passport_officer_commissioner_view`
--

/*!50001 DROP VIEW IF EXISTS `passport_officer_commissioner_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `passport_officer_commissioner_view` AS select `aadhar`.`aadhar_number` AS `aadhar_number`,`aadhar`.`name` AS `name`,`aadhar`.`dob` AS `dob`,`passport`.`passport_number` AS `passport_number`,`passport`.`issue_date` AS `issue_date`,`passport`.`expiry_date` AS `expiry_date`,`criminal_history`.`crime_description` AS `crime_description`,`criminal_history`.`crime_date` AS `crime_date` from ((`aadhar` left join `passport` on((`aadhar`.`aadhar_number` = `passport`.`aadhar_number`))) left join `criminal_history` on((`aadhar`.`aadhar_number` = `criminal_history`.`aadhar_number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `passport_officer_junior_view`
--

/*!50001 DROP VIEW IF EXISTS `passport_officer_junior_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `passport_officer_junior_view` AS select `aadhar`.`aadhar_number` AS `aadhar_number`,`aadhar`.`name` AS `name`,`passport`.`passport_number` AS `passport_number` from (`aadhar` left join `passport` on((`aadhar`.`aadhar_number` = `passport`.`aadhar_number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `passport_officer_senior_view`
--

/*!50001 DROP VIEW IF EXISTS `passport_officer_senior_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `passport_officer_senior_view` AS select `aadhar`.`aadhar_number` AS `aadhar_number`,`aadhar`.`name` AS `name`,`passport`.`passport_number` AS `passport_number`,`passport`.`issue_date` AS `issue_date`,`passport`.`expiry_date` AS `expiry_date`,`criminal_history`.`crime_description` AS `crime_description` from ((`aadhar` left join `passport` on((`aadhar`.`aadhar_number` = `passport`.`aadhar_number`))) left join `criminal_history` on((`aadhar`.`aadhar_number` = `criminal_history`.`aadhar_number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `traffic_police_commissioner_view`
--

/*!50001 DROP VIEW IF EXISTS `traffic_police_commissioner_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `traffic_police_commissioner_view` AS select `aadhar`.`aadhar_number` AS `aadhar_number`,`aadhar`.`name` AS `name`,`aadhar`.`dob` AS `dob`,`driving_license`.`license_number` AS `license_number`,`driving_license`.`license_class` AS `license_class`,`driving_license`.`expiry_date` AS `expiry_date`,`criminal_history`.`crime_description` AS `crime_description`,`criminal_history`.`crime_date` AS `crime_date`,`criminal_history`.`punishment` AS `punishment` from ((`aadhar` left join `driving_license` on((`aadhar`.`aadhar_number` = `driving_license`.`aadhar_number`))) left join `criminal_history` on((`aadhar`.`aadhar_number` = `criminal_history`.`aadhar_number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `traffic_police_constable_view`
--

/*!50001 DROP VIEW IF EXISTS `traffic_police_constable_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `traffic_police_constable_view` AS select `aadhar`.`aadhar_number` AS `aadhar_number`,`aadhar`.`name` AS `name`,`driving_license`.`license_number` AS `license_number`,`driving_license`.`license_class` AS `license_class` from (`aadhar` left join `driving_license` on((`aadhar`.`aadhar_number` = `driving_license`.`aadhar_number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `traffic_police_inspector_view`
--

/*!50001 DROP VIEW IF EXISTS `traffic_police_inspector_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `traffic_police_inspector_view` AS select `aadhar`.`aadhar_number` AS `aadhar_number`,`aadhar`.`name` AS `name`,`driving_license`.`license_number` AS `license_number`,`driving_license`.`license_class` AS `license_class`,`driving_license`.`expiry_date` AS `expiry_date`,`criminal_history`.`crime_description` AS `crime_description` from ((`aadhar` left join `driving_license` on((`aadhar`.`aadhar_number` = `driving_license`.`aadhar_number`))) left join `criminal_history` on((`aadhar`.`aadhar_number` = `criminal_history`.`aadhar_number`))) where (`criminal_history`.`crime_description` like '%Traffic%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-11 20:03:18
