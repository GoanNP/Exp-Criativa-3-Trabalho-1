-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: crud
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `idade` int DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Glover, Howell and Hamill','Chase.Okuneva96@gmail.com','7015362737',54,'98337057'),(3,'Schultz Group','Zackery_Gutkowski@hotmail.com','7266405427',69,'98675481'),(4,'Graham and Sons','Paula.Howell96@hotmail.com','1804389160',72,'99054270'),(5,'Kuhn Inc','Stanley.Grady@yahoo.com','9961544115',20,'98553798'),(6,'O\'Kon - Rempel','Ima.Stokes85@gmail.com','6423116862',54,'98498936'),(7,'Huels - Ruecker','Joanny61@gmail.com','6841583456',37,'98417687'),(8,'Hermann - Conn','Lori.Mayert92@yahoo.com','4800700307',73,'99700136'),(9,'Kirlin, Kunde and Schroeder','Thad_Fritsch8@yahoo.com','8004605596',49,'99480560'),(10,'Lesch LLC','Harley60@hotmail.com','7536090645',63,'98696562'),(11,'Reichert, Zieme and Leannon','Tyrique_Beer@yahoo.com','3846723656',24,'99498850'),(12,'Dooley, Brakus and Bins','Emiliano60@hotmail.com','5586124153',55,'98023215'),(13,'Schaden, Zulauf and Funk','Edgardo_Olson@hotmail.com','4999101834',56,'99005864'),(14,'Paucek LLC','Rodrigo.Stiedemann-Heathcote@yahoo.com','8696800431',62,'99828510'),(15,'Moen Group','Pamela_Barrows17@hotmail.com','6958754141',61,'98310136'),(16,'Rice - Prohaska','Jaquelin.Pfannerstill16@yahoo.com','5776396370',59,'99245660'),(17,'Ebert - Wintheiser','Sally50@yahoo.com','7780832480',69,'99495588'),(18,'Keebler and Sons','Kian_Predovic@hotmail.com','8461357818',54,'98571790'),(19,'Osinski and Sons','Charlie47@hotmail.com','5110333025',22,'99255280'),(20,'Hoeger, Greenholt and Jacobi','Salvatore_Parisian44@gmail.com','9304109933',22,'99664310'),(21,'Legros Inc','Quincy_Kautzer@hotmail.com','4137353224',34,'98282852'),(22,'Powlowski - Bednar','Alexandrea_Crona21@hotmail.com','9122929813',75,'98953480'),(23,'Boyle, Deckow and Wehner','Georgette_Hodkiewicz69@hotmail.com','5979779265',17,'98645966'),(24,'Kshlerin, Bogisich and Schoen','Marcelo79@yahoo.com','7954735654',56,'99774309'),(25,'Bode, Marks and Shanahan','Sofia_Huel24@yahoo.com','3978673737',28,'98023657'),(26,'Shields and Sons','Brooks70@gmail.com','9207968004',49,'99965732'),(27,'White Inc','Dayana43@yahoo.com','7163961666',59,'99302717'),(28,'Klocko, Hackett and Hodkiewicz','Layne_Kreiger8@hotmail.com','3526687756',49,'99114587'),(29,'Gulgowski, Corkery and Osinski','Garry40@yahoo.com','9754268506',72,'99781961'),(30,'Kilback Group','Alexanne_Parisian@gmail.com','2564482490',53,'99189806'),(31,'Gorczany and Sons','Hollis95@yahoo.com','9913171724',50,'98141702'),(32,'Abernathy - Gleichner','Jolie79@yahoo.com','6878709426',23,'98879350'),(33,'Carter LLC','Ilene.Konopelski@hotmail.com','5446056959',20,'99348651'),(34,'Donnelly - Bailey','Khalil.Legros90@gmail.com','4267714042',60,'99906171'),(35,'Rempel Group','Baron57@hotmail.com','7387446409',40,'98235193'),(36,'Conroy, Kemmer and Bednar','Lauryn_Rippin@hotmail.com','7394522900',58,'99194414'),(37,'O\'Hara Group','Shania_Sawayn93@gmail.com','2406438216',61,'99224851'),(38,'Waters - Runte','Eugenia_Collier95@yahoo.com','5303823894',70,'98486226'),(39,'Kozey - Bradtke','Erna_McKenzie@hotmail.com','5272172476',25,'99001783'),(40,'Brakus, Russel and Ryan','Ricky.Schmeler-Becker0@hotmail.com','4173600387',40,'98137123'),(41,'Beier and Sons','Reynold_Abernathy65@yahoo.com','4796811251',43,'99830189'),(42,'Bernhard, Gleason and Nicolas','Brent_Jenkins@gmail.com','9784885019',19,'98661424'),(43,'Jerde LLC','Freeda.Ward@yahoo.com','4684367788',42,'99637232'),(44,'Hansen - Kunde','Myrtle.Haag79@gmail.com','9850656177',43,'98509658'),(45,'Mills LLC','Kylie_Johns@hotmail.com','2544537198',25,'98480271'),(46,'Sporer - Schaden','Hettie.McLaughlin@gmail.com','6218323018',18,'99703575'),(47,'Leannon Inc','Giovanna32@yahoo.com','8624993539',40,'99997639'),(48,'VonRueden LLC','Garry.Hudson@yahoo.com','9792991628',69,'99450869'),(49,'McLaughlin Inc','Demario43@yahoo.com','9803332086',20,'98246346'),(50,'Beahan and Sons','Leland_Ward@yahoo.com','6641736216',62,'99099107'),(51,'Terry Inc','Everette.Kling91@gmail.com','1904677970',47,'98627555'),(52,'Feeney - Pollich','Mertie_Willms@hotmail.com','5557194219',57,'99094064'),(53,'Carroll, Lubowitz and Orn','Colt_Hodkiewicz@hotmail.com','9909865224',61,'99933567'),(54,'Rath, Ebert and Wuckert','Fatima_Mohr76@yahoo.com','9337883991',57,'98873568'),(55,'Rice - Ratke','Zelda_Larkin-Robel@yahoo.com','7034813095',31,'99419468'),(56,'Treutel, Cronin and Spencer','Heath13@gmail.com','8555633951',72,'99753411'),(57,'Schumm, Cummings and Stoltenberg','Jonas93@gmail.com','2455014600',29,'99094120'),(58,'Jacobs - Kozey','Marguerite.Koelpin@yahoo.com','3492884991',36,'99658281'),(59,'Cormier and Sons','Ivory.Ferry6@gmail.com','1444133412',69,'99823593'),(60,'Parisian, Orn and Herman','Delaney.Hand96@hotmail.com','9259512207',25,'99017927'),(61,'Schulist and Sons','Terrill86@yahoo.com','4964853417',55,'98185563'),(62,'Gislason LLC','Cecelia.Klocko@hotmail.com','3975978961',36,'98090921'),(63,'Bartoletti, Stamm and Gleason','Santino_Conn92@yahoo.com','1677010464',35,'99411609'),(64,'Smith and Sons','Reilly.Schaden@gmail.com','7485497188',44,'98812856'),(65,'Hettinger LLC','Micaela.Little-Hermann28@gmail.com','9561899335',22,'99132330'),(66,'Corwin, Koch and Rowe','Monica.Dietrich68@yahoo.com','9920262410',73,'99022177'),(67,'Schroeder Group','Davonte.Lindgren35@yahoo.com','5962752817',47,'98506551'),(68,'Herman - Grant','Norbert_Abshire@gmail.com','6900780418',72,'98508532'),(69,'Mitchell, Smith and Kuhic','Raphael.Emmerich43@yahoo.com','4866656056',77,'98343336'),(70,'Spinka, Botsford and Reichel','Kamren82@yahoo.com','1666830113',68,'99411810'),(71,'Bednar and Sons','Aron.Marks93@hotmail.com','6784820941',43,'99496312'),(72,'Fisher, Grady and Stark','Dexter59@hotmail.com','7983851465',48,'98449217'),(73,'Torphy Inc','Franz.Blick@yahoo.com','7834780315',32,'99138797'),(74,'Doyle - O\'Hara','Ike.OHara@hotmail.com','5170781395',78,'99555090'),(75,'Greenfelder, Erdman and Davis','Marshall_Weber@hotmail.com','3314067979',56,'98373000'),(76,'Steuber Group','Tate.Collier48@hotmail.com','4746875601',30,'98502070'),(77,'Wisoky LLC','Harmon_Thiel8@gmail.com','8221157292',37,'98257088'),(78,'Howell - Labadie','Ahmed8@yahoo.com','4181535589',30,'99613594'),(79,'Schmeler, Lubowitz and Moen','Norberto_Haley84@hotmail.com','2999634061',25,'99378248'),(80,'Hilpert - O\'Reilly','Pearl_Reichert73@hotmail.com','5208086034',44,'99413148');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-25 17:15:18
