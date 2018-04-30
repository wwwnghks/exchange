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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `mem_idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '회원번호',
  `mem_id` varchar(20) NOT NULL COMMENT '회원아이디',
  `mem_pw` varchar(20) NOT NULL COMMENT '회원비밀번호',
  `mem_name` varchar(20) NOT NULL COMMENT '회원이름',
  `mem_birth` datetime DEFAULT NULL COMMENT '회원생년월일',
  `mem_nickname` varchar(20) NOT NULL COMMENT '회원별명',
  `mem_phone` varchar(20) NOT NULL COMMENT '회원핸드폰번호',
  `mem_email` varchar(30) NOT NULL COMMENT '회원이메일',
  `mem_address` varchar(100) NOT NULL COMMENT '회원주소',
  `mem_photo` varchar(100) DEFAULT NULL COMMENT '회원사진',
  `mem_score` float DEFAULT NULL COMMENT '회원거래평점',
  PRIMARY KEY (`mem_idx`),
  UNIQUE KEY `mem_id_UNIQUE` (`mem_id`),
  UNIQUE KEY `mem_phone_UNIQUE` (`mem_phone`),
  UNIQUE KEY `mem_nickname_UNIQUE` (`mem_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='사용자';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'1','1','1','2018-04-23 11:33:25','1','1','1','1',NULL,1),(5,'123','123','123','1983-04-03 00:00:00','123','123123','123','경기 성남시 수정구 시민로 134 (신흥동) 기타주소 , 13353','123_배점.PNG',NULL),(6,'asd','asd','asd','1960-04-22 00:00:00','asd','asd','asd','경기 성남시 분당구 판교로25번길 6 (운중동) 경기 성남시 분당구 운중동 1033-3 , 13467','asd_캡처.PNG',NULL),(7,'gg','gg','gg','1997-03-29 00:00:00','gg','gg','gg','경기 성남시 분당구 판교로 30 (판교동, 판교원마을2단지아파트) 경기 성남시 분당구 판교동 623 , 13484','gg_공유.png',NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-30  9:25:25
