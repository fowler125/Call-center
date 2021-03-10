-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: callcenter
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `call_center`
--

DROP TABLE IF EXISTS `call_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `call_center` (
  `cc_id` int NOT NULL,
  `cc_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_center`
--

LOCK TABLES `call_center` WRITE;
/*!40000 ALTER TABLE `call_center` DISABLE KEYS */;
INSERT INTO `call_center` VALUES (795,'2919 Sugar Camp Rd. MN'),(895,'3585 Sara Dr., LA'),(1005,'4648 Shinn Av., PA');
/*!40000 ALTER TABLE `call_center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_log`
--

DROP TABLE IF EXISTS `call_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `call_log` (
  `case_number` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `outcome_id` int DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `match_id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `issue_id` int DEFAULT NULL,
  PRIMARY KEY (`case_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_log`
--

LOCK TABLES `call_log` WRITE;
/*!40000 ALTER TABLE `call_log` DISABLE KEYS */;
INSERT INTO `call_log` VALUES (100001,'Johnny Dang',98,'Will Not power on',101,'2020-07-30',4500,205),(100002,'Lewis Carlton',100,'Broken Screen',102,'2020-09-20',4500,206),(100003,'Jordan Davis',100,'Broken Screen',103,'2020-09-27',4600,207),(100004,'Ritz Rich',98,'Camera Not Functioning',104,'2020-11-16',4700,208),(100005,'Chester Chet',95,'Broken Screen',105,'2020-12-04',4800,209),(100006,'Pierre Davis',102,'Will Not Power On',106,'2020-08-02',4700,210),(100007,'Dahlia Allison',100,'Slow Performance',107,'2020-10-05',4800,211),(100008,'Katarina Moreno',95,'Camera Not Functioning',108,'2020-11-20',4500,212),(100009,'Jake Cannon',98,'Broken Screen',109,'2020-12-03',4600,213),(100010,'Clarice McNeil',100,'Broken Screen',110,'2020-12-30',4500,214),(100011,'Sophia Andrew',98,'Camera Not Functioning',111,'2020-08-06',4500,215),(100012,'Faizah Palmer',98,'Broken Screen',112,'2020-09-04',4600,216),(100013,'Mercedes Maddox',95,'Slow Performance',113,'2020-11-14',4600,217);
/*!40000 ALTER TABLE `call_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone_number` int DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `zip` int DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2001,'Johnny Dang','johnny.d@gmail.com',832,'3555 Graystone','GA','Macon',31201),(2002,'Lewis Carlton','lews.c@yahoo.com',832,'2068 Lonely Oak Dr.','AL','Mobile',36575),(2003,'Jordan Davis','jordan.d@hotmail.com',602,'3100 Coplin Av.','AZ','Phoenix',85023),(2004,'Ritz Rich','ritz@gmail.com',910,'80 Ray Court','MO','Ellington',63638),(2005,'Chester Chet','chester.c@yahoo.com',616,'2992 Howard Street','MO','Belgrade',63622),(2006,'Pierre Davis','pierre.d@gmail.com',508,'3601 Stadium Dr.','MA','Taunton',12780),(2007,'Dahlia Allison','dahliaA@gmail.com',570,'2957 Coal Rd.','PA','Harveys Lake',18618),(2008,'Katarina Moreno','kata.M@gmail.com',352,'1857 George Street','FL','Cross City',32628),(2009,'Jake Cannon','jakeC@yahoo.com',856,'4677 Briarwood Dr.','NJ','Riverside',18075),(2010,'Clarice McNeill','clarice@mail.com',603,'4628 Peck St.','NH','Dover',13820),(2011,'Sophia Andrew','sophia@mail.com',409,'4652 Brookview Dr.','TX','Beaumont',77701),(2012,'Faizah Palmer','faizah@mail.com',586,'1153 D Street','MI','Bloomfied',48302),(2013,'Mercedes Maddox','mercedes@gmail.com',217,'2121 Isaacs Creek Rd.','MN','Greenwald',56335);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `dept_id` int NOT NULL,
  `dept_name` varchar(45) DEFAULT NULL,
  `cc_id` int DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (746,'Tech-NCC',795),(747,'Repairs-NCC',795),(846,'Tech-SCC',895),(847,'Repairs-SCC',895);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int NOT NULL,
  `employee_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` int DEFAULT NULL,
  `phone_number` int DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `cc_id` int DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `job_title` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (4500,'Maria Campbell','maria.c@helpc.com','2759 Roguski Rd.','Natchitoches','LA',71457,318,25000,895,'1991-03-15','Employee'),(4600,'Vincent Talley','vince.t@helpc.com','2460 Willson St.','Andover','MN',55304,763,27000,795,'1993-01-25','Employee'),(4700,'Donald Everitt','donald.e@helpc.com','4017 Hedge St.','Andover','MN',55306,908,45000,795,'1989-03-09','Supervisor'),(4800,'Robert Bennett','rob.b@helpc.com','4334 Williams Av.','Natchitoches','LA',71457,661,75000,895,'1990-04-02','Manager'),(5000,'David Mitchell','david.m@helpc.com','4648 Shinn Av.','Gibsonia','PA',15044,724,120000,1005,'1975-03-26','Director');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outcome`
--

DROP TABLE IF EXISTS `outcome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outcome` (
  `outcome_id` int NOT NULL,
  `outcome_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`outcome_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outcome`
--

LOCK TABLES `outcome` WRITE;
/*!40000 ALTER TABLE `outcome` DISABLE KEYS */;
INSERT INTO `outcome` VALUES (95,'Ongoing'),(98,'Closed'),(100,'Pending Repair'),(102,'Manager Escalation');
/*!40000 ALTER TABLE `outcome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem_ticket`
--

DROP TABLE IF EXISTS `problem_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `problem_ticket` (
  `issue_id` int NOT NULL,
  `problem_description` varchar(45) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem_ticket`
--

LOCK TABLES `problem_ticket` WRITE;
/*!40000 ALTER TABLE `problem_ticket` DISABLE KEYS */;
INSERT INTO `problem_ticket` VALUES (205,'Will Not Power On',2001),(206,'Broken Screen',2002),(207,'Broken Screen',2003),(208,'Camera Not Functioning',2004),(209,'Broken Screen',2005),(210,'Will Not Power On',2006),(211,'Slow Performance',2007),(212,'Camera Not Functioning',2008),(213,'Broken Screen',2009),(214,'Broken Screen',2010),(215,'Camera Not Functioning',2011),(216,'Broken Screen',2012),(217,'Slow Performance',2013);
/*!40000 ALTER TABLE `problem_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solution`
--

DROP TABLE IF EXISTS `solution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solution` (
  `article_id` int NOT NULL,
  `soln_desc` varchar(45) DEFAULT NULL,
  `help` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solution`
--

LOCK TABLES `solution` WRITE;
/*!40000 ALTER TABLE `solution` DISABLE KEYS */;
INSERT INTO `solution` VALUES (8900,'restart device first','erase if needed'),(8901,'setup repair',NULL),(8902,'erase and restore',NULL);
/*!40000 ALTER TABLE `solution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solution_match`
--

DROP TABLE IF EXISTS `solution_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solution_match` (
  `match_id` int NOT NULL,
  `article_id` int DEFAULT NULL,
  `match_issue_id` int DEFAULT NULL,
  PRIMARY KEY (`match_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solution_match`
--

LOCK TABLES `solution_match` WRITE;
/*!40000 ALTER TABLE `solution_match` DISABLE KEYS */;
INSERT INTO `solution_match` VALUES (101,8900,205),(102,8901,206),(103,8901,207),(104,8901,208),(105,8901,209),(106,8900,210),(107,8902,211),(108,8901,212),(109,8901,213),(110,8901,214),(111,8901,215),(112,8901,216),(113,8902,217);
/*!40000 ALTER TABLE `solution_match` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-10 16:19:24
