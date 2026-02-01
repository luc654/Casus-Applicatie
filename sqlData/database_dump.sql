-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: casus_applicatie
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__efmigrationshistory`
--

LOCK TABLES `__efmigrationshistory` WRITE;
/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodationproperties`
--

DROP TABLE IF EXISTS `accommodationproperties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accommodationproperties` (
  `accommodationID` int NOT NULL,
  `propertyID` int NOT NULL,
  `value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`accommodationID`,`propertyID`),
  KEY `propertyID` (`propertyID`),
  CONSTRAINT `accommodationproperties_ibfk_1` FOREIGN KEY (`accommodationID`) REFERENCES `accommodations` (`accommodationID`),
  CONSTRAINT `accommodationproperties_ibfk_2` FOREIGN KEY (`propertyID`) REFERENCES `properties` (`propertyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodationproperties`
--

LOCK TABLES `accommodationproperties` WRITE;
/*!40000 ALTER TABLE `accommodationproperties` DISABLE KEYS */;
INSERT INTO `accommodationproperties` VALUES (1,2,'Available'),(1,3,'Available'),(1,7,'Available'),(1,8,'Available'),(2,1,'Available'),(2,2,'Available'),(2,5,'Available'),(3,2,'Available'),(3,7,'Available'),(3,8,'Available'),(4,2,'Available'),(4,4,'Available'),(4,5,'Available'),(4,7,'Available'),(5,2,'Available'),(5,8,'Available'),(6,2,'Available'),(6,3,'Available'),(6,7,'Available'),(7,1,'Available'),(7,4,'Available'),(7,7,'Available'),(8,5,'Available'),(8,6,'Available'),(8,8,'Available'),(9,2,'Available'),(9,5,'Available'),(9,6,'Available'),(10,7,'Available'),(10,8,'Available'),(11,4,'Available'),(11,7,'Available'),(12,2,'Available'),(12,4,'Available'),(12,6,'Available'),(12,8,'Available'),(13,4,'Available'),(13,5,'Available'),(13,6,'Available'),(14,5,'Available'),(14,6,'Available'),(15,3,'Available'),(15,4,'Available'),(15,7,'Available'),(15,8,'Available'),(16,2,'Available'),(16,3,'Available'),(16,4,'Available'),(16,6,'Available'),(17,1,'Available'),(17,3,'Available'),(17,8,'Available'),(18,1,'Available'),(18,4,'Available'),(18,8,'Available'),(19,3,'Available'),(19,4,'Available'),(19,5,'Available'),(20,1,'Available'),(20,2,'Available');
/*!40000 ALTER TABLE `accommodationproperties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodations`
--

DROP TABLE IF EXISTS `accommodations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accommodations` (
  `accommodationID` int NOT NULL,
  `locationID` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `price` decimal(10,2) DEFAULT NULL,
  `imageURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`accommodationID`),
  KEY `locationID` (`locationID`),
  CONSTRAINT `accommodations_ibfk_1` FOREIGN KEY (`locationID`) REFERENCES `location` (`locationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodations`
--

LOCK TABLES `accommodations` WRITE;
/*!40000 ALTER TABLE `accommodations` DISABLE KEYS */;
INSERT INTO `accommodations` VALUES (1,10,'Exclusive mobile initiative Villa','West mention half save cut rather at. Easy offer such PM. Think mouth trial woman play.\nThought whose media leave crime bag response choice. Part born shake teach reduce fire manage.',103.06,'https://picsum.photos/658/390'),(2,6,'Mandatory optimizing process improvement Villa','Thing property hit director. Agreement onto fly trade pull direction edge treatment.\nSubject record listen take early will.\nWhile particular table. Exactly can describe. Quickly peace phone.',148.13,'https://picsum.photos/79/499'),(3,5,'Expanded incremental Graphical User Interface Villa','Get community history sister south money. Find trade create newspaper paper air. Color seek spend read physical avoid.\nIncrease language pressure threat.',453.89,'https://dummyimage.com/788x36'),(4,10,'Intuitive scalable middleware Villa','Trip hard think mention Republican marriage. South sign when recent responsibility including shoulder. Several today seven establish off worker.',331.28,'https://placekitten.com/461/323'),(5,7,'Multi-channeled intangible installation Villa','Program similar local writer new like. Threat fine field dark try although wife.',292.05,'https://dummyimage.com/567x93'),(6,4,'Triple-buffered optimal encryption Villa','But thousand use same data past.\nTeam safe time floor feel green development. Item over radio hot. Establish writer bad no material.',372.88,'https://placekitten.com/60/521'),(7,3,'Persevering client-server utilization Villa','Care beautiful there hold every one. Manage thing yes. Politics tell stay never.\nImportant clearly morning worker ten meeting official.',349.47,'https://placekitten.com/64/162'),(8,3,'Profit-focused cohesive open system Villa','Treat admit find cause available well either. Crime involve less argue.\nSet improve well across. Tend organization today sit. Program lose key their. Ability project nature rest.',365.05,'https://placekitten.com/378/529'),(9,4,'Balanced fault-tolerant database Villa','Note over score real. Let likely pull season Congress air. Market tonight very second sense stuff beat.\nProve tend never view in.\nSport nor daughter throw. Field dog number heart born to account.',130.13,'https://placekitten.com/118/315'),(10,1,'User-centric motivating installation Villa','Before officer often. Include anything begin personal. Lose situation western.\nSave military nearly material. Would within discuss woman.',289.89,'https://placekitten.com/922/283'),(11,5,'Operative optimal utilization Villa','Manager structure personal indeed who perhaps market. Development modern address prevent.\nGlass know a responsibility ten space note. Student car always finish scientist knowledge go feeling.',367.59,'https://picsum.photos/999/813'),(12,10,'Universal demand-driven algorithm Villa','Choice position marriage large tough from feel possible. Through together everybody animal deep outside person. Former collection either. Practice hear your from.',92.31,'https://dummyimage.com/161x402'),(13,9,'Multi-lateral encompassing encryption Villa','Wish audience enter treatment skin pay. Rate whose minute exactly risk expert.',474.59,'https://picsum.photos/714/3'),(14,7,'Horizontal grid-enabled standardization Villa','Their end blue foreign buy. Apply kind economy red beyond perhaps up. Explain land alone save shake effort enough. Son inside pressure building.',261.58,'https://dummyimage.com/196x386'),(15,8,'Diverse fresh-thinking projection Villa','Step half write standard. Figure course require carry coach seven.\nPay majority phone we trial reality. Gas turn paper establish.',238.17,'https://dummyimage.com/458x881'),(16,2,'Compatible fresh-thinking matrix Villa','Anything position art stuff. Great contain likely left song. Police they why.\nUpon ever road war week hair. Oil authority return hold.',473.53,'https://placekitten.com/658/719'),(17,10,'Re-engineered didactic Graphic Interface Villa','Upon growth society well perform product. Somebody force hundred news so including. Ability child worker successful book later both.\nIndividual news spring. Point often cultural road.',342.22,'https://dummyimage.com/820x871'),(18,10,'Down-sized secondary system engine Villa','Set coach level could consider. Hospital base like occur few. Space old middle single nation.\nWife statement difficult door purpose someone. Degree note prepare always Republican.',436.57,'https://dummyimage.com/248x633'),(19,3,'Mandatory dynamic flexibility Villa','Enjoy thing popular thought hair apply appear pressure. Idea red senior degree certainly research professional. Front similar age impact military high.',331.01,'https://placekitten.com/517/8'),(20,7,'Persevering multi-state strategy Villa','Hot must read letter performance. American Mrs order use anything still.\nLeave provide back international. You describe other gas hotel night. Attorney born box pay.',331.40,'https://placekitten.com/540/944');
/*!40000 ALTER TABLE `accommodations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `bookingID` int NOT NULL AUTO_INCREMENT,
  `customerID` int NOT NULL,
  `accommodationID` int NOT NULL,
  `bookingDate` date DEFAULT NULL,
  `arrivalDate` date DEFAULT NULL,
  `departureDate` date DEFAULT NULL,
  `numberOfGuests` int DEFAULT NULL,
  `totalPrice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`bookingID`),
  KEY `customerID` (`customerID`),
  KEY `accommodationID` (`accommodationID`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`accommodationID`) REFERENCES `accommodations` (`accommodationID`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,11,14,'2026-01-13','2025-10-30','2025-11-12',3,1264.90),(2,24,18,'2026-01-12','2025-07-22','2025-08-03',1,1847.78),(3,33,2,'2026-01-02','2026-08-13','2026-08-20',1,1926.13),(4,10,9,'2026-01-11','2026-10-15','2026-10-22',3,1685.80),(5,8,9,'2026-01-09','2026-08-01','2026-08-10',3,346.32),(6,49,11,'2026-01-03','2025-08-28','2025-09-07',6,1197.12),(7,30,1,'2026-01-06','2025-03-25','2025-04-04',1,1721.27),(8,26,16,'2026-01-07','2026-07-02','2026-07-16',5,1501.97),(9,17,3,'2026-01-04','2026-04-17','2026-04-24',4,1115.24),(10,31,18,'2026-01-04','2026-04-30','2026-05-09',5,1985.46),(11,41,9,'2026-01-08','2025-02-10','2025-02-19',4,1179.74),(12,33,4,'2026-01-06','2026-09-17','2026-09-25',5,461.45),(13,4,9,'2026-01-06','2025-08-04','2025-08-10',4,1200.73),(14,35,13,'2026-01-05','2025-09-08','2025-09-13',3,544.59),(15,20,8,'2026-01-02','2025-07-04','2025-07-06',5,1086.31),(16,46,18,'2026-01-05','2025-11-23','2025-11-28',3,790.30),(17,18,12,'2026-01-11','2025-09-15','2025-09-27',5,1771.90),(18,49,6,'2026-01-10','2026-11-30','2026-12-04',2,1130.47),(19,12,7,'2026-01-05','2026-12-01','2026-12-12',3,486.99),(20,16,18,'2026-01-08','2025-10-05','2025-10-15',5,509.34),(24,34,1,'2026-01-01','2025-11-30','2025-12-13',4,869.71),(25,33,6,'2026-01-09','2025-05-03','2025-05-07',1,408.70),(26,10,6,'2026-01-07','2025-05-19','2025-05-27',6,1110.10),(28,31,9,'2026-01-06','2025-09-17','2025-09-21',2,1723.54),(29,42,5,'2026-01-04','2025-11-25','2025-11-29',3,1725.82),(30,46,20,'2026-01-10','2025-04-10','2025-04-13',3,1223.39),(31,7,13,'2026-01-11','2025-04-16','2025-04-29',2,302.30),(32,30,2,'2026-01-12','2026-06-07','2026-06-20',5,714.79),(33,17,20,'2026-01-07','2026-04-30','2026-05-12',4,1268.82),(34,40,13,'2026-01-07','2026-10-15','2026-10-23',5,1871.84),(35,17,15,'2026-01-06','2025-05-16','2025-05-21',5,341.69),(36,18,5,'2026-01-09','2025-11-26','2025-12-02',3,1578.85),(37,14,5,'2026-01-12','2025-08-01','2025-08-10',3,865.01),(38,50,6,'2026-01-13','2026-11-01','2026-11-10',4,737.21),(39,20,19,'2026-01-10','2026-08-31','2026-09-10',2,611.06),(40,20,5,'2026-01-13','2025-12-29','2026-01-05',3,971.16),(41,17,14,'2026-01-02','2026-06-22','2026-07-06',1,270.92),(42,21,7,'2026-01-07','2025-08-13','2025-08-24',1,524.34),(43,32,7,'2026-01-12','2025-12-24','2026-01-02',3,242.55),(44,47,2,'2026-01-10','2026-07-30','2026-08-05',1,266.47),(45,11,8,'2026-01-14','2025-09-22','2025-10-06',5,1421.23),(46,22,5,'2026-01-12','2025-12-21','2025-12-23',3,1084.45),(47,43,19,'2026-01-13','2025-12-20','2025-12-26',2,1787.28),(48,19,13,'2026-01-07','2026-08-01','2026-08-08',5,1221.93),(49,28,5,'2026-01-10','2026-10-28','2026-11-06',3,1178.28),(50,10,17,'2026-01-13','2026-04-04','2026-04-12',4,1485.96),(51,50,15,'2026-01-07','2025-10-14','2025-10-24',5,1536.04),(52,21,17,'2026-01-04','2025-12-05','2025-12-12',4,644.97),(53,6,3,'2026-01-01','2026-10-20','2026-11-02',3,287.70),(54,31,17,'2026-01-02','2026-04-27','2026-05-07',4,1154.97),(55,7,10,'2026-01-13','2025-08-12','2025-08-21',2,1283.71),(57,13,20,'2026-01-03','2026-04-24','2026-05-06',4,1020.96),(58,10,20,'2026-01-06','2025-06-13','2025-06-26',4,1600.56),(59,17,11,'2026-01-02','2026-02-18','2026-03-02',5,1385.85),(61,23,17,'2026-01-12','2026-06-08','2026-06-19',2,1962.21),(62,43,11,'2026-01-02','2025-09-03','2025-09-06',3,1123.53),(63,19,9,'2026-01-05','2026-05-15','2026-05-25',5,1494.60),(64,16,2,'2026-01-09','2026-08-19','2026-09-02',1,838.66),(65,47,17,'2026-01-06','2026-06-17','2026-06-25',1,1738.22),(66,11,20,'2026-01-01','2026-06-06','2026-06-19',3,338.01),(67,34,18,'2026-01-12','2025-04-23','2025-04-26',6,847.97),(68,22,14,'2026-01-02','2026-12-06','2026-12-17',1,329.66),(69,28,18,'2026-01-02','2026-11-29','2026-12-11',1,408.18),(70,18,1,'2026-01-14','2025-12-17','2025-12-25',2,723.59),(71,19,11,'2026-01-08','2025-01-18','2025-01-28',4,325.69),(72,20,12,'2026-01-06','2025-03-07','2025-03-11',2,1176.80),(73,21,1,'2026-01-02','2026-06-28','2026-07-05',3,792.03),(74,30,20,'2026-01-12','2025-09-08','2025-09-14',2,995.22),(75,25,19,'2026-01-03','2026-07-27','2026-07-29',6,723.43),(76,22,6,'2026-01-12','2026-10-16','2026-10-20',1,1769.25),(77,8,7,'2026-01-12','2025-04-24','2025-04-28',5,1111.91),(78,16,11,'2026-01-07','2025-11-19','2025-11-26',2,749.28),(79,16,20,'2026-01-07','2026-11-21','2026-12-01',6,203.27),(80,48,15,'2026-01-09','2026-09-17','2026-09-29',2,445.74),(81,8,14,'2026-01-13','2026-11-09','2026-11-23',6,1299.99),(82,31,7,'2026-01-10','2025-12-17','2025-12-20',6,1289.67),(83,29,2,'2026-01-14','2026-08-25','2026-09-06',3,592.00),(84,43,16,'2026-01-03','2026-04-17','2026-04-28',3,1429.75),(85,6,15,'2026-01-12','2026-12-05','2026-12-13',4,1641.03),(88,19,12,'2026-01-06','2027-01-01','2027-01-12',6,324.87),(89,50,8,'2026-01-07','2025-12-27','2026-01-10',3,1448.16),(90,26,1,'2026-01-11','2025-03-05','2025-03-15',2,261.16),(91,8,19,'2026-01-12','2025-07-05','2025-07-18',1,417.99),(92,46,5,'2026-01-10','2026-02-23','2026-03-02',2,671.24),(93,24,11,'2026-01-03','2026-09-16','2026-09-28',1,1425.06),(94,32,15,'2026-01-09','2026-09-22','2026-09-29',4,646.91),(96,15,17,'2026-01-08','2025-08-15','2025-08-20',1,529.48),(97,19,20,'2026-01-05','2025-05-24','2025-05-31',3,1090.95),(98,9,18,'2026-01-14','2025-07-13','2025-07-25',1,1001.32),(99,15,12,'2026-01-07','2026-06-08','2026-06-10',1,333.48),(100,16,8,'2026-01-06','2026-01-06','2026-01-19',4,451.64),(101,10,5,'2026-01-31','2026-02-12','2026-02-21',4,2628.45),(102,10,5,'2026-01-31','2026-02-05','2026-02-07',5,584.10),(103,10,5,'2026-01-31','2026-02-02','2026-02-04',6,584.10),(104,10,5,'2026-01-31','2026-02-11','2026-02-19',30,2336.40),(105,10,4,'2026-01-31','2026-02-10','2026-02-12',10,662.56),(106,10,5,'2026-01-31','2026-02-03','2026-02-05',10,584.10),(107,10,2,'2026-01-31','2026-02-09','2026-02-11',10,296.26),(108,10,1,'2026-02-01','2026-03-10','2026-03-18',10,824.48),(109,10,1,'2026-02-01','2026-03-04','2026-03-06',10,206.12);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customerID` int NOT NULL AUTO_INCREMENT,
  `firstName` char(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (4,'Melinda','Coleman','anita14@example.com','884.586.36021'),(6,'Paula','Thomas','krystal33@example.net','(904)505-8574x16612'),(7,'Ryan','Curry','ldawson@example.net','745-385-5019'),(8,'James','Davis','ryanenglish@example.com','001-779-225-2012x514'),(9,'Alexander','Vega','aparks@example.com','(800)557-5938x9094'),(10,'Anthony','Walker','erinford@example.net','6743129483'),(11,'Ashley','Miller','kelseylewis@example.coma','(852)886-0161'),(12,'Denise','Anderson','michaelbridges@example.com','001-336-454-4961x354'),(13,'Douglas','Cole','woodardfelicia@example.com','001-745-542-2966x662'),(14,'Mark','Watson','millsdiamond@example.org','001-804-651-2685x067'),(15,'Rachel','Nielsen','kimmichael@example.org','+1-336-922-0728x991'),(16,'Daniel','Moore','ronald95@example.org','714-671-0251x956'),(17,'Ethan','Edwards','reyesjennifer@example.org','941.783.2681x1803'),(18,'Derrick','Edwards','crossmartha@example.net','001-385-213-970461'),(19,'Alexandria','Gibbs','linsteven@example.org','001-405-374-1281x234'),(20,'Gregory','Nguyen','davidgarcia@example.com','725-647-0243x263'),(21,'Fred','Oneal','elizabethrodriguez@example.net','836-872-8830x5491'),(22,'Karen','Rodriguez','tali@example.org','+1-762-489-2257x6088'),(23,'Carrie','Collins','kathryn24@example.org','928.596.9028'),(24,'Alexandria','Brooks','charleshill@example.net','245.437.5523'),(25,'Gabriel','Lin','tpadilla@example.net','001-252-302-4904x902'),(26,'Michael','Williams','chenderson@example.org','+1-305-211-9931x527'),(27,'Melissa','Harris','michaeljohnson@example.org','001-583-725-3640x735'),(28,'Jenna','Phillips','lorieverett@example.org','001-941-590-3817x200'),(29,'John','Mcclain','zgraham@example.net','6292742869'),(30,'Steven','Lopez','kjones@example.com','+1-683-713-7624x2440'),(31,'Marisa','Chang','liujuan@example.net','(316)544-7214'),(32,'Patrick','King','hwilson@example.org','766-946-9540x03776'),(33,'Edgar','Nguyen','patriciajones@example.org','231-554-5146'),(34,'Daniel','Figueroa','joshua78@example.com','+1-706-519-9594x3157'),(35,'Robyn','Payne','rjohnson@example.com','447.303.8758x855'),(36,'Susan','Higgins','hamiltonmaxwell@example.net','001-570-711-9472'),(37,'Barry','Huff','vgomez@example.com','859.603.1078x14848'),(38,'John','Beard','rebecca00@example.org','930.279.1456x2104'),(39,'Brittany','Green','bullockchristina@example.org','001-470-536-1955'),(40,'John','Meyer','jgibson@example.org','466.234.6566x11767'),(41,'Erin','Martin','wigginsrobert@example.org','001-248-745-1424'),(42,'Alexandra','Stephenson','adamsshannon@example.com','785.730.5582x46314'),(43,'Erik','Robinson','ndavis@example.org','838-664-7910x171'),(44,'Daniel','Ferguson','colemanmark@example.net','+1-304-331-6283x4205'),(45,'Tara','Oneill','hcruz@example.com','(653)626-1085x1690'),(46,'Brett','Fox','michele81@example.com','783-530-0593x596'),(47,'Marcus','Arellano','rowlandmichael@example.org','001-211-241-2342x965'),(48,'James','Garza','jeffreychang@example.net','226.439.9323x572'),(49,'Tina','Hawkins','petersonchristopher@example.com','856.689.0148x49420'),(50,'Melinda','Tucker','daviselizabeth@example.com','001-529-814-4442'),(51,'test','gebruiker','aldksj@sadflk.com','432523452345'),(52,'af','asdf','asdf@sadfasdf','432234');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerwishes`
--

DROP TABLE IF EXISTS `customerwishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerwishes` (
  `customerID` int NOT NULL,
  `wishID` int NOT NULL,
  `propertyID` int NOT NULL,
  `value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customerID`,`wishID`),
  KEY `propertyID` (`propertyID`),
  CONSTRAINT `customerwishes_ibfk_2` FOREIGN KEY (`propertyID`) REFERENCES `properties` (`propertyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerwishes`
--

LOCK TABLES `customerwishes` WRITE;
/*!40000 ALTER TABLE `customerwishes` DISABLE KEYS */;
INSERT INTO `customerwishes` VALUES (4,1,5,'32'),(4,2,7,'15'),(5,1,8,'61'),(5,2,4,'15'),(5,3,5,'39'),(6,1,1,'47'),(6,2,2,'59'),(7,1,1,'3'),(7,2,1,'28'),(7,3,2,'93'),(8,1,2,'26'),(8,2,7,'17'),(9,1,7,'58'),(9,2,5,'90'),(9,3,8,'79'),(10,1,7,'23'),(10,2,7,'29'),(11,1,3,'41'),(11,2,1,'39'),(12,1,6,'61'),(12,2,1,'52'),(12,3,4,'39'),(12,4,7,'62'),(13,1,2,'45'),(13,2,6,'22'),(13,3,8,'12'),(13,4,6,'24'),(13,5,1,'41'),(14,1,6,'31'),(14,2,5,'9'),(14,3,5,'84'),(14,4,3,'10'),(14,5,4,'21'),(15,1,1,'78'),(15,2,6,'87'),(15,3,4,'42'),(15,4,7,'7'),(16,1,5,'62'),(16,2,3,'86'),(16,3,3,'71'),(16,4,6,'63'),(16,5,7,'51'),(17,1,1,'68'),(17,2,1,'58'),(17,3,5,'88'),(17,4,7,'34'),(17,5,3,'58'),(18,1,8,'4'),(18,2,2,'14'),(18,3,8,'27'),(18,4,5,'89'),(18,5,7,'49'),(19,1,2,'24'),(19,2,5,'99'),(19,3,3,'70'),(19,4,4,'37'),(19,5,3,'69'),(20,1,6,'61'),(20,2,7,'27'),(20,3,8,'65'),(21,1,7,'53'),(21,2,2,'7'),(21,3,8,'49'),(21,4,5,'63'),(22,1,4,'41'),(22,2,6,'41'),(22,3,7,'3'),(23,1,7,'14'),(23,2,3,'46'),(23,3,2,'42'),(23,4,5,'85'),(24,1,3,'42'),(24,2,2,'65'),(24,3,6,'57'),(25,1,7,'100'),(25,2,5,'57'),(25,3,3,'79'),(25,4,1,'91'),(26,1,1,'51'),(26,2,2,'33'),(26,3,1,'61'),(27,1,5,'91'),(27,2,7,'11'),(27,3,2,'75'),(27,4,1,'17'),(28,1,4,'25'),(28,2,1,'42'),(28,3,8,'72'),(28,4,5,'83'),(29,1,3,'46'),(29,2,3,'49'),(29,3,3,'7'),(30,1,8,'32'),(30,2,7,'21'),(30,3,5,'5'),(31,1,1,'16'),(31,2,7,'30'),(31,3,2,'22'),(31,4,4,'38'),(32,1,2,'92'),(32,2,1,'52'),(32,3,4,'48'),(32,4,2,'36'),(33,1,5,'76'),(33,2,2,'38'),(33,3,4,'35'),(34,1,2,'31'),(34,2,8,'58'),(34,3,2,'14'),(35,1,4,'65'),(35,2,8,'81'),(36,1,5,'10'),(36,2,7,'4'),(37,1,7,'48'),(37,2,7,'68'),(37,3,8,'63'),(37,4,3,'76'),(38,1,6,'12'),(38,2,4,'10'),(38,3,1,'83'),(38,4,1,'80'),(38,5,7,'59'),(39,1,1,'48'),(39,2,3,'97'),(39,3,8,'10'),(39,4,4,'18'),(40,1,3,'74'),(40,2,5,'65'),(40,3,5,'62'),(41,1,8,'87'),(41,2,6,'56'),(41,3,8,'74'),(41,4,1,'6'),(42,1,3,'44'),(42,2,1,'31'),(43,1,8,'96'),(43,2,1,'69'),(44,1,4,'71'),(44,2,3,'59'),(45,1,7,'30'),(45,2,1,'41'),(45,3,7,'2'),(45,4,5,'71'),(45,5,7,'21'),(46,1,5,'47'),(46,2,6,'97'),(46,3,7,'23'),(47,1,4,'53'),(47,2,2,'40'),(47,3,3,'67'),(47,4,2,'14'),(48,1,6,'19'),(48,2,8,'41'),(49,1,1,'96'),(49,2,6,'79'),(50,1,2,'100'),(50,2,3,'43'),(50,3,3,'20'),(50,4,1,'81'),(51,1,6,'77'),(51,2,8,'17'),(51,3,2,'22'),(51,4,6,'70'),(51,5,4,'19'),(52,1,2,'36'),(52,2,2,'91'),(52,3,8,'90'),(52,4,6,'83');
/*!40000 ALTER TABLE `customerwishes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `locationID` int NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`locationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'South Anthonyville','Rhode Island','Tokelau'),(2,'Port Jamiefurt','New York','Saint Kitts and Nevis'),(3,'Mccormickmouth','Ohio','Libyan Arab Jamahiriya'),(4,'Lake Deannaland','Pennsylvania','Greece'),(5,'Port Williamfurt','North Carolina','Turks and Caicos Islands'),(6,'North Kimberlymouth','Louisiana','Sweden'),(7,'Jasonchester','New Jersey','Lesotho'),(8,'Manningshire','Wyoming','Algeria'),(9,'Rodriguezland','Delaware','Martinique'),(10,'Lake Jeffreyville','Montana','Grenada');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `properties` (
  `propertyID` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`propertyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,'WiFi'),(2,'Pool'),(3,'Aircon'),(4,'Parking'),(5,'Kitchen'),(6,'Pet Friendly'),(7,'Gym'),(8,'Sea View');
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-01 13:54:12
