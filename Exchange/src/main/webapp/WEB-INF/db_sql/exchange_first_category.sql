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
-- Table structure for table `first_category`
--

DROP TABLE IF EXISTS `first_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `first_category` (
  `fir_idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '1차번호',
  `fir_name` varchar(50) NOT NULL COMMENT '1차분류이름',
  PRIMARY KEY (`fir_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='1차분류';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `first_category`
--

LOCK TABLES `first_category` WRITE;
/*!40000 ALTER TABLE `first_category` DISABLE KEYS */;
INSERT INTO `first_category` VALUES (1,'1'),(2,'도서·티켓·상품권'),(3,'의류·뷰티'),(4,'신발·가방·잡화'),(5,'스포츠·레저'),(6,'유아동·완구'),(7,'IT·디지털·휴대폰·컴퓨터'),(8,'가전·가구'),(9,'카메라·게임'),(10,'리빙·식품'),(11,'문구·팬시·굿즈'),(12,'음향기기·악기·CD·DVD'),(13,'취미·DIY·키덜트'),(14,'예술·골동품·희귀품'),(15,'자동차·차량용품'),(16,'오토바이·용품'),(17,'여행·숙박·부동산'),(18,'업소용 주방기기');
/*!40000 ALTER TABLE `first_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-30  9:25:23
