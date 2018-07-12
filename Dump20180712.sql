CREATE DATABASE  IF NOT EXISTS `pathfinder` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pathfinder`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: pathfinder
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `Buyer`
--

DROP TABLE IF EXISTS `Buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Buyer` (
  `Agora_Cust_Num` varchar(45) NOT NULL,
  `Buyer_Fname` varchar(45) DEFAULT NULL,
  `Buyer_Mname` varchar(45) DEFAULT NULL,
  `Buyer_Lname` varchar(45) DEFAULT NULL,
  `Nationality` varchar(45) DEFAULT NULL,
  `Reta_Join_Date` datetime DEFAULT NULL,
  `Reta_Cancel_Date` datetime DEFAULT NULL,
  `Mem_Status` tinytext,
  `ADV_Number` varchar(45) DEFAULT NULL,
  `Email_Addr` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Agora_Cust_Num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Buyer`
--

LOCK TABLES `Buyer` WRITE;
/*!40000 ALTER TABLE `Buyer` DISABLE KEYS */;
INSERT INTO `Buyer` VALUES ('0000000000001','Elliot',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Campaign`
--

DROP TABLE IF EXISTS `Campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Campaign` (
  `Campaign_Ref` varchar(45) NOT NULL,
  `Prim_Campaign` varchar(45) DEFAULT NULL,
  `Campaign_Name` varchar(45) DEFAULT NULL,
  `Project` varchar(45) DEFAULT NULL,
  `S_Date` varchar(45) DEFAULT NULL,
  `E_Date` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `Webinar` tinyint(4) DEFAULT NULL,
  `Podcast` tinyint(4) DEFAULT NULL,
  `Most` varchar(45) DEFAULT NULL,
  `Leads_Gen` int(11) DEFAULT NULL,
  `Tot_Reservations` int(11) DEFAULT NULL,
  `Sales_Qty` int(11) DEFAULT NULL,
  `Sales_Vol` decimal(10,2) DEFAULT NULL,
  `Sales_Fees` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Campaign_Ref`),
  CONSTRAINT `Campaign_ibfk_1` FOREIGN KEY (`Campaign_Ref`) REFERENCES `Lead` (`Campaign_Ref`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campaign`
--

LOCK TABLES `Campaign` WRITE;
/*!40000 ALTER TABLE `Campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `Campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Country` (
  `Country_Id` int(11) NOT NULL,
  `Country_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Country_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Country`
--

LOCK TABLES `Country` WRITE;
/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Developer`
--

DROP TABLE IF EXISTS `Developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Developer` (
  `Dev_Ref` varchar(45) NOT NULL,
  `Dev_Internal_Ref` varchar(45) DEFAULT NULL,
  `Dev_Code` int(11) DEFAULT NULL,
  `Dev_Name` varchar(100) DEFAULT NULL,
  `Cntry_of_Incorp` varchar(100) DEFAULT NULL,
  `Dev_Vat_Num` varchar(100) DEFAULT NULL,
  `Address_1` varchar(100) DEFAULT NULL,
  `Address_2` varchar(100) DEFAULT NULL,
  `Address_3` varchar(100) DEFAULT NULL,
  `Address_4` varchar(100) DEFAULT NULL,
  `Address_5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Dev_Ref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Developer`
--

LOCK TABLES `Developer` WRITE;
/*!40000 ALTER TABLE `Developer` DISABLE KEYS */;
INSERT INTO `Developer` VALUES ('001','002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Developer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Invoice`
--

DROP TABLE IF EXISTS `Invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Invoice` (
  `Invoice_Id` int(11) NOT NULL,
  `Agora_Cust_Num` varchar(45) NOT NULL,
  `Invoice_Amt` int(11) DEFAULT NULL,
  `Invoice_Date` int(11) DEFAULT NULL,
  `Cred_Note_to_Date` int(11) DEFAULT NULL,
  PRIMARY KEY (`Invoice_Id`),
  KEY `Agora_Cust_Num_idx` (`Agora_Cust_Num`),
  CONSTRAINT `Agora_Cust_Num` FOREIGN KEY (`Agora_Cust_Num`) REFERENCES `Buyer` (`Agora_Cust_Num`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Invoice`
--

LOCK TABLES `Invoice` WRITE;
/*!40000 ALTER TABLE `Invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `Invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lead`
--

DROP TABLE IF EXISTS `Lead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lead` (
  `Lead_Id` int(11) NOT NULL,
  `Campaign_Ref` varchar(45) NOT NULL,
  `Lead_Fname` varchar(45) DEFAULT NULL,
  `Lead_Mname` varchar(45) DEFAULT NULL,
  `Lead_Lname` varchar(45) DEFAULT NULL,
  `Lead_Email_Addr` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Campaign_Ref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lead`
--

LOCK TABLES `Lead` WRITE;
/*!40000 ALTER TABLE `Lead` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductType`
--

DROP TABLE IF EXISTS `ProductType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductType` (
  `Prod_Id` int(11) NOT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Num_Beds_Size` int(11) DEFAULT NULL,
  `Retail_Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Prod_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductType`
--

LOCK TABLES `ProductType` WRITE;
/*!40000 ALTER TABLE `ProductType` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProductType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Project`
--

DROP TABLE IF EXISTS `Project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Project` (
  `Proj_Ref` varchar(45) NOT NULL,
  `Proj_Name` varchar(45) DEFAULT NULL,
  `Rel_Date` datetime DEFAULT NULL,
  `Sub_Proj_Name` varchar(45) DEFAULT NULL,
  `Prod_Id` int(11) DEFAULT NULL,
  `Country_Id` int(11) DEFAULT NULL,
  `Sub_Loc_Id` int(11) DEFAULT NULL,
  `Tertiary_Loc_Id` int(11) DEFAULT NULL,
  `Invoice_Code_Dev` varchar(45) DEFAULT NULL,
  `Invoice_Code_Proj` varchar(45) DEFAULT NULL,
  `Coa_Ref` int(11) DEFAULT NULL,
  `Coa_Cred_Ref` int(11) DEFAULT NULL,
  `Camp_Dev_Ref` int(11) DEFAULT NULL,
  `Camp_Prod_Ref` int(11) DEFAULT NULL,
  PRIMARY KEY (`Proj_Ref`),
  KEY `Prod_Id_idx` (`Prod_Id`),
  KEY `Country_Id_idx` (`Country_Id`),
  KEY `Sub_Loc_Id_idx` (`Sub_Loc_Id`),
  KEY `Tertiary_Loc_Id_idx` (`Tertiary_Loc_Id`),
  CONSTRAINT `Country_Id` FOREIGN KEY (`Country_Id`) REFERENCES `Country` (`Country_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Prod_Id` FOREIGN KEY (`Prod_Id`) REFERENCES `ProductType` (`Prod_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Sub_Loc_Id` FOREIGN KEY (`Sub_Loc_Id`) REFERENCES `SubLocation` (`Sub_Loc_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Tertiary_Loc_Id` FOREIGN KEY (`Tertiary_Loc_Id`) REFERENCES `TertiaryLocation` (`Terciary_Loc_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Project`
--

LOCK TABLES `Project` WRITE;
/*!40000 ALTER TABLE `Project` DISABLE KEYS */;
/*!40000 ALTER TABLE `Project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubLocation`
--

DROP TABLE IF EXISTS `SubLocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubLocation` (
  `Sub_Loc_Id` int(11) NOT NULL,
  `Sub_Loc_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Sub_Loc_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubLocation`
--

LOCK TABLES `SubLocation` WRITE;
/*!40000 ALTER TABLE `SubLocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubLocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TertiaryLocation`
--

DROP TABLE IF EXISTS `TertiaryLocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TertiaryLocation` (
  `Terciary_Loc_Id` int(11) NOT NULL,
  `Tertiary_Loc_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Terciary_Loc_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TertiaryLocation`
--

LOCK TABLES `TertiaryLocation` WRITE;
/*!40000 ALTER TABLE `TertiaryLocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `TertiaryLocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transaction`
--

DROP TABLE IF EXISTS `Transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transaction` (
  `Sales_Ref` varchar(15) NOT NULL,
  `Close_Date` datetime DEFAULT NULL,
  `Dev_Ref` varchar(15) DEFAULT NULL,
  `Proj_Ref` varchar(45) DEFAULT NULL,
  `Adv_Country` varchar(45) DEFAULT NULL,
  `Unit_Num` varchar(15) DEFAULT NULL,
  `Type` varchar(15) DEFAULT NULL,
  `Campaign_Ref` varchar(45) DEFAULT NULL,
  `Agora_Cust_Num` varchar(45) DEFAULT NULL,
  `Curr_Type` varchar(45) DEFAULT NULL,
  `Purch_Price` decimal(6,2) DEFAULT NULL,
  `Fx_Rate` decimal(5,5) DEFAULT NULL,
  `Price_Adj` int(11) DEFAULT NULL,
  `Fx_Rate_2` decimal(5,5) DEFAULT NULL,
  `Tot_Purch_Price` varchar(45) DEFAULT NULL,
  `Fee` decimal(5,0) DEFAULT NULL,
  `Fee_Adj` decimal(5,0) DEFAULT NULL,
  `Tot_Usd_Fee` decimal(5,0) DEFAULT NULL,
  `Il_Split` varchar(45) DEFAULT NULL,
  `Fee_Per_Cent` decimal(2,2) DEFAULT NULL,
  `Invoiced_Py` decimal(6,2) DEFAULT NULL,
  `Invoiced_Cy` decimal(6,2) DEFAULT NULL,
  `Cred_Note_To_Date` decimal(6,2) DEFAULT NULL,
  `Non_Invoiced_Fees` decimal(6,2) DEFAULT NULL,
  `Fx_Curr_Rate` decimal(6,6) DEFAULT NULL,
  `Non_Invoiced_Fees_Usd` decimal(6,2) DEFAULT NULL,
  `Paid_Py` decimal(6,2) DEFAULT NULL,
  `Paid_Cy` decimal(6,2) DEFAULT NULL,
  `Rfnds_To_Date` decimal(10,2) DEFAULT NULL,
  `Unpaid_Fees` int(11) DEFAULT NULL,
  `Unpaid_Fees_Usd` int(11) DEFAULT NULL,
  `Tot_Num_Fee_Invoices` int(11) DEFAULT NULL,
  `Tot_Num_Invoices_Py` int(11) DEFAULT NULL,
  `Tot_Num_Invoices_Cy` int(11) DEFAULT NULL,
  `Tot_Num_Invoices_Rem` int(11) DEFAULT NULL,
  `Nxt_Invoice_Amt` decimal(10,2) DEFAULT NULL,
  `Nxt_Invoice_Date` datetime DEFAULT NULL,
  `Comments` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Sales_Ref`),
  KEY `fk_Prod_Ref` (`Proj_Ref`),
  KEY `fk_Campaign_Ref` (`Campaign_Ref`),
  KEY `transaction_ibfk_2` (`Dev_Ref`),
  KEY `transaction_ibfk_1_idx` (`Agora_Cust_Num`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`Agora_Cust_Num`) REFERENCES `Buyer` (`Agora_Cust_Num`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`Dev_Ref`) REFERENCES `Developer` (`Dev_Ref`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`Proj_Ref`) REFERENCES `Project` (`Proj_Ref`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `transaction_ibfk_4` FOREIGN KEY (`Campaign_Ref`) REFERENCES `Campaign` (`Campaign_Ref`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction`
--

LOCK TABLES `Transaction` WRITE;
/*!40000 ALTER TABLE `Transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `Transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-12 12:45:37
