-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: aumenta
-- ------------------------------------------------------
-- Server version	5.7.37-log

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
-- Table structure for table `files_data`
--

DROP TABLE IF EXISTS `files_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(500) DEFAULT NULL,
  `filetype` varchar(500) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `upload_id` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_data`
--

LOCK TABLES `files_data` WRITE;
/*!40000 ALTER TABLE `files_data` DISABLE KEYS */;
INSERT INTO `files_data` VALUES (1,'codigosqr.pdf','pdf','https://cdn.filestackcontent.com/d7rmpeWOTUaVnIw0WA5E','undefined'),(2,'Curriculum -Rodrigo Guillen Ortiz.pdf','pdf','https://cdn.filestackcontent.com/xcRNwt0DQdCl0fdFJSf8','eEjIReT1zHmXerRw'),(3,'icons8_box_black.png','png','https://cdn.filestackcontent.com/l6AX0d3SEyzruxKj80OL','IMiVTg0d643R49gy'),(4,'icons8_box_black.png','png','https://cdn.filestackcontent.com/W29LskWDSnCS1Qi0VbeE','5F9jU51zhJuR6MWp'),(5,'SingleQr.PNG','png','https://cdn.filestackcontent.com/R4RkQgYgRCi1XszFqHfY','OZEy7QX8GJzIG05h'),(6,'4qr.PNG','png','https://cdn.filestackcontent.com/BVWpYE0NQxqTSh1opWnK','QE4xxw8Caw4w46ia'),(7,'CheckFrontWeb.PNG','png','https://cdn.filestackcontent.com/dwaJnGSeS8HtyHscXzDs','36SDq62KC6xpdZJQ'),(8,'Curriculum -Rodrigo Guillen Ortiz.pdf','pdf','https://cdn.filestackcontent.com/cGOkVG0XTV2zdyYXv3XN','QeHOaMP1TogDkZX8'),(9,'scripts.txt','plain','https://cdn.filestackcontent.com/bLVSFNdNTf6YOTefG5uT','7Hn2YpggEWgySyW0'),(10,'invite.ics','calendar','https://cdn.filestackcontent.com/Q2gCkU8oRz6MLcrXo1pd','37D40lq8L17jPp00'),(11,'index.js','javascript','https://cdn.filestackcontent.com/rQbqcN8qQSaf9B9xmLwh','BZ9euPkm98es8DX8'),(12,'package.json','json','https://cdn.filestackcontent.com/5n0yNDzSQDWUkoAAYUsQ','q6rxfw62mPO2def8'),(13,'article.js','javascript','https://cdn.filestackcontent.com/1NjFhuFORiysk3Dkws98','s3RBePYs7D1N2Kgc'),(14,'Curriculum -Rodrigo Guillen Ortiz (1).pdf','pdf','https://cdn.filestackcontent.com/PPkACYKSvKQUqfaqsQVA','PYVpkr2Z4dO5eeL0'),(15,'scripts.txt','plain','https://cdn.filestackcontent.com/3lbpEKoZRNGfR297N4Bd','7DrFu7TGLhZI1JL2'),(16,'Curriculum -Rodrigo Guillen Ortiz.pdf','pdf','https://cdn.filestackcontent.com/brD0XFWSTSeZmyS2IFEF','kkMHDa3OpLkJM8QJ'),(17,'Curriculum -Rodrigo Guillen Ortiz.pdf','pdf','https://cdn.filestackcontent.com/jMfaEiTDRESVFRwKW6qr','fwBWP66JUezj3vfT'),(18,'icons8_box_black.png','png','https://cdn.filestackcontent.com/Q35iJTEvTNqo8SfRowVC','vrCLAIigu2FN023N'),(19,'icons8_box_black.png','png','https://cdn.filestackcontent.com/0D2R06nvSpeX0nUwiePy','Xixn68k1bYAEk725'),(20,'icons8_box_black.png','png','https://cdn.filestackcontent.com/UIsVCc9oQeefMcylC77w','P7NxX9rnWX2m041Q'),(21,'3qr.PNG','png','https://cdn.filestackcontent.com/rwQnuCf5SweKrRyuu2qw','9M5YQ3nNtC0u7QAs'),(22,'3qr.PNG','png','https://cdn.filestackcontent.com/BWTvfRZHSMqqm8mVbbTd','RFct6HxE1l6N3kVQ'),(23,'Main4FrontWeb.PNG','png','https://cdn.filestackcontent.com/bcA0FaYsTkC0TATrPHgk','d19oLXQlwITgOdx8'),(24,'SingleQr.PNG','png','https://cdn.filestackcontent.com/ibbuAQJQT2KfFePKmkQ2','kp2WBW4OUH2Ho2M3'),(25,'SystemDoc.pdf','pdf','https://cdn.filestackcontent.com/MggXqu0TRd2pUqiuwnBu','jVFb5W4DCo60PiDS'),(26,'AFABEXPORT.XLSX','vnd.openxmlformats-officedocument.spreadsheetml.sheet','https://cdn.filestackcontent.com/UD2wn2YQCCno1VYXHSUo','mZ3IG3E9467KMCQW'),(27,'adlkadfj.docx','vnd.openxmlformats-officedocument.wordprocessingml.document','https://cdn.filestackcontent.com/3Em5KWy5SHiOlG90Lsfo','RBJPLWQPitVkjr7Y'),(28,'PresentacionActivosFijos.pptm','vnd.ms-powerpoint.presentation.macroEnabled.12','https://cdn.filestackcontent.com/Cm6jTYtKTwWABdWu1PYj','mx9bUKh05fOecbV7'),(29,'EJEMPLO.pptx','vnd.openxmlformats-officedocument.presentationml.presentation','https://cdn.filestackcontent.com/tbtDePiXTQ6wTA7SAnQa','75f53jHWvPvSu3n2');
/*!40000 ALTER TABLE `files_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-18  4:14:29
