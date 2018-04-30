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
-- Table structure for table `second_category`
--

DROP TABLE IF EXISTS `second_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `second_category` (
  `sec_idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '2차번호',
  `sec_name` varchar(50) NOT NULL COMMENT '2차분류이름',
  `fir_idx` int(11) NOT NULL COMMENT '1차번호',
  PRIMARY KEY (`sec_idx`),
  KEY `FK_first_category_TO_second_category` (`fir_idx`),
  CONSTRAINT `FK_first_category_TO_second_category` FOREIGN KEY (`fir_idx`) REFERENCES `first_category` (`fir_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COMMENT='2차분류';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `second_category`
--

LOCK TABLES `second_category` WRITE;
/*!40000 ALTER TABLE `second_category` DISABLE KEYS */;
INSERT INTO `second_category` VALUES (1,'1',1),(2,'일반도서',2),(3,'교재,전문서적',2),(4,'유아동,전집',2),(5,'만화책',2),(6,'외국도서',2),(7,'여행,취미',2),(8,'잡지',2),(9,'기타 도서',2),(10,'영화',2),(11,'공연,전시',2),(12,'스포츠,레저테마파크',2),(13,'상품권기타',2),(14,'아우터,코트',3),(15,'상의,티셔츠,블라우스,니트,조끼',3),(16,'정장,남성복,수트',3),(17,'하의,치마,원피스,바지',3),(18,'트레이닝/잠옷',3),(19,'신발/가방/잡화/악세사리',3),(20,'화장품',3),(22,'향수,헤어,바디',3),(23,'기타',3),(24,'여성신발',4),(25,'남성신발',4),(26,'운동화,기능화',4),(27,'가방',4),(28,'시계,보석',4),(29,'지갑,벨트',4),(30,'모자,안경',4),(31,'기타 잡화',4),(32,'등산',5),(33,'캠핑',5),(34,'골프',5),(35,'낚시',5),(36,'자전거',5),(37,'스키,보드',5),(38,'수상스포츠',5),(39,'축구',5),(40,'야구',5),(41,'농구',5),(42,'인라인,X게임',5),(43,'헬스,요가',5),(44,'기타 스포츠',5),(45,'신생아,유아의류',6),(46,'아동의류',6),(47,'유아동잡화',6),(48,'유아동생활용품',6),(49,'완구,인형',6),(50,'임부복,출산용품',6),(51,'SKT',7),(52,'KT',7),(53,'LGU+',7),(54,'기타 휴대폰',7),(55,'태블릿',7),(56,'액세서리,주변기기',7),(57,'노트북,데스크탑',7),(58,'모니터',7),(59,'프린터',7),(60,'컴퓨터 기타',7),(61,'TV',8),(62,'청소기',8),(63,'냉장고',8),(64,'세탁기',8),(65,'주방조리가전',8),(66,'건강,계절가전',8),(67,'MP3,ipod',8),(68,'기타 디지털, 가전',8),(69,'침실가구',8),(70,'거실가구',8),(71,'수납가구',8),(72,'사무용가구',8),(73,'기타가구',8),(74,'일반디카',9),(75,'DSLR',9),(76,'필름카메라',9),(77,'카메라렌즈',9),(78,'카메라액세서리',9),(79,'캠코더',9),(80,'기타 광학용품',9),(81,'PC게임',9),(82,'닌텐도,PSP',9),(83,'플스,Wii,Xbox',9),(84,'보드,퍼즐,기타',9),(85,'침구,커튼,카펫트',10),(86,'원예,수예',10),(87,'세탁,청소용품',10),(88,'욕실용품',10),(89,'주방용품',10),(90,'인테리어소품',10),(91,'생활,수납용품',10),(92,'기타 생활',10),(93,'건강식품',10),(94,'포장식품',10),(95,'수제패션,소품',11),(96,'문구용품',11),(97,'사무용품',11),(98,'스타굿즈',11),(99,'헤드폰,이어폰',12),(100,'스피커,오디오',12),(101,'기타 음향기기',12),(102,'피아노,건반악기',12),(103,'바이올린,현악기',12),(104,'그외 악기',12),(105,'CD,LP',12),(106,'DVD',12),(107,'피규어',13),(108,'프라모델,레고',13),(109,'RC,드론',13),(110,'기타 키덜트',13),(111,'예술,미술작품',14),(112,'미술용품',14),(113,'기타 예술,미술',14),(114,'골동품,희귀품',14),(115,'현대',15),(116,'기아',15),(117,'쉐보레(대우)',15),(118,'르노삼성',15),(119,'외제차',15),(120,'블랙박스,네비게이션',15),(121,'타이어,휠,체인',15),(122,'카오디오,AV',15),(123,'실내 및 외장부품,용품',15),(124,'세차, 청소용품',15),(125,'125cc 이하',16),(126,'125cc 이상',16),(127,'모터사이클부품',16),(128,'라이더용품',16),(129,'리조트,호텔',17),(130,'펜션,캠핑,기타숙박',17),(131,'해외숙박',17),(132,'여행정보가이드',17),(133,'기타 여행,숙박관련',17),(134,'전,월세',17),(135,'룸쉐어,기타',17),(136,'커피,음료,아이스크림 관련',18),(137,'치킨,핫도그,튀김 관련',18),(138,'피자,베이커리, 관련',18),(139,'레스토랑,포차, 술집 관련',18),(140,'분식,일반식당 관련',18),(141,'기타',18);
/*!40000 ALTER TABLE `second_category` ENABLE KEYS */;
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
