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
-- Table structure for table `qna_reply`
--

DROP TABLE IF EXISTS `qna_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qna_reply` (
  `qa_re_idx` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Q&A번호',
  `qa_re_p_num` int(11) NOT NULL COMMENT 'Q&A댓글부모번호',
  `qa_re_s_num` int(11) NOT NULL COMMENT 'Q&A댓글자식번호',
  `qa_re_level` int(11) NOT NULL COMMENT 'Q&A댓글레벨',
  `qa_re_title` varchar(50) NOT NULL COMMENT 'Q&A제목',
  `qa_re_contents` varchar(1000) NOT NULL COMMENT 'Q&A내용',
  `qa_re_regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Q&A등록일',
  `qa_idx` int(11) NOT NULL COMMENT '질문사항번호',
  `man_idx` int(11) NOT NULL COMMENT '관리자번호',
  PRIMARY KEY (`qa_re_idx`),
  KEY `FK_qna_TO_qna_reply` (`qa_idx`),
  KEY `FK_manager_TO_qna_reply` (`man_idx`),
  CONSTRAINT `FK_manager_TO_qna_reply` FOREIGN KEY (`man_idx`) REFERENCES `manager` (`man_idx`),
  CONSTRAINT `FK_qna_TO_qna_reply` FOREIGN KEY (`qa_idx`) REFERENCES `qna` (`qa_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Q&A댓글';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna_reply`
--

LOCK TABLES `qna_reply` WRITE;
/*!40000 ALTER TABLE `qna_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `qna_reply` ENABLE KEYS */;
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
