-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: exchange
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `declaration_message`
--

DROP TABLE IF EXISTS `declaration_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `declaration_message` (
  `dec_msg_idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '신고메시지번호',
  `dec_msg_title` varchar(100) NOT NULL COMMENT '신고제목',
  `dec_msg_contents` varchar(500) NOT NULL COMMENT '신고상세내용',
  `mem_idx` int(11) NOT NULL COMMENT '회원번호',
  `man_idx` int(11) NOT NULL COMMENT '관리자번호',
  `pro_idx` int(11) NOT NULL COMMENT '물품번호',
  PRIMARY KEY (`dec_msg_idx`),
  KEY `FK_member_TO_declaration_message` (`mem_idx`),
  KEY `FK_manager_TO_declaration_message` (`man_idx`),
  KEY `FK_product_TO_declaration_message` (`pro_idx`),
  CONSTRAINT `FK_manager_TO_declaration_message` FOREIGN KEY (`man_idx`) REFERENCES `manager` (`man_idx`),
  CONSTRAINT `FK_member_TO_declaration_message` FOREIGN KEY (`mem_idx`) REFERENCES `member` (`mem_idx`),
  CONSTRAINT `FK_product_TO_declaration_message` FOREIGN KEY (`pro_idx`) REFERENCES `product` (`pro_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='신고메시지';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `declaration_message`
--

LOCK TABLES `declaration_message` WRITE;
/*!40000 ALTER TABLE `declaration_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `declaration_message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-30  9:25:24
