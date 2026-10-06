-- MariaDB dump 10.19  Distrib 10.9.8-MariaDB, for Linux (x86_64)
--
-- Host: 10.200.208.126    Database: nricci0462_VicNicks_db_store
-- ------------------------------------------------------
-- Server version	10.4.33-MariaDB

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
-- Table structure for table `CHANNEL`
--

DROP TABLE IF EXISTS `CHANNEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CHANNEL` (
  `CHANNEL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CHANNEL_NAME` varchar(100) DEFAULT NULL,
  `CHANNEL_DESCRIPTION` varchar(255) DEFAULT NULL,
  `CHANNEL_TYPE` varchar(50) DEFAULT NULL,
  `CHANNEL_LOCATION` varchar(100) DEFAULT NULL,
  `CHANNEL_CONTACT_PERSON` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CHANNEL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHANNEL`
--

LOCK TABLES `CHANNEL` WRITE;
/*!40000 ALTER TABLE `CHANNEL` DISABLE KEYS */;
INSERT INTO `CHANNEL` VALUES
(1,'Online Store','E-commerce platform','Online','Internet','John Smith'),
(2,'Retail Store','Physical retail store','Brick and mortar','123 Main St','Jane Doe'),
(3,'Wholesale','Bulk sales to retailers','B2B','Warehouse Ave','Michael Johnson'),
(4,'Distributor','Distribution to retailers','B2B','Distribution Center','Emily Davis'),
(5,'Online Marketplace','Platform for various sellers','Online','Internet','David Brown'),
(6,'Pop-up Store','Temporary retail location','Brick and mortar','456 Oak St','Emma Garcia'),
(7,'Corporate Sales','Sales to businesses','B2B','Corporate Office Park','William Rodriguez'),
(8,'Specialty Store','Niche product retail store','Brick and mortar','789 Elm St','Sophia Martinez'),
(9,'Direct Sales','Selling directly to customers','B2C','Customer Homes','Olivia Wilson'),
(10,'International Distribution','Global distribution network','B2B','International Ports','Daniel Thompson');
/*!40000 ALTER TABLE `CHANNEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER` (
  `CUS_ID` int(11) NOT NULL,
  `CUS_FNAME` varchar(50) DEFAULT NULL,
  `CUS_LNAME` varchar(50) DEFAULT NULL,
  `CUS_INITIAL` char(1) DEFAULT NULL,
  `CUS_STATE` varchar(50) DEFAULT NULL,
  `CUS_PHONE` varchar(20) DEFAULT NULL,
  `CUS_ZIP` varchar(20) DEFAULT NULL,
  `CUS_BALANCE` decimal(10,2) DEFAULT NULL,
  `CUS_AREACODE` varchar(10) DEFAULT NULL,
  `CUS_EMAIL` varchar(100) DEFAULT NULL,
  `CUS_DATE_REGISTERED` date DEFAULT NULL,
  PRIMARY KEY (`CUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES
(1,'John','Doe','J','California','1234567890','90001',100.00,'123','john@example.com','2023-01-01'),
(2,'Jane','Smith','J','New York','9876543210','10001',150.00,'456','jane@example.com','2023-01-02'),
(3,'Alice','Johnson','A','Texas','1112223333','75001',200.00,'789','alice@example.com','2023-01-03'),
(4,'Bob','Brown','B','Florida','5556667777','33001',120.00,'012','bob@example.com','2023-01-04'),
(5,'Emily','Davis','E','Washington','9998887777','98001',180.00,'345','emily@example.com','2023-01-05'),
(6,'Michael','Wilson','M','Illinois','4443332222','60001',90.00,'678','michael@example.com','2023-01-06'),
(7,'Sarah','Martinez','S','Michigan','7778889999','48001',110.00,'901','sarah@example.com','2023-01-07'),
(8,'David','Taylor','D','Ohio','2223334444','43001',130.00,'234','david@example.com','2023-01-08'),
(9,'Jessica','Anderson','J','Colorado','6667778888','80001',140.00,'567','jessica@example.com','2023-01-09'),
(10,'Matthew','Thomas','M','Georgia','1112223333','30301',170.00,'890','matthew@example.com','2023-01-10'),
(11,'Mark','White','M','Virginia','7778889999','22001',150.00,'345','mark@example.com','2023-01-11'),
(12,'Laura','Harris','L','Oregon','8887776666','97001',160.00,'678','laura@example.com','2023-01-12'),
(13,'Chris','Clark','C','Arizona','9998887777','85001',140.00,'901','chris@example.com','2023-01-13'),
(14,'Amanda','Lewis','A','New Jersey','3332221111','07001',130.00,'234','amanda@example.com','2023-01-14'),
(15,'Daniel','Walker','D','Nevada','5554443333','89001',120.00,'567','daniel@example.com','2023-01-15'),
(16,'Ashley','Hall','A','Tennessee','6665554444','37001',110.00,'890','ashley@example.com','2023-01-16'),
(17,'Justin','Young','J','Alabama','7776665555','35001',200.00,'123','justin@example.com','2023-01-17'),
(18,'Brittany','Wright','B','Indiana','8887776666','46001',180.00,'456','brittany@example.com','2023-01-18'),
(19,'Andrew','King','A','Maryland','9998887777','21001',170.00,'789','andrew@example.com','2023-01-19'),
(20,'Melissa','Evans','M','Mississippi','1112223333','39001',150.00,'012','melissa@example.com','2023-01-20'),
(21,'Stephanie','Turner','S','Wisconsin','2223334444','53001',140.00,'345','stephanie@example.com','2023-01-21'),
(22,'Ryan','Parker','R','Kentucky','3334445555','40001',130.00,'678','ryan@example.com','2023-01-22'),
(23,'Nicole','Collins','N','Minnesota','4445556666','55001',120.00,'901','nicole@example.com','2023-01-23'),
(24,'Jacob','Edwards','J','Oklahoma','5556667777','73001',110.00,'234','jacob@example.com','2023-01-24'),
(25,'Heather','Stewart','H','Iowa','6667778888','50001',100.00,'567','heather@example.com','2023-01-25'),
(26,'Eric','Morris','E','Louisiana','7778889999','70001',190.00,'890','eric@example.com','2023-01-26'),
(27,'Samantha','Cook','S','Arkansas','8889990000','72001',180.00,'123','samantha@example.com','2023-01-27'),
(28,'Tyler','Morales','T','Washington','9990001111','98001',170.00,'456','tyler@example.com','2023-01-28'),
(29,'Rebecca','Bennett','R','Missouri','1234567890','63001',160.00,'789','rebecca@example.com','2023-01-29'),
(30,'Hannah','Rogers','H','Connecticut','2345678901','06001',150.00,'012','hannah@example.com','2023-01-30'),
(31,'Alexander','Reed','A','Oregon','3456789012','97001',140.00,'345','alexander@example.com','2023-01-31'),
(32,'Cassandra','Cook','C','Utah','4567890123','84001',130.00,'678','cassandra@example.com','2023-02-01'),
(33,'Gregory','Patterson','G','Nebraska','5678901234','68001',120.00,'901','gregory@example.com','2023-02-02'),
(34,'Lindsay','Rivera','L','Colorado','6789012345','80001',110.00,'234','lindsay@example.com','2023-02-03'),
(35,'Patrick','Long','P','Iowa','7890123456','50001',100.00,'567','patrick@example.com','2023-02-04'),
(36,'Courtney','Foster','C','Kansas','8901234567','66001',190.00,'890','courtney@example.com','2023-02-05'),
(37,'Monica','Sanders','M','Nevada','9012345678','89001',180.00,'123','monica@example.com','2023-02-06'),
(38,'Keith','May','K','Mississippi','2345678901','39001',170.00,'456','keith@example.com','2023-02-07'),
(39,'Holly','Barrera','H','Wisconsin','3456789012','53001',160.00,'789','holly@example.com','2023-02-08'),
(40,'Gina','Flores','G','West Virginia','4567890123','25001',150.00,'012','gina@example.com','2023-02-09'),
(41,'Kyle','Gonzalez','K','New Mexico','5678901234','87001',140.00,'345','kyle@example.com','2023-02-10'),
(42,'Brianna','Howard','B','Arizona','6789012345','85001',130.00,'678','brianna@example.com','2023-02-11'),
(43,'Dennis','Griffin','D','Michigan','7890123456','48001',120.00,'901','dennis@example.com','2023-02-12'),
(44,'Renee','Ray','R','New Hampshire','8901234567','03001',110.00,'234','renee@example.com','2023-02-13'),
(45,'Casey','Ramirez','C','South Carolina','9012345678','29001',100.00,'567','casey@example.com','2023-02-14'),
(46,'Sandra','Wood','S','South Dakota','1234567890','57001',190.00,'890','sandra@example.com','2023-02-15'),
(47,'Terry','Peterson','T','Rhode Island','2345678901','28001',180.00,'123','terry@example.com','2023-02-16'),
(48,'Cheryl','Ward','C','Ohio','3456789012','43001',170.00,'456','cheryl@example.com','2023-02-17'),
(49,'Vincent','Ross','V','Oklahoma','4567890123','73001',160.00,'789','vincent@example.com','2023-02-18'),
(50,'Megan','Cox','M','Maine','5678901234','04001',150.00,'012','megan@example.com','2023-02-19'),
(51,'Scott','Griffith','S','Massachusetts','6789012345','01001',140.00,'345','scott@example.com','2023-02-20'),
(52,'Cynthia','Schneider','C','Montana','7890123456','59001',130.00,'678','cynthia@example.com','2023-02-21'),
(53,'Jose','Estrada','J','Louisiana','8901234567','70001',120.00,'901','jose@example.com','2023-02-22'),
(54,'Catherine','Gonzalez','C','North Carolina','9012345678','27001',110.00,'234','catherine@example.com','2023-02-23'),
(55,'Joel','Hernandez','J','Vermont','1234567890','05001',100.00,'567','joel@example.com','2023-02-24'),
(56,'Pamela','Cruz','P','Virginia','2345678901','22001',190.00,'890','pamela@example.com','2023-02-25'),
(57,'Travis','Sullivan','T','Idaho','3456789012','83001',180.00,'123','travis@example.com','2023-02-26'),
(58,'Desiree','Wheeler','D','Alaska','4567890123','99501',170.00,'456','desiree@example.com','2023-02-27'),
(59,'Kathleen','Richards','K','New York','5678901234','10001',160.00,'789','kathleen@example.com','2023-02-28'),
(60,'Samantha','Riley','S','Texas','6789012345','75001',150.00,'012','samantha@example.com','2023-03-01'),
(61,'Rachel','Frazier','R','California','7890123456','90001',140.00,'345','rachel@example.com','2023-03-02'),
(62,'Marie','Mercado','M','New Jersey','8901234567','07001',130.00,'678','marie@example.com','2023-03-03'),
(63,'Tony','Castillo','T','Florida','9012345678','33001',120.00,'901','tony@example.com','2023-03-04'),
(64,'Diana','Harvey','D','Washington','1234567890','98001',110.00,'234','diana@example.com','2023-03-05'),
(65,'Ricky','Luna','R','Illinois','2345678901','60001',190.00,'567','ricky@example.com','2023-03-06'),
(66,'Michele','Bryant','M','Michigan','3456789012','48001',180.00,'890','michele@example.com','2023-03-07'),
(67,'Tiffany','Barnes','T','Ohio','4567890123','43001',170.00,'123','tiffany@example.com','2023-03-08'),
(68,'Hector','Mcdonald','H','Indiana','5678901234','46001',160.00,'456','hector@example.com','2023-03-09'),
(69,'Julie','Stevens','J','Maryland','6789012345','21001',150.00,'789','julie@example.com','2023-03-10'),
(70,'Jared','Pierce','J','Mississippi','7890123456','39001',140.00,'012','jared@example.com','2023-03-11'),
(71,'Rita','Arnold','R','Wisconsin','8901234567','53001',130.00,'345','rita@example.com','2023-03-12'),
(72,'Bradley','Tran','B','Kentucky','9012345678','40001',120.00,'678','bradley@example.com','2023-03-13'),
(73,'Vanessa','Gregory','V','Minnesota','1234567890','55001',110.00,'901','vanessa@example.com','2023-03-14'),
(74,'Jasmine','George','J','Oklahoma','2345678901','73001',100.00,'234','jasmine@example.com','2023-03-15'),
(75,'Brenda','Mills','B','Iowa','3456789012','50001',190.00,'567','brenda@example.com','2023-03-16'),
(76,'Gabriel','Lopez','G','Louisiana','4567890123','70001',180.00,'890','gabriel@example.com','2023-03-17'),
(77,'April','Murray','A','Arkansas','5678901234','72001',170.00,'123','april@example.com','2023-03-18'),
(78,'Brett','Gardner','B','Washington','6789012345','98001',160.00,'456','brett@example.com','2023-03-19'),
(79,'Shannon','Ferguson','S','Missouri','7890123456','63001',150.00,'789','shannon@example.com','2023-03-20'),
(80,'Frank','Spencer','F','Connecticut','8901234567','06001',140.00,'012','frank@example.com','2023-03-21'),
(81,'Natalie','Ortiz','N','Oregon','9012345678','97001',130.00,'345','natalie@example.com','2023-03-22'),
(82,'Jeremiah','Garza','J','Utah','1234567890','84001',120.00,'678','jeremiah@example.com','2023-03-23'),
(83,'Evelyn','Brewer','E','Nebraska','2345678901','68001',110.00,'901','evelyn@example.com','2023-03-24'),
(84,'Corey','Hoffman','C','Colorado','3456789012','80001',100.00,'234','corey@example.com','2023-03-25'),
(85,'Leah','Carlson','L','Iowa','4567890123','50001',190.00,'567','leah@example.com','2023-03-26'),
(86,'Katie','Silva','K','Kansas','5678901234','66001',180.00,'890','katie@example.com','2023-03-27'),
(87,'Mario','Pearson','M','Nevada','6789012345','89001',170.00,'123','mario@example.com','2023-03-28'),
(88,'Courtney','Craig','C','Mississippi','7890123456','39001',160.00,'456','courtney@example.com','2023-03-29'),
(89,'Angel','Moran','A','New Hampshire','8901234567','03001',150.00,'789','angel@example.com','2023-03-30'),
(90,'Luis','Patrick','L','South Carolina','9012345678','29001',140.00,'012','luis@example.com','2023-03-31'),
(91,'Barbara','Wilson','B','South Dakota','1234567890','57001',130.00,'345','barbara@example.com','2023-04-01'),
(92,'Crystal','Perez','C','Rhode Island','2345678901','28001',120.00,'678','crystal@example.com','2023-04-02'),
(93,'Jesse','Rogers','J','Ohio','3456789012','43001',110.00,'901','jesse@example.com','2023-04-03'),
(94,'Tamara','Peterson','T','Oklahoma','4567890123','73001',100.00,'234','tamara@example.com','2023-04-04'),
(95,'Diane','Butler','D','Maine','5678901234','04001',190.00,'567','diane@example.com','2023-04-05'),
(96,'Martha','Banks','M','Massachusetts','6789012345','01001',180.00,'890','martha@example.com','2023-04-06'),
(97,'Linda','Curtis','L','Montana','7890123456','59001',170.00,'123','linda@example.com','2023-04-07'),
(98,'Emily','Fleming','E','Louisiana','8901234567','70001',160.00,'456','emily@example.com','2023-04-08'),
(99,'Raymond','Curtis','R','North Carolina','9012345678','27001',150.00,'789','raymond@example.com','2023-04-09'),
(100,'Raul','Howard','R','Vermont','1234567890','05001',140.00,'012','raul@example.com','2023-04-10');
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEPARTMENT`
--

DROP TABLE IF EXISTS `DEPARTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEPARTMENT` (
  `DEPARTMENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEPARTMENT_NAME` varchar(100) DEFAULT NULL,
  `DEPARTMENT_DESCRIPTION` text DEFAULT NULL,
  `DEPARTMENT_LOCATION` varchar(100) DEFAULT NULL,
  `DEPARTMENT_CONTACT_PERSON` varchar(100) DEFAULT NULL,
  `MANAGER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`DEPARTMENT_ID`),
  KEY `MANAGER_ID` (`MANAGER_ID`),
  CONSTRAINT `FK_DEPARTMENT_MANAGER_EMPLOYEE_ID` FOREIGN KEY (`MANAGER_ID`) REFERENCES `EMPLOYEE` (`EMP_NUM`),
  CONSTRAINT `FK_DEPARTMENT_MANAGER_ID` FOREIGN KEY (`MANAGER_ID`) REFERENCES `EMPLOYEE` (`EMP_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPARTMENT`
--

LOCK TABLES `DEPARTMENT` WRITE;
/*!40000 ALTER TABLE `DEPARTMENT` DISABLE KEYS */;
INSERT INTO `DEPARTMENT` VALUES
(1,'Sales','Responsible for sales activities','Sales Department','Sales Manager',1),
(2,'Marketing','Responsible for marketing activities','Marketing Department','Marketing Manager',2),
(3,'Finance','Responsible for financial activities','Finance Department','Finance Manager',3),
(4,'Human Resources','Responsible for HR activities','HR Department','HR Manager',4),
(5,'Operations','Responsible for operational activities','Operations Department','Operations Manager',5),
(6,'Customer Service','Responsible for customer service activities','Customer Service Department','Customer Service Manager',6),
(7,'Research and Development','Responsible for research and development activities','R&D Department','R&D Manager',7),
(8,'Information Technology','Responsible for IT activities','IT Department','IT Manager',8),
(9,'Quality Assurance','Responsible for quality control activities','QA Department','QA Manager',9),
(10,'Purchasing','Responsible for procurement activities','Purchasing Department','Purchasing Manager',10);
/*!40000 ALTER TABLE `DEPARTMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `EMPINQ1`
--

DROP TABLE IF EXISTS `EMPINQ1`;
/*!50001 DROP VIEW IF EXISTS `EMPINQ1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `EMPINQ1` AS SELECT
 1 AS `EMP_NUM`,
  1 AS `EMP_FNAME`,
  1 AS `EMP_LNAME`,
  1 AS `DEPARTMENT_NAME` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEE` (
  `EMP_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `EMP_FNAME` varchar(50) DEFAULT NULL,
  `EMP_LNAME` varchar(50) DEFAULT NULL,
  `EMP_INITIAL` char(1) DEFAULT NULL,
  `EMP_PHONE` varchar(20) DEFAULT NULL,
  `EMP_EMAIL` varchar(100) DEFAULT NULL,
  `EMP_DATE_HIRED` date DEFAULT NULL,
  `JOB_CODE` int(11) DEFAULT NULL,
  `DEPARTMENT_ID` int(11) DEFAULT NULL,
  `IS_MANAGER` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`EMP_NUM`),
  KEY `JOB_CODE` (`JOB_CODE`),
  KEY `EMPLOYEE_ibfk_2` (`DEPARTMENT_ID`),
  CONSTRAINT `EMPLOYEE_ibfk_1` FOREIGN KEY (`JOB_CODE`) REFERENCES `JOB` (`JOB_CODE`),
  CONSTRAINT `EMPLOYEE_ibfk_2` FOREIGN KEY (`DEPARTMENT_ID`) REFERENCES `DEPARTMENT` (`DEPARTMENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
INSERT INTO `EMPLOYEE` VALUES
(1,'John','Doe','J','123-456-7890','john.doe@example.com','2023-01-15',1,1,0),
(2,'Jane','Smith','S','234-567-8901','jane.smith@example.com','2023-02-20',2,2,0),
(3,'Michael','Johnson','M','345-678-9012','michael.johnson@example.com','2023-03-25',3,3,0),
(4,'Emily','Davis','E','456-789-0123','emily.davis@example.com','2023-04-30',4,4,0),
(5,'David','Brown','D','567-890-1234','david.brown@example.com','2023-05-05',5,5,0),
(6,'Nick','Johnson','N','111-222-3336','nick@example.com','2023-06-15',6,6,0),
(7,'Victor','Smithson','V','222-333-4447','victor@example.com','2023-07-20',7,7,0),
(8,'Sammy','Anderson','S','333-444-5558','sammy@example.com','2023-08-25',8,8,0),
(9,'Jack','Miller','J','444-555-6669','jack@example.com','2023-09-30',9,9,0),
(10,'Paul','Williams','P','555-666-7770','paul@example.com','2023-10-05',10,10,0);
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVENTORY`
--

DROP TABLE IF EXISTS `INVENTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVENTORY` (
  `INV_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ITEM_NAME` varchar(255) DEFAULT NULL,
  `CATEGORY` varchar(255) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`INV_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVENTORY`
--

LOCK TABLES `INVENTORY` WRITE;
/*!40000 ALTER TABLE `INVENTORY` DISABLE KEYS */;
INSERT INTO `INVENTORY` VALUES
(1,'Laptop','Laptops',50,999.99),
(2,'Desktop Computer','Computers',30,799.99),
(3,'Tablet','Tablets',20,499.99),
(4,'Smartphone','Phones',40,699.99),
(5,'Smartwatch','Watches',60,249.99),
(6,'Headphones','Headphones',70,149.99),
(7,'Wireless Earbuds','Headphones',80,99.99),
(8,'Gaming Console','Gaming Consoles',90,399.99),
(9,'VR Headset','Virtual Reality',100,299.99),
(10,'Action Camera','Cameras',110,199.99),
(11,'Wireless Router','Networking',120,79.99),
(12,'Wireless Mouse','Accessories',130,29.99),
(13,'Mechanical Keyboard','Accessories',140,99.99),
(14,'External Hard Drive','Storage',150,129.99),
(15,'USB Flash Drive','Storage',160,19.99),
(16,'Wireless Speaker','Speakers',170,149.99),
(17,'Smart Home Hub','Smart Home',180,199.99),
(18,'Monitor','Monitors',190,249.99),
(19,'Printer','Printers',200,199.99),
(20,'Graphics Card','Computer Components',210,399.99),
(21,'SSD','Computer Components',220,149.99),
(22,'RAM','Computer Components',230,79.99),
(23,'CPU Cooler','Computer Components',240,69.99),
(24,'Webcam','Accessories',250,79.99),
(25,'Microphone','Accessories',260,99.99),
(26,'USB-C Adapter','Accessories',270,19.99),
(27,'Wireless Charging Pad','Accessories',280,39.99),
(28,'Power Bank','Accessories',290,49.99),
(29,'Cable Management Kit','Accessories',300,14.99),
(30,'Screen Cleaner','Accessories',310,9.99),
(31,'Laptop Bag','Accessories',320,29.99),
(32,'Gaming Mouse','Gaming Accessories',330,59.99),
(33,'Gaming Keyboard','Gaming Accessories',340,79.99),
(34,'Gaming Headset','Gaming Accessories',350,99.99),
(35,'Gaming Chair','Gaming Accessories',360,199.99),
(36,'Mechanical Gaming Keypad','Gaming Accessories',370,49.99),
(37,'Capture Card','Streaming Equipment',380,149.99),
(38,'LED Light Strip','Lighting',390,29.99),
(39,'WiFi Range Extender','Networking',400,49.99),
(40,'Wireless Keyboard','Accessories',410,39.99),
(41,'Wireless Gaming Controller','Gaming Accessories',420,69.99),
(42,'Smart Light Bulbs','Smart Home',430,19.99),
(43,'Bluetooth Adapter','Accessories',440,9.99),
(44,'USB Hub','Accessories',450,19.99),
(45,'Wireless Adapter','Accessories',460,29.99),
(46,'Mechanical Keypad','Accessories',470,39.99),
(47,'RGB LED Strip','Lighting',480,39.99),
(48,'Gaming Desk','Furniture',490,149.99),
(49,'Adjustable Monitor Stand','Monitors',500,29.99),
(50,'Monitor Arm','Monitors',510,39.99),
(51,'External SSD','Storage',520,199.99),
(52,'Network Attached Storage','Storage',530,299.99),
(53,'Portable Projector','Projectors',540,149.99),
(54,'TV Wall Mount','TV Accessories',550,19.99),
(55,'Cable Organizer Box','Accessories',560,19.99),
(56,'USB Microphone','Accessories',570,79.99),
(57,'Wireless Presenter','Presentation Accessories',580,29.99),
(58,'Wireless Barcode Scanner','Accessories',590,99.99),
(59,'USB-C Docking Station','Accessories',600,149.99),
(60,'Portable Bluetooth Speaker','Speakers',610,79.99),
(61,'Bluetooth Headphones','Headphones',620,99.99),
(62,'Bluetooth Transmitter','Accessories',630,29.99),
(63,'Wireless Gaming Mouse','Gaming Accessories',640,69.99),
(64,'Wireless Gaming Keyboard','Gaming Accessories',650,89.99),
(65,'Wireless Gaming Headset','Gaming Accessories',660,109.99),
(66,'Wireless Gaming Controller','Gaming Accessories',670,69.99),
(67,'Wireless Charging Dock','Accessories',680,49.99),
(68,'RGB Gaming Mousepad','Gaming Accessories',690,29.99),
(69,'RGB Mechanical Keyboard','Gaming Accessories',700,119.99),
(70,'RGB Gaming Headset Stand','Gaming Accessories',710,39.99),
(71,'USB Gaming Foot Pedal','Gaming Accessories',720,19.99),
(72,'USB-C Gaming Monitor','Monitors',730,299.99),
(73,'USB-C Gaming Keyboard','Gaming Accessories',740,79.99),
(74,'USB-C Gaming Mouse','Gaming Accessories',750,59.99),
(75,'USB-C Gaming Headset','Gaming Accessories',760,89.99),
(76,'USB-C Gaming Controller','Gaming Accessories',770,69.99),
(77,'USB-C Gaming Laptop Cooling Pad','Gaming Accessories',780,29.99),
(78,'USB-C Gaming Mousepad','Gaming Accessories',790,29.99),
(79,'USB-C Gaming Headset Stand','Gaming Accessories',800,39.99),
(80,'USB-C Gaming Desk','Gaming Accessories',810,149.99),
(81,'USB-C Gaming Monitor Stand','Monitors',820,49.99),
(82,'USB-C Gaming Webcam','Cameras',830,99.99),
(83,'USB-C Gaming Microphone','Accessories',840,99.99),
(84,'USB-C Gaming Speaker','Speakers',850,129.99),
(85,'USB-C Gaming Keyboard Wrist Rest','Gaming Accessories',860,19.99),
(86,'USB-C Gaming Mouse Wrist Rest','Gaming Accessories',870,14.99),
(87,'USB-C Gaming Chair','Gaming Accessories',880,199.99),
(88,'USB-C Gaming Foot Rest','Gaming Accessories',890,49.99),
(89,'USB-C Gaming Hand Warmer','Gaming Accessories',900,19.99),
(90,'USB-C Gaming Desk Mat','Gaming Accessories',910,24.99),
(91,'USB-C Gaming Table','Gaming Accessories',920,149.99),
(92,'USB-C Gaming LED Light Strip','Lighting',930,19.99),
(93,'USB-C Gaming RGB LED Strip','Lighting',940,29.99),
(94,'USB-C Gaming RGB LED Bulbs','Lighting',950,39.99),
(95,'USB-C Gaming RGB LED Lamp','Lighting',960,49.99),
(96,'USB-C Gaming RGB LED Desk Lamp','Lighting',970,59.99),
(97,'USB-C Gaming RGB LED Floor Lamp','Lighting',980,69.99),
(98,'USB-C Gaming RGB LED Ceiling Light','Lighting',990,79.99),
(99,'USB-C Gaming RGB LED Wall Light','Lighting',1000,89.99),
(100,'USB-C Gaming RGB LED Spotlight','Lighting',1010,99.99);
/*!40000 ALTER TABLE `INVENTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVOICE`
--

DROP TABLE IF EXISTS `INVOICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVOICE` (
  `INV_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `CUS_ID` int(11) DEFAULT NULL,
  `INV_DATE` date DEFAULT NULL,
  `INV_STATUS` varchar(50) DEFAULT NULL,
  `INV_PAYTYPE` varchar(50) DEFAULT NULL,
  `INV_TOTAL_AMOUNT` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`INV_NUM`),
  KEY `CUS_ID` (`CUS_ID`),
  CONSTRAINT `INVOICE_ibfk_1` FOREIGN KEY (`CUS_ID`) REFERENCES `CUSTOMER` (`CUS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVOICE`
--

LOCK TABLES `INVOICE` WRITE;
/*!40000 ALTER TABLE `INVOICE` DISABLE KEYS */;
INSERT INTO `INVOICE` VALUES
(1,1,'2024-03-01','Pending','Credit Card',1999.99),
(2,2,'2024-03-02','Paid','Cash',999.99),
(3,3,'2024-03-03','Paid','Credit Card',899.99),
(4,4,'2024-03-04','Pending','Cash',1499.99),
(5,5,'2024-03-05','Pending','Credit Card',599.99),
(6,6,'2024-03-06','Paid','Cash',1299.99),
(7,7,'2024-03-07','Pending','Credit Card',899.99),
(8,8,'2024-03-08','Paid','Credit Card',1599.99),
(9,9,'2024-03-09','Pending','Cash',749.99),
(10,10,'2024-03-10','Paid','Credit Card',1199.99),
(11,11,'2024-04-01','Pending','Credit Card',1299.99);
/*!40000 ALTER TABLE `INVOICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVOICE_HISTORY`
--

DROP TABLE IF EXISTS `INVOICE_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVOICE_HISTORY` (
  `HISTORY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INV_NUM` int(11) DEFAULT NULL,
  `HISTORY_DATE` date DEFAULT NULL,
  `HISTORY_ACTION` varchar(100) DEFAULT NULL,
  `HISTORY_DESCRIPTION` text DEFAULT NULL,
  `HISTORY_EMPLOYEE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`HISTORY_ID`),
  KEY `INV_NUM` (`INV_NUM`),
  KEY `HISTORY_EMPLOYEE_ID` (`HISTORY_EMPLOYEE_ID`),
  CONSTRAINT `INVOICE_HISTORY_ibfk_1` FOREIGN KEY (`INV_NUM`) REFERENCES `INVOICE` (`INV_NUM`),
  CONSTRAINT `INVOICE_HISTORY_ibfk_2` FOREIGN KEY (`HISTORY_EMPLOYEE_ID`) REFERENCES `EMPLOYEE` (`EMP_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVOICE_HISTORY`
--

LOCK TABLES `INVOICE_HISTORY` WRITE;
/*!40000 ALTER TABLE `INVOICE_HISTORY` DISABLE KEYS */;
INSERT INTO `INVOICE_HISTORY` VALUES
(1,1,'2024-03-01','Pending','Invoice pending approval',1),
(2,2,'2024-03-02','Paid','Invoice paid successfully',2),
(3,3,'2024-03-03','Paid','Invoice paid successfully',3),
(4,4,'2024-03-04','Pending','Invoice pending approval',4),
(5,5,'2024-03-05','Pending','Invoice pending approval',5),
(6,6,'2024-03-06','Paid','Invoice paid successfully',6),
(7,7,'2024-03-07','Pending','Invoice pending approval',7),
(8,8,'2024-03-08','Paid','Invoice paid successfully',8),
(9,9,'2024-03-09','Pending','Invoice pending approval',9),
(10,10,'2024-03-10','Paid','Invoice paid successfully',10);
/*!40000 ALTER TABLE `INVOICE_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JOB`
--

DROP TABLE IF EXISTS `JOB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JOB` (
  `JOB_CODE` int(11) NOT NULL AUTO_INCREMENT,
  `JOB_DESCRIPTION` text DEFAULT NULL,
  `JOB_CHG_HOUR` decimal(10,2) DEFAULT NULL,
  `JOB_CONTRACT_TYPE` varchar(100) DEFAULT NULL,
  `JOB_SKILL_REQUIREMENTS` text DEFAULT NULL,
  `JOB_EDUCATION_REQUIREMENTS` text DEFAULT NULL,
  PRIMARY KEY (`JOB_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JOB`
--

LOCK TABLES `JOB` WRITE;
/*!40000 ALTER TABLE `JOB` DISABLE KEYS */;
INSERT INTO `JOB` VALUES
(1,'Sales',20.00,'Full-time','Excellent communication and negotiation skills, knowledge of sales techniques, customer-oriented mindset','High school diploma or equivalent'),
(2,'Marketing',25.00,'Full-time','Creativity, analytical skills, strong understanding of marketing principles and techniques','Bachelor degree in Marketing or related field'),
(3,'Finance',30.00,'Full-time','Strong analytical skills, attention to detail, proficiency in financial analysis and reporting','Bachelor degree in Finance, Accounting, or related field'),
(4,'Human Resources',22.00,'Full-time','Interpersonal skills, ability to handle confidential information, knowledge of employment laws and regulations','Bachelor degree in Human Resources Management or related field'),
(5,'Operations',35.00,'Full-time','Leadership skills, problem-solving abilities, strong organizational skills','Bachelor degree in Business Administration or related field'),
(6,'Customer Service',25.00,'Full-time','Effective communication skills, patience, ability to handle difficult situations','High school diploma or equivalent'),
(7,'Research and Development',40.00,'Full-time','Research and development skills, innovation, technical expertise','Bachelor degree in Engineering, Science, or related field'),
(8,'Information Technology',28.00,'Full-time','Technical skills, problem-solving abilities, attention to detail','Associate degree in Information Technology or related field'),
(9,'Quality Assurance',35.00,'Full-time','Attention to detail, ability to analyze processes and procedures, knowledge of quality management systems','Bachelor degree in Quality Management or related field'),
(10,'Purchasing',30.00,'Full-time','Negotiation skills, attention to detail, analytical abilities','Bachelor degree in Business Administration, Supply Chain Management, or related field');
/*!40000 ALTER TABLE `JOB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LINE`
--

DROP TABLE IF EXISTS `LINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LINE` (
  `INV_NUM` int(11) NOT NULL,
  `LINE_NUM` int(11) NOT NULL,
  `PRODUCT_ID` int(11) DEFAULT NULL,
  `LINE_UNITS` int(11) DEFAULT NULL,
  `LINE_PRICE` decimal(10,2) DEFAULT NULL,
  `LINE_TOTAL_PRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`INV_NUM`,`LINE_NUM`),
  KEY `PRODUCT_ID` (`PRODUCT_ID`),
  CONSTRAINT `LINE_ibfk_1` FOREIGN KEY (`INV_NUM`) REFERENCES `INVOICE` (`INV_NUM`),
  CONSTRAINT `LINE_ibfk_2` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `PRODUCT` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LINE`
--

LOCK TABLES `LINE` WRITE;
/*!40000 ALTER TABLE `LINE` DISABLE KEYS */;
INSERT INTO `LINE` VALUES
(1,1,1,2,49.99,99.98),
(2,2,2,3,29.99,89.97),
(3,3,3,1,99.99,99.99),
(4,4,4,4,19.99,79.96),
(5,5,5,2,79.99,159.98),
(6,6,6,3,69.99,209.97),
(7,7,7,1,149.99,149.99),
(8,8,8,2,39.99,79.98),
(9,9,9,4,89.99,359.96),
(10,10,10,2,59.99,119.98);
/*!40000 ALTER TABLE `LINE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MANAGER`
--

DROP TABLE IF EXISTS `MANAGER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MANAGER` (
  `MANAGER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MANAGER_FNAME` varchar(50) DEFAULT NULL,
  `MANAGER_LNAME` varchar(50) DEFAULT NULL,
  `MANAGER_PHONE` varchar(20) DEFAULT NULL,
  `MANAGER_EMAIL` varchar(100) DEFAULT NULL,
  `MANAGER_DATE_HIRED` date DEFAULT NULL,
  PRIMARY KEY (`MANAGER_ID`),
  CONSTRAINT `FK_MANAGER_EMPLOYEE_ID` FOREIGN KEY (`MANAGER_ID`) REFERENCES `EMPLOYEE` (`EMP_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MANAGER`
--

LOCK TABLES `MANAGER` WRITE;
/*!40000 ALTER TABLE `MANAGER` DISABLE KEYS */;
INSERT INTO `MANAGER` VALUES
(1,'Adam','Johnson','111-222-3336','adamjohnson@example.com','2022-01-02'),
(2,'Eve','Smith','222-333-4447','evesmith@example.com','2022-01-03'),
(3,'Daniel','Williams','333-444-5558','danielwilliams@example.com','2022-01-04'),
(4,'Sophia','Brown','444-555-6669','sophiabrown@example.com','2022-01-05'),
(5,'Matthew','Davis','555-666-7770','matthewdavis@example.com','2022-01-06'),
(6,'Olivia','Martinez','666-777-8881','oliviamartinez@example.com','2022-01-07'),
(7,'Lucas','Anderson','777-888-9992','lucasanderson@example.com','2022-01-08'),
(8,'Amelia','Taylor','888-999-0003','ameliataylor@example.com','2022-01-09'),
(9,'Benjamin','Thomas','999-000-1114','benjaminthomas@example.com','2022-01-10'),
(10,'Ava','Harris','000-111-2225','avaharris@example.com','2022-01-11');
/*!40000 ALTER TABLE `MANAGER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT` (
  `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_NAME` varchar(255) NOT NULL,
  `PRODUCT_DESCRIPTION` text DEFAULT NULL,
  `PRODUCT_CATEGORY` varchar(50) DEFAULT NULL,
  `PRODUCT_PRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
INSERT INTO `PRODUCT` VALUES
(1,'MacBook Pro','Powerful laptop for professionals','Laptops',1999.99),
(2,'iPhone 13','Latest smartphone from Apple','Phones',999.99),
(3,'Samsung Galaxy S21','Flagship smartphone from Samsung','Phones',899.99),
(4,'Dell XPS 13','Thin and light laptop with high performance','Laptops',1499.99),
(5,'iPad Air','Thin and powerful tablet from Apple','Tablets',599.99),
(6,'Microsoft Surface Laptop 4','Sleek and powerful laptop from Microsoft','Laptops',1299.99),
(7,'Google Pixel 6','Feature-packed smartphone from Google','Phones',799.99),
(8,'HP Spectre x360','Convertible laptop with stunning design','Laptops',1399.99),
(9,'Lenovo ThinkPad X1 Carbon','Business-class laptop with durable build','Laptops',1299.99),
(10,'OnePlus 9 Pro','High-performance smartphone from OnePlus','Phones',899.99),
(11,'Asus ROG Zephyrus G14','Gaming laptop with powerful hardware','Laptops',1499.99),
(12,'LG Gram 17','Ultra-lightweight laptop with long battery life','Laptops',1499.99),
(13,'Sony Xperia 1 III','Premium smartphone with professional camera features','Phones',1099.99),
(14,'Acer Predator Helios 300','Gaming laptop with high refresh rate display','Laptops',1199.99),
(15,'Motorola Edge 20','Sleek smartphone with edge-to-edge display','Phones',699.99),
(16,'Razer Blade 15','Gaming laptop with customizable RGB lighting','Laptops',1799.99),
(17,'Xiaomi Mi 11','Feature-packed smartphone with affordable price','Phones',699.99),
(18,'Alienware m15 R6','High-performance gaming laptop from Alienware','Laptops',1999.99),
(19,'Nokia 8.3 5G','5G smartphone with PureDisplay technology','Phones',599.99),
(20,'HP Envy x360','Convertible laptop with powerful AMD Ryzen processor','Laptops',899.99),
(21,'BlackBerry KEY2','Android smartphone with iconic physical keyboard','Phones',499.99),
(22,'Microsoft Surface Pro 7','Versatile tablet with laptop-class performance','Tablets',799.99),
(23,'Google Pixelbook Go','Ultra-portable Chromebook with long battery life','Laptops',649.99),
(24,'Samsung Galaxy Tab S7','Premium Android tablet with S Pen included','Tablets',649.99),
(25,'Asus ZenBook 14','Thin and light laptop with ScreenPad 2.0','Laptops',999.99),
(26,'iPhone SE','Compact yet powerful smartphone from Apple','Phones',399.99),
(27,'Dell Inspiron 15','Affordable laptop with reliable performance','Laptops',599.99),
(28,'iPad Mini','Compact tablet for entertainment and productivity','Tablets',399.99),
(29,'OnePlus Nord 2','Mid-range smartphone with flagship features','Phones',499.99),
(30,'Lenovo Yoga C940','Convertible laptop with Dolby Atmos sound','Laptops',1199.99),
(31,'Sony Xperia 5 III','Compact smartphone with professional-grade camera','Phones',999.99),
(32,'LG Gram 14 2-in-1','Versatile 2-in-1 laptop with long battery life','Laptops',1299.99),
(33,'Google Pixel 5a','Affordable yet feature-packed smartphone','Phones',449.99),
(34,'Microsoft Surface Go 2','Portable and affordable Surface tablet','Tablets',399.99),
(35,'Samsung Galaxy Tab A7','Budget-friendly Android tablet with large display','Tablets',229.99),
(36,'Asus Chromebook Flip','Convertible Chromebook for work and play','Laptops',549.99),
(37,'Motorola Moto G Power','Long-lasting battery life smartphone','Phones',249.99),
(38,'Acer Chromebook Spin 713','Powerful Chromebook with 2K display','Laptops',629.99),
(39,'Nokia G50','Affordable 5G smartphone with large display','Phones',299.99),
(40,'HP Chromebook 14','Sleek and affordable Chromebook for everyday use','Laptops',329.99),
(41,'BlackBerry Evolve','Secure and durable smartphone with long battery life','Phones',499.99),
(42,'Lenovo Tab M10','Family-friendly Android tablet for entertainment','Tablets',199.99),
(43,'Sony Xperia 10 III','Mid-range smartphone with OLED display','Phones',499.99),
(44,'LG G8X ThinQ','Dual-screen smartphone for multitasking','Phones',399.99),
(45,'Google Pixelbook','Premium Chromebook with high-resolution display','Laptops',999.99),
(46,'Samsung Galaxy Tab S6 Lite','Affordable Android tablet with S Pen','Tablets',349.99),
(47,'Asus ROG Strix G15','Gaming laptop with high-refresh-rate display','Laptops',1199.99),
(48,'Motorola Moto G Stylus','Smartphone with built-in stylus for creative tasks','Phones',299.99),
(49,'Acer Aspire 5','Budget-friendly laptop with Full HD display','Laptops',549.99),
(50,'Nokia 5.4','Mid-range smartphone with advanced camera features','Phones',249.99),
(51,'HP Pavilion x360','Convertible laptop with touchscreen display','Laptops',699.99),
(52,'BlackBerry KeyOne','Android smartphone with physical keyboard','Phones',349.99),
(53,'Lenovo Tab P11','Versatile Android tablet for work and entertainment','Tablets',229.99),
(54,'Sony Xperia L4','Budget-friendly smartphone with triple camera','Phones',199.99),
(55,'LG Velvet','Sleek smartphone with 5G connectivity','Phones',499.99),
(56,'Google Pixel Slate','High-performance tablet with Chrome OS','Tablets',799.99),
(57,'Samsung Galaxy Tab S5e','Ultra-slim and lightweight Android tablet','Tablets',399.99),
(58,'Asus VivoBook 15','Affordable laptop with NanoEdge display','Laptops',499.99),
(59,'Motorola Moto E','Budget-friendly smartphone with long battery life','Phones',149.99),
(60,'Acer Spin 5','Versatile 2-in-1 laptop with stylus included','Laptops',899.99),
(61,'Nokia 3.4','Budget-friendly smartphone with AI imaging','Phones',179.99),
(62,'HP Stream 14','Affordable Windows laptop for basic tasks','Laptops',249.99),
(63,'BlackBerry Motion','Durable smartphone with long battery life','Phones',299.99),
(64,'Lenovo Chromebook Duet','Detachable Chromebook with keyboard included','Tablets',279.99),
(65,'Sony Xperia XA1','Mid-range smartphone with borderless display','Phones',249.99),
(66,'LG K92 5G','Affordable 5G smartphone with quad-camera setup','Phones',349.99),
(67,'Google Pixelbook Go i5','Lightweight Chromebook with long battery life','Laptops',649.99),
(68,'Samsung Galaxy Tab A 8.0','Compact Android tablet for entertainment','Tablets',149.99),
(69,'Asus ZenPad 3S 10','Premium Android tablet with stunning display','Tablets',299.99),
(70,'Acer Nitro 5','Gaming laptop with NVIDIA GeForce GTX graphics','Laptops',699.99),
(71,'Motorola Moto G Play','Budget-friendly smartphone for everyday use','Phones',169.99),
(72,'Nokia 2.4','Affordable smartphone with AI imaging','Phones',139.99),
(73,'HP Elite Dragonfly','Ultra-light convertible laptop for business users','Laptops',1899.99),
(74,'BlackBerry Priv','Android smartphone with slide-out keyboard','Phones',399.99),
(75,'Lenovo Tab M8','Affordable Android tablet for multimedia','Tablets',99.99),
(76,'Sony Xperia XZ1','Flagship smartphone with Motion Eye camera','Phones',399.99),
(77,'LG G7 ThinQ','Feature-packed smartphone with Boombox Speaker','Phones',299.99),
(78,'Google Pixel 4a','Compact and affordable smartphone with great camera','Phones',349.99),
(79,'Samsung Galaxy Tab Active 3','Rugged tablet for field work and outdoor use','Tablets',499.99),
(80,'Asus Chromebook C202','Durable Chromebook designed for education','Laptops',299.99),
(81,'Motorola Moto E6','Budget-friendly smartphone with all-day battery','Phones',149.99),
(82,'Nokia 1.4','Affordable smartphone with large HD+ display','Phones',99.99),
(83,'HP Chromebook 11','Compact and affordable Chromebook for students','Laptops',199.99),
(84,'BlackBerry DTEK50','Secure Android smartphone with BlackBerry Security','Phones',199.99),
(85,'Lenovo Tab M7','Budget-friendly Android tablet for kids','Tablets',69.99),
(86,'Sony Xperia X Compact','Compact smartphone with high-resolution camera','Phones',299.99),
(87,'LG Q7+','Mid-range smartphone with IP68 water and dust resistance','Phones',249.99),
(88,'Google Pixel 3','Flagship smartphone with top-rated camera','Phones',799.99),
(89,'Samsung Galaxy Tab S4','Premium Android tablet with S Pen included','Tablets',549.99),
(90,'Asus VivoBook S15','Slim and stylish laptop with NanoEdge display','Laptops',699.99),
(91,'Motorola Moto Z3','Modular smartphone with Moto Mods support','Phones',399.99),
(92,'Nokia 7.2','Mid-range smartphone with Zeiss Optics','Phones',299.99),
(93,'HP Pavilion 15','Affordable laptop with optional touchscreen display','Laptops',599.99),
(94,'BlackBerry Key2 LE','Android smartphone with physical keyboard','Phones',399.99),
(95,'Lenovo Tab E10','Budget-friendly Android tablet for basic use','Tablets',129.99),
(96,'Sony Xperia XZ2','Flagship smartphone with Dynamic Vibration System','Phones',599.99),
(97,'LG V40 ThinQ','Feature-packed smartphone with five cameras','Phones',349.99),
(98,'Google Pixel 2 XL','Flagship smartphone with pure Android experience','Phones',849.99),
(99,'Samsung Galaxy Tab S3','Premium Android tablet with HDR display','Tablets',499.99),
(100,'Asus Transformer Book T101HA','Convertible laptop with detachable keyboard','Laptops',299.99);
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VENDOR`
--

DROP TABLE IF EXISTS `VENDOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VENDOR` (
  `VEND_CODE` int(11) NOT NULL AUTO_INCREMENT,
  `VEND_NAME` varchar(100) DEFAULT NULL,
  `VEND_CONTRACT` varchar(100) DEFAULT NULL,
  `VEND_AREACODE` varchar(10) DEFAULT NULL,
  `VEND_PHONE` varchar(20) DEFAULT NULL,
  `VEND_STATE` varchar(50) DEFAULT NULL,
  `VEND_ORDER` int(11) DEFAULT NULL,
  `VEND_ORD_STATUS` varchar(50) DEFAULT NULL,
  `VEND_ORD_DATE` date DEFAULT NULL,
  `VEND_CONTACT_PERSON` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`VEND_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENDOR`
--

LOCK TABLES `VENDOR` WRITE;
/*!40000 ALTER TABLE `VENDOR` DISABLE KEYS */;
INSERT INTO `VENDOR` VALUES
(1,'John Smith','Supply Contract','12345','987-654-3210','California',1,'Pending','2024-03-01','Jane Doe'),
(2,'Michael Johnson','Procurement Agreement','23456','876-543-2109','New York',2,'Shipped','2024-03-02','Emily Davis'),
(3,'David Brown','Partnership Contract','34567','765-432-1098','Texas',3,'Delivered','2024-03-03','Nick Johnson'),
(4,'Nick Johnson','Vendor Agreement','45678','654-321-0987','Florida',4,'Pending','2024-03-04','Victor Smithson'),
(5,'Victor Smithson','Service Contract','56789','543-210-9876','Washington',5,'Shipped','2024-03-05','Sammy Anderson'),
(6,'Emily Davis','Vendor Agreement','67890','432-109-8765','California',6,'Pending','2024-03-06','Jack Miller'),
(7,'Paul Williams','Procurement Agreement','78901','321-098-7654','New York',7,'Shipped','2024-03-07','John Miller'),
(8,'Sammy Anderson','Service Contract','89012','210-987-6543','Texas',8,'Delivered','2024-03-08','David Miller'),
(9,'Jack Miller','Supply Contract','90123','109-876-5432','Florida',9,'Pending','2024-03-09','Michael Miller'),
(10,'John Miller','Partnership Contract','01234','098-765-4321','Washington',10,'Shipped','2024-03-10','Emily Miller');
/*!40000 ALTER TABLE `VENDOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `EMPINQ1`
--

/*!50001 DROP VIEW IF EXISTS `EMPINQ1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`nricci0462`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `EMPINQ1` AS select `E`.`EMP_NUM` AS `EMP_NUM`,`E`.`EMP_FNAME` AS `EMP_FNAME`,`E`.`EMP_LNAME` AS `EMP_LNAME`,`D`.`DEPARTMENT_NAME` AS `DEPARTMENT_NAME` from (`EMPLOYEE` `E` join `DEPARTMENT` `D` on(`E`.`DEPARTMENT_ID` = `D`.`DEPARTMENT_ID`)) */;
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

-- Dump completed on 2024-04-15 13:07:39
