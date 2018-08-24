-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: golux_blog_development
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.18.04.1

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2018-08-06 13:41:34','2018-08-06 13:41:34');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'Dušan Kecman','Dušan Kecman (srp. ćirilica: Душан Кецман; Beograd, 6. studenog 1977.) je srpski profesionalni košarkaš. Igra na poziciji niskog krila, a trenutačno je član srpskog Partizana.\r\nDušan Kecman postao je medijska zvijezda u Srbiji 25. travnja 2010. godine, kada je u završnoj utakmici NLB lige, odigranoj u zagrebačkoj Areni, protiv domaće Cibone s više od pola igrališta, šest desetinki prije isteka produžetka postigao pogodak za tri poena, čime je Partizan četvrti put uzastopno osvojio ovo natjecanje.','2018-08-07 15:09:30','2018-08-13 10:21:09',1,'kecman.jpg','image/jpeg',96802,'2018-08-13 10:21:09'),(2,'Nele Karajlić','Nenad Janković alias Nele Karajlić je muzičar, kompozitor, glumac i režiser nekadašnjih TV-emisija u Bosni i Hercegovini. Tokom 1980-ih bio poznat kao pjevač grupe Zabranjeno pušenje i glumac u popularnoj TV-seriji Top Lista Nadrealista. Do aprila 1992. živio je u Sarajevu, nakon čega je otišao u Beograd, gdje je osnovao novi bend pod imenom \"The No Smoking Orchestra\".\r\n\r\n\r\n','2018-08-07 15:12:33','2018-08-13 10:22:36',1,'nele-karajlic.jpg','image/jpeg',53657,'2018-08-13 10:22:36'),(3,' Prljavi Inspektor Blaža i Kljunovi1 ','U jesen 1993. godine na spontanom okupljanju u klubu SKC-a svirali su Arigo Saki gitaru, Voja bubanj, Deki iz Novog Sada bas a Blaža je pevao, svirao, lomio akustičnu gitaru i puštao filmove sa pornografskom tematikom.\r\n\r\nOvaj koncept se pokazao kao dobar medju ljubiteljima alkohola i ex-yu rokenrola, tako da pomenuta četvorka razmišlja kako da materijalizuje novonastalu situaciju.\r\n\r\nRešenje se nametnulo samo po sebi kada je Blaža na probu doveo čoveka sa dugom kosom u crnoj kožnoj jakni i rekao „Ovo je gazda Milutin!“','2018-08-07 15:15:25','2018-08-13 10:23:33',1,'blaza.jpg','image/jpeg',11921,'2018-08-13 10:23:33'),(4,'Edward Norton','Edward Harrison Norton (Boston, 18. kolovoza 1969.) američki je filmski glumac i redatelj, dobitnik Zlatnoga globusa te dviju nominacija za prestižnu nagradu Oscar. Najpoznatije uloge ostvario je u filmovima Iskonski strah, Generacija X i Klub boraca. \r\nPreselivši se u New York, Norton započinje glumačku karijeru u Off-Broadway kazalištu. Tamo zapažen dobiva svoje prve filmske uloge, uglavnom mračnih i grotesknih likova. Veliki proboj ostvaruje 1996. ulogom Aarona Stamplera u filmu Iskonski strah. U glavnoj se ulozi našao Richard Gere, a Norton je, nakon što je Leonardo DiCaprio odbio ulogu, prošao na audiciji između 2000 prijavljenih kandidata. Tada 27-godišnji Norton za prikaz poremećenoga mladića optuženog da je počinio teško ubojstvo osvaja Zlatni globus te nominaciju za Oscara u kategoriji najboljega sporednog glumca. Ubrzo su filmske ponude počele pljuštati sa svih strana. Iste je godine zaigrao u filmovima Svi kažu volim te Woodyja Allena te Narod protiv Larryja Flinta. ','2018-08-07 15:16:41','2018-08-13 10:24:52',1,'norton.jpg','image/jpeg',20004,'2018-08-13 10:24:52'),(5,'Stenli Kjubrik','tenli Kjubrik (engl. Stanley Kubrick; rođen 26. jula 1928. na Menhetnu, Njujork, SAD — 7. marta 1999. u Čildvikberi Mejnoru kraj Londona, Engleska) bio je američki filmski režiser koji je većinu svojih filmova snimio u Engleskoj. U svojoj je pedesetogodišnjoj karijeri stvorio značajan opus od trinaest dugometražnih filmova od kojih se mnogi smatraju klasičnim ostvarenjima filmske umetnosti.\r\n\r\nKjubrikovi filmovi su većinom književne adaptacije, karakteristični po svojoj tehničkoj savršenosti, inventivnom pristupu filmskom scenariju i okrutnoj ciničnoj dosetljivosti. Njegova najpoznatija dela su hladnoratovska satira Dr Strejndžlav (1964), poznati naučno fantastični film Odiseja u svemiru 2001, poznati horor film Isijavanje (1980) i Paklena pomorandža, čiji je prikaz nasilja izazvao mnoge kontroverze kad se pojavio 1971. godine.\r\n\r\nGodine 1999, nakon dugog snimanja neobičnog erotskog trilera s Tomom Kruzom i Nikol Kidman, Širom zatvorenih očiju, Kjubrik je preminuo. ','2018-08-07 15:25:50','2018-08-13 10:26:53',1,'stenli.jpeg','image/jpeg',8081,'2018-08-13 10:26:53'),(6,'Ingrid Bergman','Ingrid Bergman (Stockholm, 29. kolovoza 1915. - London, 29. kolovoza 1982.), švedska filmska i kazališna glumica, trostruka dobitnica Oscara. Američki filmski institut proglasio ju je četvrtom najvećom ženskom glumačkom zvijezdom u povijesti. \r\nNakon što je završila posljednji film u Švedskoj i nastupila u tri srednje uspješna američka filma, Bergman se pridružila Humphreyju Bogartu u klasičnom filmu iz 1942., Casablanca, koja ostaje njezina najpoznatija uloga.\r\n\r\nIste godine ja zaradila nominaciju za Oscara za najbolju glumicu za film Kome zvono zvoni (1943.), koji je bio njezin prvi film u boji. Sljedeće godine je osvojila Oscara kao najbolja glumica u filmu Plinsko svjetlo (1944.). Treću uzastopnu nominaciju zaradila je ulogom redovnice u filmu Zvona Svete Marije. ','2018-08-07 16:32:47','2018-08-13 10:28:22',1,'ingrid-bergman-getty-crop.jpg','image/jpeg',25180,'2018-08-13 10:28:22'),(8,'Milan Mladenović','Milan Mladenović (21. rujna 1958. - 5. studenog 1994.) bio je jugoslovenski rock glazbenik, najpoznatiji kao pjevač i gitarist beogradske rock skupine Ekatarina Velika. \r\nEkatarina Velika\r\n\r\n    Ekatarina Velika (RTV LJ, 1984.)\r\n    S\' vetrom uz lice (RTV LJ, 1986.)\r\n    Ljubav (PGP-RTB, 1987.)\r\n    Samo par godina za nas (PGP-RTB, 1988.)\r\n    Dum dum (PGP-RTB, 1991.)\r\n    Neko nas posmatra (PGP-RTS, 1993.)','2018-08-07 21:25:30','2018-08-13 10:30:49',4,'milana.jpg','image/jpeg',34706,'2018-08-13 10:30:49'),(9,'Margita Stefanović','Rođena je kao jedinica u obitelji beogradskog kazališnog i TV-redatelja Slavoljuba Stefanovića-Ravasija.\r\n\r\nSrednju glazbenz školu završava u klasi s Ivom Pogorelićem sa kojim uzima privatne sate kod ruskog profesora Timikina. Kao apsolutni sluhista i uz Pogorelića najtalentiranija u klasi dobija ponudu za nastavak školovanja na moskovskom konzervatorijumu. Ponudu odbija i u Beogradu upisuje studij arhitekture koji uspešno završava 1984. Kao student osvaja treću nagradu na međunarodnom natječaju u Japanu za rad na temu uređenja crnogorskog sela Reževići. Istovremeno važi i za jednog od najtalentiranijih klasičnih pijanista.\r\n\r\n','2018-08-07 21:26:38','2018-08-13 10:31:23',4,'magi.png','image/png',106704,'2018-08-13 10:31:23'),(10,'Dragoljub Đuričić','Dragoljub Đuričić je muzičar iz Crne Gore, a trenutno živi i radi u Srbiji. On je poznat po tome što je svirao bubnjeve u raznim bendovima u bivšoj Jugoslaviji. zmeđu ostalog, svoje umjetničke kreacije, završio je rad na muziku za 20 pozorišnih predstava, među kojima su: Art, Rezervoar Psi, Closer, policajci, Burn To, Pop Corn.\r\nOn je komponovao muziku za balet \"Dr. Jekyll i Mr. Hyde\" u Narodnom pozorištu, koji je nagrađen kao najbolji predstavu. Tokom demonstracija građanskog 1996/1997. predvodio grupu od 30 bubnjara. Da pozdravim 1997. igrao centralnom trgu pred oko milion ljudi koji su u znak protesta protiv tadašnje vlasti su izašli na ulice Beograda. U organizaciji pokreta \"Otpor\", svirao na koncertu pripremljen i serviran u čast Eve 2000. pravoslavne Nove godine pred oko 200.000 ljudi, što je zapravo \"početak kraja\" režima. Igrao je na bezbroj protesta širom Srbije sve do pada režima 2000. godine. ','2018-08-07 21:29:56','2018-08-13 10:32:04',5,'dragoljub.JPG','image/jpeg',53364,'2018-08-13 10:32:04'),(11,'Alisija Vikander','Alisija Vikander (šve. Alicia Vikander; rođena 3. oktobra 1988. u Geteborgu ) švedska je glumica. Tokom 2015. nastupila je u sedam projekta: epskom filmu Sedmi sin, naučnofantastičnom trileru Eks mahina, špijunskoj komediji Čovek iz U.N.C.L.E. i dramama Doba lala, Adam Džouns, Svetlost između oceana i Danska devojka (film za koji je dobila Oskara). the end. ','2018-08-07 22:26:02','2018-08-13 10:32:38',6,'Alicia-Vikander.jpg','image/jpeg',44014,'2018-08-13 10:32:38'),(12,'Voce','Oprano voce je spremno za jelo','2018-08-13 10:13:47','2018-08-13 10:13:47',1,'nick-sarro-139765.jpg','image/jpeg',1203227,'2018-08-13 10:13:45'),(13,'test naslov','test body','2018-08-13 12:12:02','2018-08-13 12:12:02',4,'thomas-rohlfs-42517.jpg','image/jpeg',3086459,'2018-08-13 12:12:01');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` text,
  `user_id` int(11) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (4,'Moja omiljena pesma je Meteor.',1,2,'2018-08-10 17:30:00','2018-08-10 17:30:00'),(5,'Blaza je stvarno jedna interesantna licnost',1,3,'2018-08-10 17:32:22','2018-08-10 17:32:22'),(6,'Ipak je nekako lepsa Kanjon Drine',4,2,'2018-08-10 17:40:45','2018-08-10 17:40:45'),(7,'Jeste, svi ga vole.',4,3,'2018-08-10 17:42:39','2018-08-10 17:42:39'),(8,'Stenli <3',4,5,'2018-08-10 17:44:14','2018-08-10 17:44:14'),(9,'nesto komentarisem',4,1,'2018-08-15 10:14:01','2018-08-15 10:14:01'),(10,'samo sekund da proverim',4,1,'2018-08-15 10:19:02','2018-08-15 10:19:02'),(11,'komentarisem',1,2,'2018-08-15 11:37:57','2018-08-15 11:37:57'),(12,'sad',1,1,'2018-08-15 11:39:55','2018-08-15 11:39:55'),(13,'komkom',1,1,'2018-08-15 18:15:01','2018-08-15 18:15:01'),(14,'k',1,2,'2018-08-15 19:26:53','2018-08-15 19:26:53');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourites`
--

DROP TABLE IF EXISTS `favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favourites` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourites`
--

LOCK TABLES `favourites` WRITE;
/*!40000 ALTER TABLE `favourites` DISABLE KEYS */;
INSERT INTO `favourites` VALUES (1,1,1,'2018-08-15 20:40:05','2018-08-16 07:36:11',0),(2,1,2,'2018-08-15 23:01:38','2018-08-16 07:14:58',0),(3,1,3,'2018-08-15 23:01:46','2018-08-15 23:01:46',1),(4,1,4,'2018-08-16 07:29:28','2018-08-16 07:35:54',0);
/*!40000 ALTER TABLE `favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_user` varchar(30) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'main_admin','2018-08-07 23:42:53','2018-08-07 23:42:53'),(2,'admin','2018-08-07 23:44:00','2018-08-07 23:44:00'),(3,'user','2018-08-11 10:42:39','2018-08-11 10:42:39');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20180806134027'),('20180807143627'),('20180807154355'),('20180807232328'),('20180807232457'),('20180807232807'),('20180813095116'),('20180815085923'),('20180815094851');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `role_id` int(11) DEFAULT '2',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'lekaknezevic97@gmail.com','$2a$11$GPWgXEK591ZfrpF4phqZyuVQm3zilvGlNQQHTOI7GOWLezDC9MHvu',NULL,NULL,NULL,34,'2018-08-16 07:11:33','2018-08-16 07:10:00','127.0.0.1','127.0.0.1','2018-08-06 13:44:27','2018-08-16 07:11:33',1),(2,'nesto@gmail.com','$2a$11$IGnWS0nljYPTeYys7rJZReKUBgIEAPRer4rzJ5luA973I5qllUizy',NULL,NULL,NULL,1,'2018-08-06 17:21:58','2018-08-06 17:21:58','127.0.0.1','127.0.0.1','2018-08-06 17:21:58','2018-08-15 20:21:27',3),(3,'neko@gmail.com','$2a$11$dcWD0UUukEwGgCQXGcWhYuJPUcxnf7kXc9FbjVUWUWNQQdpfh9T/q',NULL,NULL,NULL,1,'2018-08-06 19:44:57','2018-08-06 19:44:57','127.0.0.1','127.0.0.1','2018-08-06 19:44:57','2018-08-06 19:44:57',3),(4,'milica@gmail.com','$2a$11$41XYFYgE6CMJ.zXEjaSKLuwoVEwgnWiDLJQsUlKEorEhi2lIRwanO',NULL,NULL,NULL,10,'2018-08-15 08:28:41','2018-08-13 12:10:58','127.0.0.1','127.0.0.1','2018-08-07 21:23:34','2018-08-15 08:28:41',2),(5,'vukasin@gmail.com','$2a$11$QxxYkBMHlMhjWYOXKSciEOrDI/QUug0ARfoMi4fTshV7yV.BUNSMm',NULL,NULL,NULL,1,'2018-08-07 21:28:19','2018-08-07 21:28:19','127.0.0.1','127.0.0.1','2018-08-07 21:28:19','2018-08-13 07:54:03',2),(6,'velimirovic@gmail.com','$2a$11$pPvyjzcF1Qkk4TAwiDpQve2UUAl6P.EB8Yj3yCGWY.Sh7Bp3ppN6C',NULL,NULL,NULL,1,'2018-08-07 21:50:03','2018-08-07 21:50:03','127.0.0.1','127.0.0.1','2018-08-07 21:50:03','2018-08-13 07:53:30',2),(7,'ana@gmail.com','$2a$11$Z7kKO0ibazPrKc8/kgl8J.0jUcIhE5a59JI2yNCZ8nzsZYqUwxjTa',NULL,NULL,NULL,1,'2018-08-08 09:15:47','2018-08-08 09:15:47','127.0.0.1','127.0.0.1','2018-08-08 09:15:47','2018-08-15 20:23:19',3),(8,'savo@gmail.com','$2a$11$0GQAcVzFpes1CMSAFVcpH.7WmifxvCb7YlJA97vkVhLzsYhJ.9nby',NULL,NULL,NULL,1,'2018-08-10 18:53:32','2018-08-10 18:53:32','127.0.0.1','127.0.0.1','2018-08-10 18:53:32','2018-08-10 18:53:32',3),(9,'mi16009@alas.matf.bg.ac.rs','$2a$11$/o3DnVOy/Xi1hosNcET32eJmvN6h/g8y5VefyH2SKNgG.HNlPj2.G',NULL,NULL,NULL,1,'2018-08-14 11:03:54','2018-08-14 11:03:54','127.0.0.1','127.0.0.1','2018-08-14 11:03:54','2018-08-14 11:03:54',2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-16  9:43:28
