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
-- Table structure for table `product_reply`
--

DROP TABLE IF EXISTS `product_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_reply` (
  `pro_re_idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '물품댓글번호',
  `pro_re_p_num` int(11) NOT NULL COMMENT '물품댓글부모번호',
  `pro_re_s_num` int(11) NOT NULL COMMENT '물품댓글자식번호',
  `pro_re_level` int(11) NOT NULL COMMENT '물품댓글레벨',
  `pro_re_contents` varchar(500) NOT NULL COMMENT '물품댓글내용',
  `pro_re_regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '댓글작성날짜',
  `pro_idx` int(11) NOT NULL COMMENT '물품번호',
  `mem_idx` int(11) NOT NULL COMMENT '회원번호',
  PRIMARY KEY (`pro_re_idx`),
  KEY `FK_product_TO_product_reply` (`pro_idx`),
  KEY `FK_member_TO_product_reply` (`mem_idx`),
  CONSTRAINT `FK_member_TO_product_reply` FOREIGN KEY (`mem_idx`) REFERENCES `member` (`mem_idx`),
  CONSTRAINT `FK_product_TO_product_reply` FOREIGN KEY (`pro_idx`) REFERENCES `product` (`pro_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 COMMENT='물품댓글';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reply`
--

LOCK TABLES `product_reply` WRITE;
/*!40000 ALTER TABLE `product_reply` DISABLE KEYS */;
INSERT INTO `product_reply` VALUES (197,1,1,0,'우와 구찌인형이다','2018-04-30 09:17:02',6,7);
/*!40000 ALTER TABLE `product_reply` ENABLE KEYS */;
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
