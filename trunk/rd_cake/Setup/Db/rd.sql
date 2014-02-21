-- MySQL dump 10.13  Distrib 5.1.63, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: rd
-- ------------------------------------------------------
-- Server version	5.1.63-0ubuntu0.10.04.1

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
-- Table structure for table `acos`
--

DROP TABLE IF EXISTS `acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acos`
--

LOCK TABLES `acos` WRITE;
/*!40000 ALTER TABLE `acos` DISABLE KEYS */;
INSERT INTO `acos` VALUES (29,NULL,NULL,NULL,'Access Providers','A container with rights available to Access Providers - DO NOT DELETE!!',1,392),(30,NULL,NULL,NULL,'Permanent Users','A container with rights for Permanent Users - DO NOT DELETE!!',393,398),(31,29,NULL,NULL,'Controllers','A container with the various controllers and their actions which can be used by the Access Providers',2,381),(32,29,NULL,NULL,'Other Rights','A list of other rights which can be configured for an Access Provider',382,391),(33,30,NULL,NULL,'Controllers','A container with the various controllers and their actions which can be used by the Permanent Users',394,395),(34,30,NULL,NULL,'Other Rights','A list of other rights which can be configured for a Permanent User',396,397),(35,NULL,NULL,NULL,'Realms','A list of realms to which an access provider can belong - DO NOT DELETE!!',399,420),(42,32,NULL,NULL,'View users or vouchers not created self','',383,384),(43,31,NULL,NULL,'Vouchers','',3,30),(44,43,NULL,NULL,'index','',4,5),(45,31,NULL,NULL,'PermanentUsers','',31,76),(46,45,NULL,NULL,'index','',32,33),(58,31,NULL,NULL,'AccessProviders','Access Providers can only do these actions on any access provider that is a child of the Access Provider',77,100),(59,58,NULL,NULL,'index','Without this right, the Access Providers option will not be shown in the Access Provider\'s menu',78,79),(60,58,NULL,NULL,'add','Without this right an Access Provider will not be able to create Access Provider children',80,81),(61,58,NULL,NULL,'edit','',82,83),(62,58,NULL,NULL,'delete','',84,85),(63,32,NULL,NULL,'Can Change Rights','This is a key option to allow an Access Provider the ability to change the rights of any of his Access Provider children',385,386),(64,32,NULL,NULL,'Can disable activity recording','Can disable Activity Recording on Access Provider children',387,388),(65,58,NULL,NULL,'change_password','',86,87),(67,31,NULL,NULL,'Realms','',101,126),(68,67,NULL,NULL,'index','',102,103),(69,67,NULL,NULL,'add','',104,105),(70,67,NULL,NULL,'edit','',106,107),(71,67,NULL,NULL,'delete','',108,109),(102,31,NULL,NULL,'Nas','Nas Devices - These rights are also considering the hierarchy of the Access Provider',127,182),(103,102,NULL,NULL,'index','Without this right there will be no NAS Devices in the AP\'s menu',128,129),(104,102,NULL,NULL,'add','',130,131),(105,102,NULL,NULL,'edit','',132,133),(106,102,NULL,NULL,'delete','',134,135),(107,31,NULL,NULL,'Tags','Tags for NAS Devices',183,202),(108,107,NULL,NULL,'index','Without this right, there will be no NAS Device tags in the AP\'s menu',184,185),(109,107,NULL,NULL,'add','',186,187),(110,107,NULL,NULL,'edit','',188,189),(111,107,NULL,NULL,'delete','',190,191),(112,102,NULL,NULL,'manage_tags','Attach or remove tags to NAS devices',136,137),(113,107,NULL,NULL,'export_csv','Exporting the display from the grid to CSV',192,193),(114,107,NULL,NULL,'index_for_filter','A list for of tags to display on the filter field on the Access Provider grid',194,195),(115,107,NULL,NULL,'note_index','List notes',196,197),(116,107,NULL,NULL,'note_add','',198,199),(117,107,NULL,NULL,'note_del','Remove a note of a NAS Tag',200,201),(118,102,NULL,NULL,'export_csv','Exporting the display of the grid to CSV',138,139),(119,102,NULL,NULL,'note_index','List notes',140,141),(120,102,NULL,NULL,'note_add','',142,143),(121,102,NULL,NULL,'note_del','',144,145),(122,67,NULL,NULL,'export_csv','',110,111),(123,67,NULL,NULL,'index_for_filter','',112,113),(124,67,NULL,NULL,'note_index','',114,115),(125,67,NULL,NULL,'note_add','',116,117),(126,67,NULL,NULL,'note_del','',118,119),(127,58,NULL,NULL,'export_csv','',88,89),(128,58,NULL,NULL,'note_index','',90,91),(129,58,NULL,NULL,'note_add','',92,93),(130,58,NULL,NULL,'note_del','',94,95),(132,31,NULL,NULL,'AcosRights','Controller to manage the Rights Tree',203,208),(133,132,NULL,NULL,'index_ap','List the rights of a specific AP',204,205),(134,132,NULL,NULL,'edit_ap','Modify the rights of a specific AP by another AP',206,207),(137,31,NULL,NULL,'Devices','Devices belonging to PermanentUsers',209,246),(138,137,NULL,NULL,'index','',210,211),(142,35,'DynamicDetail',3,'SA Coast - Struisbaai',NULL,404,405),(146,35,'Realm',30,'Residence Inn',NULL,406,407),(148,35,'Realm',31,'Holiday Inn',NULL,408,409),(149,43,NULL,NULL,'add','',6,7),(150,43,NULL,NULL,'delete','',8,9),(151,31,NULL,NULL,'Desktop','',247,254),(152,151,NULL,NULL,'desktop_shortcuts','',248,249),(153,151,NULL,NULL,'change_password','',250,251),(154,151,NULL,NULL,'save_wallpaper_selection','',252,253),(155,35,'Realm',32,'Simpsons Home',NULL,410,411),(156,43,NULL,NULL,'view_basic_info','',10,11),(157,43,NULL,NULL,'edit_basic_info','',12,13),(158,43,NULL,NULL,'private_attr_index','',14,15),(159,43,NULL,NULL,'private_attr_add','',16,17),(160,43,NULL,NULL,'private_attr_edit','',18,19),(161,43,NULL,NULL,'private_attr_delete','',20,21),(162,43,NULL,NULL,'change_password','',22,23),(163,43,NULL,NULL,'export_csv','',24,25),(164,43,NULL,NULL,'export_pdf','',26,27),(165,67,NULL,NULL,'index_ap','',120,121),(166,31,NULL,NULL,'Profiles','',255,276),(167,166,NULL,NULL,'index','',256,257),(168,166,NULL,NULL,'index_ap','Dropdown list based on selected Access Provider owner',258,259),(169,166,NULL,NULL,'add','',260,261),(170,166,NULL,NULL,'manage_components','',262,263),(171,166,NULL,NULL,'delete','',264,265),(172,166,NULL,NULL,'index_for_filter','',266,267),(173,166,NULL,NULL,'note_index','',268,269),(174,166,NULL,NULL,'note_add','',270,271),(175,166,NULL,NULL,'note_del','',272,273),(176,31,NULL,NULL,'Radaccts','',277,288),(177,176,NULL,NULL,'export_csv','',278,279),(178,176,NULL,NULL,'index','',280,281),(179,176,NULL,NULL,'delete','',282,283),(180,176,NULL,NULL,'kick_active','',284,285),(181,176,NULL,NULL,'close_open','',286,287),(182,43,NULL,NULL,'delete_accounting_data','',28,29),(184,45,NULL,NULL,'add','',34,35),(185,45,NULL,NULL,'delete','',36,37),(186,45,NULL,NULL,'view_basic_info','',38,39),(187,45,NULL,NULL,'edit_basic_info','',40,41),(188,45,NULL,NULL,'view_personal_info','',42,43),(189,45,NULL,NULL,'edit_personal_info','',44,45),(190,45,NULL,NULL,'private_attr_index','',46,47),(191,45,NULL,NULL,'private_attr_add','',48,49),(192,45,NULL,NULL,'private_attr_edit','',50,51),(193,45,NULL,NULL,'private_attr_delete','',52,53),(194,45,NULL,NULL,'change_password','',54,55),(195,45,NULL,NULL,'enable_disable','',56,57),(196,45,NULL,NULL,'export_csv','',58,59),(197,45,NULL,NULL,'note_index','',60,61),(198,137,NULL,NULL,'add','',212,213),(199,137,NULL,NULL,'delete','',214,215),(200,137,NULL,NULL,'view_basic_info','',216,217),(201,137,NULL,NULL,'edit_basic_info','',218,219),(202,137,NULL,NULL,'private_attr_index','',220,221),(203,137,NULL,NULL,'private_attr_add','',222,223),(204,137,NULL,NULL,'private_attr_edit','',224,225),(205,137,NULL,NULL,'private_attr_delete','',226,227),(206,137,NULL,NULL,'enable_disable','',228,229),(207,137,NULL,NULL,'export_csv','',230,231),(208,137,NULL,NULL,'note_index','',232,233),(209,31,NULL,NULL,'FreeRadius','',289,294),(210,209,NULL,NULL,'test_radius','',290,291),(211,209,NULL,NULL,'index','Displays the stats of the FreeRADIUS server',292,293),(212,31,NULL,NULL,'Radpostauths','',295,304),(213,212,NULL,NULL,'index','',296,297),(214,212,NULL,NULL,'add','',298,299),(215,212,NULL,NULL,'delete','',300,301),(221,212,NULL,NULL,'export_csv','',302,303),(223,67,NULL,NULL,'update_na_realm','',122,123),(224,102,NULL,NULL,'add_direct','',146,147),(225,102,NULL,NULL,'add_open_vpn','',148,149),(226,102,NULL,NULL,'add_dynamic','',150,151),(227,102,NULL,NULL,'add_pptp','',152,153),(228,102,NULL,NULL,'view_openvpn','',154,155),(229,102,NULL,NULL,'edit_openvpn','',156,157),(230,102,NULL,NULL,'view_pptp','',158,159),(231,102,NULL,NULL,'edit_pptp','',160,161),(232,102,NULL,NULL,'view_dynamic','',162,163),(233,102,NULL,NULL,'edit_dynamic','',164,165),(234,102,NULL,NULL,'view_nas','',166,167),(235,102,NULL,NULL,'edit_nas','',168,169),(236,102,NULL,NULL,'view_photo','',170,171),(237,102,NULL,NULL,'upload_photo','',172,173),(238,102,NULL,NULL,'view_map_pref','',174,175),(239,102,NULL,NULL,'edit_map_pref','',176,177),(240,102,NULL,NULL,'delete_map','',178,179),(241,102,NULL,NULL,'edit_map','',180,181),(243,67,NULL,NULL,'view','',124,125),(244,35,'Realm',34,'Residence Inn',NULL,412,413),(245,35,'Realm',35,'College',NULL,414,415),(246,45,NULL,NULL,'restrict_list_of_devices','',62,63),(247,45,NULL,NULL,'edit_tracking','',64,65),(248,45,NULL,NULL,'view_tracking','',66,67),(249,45,NULL,NULL,'note_add','',68,69),(250,45,NULL,NULL,'note_del','',70,71),(251,137,NULL,NULL,'note_add','',234,235),(252,137,NULL,NULL,'note_del','',236,237),(253,137,NULL,NULL,'view_tracking','',238,239),(254,137,NULL,NULL,'edit_tracking','',240,241),(255,137,NULL,NULL,'note_add','',242,243),(256,137,NULL,NULL,'note_del','',244,245),(258,31,NULL,NULL,'ProfileComponents','',305,320),(259,258,NULL,NULL,'index','',306,307),(260,258,NULL,NULL,'add','',308,309),(261,258,NULL,NULL,'edit','',310,311),(262,258,NULL,NULL,'delete','',312,313),(263,258,NULL,NULL,'note_index','',314,315),(264,258,NULL,NULL,'note_add','',316,317),(265,258,NULL,NULL,'note_del','',318,319),(266,166,NULL,NULL,'export_csv','',274,275),(267,31,NULL,NULL,'NaStates','',321,326),(268,267,NULL,NULL,'index','',322,323),(269,267,NULL,NULL,'delete','',324,325),(271,58,NULL,NULL,'view','',96,97),(272,58,NULL,NULL,'enable_disable','',98,99),(275,31,NULL,NULL,'DynamicDetails','',327,372),(276,275,NULL,NULL,'export_csv','',328,329),(277,275,NULL,NULL,'index','',330,331),(278,275,NULL,NULL,'add','',332,333),(279,275,NULL,NULL,'edit','',334,335),(280,275,NULL,NULL,'delete','',336,337),(281,275,NULL,NULL,'view','',338,339),(282,275,NULL,NULL,'upload_logo','',340,341),(283,275,NULL,NULL,'index_photo','',342,343),(284,275,NULL,NULL,'upload_photo','',344,345),(285,275,NULL,NULL,'delete_photo','',346,347),(286,275,NULL,NULL,'edit_photo','',348,349),(287,275,NULL,NULL,'index_page','',350,351),(288,275,NULL,NULL,'add_page','',352,353),(289,275,NULL,NULL,'edit_page','',354,355),(290,275,NULL,NULL,'delete_page','',356,357),(291,275,NULL,NULL,'index_pair','',358,359),(292,275,NULL,NULL,'add_pair','',360,361),(293,275,NULL,NULL,'edit_pair','',362,363),(294,275,NULL,NULL,'delete_pair','',364,365),(295,275,NULL,NULL,'note_index','',366,367),(296,275,NULL,NULL,'note_add','',368,369),(297,275,NULL,NULL,'note_del','',370,371),(299,45,NULL,NULL,'auto_mac_on_off','',72,73),(300,32,NULL,NULL,'Password Manager Only','Enabling this option will allow the Access Provider ONLY access to the Password Manager applet',389,390),(301,45,NULL,NULL,'view_password','',74,75),(302,31,NULL,NULL,'Actions','',373,380),(303,302,NULL,NULL,'index','',374,375),(304,302,NULL,NULL,'add','',376,377),(305,302,NULL,NULL,'delete','',378,379),(306,35,'Realm',36,'realm_freddy',NULL,416,417),(307,35,'DynamicDetail',4,'test',NULL,418,419);
/*!40000 ALTER TABLE `acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `na_id` int(10) NOT NULL,
  `action` enum('execute') DEFAULT 'execute',
  `command` varchar(500) DEFAULT '',
  `status` enum('awaiting','fetched','replied') DEFAULT 'awaiting',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aros`
--

DROP TABLE IF EXISTS `aros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3277 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros`
--

LOCK TABLES `aros` WRITE;
/*!40000 ALTER TABLE `aros` DISABLE KEYS */;
INSERT INTO `aros` VALUES (3115,NULL,'Group',8,NULL,1,4),(3116,NULL,'Group',9,NULL,5,18),(3117,NULL,'Group',10,NULL,19,188),(3118,3115,'User',44,NULL,2,3),(3154,3117,'User',70,NULL,20,21),(3155,3117,'User',71,NULL,22,23),(3156,3117,'User',72,NULL,24,25),(3157,3117,'User',73,NULL,26,27),(3158,3117,'User',74,NULL,28,29),(3159,3117,'User',75,NULL,30,31),(3160,3117,'User',76,NULL,32,33),(3161,3117,'User',77,NULL,34,35),(3162,3117,'User',78,NULL,36,37),(3165,3117,'User',81,NULL,38,39),(3166,3117,'User',82,NULL,40,41),(3167,3117,'User',83,NULL,42,43),(3168,3117,'User',84,NULL,44,45),(3169,3117,'User',85,NULL,46,47),(3170,3117,'User',86,NULL,48,49),(3171,3117,'User',87,NULL,50,51),(3172,3117,'User',88,NULL,52,53),(3173,3117,'User',89,NULL,54,55),(3175,3117,'User',91,NULL,56,57),(3176,3117,'User',92,NULL,58,59),(3177,3117,'User',93,NULL,60,61),(3178,3117,'User',94,NULL,62,63),(3179,3117,'User',95,NULL,64,65),(3180,3117,'User',96,NULL,66,67),(3181,3117,'User',97,NULL,68,69),(3182,3117,'User',98,NULL,70,71),(3183,3117,'User',99,NULL,72,73),(3184,3117,'User',100,NULL,74,75),(3185,3117,'User',101,NULL,76,77),(3186,3117,'User',102,NULL,78,79),(3187,3117,'User',103,NULL,80,81),(3188,3117,'User',104,NULL,82,83),(3189,3117,'User',105,NULL,84,85),(3190,3117,'User',106,NULL,86,87),(3191,3117,'User',107,NULL,88,89),(3192,3117,'User',108,NULL,90,91),(3193,3117,'User',109,NULL,92,93),(3194,3117,'User',110,NULL,94,95),(3195,3117,'User',111,NULL,96,97),(3196,3117,'User',112,NULL,98,99),(3197,3117,'User',113,NULL,100,101),(3198,3117,'User',114,NULL,102,103),(3199,3117,'User',115,NULL,104,105),(3200,3117,'User',116,NULL,106,107),(3201,3117,'User',117,NULL,108,109),(3202,3117,'User',118,NULL,110,111),(3203,3117,'User',119,NULL,112,113),(3204,3117,'User',120,NULL,114,115),(3205,3117,'User',121,NULL,116,117),(3206,3117,'User',122,NULL,118,119),(3207,3117,'User',123,NULL,120,121),(3208,3117,'User',124,NULL,122,123),(3209,3117,'User',125,NULL,124,125),(3210,3117,'User',126,NULL,126,127),(3211,3117,'User',127,NULL,128,129),(3212,3117,'User',128,NULL,130,131),(3213,3117,'User',129,NULL,132,133),(3214,3117,'User',130,NULL,134,135),(3215,3117,'User',131,NULL,136,137),(3216,3117,'User',132,NULL,138,139),(3217,3117,'User',133,NULL,140,141),(3218,3117,'User',134,NULL,142,143),(3219,3117,'User',135,NULL,144,145),(3220,3117,'User',136,NULL,146,147),(3221,3117,'User',137,NULL,148,149),(3222,3117,'User',138,NULL,150,151),(3223,3117,'User',139,NULL,152,153),(3224,3117,'User',140,NULL,154,155),(3225,3117,'User',141,NULL,156,157),(3226,3117,'User',142,NULL,158,159),(3227,3117,'User',143,NULL,160,161),(3228,3117,'User',144,NULL,162,163),(3229,3117,'User',145,NULL,164,165),(3230,3117,'User',146,NULL,166,167),(3231,3117,'User',147,NULL,168,169),(3232,3117,'User',148,NULL,170,171),(3233,3117,'User',149,NULL,172,173),(3234,3117,'User',150,NULL,174,175),(3235,3117,'User',151,NULL,176,177),(3236,3117,'User',152,NULL,178,179),(3244,NULL,'User',160,NULL,189,190),(3248,3116,'User',163,NULL,6,7),(3254,3116,'User',168,NULL,8,9),(3255,3116,'User',169,NULL,10,11),(3257,3117,'User',171,NULL,180,181),(3263,3117,'User',177,NULL,182,183),(3264,3116,'User',178,NULL,12,13),(3268,3116,'User',182,NULL,14,15),(3273,3117,'User',187,NULL,184,185),(3275,3117,'User',189,NULL,186,187),(3276,3116,'User',190,NULL,16,17);
/*!40000 ALTER TABLE `aros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aros_acos`
--

DROP TABLE IF EXISTS `aros_acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros_acos`
--

LOCK TABLES `aros_acos` WRITE;
/*!40000 ALTER TABLE `aros_acos` DISABLE KEYS */;
INSERT INTO `aros_acos` VALUES (16,3116,44,'1','1','1','1'),(17,3116,46,'1','1','1','1'),(18,3116,59,'1','1','1','1'),(19,3116,60,'1','1','1','1'),(20,3116,62,'1','1','1','1'),(21,3116,42,'-1','-1','-1','-1'),(22,3116,61,'1','1','1','1'),(23,3116,63,'-1','-1','-1','-1'),(24,3116,64,'1','1','1','1'),(25,3116,65,'1','1','1','1'),(61,3116,68,'1','1','1','1'),(62,3116,69,'1','1','1','1'),(63,3116,70,'1','1','1','1'),(64,3116,71,'1','1','1','1'),(75,3116,103,'1','1','1','1'),(76,3116,104,'1','1','1','1'),(77,3116,105,'1','1','1','1'),(78,3116,106,'1','1','1','1'),(79,3116,108,'1','1','1','1'),(80,3116,109,'1','1','1','1'),(81,3116,110,'1','1','1','1'),(82,3116,111,'1','1','1','1'),(83,3116,112,'1','1','1','1'),(86,3116,117,'1','1','1','1'),(87,3116,116,'1','1','1','1'),(88,3116,115,'1','1','1','1'),(89,3116,114,'1','1','1','1'),(90,3116,113,'1','1','1','1'),(91,3116,118,'1','1','1','1'),(92,3116,119,'1','1','1','1'),(93,3116,120,'1','1','1','1'),(94,3116,121,'1','1','1','1'),(95,3116,122,'1','1','1','1'),(96,3116,123,'1','1','1','1'),(97,3116,124,'1','1','1','1'),(98,3116,125,'1','1','1','1'),(99,3116,126,'1','1','1','1'),(100,3116,127,'1','1','1','1'),(101,3116,128,'1','1','1','1'),(102,3116,129,'1','1','1','1'),(103,3116,130,'1','1','1','1'),(108,3116,133,'1','1','1','1'),(109,3116,134,'1','1','1','1'),(112,3116,138,'1','1','1','1'),(113,3116,149,'1','1','1','1'),(114,3116,150,'1','1','1','1'),(115,3116,152,'1','1','1','1'),(116,3255,46,'1','1','1','1'),(117,3255,138,'1','1','1','1'),(118,3255,44,'1','1','1','1'),(119,3254,46,'1','1','1','1'),(120,3116,153,'1','1','1','1'),(121,3116,154,'1','1','1','1'),(122,3254,155,'1','1','1','1'),(123,3116,163,'1','1','1','1'),(124,3116,162,'1','1','1','1'),(125,3116,161,'1','1','1','1'),(126,3116,160,'1','1','1','1'),(127,3116,159,'1','1','1','1'),(128,3116,158,'1','1','1','1'),(129,3116,157,'1','1','1','1'),(130,3116,156,'1','1','1','1'),(131,3116,164,'1','1','1','1'),(132,3116,165,'1','1','1','1'),(133,3255,32,'1','1','-1','-1'),(134,3255,148,'-1','-1','-1','-1'),(135,3255,146,'-1','-1','-1','-1'),(136,3254,148,'1','1','1','1'),(137,3254,146,'1','1','1','1'),(138,3116,167,'1','1','1','1'),(139,3116,168,'1','1','1','1'),(140,3116,175,'1','1','1','1'),(141,3116,174,'1','1','1','1'),(142,3116,173,'1','1','1','1'),(143,3116,172,'1','1','1','1'),(144,3116,170,'1','1','1','1'),(145,3116,169,'1','1','1','1'),(146,3116,171,'1','1','1','1'),(147,3116,181,'1','1','1','1'),(148,3116,180,'1','1','1','1'),(149,3116,179,'1','1','1','1'),(150,3116,178,'1','1','1','1'),(151,3116,177,'1','1','1','1'),(152,3116,182,'1','1','1','1'),(153,3116,184,'1','1','1','1'),(154,3116,185,'1','1','1','1'),(155,3116,186,'1','1','1','1'),(156,3116,187,'1','1','1','1'),(157,3116,188,'1','1','1','1'),(158,3116,189,'1','1','1','1'),(159,3116,190,'1','1','1','1'),(160,3116,191,'1','1','1','1'),(161,3116,192,'1','1','1','1'),(162,3116,193,'1','1','1','1'),(163,3116,194,'1','1','1','1'),(164,3116,195,'1','1','1','1'),(165,3116,197,'1','1','1','1'),(166,3116,196,'1','1','1','1'),(167,3116,206,'1','1','1','1'),(168,3116,205,'1','1','1','1'),(169,3116,204,'1','1','1','1'),(170,3116,203,'1','1','1','1'),(171,3116,202,'1','1','1','1'),(172,3116,201,'1','1','1','1'),(173,3116,200,'1','1','1','1'),(174,3116,199,'1','1','1','1'),(175,3116,198,'1','1','1','1'),(176,3116,207,'1','1','1','1'),(177,3116,208,'1','1','1','1'),(178,3255,155,'1','1','1','1'),(179,3254,195,'1','1','1','1'),(180,3116,210,'1','1','1','1'),(181,3116,211,'1','1','1','1'),(183,3116,213,'1','1','1','1'),(184,3116,221,'1','1','1','1'),(185,3116,223,'1','1','1','1'),(186,3116,241,'1','1','1','1'),(187,3116,240,'1','1','1','1'),(188,3116,239,'1','1','1','1'),(189,3116,238,'1','1','1','1'),(190,3116,237,'1','1','1','1'),(191,3116,236,'1','1','1','1'),(192,3116,235,'1','1','1','1'),(193,3116,234,'1','1','1','1'),(194,3116,233,'1','1','1','1'),(195,3116,232,'1','1','1','1'),(196,3116,231,'1','1','1','1'),(197,3116,230,'1','1','1','1'),(198,3116,229,'1','1','1','1'),(199,3116,228,'1','1','1','1'),(200,3116,227,'1','1','1','1'),(201,3116,226,'1','1','1','1'),(202,3116,225,'1','1','1','1'),(203,3116,224,'1','1','1','1'),(204,3116,243,'1','1','1','1'),(205,3268,245,'1','1','1','1'),(206,3116,248,'1','1','1','1'),(207,3116,247,'1','1','1','1'),(208,3116,246,'1','1','1','1'),(209,3116,215,'1','1','1','1'),(210,3116,214,'1','1','1','1'),(211,3116,249,'1','1','1','1'),(212,3116,250,'1','1','1','1'),(213,3116,256,'1','1','1','1'),(214,3116,255,'1','1','1','1'),(215,3116,254,'1','1','1','1'),(216,3116,253,'1','1','1','1'),(217,3116,259,'1','1','1','1'),(218,3116,260,'1','1','1','1'),(219,3116,261,'1','1','1','1'),(220,3116,263,'1','1','1','1'),(221,3116,262,'1','1','1','1'),(222,3116,264,'1','1','1','1'),(223,3116,265,'1','1','1','1'),(224,3116,268,'1','1','1','1'),(225,3116,269,'1','1','1','1'),(226,3116,272,'1','1','1','1'),(227,3116,271,'1','1','1','1'),(229,3116,276,'1','1','1','1'),(230,3116,297,'1','1','1','1'),(231,3116,296,'1','1','1','1'),(232,3116,295,'1','1','1','1'),(233,3116,294,'1','1','1','1'),(234,3116,293,'1','1','1','1'),(235,3116,292,'1','1','1','1'),(236,3116,291,'1','1','1','1'),(237,3116,290,'1','1','1','1'),(238,3116,289,'1','1','1','1'),(239,3116,288,'1','1','1','1'),(240,3116,287,'1','1','1','1'),(241,3116,286,'1','1','1','1'),(242,3116,285,'1','1','1','1'),(243,3116,284,'1','1','1','1'),(244,3116,283,'1','1','1','1'),(245,3116,282,'1','1','1','1'),(246,3116,281,'1','1','1','1'),(247,3116,280,'1','1','1','1'),(248,3116,279,'1','1','1','1'),(249,3116,278,'1','1','1','1'),(250,3116,277,'1','1','1','1'),(251,3116,299,'1','1','1','1'),(252,3116,300,'-1','-1','-1','-1'),(253,3268,300,'-1','-1','-1','-1'),(254,3268,42,'1','1','1','1'),(255,3116,301,'1','1','1','1'),(256,3116,303,'1','1','1','1'),(257,3116,304,'1','1','1','1'),(258,3116,305,'1','1','1','1');
/*!40000 ALTER TABLE `aros_acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_contacts`
--

DROP TABLE IF EXISTS `auto_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_contacts` (
  `id` char(36) NOT NULL,
  `auto_mac_id` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_contacts`
--

LOCK TABLES `auto_contacts` WRITE;
/*!40000 ALTER TABLE `auto_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_devices`
--

DROP TABLE IF EXISTS `auto_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_devices` (
  `mac` varchar(17) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mac`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_devices`
--

LOCK TABLES `auto_devices` WRITE;
/*!40000 ALTER TABLE `auto_devices` DISABLE KEYS */;
INSERT INTO `auto_devices` VALUES ('00-1e-e5-a5-67-a6','dvdwalt');
/*!40000 ALTER TABLE `auto_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_groups`
--

DROP TABLE IF EXISTS `auto_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_groups`
--

LOCK TABLES `auto_groups` WRITE;
/*!40000 ALTER TABLE `auto_groups` DISABLE KEYS */;
INSERT INTO `auto_groups` VALUES (1,'Network','2010-01-04 14:25:46','2010-01-04 14:25:46'),(2,'OpenVPN','2010-01-05 08:58:10','2010-01-05 08:58:10'),(3,'Wireless','2010-01-06 10:47:38','2010-01-06 10:47:38');
/*!40000 ALTER TABLE `auto_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_mac_notes`
--

DROP TABLE IF EXISTS `auto_mac_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_mac_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auto_mac_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_mac_notes`
--

LOCK TABLES `auto_mac_notes` WRITE;
/*!40000 ALTER TABLE `auto_mac_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_mac_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_macs`
--

DROP TABLE IF EXISTS `auto_macs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_macs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(17) NOT NULL,
  `dns_name` varchar(255) NOT NULL DEFAULT '',
  `contact_ip` varchar(17) NOT NULL DEFAULT '',
  `last_contact` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_macs`
--

LOCK TABLES `auto_macs` WRITE;
/*!40000 ALTER TABLE `auto_macs` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_macs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_setups`
--

DROP TABLE IF EXISTS `auto_setups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_setups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auto_group_id` int(11) NOT NULL,
  `auto_mac_id` int(11) NOT NULL,
  `description` varchar(80) NOT NULL,
  `value` varchar(2000) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_setups`
--

LOCK TABLES `auto_setups` WRITE;
/*!40000 ALTER TABLE `auto_setups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_setups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `lft` char(36) DEFAULT NULL,
  `rght` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checks`
--

DROP TABLE IF EXISTS `checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `value` varchar(40) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checks`
--

LOCK TABLES `checks` WRITE;
/*!40000 ALTER TABLE `checks` DISABLE KEYS */;
INSERT INTO `checks` VALUES (2,'radius_restart','1','2013-09-01 20:41:20','2013-09-01 21:20:27');
/*!40000 ALTER TABLE `checks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `iso_code` varchar(2) DEFAULT NULL,
  `icon_file` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (4,'United Kingdom','GB','/cake2/rd_cake/webroot/img/flags/GB.png','2012-10-05 04:55:12','2012-11-23 21:15:38'),(5,'South Africa','ZA','/cake2/rd_cake/webroot/img/flags/ZA.png','2012-10-07 04:30:48','2012-10-07 04:30:48'),(18,'Iran','IR','/cake2/rd_cake/webroot/img/flags/IR.png','2013-01-01 15:27:17','2013-01-01 15:27:17'),(19,'Portugal','PT','/cake2/rd_cake/webroot/img/flags/PT.png','2014-02-11 14:33:37','2014-02-11 14:33:37'),(20,'Spain','ES','/cake2/rd_cake/webroot/img/flags/ES.png','2014-02-20 22:23:55','2014-02-20 22:23:55');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_notes`
--

DROP TABLE IF EXISTS `device_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_notes`
--

LOCK TABLES `device_notes` WRITE;
/*!40000 ALTER TABLE `device_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `last_accept_time` datetime DEFAULT NULL,
  `last_reject_time` datetime DEFAULT NULL,
  `last_accept_nas` varchar(128) DEFAULT NULL,
  `last_reject_nas` varchar(128) DEFAULT NULL,
  `last_reject_message` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `perc_time_used` int(6) DEFAULT NULL,
  `perc_data_used` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES (1,'aa-aa-aa-aa-aa-aa','ll',0,NULL,NULL,NULL,NULL,NULL,187,'2013-09-10 13:20:30','2014-01-10 10:58:57',NULL,NULL);
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynamic_detail_notes`
--

DROP TABLE IF EXISTS `dynamic_detail_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dynamic_detail_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamic_detail_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamic_detail_notes`
--

LOCK TABLES `dynamic_detail_notes` WRITE;
/*!40000 ALTER TABLE `dynamic_detail_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `dynamic_detail_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynamic_details`
--

DROP TABLE IF EXISTS `dynamic_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dynamic_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `icon_file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `phone` varchar(14) NOT NULL DEFAULT '',
  `fax` varchar(14) NOT NULL DEFAULT '',
  `cell` varchar(14) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(128) NOT NULL DEFAULT '',
  `street_no` char(10) NOT NULL DEFAULT '',
  `street` char(50) NOT NULL DEFAULT '',
  `town_suburb` char(50) NOT NULL DEFAULT '',
  `city` char(50) NOT NULL DEFAULT '',
  `country` char(50) NOT NULL DEFAULT '',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `t_c_check` tinyint(1) NOT NULL DEFAULT '0',
  `t_c_url` char(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamic_details`
--

LOCK TABLES `dynamic_details` WRITE;
/*!40000 ALTER TABLE `dynamic_details` DISABLE KEYS */;
INSERT INTO `dynamic_details` VALUES (3,'SA Coast - Struisbaai',1,'1369296799.png','27128037032','27128037033','27128037034','bredasdorp@discovercapeagulhas.co.za','http://www.discovercapeagulhas.co.za/','1','Longstreet','Bredasdorp','Bredasdorp','South Africa',0,0,44,'2013-05-23 09:57:09','2013-10-21 09:10:38',1,'http://www.radiusdesk.com'),(4,'test',0,'logo.jpg','','','','','','','','','','',0,0,44,'2014-01-05 18:23:49','2014-01-05 18:23:49',0,'');
/*!40000 ALTER TABLE `dynamic_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynamic_pages`
--

DROP TABLE IF EXISTS `dynamic_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dynamic_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamic_detail_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamic_pages`
--

LOCK TABLES `dynamic_pages` WRITE;
/*!40000 ALTER TABLE `dynamic_pages` DISABLE KEYS */;
INSERT INTO `dynamic_pages` VALUES (7,3,'Welcome to Struisbaai','<font color=\"0000FF\"><font size=\"3\">You are in a High Speed Internet Zone!<br></font></font><ul><li>Thanks to the vibrant community, you can now enjoy being connected 24/7 @ speeds of up to 10Mb/s</li><li>Ideal for watching HD movies over the Internet</li><li>Budget connectivity is also available <br></li></ul><p><br></p>','2013-05-23 10:30:58','2013-05-28 21:45:59');
/*!40000 ALTER TABLE `dynamic_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynamic_pairs`
--

DROP TABLE IF EXISTS `dynamic_pairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dynamic_pairs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `value` varchar(64) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '1',
  `dynamic_detail_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamic_pairs`
--

LOCK TABLES `dynamic_pairs` WRITE;
/*!40000 ALTER TABLE `dynamic_pairs` DISABLE KEYS */;
INSERT INTO `dynamic_pairs` VALUES (5,'ssid','Struisbaai',1,3,NULL,'2013-05-23 10:32:48','2013-05-28 22:02:38'),(6,'nasid','RADIUSdesk-1',1,3,NULL,'2013-08-21 19:49:38','2013-08-21 19:49:38'),(7,'nasid','cp1',1,3,NULL,'2014-02-13 21:59:43','2014-02-13 21:59:43'),(8,'nasid','cp2',1,3,NULL,'2014-02-13 21:59:55','2014-02-13 21:59:55');
/*!40000 ALTER TABLE `dynamic_pairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynamic_photos`
--

DROP TABLE IF EXISTS `dynamic_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dynamic_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamic_detail_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamic_photos`
--

LOCK TABLES `dynamic_photos` WRITE;
/*!40000 ALTER TABLE `dynamic_photos` DISABLE KEYS */;
INSERT INTO `dynamic_photos` VALUES (16,3,'Animals Welcome','Nice long beaches to go for a walk','1369745727.jpg','2013-05-28 14:55:27','2013-05-28 14:55:27'),(17,3,'Fresh fish daily','The best yellowtail in South Africa','1369745821.jpg','2013-05-28 14:57:01','2013-05-28 14:57:01'),(18,3,'Whiskey on the rocks?','.... or your favourite softdrink','1369745902.jpg','2013-05-28 14:58:22','2013-05-28 14:59:04'),(19,3,'Castles in the sand','Lots of sand for the kids to play in','1369746009.jpg','2013-05-28 15:00:09','2013-05-28 15:00:30'),(20,3,'Rocks rocks rocks','Nature\'s own obstacle course  ','1369746199.jpg','2013-05-28 15:03:19','2013-05-28 15:03:19'),(21,3,'And a road of my own','With the city and the rat race behind me','1369746348.jpg','2013-05-28 15:05:48','2013-05-28 15:06:04'),(22,3,'Sounds of the sea','Where land and water meet','1369746423.jpg','2013-05-28 15:07:03','2013-05-28 15:07:03');
/*!40000 ALTER TABLE `dynamic_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (8,'Administrators','2012-12-10 13:13:09','2012-12-10 13:13:09'),(9,'Access Providers','2012-12-10 13:13:19','2012-12-10 13:13:19'),(10,'Permanent Users','2012-12-10 13:13:28','2012-12-10 13:13:28');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `iso_code` varchar(2) DEFAULT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (4,'English','en',0,'2012-10-05 04:55:28','2012-10-06 07:58:26'),(5,'Afrikaans','af',0,'2012-10-07 04:30:59','2012-10-07 21:15:04'),(13,'Persian','fa',1,'2013-01-01 15:27:33','2013-01-01 15:27:33'),(14,'Portuguese','pt',0,'2014-02-11 14:34:30','2014-02-11 14:38:55'),(15,'Spanish','es',0,'2014-02-20 22:25:28','2014-02-20 22:25:28');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesh_entries`
--

DROP TABLE IF EXISTS `mesh_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesh_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesh_id` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `isolate` tinyint(1) NOT NULL DEFAULT '0',
  `apply_to_all` tinyint(1) NOT NULL DEFAULT '0',
  `encryption` enum('none','wep','psk','psk2','wpa','wpa2') DEFAULT 'none',
  `key` varchar(255) NOT NULL DEFAULT '',
  `auth_server` varchar(255) NOT NULL DEFAULT '',
  `auth_secret` varchar(255) NOT NULL DEFAULT '',
  `dynamic_vlan` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesh_entries`
--

LOCK TABLES `mesh_entries` WRITE;
/*!40000 ALTER TABLE `mesh_entries` DISABLE KEYS */;
INSERT INTO `mesh_entries` VALUES (36,29,'Network broken',0,0,1,'none','','','',0,'2014-02-11 21:30:20','2014-02-14 12:16:57'),(37,29,'Network error',0,0,1,'none','','','',0,'2014-02-11 22:47:33','2014-02-14 12:17:13'),(38,29,'Pik Botha',0,0,1,'none','','','',0,'2014-02-14 10:35:04','2014-02-14 10:35:04'),(43,31,'MWEB',0,1,1,'none','','','',0,'2014-02-18 15:28:38','2014-02-18 15:28:38');
/*!40000 ALTER TABLE `mesh_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesh_exit_captive_portals`
--

DROP TABLE IF EXISTS `mesh_exit_captive_portals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesh_exit_captive_portals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesh_exit_id` int(11) NOT NULL,
  `radius_1` varchar(128) NOT NULL,
  `radius_2` varchar(128) NOT NULL DEFAULT '',
  `radius_secret` varchar(128) NOT NULL,
  `radius_nasid` varchar(128) NOT NULL,
  `uam_url` varchar(255) NOT NULL,
  `uam_secret` varchar(255) NOT NULL,
  `walled_garden` varchar(255) NOT NULL,
  `swap_octets` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesh_exit_captive_portals`
--

LOCK TABLES `mesh_exit_captive_portals` WRITE;
/*!40000 ALTER TABLE `mesh_exit_captive_portals` DISABLE KEYS */;
INSERT INTO `mesh_exit_captive_portals` VALUES (27,23,'192.168.1.103','','testing123','cp1','http://192.168.1.103/cake2/rd_cake/dynamic_details/chilli_browser_detect/','greatsecret','',0,'2014-02-11 21:31:59','2014-02-13 22:29:54'),(28,24,'192.168.1.103','','testing123','cp2','http://192.168.1.103/cake2/rd_cake/dynamic_details/chilli_browser_detect/','greatsecret','192.168.1.103',0,'2014-02-11 22:49:10','2014-02-13 00:59:07');
/*!40000 ALTER TABLE `mesh_exit_captive_portals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesh_exit_mesh_entries`
--

DROP TABLE IF EXISTS `mesh_exit_mesh_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesh_exit_mesh_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesh_exit_id` int(11) NOT NULL,
  `mesh_entry_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesh_exit_mesh_entries`
--

LOCK TABLES `mesh_exit_mesh_entries` WRITE;
/*!40000 ALTER TABLE `mesh_exit_mesh_entries` DISABLE KEYS */;
INSERT INTO `mesh_exit_mesh_entries` VALUES (46,24,37,'2014-02-13 00:59:07','2014-02-13 00:59:07'),(48,23,36,'2014-02-13 22:29:54','2014-02-13 22:29:54'),(50,26,43,'2014-02-19 08:20:33','2014-02-19 08:20:33');
/*!40000 ALTER TABLE `mesh_exit_mesh_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesh_exits`
--

DROP TABLE IF EXISTS `mesh_exits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesh_exits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesh_id` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `type` enum('bridge','tagged_bridge','nat','captive_portal') DEFAULT 'bridge',
  `auto_detect` tinyint(1) NOT NULL DEFAULT '0',
  `vlan` int(4) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesh_exits`
--

LOCK TABLES `mesh_exits` WRITE;
/*!40000 ALTER TABLE `mesh_exits` DISABLE KEYS */;
INSERT INTO `mesh_exits` VALUES (23,29,'cp1','captive_portal',1,1,'2014-02-11 21:31:59','2014-02-13 22:29:54'),(24,29,'cp2','captive_portal',1,1,'2014-02-11 22:49:10','2014-02-13 00:59:07'),(25,29,'lan_br','bridge',1,3,'2014-02-12 23:47:17','2014-02-14 12:17:27'),(26,31,'dhcp_1','nat',1,NULL,'2014-02-18 15:29:50','2014-02-19 08:20:32'),(27,31,'br','bridge',1,NULL,'2014-02-19 08:33:43','2014-02-19 08:33:43');
/*!40000 ALTER TABLE `mesh_exits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesh_notes`
--

DROP TABLE IF EXISTS `mesh_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesh_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesh_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesh_notes`
--

LOCK TABLES `mesh_notes` WRITE;
/*!40000 ALTER TABLE `mesh_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesh_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesh_settings`
--

DROP TABLE IF EXISTS `mesh_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesh_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesh_id` int(11) DEFAULT NULL,
  `ag` tinyint(1) NOT NULL DEFAULT '1',
  `ap` tinyint(1) NOT NULL DEFAULT '0',
  `b` tinyint(1) NOT NULL DEFAULT '0',
  `bl` tinyint(1) NOT NULL DEFAULT '0',
  `f` tinyint(1) NOT NULL DEFAULT '1',
  `it` int(10) NOT NULL DEFAULT '1000',
  `gateway_switching` int(10) NOT NULL DEFAULT '20',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesh_settings`
--

LOCK TABLES `mesh_settings` WRITE;
/*!40000 ALTER TABLE `mesh_settings` DISABLE KEYS */;
INSERT INTO `mesh_settings` VALUES (8,29,1,0,0,0,1,5000,20,'2013-12-26 10:12:37','2014-01-10 12:59:27');
/*!40000 ALTER TABLE `mesh_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meshes`
--

DROP TABLE IF EXISTS `meshes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meshes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `ssid` varchar(32) NOT NULL,
  `bssid` varchar(32) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meshes`
--

LOCK TABLES `meshes` WRITE;
/*!40000 ALTER TABLE `meshes` DISABLE KEYS */;
INSERT INTO `meshes` VALUES (29,'Mega Store - Bloemfontein','02_CA_FE_CA_00_01','02:CA:FE:CA:00:01',44,'2013-11-18 11:38:39','2013-11-18 11:38:39'),(30,'Mega Store - Pretoria','02_CA_FE_CA_00_02','02:CA:FE:CA:00:02',44,'2013-11-18 14:39:36','2013-11-18 14:39:36'),(31,'Hannes','02_CA_FE_CA_00_03','02:CA:FE:CA:00:03',44,'2014-02-15 10:43:15','2014-02-15 10:43:15');
/*!40000 ALTER TABLE `meshes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `na_notes`
--

DROP TABLE IF EXISTS `na_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `na_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `na_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `na_notes`
--

LOCK TABLES `na_notes` WRITE;
/*!40000 ALTER TABLE `na_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `na_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `na_realms`
--

DROP TABLE IF EXISTS `na_realms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `na_realms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `na_id` int(11) NOT NULL,
  `realm_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `na_realms`
--

LOCK TABLES `na_realms` WRITE;
/*!40000 ALTER TABLE `na_realms` DISABLE KEYS */;
INSERT INTO `na_realms` VALUES (1,58,33,'2013-08-24 19:11:47','2013-08-24 19:11:47'),(2,60,35,'2013-10-24 13:08:04','2013-10-24 13:08:04');
/*!40000 ALTER TABLE `na_realms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `na_states`
--

DROP TABLE IF EXISTS `na_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `na_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `na_id` char(36) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `na_states`
--

LOCK TABLES `na_states` WRITE;
/*!40000 ALTER TABLE `na_states` DISABLE KEYS */;
INSERT INTO `na_states` VALUES (2,'60',1,'2013-12-28 13:05:04','2013-12-28 13:05:04'),(3,'60',0,'2013-12-28 13:09:02','2013-12-28 13:09:02'),(4,'60',1,'2013-12-28 13:10:07','2013-12-28 13:10:07'),(5,'60',0,'2013-12-28 13:19:03','2013-12-28 13:19:03'),(6,'60',1,'2013-12-28 13:33:04','2013-12-28 13:33:04'),(7,'60',0,'2013-12-28 13:38:03','2013-12-28 13:38:03');
/*!40000 ALTER TABLE `na_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `na_tags`
--

DROP TABLE IF EXISTS `na_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `na_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `na_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `na_tags`
--

LOCK TABLES `na_tags` WRITE;
/*!40000 ALTER TABLE `na_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `na_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nas`
--

DROP TABLE IF EXISTS `nas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nasname` varchar(128) NOT NULL,
  `shortname` varchar(32) DEFAULT NULL,
  `nasidentifier` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(30) DEFAULT 'other',
  `ports` int(5) DEFAULT NULL,
  `secret` varchar(60) NOT NULL DEFAULT 'secret',
  `server` varchar(64) DEFAULT NULL,
  `community` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT 'RADIUS Client',
  `connection_type` enum('direct','openvpn','pptp','dynamic') DEFAULT 'direct',
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `record_auth` tinyint(1) NOT NULL DEFAULT '0',
  `ignore_acct` tinyint(1) NOT NULL DEFAULT '0',
  `dynamic_attribute` varchar(50) NOT NULL DEFAULT '',
  `dynamic_value` varchar(50) NOT NULL DEFAULT '',
  `monitor` enum('off','ping','heartbeat') DEFAULT 'off',
  `ping_interval` int(5) NOT NULL DEFAULT '600',
  `heartbeat_dead_after` int(5) NOT NULL DEFAULT '600',
  `last_contact` datetime DEFAULT NULL,
  `session_auto_close` tinyint(1) NOT NULL DEFAULT '0',
  `session_dead_time` int(5) NOT NULL DEFAULT '3600',
  `on_public_maps` tinyint(1) NOT NULL DEFAULT '0',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `photo_file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nasname` (`nasname`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nas`
--

LOCK TABLES `nas` WRITE;
/*!40000 ALTER TABLE `nas` DISABLE KEYS */;
INSERT INTO `nas` VALUES (59,'127.0.0.1','localhost','localhost','CoovaChilli',NULL,'testing123','','','RADIUS Client','direct',0,0,0,'','','off',600,600,NULL,0,3600,0,NULL,NULL,'logo.jpg',44,'2013-08-24 22:02:18','2013-10-03 10:25:15'),(60,'10.120.0.1','one','one','Mikrotik-Heartbeat',NULL,'one','','AB-AB-AB-AB-AB-AB','RADIUS Client','dynamic',0,0,0,'NAS-Identifier','one','heartbeat',600,300,'2013-12-28 13:32:54',0,3600,0,-25.7382839171877,28.301797389651,'logo.jpg',182,'2013-10-24 13:08:04','2014-02-19 12:32:53'),(61,'10.120.0.2','cp1','','other',NULL,'testing123',NULL,NULL,'RADIUS Client','dynamic',0,0,0,'NAS-Identifier','cp1','off',600,600,NULL,0,3600,0,NULL,NULL,'logo.jpg',44,'2014-02-13 21:54:10','2014-02-13 21:54:10'),(62,'10.120.0.3','cp2','','other',NULL,'testing123',NULL,NULL,'RADIUS Client','dynamic',0,0,0,'NAS-Identifier','cp2','off',600,600,NULL,0,3600,0,NULL,NULL,'logo.jpg',44,'2014-02-13 21:54:52','2014-02-19 12:09:39'),(63,'192.168.1.111','wip1','','other',NULL,'testing123',NULL,NULL,'RADIUS Client','direct',0,0,0,'','','off',600,600,NULL,0,3600,0,NULL,NULL,'logo.jpg',44,'2014-02-13 21:56:55','2014-02-13 21:56:55');
/*!40000 ALTER TABLE `nas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_accountings`
--

DROP TABLE IF EXISTS `new_accountings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_accountings` (
  `username` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_accountings`
--

LOCK TABLES `new_accountings` WRITE;
/*!40000 ALTER TABLE `new_accountings` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_accountings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_mesh_entries`
--

DROP TABLE IF EXISTS `node_mesh_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_mesh_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `mesh_entry_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_mesh_entries`
--

LOCK TABLES `node_mesh_entries` WRITE;
/*!40000 ALTER TABLE `node_mesh_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_mesh_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_mesh_exits`
--

DROP TABLE IF EXISTS `node_mesh_exits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_mesh_exits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `mesh_exit_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_mesh_exits`
--

LOCK TABLES `node_mesh_exits` WRITE;
/*!40000 ALTER TABLE `node_mesh_exits` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_mesh_exits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_settings`
--

DROP TABLE IF EXISTS `node_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesh_id` int(11) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `power` int(3) NOT NULL DEFAULT '100',
  `all_power` tinyint(1) NOT NULL DEFAULT '1',
  `two_chan` int(3) NOT NULL DEFAULT '6',
  `five_chan` int(3) NOT NULL DEFAULT '44',
  `heartbeat_interval` int(5) NOT NULL DEFAULT '60',
  `heartbeat_dead_after` int(5) NOT NULL DEFAULT '600',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_settings`
--

LOCK TABLES `node_settings` WRITE;
/*!40000 ALTER TABLE `node_settings` DISABLE KEYS */;
INSERT INTO `node_settings` VALUES (10,29,'verysecure',99,1,11,44,120,600,'2013-12-30 12:01:42','2014-01-24 21:00:42');
/*!40000 ALTER TABLE `node_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodes`
--

DROP TABLE IF EXISTS `nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesh_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mac` varchar(255) NOT NULL,
  `hardware` varchar(255) DEFAULT NULL,
  `power` int(3) NOT NULL DEFAULT '100',
  `ip` varchar(255) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `on_public_maps` tinyint(1) NOT NULL DEFAULT '0',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `photo_file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodes`
--

LOCK TABLES `nodes` WRITE;
/*!40000 ALTER TABLE `nodes` DISABLE KEYS */;
INSERT INTO `nodes` VALUES (77,29,'node1','node1','AC-86-74-10-03-08','om2p',50,'10.5.5.1',NULL,0,NULL,NULL,'logo.jpg','2014-02-07 12:24:12','2014-02-07 12:24:12');
/*!40000 ALTER TABLE `nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note` text NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (76,'Sample data for RADIUSdesk',1,44,'2013-05-25 12:38:42','2013-05-25 12:38:42'),(77,'This is a note',1,182,'2014-01-07 22:12:23','2014-01-07 22:12:23');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openvpn_clients`
--

DROP TABLE IF EXISTS `openvpn_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openvpn_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `subnet` int(3) DEFAULT NULL,
  `peer1` int(3) DEFAULT NULL,
  `peer2` int(3) DEFAULT NULL,
  `na_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openvpn_clients`
--

LOCK TABLES `openvpn_clients` WRITE;
/*!40000 ALTER TABLE `openvpn_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `openvpn_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phrase_keys`
--

DROP TABLE IF EXISTS `phrase_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phrase_keys` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=603 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phrase_keys`
--

LOCK TABLES `phrase_keys` WRITE;
/*!40000 ALTER TABLE `phrase_keys` DISABLE KEYS */;
INSERT INTO `phrase_keys` VALUES (1,'spclCountry','Your Country where you are','2012-10-04 08:23:52','2012-10-07 21:04:56'),(2,'spclLanguage','Your language','2012-10-04 08:24:21','2012-10-07 04:01:48'),(6,'sUsername','Username','2012-10-04 12:53:36','2012-10-07 18:40:18'),(7,'sPassword','Password','2012-10-07 21:58:45','2012-10-07 21:58:45'),(10,'sEnter_username','Typical login screen error','2012-11-23 22:28:25','2012-11-23 22:28:25'),(11,'sEnter_password','Typical login screen error','2012-11-23 22:29:29','2012-11-23 22:29:29'),(12,'sOK','OK like a confirmation or submit button','2012-11-23 22:42:19','2012-11-23 22:42:19'),(13,'sAuthenticate_please','Login window\'s title','2012-11-23 22:43:46','2012-11-23 22:43:46'),(14,'sChanging_language_please_wait','The splash message while changing the language','2012-11-23 22:47:51','2012-11-23 22:47:51'),(15,'sNew_language_selected','Splash heading while changing language','2012-11-23 22:49:05','2012-11-23 22:49:05'),(16,'sChoose_a_language','Label','2012-11-24 00:08:24','2012-11-24 00:08:24'),(17,'sAbout','About button','2012-11-29 17:20:23','2012-11-29 17:20:23'),(18,'sFailure','This is in the error messages','2012-12-03 18:02:04','2012-12-03 18:02:04'),(19,'sReload','CRUD buttons','2012-12-04 16:03:35','2012-12-04 16:03:35'),(20,'sAdd','CRUD Buttons','2012-12-04 22:25:58','2012-12-04 22:25:58'),(21,'sDelete','CRUD Buttons','2012-12-04 22:26:17','2012-12-04 22:26:17'),(22,'sEdit','CDUR Buttons','2012-12-04 22:26:37','2012-12-04 22:26:37'),(23,'sCopy','CRUD PHP Phrases','2012-12-04 22:27:09','2012-12-04 22:38:02'),(24,'sEdit_meta_info','CRUD PHP Phrases','2012-12-04 22:27:45','2012-12-04 22:27:45'),(25,'sAdd_comment','CRUD PHP Phrases','2012-12-04 22:28:15','2012-12-04 22:28:15'),(27,'sKey','Javascript Phrases','2012-12-04 22:43:51','2012-12-04 22:43:51'),(28,'sComment','Many places','2012-12-04 22:44:27','2012-12-04 22:44:27'),(29,'sEnglish_use_as_reference','Javascript Phrases','2012-12-04 22:45:23','2012-12-04 22:48:11'),(30,'sTranslated','i18n','2012-12-04 22:46:14','2012-12-04 22:48:35'),(31,'sJavascript_Phrases','Tab heading','2012-12-04 22:52:38','2012-12-04 22:52:38'),(32,'sPHP_Phrases','Tab heading','2012-12-04 22:53:06','2012-12-04 22:53:06'),(34,'sResult_count_{count}','Template key replaced by Extjs','2013-01-05 08:44:24','2013-01-05 08:44:24'),(35,'sConnecting','Shown on a load mask for feedback','2013-01-18 08:52:27','2013-01-18 08:52:27'),(36,'sAction','Buttongroup heading','2013-01-20 21:05:50','2013-01-20 21:05:50'),(37,'sSelection','Buttongroup heading','2013-01-20 21:06:30','2013-01-20 21:06:30'),(38,'sLogout','Desktop menu','2013-01-22 07:51:54','2013-01-22 07:51:54'),(39,'sSettings','Desktop menu','2013-01-22 07:53:44','2013-01-22 07:53:44'),(40,'sTile','Desktop context menu','2013-01-22 08:06:27','2013-01-22 08:06:27'),(41,'sCascade','Desktop Context menu','2013-01-22 08:07:16','2013-01-22 08:07:16'),(42,'sRestore','Window context option','2013-01-22 08:09:08','2013-01-22 08:09:08'),(43,'sMinimize','Window context option','2013-01-22 08:09:59','2013-01-22 08:09:59'),(44,'sMaximize','Window context option','2013-01-22 08:11:22','2013-01-22 08:11:22'),(45,'sClose','Desktop context menu','2013-01-22 08:12:53','2013-01-22 08:12:53'),(46,'sMenu','Desktop start button','2013-01-22 09:33:33','2013-01-22 09:33:33'),(47,'si18n_Manager','','2013-01-22 09:46:44','2013-01-22 09:46:44'),(48,'sGet_Help','Tool icon\'s tooltip at top of window','2013-01-22 09:48:23','2013-01-22 09:48:23'),(49,'sTranslation_management','','2013-01-22 09:49:42','2013-01-22 09:49:42'),(50,'sOnline_help_for_Translation_Manager','','2013-01-22 09:51:30','2013-01-22 09:51:30'),(51,'sSelect_a_country','','2013-01-22 09:53:18','2013-01-22 09:53:18'),(52,'sYou_are_required_to_select_a_country','','2013-01-22 09:54:31','2013-01-22 09:54:31'),(53,'sCountry_added','','2013-01-22 09:56:02','2013-01-22 09:56:02'),(54,'sNew_country_added_fine','','2013-01-22 09:57:09','2013-01-22 09:57:09'),(55,'sSending_the_info','','2013-01-22 09:59:08','2013-01-22 09:59:08'),(56,'sCountry','','2013-01-22 11:00:41','2013-01-22 11:00:41'),(57,'sLanguage','','2013-01-22 11:00:59','2013-01-22 11:00:59'),(58,'sCopy_phrases_from_language','','2013-01-22 11:02:58','2013-01-22 11:02:58'),(59,'sLanguage_of_country','','2013-01-22 11:05:53','2013-01-22 11:05:53'),(60,'sAdd_Key','','2013-01-22 11:10:56','2013-01-22 11:10:56'),(61,'sSupply_the_following_detail_please','','2013-01-22 11:12:14','2013-01-22 11:12:14'),(62,'sKey_name','','2013-01-22 11:14:12','2013-01-22 11:14:12'),(63,'sSpecify_a_valid_name_for_the_key','','2013-01-22 11:14:54','2013-01-22 11:14:54'),(64,'sNext','','2013-01-22 11:16:52','2013-01-22 11:16:52'),(65,'sChoose_a_key','','2013-01-22 11:22:02','2013-01-22 11:22:02'),(66,'sDelete_country','','2013-01-22 11:23:17','2013-01-22 11:23:17'),(67,'sSelect_the_country_to_delete_fs_Make_sure_you_know_what_you_are_doing','','2013-01-22 11:24:47','2013-01-22 11:24:47'),(68,'sEdit_Countries','','2013-01-22 11:28:06','2013-01-22 11:28:06'),(69,'sSelect_a_country_to_edit','','2013-01-22 11:29:25','2013-01-22 11:29:25'),(70,'sCountry_name','','2013-01-22 11:31:19','2013-01-22 11:31:19'),(71,'sSpecify_a_valid_name_please','','2013-01-22 11:59:46','2013-01-22 11:59:46'),(72,'sISO_code','','2013-01-22 12:01:41','2013-01-22 12:01:41'),(73,'seg_ZA_or_DE','','2013-01-22 12:02:48','2013-01-22 12:02:48'),(74,'sSpecify_a_valid_iso_country_code','','2013-01-22 12:04:33','2013-01-22 12:04:33'),(75,'sFlag_icon','','2013-01-22 12:05:45','2013-01-22 12:05:45'),(76,'sSelect_Icon','','2013-01-22 12:07:19','2013-01-22 12:07:19'),(77,'sPrev','','2013-01-22 12:08:41','2013-01-22 12:08:41'),(78,'sChoose_a_country','','2013-01-22 12:39:33','2013-01-22 12:39:33'),(79,'sAdd_Language','','2013-01-22 12:42:34','2013-01-22 12:42:34'),(80,'sSelect_an_existing_country_to_add_a_language_to_fs','','2013-01-22 12:45:05','2013-01-22 12:45:05'),(81,'sAlternatively_choose_to_create_a_new_country_fs','','2013-01-22 12:46:30','2013-01-22 12:46:30'),(82,'sCreate_new_country','','2013-01-22 12:48:15','2013-01-22 12:48:15'),(84,'seg_pt_or_de','','2013-01-22 13:07:20','2013-01-22 13:07:20'),(85,'sSpecify_a_valid_iso_language_code','','2013-01-22 13:08:23','2013-01-22 13:08:23'),(86,'sEdit_Key','','2013-01-22 13:54:06','2013-01-22 13:54:06'),(87,'sSelect_a_key_to_edit','','2013-01-22 13:55:14','2013-01-22 13:55:14'),(88,'sChoose_an_existing_language_to_copy_the_phrases_from','','2013-01-22 14:03:27','2013-01-22 14:03:27'),(89,'sAvailable_languages','','2013-01-22 14:05:21','2013-01-22 14:05:21'),(90,'sDelete_language','','2013-01-22 14:09:24','2013-01-22 14:09:24'),(91,'sSelect_the_language_to_delete_fs','','2013-01-22 14:11:54','2013-01-22 14:11:54'),(92,'sMake_sure_you_know_what_you_are_doing_fs','','2013-01-22 14:12:51','2013-01-22 14:12:51'),(93,'sEdit_Languages','','2013-01-22 14:14:46','2013-01-22 14:14:46'),(94,'sSelect_a_language_to_edit','','2013-01-22 14:15:55','2013-01-22 14:15:55'),(95,'sAdd_Msgid','','2013-01-22 14:26:33','2013-01-22 14:26:33'),(96,'sMsgid','','2013-01-22 14:28:53','2013-01-22 14:28:53'),(97,'sMsgstr','','2013-01-22 14:30:24','2013-01-22 14:30:24'),(98,'sOptional_Comment','','2013-01-22 14:31:03','2013-01-22 14:31:03'),(99,'sRemove_existing_comments','','2013-01-22 14:34:26','2013-01-22 14:34:26'),(100,'sAdd_comment_to_msgid','','2013-01-22 14:35:43','2013-01-22 14:35:43'),(101,'sCopy_from_another_language','','2013-01-22 14:40:51','2013-01-22 14:40:51'),(102,'sMaintain_existing_translations','','2013-01-22 14:43:17','2013-01-22 14:43:17'),(103,'sEdit_Msgid','','2013-01-22 14:45:24','2013-01-22 14:45:24'),(104,'sPrevious_value','','2013-01-22 14:46:40','2013-01-22 14:46:40'),(105,'sSpecify_Meta_data','','2013-01-22 14:49:51','2013-01-22 14:49:51'),(106,'sEnter','','2013-01-22 14:51:18','2013-01-22 14:51:18'),(107,'sSource','','2013-01-22 15:10:06','2013-01-22 15:10:06'),(108,'sDestination','','2013-01-22 15:11:01','2013-01-22 15:11:01'),(109,'sSelect_something','','2013-01-22 15:15:16','2013-01-22 15:15:16'),(110,'sSelect_something_to_work_on','','2013-01-22 15:16:37','2013-01-22 15:16:37'),(111,'sConfirm','','2013-01-22 15:21:39','2013-01-22 15:21:39'),(112,'sAre_you_sure_you_want_to_do_that_qm','','2013-01-22 15:23:46','2013-01-22 15:23:46'),(113,'sItem_added','','2013-01-22 15:29:02','2013-01-22 15:29:02'),(114,'sNew_item_added_fine','','2013-01-22 15:30:04','2013-01-22 15:30:04'),(115,'sUpdated_database','','2013-01-22 15:38:01','2013-01-22 15:38:01'),(116,'sDatabase_has_been_updated','','2013-01-22 15:39:03','2013-01-22 15:39:03'),(117,'sSelect_one_only','','2013-01-22 15:41:49','2013-01-22 15:41:49'),(118,'sSelection_limited_to_one','','2013-01-22 15:42:43','2013-01-22 15:42:43'),(119,'sAccess_Providers','','2013-01-30 11:41:56','2013-01-30 11:41:56'),(120,'sLogged_in_user','','2013-01-30 11:43:19','2013-01-30 11:43:19'),(121,'sSelect_an_owner','','2013-01-30 11:44:02','2013-01-30 11:44:02'),(122,'sFirst_select_an_Access_Provider_who_will_be_the_owner','','2013-01-30 11:44:42','2013-01-30 11:44:42'),(123,'sNew_item_created','','2013-01-30 11:46:05','2013-01-30 11:46:05'),(124,'sItem_created_fine','','2013-01-30 11:46:50','2013-01-30 11:46:50'),(125,'sSelect_an_item','','2013-01-30 11:47:27','2013-01-30 11:47:27'),(126,'sFirst_select_an_item','','2013-01-30 11:48:00','2013-01-30 11:48:00'),(127,'sItem_updated','','2013-01-30 11:48:38','2013-01-30 11:48:38'),(128,'sItem_updated_fine','','2013-01-30 11:49:15','2013-01-30 11:49:15'),(129,'sItem_deleted','','2013-01-30 11:50:55','2013-01-30 11:50:55'),(130,'sItem_deleted_fine','','2013-01-30 11:51:27','2013-01-30 11:51:27'),(131,'sProblems_deleting_item','','2013-01-30 11:52:01','2013-01-30 11:52:01'),(132,'sSelect_a_node','','2013-01-30 11:52:40','2013-01-30 11:52:40'),(133,'sFirst_select_a_node_to_expand','','2013-01-30 11:53:09','2013-01-30 11:53:09'),(134,'sRight_Changed','','2013-01-30 11:53:54','2013-01-30 11:53:54'),(136,'sProblems_changing_right','','2013-01-30 11:54:55','2013-01-30 11:54:55'),(137,'sThere_were_some_problems_experienced_during_changing_of_the_right','','2013-01-30 11:55:31','2013-01-30 11:55:31'),(138,'sSelect_one_or_more','','2013-01-30 11:56:35','2013-01-30 11:56:35'),(139,'sSelect_one_or_more_columns_please','','2013-01-30 11:57:13','2013-01-30 11:57:13'),(140,'sLimit_the_selection','','2013-01-30 11:58:33','2013-01-30 11:58:33'),(141,'sRights_manager','','2013-01-30 12:07:45','2013-01-30 12:07:45'),(142,'sRights_management','','2013-01-30 12:08:17','2013-01-30 12:08:17'),(143,'sAccess_Controll_Objects','','2013-01-30 12:08:53','2013-01-30 12:08:53'),(144,'sAccess_Provider_Rights','','2013-01-30 12:09:38','2013-01-30 12:09:38'),(145,'sPermanent_User_Rights','','2013-01-30 12:10:11','2013-01-30 12:10:11'),(146,'sFirst_select_a_node_of_the_tree_under_which_to_add_an_ACO_entry','','2013-01-30 12:11:32','2013-01-30 12:11:32'),(147,'sRoot_node_selected','','2013-01-30 12:13:25','2013-01-30 12:13:25'),(148,'sYou_can_not_edit_the_root_node','','2013-01-30 12:14:01','2013-01-30 12:14:01'),(149,'sError_encountered','','2013-01-30 12:20:36','2013-01-30 12:20:36'),(150,'sExpand','','2013-01-30 12:22:22','2013-01-30 12:22:22'),(151,'sName','','2013-01-30 12:23:08','2013-01-30 12:23:08'),(152,'sAccess_control_objects_br_ACOs_br','','2013-01-30 12:24:15','2013-01-30 12:24:15'),(153,'sAllow','','2013-01-30 12:25:11','2013-01-30 12:25:11'),(154,'sAdd_ACO_object','','2013-01-30 12:25:56','2013-01-30 12:25:56'),(155,'sParent_node','','2013-01-30 12:26:26','2013-01-30 12:26:26'),(156,'sAlias','','2013-01-30 12:27:00','2013-01-30 12:27:00'),(157,'sOptional_Description','','2013-01-30 12:27:31','2013-01-30 12:27:31'),(158,'sSave','','2013-01-30 12:28:10','2013-01-30 12:28:10'),(159,'sEdit_ACO_object','','2013-01-30 12:28:41','2013-01-30 12:28:41'),(160,'sEnter_a_value','','2013-01-30 12:29:43','2013-01-30 12:29:43'),(161,'sDefault_Access_Provider_Rights','','2013-01-30 13:11:48','2013-01-30 13:11:48'),(162,'sProblems_updating_the_database','','2013-01-30 13:17:01','2013-01-30 13:17:01'),(163,'sDatabase_could_not_be_updated','','2013-01-30 13:17:37','2013-01-30 13:17:37'),(164,'sRecord_all_acivity','','2013-01-30 13:20:00','2013-01-30 13:20:00'),(165,'sOwner','','2013-01-30 13:20:40','2013-01-30 13:20:40'),(166,'sActivate','','2013-01-30 13:21:44','2013-01-30 13:21:44'),(167,'sOptional_info','','2013-01-30 13:22:11','2013-04-09 05:05:43'),(168,'sSurname','','2013-01-30 13:22:57','2013-01-30 13:22:57'),(169,'sPhone','','2013-01-30 13:23:20','2013-01-30 13:23:20'),(170,'s_email','','2013-01-30 13:23:50','2013-01-30 13:23:50'),(171,'sAddress','','2013-01-30 13:24:22','2013-01-30 13:24:22'),(172,'sMonitor','','2013-01-30 13:25:15','2013-01-30 13:25:15'),(173,'sYes','','2013-01-30 13:25:41','2013-01-30 13:25:41'),(174,'sNo','','2013-01-30 13:25:50','2013-01-30 13:25:50'),(175,'sExisting_Notes','','2013-01-30 13:26:34','2013-01-30 13:26:34'),(176,'sActive','','2013-01-30 13:26:57','2013-01-30 13:26:57'),(177,'sNotes','','2013-01-30 13:27:18','2013-01-30 13:27:18'),(178,'sCreate','','2013-01-30 13:28:10','2013-01-30 13:28:10'),(179,'sRealm','','2013-01-30 13:28:37','2013-01-30 13:28:37'),(180,'sRead','','2013-01-30 13:29:15','2013-01-30 13:29:15'),(181,'sUpdate','','2013-01-30 13:29:35','2013-01-30 13:29:35'),(182,'sUpdated_right','','2013-01-30 13:30:28','2013-01-30 13:30:28'),(183,'sRight_has_been_updated','','2013-01-30 13:31:05','2013-01-30 13:31:05'),(184,'sProblems_updating_the_right','','2013-01-30 13:31:43','2013-01-30 13:31:43'),(185,'sRight_could_not_be_updated','','2013-01-30 13:32:15','2013-01-30 13:32:15'),(186,'sRights','','2013-01-30 13:33:09','2013-01-30 13:33:09'),(187,'sActivity','','2013-01-30 13:33:42','2013-01-30 13:33:42'),(188,'sRealms','','2013-01-30 13:34:18','2013-01-30 13:34:18'),(189,'sDetail','','2013-01-30 13:34:53','2013-01-30 13:34:53'),(190,'sAccess_Provider_hierarchy','','2013-01-30 13:36:12','2013-01-30 13:36:12'),(191,'sNew_Access_Provider','','2013-01-30 13:39:02','2013-01-30 13:39:02'),(192,'sSelect_the_Parent_Access_provider','','2013-01-30 13:39:40','2013-01-30 13:39:40'),(193,'sNAS_Device_manager','','2013-01-30 13:57:56','2013-01-30 13:57:56'),(194,'sNAS_devices','','2013-01-30 13:58:14','2013-01-30 13:58:14'),(195,'sSelect_at_least_one_realm','','2013-01-30 13:59:06','2013-01-30 13:59:06'),(196,'sSelect_one_or_more_realms','','2013-01-30 13:59:23','2013-01-30 13:59:23'),(197,'sFirst_select_an_item_to_tag','','2013-01-30 13:59:59','2013-01-30 13:59:59'),(198,'sSelect_a_tag','','2013-01-30 14:00:19','2013-01-30 14:00:19'),(199,'sSelect_a_tag_please','','2013-01-30 14:00:33','2013-01-30 14:00:33'),(200,'sTags_modified','','2013-01-30 14:00:47','2013-01-30 14:00:47'),(201,'sTags_modified_fine','','2013-01-30 14:01:00','2013-01-30 14:01:00'),(202,'sOff','','2013-01-30 14:02:37','2013-01-30 14:02:37'),(203,'sPing','','2013-01-30 14:02:47','2013-01-30 14:02:47'),(204,'sHeartbeat','','2013-01-30 14:02:58','2013-01-30 14:02:58'),(205,'sMonitor_method','','2013-01-30 14:03:17','2013-01-30 14:03:17'),(206,'sRequired_info','','2013-01-30 14:03:34','2013-01-30 14:03:34'),(207,'sIP_Address','','2013-01-30 14:03:51','2013-01-30 14:03:51'),(208,'sSupply_a_value','','2013-01-30 14:04:11','2013-01-30 14:04:11'),(209,'sSecret','','2013-01-30 14:04:30','2013-01-30 14:04:30'),(210,'sType','','2013-01-30 14:05:05','2013-01-30 14:05:05'),(211,'sPorts','','2013-01-30 14:05:18','2013-01-30 14:05:18'),(212,'sCommunity','','2013-01-30 14:05:30','2013-01-30 14:05:30'),(213,'sServer','','2013-01-30 14:05:47','2013-01-30 14:05:47'),(214,'sDescription','','2013-01-30 14:06:02','2013-01-30 14:06:02'),(215,'sMonitor_settings','','2013-01-30 14:06:18','2013-01-30 14:06:18'),(216,'sHeartbeat_is_dead_after','','2013-01-30 14:06:41','2013-01-30 14:06:41'),(217,'sHeartbeat_id','','2013-01-30 14:06:54','2013-01-30 14:06:54'),(218,'sPing_interval','','2013-01-30 14:07:13','2013-01-30 14:07:13'),(219,'sLongitude','','2013-01-30 14:07:33','2013-01-30 14:07:33'),(220,'sLatitude','','2013-01-30 14:07:48','2013-01-30 14:07:48'),(221,'sDispaly_on_public_maps','','2013-01-30 14:08:04','2013-01-30 14:08:04'),(222,'sRecord_authentication_requests','','2013-01-30 14:09:02','2013-01-30 14:09:02'),(223,'sAuto_close_stale_sessions','','2013-01-30 14:09:26','2013-01-30 14:09:26'),(224,'sAuto_close_activation_time','','2013-01-30 14:09:44','2013-01-30 14:09:44'),(225,'sAvailable_to_sub_providers','','2013-01-30 14:10:18','2013-01-30 14:10:18'),(226,'sConnection_type','','2013-01-30 14:10:42','2013-01-30 14:10:42'),(227,'sMake_available_to_sub_providers','','2013-01-30 14:11:24','2013-01-30 14:11:24'),(228,'sMake_available_to_any_realm','','2013-01-30 14:12:19','2013-01-30 14:12:19'),(229,'sAdd_NAS_device','','2013-01-30 14:12:41','2013-01-30 14:12:41'),(230,'sSelect_the_device_owner','','2013-01-30 14:13:04','2013-01-30 14:13:04'),(231,'sChoose_a_connection_type','','2013-01-30 14:13:27','2013-01-30 14:13:27'),(232,'sCredentials_for_OpenVPN_tunnel','','2013-01-30 14:14:12','2013-01-30 14:14:12'),(233,'sUnique_AVP_combination','','2013-01-30 14:14:42','2013-01-30 14:14:42'),(234,'sAttribute','','2013-01-30 14:15:04','2013-01-30 14:15:04'),(235,'sValue','','2013-01-30 14:15:23','2013-01-30 14:15:23'),(236,'sValue_to_identify_the_NAS_with','','2013-01-30 14:15:39','2013-01-30 14:15:39'),(237,'sSupply_the_following','','2013-01-30 14:15:57','2013-01-30 14:15:57'),(238,'sConnection','','2013-01-30 14:16:16','2013-01-30 14:16:16'),(239,'sAdd_or_remove_tags','','2013-01-30 14:17:34','2013-01-30 14:17:34'),(240,'sSelect_an_action_and_a_tag','','2013-01-30 14:19:32','2013-01-30 14:19:32'),(241,'sEnhancements','','2013-01-30 14:40:23','2013-01-30 14:40:23'),(242,'sMaps_info','','2013-01-30 14:40:44','2013-01-30 14:40:44'),(243,'sNote','','2013-01-30 14:53:34','2013-01-30 14:53:34'),(244,'sCSV_export','','2013-01-30 14:54:56','2013-01-30 14:54:56'),(245,'sSelect_columns_to_include_in_CSV_list','','2013-01-30 14:55:34','2013-01-30 14:55:34'),(246,'sColumns','','2013-01-30 14:56:35','2013-01-30 14:56:35'),(247,'sOnline_help','','2013-01-30 14:57:17','2013-01-30 14:57:17'),(248,'sNote_management','','2013-01-30 14:58:02','2013-01-30 14:58:02'),(249,'sAdd_Note','','2013-01-30 14:59:26','2013-01-30 14:59:26'),(251,'sSelect_the_owner','','2013-01-30 15:05:34','2013-01-30 15:05:34'),(252,'sTags','','2013-01-30 15:10:05','2013-01-30 15:10:05'),(253,'sTag','','2013-01-30 15:10:27','2013-01-30 15:10:27'),(254,'sRealms_manager','','2013-01-30 16:05:48','2013-01-30 16:05:48'),(255,'sFirst_select_an_item_to_delete','','2013-01-30 16:06:48','2013-01-30 16:06:48'),(256,'sContact_detail','','2013-01-30 16:10:47','2013-01-30 16:10:47'),(257,'sFax','','2013-01-30 16:11:43','2013-01-30 16:11:43'),(258,'sURL','','2013-01-30 16:12:12','2013-01-30 16:12:12'),(259,'sStreet_Number','','2013-01-30 16:13:07','2013-01-30 16:13:07'),(260,'sStreet','','2013-01-30 16:13:27','2013-01-30 16:13:27'),(261,'sTown_fs_Suburb','','2013-01-30 16:13:50','2013-01-30 16:13:50'),(262,'sCity','','2013-01-30 16:14:07','2013-01-30 16:14:07'),(263,'sLocation','','2013-01-30 16:14:39','2013-01-30 16:14:39'),(264,'sCell','','2013-01-30 16:16:23','2013-01-30 16:16:23'),(265,'sLogo','','2013-01-30 16:17:15','2013-01-30 16:17:15'),(266,'sAdd_realm','','2013-01-30 16:18:32','2013-01-30 16:18:32'),(267,'sSelect_an_owner_for_the_realm','','2013-01-30 16:19:24','2013-01-30 16:19:24'),(268,'sTags_manager','','2013-01-30 16:23:57','2013-01-30 16:23:57'),(269,'sNAS_device_tags','','2013-01-30 16:24:32','2013-01-30 16:24:32'),(270,'sNew_tag_for_NAS_devices','','2013-01-30 16:27:01','2013-01-30 16:27:01'),(271,'sSelect_the_tag_owner','','2013-01-30 16:27:54','2013-01-30 16:27:54'),(272,'sAlso_show_to_sub_providers','','2013-01-30 16:29:59','2013-01-30 16:29:59'),(273,'sEdit_tag_for_NAS_device','','2013-01-30 16:33:03','2013-01-30 16:33:03'),(274,'sProfile_component_manager','','2013-02-07 14:15:33','2013-02-11 08:43:06'),(275,'sNew_profile_component','','2013-02-08 05:33:19','2013-02-11 08:44:54'),(276,'sSelect_the_component_owner','','2013-02-08 05:33:51','2013-02-11 08:45:37'),(277,'sComponents','','2013-02-08 10:37:24','2013-02-11 08:43:56'),(278,'sVendor','','2013-02-08 11:16:58','2013-02-08 11:16:58'),(279,'sCheck_attribute_count','','2013-02-08 20:11:08','2013-02-08 20:11:08'),(280,'sReply_attribute_count','','2013-02-08 20:11:25','2013-02-08 20:11:25'),(281,'sAttribute_name','','2013-02-08 20:12:20','2013-02-08 20:12:20'),(282,'sReplace_this_value','','2013-02-08 20:12:54','2013-02-11 09:42:49'),(283,'sUnits','','2013-02-08 20:13:32','2013-02-08 20:13:32'),(284,'sCheck','','2013-02-09 12:01:12','2013-02-09 12:01:12'),(285,'sReply','','2013-02-09 12:01:23','2013-02-09 12:01:23'),(286,'sProfiles_manager','','2013-02-09 20:31:40','2013-02-09 20:31:40'),(287,'sProfiles','','2013-02-09 20:31:55','2013-02-09 20:31:55'),(288,'sOperator','','2013-02-11 09:43:52','2013-02-11 09:43:52'),(289,'sSelect_a_vendor','','2013-02-11 09:50:34','2013-02-11 09:50:34'),(290,'sSelect_an_attribute','','2013-02-11 09:51:01','2013-02-11 09:51:01'),(291,'sRemove','','2013-02-12 13:38:02','2013-02-12 13:38:02'),(292,'sAdd_or_remove_components','','2013-02-12 13:52:00','2013-02-12 13:52:00'),(293,'sEdit_profile','','2013-02-12 14:03:30','2013-02-12 14:03:30'),(294,'sSelect_an_action','','2013-02-12 14:04:44','2013-02-12 14:58:30'),(295,'sProfile_component','','2013-02-12 14:05:36','2013-02-12 14:05:36'),(296,'sPriority','','2013-02-12 14:06:09','2013-02-12 14:06:09'),(297,'sProfiles_modified','','2013-02-12 14:11:42','2013-02-12 14:11:42'),(298,'sProfiles_modified_fine','','2013-02-12 14:12:10','2013-02-12 14:12:10'),(299,'sProfile_components','','2013-02-12 14:58:59','2013-02-12 14:58:59'),(300,'sAdd_component','','2013-02-12 14:59:40','2013-02-12 14:59:40'),(301,'sRemove_component','','2013-02-12 15:00:16','2013-02-12 15:00:16'),(302,'sMake_private','','2013-02-12 15:01:53','2013-02-12 15:01:53'),(303,'sSelect_a_component_to_add_or_remove','','2013-02-12 15:13:23','2013-02-12 15:21:42'),(304,'sPermanent_Users','','2013-03-04 12:37:28','2013-03-04 12:37:28'),(305,'sNew_permanent_user','','2013-03-06 08:43:01','2013-03-06 08:43:01'),(306,'sBasic_info','','2013-03-06 08:45:16','2013-03-06 08:45:16'),(307,'sProfile','','2013-03-06 08:46:10','2013-03-06 08:46:10'),(308,'sCap_type','','2013-03-06 08:46:48','2013-03-06 09:35:36'),(309,'sPersonal_info','','2013-03-06 08:47:22','2013-03-06 08:47:22'),(310,'sActivate_and_Expire','','2013-03-06 08:47:57','2013-03-06 08:47:57'),(311,'sAlways_active','','2013-03-06 08:48:38','2013-03-11 06:47:57'),(312,'sFrom','','2013-03-06 08:49:08','2013-03-06 08:49:08'),(313,'sTo','','2013-03-06 08:49:26','2013-03-06 08:49:26'),(314,'sTracking','','2013-03-06 08:49:58','2013-03-06 08:49:58'),(315,'sRADIUS_authentication','','2013-03-06 08:50:21','2013-03-06 08:50:21'),(316,'sRADIUS_accounting','','2013-03-06 08:50:52','2013-03-06 08:50:52'),(317,'sHard','','2013-03-06 09:36:36','2013-03-06 09:36:36'),(318,'sSoft','','2013-03-06 09:36:45','2013-03-06 09:36:45'),(319,'sAuth_type','','2013-03-07 05:10:48','2013-03-07 05:10:48'),(320,'sBYOD_manager','','2013-03-08 12:33:05','2013-03-08 12:33:05'),(321,'sVouchers','','2013-03-08 12:34:26','2013-03-08 12:34:26'),(322,'sActivity_monitor','','2013-03-08 12:34:57','2013-03-08 12:34:57'),(323,'sRegistered_devices','','2013-03-08 14:05:54','2013-03-08 14:05:54'),(324,'sUnclaimed_devices','','2013-03-08 14:06:27','2013-03-08 14:06:27'),(325,'sMAC_address','','2013-03-09 16:02:28','2013-03-09 16:04:49'),(326,'sAuthentication_data','','2013-03-11 06:32:34','2013-03-11 15:56:42'),(327,'sAccounting_data','','2013-03-11 06:33:13','2013-03-11 15:56:59'),(328,'tpl_In_{in}_Out_{out}_Total_{total}','Template for the Radacct grid summary','2013-03-11 13:32:11','2013-03-11 13:32:11'),(329,'sNAS_port_id','','2013-03-11 15:01:29','2013-03-11 15:01:29'),(330,'sNAS_port_type','','2013-03-11 15:02:08','2013-03-11 15:02:08'),(331,'sStart_time','','2013-03-11 15:02:50','2013-03-11 15:02:50'),(332,'sStop_time','','2013-03-11 15:03:33','2013-03-11 15:03:33'),(333,'sFreeRADIUS_info','','2013-03-11 16:00:27','2013-03-20 19:57:39'),(334,'sDevices','','2013-03-13 08:15:18','2013-03-13 08:15:18'),(335,'sPrivate_attributes','','2013-03-13 08:15:34','2013-03-13 08:15:34'),(336,'sLast_accept_time','','2013-03-13 13:22:19','2013-03-13 13:22:19'),(337,'sLast_accept_nas','','2013-03-13 13:23:00','2013-03-13 13:23:00'),(338,'sLast_reject_time','','2013-03-13 13:23:34','2013-03-13 13:23:34'),(339,'sLast_reject_nas','','2013-03-13 13:24:13','2013-03-13 13:24:13'),(340,'sLast_reject_message','','2013-03-13 13:24:52','2013-03-13 13:24:52'),(341,'sNew_device','','2013-03-18 13:27:59','2013-03-18 13:27:59'),(342,'sEnable_fs_Disable','','2013-03-18 13:36:41','2013-03-18 13:36:41'),(343,'sEnable','','2013-03-18 13:37:50','2013-03-18 13:37:50'),(344,'sDisable','','2013-03-18 13:38:08','2013-03-18 13:38:08'),(345,'sFirst_select_an_item_to_modify','','2013-03-18 13:48:48','2013-03-18 13:48:48'),(346,'sItems_modified','','2013-03-18 13:49:36','2013-03-18 13:49:36'),(347,'sItems_modified_fine','','2013-03-18 13:50:04','2013-03-18 13:50:04'),(348,'sEnd_date_wrong','','2013-03-18 13:51:18','2013-03-18 13:51:18'),(349,'sThe_end_date_should_be_after_the_start_date','','2013-03-18 13:51:49','2013-03-18 13:51:49'),(350,'sStart_date_wrong','','2013-03-18 13:52:30','2013-03-18 13:52:30'),(351,'sThe_start_date_should_be_before_the_end_date','','2013-03-18 13:53:02','2013-03-18 13:53:02'),(352,'sChange_password_for','','2013-03-18 14:12:20','2013-03-18 14:15:00'),(353,'sChange_password','','2013-03-18 14:15:50','2013-03-18 14:15:50'),(354,'sWalpaper_changed','','2013-03-18 14:20:00','2013-03-18 14:20:00'),(355,'sWalpaper_changed_fine','','2013-03-18 14:20:12','2013-03-18 14:20:12'),(356,'sGroupname','','2013-03-18 15:39:29','2013-03-18 15:39:29'),(357,'sNAS_IP_Address','','2013-03-18 15:40:08','2013-03-18 15:40:08'),(358,'sSession_time','','2013-03-18 15:41:13','2013-03-18 15:41:13'),(359,'sAccount_authentic','','2013-03-18 15:41:38','2013-03-18 15:41:38'),(360,'sConnect_info_start','','2013-03-18 15:42:14','2013-03-18 15:42:14'),(361,'sConnect_info_stop','','2013-03-18 15:42:35','2013-03-18 15:42:35'),(362,'sData_in','','2013-03-18 15:43:15','2013-03-18 15:43:15'),(363,'sData_out','','2013-03-18 15:43:32','2013-03-18 15:43:32'),(364,'sCalled_station_id','','2013-03-18 15:44:00','2013-03-18 15:44:00'),(365,'sCalling_station_id_MAC','','2013-03-18 15:44:31','2013-03-18 15:44:31'),(366,'sTerminate_cause','','2013-03-18 15:45:12','2013-03-18 15:45:12'),(367,'sService_type','','2013-03-18 15:45:36','2013-03-18 15:45:36'),(368,'sFramed_protocol','','2013-03-18 15:46:03','2013-03-18 15:46:03'),(369,'sFramed_ipaddress','','2013-03-18 15:46:26','2013-03-18 15:46:26'),(370,'sAcct_start_delay','','2013-03-18 15:46:58','2013-03-18 15:46:58'),(371,'sAcct_stop_delay','','2013-03-18 15:47:40','2013-03-18 15:47:40'),(372,'sX_Ascend_session_svr_key','','2013-03-18 15:48:12','2013-03-18 15:48:12'),(373,'sNasname','','2013-03-18 15:49:44','2013-03-18 15:49:44'),(374,'sDate','','2013-03-18 15:50:12','2013-03-18 15:50:12'),(375,'sReload_every','','2013-03-20 14:37:28','2013-03-20 14:37:28'),(376,'s30_seconds','','2013-03-20 14:38:07','2013-03-20 14:38:07'),(377,'s1_minute','','2013-03-20 14:38:38','2013-03-20 14:38:38'),(378,'s5_minutes','','2013-03-20 14:39:08','2013-03-20 14:39:08'),(379,'sStop_auto_reload','','2013-03-20 14:39:41','2013-03-20 14:39:41'),(380,'sWallpaper','','2013-03-20 20:12:16','2013-03-20 20:12:16'),(381,'sAcct_session_id','','2013-03-21 04:36:09','2013-03-21 04:36:09'),(382,'sAcct_unique_id','','2013-03-21 04:36:26','2013-03-21 04:36:26'),(383,'sUser_type','','2013-03-21 05:20:28','2013-03-21 05:20:28'),(384,'sOpenVPN','','2013-03-25 19:39:32','2013-03-25 19:39:32'),(387,'sSet_by_server','','2013-03-25 19:49:38','2013-03-25 19:49:38'),(388,'sNAS','','2013-03-25 20:15:52','2013-03-25 20:15:52'),(389,'sOpenVPN_credentials','','2013-03-26 11:32:05','2013-03-26 11:32:05'),(390,'sDynamic_AVP_detail','','2013-03-26 11:37:48','2013-03-26 11:37:48'),(391,'sExample','','2013-03-26 21:15:27','2013-03-26 21:15:27'),(392,'sPPTP_credentials','','2013-03-26 22:05:12','2013-03-26 22:05:12'),(393,'sPPTP','','2013-03-26 22:05:43','2013-03-26 22:05:43'),(394,'sIgnore_accounting_requests','','2013-03-29 17:05:46','2013-03-29 17:05:46'),(395,'sGoogle_Maps','','2013-03-31 14:00:12','2013-03-31 14:00:12'),(396,'sDevice_info','','2013-04-01 13:33:14','2013-04-01 13:33:14'),(397,'sCancel','','2013-04-02 06:56:59','2013-04-02 06:56:59'),(398,'sAction_required','','2013-04-02 06:57:35','2013-04-02 06:57:35'),(399,'sNew_position','','2013-04-02 08:00:23','2013-04-02 08:00:23'),(400,'sSimply_drag_a_marker_to_a_different_postition_and_click_the_delete_button_in_the_info_window','','2013-04-02 11:10:04','2013-04-02 11:13:22'),(401,'sDelete_a_marker','','2013-04-02 11:13:49','2013-04-02 11:13:49'),(402,'sEdit_a_marker','','2013-04-02 11:15:19','2013-04-02 11:15:19'),(403,'sSimply_drag_a_marker_to_a_different_postition_and_click_the_save_button_in_the_info_window','','2013-04-02 11:16:20','2013-04-02 11:16:20'),(404,'sAdd_a_marker','','2013-04-02 11:41:48','2013-04-02 11:41:48'),(405,'sSelect_a_NAS_device','','2013-04-02 11:43:30','2013-04-02 11:43:30'),(406,'sCurrent_state','','2013-04-03 05:48:15','2013-04-03 05:54:38'),(407,'sUp','','2013-04-03 13:26:16','2013-04-03 13:26:16'),(408,'sDown','','2013-04-03 13:26:53','2013-04-03 13:26:53'),(409,'sUnknown','','2013-04-03 13:27:22','2013-04-03 13:27:22'),(410,'sStatus','','2013-04-03 13:27:53','2013-04-03 13:27:53'),(411,'sPreferences','','2013-04-04 08:15:49','2013-04-04 08:15:49'),(412,'sHybrid','','2013-04-04 08:16:23','2013-04-04 08:16:23'),(413,'sRoadmap','','2013-04-04 08:16:54','2013-04-04 08:16:54'),(414,'sSatellite','','2013-04-04 08:17:25','2013-04-04 08:17:25'),(415,'sTerrain','','2013-04-04 08:17:51','2013-04-04 08:17:51'),(416,'sSnapshot','','2013-04-04 08:18:39','2013-04-04 08:18:39'),(417,'sPasswords_does_not_match','','2013-04-05 10:02:23','2013-04-05 10:02:23'),(418,'sState','','2013-04-08 14:49:28','2013-04-08 14:49:28'),(419,'sDuration','','2013-04-08 14:49:51','2013-04-08 14:49:51'),(420,'sStarted','','2013-04-08 14:50:20','2013-04-08 14:50:20'),(421,'sEnded','','2013-04-08 14:50:43','2013-04-08 14:50:43'),(422,'sCurrent_logo','','2013-04-09 13:18:28','2013-04-09 13:18:28'),(423,'sSelect_an_image','','2013-04-09 13:20:01','2013-04-09 13:20:01'),(424,'sNew_logo','','2013-04-09 13:23:24','2013-04-09 13:23:24'),(425,'sLogfile_viewer','','2013-05-09 09:08:14','2013-05-09 09:08:14'),(426,'sDebug_output','','2013-05-09 09:09:01','2013-05-09 09:09:01'),(427,'sClear_screen','','2013-05-09 14:00:32','2013-05-09 14:00:32'),(428,'sStop_FreeRADIUS','','2013-05-09 14:01:20','2013-05-09 14:01:20'),(429,'sStart_FreeRADIUS','','2013-05-09 14:02:04','2013-05-09 14:02:04'),(430,'sStart_fs_Stop','','2013-05-09 14:02:35','2013-05-09 14:02:35'),(431,'sReceiving_new_logfile_data','','2013-05-09 14:14:11','2013-05-09 14:14:11'),(432,'sAwaiting_new_logfile_data','','2013-05-09 14:14:50','2013-05-09 14:14:50'),(433,'sAdd_debug_time','','2013-05-13 09:40:38','2013-05-13 09:40:38'),(434,'sStart_debug','','2013-05-13 09:41:21','2013-05-13 09:41:21'),(435,'sStop_debug','','2013-05-13 09:41:48','2013-05-13 09:41:48'),(436,'sFilters','','2013-05-13 09:42:25','2013-05-13 09:42:25'),(437,'sAny_NAS_device','','2013-05-13 14:24:19','2013-05-13 14:24:19'),(438,'sAny_user','','2013-05-13 14:35:25','2013-05-13 14:35:25'),(439,'sRADIUS_client','','2013-05-14 09:50:29','2013-05-14 09:50:29'),(440,'sAuthentication','','2013-05-14 11:17:21','2013-05-14 11:17:21'),(441,'sAccounting','','2013-05-14 11:18:01','2013-05-14 11:18:01'),(442,'sPermanent_user','','2013-05-14 13:12:00','2013-05-14 13:12:00'),(443,'sDevice','','2013-05-14 13:12:27','2013-05-14 13:12:27'),(444,'sRequest_type','','2013-05-14 13:32:58','2013-05-14 13:32:58'),(445,'sDynamic_login_pages','','2013-05-16 06:03:01','2013-05-16 06:03:01'),(446,'sAdd_dynamic_page','','2013-05-18 06:07:59','2013-05-18 06:07:59'),(447,'sSelect_an_owner_for_the_login_page','','2013-05-18 06:09:02','2013-05-18 06:09:02'),(448,'sPhotos','','2013-05-18 06:50:34','2013-05-18 06:50:34'),(449,'sAdd_photo','','2013-05-18 16:26:03','2013-05-18 16:26:03'),(450,'sTitle','','2013-05-18 16:26:32','2013-05-18 16:26:32'),(451,'sPhoto','','2013-05-18 16:27:00','2013-05-18 16:27:00'),(452,'sEdit_photo','','2013-05-19 15:01:12','2013-05-19 15:01:12'),(453,'sOptional_photo','','2013-05-19 15:17:43','2013-05-19 15:17:43'),(454,'sOwn_pages','','2013-05-19 20:55:24','2013-05-19 20:55:24'),(455,'sDynamic_keys','','2013-05-19 20:56:00','2013-05-19 20:56:00'),(456,'sContent','','2013-05-19 22:32:18','2013-05-19 22:32:18'),(457,'sEdit_dynamic_pair','','2013-05-20 10:03:59','2013-05-20 10:03:59'),(458,'sEdit_own_page','','2013-05-20 10:04:44','2013-05-20 10:04:44'),(459,'sAdd_dynamic_pair','','2013-05-20 10:05:29','2013-05-20 10:05:29'),(460,'sAdd_own_page','','2013-05-20 10:05:58','2013-05-20 10:05:58'),(461,'sNo_images_available','','2013-05-23 10:54:03','2013-05-23 10:54:03'),(462,'sUpdated_item','','2013-05-26 19:15:58','2013-05-26 19:15:58'),(463,'sItem_has_been_updated','','2013-05-26 19:16:19','2013-05-26 19:16:19'),(464,'sProblems_updating_the_item','','2013-05-26 19:16:49','2013-05-26 19:16:49'),(465,'sItem_could_not_be_updated','','2013-05-26 19:17:05','2013-05-26 19:17:05'),(466,'sA_Modern_Webtop_front-end_to_FreeRADIUS','','2013-05-29 09:30:06','2013-05-29 09:30:06'),(467,'sAbout_RADIUSdesk','','2013-05-29 09:31:06','2013-05-29 09:31:06'),(468,'sNAS-Identifier','','2013-07-01 06:12:43','2013-07-01 06:12:43'),(469,'sCommand','','2013-07-02 19:00:38','2013-07-02 19:00:38'),(470,'sCreated','','2013-07-02 19:00:51','2013-07-02 19:00:51'),(471,'sModified','','2013-07-02 19:01:02','2013-07-02 19:01:02'),(472,'sAdd_a_command','','2013-07-02 19:02:08','2013-07-02 19:02:08'),(473,'sAwaiting','','2013-07-02 20:12:33','2013-07-02 20:12:33'),(474,'sFetched','','2013-07-02 20:12:45','2013-07-02 20:12:45'),(475,'sNew_voucher','','2013-07-05 05:00:12','2013-07-05 05:00:12'),(476,'sPrecede_string','','2013-07-05 05:00:36','2013-07-05 05:00:36'),(477,'sHow_many_qm','','2013-07-05 05:00:52','2013-07-05 05:00:52'),(478,'sBatch_name','','2013-07-05 05:01:06','2013-07-05 05:01:06'),(479,'sActivate_upon_first_login','','2013-07-05 05:16:51','2013-07-05 09:50:48'),(480,'sDays_available_after_first_login','','2013-07-05 09:51:34','2013-07-05 09:51:34'),(481,'sNever_expire','','2013-07-05 09:52:12','2013-07-05 09:52:12'),(482,'sExpire','','2013-07-05 09:52:42','2013-07-05 09:52:42'),(483,'sPassword_length','','2013-07-05 14:15:03','2013-07-05 14:15:03'),(484,'sBatch','','2013-07-05 20:39:53','2013-07-05 20:39:53'),(485,'sNew','','2013-07-06 13:10:59','2013-07-06 13:10:59'),(486,'sUsed','','2013-07-06 13:11:16','2013-07-06 13:11:16'),(487,'sDepleted','','2013-07-06 13:11:28','2013-07-06 13:11:28'),(488,'sExpired','','2013-07-06 13:11:40','2013-07-06 13:11:40'),(489,'s_br_Single_voucher_br','','2013-07-06 13:13:32','2013-07-06 13:13:32'),(490,'sTime_used','','2013-07-06 14:46:29','2013-07-06 14:46:29'),(491,'sData_used','','2013-07-06 14:46:41','2013-07-06 14:46:41'),(492,'sCap_type_for_data','','2013-07-08 09:34:51','2013-07-08 09:34:51'),(493,'sCap_type_for_time','','2013-07-08 09:35:05','2013-07-08 09:35:05'),(494,'sVoucher','','2013-07-09 22:03:08','2013-07-09 22:03:08'),(495,'sOutput_format','','2013-08-04 21:16:00','2013-08-04 21:16:00'),(496,'sGenerate_pdf','','2013-08-04 21:16:43','2013-08-04 21:16:43'),(497,'sOnly_selected_items','','2013-08-04 21:17:40','2013-08-04 21:17:40'),(498,'sOnly_selected','','2013-08-04 21:33:01','2013-08-04 21:46:14'),(499,'sNothing_to_export','','2013-08-05 09:13:09','2013-08-05 09:13:09'),(500,'sList_is_empty','','2013-08-05 09:13:26','2013-08-05 09:13:26'),(501,'sVoucher_export_to_pdf','','2013-08-07 14:36:45','2013-08-07 14:36:45'),(502,'sNAS_Identifier','','2013-08-24 11:22:41','2013-08-24 11:22:41'),(503,'sPassword_manager','','2014-02-20 10:02:28','2014-02-20 10:02:28'),(504,'sEncryption','','2014-02-20 12:51:24','2014-02-20 12:51:24'),(505,'sConnects_with','','2014-02-20 12:52:50','2014-02-20 12:52:50'),(506,'sHardware_model','','2014-02-20 12:54:17','2014-02-20 12:54:17'),(507,'sStatic_entry_points','','2014-02-20 12:56:40','2014-02-20 12:56:40'),(508,'sStatic_exit_points','','2014-02-20 12:57:52','2014-02-20 12:57:52'),(509,'sWEP','','2014-02-20 13:01:16','2014-02-20 13:01:16'),(510,'sWPA_Personal','','2014-02-20 13:01:57','2014-02-20 13:01:57'),(511,'sWPA2_Personal','','2014-02-20 13:02:49','2014-02-20 13:02:49'),(512,'sWPA_Enterprise','','2014-02-20 13:03:42','2014-02-20 13:03:42'),(513,'sWPA2_Enterprise','','2014-02-20 13:04:32','2014-02-20 13:04:32'),(514,'sHidden','','2014-02-20 13:05:56','2014-02-20 13:05:56'),(515,'sClient_isolation','','2014-02-20 13:06:25','2014-02-20 13:06:25'),(516,'sApply_to_all_nodes','','2014-02-20 13:06:43','2014-02-20 13:06:43'),(517,'sNone','','2014-02-20 13:07:47','2014-02-20 13:07:47'),(518,'sSSID','','2014-02-20 13:09:07','2014-02-20 13:09:07'),(519,'sBSSID','','2014-02-20 13:10:41','2014-02-20 13:10:41'),(520,'sNode_count','','2014-02-20 13:11:35','2014-02-20 13:11:35'),(521,'sNodes_up','','2014-02-20 13:12:38','2014-02-20 13:12:38'),(522,'sNodes_down','','2014-02-20 13:13:12','2014-02-20 13:13:12'),(523,'sNo_one','','2014-02-20 13:15:51','2014-02-20 13:15:51'),(524,'sAuto_detect','','2014-02-20 13:16:50','2014-02-20 13:16:50'),(525,'sHardware','','2014-02-20 13:20:23','2014-02-20 13:20:23'),(526,'sPower','','2014-02-20 13:20:49','2014-02-20 13:20:49'),(527,'sStatic_entries','','2014-02-20 13:21:34','2014-02-20 13:21:34'),(528,'sStatic_exits','','2014-02-20 13:22:55','2014-02-20 13:22:55'),(529,'sAP_isolation','','2014-02-20 13:24:15','2014-02-20 13:24:15'),(530,'sBridge_Loop_Avoidance','','2014-02-20 13:25:07','2014-02-20 13:25:07'),(531,'sAggregation','','2014-02-20 13:26:12','2014-02-20 13:26:12'),(532,'sBonding','','2014-02-20 13:26:33','2014-02-20 13:26:33'),(533,'sFragmentation','','2014-02-20 13:27:35','2014-02-20 13:27:35'),(534,'sOGM_interval_br_ms_br','','2014-02-20 13:28:27','2014-02-20 13:28:27'),(535,'sGateway_switching','','2014-02-20 13:29:30','2014-02-20 13:29:30'),(536,'sHeartbeat_interval','','2014-02-20 13:30:29','2014-02-20 13:30:29'),(537,'s5G_Channel','','2014-02-20 13:31:18','2014-02-20 13:31:18'),(538,'s2_pt_4G_Channel','','2014-02-20 13:32:09','2014-02-20 13:32:09'),(539,'sRADIUS_server','','2014-02-20 13:35:50','2014-02-20 13:35:50'),(540,'sShared_secret','','2014-02-20 13:36:33','2014-02-20 13:36:33'),(541,'sNew_mesh_exit_point','','2014-02-20 13:37:35','2014-02-20 13:37:35'),(542,'sEthernet_bridge','','2014-02-20 13:40:27','2014-02-20 13:40:27'),(543,'sTagged_Ethernet_bridge','','2014-02-20 13:41:19','2014-02-20 13:41:19'),(544,'sNAT_plus_DHCP','','2014-02-20 13:41:59','2014-02-20 13:41:59'),(545,'sCaptive_Portal','','2014-02-20 13:42:57','2014-02-20 13:42:57'),(546,'sSpecify_exit_point_type','','2014-02-20 13:44:38','2014-02-20 13:44:38'),(547,'sExit_point_type','','2014-02-20 13:45:44','2014-02-20 13:45:44'),(548,'sCommon_settings','','2014-02-20 13:59:07','2014-02-20 13:59:07'),(549,'sVLAN_number','','2014-02-20 14:00:19','2014-02-20 14:00:19'),(550,'sCaptive_Portal_settings','','2014-02-20 14:02:06','2014-02-20 14:02:06'),(551,'sRADIUS_server1','','2014-02-20 14:02:55','2014-02-20 14:02:55'),(552,'sRADIUS_server2','','2014-02-20 14:03:38','2014-02-20 14:03:38'),(553,'sRADIUS_secret','','2014-02-20 14:04:17','2014-02-20 14:04:17'),(554,'sRADIUS_NASID','','2014-02-20 14:05:16','2014-02-20 14:05:16'),(555,'sUAM_URL','','2014-02-20 14:07:29','2014-02-20 14:07:29'),(556,'sUAM_Secret','','2014-02-20 14:08:11','2014-02-20 14:08:11'),(557,'sWalled_garden','','2014-02-20 14:08:49','2014-02-20 14:08:49'),(558,'sSwap_octets','','2014-02-20 14:09:30','2014-02-20 14:09:30'),(559,'sMAC_authentication','','2014-02-20 14:10:37','2014-02-20 14:10:37'),(560,'sNew_mesh_node','','2014-02-20 14:12:55','2014-02-20 14:12:55'),(561,'sTX_Power_br_percent_br','','2014-02-20 14:14:12','2014-02-20 14:14:12'),(562,'sNew_mesh','','2014-02-20 14:15:20','2014-02-20 14:15:20'),(563,'sEntry_points','','2014-02-20 14:16:43','2014-02-20 14:16:43'),(564,'sMesh_settings','','2014-02-20 14:17:21','2014-02-20 14:17:21'),(565,'sExit_points','','2014-02-20 14:17:59','2014-02-20 14:17:59'),(566,'Node settings','','2014-02-20 14:18:48','2014-02-20 14:18:48'),(567,'sNodes','','2014-02-20 14:19:15','2014-02-20 14:19:15'),(568,'sMap','','2014-02-20 14:20:14','2014-02-20 14:20:14'),(569,'sEdit_mesh_entry_point','','2014-02-20 14:21:07','2014-02-20 14:21:07'),(570,'sEdit_mesh_exit_point','','2014-02-20 14:23:46','2014-02-20 14:23:46'),(571,'sMESHdesk_overview','','2014-02-20 14:28:48','2014-02-20 14:28:48'),(572,'sNew_mesh_entry_point_added','','2014-02-20 14:30:22','2014-02-20 14:30:22'),(573,'sNew_mesh_enty_point_created_fine','','2014-02-20 14:31:26','2014-02-20 14:31:26'),(574,'sItem_added_fine','','2014-02-20 14:35:25','2014-02-20 14:35:25'),(575,'sNo_entry_points_defined','','2014-02-20 14:39:48','2014-02-20 14:39:48'),(576,'sDefine_some_entry_points_first','','2014-02-20 14:40:28','2014-02-20 14:40:28'),(577,'sPassword_changed','','2014-02-20 14:45:00','2014-02-20 14:45:00'),(578,'sPassword_changed_fine','','2014-02-20 14:45:32','2014-02-20 14:45:32'),(579,'sFetched_password','','2014-02-20 14:46:23','2014-02-20 14:51:06'),(580,'sPassword_fetched_for_selected_user','','2014-02-20 14:48:29','2014-02-20 14:48:29'),(581,'sRight_to_left','','2014-02-20 22:56:49','2014-02-20 22:56:49'),(582,'sHome','','2014-02-20 22:57:41','2014-02-20 22:57:41'),(583,'s_br_select_user_first_br','','2014-02-21 08:15:13','2014-02-21 08:15:13'),(584,'sCurrent_password','','2014-02-21 08:17:12','2014-02-21 08:17:12'),(585,'sNew_password','','2014-02-21 08:17:53','2014-02-21 08:17:53'),(586,'sNode_settings','','2014-02-21 08:19:46','2014-02-21 08:19:46'),(587,'sT_and_C','','2014-02-21 08:24:46','2014-02-21 08:24:46'),(588,'sCompulsory','','2014-02-21 08:25:27','2014-02-21 08:25:27'),(589,'sRequest','','2014-02-21 08:30:51','2014-02-21 08:30:51'),(590,'sRequest_Attributes','','2014-02-21 08:32:43','2014-02-21 08:32:43'),(591,'sReply_Attributes','','2014-02-21 08:33:35','2014-02-21 08:33:35'),(592,'sClients','','2014-02-21 08:37:27','2014-02-21 08:37:27'),(593,'sModules','','2014-02-21 08:38:10','2014-02-21 08:38:10'),(594,'sGeneral','','2014-02-21 08:39:09','2014-02-21 08:39:09'),(595,'sUptime','','2014-02-21 08:40:26','2014-02-21 08:40:26'),(596,'sVersion','','2014-02-21 08:40:54','2014-02-21 08:40:54'),(597,'sUsage_graphs','','2014-02-21 09:00:42','2014-02-21 09:00:42'),(598,'sDaily','','2014-02-21 11:31:04','2014-02-21 11:31:04'),(599,'sWeekly','','2014-02-21 11:31:19','2014-02-21 11:31:19'),(600,'sMonthly','','2014-02-21 11:31:41','2014-02-21 11:31:41'),(601,'sDay','','2014-02-21 11:53:41','2014-02-21 11:53:41'),(602,'sApply_power_to_all_nodes','','2014-02-21 12:00:50','2014-02-21 12:00:50');
/*!40000 ALTER TABLE `phrase_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phrase_values`
--

DROP TABLE IF EXISTS `phrase_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phrase_values` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `country_id` int(5) DEFAULT NULL,
  `language_id` int(5) DEFAULT NULL,
  `phrase_key_id` int(5) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3120 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phrase_values`
--

LOCK TABLES `phrase_values` WRITE;
/*!40000 ALTER TABLE `phrase_values` DISABLE KEYS */;
INSERT INTO `phrase_values` VALUES (11,4,4,1,'United Kingdom','2012-10-05 04:55:28','2012-10-05 04:55:28'),(12,4,4,2,'English','2012-10-05 04:55:28','2012-10-05 04:55:28'),(13,4,4,6,'Username','2012-10-05 04:55:28','2012-11-24 14:36:26'),(14,5,5,1,'Suid-Afrika','2012-10-07 04:30:59','2012-10-07 21:59:21'),(15,5,5,2,'Afrikaans','2012-10-07 04:30:59','2012-10-07 21:59:25'),(16,5,5,6,'Gebruikernaam','2012-10-07 04:30:59','2012-11-24 15:00:29'),(18,4,4,7,'Password','2012-10-07 21:58:45','2012-10-07 21:59:45'),(19,5,5,7,'Wagwoord','2012-10-07 21:58:45','2012-11-28 14:55:01'),(28,4,4,10,'Enter username','2012-11-23 22:28:25','2012-11-23 22:28:54'),(29,5,5,10,'Verskaf gebruikersnaam','2012-11-23 22:28:25','2012-11-23 22:31:15'),(30,4,4,11,'Enter password','2012-11-23 22:29:29','2012-11-23 22:29:39'),(31,5,5,11,'Verskaf wagwoord','2012-11-23 22:29:29','2012-11-23 22:31:27'),(32,4,4,12,'OK','2012-11-23 22:42:19','2012-11-23 22:42:41'),(33,5,5,12,'Reg','2012-11-23 22:42:19','2013-01-22 15:46:21'),(34,4,4,13,'Authenticate please','2012-11-23 22:43:46','2012-11-23 22:44:07'),(35,5,5,13,'Geldigheidsvasstelling','2012-11-23 22:43:46','2012-11-23 22:44:29'),(36,4,4,14,' Changing language, please wait','2012-11-23 22:47:51','2012-11-23 22:49:44'),(37,5,5,14,'Verander die taal, net so oomblik ','2012-11-23 22:47:51','2012-11-23 22:50:08'),(38,4,4,15,'New language selected','2012-11-23 22:49:05','2012-11-23 23:30:23'),(39,5,5,15,'Nuwe taal gekies','2012-11-23 22:49:05','2012-11-27 06:31:39'),(40,4,4,16,'Choose a language','2012-11-24 00:08:24','2012-11-24 00:08:35'),(41,5,5,16,'Kies jou taal','2012-11-24 00:08:24','2012-11-24 00:08:46'),(42,4,4,17,'About','2012-11-29 17:20:23','2012-11-29 17:20:34'),(43,5,5,17,'Rakende','2012-11-29 17:20:23','2012-11-29 17:20:50'),(44,4,4,18,'Failure','2012-12-03 18:02:04','2012-12-04 12:16:02'),(45,5,5,18,'Probleme','2012-12-03 18:02:04','2012-12-04 13:27:11'),(124,4,4,19,'Reload','2012-12-04 16:03:35','2012-12-04 16:03:59'),(125,5,5,19,'Verfris','2012-12-04 16:03:35','2012-12-04 16:03:49'),(127,4,4,20,'Add','2012-12-04 22:25:58','2012-12-04 22:30:08'),(128,5,5,20,'Nuwe','2012-12-04 22:25:58','2012-12-04 22:28:33'),(130,4,4,21,'Delete','2012-12-04 22:26:17','2012-12-04 22:30:03'),(131,5,5,21,'Verwyder','2012-12-04 22:26:17','2012-12-04 22:28:42'),(133,4,4,22,'Edit','2012-12-04 22:26:37','2012-12-04 22:29:59'),(134,5,5,22,'Redigeer','2012-12-04 22:26:37','2012-12-04 22:28:46'),(136,4,4,23,'Copy','2012-12-04 22:27:09','2012-12-04 22:29:53'),(137,5,5,23,'Dupliseer','2012-12-04 22:27:09','2012-12-04 22:28:57'),(139,4,4,24,'Edit meta-info','2012-12-04 22:27:45','2012-12-04 22:29:49'),(140,5,5,24,'Redigeer meta-data','2012-12-04 22:27:45','2012-12-04 22:29:10'),(142,4,4,25,'Add comment','2012-12-04 22:28:15','2012-12-04 22:29:40'),(143,5,5,25,'Nuwe komentaar','2012-12-04 22:28:15','2012-12-04 22:29:24'),(148,4,4,27,'Key','2012-12-04 22:43:51','2013-01-02 08:15:30'),(149,5,5,27,'Sleutel','2012-12-04 22:43:51','2012-12-04 22:44:05'),(151,4,4,28,'Comment','2012-12-04 22:44:27','2013-01-02 08:15:38'),(152,5,5,28,'Nota','2012-12-04 22:44:27','2012-12-04 22:44:45'),(154,4,4,29,'English (use as reference)','2012-12-04 22:45:23','2013-01-02 08:16:36'),(155,5,5,29,'Engels (gebruik as verwysing)','2012-12-04 22:45:23','2012-12-04 22:50:32'),(157,4,4,30,'Translated','2012-12-04 22:46:14','2013-01-02 08:16:49'),(158,5,5,30,'Vertaalde Term','2012-12-04 22:46:14','2012-12-04 22:46:26'),(160,4,4,31,'Javascript Phrases','2012-12-04 22:52:38','2013-01-02 08:17:06'),(161,5,5,31,'Javascript Frases','2012-12-04 22:52:38','2012-12-04 22:53:26'),(163,4,4,32,'PHP Phrases','2012-12-04 22:53:06','2013-01-02 08:17:18'),(164,5,5,32,'PHP Frases','2012-12-04 22:53:06','2012-12-04 22:53:33'),(166,18,13,1,'Ø§ÛŒØ±Ø§Ù†','2013-01-01 15:27:33','2013-01-01 15:30:48'),(167,18,13,2,'ÙØ§Ø±Ø³ÛŒ','2013-01-01 15:27:33','2013-01-01 15:30:54'),(168,18,13,6,'Ù†Ø§Ù… Ú©Ø§Ø±Ø¨Ø±ÛŒ','2013-01-01 15:27:34','2013-01-01 16:15:46'),(169,18,13,7,'Ø±Ù…Ø² Ø¹Ø¨ÙˆØ±','2013-01-01 15:27:34','2013-01-01 16:16:25'),(170,18,13,16,'ÛŒÚ© Ø²Ø¨Ø§Ù† Ø±Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-01 15:27:34','2013-01-01 16:17:08'),(171,18,13,10,'Ù†Ø§Ù… Ú©Ø§Ø±Ø¨Ø±ÛŒ Ø±Ø§ ÙˆØ§Ø±Ø¯ Ú©Ù†ÛŒØ¯','2013-01-01 15:27:34','2013-01-22 07:30:57'),(172,18,13,11,'Ø±Ù…Ø² Ø¹Ø¨ÙˆØ± Ø±Ø§ ÙˆØ§Ø±Ø¯ Ú©Ù†ÛŒØ¯','2013-01-01 15:27:34','2013-01-22 07:31:07'),(173,18,13,12,'ØªØ§ÛŒÛŒØ¯','2013-01-01 15:27:34','2013-01-22 07:31:11'),(174,18,13,13,'ØªØµØ¯ÛŒÙ‚ Ù„Ø·ÙØ§','2013-01-01 15:27:34','2013-01-01 16:18:55'),(175,18,13,14,'Ø¯Ø± Ø­Ø§Ù„ ØªØºÛŒÛŒØ± Ø²Ø¨Ø§Ù†ØŒ Ù„Ø·ÙØ§ ØµØ¨Ø± Ú©Ù†ÛŒØ¯','2013-01-01 15:27:34','2013-01-22 07:31:47'),(176,18,13,15,'Ø²Ø¨Ø§Ù† Ø¬Ø¯ÛŒØ¯ Ø§Ù†ØªØ®Ø§Ø¨ Ø´Ø¯','2013-01-01 15:27:34','2013-01-22 07:32:40'),(177,18,13,17,'Ø¯Ø±Ø¨Ø§Ø±Ù‡','2013-01-01 15:27:34','2013-01-22 07:32:47'),(178,18,13,18,'Ø´Ú©Ø³Øª','2013-01-01 15:27:34','2013-01-01 16:21:42'),(179,18,13,19,'Ø¨Ø§Ø²Ù†Ø´Ø§Ù†ÛŒ','2013-01-01 15:27:34','2013-01-22 07:32:54'),(180,18,13,20,'Ø§ÙØ²ÙˆØ¯Ù†','2013-01-01 15:27:34','2013-01-22 07:33:01'),(181,18,13,21,'Ù¾Ø§Ú© Ú©Ø±Ø¯Ù†','2013-01-01 15:27:34','2013-01-22 07:33:07'),(182,18,13,22,'ÙˆÛŒØ±Ø§ÛŒØ´','2013-01-01 15:27:34','2013-01-22 07:33:13'),(183,18,13,23,'Ú©Ù¾ÛŒ','2013-01-01 15:27:34','2013-01-22 07:36:00'),(184,18,13,24,'(modify me)','2013-01-01 15:27:34','2013-01-01 15:27:34'),(185,18,13,25,'Ø§ÙØ²ÙˆØ¯Ù† Ù†Ø¸Ø±','2013-01-01 15:27:34','2013-01-22 07:33:38'),(186,18,13,27,'Ú©Ù„ÛŒØ¯','2013-01-01 15:27:34','2013-01-22 07:33:45'),(187,18,13,28,'Ù†Ø¸Ø±','2013-01-01 15:27:34','2013-01-22 07:34:44'),(188,18,13,29,'Ø§Ù†Ú¯Ù„ÛŒØ³ÛŒ ( Ø²Ø¨Ø§Ù† Ù…Ø±Ø¬Ø¹ Ø§Ø³ØªÙØ§Ø¯Ù‡ Ø´ÙˆØ¯ (','2013-01-01 15:27:34','2013-01-22 07:39:19'),(189,18,13,30,'ØªØ±Ø¬Ù…Ù‡ Ø´Ø¯Ù‡','2013-01-01 15:27:34','2013-01-22 07:39:30'),(190,18,13,31,'Ø¹Ø¨Ø§Ø±Ø§Øª Ø¬Ø§ÙˆØ§ Ø§Ø³Ú©Ø±ÛŒÙ¾Øª','2013-01-01 15:27:34','2013-01-22 07:39:43'),(191,18,13,32,'Ø¹Ø¨Ø§Ø±Ø§Øª Ù¾ÛŒ Ø§Ú† Ù¾ÛŒ','2013-01-01 15:27:34','2013-01-22 07:41:00'),(196,4,4,34,'There are {count} items','2013-01-05 08:44:24','2013-01-05 08:44:44'),(197,5,5,34,'Daar is {count} items','2013-01-05 08:44:24','2013-01-21 10:11:42'),(199,18,13,34,'{count} Ù…ÙˆØ±Ø¯ ÙˆØ¬ÙˆØ¯ Ø¯Ø§Ø±Ø¯','2013-01-05 08:44:24','2013-01-22 07:42:33'),(200,4,4,35,'Connecting','2013-01-18 08:52:27','2013-01-18 08:52:40'),(201,5,5,35,'Konnekteer','2013-01-18 08:52:27','2013-01-18 08:52:55'),(203,18,13,35,'Ø¯Ø± Ø­Ø§Ù„ Ø¨Ø±Ù‚Ø±Ø§Ø±ÛŒ Ø§Ø±ØªØ¨Ø§Ø·','2013-01-18 08:52:27','2013-01-22 07:41:50'),(204,4,4,36,'Action','2013-01-20 21:05:50','2013-01-20 21:06:05'),(205,5,5,36,'Aksie','2013-01-20 21:05:50','2013-01-21 10:11:59'),(207,18,13,36,'Ø¹Ù…Ù„ÛŒØ§Øª','2013-01-20 21:05:50','2013-01-22 07:42:49'),(208,4,4,37,'Selection','2013-01-20 21:06:30','2013-01-20 21:06:40'),(209,5,5,37,'Seleksie','2013-01-20 21:06:30','2013-01-21 10:11:49'),(211,18,13,37,'Ø§Ù†ØªØ®Ø§Ø¨','2013-01-20 21:06:30','2013-01-22 07:42:54'),(243,4,4,38,'Logout','2013-01-22 07:51:54','2013-01-22 07:52:34'),(244,5,5,38,'Teken uit','2013-01-22 07:51:54','2013-01-22 07:52:48'),(245,18,13,38,'Ø®Ø±ÙˆØ¬','2013-01-22 07:51:54','2013-01-22 07:43:05'),(246,4,4,39,'Settings','2013-01-22 07:53:44','2013-01-22 07:54:39'),(247,5,5,39,'Verstellings','2013-01-22 07:53:44','2013-01-22 07:54:31'),(248,18,13,39,'ØªÙ†Ø¸ÛŒÙ…Ø§Øª','2013-01-22 07:53:44','2013-01-22 07:43:13'),(249,4,4,40,'Tile','2013-01-22 08:06:27','2013-01-22 08:06:41'),(250,5,5,40,'Teels','2013-01-22 08:06:27','2013-01-22 08:06:51'),(251,18,13,40,'ØªÛŒØªØ±','2013-01-22 08:06:27','2013-01-22 07:43:19'),(252,4,4,41,'Cascade','2013-01-22 08:07:16','2013-01-22 08:07:44'),(253,5,5,41,'Kaskade','2013-01-22 08:07:16','2013-01-22 11:02:31'),(254,18,13,41,'Ø¢Ø¨Ø´Ø§Ø±ÛŒ','2013-01-22 08:07:16','2013-01-22 07:43:49'),(255,4,4,42,'Restore','2013-01-22 08:09:08','2013-01-22 08:09:16'),(256,5,5,42,'Herstel','2013-01-22 08:09:08','2013-01-22 08:09:26'),(257,18,13,42,'Ø¨Ø§Ø²ÛŒØ§Ø¨ÛŒ','2013-01-22 08:09:08','2013-01-22 07:44:17'),(258,4,4,43,'Minimize','2013-01-22 08:09:59','2013-01-22 08:10:48'),(259,5,5,43,'Verklein','2013-01-22 08:09:59','2013-01-22 08:10:32'),(260,18,13,43,'Ø¨Ø¨Ø± Ù¾Ø§ÛŒÛŒÙ†','2013-01-22 08:09:59','2013-01-22 07:46:08'),(261,4,4,44,'Maximize','2013-01-22 08:11:22','2013-01-22 08:12:04'),(262,5,5,44,'Vergroot','2013-01-22 08:11:22','2013-01-22 08:12:20'),(263,18,13,44,'Ø¨Ø¨Ø± Ø¨Ø§Ù„Ø§','2013-01-22 08:11:22','2013-01-22 07:46:14'),(264,4,4,45,'Close','2013-01-22 08:12:53','2013-01-22 08:13:17'),(265,5,5,45,'Maak toe','2013-01-22 08:12:53','2013-01-22 08:13:06'),(266,18,13,45,'Ø¨Ø¨Ù†Ø¯','2013-01-22 08:12:53','2013-01-22 07:46:22'),(267,4,4,46,'Menu','2013-01-22 09:33:33','2013-01-22 09:33:39'),(268,5,5,46,'Kieslys','2013-01-22 09:33:33','2013-01-22 09:33:51'),(269,18,13,46,'Ù…Ù†Ùˆ','2013-01-22 09:33:33','2013-01-22 07:46:27'),(270,4,4,47,'i18n Manager','2013-01-22 09:46:44','2013-01-22 09:47:02'),(271,5,5,47,'i18n Bestuurder','2013-01-22 09:46:44','2013-01-22 09:47:19'),(272,18,13,47,'Ù…Ø¯ÛŒØ±ÛŒØª Ø²Ø¨Ø§Ù†','2013-01-22 09:46:44','2013-01-22 08:26:24'),(273,4,4,48,'Get Help','2013-01-22 09:48:23','2013-01-22 09:48:58'),(274,5,5,48,'Kry hulp','2013-01-22 09:48:23','2013-01-22 09:48:47'),(275,18,13,48,'Ú©Ù…Ú© Ø¨Ú¯ÛŒØ±','2013-01-22 09:48:23','2013-01-22 07:46:39'),(276,4,4,49,'Translation management','2013-01-22 09:49:42','2013-01-22 09:49:51'),(277,5,5,49,'Vertalingsbestuurder','2013-01-22 09:49:42','2013-01-22 12:53:35'),(278,18,13,49,'Ù…Ø¯ÛŒØ±ÛŒØª ØªØ±Ø¬Ù…Ù‡','2013-01-22 09:49:42','2013-01-22 07:46:45'),(279,4,4,50,'Online help for Translation Manager','2013-01-22 09:51:30','2013-01-22 09:52:09'),(280,5,5,50,'Aanlyn hulp vir die vertalings bestuurder','2013-01-22 09:51:30','2013-01-22 09:51:49'),(281,18,13,50,'Ú©Ù…Ú© Ø¢Ù†Ù„Ø§ÛŒÙ† Ø¨Ø±Ø§ÛŒ Ù…Ø¯ÛŒØ±ÛŒØª ØªØ±Ø¬Ù…Ù‡','2013-01-22 09:51:30','2013-01-22 07:47:08'),(282,4,4,51,'Select a country','2013-01-22 09:53:18','2013-01-22 09:53:46'),(283,5,5,51,'Kies \'n land','2013-01-22 09:53:18','2013-01-22 09:53:30'),(284,18,13,51,'ÛŒÚ© Ú©Ø´ÙˆØ± Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-22 09:53:18','2013-01-22 07:47:15'),(285,4,4,52,' You are required to select a country','2013-01-22 09:54:31','2013-01-22 09:54:56'),(286,5,5,52,'Jy is verplig om \'n land the kies','2013-01-22 09:54:31','2013-01-22 09:55:16'),(287,18,13,52,'Ø´Ù…Ø§ Ù†ÛŒØ§Ø² Ø¨Ù‡ Ø§Ù†ØªØ®Ø§Ø¨ ÛŒÚ© Ú©Ø´ÙˆØ± Ø¯Ø§Ø±ÛŒØ¯','2013-01-22 09:54:31','2013-01-22 07:47:36'),(288,4,4,53,'Country added','2013-01-22 09:56:02','2013-01-22 09:56:33'),(289,5,5,53,'Land bygevoeg','2013-01-22 09:56:02','2013-01-22 09:56:18'),(290,18,13,53,'Ú©Ø´ÙˆØ± Ø§Ø¶Ø§ÙÙ‡ Ø´Ø¯','2013-01-22 09:56:02','2013-01-22 07:47:43'),(291,4,4,54,'New country added fine','2013-01-22 09:57:09','2013-01-22 09:57:46'),(292,5,5,54,'Nuwe land is geskep sonder probleme','2013-01-22 09:57:09','2013-01-22 09:57:55'),(293,18,13,54,'Ú©Ø´ÙˆØ± Ø¬Ø¯ÛŒØ¯ Ø¨Ø§ Ù…ÙˆÙÙ‚ÛŒØª Ø§Ø¶Ø§ÙÙ‡ Ø´Ø¯','2013-01-22 09:57:09','2013-01-22 07:48:02'),(294,4,4,55,'Sending the info','2013-01-22 09:59:08','2013-01-22 09:59:45'),(295,5,5,55,'Versend die inligting','2013-01-22 09:59:08','2013-01-22 09:59:30'),(296,18,13,55,'Ø§Ø±Ø³Ø§Ù„ Ø§Ø·Ù„Ø§Ø¹Ø§Øª','2013-01-22 09:59:08','2013-01-22 07:59:24'),(297,4,4,56,'Country','2013-01-22 11:00:41','2013-01-22 11:01:08'),(298,5,5,56,'Land','2013-01-22 11:00:41','2013-01-22 11:01:36'),(299,18,13,56,'Ú©Ø´ÙˆØ±','2013-01-22 11:00:41','2013-01-22 07:59:29'),(300,4,4,57,'Language','2013-01-22 11:00:59','2013-01-22 11:01:15'),(301,5,5,57,'Taal','2013-01-22 11:00:59','2013-01-22 11:01:42'),(302,18,13,57,'Ø²Ø¨Ø§Ù†','2013-01-22 11:00:59','2013-01-22 07:59:37'),(303,4,4,58,'Copy phrases from language','2013-01-22 11:02:58','2013-01-22 11:03:58'),(304,5,5,58,'Gebruik \'n ander taal se frases','2013-01-22 11:02:58','2013-01-22 11:03:37'),(305,18,13,58,'Ø¹Ø¨Ø§Ø±Ø§Øª Ø±Ø§ Ø§Ø² Ø²Ø¨Ø§Ù† Ú©Ù¾ÛŒ Ú©Ù†','2013-01-22 11:02:58','2013-01-22 07:41:13'),(306,4,4,59,'Language of country','2013-01-22 11:05:53','2013-01-22 11:06:11'),(307,5,5,59,'Landstaal','2013-01-22 11:05:53','2013-01-22 11:06:25'),(308,18,13,59,'Ø²Ø¨Ø§Ù† Ú©Ø´ÙˆØ±','2013-01-22 11:05:53','2013-01-22 07:59:44'),(309,4,4,60,'Add Key','2013-01-22 11:10:56','2013-01-22 11:11:31'),(310,5,5,60,'Voeg sleutel by','2013-01-22 11:10:56','2013-01-22 11:11:15'),(311,18,13,60,'Ø§Ø¶Ø§ÙÙ‡ Ú©Ø±Ø¯Ù† Ú©Ù„ÛŒØ¯','2013-01-22 11:10:56','2013-01-22 07:59:51'),(312,4,4,61,'Supply the following detail please','2013-01-22 11:12:14','2013-01-22 11:12:36'),(313,5,5,61,'Voorsien asseblief die volgende detail','2013-01-22 11:12:14','2013-01-22 11:12:58'),(314,18,13,61,'Ù„Ø·ÙØ§\" Ø§Ø·Ù„Ø§Ø¹Ø§Øª Ø®ÙˆØ§Ø³ØªÙ‡ Ø´Ø¯Ù‡ Ø¯Ø± Ø²ÛŒØ± Ø±Ø§ ','2013-01-22 11:12:14','2013-01-22 08:02:59'),(315,4,4,62,'Key name','2013-01-22 11:14:12','2013-01-22 11:15:39'),(316,5,5,62,'Sleutelnaam','2013-01-22 11:14:12','2013-01-22 11:14:30'),(317,18,13,62,'Ù†Ø§Ù… Ú©Ù„ÛŒØ¯','2013-01-22 11:14:12','2013-01-22 08:03:34'),(318,4,4,63,'Specify a valid name for the key','2013-01-22 11:14:54','2013-01-22 11:15:58'),(319,5,5,63,'Voorsien \'n geldige naam vir die sleutel','2013-01-22 11:14:54','2013-01-22 11:15:28'),(320,18,13,63,'ÛŒÚ© Ù†Ø§Ù… Ù…Ø¹ØªØ¨Ø± Ø¨Ø±Ø§ÛŒ Ú©Ù„ÛŒØ¯ ÙˆØ§Ø±Ø¯ Ú©Ù†ÛŒØ¯','2013-01-22 11:14:54','2013-01-22 08:03:45'),(321,4,4,64,'Next','2013-01-22 11:16:52','2013-01-22 11:17:02'),(322,5,5,64,'Volgende','2013-01-22 11:16:52','2013-01-22 11:17:20'),(323,18,13,64,'Ø¨Ø¹Ø¯ÛŒ','2013-01-22 11:16:52','2013-01-22 08:03:53'),(324,4,4,65,'Choose a key','2013-01-22 11:22:02','2013-01-22 11:22:11'),(325,5,5,65,'Kies \'n sleutel','2013-01-22 11:22:02','2013-01-22 11:22:27'),(326,18,13,65,'ÛŒÚ© Ú©Ù„ÛŒØ¯ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-22 11:22:02','2013-01-22 08:03:58'),(327,4,4,66,'Delete country','2013-01-22 11:23:17','2013-01-22 11:23:36'),(328,5,5,66,'Verwyder land','2013-01-22 11:23:17','2013-01-22 11:23:25'),(329,18,13,66,'Ù¾Ø§Ú© Ú©Ø±Ø¯Ù† Ú©Ø´ÙˆØ±','2013-01-22 11:23:17','2013-01-22 08:04:21'),(330,4,4,67,'Select the country to delete. Make sure you know what you are doing.','2013-01-22 11:24:47','2013-01-22 11:25:20'),(331,5,5,67,'Kies \'n land om te verwyder, maak eers baie seker van jou saak.','2013-01-22 11:24:47','2013-01-22 11:27:14'),(332,18,13,67,'Ú©Ø´ÙˆØ± Ø±Ø§ Ø¨Ø±Ø§ÛŒ Ø­Ø°Ù Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯. Ù…Ø·Ù…Ø¦Ù† Ø´ÙˆÛŒØ¯ Ø§Ø² Ú©Ø§Ø±ÛŒ Ú©Ù‡ Ø§Ù†Ø¬Ø§','2013-01-22 11:24:47','2013-01-22 08:07:24'),(333,4,4,68,'Edit Countries','2013-01-22 11:28:07','2013-01-22 11:28:35'),(334,5,5,68,'Redigeer lande','2013-01-22 11:28:07','2013-01-22 11:28:22'),(335,18,13,68,'ÙˆÛŒØ±Ø§ÛŒØ´ Ú©Ø´ÙˆØ±Ù‡Ø§','2013-01-22 11:28:07','2013-01-22 08:07:30'),(336,4,4,69,'Select a country to edit','2013-01-22 11:29:25','2013-01-22 11:29:38'),(337,5,5,69,'Kies \'n land om te redigeer','2013-01-22 11:29:25','2013-01-22 12:00:22'),(338,18,13,69,'Ø¨Ø±Ø§ÛŒ ÙˆÛŒØ±Ø§ÛŒØ´ØŒ ÛŒÚ© Ú©Ø´ÙˆØ± Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-22 11:29:25','2013-01-22 08:08:00'),(339,4,4,70,'Country name','2013-01-22 11:31:19','2013-01-22 11:31:34'),(340,5,5,70,'Land se naam','2013-01-22 11:31:19','2013-01-22 11:31:46'),(341,18,13,70,'Ù†Ø§Ù… Ú©Ø´ÙˆØ±','2013-01-22 11:31:19','2013-01-22 08:08:09'),(342,4,4,71,'Specify a valid name please','2013-01-22 11:59:46','2013-01-22 12:01:04'),(343,5,5,71,'Voorsien asseblief \'n gledige naam','2013-01-22 11:59:46','2013-01-22 12:00:46'),(344,18,13,71,'Ù„Ø·ÙØ§ ÛŒÚ© Ù†Ø§Ù… Ù…Ø¹ØªØ¨Ø± Ù…Ø´Ø®Øµ Ú©Ù†ÛŒØ¯','2013-01-22 11:59:46','2013-01-22 08:08:32'),(345,4,4,72,'ISO code','2013-01-22 12:01:41','2013-01-22 12:01:51'),(346,5,5,72,'ISO-Kode','2013-01-22 12:01:41','2013-01-22 12:02:10'),(347,18,13,72,'Ú©Ø¯ Ø§ÛŒØ²Ùˆ','2013-01-22 12:01:41','2013-01-22 08:08:39'),(348,4,4,73,'eg ZA or DE','2013-01-22 12:02:48','2013-01-22 12:03:50'),(349,5,5,73,'bv ZA of DE','2013-01-22 12:02:48','2013-01-22 12:03:31'),(350,18,13,73,'Ù…Ø«Ù„Ø§ ZA ÛŒØ§ DE','2013-01-22 12:02:48','2013-01-22 08:09:00'),(351,4,4,74,'Specify a valid iso country code','2013-01-22 12:04:33','2013-01-22 12:04:50'),(352,5,5,74,'Voorsien \'n geldige ISO-kode','2013-01-22 12:04:33','2013-01-22 12:05:11'),(353,18,13,74,'Ø§ÛŒØ²ÙˆÛŒ Ù…Ø¹ØªØ¨Ø± Ú©Ø¯ Ú©Ø´ÙˆØ± Ø±Ø§ Ù…Ø´Ø®Øµ Ú©Ù†ÛŒØ¯','2013-01-22 12:04:33','2013-01-22 08:10:23'),(354,4,4,75,'Flag icon','2013-01-22 12:05:45','2013-01-22 12:06:32'),(355,5,5,75,'Vlag prentjie','2013-01-22 12:05:45','2013-01-22 12:06:15'),(356,18,13,75,'Ø¢ÛŒÚ©ÙˆÙ† Ù¾Ø±Ú†Ù…','2013-01-22 12:05:45','2013-01-22 08:10:30'),(357,4,4,76,'Select icon','2013-01-22 12:07:19','2013-01-22 12:07:31'),(358,5,5,76,'Kies prentjie','2013-01-22 12:07:19','2013-01-22 12:07:53'),(359,18,13,76,'Ø§Ù†ØªØ®Ø§Ø¨ Ø¢ÛŒÚ©ÙˆÙ†','2013-01-22 12:07:19','2013-01-22 08:10:44'),(360,4,4,77,'Prevoius','2013-01-22 12:08:41','2013-01-22 12:09:10'),(361,5,5,77,'Terug','2013-01-22 12:08:41','2013-01-22 12:08:57'),(362,18,13,77,'Ù‚Ø¨Ù„ÛŒ','2013-01-22 12:08:41','2013-01-22 08:10:51'),(363,4,4,78,'Choose a country','2013-01-22 12:39:33','2013-01-22 12:39:44'),(364,5,5,78,'Kies \'n land','2013-01-22 12:39:33','2013-01-22 12:39:56'),(365,18,13,78,'ÛŒÚ© Ú©Ø´ÙˆØ± Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-22 12:39:33','2013-01-22 08:11:04'),(366,4,4,79,'Add Language','2013-01-22 12:42:34','2013-01-22 12:43:01'),(367,5,5,79,'Voeg nuwe taal by','2013-01-22 12:42:34','2013-01-22 12:42:48'),(368,18,13,79,'Ø§ÙØ²ÙˆØ¯Ù† Ø²Ø¨Ø§Ù†','2013-01-22 12:42:34','2013-01-22 08:11:13'),(369,4,4,80,'Select an existing country to add a language to.','2013-01-22 12:45:05','2013-01-22 12:45:31'),(370,5,5,80,'Kies \'n bestaande land waarby jy \'n nuwe taal wil voeg.','2013-01-22 12:45:05','2013-01-22 12:46:11'),(371,18,13,80,'Ø¨Ø±Ø§ÛŒ Ø§ÙØ²ÙˆØ¯Ù† ØªØ±Ø¬Ù…Ù‡ ÛŒÚ© Ú©Ø´ÙˆØ± Ù…ÙˆØ¬ÙˆØ¯ Ø±Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-22 12:45:05','2013-01-22 08:11:52'),(372,4,4,81,'Alternatively choose to create a new country.','2013-01-22 12:46:30','2013-01-22 12:47:15'),(373,5,5,81,'Andersins, kies om \'n nuwe land te skep.','2013-01-22 12:46:30','2013-01-22 12:46:52'),(374,18,13,81,'ÛŒØ§ ÛŒÚ© Ú©Ø´ÙˆØ± Ø¬Ø¯ÛŒØ¯ Ø§ÛŒØ¬Ø§Ø¯ Ú©Ù†ÛŒØ¯','2013-01-22 12:46:30','2013-01-22 08:12:41'),(375,4,4,82,'Create new country','2013-01-22 12:48:15','2013-01-22 12:48:24'),(376,5,5,82,'Voeg nuwe land by','2013-01-22 12:48:15','2013-01-22 12:48:38'),(377,18,13,82,'Ø§ÛŒØ¬Ø§Ø¯ Ú©Ø´ÙˆØ± Ø¬Ø¯ÛŒØ¯','2013-01-22 12:48:15','2013-01-22 08:12:57'),(381,4,4,84,'eg pt or de','2013-01-22 13:07:20','2013-01-22 13:07:55'),(382,5,5,84,'bv pt of de','2013-01-22 13:07:20','2013-01-22 13:07:39'),(383,18,13,84,'Ù…Ø«Ù„Ø§ pt ÛŒØ§ de','2013-01-22 13:07:20','2013-01-22 08:13:06'),(384,4,4,85,'Specify a valid iso language code','2013-01-22 13:08:23','2013-01-22 13:08:41'),(385,5,5,85,'Voorsien \'n geldige ISO-kode vir die taal','2013-01-22 13:08:23','2013-01-22 13:09:15'),(386,18,13,85,'ÛŒÚ© Ø§ÛŒØ²ÙˆÛŒ Ú©Ø¯ Ú©Ø´ÙˆØ± Ù…Ø¹ØªØ¨Ø± Ø§Ø±Ø§Ø¦Ù‡ Ú©Ù†ÛŒØ¯','2013-01-22 13:08:23','2013-01-22 08:15:38'),(387,4,4,86,'Edit Key','2013-01-22 13:54:06','2013-01-22 13:54:33'),(388,5,5,86,'Redigeer sleutel','2013-01-22 13:54:06','2013-01-22 13:54:21'),(389,18,13,86,'ÙˆÛŒØ±Ø§ÛŒØ´ Ú©Ù„ÛŒØ¯','2013-01-22 13:54:06','2013-01-22 08:15:51'),(390,4,4,87,'Select a key to edit','2013-01-22 13:55:14','2013-01-22 13:55:32'),(391,5,5,87,'Kies \'n bestaande sleutel om te redigeer','2013-01-22 13:55:14','2013-01-22 13:55:55'),(392,18,13,87,'ÛŒÚ© Ú©Ù„ÛŒØ¯ Ø¨Ø±Ø§ÛŒ ÙˆÛŒØ±Ø§ÛŒØ´ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-22 13:55:14','2013-01-22 08:16:07'),(393,4,4,88,'Choose an existing language to copy','2013-01-22 14:03:27','2013-01-22 14:04:35'),(394,5,5,88,'Kies een van die bestaande tale wat jy wil gebruik','2013-01-22 14:03:27','2013-01-22 14:04:09'),(395,18,13,88,'ÛŒÚ© Ø²Ø¨Ø§Ù† Ù…ÙˆØ¬ÙˆØ¯ Ø¨Ø±Ø§ÛŒ Ú©Ù¾ÛŒ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-22 14:03:27','2013-01-22 08:16:18'),(396,4,4,89,'Available languages','2013-01-22 14:05:21','2013-01-22 14:05:39'),(397,5,5,89,'Beskikbare tale','2013-01-22 14:05:21','2013-01-22 14:05:56'),(398,18,13,89,'Ø²Ø¨Ø§Ù†Ù‡Ø§ÛŒ Ù…ÙˆØ¬ÙˆØ¯','2013-01-22 14:05:21','2013-01-22 08:16:29'),(399,4,4,90,'Delete language','2013-01-22 14:09:24','2013-01-22 14:10:03'),(400,5,5,90,'Verwyder taal','2013-01-22 14:09:24','2013-01-22 14:09:46'),(401,18,13,90,'Ù¾Ø§Ú© Ú©Ø±Ø¯Ù† Ø²Ø¨Ø§Ù†','2013-01-22 14:09:24','2013-01-22 08:16:44'),(402,4,4,91,'Select the language to delete.','2013-01-22 14:11:54','2013-01-22 14:12:14'),(403,5,5,91,'Kies die taal wat jy wil verwyder.','2013-01-22 14:11:54','2013-01-22 14:12:33'),(404,18,13,91,'Ø²Ø¨Ø§Ù† Ø±Ø§ Ø¨Ø±Ø§ÛŒ Ù¾Ø§Ú© Ø´Ø¯Ù† Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-22 14:11:54','2013-01-22 08:17:01'),(405,4,4,92,'Make sure you know what you are doing.','2013-01-22 14:12:51','2013-01-22 14:13:45'),(406,5,5,92,'Maak seker voor jy jou aksie deurvoer.','2013-01-22 14:12:51','2013-01-22 14:13:22'),(407,18,13,92,'Ù…Ø·Ù…Ø¦Ù† Ø´ÙˆÛŒØ¯ Ø§Ø² Ú©Ø§Ø±ÛŒ Ú©Ù‡ Ù…ÛŒÚ©Ù†ÛŒØ¯ Ú©Ø§Ù…Ù„Ø§ Ø§Ø·Ù„Ø§Ø¹ Ø¯Ø§Ø±ÛŒØ¯','2013-01-22 14:12:51','2013-01-22 08:17:47'),(408,4,4,93,'Edit Languages','2013-01-22 14:14:46','2013-01-22 14:14:57'),(409,5,5,93,'Redigeer tale','2013-01-22 14:14:46','2013-01-22 14:15:18'),(410,18,13,93,'ÙˆÛŒØ±Ø§ÛŒØ´ Ø²Ø¨Ø§Ù† Ù‡Ø§','2013-01-22 14:14:46','2013-01-22 08:18:01'),(411,4,4,94,'Select a language to edit','2013-01-22 14:15:55','2013-01-22 14:16:28'),(412,5,5,94,'Kies \'n bestaande taal om te redigeer','2013-01-22 14:15:55','2013-01-22 14:16:12'),(413,18,13,94,'Ø¨Ø±Ø§ÛŒ ÙˆÛŒØ±Ø§ÛŒØ´ Ø²Ø¨Ø§Ù† Ø±Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-22 14:15:55','2013-01-22 08:18:13'),(414,4,4,95,'Add Msgid','2013-01-22 14:26:33','2013-01-22 14:26:48'),(415,5,5,95,'Voeg nuwe Msgid by','2013-01-22 14:26:33','2013-01-22 14:27:11'),(416,18,13,95,'Ø§ÙØ²ÙˆØ¯Ù† Ø´Ù†Ø§Ø³Ù‡ Ù¾ÛŒØ§Ù…','2013-01-22 14:26:33','2013-01-22 08:22:27'),(417,4,4,96,'Msgid','2013-01-22 14:28:53','2013-01-22 14:29:18'),(418,5,5,96,'Msgid','2013-01-22 14:28:53','2013-01-22 14:29:02'),(419,18,13,96,'Ø´Ù†Ø§Ø³Ù‡ Ù¾ÛŒØ§Ù…','2013-01-22 14:28:53','2013-01-22 08:22:18'),(420,4,4,97,'Msgstr','2013-01-22 14:30:24','2013-01-22 14:30:34'),(421,5,5,97,'Msgstr','2013-01-22 14:30:24','2013-01-22 14:30:45'),(422,18,13,97,'Ø±Ø´ØªÙ‡ Ù¾ÛŒØ§Ù…','2013-01-22 14:30:24','2013-01-22 08:22:35'),(423,4,4,98,'Optional Comment','2013-01-22 14:31:03','2013-01-22 14:31:46'),(424,5,5,98,'Opsionele nota','2013-01-22 14:31:03','2013-01-22 14:31:27'),(425,18,13,98,'Ø§Ø·Ù„Ø§Ø¹Ø§Øª ØªÚ©Ù…Ù„ÛŒÙ„ÛŒ','2013-01-22 14:31:03','2013-01-22 08:23:09'),(426,4,4,99,'Remove existing comments','2013-01-22 14:34:26','2013-01-22 14:34:38'),(427,5,5,99,'Verwyder die bestaandes','2013-01-22 14:34:26','2013-01-22 14:35:04'),(428,18,13,99,'Ù¾Ø§Ú© Ú©Ø±Ø¯Ù† Ù†Ø¸Ø±Ø§Øª Ù…ÙˆØ¬ÙˆØ¯','2013-01-22 14:34:26','2013-01-22 08:23:24'),(429,4,4,100,'Add comment to msgid','2013-01-22 14:35:43','2013-01-22 14:36:37'),(430,5,5,100,'Voeg nota\'s by die Msgid','2013-01-22 14:35:43','2013-01-22 14:36:15'),(431,18,13,100,'Ø§ÙØ²ÙˆØ¯Ù† Ù†Ø¸Ø± Ø¨Ù‡ Ø´Ù†Ø§Ø³Ù‡ Ù¾ÛŒØ§Ù…','2013-01-22 14:35:43','2013-01-22 08:23:39'),(432,4,4,101,'Copy from another language','2013-01-22 14:40:51','2013-01-22 14:41:08'),(433,5,5,101,'Gebruik \'n ander taal se frases','2013-01-22 14:40:51','2013-01-22 14:41:37'),(434,18,13,101,'Ø§Ø² ÛŒÚ© Ø²Ø¨Ø§Ù† Ø¯ÛŒÚ¯Ø± Ú©Ù¾ÛŒ Ú©Ù†','2013-01-22 14:40:51','2013-01-22 08:24:01'),(435,4,4,102,'Maintain existing translations','2013-01-22 14:43:17','2013-01-22 14:44:27'),(436,5,5,102,'Behou bestaande vertaalfrases','2013-01-22 14:43:17','2013-01-22 14:43:39'),(437,18,13,102,'Ø¨Ø§Ø²Ù†Ú¯Ø±ÛŒ ØªØ±Ø¬Ù…Ù‡ Ù‡Ø§ÛŒ Ù…ÙˆØ¬ÙˆØ¯','2013-01-22 14:43:17','2013-01-22 08:28:15'),(438,4,4,103,'Edit Msgid','2013-01-22 14:45:24','2013-01-22 14:45:38'),(439,5,5,103,'Redigeer Msgid','2013-01-22 14:45:24','2013-01-22 14:45:57'),(440,18,13,103,'ÙˆÛŒØ±Ø§ÛŒØ´ Ø´Ù†Ø§Ø³Ù‡ Ù¾ÛŒØ§Ù…','2013-01-22 14:45:24','2013-01-22 08:28:24'),(441,4,4,104,'Previous value','2013-01-22 14:46:40','2013-01-22 14:47:17'),(442,5,5,104,'Vorige waarde','2013-01-22 14:46:40','2013-01-22 14:46:55'),(443,18,13,104,'Ù…Ù‚Ø¯Ø§Ø± Ù‚Ø¨Ù„ÛŒ','2013-01-22 14:46:40','2013-01-22 08:28:36'),(444,4,4,105,'Specify Meta data','2013-01-22 14:49:51','2013-01-22 14:50:01'),(445,5,5,105,'Voorsien meta-data','2013-01-22 14:49:51','2013-01-22 14:50:15'),(446,18,13,105,'Ø§Ø±Ø§Ø¦Ù‡ Ø¯Ø§Ø¯Ù‡ Ù‡Ø§ÛŒ Ø§Ø·Ù„Ø§Ø¹Ø§ØªÛŒ ) meta data )','2013-01-22 14:49:51','2013-01-22 08:29:06'),(447,4,4,106,'Enter','2013-01-22 14:51:18','2013-01-22 14:51:53'),(448,5,5,106,'Voorsien','2013-01-22 14:51:18','2013-01-22 14:51:37'),(449,18,13,106,'ÙˆØ±ÙˆØ¯','2013-01-22 14:51:18','2013-01-22 08:29:16'),(450,4,4,107,'Source','2013-01-22 15:10:06','2013-01-22 15:10:44'),(451,5,5,107,'Bron','2013-01-22 15:10:06','2013-01-22 15:10:19'),(452,18,13,107,'Ù…Ø¨Ø¯Ø§','2013-01-22 15:10:06','2013-01-22 08:29:38'),(453,4,4,108,'Destination','2013-01-22 15:11:01','2013-01-22 15:11:15'),(454,5,5,108,'Bestemming','2013-01-22 15:11:01','2013-01-22 15:11:28'),(455,18,13,108,'Ù…Ù‚ØµØ¯','2013-01-22 15:11:01','2013-01-22 08:29:34'),(456,4,4,109,'Select something','2013-01-22 15:15:16','2013-01-22 15:16:28'),(457,5,5,109,'Maak \'n keuse','2013-01-22 15:15:16','2013-01-22 15:15:30'),(458,18,13,109,'ÛŒÚ© Ú†ÛŒØ²ÛŒ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-22 15:15:16','2013-01-22 08:29:51'),(459,4,4,110,'Select something to work on','2013-01-22 15:16:37','2013-01-22 15:16:51'),(460,5,5,110,'Kies eers \'n item om op te werk','2013-01-22 15:16:37','2013-01-22 15:17:12'),(461,18,13,110,'ÛŒÚ© Ú†ÛŒØ²ÛŒ Ø¨Ø±Ø§ÛŒ Ø§Ù†Ø¬Ø§Ù… Ø¹Ù…Ù„ÛŒØ§Øª Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-22 15:16:37','2013-01-22 08:30:10'),(462,4,4,111,'Confirm','2013-01-22 15:21:39','2013-01-22 15:22:08'),(463,5,5,111,'Bevestig eers','2013-01-22 15:21:39','2013-01-22 15:21:56'),(464,18,13,111,'ØªØ§ÛŒÛŒØ¯','2013-01-22 15:21:39','2013-01-22 08:30:20'),(465,4,4,112,'Are you sure you want to do that?','2013-01-22 15:23:46','2013-01-22 15:24:18'),(466,5,5,112,'Wil jy voortgaan met die aksie?','2013-01-22 15:23:46','2013-01-22 15:24:43'),(467,18,13,112,'Ø¢ÛŒØ§ Ø§Ø² Ø§Ù†Ø¬Ø§Ù… Ú¯Ø±ÙØªÙ† Ø§ÛŒÙ† Ú©Ø§Ø± Ù…Ø·Ù…Ø¦Ù†ÛŒØ¯ ØŸ ','2013-01-22 15:23:46','2013-01-22 08:30:35'),(468,4,4,113,'Item added','2013-01-22 15:29:02','2013-01-22 15:29:41'),(469,5,5,113,'Nuwe item bygevoeg','2013-01-22 15:29:02','2013-01-22 15:29:27'),(470,18,13,113,'Ø¢ÛŒØªÙ… Ø§Ø¶Ø§ÙÙ‡ Ø´Ø¯','2013-01-22 15:29:02','2013-01-22 08:30:56'),(471,4,4,114,'New item added fine','2013-01-22 15:30:04','2013-01-22 15:30:24'),(472,5,5,114,'Nuwe item is sonder probleme geskep','2013-01-22 15:30:04','2013-01-22 15:31:04'),(473,18,13,114,'Ø¢ÛŒØªÙ… Ø¨Ø§ Ù…ÙˆÙÙ‚ÛŒØª Ø§ÙØ²ÙˆØ¯Ù‡ Ø´Ø¯','2013-01-22 15:30:04','2013-01-22 08:31:09'),(474,4,4,115,'Updated database','2013-01-22 15:38:01','2013-01-22 15:38:39'),(475,5,5,115,'Databasis is opgedateer','2013-01-22 15:38:01','2013-01-22 15:38:28'),(476,18,13,115,'Ù¾Ø§ÛŒÚ¯Ø§Ù‡ Ø¯Ø§Ø¯Ù‡ Ø¨Ø±ÙˆØ² Ø´Ø¯Ù‡','2013-01-22 15:38:01','2013-01-22 07:35:53'),(477,4,4,116,'Database has been updated','2013-01-22 15:39:03','2013-01-22 15:40:05'),(478,5,5,116,'Die databasis is opgedateer sonder probleme','2013-01-22 15:39:03','2013-01-22 15:40:43'),(479,18,13,116,'Ù¾Ø§ÛŒÚ¯Ø§Ù‡ Ø¯Ø§Ø¯Ù‡ Ø¨Ø±ÙˆØ²Ø±Ø³Ø§Ù†ÛŒ Ø´Ø¯','2013-01-22 15:39:03','2013-01-22 07:35:45'),(480,4,4,117,'Select one only','2013-01-22 15:41:49','2013-01-22 15:43:33'),(481,5,5,117,'Jy mag slegs een kies','2013-01-22 15:41:49','2013-01-22 15:42:04'),(482,18,13,117,'ÙÙ‚Ø· ÛŒÚ©ÛŒ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-22 15:41:49','2013-01-22 08:13:41'),(483,4,4,118,'Selection limited to one','2013-01-22 15:42:43','2013-01-22 15:43:47'),(484,5,5,118,'Jou keuse is beperk to een item','2013-01-22 15:42:43','2013-01-22 15:43:14'),(485,18,13,118,'Ù…Ø­Ø¯ÙˆØ¯ Ø¨Ù‡ ÛŒÚ© Ø§Ù†ØªØ®Ø§Ø¨','2013-01-22 15:42:43','2013-01-22 07:35:07'),(486,4,4,119,'Access Providers','2013-01-30 11:41:56','2013-01-30 11:42:25'),(487,5,5,119,'Toegangsvoorsieners','2013-01-30 11:41:56','2013-05-25 08:41:09'),(488,18,13,119,'ÙØ±Ø§Ù‡Ù… Ø¢ÙˆØ±Ù†Ø¯','2013-01-30 11:41:56','2013-02-01 22:11:22'),(489,4,4,120,'Logged in user','2013-01-30 11:43:19','2013-01-30 11:43:38'),(490,5,5,120,'Ingetekende gebruiker','2013-01-30 11:43:19','2013-05-25 08:41:23'),(491,18,13,120,'Ú©Ø§Ø±Ø¨Ø± Ø¯Ø§Ø®Ù„','2013-01-30 11:43:19','2013-02-01 22:11:54'),(492,4,4,121,'Select an owner','2013-01-30 11:44:02','2013-01-30 11:44:19'),(493,5,5,121,'Kies \'n eienaar','2013-01-30 11:44:02','2013-05-25 08:41:37'),(494,18,13,121,'ÛŒÚ© Ù…Ø§Ù„Ú© Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 11:44:02','2013-02-01 22:12:29'),(495,4,4,122,'First select an Access Provider who will be the owner','2013-01-30 11:44:42','2013-01-30 11:45:12'),(496,5,5,122,'Kies eerste \'n Toegangsvoorsiener wie die eienaar sal wees','2013-01-30 11:44:42','2013-05-25 08:42:20'),(497,18,13,122,'Ø§ÙˆÙ„ ÛŒÚ© ÙØ±Ø§Ù‡Ù… Ø¢ÙˆØ±Ù†Ø¯Ù‡ Ø¨Ø±Ø§ÛŒ Ù…Ø§Ù„Ú©ÛŒØª Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 11:44:42','2013-02-01 22:12:54'),(498,4,4,123,'New item created','2013-01-30 11:46:05','2013-01-30 11:46:21'),(499,5,5,123,'Nuwe item is geskep','2013-01-30 11:46:05','2013-05-25 08:42:35'),(500,18,13,123,'Ù…ÙˆØ±Ø¯ Ø¬Ø¯ÛŒØ¯ Ø§ÛŒØ¬Ø§Ø¯ Ø´Ø¯','2013-01-30 11:46:05','2013-02-01 22:13:07'),(501,4,4,124,'Item created fine','2013-01-30 11:46:50','2013-01-30 11:47:04'),(502,5,5,124,'Nuwe item is wel geskape','2013-01-30 11:46:50','2013-05-25 08:42:51'),(503,18,13,124,'Ù…ÙˆØ±Ø¯ Ø¨Ø§ Ù…ÙˆÙÙ‚ÛŒØª Ø§ÛŒØ¬Ø§Ø¯ Ø´Ø¯','2013-01-30 11:46:50','2013-02-01 22:13:17'),(504,4,4,125,'Select an item','2013-01-30 11:47:27','2013-01-30 11:47:43'),(505,5,5,125,'Kies \'n item','2013-01-30 11:47:27','2013-05-25 08:42:59'),(506,18,13,125,'ÛŒÚ© Ù…ÙˆØ±Ø¯ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 11:47:27','2013-02-01 22:13:27'),(507,4,4,126,'First select an item','2013-01-30 11:48:00','2013-01-30 11:48:14'),(508,5,5,126,'Kies eersts \'n item','2013-01-30 11:48:00','2013-05-25 08:43:14'),(509,18,13,126,'Ø§ÙˆÙ„ ÛŒÚ© Ù…ÙˆØ±Ø¯ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 11:48:00','2013-02-01 22:13:38'),(510,4,4,127,'Item updated','2013-01-30 11:48:38','2013-01-30 11:48:50'),(511,5,5,127,'Item is opgedateer','2013-01-30 11:48:38','2013-05-25 08:43:26'),(512,18,13,127,'Ù…ÙˆØ±Ø¯ Ø¨Ø±ÙˆØ²Ø±Ø³Ø§Ù†ÛŒ Ø´Ø¯','2013-01-30 11:48:38','2013-02-01 22:13:47'),(513,4,4,128,'Item updated fine','2013-01-30 11:49:15','2013-01-30 11:49:28'),(514,5,5,128,'Item het mooi opgedateer','2013-01-30 11:49:15','2013-05-25 08:43:38'),(515,18,13,128,'Ù…ÙˆØ±Ø¯ Ø¯Ø±Ø³Øª Ø¨Ø±ÙˆØ²Ø±Ø³Ø§Ù†ÛŒ Ø´Ø¯','2013-01-30 11:49:15','2013-02-01 22:14:03'),(516,4,4,129,'Item deleted','2013-01-30 11:50:55','2013-01-30 11:51:07'),(517,5,5,129,'Item is uitgevee','2013-01-30 11:50:55','2013-05-25 08:45:13'),(518,18,13,129,'Ù…ÙˆØ±Ø¯ Ø­Ø°Ù Ø´Ø¯','2013-01-30 11:50:55','2013-02-01 22:14:16'),(519,4,4,130,'Item deleted fine','2013-01-30 11:51:27','2013-01-30 11:51:40'),(520,5,5,130,'Item het mooi uitgevee','2013-01-30 11:51:27','2013-05-25 08:45:27'),(521,18,13,130,'Ù…ÙˆØ±Ø¯ Ø¯Ø±Ø³Øª Ø­Ø°Ù Ø´Ø¯','2013-01-30 11:51:27','2013-02-01 22:14:41'),(522,4,4,131,'Problems deleting item','2013-01-30 11:52:01','2013-01-30 11:52:17'),(523,5,5,131,'Probleme ondervind met die uitvee van die item','2013-01-30 11:52:01','2013-05-25 08:46:47'),(524,18,13,131,'Ø§Ø´Ú©Ø§Ù„Ù‡Ø§ Ø¯Ø± Ø­Ø°Ù Ú©Ø±Ø¯Ù† Ù…ÙˆØ±Ø¯','2013-01-30 11:52:01','2013-02-01 22:15:10'),(525,4,4,132,'Select a node','2013-01-30 11:52:40','2013-01-30 11:52:52'),(526,5,5,132,'Kies \'n nodus','2013-01-30 11:52:40','2013-05-25 08:46:00'),(527,18,13,132,'ÛŒÚ© Ú¯Ø±Ù‡ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 11:52:40','2013-02-01 22:15:21'),(528,4,4,133,'First select a node to expand','2013-01-30 11:53:09','2013-01-30 11:53:33'),(529,5,5,133,'Kies eerste \'n nodus om te besigtig','2013-01-30 11:53:09','2013-05-25 08:46:27'),(530,18,13,133,'Ø§ÙˆÙ„ ÛŒÚ© Ú¯Ø±Ù‡ Ø¨Ø±Ø§ÛŒ Ú¯Ø³ØªØ±Ø´ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 11:53:09','2013-02-01 22:15:43'),(531,4,4,134,'Right Changed','2013-01-30 11:53:54','2013-01-30 11:54:11'),(532,5,5,134,'Regte het verander','2013-01-30 11:53:54','2013-05-25 08:46:36'),(533,18,13,134,'Ø¯Ø³ØªØ±Ø³ÛŒ ØªØºÛŒÛŒØ± Ú©Ø±Ø¯','2013-01-30 11:53:54','2013-02-01 22:16:11'),(537,4,4,136,'Problems changing right','2013-01-30 11:54:55','2013-01-30 11:55:11'),(538,5,5,136,'Probleme om die reg te wysig','2013-01-30 11:54:55','2013-05-25 08:47:08'),(539,18,13,136,'Ù…Ø´Ú©Ù„Ø§Øª ØªØºÛŒÛŒØ± Ø¯Ø³ØªØ±Ø³ÛŒ','2013-01-30 11:54:55','2013-02-01 22:16:45'),(540,4,4,137,'There were some problems experienced during changing of the right','2013-01-30 11:55:31','2013-01-30 11:56:04'),(541,5,5,137,'Daar was probleme ondervind tydens die wysiging van die regte','2013-01-30 11:55:31','2013-05-25 08:47:50'),(542,18,13,137,'ÛŒÚ© Ø³Ø±ÛŒ Ù…Ø´Ú©Ù„Ø§Øª Ø­ÛŒÙ† ØªØºÛŒÛŒØ± Ø¯Ø³ØªØ±Ø³ÛŒ Ø¨ÙˆØ¬ÙˆØ¯ Ø¢Ù…Ø¯','2013-01-30 11:55:31','2013-02-01 22:17:15'),(543,4,4,138,'Select one or more','2013-01-30 11:56:35','2013-01-30 11:56:54'),(544,5,5,138,'Kies een of meer','2013-01-30 11:56:35','2013-05-25 08:47:59'),(545,18,13,138,'ÛŒÚ© ÛŒØ§ Ú†Ù†Ø¯ØªØ§ Ø±Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 11:56:35','2013-02-01 22:24:06'),(546,4,4,139,'Select one or more columns please','2013-01-30 11:57:13','2013-01-30 11:57:35'),(547,5,5,139,'Kies een of meer kolomme','2013-01-30 11:57:13','2013-05-25 08:48:20'),(548,18,13,139,'ÛŒÚ© ÛŒØ§ Ú†Ù†Ø¯ Ø³ØªÙˆÙ† Ø±Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 11:57:13','2013-02-01 22:23:43'),(549,4,4,140,'Limit the selection','2013-01-30 11:58:33','2013-01-30 11:58:51'),(550,5,5,140,'Kort die keuse in','2013-01-30 11:58:33','2013-05-25 08:48:35'),(551,18,13,140,'Ù…Ø­Ø¯ÙˆØ¯ Ú©Ø±Ø¯Ù† Ø§Ù†ØªØ®Ø§Ø¨','2013-01-30 11:58:33','2013-02-01 22:24:16'),(552,4,4,141,'Rights manager','2013-01-30 12:07:45','2013-01-30 12:07:59'),(553,5,5,141,'Bestuur van regte','2013-01-30 12:07:45','2013-05-25 08:48:49'),(554,18,13,141,'Ù…Ø¯ÛŒØ± Ø¯Ø³ØªØ±Ø³ÛŒ','2013-01-30 12:07:45','2013-02-01 22:24:52'),(555,4,4,142,'Rights management','2013-01-30 12:08:17','2013-01-30 12:08:31'),(556,5,5,142,'Bestuur van regte','2013-01-30 12:08:17','2013-05-25 08:49:02'),(557,18,13,142,'Ù…Ø¯ÛŒØ±ÛŒØª Ø¯Ø³ØªØ±Ø³ÛŒ','2013-01-30 12:08:17','2013-02-01 22:24:59'),(558,4,4,143,'Access Controll Objects','2013-01-30 12:08:53','2013-01-30 12:09:15'),(559,5,5,143,'Toegangs Beheer Objek','2013-01-30 12:08:53','2013-05-25 08:50:19'),(560,18,13,143,'(new addition)','2013-01-30 12:08:53','2013-01-30 12:08:53'),(561,4,4,144,'Access Provider Rights','2013-01-30 12:09:38','2013-01-30 12:09:48'),(562,5,5,144,'Toegangsvoorsiener se Regte','2013-01-30 12:09:38','2013-05-25 08:50:05'),(563,18,13,144,'Ø¯Ø³ØªØ±Ø³ÛŒ ÙØ±Ø§Ù‡Ù… Ø¢ÙˆØ±Ù†Ø¯Ú¯Ø§Ù†','2013-01-30 12:09:38','2013-02-02 00:42:56'),(564,4,4,145,'Permanent User Rights','2013-01-30 12:10:11','2013-01-30 12:10:36'),(565,5,5,145,'Permanentegebruiker se regte','2013-01-30 12:10:11','2013-05-25 08:50:36'),(566,18,13,145,'Ø¯Ø³ØªØ±Ø³ÛŒ Ú©Ø§Ø±Ø¨Ø±Ø§Ù† Ø«Ø§Ø¨Øª','2013-01-30 12:10:11','2013-02-02 00:42:44'),(567,4,4,146,'First select a node of the tree under which to add an ACO entry','2013-01-30 12:11:32','2013-01-30 12:12:05'),(568,5,5,146,'Kies eetste \'n nodus van die boom onder wie \'n ACO inskrywing gedoen gaan word','2013-01-30 12:11:32','2013-05-25 08:51:17'),(569,18,13,146,'(new addition)','2013-01-30 12:11:32','2013-01-30 12:11:32'),(570,4,4,147,'Root node selected','2013-01-30 12:13:25','2013-01-30 12:13:43'),(571,5,5,147,'basis nodus gekies','2013-01-30 12:13:25','2013-05-25 08:51:30'),(572,18,13,147,'Ú¯Ø±Ù‡ Ø±ÛŒØ´Ù‡ Ø§Ù†ØªØ®Ø§Ø¨ Ø´Ø¯Ù‡','2013-01-30 12:13:25','2013-02-02 00:43:17'),(573,4,4,148,'You can not edit the root node','2013-01-30 12:14:01','2013-01-30 12:14:21'),(574,5,5,148,'Jy kan nie die basis nodus redigeer nie','2013-01-30 12:14:01','2013-05-25 08:51:54'),(575,18,13,148,'Ú¯Ø±Ù‡ Ø§ØµÙ„ÛŒ ÙˆÛŒØ±Ø§ÛŒØ´ ','2013-01-30 12:14:01','2013-02-01 23:41:51'),(576,4,4,149,'Error encountered','2013-01-30 12:20:36','2013-01-30 12:20:50'),(577,5,5,149,'Groot moeilikheid','2013-01-30 12:20:36','2013-05-25 08:52:09'),(578,18,13,149,'Ø®Ø·Ø§ Ø±Ø® Ø¯Ø§Ø¯','2013-01-30 12:20:36','2013-02-01 23:41:01'),(579,4,4,150,'Expand','2013-01-30 12:22:22','2013-01-30 12:22:32'),(580,5,5,150,'Brei uit','2013-01-30 12:22:22','2013-05-25 08:52:18'),(581,18,13,150,'Ú¯Ø³ØªØ±Ø´','2013-01-30 12:22:22','2013-02-01 23:40:53'),(582,4,4,151,'Name','2013-01-30 12:23:08','2013-01-30 12:23:17'),(583,5,5,151,'Naam','2013-01-30 12:23:08','2013-05-25 08:52:24'),(584,18,13,151,'Ø§Ø³Ù…','2013-01-30 12:23:08','2013-02-01 23:40:43'),(585,4,4,152,'Access control objects (ACOs)','2013-01-30 12:24:15','2013-01-30 12:24:36'),(586,5,5,152,'Toegangsbeheer objekte','2013-01-30 12:24:15','2013-05-25 08:52:39'),(587,18,13,152,'(new addition)','2013-01-30 12:24:15','2013-01-30 12:24:15'),(588,4,4,153,'Allow','2013-01-30 12:25:11','2013-01-30 12:25:27'),(589,5,5,153,'Laat toe','2013-01-30 12:25:11','2013-05-25 08:52:49'),(590,18,13,153,'Ø§Ø¬Ø§Ø²Ù‡ Ø¯Ø³ØªØ±Ø³ÛŒ','2013-01-30 12:25:11','2013-02-02 00:43:53'),(591,4,4,154,'Add ACO object','2013-01-30 12:25:56','2013-01-30 12:26:08'),(592,5,5,154,'Nuwe ACO objek','2013-01-30 12:25:56','2013-05-25 08:53:08'),(593,18,13,154,'(new addition)','2013-01-30 12:25:56','2013-01-30 12:25:56'),(594,4,4,155,'Parent node','2013-01-30 12:26:27','2013-01-30 12:26:39'),(595,5,5,155,'ouer nodus','2013-01-30 12:26:27','2013-05-25 08:53:42'),(596,18,13,155,'Ú¯Ø±Ù‡ Ù…Ø§Ø¯Ø±','2013-01-30 12:26:27','2013-02-02 00:44:04'),(597,4,4,156,'Alias','2013-01-30 12:27:00','2013-01-30 12:27:10'),(598,5,5,156,'Alias','2013-01-30 12:27:00','2013-05-25 08:53:52'),(599,18,13,156,'Ù†Ø§Ù… Ù…Ø³ØªØ¹Ø§Ø±','2013-01-30 12:27:00','2013-02-02 00:45:03'),(600,4,4,157,'Optional Description','2013-01-30 12:27:31','2013-01-30 12:27:46'),(601,5,5,157,'Opsionele beskrywing','2013-01-30 12:27:31','2013-05-25 08:54:04'),(602,18,13,157,'ØªÙˆØ¶ÛŒØ­Ø§Øª ØªÚ©Ù…ÛŒÙ„ÛŒ','2013-01-30 12:27:31','2013-02-02 00:45:17'),(603,4,4,158,'Save','2013-01-30 12:28:10','2013-01-30 12:28:18'),(604,5,5,158,'Stoor','2013-01-30 12:28:10','2013-05-25 08:54:13'),(605,18,13,158,'Ø°Ø®ÛŒØ±Ù‡','2013-01-30 12:28:10','2013-02-02 00:45:25'),(606,4,4,159,'Edit ACO object','2013-01-30 12:28:41','2013-01-30 12:28:58'),(607,5,5,159,'Redigeer ACO objek','2013-01-30 12:28:41','2013-05-25 08:54:26'),(608,18,13,159,'(new addition)','2013-01-30 12:28:41','2013-01-30 12:28:41'),(609,4,4,160,'Enter a value','2013-01-30 12:29:43','2013-01-30 12:30:03'),(610,5,5,160,'voorsien \'n waarde','2013-01-30 12:29:43','2013-05-25 08:54:43'),(611,18,13,160,'ÛŒÚ© Ù…Ù‚Ø¯Ø§Ø± ÙˆØ§Ø±Ø¯ Ú©Ù†ÛŒØ¯','2013-01-30 12:29:43','2013-02-02 01:11:26'),(612,4,4,161,'Default Access Provider Rights','2013-01-30 13:11:48','2013-01-30 13:12:04'),(613,5,5,161,'Verstek regte vir Toegangsvoorsiers','2013-01-30 13:11:48','2013-05-25 08:58:47'),(614,18,13,161,'Ø¯Ø³ØªØ±Ø³ÛŒ Ù‡Ø§ÛŒ Ù¾ÛŒØ´ ÙØ±Ø¶ ÙØ±Ø§Ù‡Ù… Ø¢ÙˆØ±Ù†Ø¯Ú¯Ø§Ù†','2013-01-30 13:11:48','2013-02-02 01:11:51'),(615,4,4,162,'Problems updating the database','2013-01-30 13:17:01','2013-01-30 13:17:17'),(616,5,5,162,'Probleme om die die databasis op te dateer','2013-01-30 13:17:01','2013-05-25 09:27:02'),(617,18,13,162,'Ø§Ø´Ú©Ø§Ù„Ø§Øª Ø¨Ø±ÙˆØ² Ø±Ø³Ø§Ù†ÛŒ Ù¾Ø§ÛŒÚ¯Ø§Ù‡ Ø¯Ø§Ø¯Ù‡','2013-01-30 13:17:01','2013-02-02 00:45:57'),(618,4,4,163,'Database could not be updated','2013-01-30 13:17:38','2013-01-30 13:17:55'),(619,5,5,163,'Databasis kon nie opgedateer word nie','2013-01-30 13:17:38','2013-05-25 09:26:48'),(620,18,13,163,'Ù¾Ø§ÛŒÚ¯Ø§Ù‡ Ø¯Ø§Ø¯Ù‡ Ø¨Ø±ÙˆØ² Ø±Ø³Ø§Ù†ÛŒ Ù†Ù…ÛŒØ´ÙˆØ¯','2013-01-30 13:17:38','2013-02-02 00:46:14'),(621,4,4,164,'Record all acivity','2013-01-30 13:20:00','2013-01-30 13:20:15'),(622,5,5,164,'Skryf alle aktiviteit','2013-01-30 13:20:00','2013-05-25 09:26:31'),(623,18,13,164,'Ø¸Ø¨Ø· ØªÙ…Ø§Ù…ÛŒ ÙØ¹Ø§Ù„ÛŒØªÙ‡Ø§','2013-01-30 13:20:00','2013-02-02 00:46:38'),(624,4,4,165,'Owner','2013-01-30 13:20:40','2013-01-30 13:20:47'),(625,5,5,165,'Eienaar','2013-01-30 13:20:40','2013-05-25 09:25:49'),(626,18,13,165,'Ù…Ø§Ù„Ú©','2013-01-30 13:20:40','2013-02-02 00:46:43'),(627,4,4,166,'Activate','2013-01-30 13:21:44','2013-01-30 13:21:52'),(628,5,5,166,'Aktiveer','2013-01-30 13:21:44','2013-05-25 09:25:42'),(629,18,13,166,'ÙØ¹Ø§Ù„','2013-01-30 13:21:44','2013-02-02 00:46:53'),(630,4,4,167,'Optional info','2013-01-30 13:22:11','2013-04-09 05:06:03'),(631,5,5,167,'Opsionele data','2013-01-30 13:22:11','2013-05-25 09:25:36'),(632,18,13,167,'Ø§Ø·Ù„Ø§Ø¹Ø§Øª ØªÚ©Ù…ÛŒÙ„ÛŒ','2013-01-30 13:22:11','2013-02-02 00:47:22'),(633,4,4,168,'Surname','2013-01-30 13:22:57','2013-01-30 13:23:09'),(634,5,5,168,'Van','2013-01-30 13:22:57','2013-05-25 09:25:20'),(635,18,13,168,'Ù†Ø§Ù… Ø®Ø§Ù†ÙˆØ§Ø¯Ú¯ÛŒ','2013-01-30 13:22:57','2013-02-02 00:47:31'),(636,4,4,169,'Phone','2013-01-30 13:23:20','2013-01-30 13:23:32'),(637,5,5,169,'Telefoon','2013-01-30 13:23:20','2013-05-25 09:25:13'),(638,18,13,169,'ØªÙ„ÙÙ†','2013-01-30 13:23:20','2013-02-02 00:47:37'),(639,4,4,170,'email','2013-01-30 13:23:50','2013-01-30 13:24:04'),(640,5,5,170,'fonkpos','2013-01-30 13:23:50','2013-05-25 09:25:04'),(641,18,13,170,'Ù¾Ø³Øª Ø§Ù„Ú©ØªØ±ÙˆÙ†ÛŒÚ©','2013-01-30 13:23:50','2013-02-02 00:47:48'),(642,4,4,171,'Address','2013-01-30 13:24:22','2013-01-30 13:24:31'),(643,5,5,171,'Adres','2013-01-30 13:24:22','2013-05-25 09:24:57'),(644,18,13,171,'Ø¢Ø¯Ø±Ø³','2013-01-30 13:24:22','2013-02-02 00:47:53'),(645,4,4,172,'Monitor','2013-01-30 13:25:15','2013-01-30 13:25:25'),(646,5,5,172,'Monitor','2013-01-30 13:25:15','2013-05-25 09:24:51'),(647,18,13,172,'Ù†Ø¸Ø§Ø±Øª','2013-01-30 13:25:15','2013-02-02 00:48:09'),(648,4,4,173,'Yes','2013-01-30 13:25:41','2013-01-30 13:26:06'),(649,5,5,173,'Ja','2013-01-30 13:25:41','2013-05-25 09:24:29'),(650,18,13,173,'Ø¢Ø±Ù‡','2013-01-30 13:25:41','2013-02-02 00:48:14'),(651,4,4,174,'No','2013-01-30 13:25:50','2013-01-30 13:25:59'),(652,5,5,174,'Nee','2013-01-30 13:25:50','2013-05-25 09:24:22'),(653,18,13,174,'Ù†Ù‡','2013-01-30 13:25:50','2013-02-02 00:48:18'),(654,4,4,175,'Existing Notes','2013-01-30 13:26:34','2013-01-30 13:26:45'),(655,5,5,175,'Bestaande notas','2013-01-30 13:26:34','2013-05-25 09:24:16'),(656,18,13,175,'ÛŒØ§Ø¯Ø¯Ø§Ø´ØªÙ‡Ø§ÛŒ Ù…ÙˆØ¬ÙˆØ¯','2013-01-30 13:26:34','2013-02-02 00:48:28'),(657,4,4,176,'Active','2013-01-30 13:26:57','2013-01-30 14:37:08'),(658,5,5,176,'Aktief','2013-01-30 13:26:57','2013-05-25 09:24:06'),(659,18,13,176,'ÙØ¹Ø§Ù„','2013-01-30 13:26:57','2013-02-02 00:48:35'),(660,4,4,177,'Notes','2013-01-30 13:27:18','2013-01-30 13:27:28'),(661,5,5,177,'Notas','2013-01-30 13:27:18','2013-05-25 09:24:00'),(662,18,13,177,'ÛŒØ§Ø¯Ø¯Ø§Ø´ØªÙ‡Ø§','2013-01-30 13:27:18','2013-02-02 00:48:40'),(663,4,4,178,'Create','2013-01-30 13:28:10','2013-01-30 13:28:19'),(664,5,5,178,'Skep','2013-01-30 13:28:10','2013-05-25 09:23:55'),(665,18,13,178,'Ø§ÛŒØ¬Ø§Ø¯','2013-01-30 13:28:10','2013-02-02 00:48:46'),(666,4,4,179,'Realm','2013-01-30 13:28:37','2013-01-30 13:28:45'),(667,5,5,179,'Gebied','2013-01-30 13:28:37','2013-05-25 09:23:48'),(668,18,13,179,'Ø­ÙˆØ²Ù‡','2013-01-30 13:28:37','2013-02-02 00:49:01'),(669,4,4,180,'Read','2013-01-30 13:29:15','2013-01-30 13:29:23'),(670,5,5,180,'Lees','2013-01-30 13:29:15','2013-05-25 09:23:40'),(671,18,13,180,'Ø®ÙˆØ§Ù†Ø¯Ù†','2013-01-30 13:29:15','2013-02-02 00:49:13'),(672,4,4,181,'Update','2013-01-30 13:29:35','2013-01-30 13:29:47'),(673,5,5,181,'Wysig','2013-01-30 13:29:35','2013-05-25 09:23:19'),(674,18,13,181,'Ø¨Ø±ÙˆØ² Ú©Ù†','2013-01-30 13:29:35','2013-02-02 00:49:18'),(675,4,4,182,'Updated right','2013-01-30 13:30:28','2013-01-30 13:30:42'),(676,5,5,182,'Gewysigte reg','2013-01-30 13:30:28','2013-05-25 09:23:35'),(677,18,13,182,'Ø¯Ø³ØªØ±Ø³ÛŒÙ‡Ø§ÛŒ Ø¨Ø±ÙˆØ² Ø´Ø¯Ù‡','2013-01-30 13:30:28','2013-02-02 00:49:32'),(678,4,4,183,'Right has been updated','2013-01-30 13:31:05','2013-01-30 13:31:26'),(679,5,5,183,'Reg is gewysig','2013-01-30 13:31:05','2013-05-25 09:22:48'),(680,18,13,183,'Ø¯Ø³ØªØ±Ø³ÛŒ Ø¨Ø±ÙˆØ² Ø´Ø¯','2013-01-30 13:31:05','2013-02-02 00:49:45'),(681,4,4,184,'Problems updating the right','2013-01-30 13:31:43','2013-01-30 13:31:56'),(682,5,5,184,'Probleme met die wysiging van die regte','2013-01-30 13:31:43','2013-05-25 09:22:39'),(683,18,13,184,'Ù…Ø´Ú©Ù„Ø§Øª Ø¨Ø±ÙˆØ²Ø±Ø³Ø§Ù†ÛŒ Ø¯Ø³ØªØ±Ø³ÛŒ','2013-01-30 13:31:43','2013-02-02 00:50:01'),(684,4,4,185,'Right could not be updated','2013-01-30 13:32:15','2013-01-30 13:32:37'),(685,5,5,185,'Reg kon nie gewysig word nie','2013-01-30 13:32:15','2013-05-25 09:22:23'),(686,18,13,185,'Ø¯Ø³ØªØ±Ø³ÛŒ Ø¨Ø±ÙˆØ²Ø±Ø³Ø§Ù†ÛŒ Ù†Ø´Ø¯','2013-01-30 13:32:15','2013-02-02 00:50:12'),(687,4,4,186,'Rights','2013-01-30 13:33:09','2013-01-30 14:37:21'),(688,5,5,186,'Regte','2013-01-30 13:33:09','2013-05-25 09:22:09'),(689,18,13,186,'Ø¯Ø³ØªØ±Ø³ÛŒÙ‡Ø§','2013-01-30 13:33:09','2013-02-02 00:50:19'),(690,4,4,187,'Activity','2013-01-30 13:33:42','2013-01-30 13:33:50'),(691,5,5,187,'Aktiviteit','2013-01-30 13:33:42','2013-05-25 09:22:03'),(692,18,13,187,'ÙØ¹Ø§Ù„ÛŒØª','2013-01-30 13:33:42','2013-02-02 00:50:25'),(693,4,4,188,'Realms','2013-01-30 13:34:18','2013-01-30 13:34:25'),(694,5,5,188,'Gebiede','2013-01-30 13:34:18','2013-05-25 09:21:54'),(695,18,13,188,'Ø­ÙˆØ²Ù‡ Ù‡Ø§','2013-01-30 13:34:18','2013-02-02 00:50:32'),(696,4,4,189,'Detail','2013-01-30 13:34:53','2013-01-30 13:35:01'),(697,5,5,189,'Detail','2013-01-30 13:34:53','2013-05-25 09:21:47'),(698,18,13,189,'Ø¬Ø²Ø¦ÛŒØ§Øª','2013-01-30 13:34:53','2013-02-02 00:50:39'),(699,4,4,190,'Access Provider hierarchy','2013-01-30 13:36:12','2013-01-30 13:36:24'),(700,5,5,190,'Toegangsvoorsiener hieragie','2013-01-30 13:36:12','2013-05-25 09:21:40'),(701,18,13,190,'Ø³Ù„Ø³Ù„Ù‡ Ù…Ø±Ø§ØªØ¨ ÙØ±Ø§Ù‡Ù… Ø¢ÙˆØ±Ù†Ø¯Ù‡','2013-01-30 13:36:12','2013-02-02 00:51:25'),(702,4,4,191,'New Access Provider','2013-01-30 13:39:03','2013-01-30 13:39:19'),(703,5,5,191,'Nuwe toegangsvoorsiener','2013-01-30 13:39:03','2013-05-25 09:21:25'),(704,18,13,191,'ÙØ±Ø§Ù‡Ù… Ø¢ÙˆØ±Ù†Ø¯Ù‡ Ø¬Ø¯ÛŒØ¯','2013-01-30 13:39:03','2013-02-02 00:51:33'),(705,4,4,192,'Select the Parent Access provider','2013-01-30 13:39:40','2013-01-30 13:40:02'),(706,5,5,192,'Kies die ouer Toegangsvoorsiener','2013-01-30 13:39:40','2013-05-25 09:21:15'),(707,18,13,192,'ÙØ±Ø§Ù‡Ù… Ø¢ÙˆØ±Ù†Ø¯Ù‡ Ù…Ø§Ø¯Ø± Ø±Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 13:39:40','2013-02-02 00:51:53'),(708,4,4,193,'NAS Device manager','2013-01-30 13:57:56','2013-01-30 14:30:53'),(709,5,5,193,'NAS-toestelbestuurder','2013-01-30 13:57:56','2013-05-25 09:20:45'),(710,18,13,193,'Ù…Ø¯ÛŒØ±ÛŒØª Ø¯Ø³ØªÚ¯Ø§Ù‡ Ø¯Ø³ØªØ±Ø³ÛŒ Ø¨Ù‡ Ø´Ø¨Ú©Ù‡','2013-01-30 13:57:56','2013-02-02 00:54:54'),(711,4,4,194,'NAS devices','2013-01-30 13:58:14','2013-01-30 14:30:59'),(712,5,5,194,'NAS-toestelle','2013-01-30 13:58:14','2013-05-25 09:20:54'),(713,18,13,194,'Ø¯Ø³ØªÚ¯Ø§Ù‡Ù‡Ø§ÛŒ Ø¯Ø³ØªØ±Ø³ÛŒ Ø¨Ù‡ Ø´Ø¨Ú©Ù‡','2013-01-30 13:58:14','2013-02-02 00:55:16'),(714,4,4,195,'Select at least one realm','2013-01-30 13:59:06','2013-01-30 14:33:17'),(715,5,5,195,'Kies ten minste een gebied','2013-01-30 13:59:06','2013-05-25 09:20:22'),(716,18,13,195,'Ø­Ø¯Ø§Ù‚Ù„ ÛŒÚ© Ø­ÙˆØ²Ù‡ Ù…Ø´Ø®Øµ Ú©Ù†ÛŒØ¯','2013-01-30 13:59:06','2013-02-02 00:55:30'),(717,4,4,196,'Select one or more realms','2013-01-30 13:59:23','2013-01-30 14:33:26'),(718,5,5,196,'Kies een of meer gebiede','2013-01-30 13:59:23','2013-05-25 09:20:08'),(719,18,13,196,'ÛŒÚ© ÛŒØ§ Ú†Ù†Ø¯ Ø­ÙˆØ²Ù‡ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 13:59:23','2013-02-02 00:55:43'),(720,4,4,197,'First select an item to tag','2013-01-30 13:59:59','2013-01-30 14:23:06'),(721,5,5,197,'Kies eers \'n item vir die etiket','2013-01-30 13:59:59','2013-05-25 09:19:49'),(722,18,13,197,'Ø§ÙˆÙ„ ÛŒÚ© Ù…ÙˆØ±Ø¯ Ø¨Ø±Ø§ÛŒ ØªÚ¯ Ú©Ø±Ø¯Ù† Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 13:59:59','2013-02-02 00:56:02'),(723,4,4,198,'Select a tag ','2013-01-30 14:00:19','2013-01-30 14:32:41'),(724,5,5,198,'Kies \'n etiket','2013-01-30 14:00:19','2013-05-25 08:58:16'),(725,18,13,198,'Ø§Ù†ØªØ®Ø§Ø¨ ØªÚ¯','2013-01-30 14:00:19','2013-02-02 00:56:15'),(726,4,4,199,'Select a tag please','2013-01-30 14:00:33','2013-01-30 14:33:02'),(727,5,5,199,'Kies \'n etiket asseblief','2013-01-30 14:00:33','2013-05-25 08:58:02'),(728,18,13,199,'Ù„Ø·ÙØ§ ÛŒÚ© ØªÚ¯ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 14:00:33','2013-02-02 00:56:25'),(729,4,4,200,'Tags modified','2013-01-30 14:00:47','2013-01-30 14:34:09'),(730,5,5,200,'Etiket het verander','2013-01-30 14:00:47','2013-05-25 08:57:45'),(731,18,13,200,'ØªÚ¯Ù‡Ø§ÛŒ ØªØºÛŒÛŒØ± ÛŒØ§ÙØªÙ‡','2013-01-30 14:00:47','2013-02-02 00:56:49'),(732,4,4,201,'Tags modified fine','2013-01-30 14:01:00','2013-01-30 14:34:17'),(733,5,5,201,'Etiket het mooi verander','2013-01-30 14:01:00','2013-05-25 08:57:33'),(734,18,13,201,'ØªÚ¯Ù‡Ø§ Ø¨Ø§ Ù…ÙˆÙÙ‚ÛŒØª ØªØºÛŒÛŒØ± Ú©Ø±Ø¯Ù†Ø¯','2013-01-30 14:01:00','2013-02-02 00:57:03'),(735,4,4,202,'Off','2013-01-30 14:02:37','2013-01-30 14:37:16'),(736,5,5,202,'Af','2013-01-30 14:02:37','2013-05-25 08:57:02'),(737,18,13,202,'Ø®Ø§Ù…ÙˆØ´','2013-01-30 14:02:37','2013-02-02 00:57:09'),(738,4,4,203,'Ping','2013-01-30 14:02:47','2013-03-28 16:59:54'),(739,5,5,203,'Ping','2013-01-30 14:02:47','2013-05-25 08:56:55'),(740,18,13,203,'ØªÙ„ÙÙ†','2013-01-30 14:02:47','2013-02-02 00:57:20'),(741,4,4,204,'Heartbeat','2013-01-30 14:02:58','2013-01-30 14:23:24'),(742,5,5,204,'Hartklop','2013-01-30 14:02:58','2013-05-25 08:56:48'),(743,18,13,204,'(new addition)','2013-01-30 14:02:58','2013-01-30 14:02:58'),(744,4,4,205,'Monitor method','2013-01-30 14:03:17','2013-01-30 14:30:26'),(745,5,5,205,'Moniterings metode','2013-01-30 14:03:17','2013-05-25 08:56:34'),(746,18,13,205,'Ø³ÛŒØ³ØªÙ… Ù†Ø¸Ø§Ø±Øª','2013-01-30 14:03:17','2013-02-02 00:57:29'),(747,4,4,206,'Required info','2013-01-30 14:03:34','2013-01-30 14:32:02'),(748,5,5,206,'Verpligte inligting','2013-01-30 14:03:34','2013-05-25 08:56:10'),(749,18,13,206,'Ø§Ø·Ù„Ø§Ø¹Ø§Øª Ù…ÙˆØ±Ø¯ Ù†ÛŒØ§Ø²','2013-01-30 14:03:34','2013-02-02 00:57:40'),(750,4,4,207,'IP Address','2013-01-30 14:03:51','2013-01-30 14:23:55'),(751,5,5,207,'IP-Adres','2013-01-30 14:03:51','2013-05-25 08:55:51'),(752,18,13,207,'Ø¢Ø¯Ø±Ø³ Ø¢ÛŒ Ù¾ÛŒ','2013-01-30 14:03:51','2013-02-02 00:57:50'),(753,4,4,208,'Supply a value','2013-01-30 14:04:11','2013-01-30 14:33:52'),(754,5,5,208,'Voorsien \'n waarde','2013-01-30 14:04:11','2013-05-25 08:55:39'),(755,18,13,208,'ÛŒÚ© Ù…Ù‚Ø¯Ø§Ø± Ø¨Ø¯Ù‡ÛŒØ¯','2013-01-30 14:04:11','2013-02-02 00:58:00'),(756,4,4,209,'Secret','2013-01-30 14:04:30','2013-01-30 14:32:11'),(757,5,5,209,'Geheim','2013-01-30 14:04:30','2013-05-25 08:55:28'),(758,18,13,209,'Ø§Ø³Ù… Ø´Ø¨','2013-01-30 14:04:30','2013-02-02 00:58:30'),(759,4,4,210,'Type','2013-01-30 14:05:05','2013-01-30 14:37:25'),(760,5,5,210,'Tipe','2013-01-30 14:05:05','2013-05-25 10:17:32'),(761,18,13,210,'Ù†ÙˆØ¹','2013-01-30 14:05:06','2013-02-02 00:58:36'),(762,4,4,211,'Ports','2013-01-30 14:05:18','2013-03-28 17:00:02'),(763,5,5,211,'Poorte','2013-01-30 14:05:18','2013-05-25 10:17:38'),(764,18,13,211,'ÙØ§ØµÙ„Ù‡ Ù¾ÛŒÙ†Ú¯','2013-01-30 14:05:18','2013-02-02 00:59:10'),(765,4,4,212,'Community','2013-01-30 14:05:30','2013-01-30 14:21:44'),(766,5,5,212,'Versamelnaam','2013-01-30 14:05:30','2013-05-25 10:17:59'),(767,18,13,212,'Ø§Ù†Ø¬Ù…Ù†','2013-01-30 14:05:30','2013-02-02 01:00:10'),(768,4,4,213,'Server','2013-01-30 14:05:47','2013-01-30 14:33:42'),(769,5,5,213,'Bediener','2013-01-30 14:05:47','2013-05-25 10:18:07'),(770,18,13,213,'Ø³Ø±ÙˆØ±','2013-01-30 14:05:47','2013-02-02 01:00:15'),(771,4,4,214,'Description','2013-01-30 14:06:02','2013-01-30 14:22:37'),(772,5,5,214,'Beskrywing','2013-01-30 14:06:02','2013-05-25 10:18:14'),(773,18,13,214,'ØªÙˆØ¶ÛŒØ­Ø§Øª','2013-01-30 14:06:02','2013-02-02 01:00:22'),(774,4,4,215,'Monitor settings','2013-01-30 14:06:18','2013-01-30 14:30:40'),(775,5,5,215,'Monitor verstellings','2013-01-30 14:06:18','2013-05-25 10:18:27'),(776,18,13,215,'ØªÙ†Ø¸ÛŒÙ…Ø§Øª Ù†Ø¸Ø§Ø±ØªÛŒ','2013-01-30 14:06:18','2013-02-02 01:00:31'),(777,4,4,216,'Heartbeat is dead after','2013-01-30 14:06:41','2013-01-30 14:23:46'),(778,5,5,216,'Hartklop is dood na','2013-01-30 14:06:41','2013-05-25 10:18:42'),(779,18,13,216,'(new addition)','2013-01-30 14:06:41','2013-01-30 14:06:41'),(780,4,4,217,'Heartbeat ID','2013-01-30 14:06:54','2013-01-30 14:23:33'),(781,5,5,217,'Hartklop ID','2013-01-30 14:06:54','2013-05-25 10:18:58'),(782,18,13,217,'(new addition)','2013-01-30 14:06:54','2013-01-30 14:06:54'),(783,4,4,218,'Ping interval','2013-01-30 14:07:13','2013-03-28 16:59:40'),(784,5,5,218,'Ping-interval','2013-01-30 14:07:13','2013-05-25 10:19:08'),(785,18,13,218,'Ù¾ÛŒÙ†Ú¯','2013-01-30 14:07:13','2013-02-02 01:00:40'),(786,4,4,219,'Longitude','2013-01-30 14:07:33','2013-01-30 14:29:47'),(787,5,5,219,'Longitude','2013-01-30 14:07:33','2013-05-25 10:19:18'),(788,18,13,219,'Ø·ÙˆÙ„ Ø¬ØºØ±Ø§ÙÛŒØ§ÛŒÛŒ','2013-01-30 14:07:33','2013-02-02 01:01:15'),(789,4,4,220,'Latitude','2013-01-30 14:07:48','2013-01-30 14:29:38'),(790,5,5,220,'Latitude','2013-01-30 14:07:48','2013-05-25 10:19:32'),(791,18,13,220,'Ø¹Ø±Ø¶ Ø¬ØºØ±Ø§ÙÛŒØ§ÛŒÛŒ','2013-01-30 14:07:48','2013-02-02 01:01:26'),(792,4,4,221,'Display on public maps','2013-01-30 14:08:04','2013-01-30 14:45:17'),(793,5,5,221,'Wys op oop kaarte','2013-01-30 14:08:04','2013-05-25 10:19:57'),(794,18,13,221,'Ù†Ù…Ø§ÛŒØ´ Ø±ÙˆÛŒ Ù†Ù‚Ø´Ù‡ Ù‡Ø§ÛŒ Ø¹Ù…ÙˆÙ…ÛŒ','2013-01-30 14:08:04','2013-02-02 01:01:58'),(795,4,4,222,'Record authentication requests','2013-01-30 14:09:02','2013-01-30 14:31:44'),(796,5,5,222,'Hou boek van geldigheids vasstellings versoeke','2013-01-30 14:09:02','2013-05-25 10:20:31'),(797,18,13,222,'Ø¸Ø¨Ø· Ø¯Ø±Ø®ÙˆØ§Ø³ØªÙ‡Ø§ÛŒ Ø§Ø¹ØªØ¨Ø§Ø±Ø³Ù†Ø¬ÛŒ','2013-01-30 14:09:02','2013-02-02 01:02:18'),(798,4,4,223,'Auto close stale sessions','2013-01-30 14:09:26','2013-01-30 14:21:03'),(799,5,5,223,'Maak ou sessies automaties toe','2013-01-30 14:09:26','2013-05-25 10:20:54'),(800,18,13,223,'Ø¨Ø³ØªÙ† Ø®ÙˆØ¯Ú©Ø§Ø± Ø¬Ù„Ø³Ù‡ Ù‡Ø§ÛŒ Ú©Ù‡Ù†Ù‡','2013-01-30 14:09:26','2013-02-02 01:03:07'),(801,4,4,224,'Auto close activation time','2013-01-30 14:09:44','2013-01-30 14:20:46'),(802,5,5,224,'Automaties toemaak tyd','2013-01-30 14:09:44','2013-05-25 10:22:00'),(803,18,13,224,'Ø¨Ø³ØªÙ† Ø®ÙˆØ¯Ú©Ø§Ø± Ø²Ù…Ø§Ù† ÙØ¹Ø§Ù„ Ø³Ø§Ø²ÛŒ','2013-01-30 14:09:44','2013-02-02 01:03:30'),(804,4,4,225,'Available to sub-providers','2013-01-30 14:10:18','2013-01-30 14:21:16'),(805,5,5,225,'Beskikbaar aan sub-voorsieners','2013-01-30 14:10:18','2013-05-25 10:22:13'),(806,18,13,225,'Ù‚Ø§Ø¨Ù„ Ø¯Ø³ØªØ±Ø³ Ø¨Ø±Ø§ÛŒ Ø²ÛŒØ± ÙØ±Ø§Ù‡Ù… Ø¢ÙˆØ±Ù†Ø¯Ù‡ Ù‡Ø§','2013-01-30 14:10:18','2013-02-02 01:03:55'),(807,4,4,226,'Connection type','2013-01-30 14:10:42','2013-01-30 14:22:07'),(808,5,5,226,'Konnieksie tipe','2013-01-30 14:10:42','2013-05-25 10:22:28'),(809,18,13,226,'Ù†ÙˆØ¹ Ø§ØªØµØ§Ù„','2013-01-30 14:10:42','2013-02-02 01:04:02'),(810,4,4,227,'Make available to sub-providers','2013-01-30 14:11:24','2013-01-30 14:30:16'),(811,5,5,227,'Stel beskikbaar aan sub-voorsieners','2013-01-30 14:11:24','2013-05-25 10:22:52'),(812,18,13,227,'Ù‚Ø§Ø¨Ù„ Ø¯Ø³ØªØ±Ø³ Ø¨Ø±Ø§ÛŒ Ø²ÛŒØ± ÙØ±Ø§Ù‡Ù… Ø¢ÙˆØ±Ù†Ø¯Ù‡ Ù‡Ø§ Ú©Ù†','2013-01-30 14:11:24','2013-02-02 01:04:55'),(813,4,4,228,'Make available to any realm','2013-01-30 14:12:19','2013-01-30 14:30:01'),(814,5,5,228,'Stel beskikbaar aan enige gebied','2013-01-30 14:12:19','2013-05-25 10:24:29'),(815,18,13,228,'Ø¨Ø±Ø§ÛŒ ØªÙ…Ø§Ù… Ø­ÙˆØ²Ù‡ Ù‡Ø§ Ù‚Ø§Ø¨Ù„ Ø¯Ø³ØªØ±Ø³ Ø¨Ø§Ø´Ø¯','2013-01-30 14:12:19','2013-02-02 01:05:34'),(816,4,4,229,'Add NAS device','2013-01-30 14:12:41','2013-01-30 14:20:04'),(817,5,5,229,'Voeg NAS-toestel by','2013-01-30 14:12:41','2013-05-25 10:55:49'),(818,18,13,229,'Ø§ÙØ²ÙˆØ¯Ù† Ø³Ø±ÙˆØ± Ø¯Ø³ØªØ±Ø³ÛŒ Ø´Ø¨Ú©Ù‡','2013-01-30 14:12:41','2013-02-02 01:05:50'),(819,4,4,230,'Select the device owner','2013-01-30 14:13:04','2013-01-30 14:33:36'),(820,5,5,230,'Kies die toestel se eienaar','2013-01-30 14:13:04','2013-05-25 11:19:32'),(821,18,13,230,'Ø§Ù†ØªØ®Ø§Ø¨ Ù…Ø§Ù„Ú© Ø¯Ø³ØªÚ¯Ø§Ù‡','2013-01-30 14:13:04','2013-02-02 01:06:04'),(822,4,4,231,'Choose a connection type','2013-01-30 14:13:27','2013-01-30 14:21:33'),(823,5,5,231,'Kies \'n tipe konneksie','2013-01-30 14:13:27','2013-05-25 11:01:00'),(824,18,13,231,'ÛŒÚ© Ù†Ø­ÙˆÙ‡ Ø§ØªØµØ§Ù„ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 14:13:27','2013-02-02 01:06:18'),(825,4,4,232,'Credentials for OpenVPN tunnel','2013-01-30 14:14:12','2013-01-30 14:22:26'),(826,5,5,232,'Inligtin vir OpenVPN-tonnel','2013-01-30 14:14:12','2013-05-25 11:02:39'),(827,18,13,232,'Ø§Ø·Ù„Ø§Ø¹Ø§Øª ØªÙˆÙ†Ù„ openvpn','2013-01-30 14:14:12','2013-02-02 01:06:39'),(828,4,4,233,'Unique AVP combination','2013-01-30 14:14:42','2013-01-30 14:24:45'),(829,5,5,233,'Unieke AVP kombinasie','2013-01-30 14:14:42','2013-05-25 11:23:37'),(830,18,13,233,'(new addition)','2013-01-30 14:14:42','2013-01-30 14:14:42'),(831,4,4,234,'Attribute','2013-01-30 14:15:04','2013-01-30 14:20:28'),(832,5,5,234,'Atribuut','2013-01-30 14:15:04','2013-05-25 10:58:09'),(833,18,13,234,'(new addition)','2013-01-30 14:15:04','2013-01-30 14:15:04'),(834,4,4,235,'Value','2013-01-30 14:15:23','2013-01-30 14:37:28'),(835,5,5,235,'Waarde','2013-01-30 14:15:23','2013-05-25 11:22:57'),(836,18,13,235,'Ù…Ù‚Ø¯Ø§Ø±','2013-01-30 14:15:23','2013-02-02 01:07:50'),(837,4,4,236,'Value to identify the NAS with','2013-01-30 14:15:39','2013-01-30 14:24:23'),(838,5,5,236,'Waarde om die NAS mee te identifiseer','2013-01-30 14:15:39','2013-05-25 11:22:51'),(839,18,13,236,'Ù…Ù‚Ø¯Ø§Ø± Ø¨Ø±Ø§ÛŒ Ø´Ù†Ø§Ø³Ø§ÛŒÛŒ nas','2013-01-30 14:15:39','2013-02-02 01:08:41'),(840,4,4,237,'Supply the following','2013-01-30 14:15:57','2013-01-30 14:34:01'),(841,5,5,237,'Voorsien die volgende','2013-01-30 14:15:57','2013-05-25 11:25:53'),(842,18,13,237,'Ø¹Ø±Ø¶Ù‡ Ø¨Ù‡ Ø´Ø±Ø­ Ø²ÛŒØ±','2013-01-30 14:15:57','2013-02-02 01:08:11'),(843,4,4,238,'Connection','2013-01-30 14:16:16','2013-01-30 14:21:56'),(844,5,5,238,'Konneksie','2013-01-30 14:16:16','2013-05-25 11:02:03'),(845,18,13,238,'Ø§ØªØµØ§Ù„','2013-01-30 14:16:16','2013-02-02 01:08:20'),(846,4,4,239,'Add or remove tags','2013-01-30 14:17:34','2013-01-30 14:20:18'),(847,5,5,239,'Etikette byvoeg of verwyder','2013-01-30 14:17:34','2013-05-25 10:57:01'),(848,18,13,239,'Ø§ÙØ²ÙˆØ¯Ù† ÛŒØ§ Ù¾Ø§Ú© Ú©Ø±Ø¯Ù† ØªÚ¯Ù‡Ø§','2013-01-30 14:17:34','2013-02-02 00:42:08'),(849,4,4,240,'Select an action and a tag','2013-01-30 14:19:32','2013-01-30 14:32:51'),(850,5,5,240,'Kies \'n aksie en etiket','2013-01-30 14:19:32','2013-05-25 11:18:48'),(851,18,13,240,'ÛŒÚ© Ø¹Ù…Ù„ Ø¨Ø§ ÛŒÚ© ØªÚ¯ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 14:19:32','2013-02-02 00:41:56'),(852,4,4,241,'Enhancements','2013-01-30 14:40:23','2013-01-30 14:42:41'),(853,5,5,241,'Verbeteringe','2013-01-30 14:40:23','2013-05-25 11:05:22'),(854,18,13,241,'Ù¾ÛŒØ´Ø±ÙØªÙ‡Ø§','2013-01-30 14:40:23','2013-02-02 00:41:36'),(855,4,4,242,'Maps info','2013-01-30 14:40:44','2013-01-30 14:58:28'),(856,5,5,242,'Kaart inligting','2013-01-30 14:40:44','2013-05-25 11:10:49'),(857,18,13,242,'Ø§Ø·Ù„Ø§Ø¹Ø§Øª Ù†Ù‚Ø´Ù‡','2013-01-30 14:40:44','2013-02-02 00:41:14'),(858,4,4,243,'Note','2013-01-30 14:53:34','2013-01-30 14:53:51'),(859,5,5,243,'Nota','2013-01-30 14:53:34','2013-05-25 10:24:45'),(860,18,13,243,'ÛŒØ§Ø¯Ø¯Ø§Ø´Øª','2013-01-30 14:53:34','2013-02-02 00:41:04'),(861,4,4,244,'CSV export','2013-01-30 14:54:56','2013-01-30 14:55:14'),(862,5,5,244,'CSV uitvoer','2013-01-30 14:54:56','2013-05-25 10:24:56'),(863,18,13,244,'Ø®Ø±ÙˆØ¬ÛŒ csv','2013-01-30 14:54:56','2013-02-02 00:40:57'),(864,4,4,245,'Select columns to include in CSV list','2013-01-30 14:55:34','2013-01-30 14:56:12'),(865,5,5,245,'Kies die kolomme wat deel moet wees van CSV','2013-01-30 14:55:34','2013-05-25 10:25:17'),(866,18,13,245,'Ø³ØªÙˆÙ†Ù‡Ø§ÛŒ Ù…ÙˆØ±Ø¯ Ù†Ø¸Ø± Ø±Ø§ Ø¨Ø±Ø§ÛŒ Ø§ÙØ²ÙˆØ¯Ù† Ø¨Ù‡ Ù„ÛŒØ³Øª CSV Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 14:55:34','2013-02-02 00:40:49'),(867,4,4,246,'Columns','2013-01-30 14:56:35','2013-01-30 14:56:53'),(868,5,5,246,'Kolomme','2013-01-30 14:56:35','2013-05-25 10:25:27'),(869,18,13,246,'Ø³ØªÙˆÙ†','2013-01-30 14:56:35','2013-02-02 00:39:54'),(870,4,4,247,'Online help','2013-01-30 14:57:17','2013-01-30 14:57:34'),(871,5,5,247,'Aanlyn hulp','2013-01-30 14:57:17','2013-05-25 10:25:36'),(872,18,13,247,'Ú©Ù…Ú© Ø¢Ù†Ù„Ø§ÛŒÙ†','2013-01-30 14:57:17','2013-02-02 00:39:49'),(873,4,4,248,'Note management','2013-01-30 14:58:02','2013-01-30 14:58:14'),(874,5,5,248,'Nota bestuur','2013-01-30 14:58:02','2013-05-25 10:25:46'),(875,18,13,248,'Ù…Ø¯ÛŒØ±ÛŒØª ÛŒØ§Ø¯Ø¯Ø§Ø´ØªÙ‡Ø§','2013-01-30 14:58:02','2013-02-02 00:39:40'),(876,4,4,249,'Add Note','2013-01-30 14:59:26','2013-01-30 14:59:39'),(877,5,5,249,'Nuwe nota','2013-01-30 14:59:26','2013-05-25 10:25:54'),(878,18,13,249,'Ø§ÙØ²ÙˆØ¯Ù† ÛŒØ§Ø¯Ø¯Ø§Ø´Øª','2013-01-30 14:59:26','2013-02-02 00:39:19'),(882,4,4,251,'Select the owner','2013-01-30 15:05:34','2013-01-30 15:05:46'),(883,5,5,251,'Kies die eienaar','2013-01-30 15:05:34','2013-05-25 10:26:06'),(884,18,13,251,'Ù…Ø§Ù„Ú© Ø±Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 15:05:34','2013-02-02 00:39:03'),(885,4,4,252,'Tags','2013-01-30 15:10:05','2013-01-30 15:10:15'),(886,5,5,252,'Etikette','2013-01-30 15:10:05','2013-05-25 11:26:04'),(887,18,13,252,'ØªÚ¯Ù‡Ø§','2013-01-30 15:10:05','2013-02-02 00:38:51'),(888,4,4,253,'Tag','2013-01-30 15:10:27','2013-01-30 15:10:34'),(889,5,5,253,'Etiket','2013-01-30 15:10:27','2013-05-25 11:25:59'),(890,18,13,253,'ØªÚ¯','2013-01-30 15:10:27','2013-02-02 00:38:44'),(891,4,4,254,'Realm manager','2013-01-30 16:05:48','2013-01-30 16:07:11'),(892,5,5,254,'Gebiede bestuurder','2013-01-30 16:05:48','2013-05-25 10:38:59'),(893,18,13,254,'Ù…Ø¯ÛŒØ±ÛŒØª Ø­ÙˆØ²Ù‡','2013-01-30 16:05:48','2013-02-02 00:38:41'),(894,4,4,255,'First select an item to delete','2013-01-30 16:06:48','2013-01-30 16:07:30'),(895,5,5,255,'Kies eers \'n item om te verwyder','2013-01-30 16:06:48','2013-05-25 11:05:51'),(896,18,13,255,'Ø§ÙˆÙ„ ÛŒÚ© Ù…ÙˆØ±Ø¯ Ø¨Ø±Ø§ÛŒ Ù¾Ø§Ú© Ú©Ø±Ø¯Ù† Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 16:06:48','2013-02-02 00:38:32'),(897,4,4,256,'Contact detail','2013-01-30 16:10:47','2013-01-30 16:11:05'),(898,5,5,256,'Kontak detail','2013-01-30 16:10:47','2013-05-25 11:02:15'),(899,18,13,256,'Ù…Ø´Ø®ØµØ§Øª ØªÙ…Ø§Ø³','2013-01-30 16:10:47','2013-02-02 00:38:06'),(900,4,4,257,'Fax','2013-01-30 16:11:43','2013-01-30 16:11:54'),(901,5,5,257,'Faks','2013-01-30 16:11:43','2013-05-25 11:05:35'),(902,18,13,257,'Ø¯ÙˆØ±Ù†Ú¯Ø§Ø±','2013-01-30 16:11:43','2013-02-02 00:37:55'),(903,4,4,258,'URL','2013-01-30 16:12:12','2013-01-30 16:12:21'),(904,5,5,258,'URL','2013-01-30 16:12:12','2013-05-25 11:23:59'),(905,18,13,258,'(new addition)','2013-01-30 16:12:12','2013-01-30 16:12:12'),(906,4,4,259,'Street Number','2013-01-30 16:13:07','2013-01-30 16:15:10'),(907,5,5,259,'Staat nummer','2013-01-30 16:13:07','2013-05-25 11:25:44'),(908,18,13,259,'Ø®ÛŒØ§Ø¨Ø§Ù†','2013-01-30 16:13:07','2013-02-02 00:37:39'),(909,4,4,260,'Street','2013-01-30 16:13:27','2013-01-30 16:15:16'),(910,5,5,260,'Straat','2013-01-30 16:13:27','2013-05-25 11:25:38'),(911,18,13,260,'Ø®ÛŒØ§Ø¨Ø§Ù†','2013-01-30 16:13:27','2013-02-02 00:37:24'),(912,4,4,261,'Town / Suburb','2013-01-30 16:13:50','2013-01-30 16:14:58'),(913,5,5,261,'Dorm/Woonbuurt','2013-01-30 16:13:50','2013-05-25 11:27:29'),(914,18,13,261,'Ø­ÙˆÙ…Ù‡ / Ù†Ø§Ø­ÛŒÙ‡','2013-01-30 16:13:50','2013-02-02 00:37:18'),(915,4,4,262,'City','2013-01-30 16:14:07','2013-01-30 16:15:37'),(916,5,5,262,'Stad','2013-01-30 16:14:07','2013-05-25 11:01:07'),(917,18,13,262,'Ø´Ù‡Ø±','2013-01-30 16:14:07','2013-02-02 00:36:36'),(918,4,4,263,'Location','2013-01-30 16:14:39','2013-01-30 16:15:28'),(919,5,5,263,'Plek','2013-01-30 16:14:39','2013-05-25 11:10:14'),(920,18,13,263,'Ù…Ú©Ø§Ù†','2013-01-30 16:14:39','2013-02-02 00:36:32'),(921,4,4,264,'Cell','2013-01-30 16:16:23','2013-01-30 16:16:39'),(922,5,5,264,'Loopfoon','2013-01-30 16:16:23','2013-05-25 11:00:05'),(923,18,13,264,'Ù‡Ù…Ø±Ø§Ù‡','2013-01-30 16:16:23','2013-02-02 00:36:22'),(924,4,4,265,'Logo','2013-01-30 16:17:15','2013-01-30 16:17:30'),(925,5,5,265,'Logo','2013-01-30 16:17:15','2013-05-25 11:10:21'),(926,18,13,265,'Ù„ÙˆÚ¯Ùˆ','2013-01-30 16:17:15','2013-02-02 00:36:17'),(927,4,4,266,'Add realm','2013-01-30 16:18:32','2013-01-30 16:18:47'),(928,5,5,266,'Voeg gebied by','2013-01-30 16:18:32','2013-05-25 10:57:12'),(929,18,13,266,'Ø§Ø¶Ø§ÙÙ‡ Ú©Ø±Ø¯Ù† Ø­ÙˆØ²Ù‡','2013-01-30 16:18:32','2013-02-02 00:36:12'),(930,4,4,267,'Select an owner for the realm','2013-01-30 16:19:24','2013-01-30 16:19:50'),(931,5,5,267,'Kies \'n eienaar vir die gebied','2013-01-30 16:19:24','2013-05-25 11:19:07'),(932,18,13,267,'ÛŒÚ© Ù…Ø§Ù„Ú© Ø¨Ø±Ø§ÛŒ Ø­ÙˆØ²Ù‡ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 16:19:24','2013-02-02 01:11:02'),(933,4,4,268,'Tags manager','2013-01-30 16:23:57','2013-01-30 16:24:12'),(934,5,5,268,'Etikette bestuurder','2013-01-30 16:23:57','2013-05-25 11:26:17'),(935,18,13,268,'Ù…Ø¯ÛŒØ±ÛŒØª ØªÚ¯','2013-01-30 16:23:57','2013-02-02 01:10:48'),(936,4,4,269,'NAS device tags','2013-01-30 16:24:32','2013-01-30 16:24:55'),(937,5,5,269,'NAS-toestel etikette','2013-01-30 16:24:32','2013-05-25 11:11:29'),(938,18,13,269,'ØªÚ¯Ù‡Ø§ÛŒ Ø¯Ø³ØªÚ¯Ø§Ù‡Ø§ÛŒ nas ','2013-01-30 16:24:32','2013-02-02 01:10:41'),(939,4,4,270,'New tag for NAS devices','2013-01-30 16:27:01','2013-01-30 16:27:25'),(940,5,5,270,'Nuwe etiket vir NAS-toestelle','2013-01-30 16:27:01','2013-05-25 11:12:55'),(941,18,13,270,'ØªÚ¯ Ø¬Ø¯ÛŒØ¯ Ø¨Ø±Ø§ÛŒ Ø¯Ø³ØªÚ¯Ø§Ù‡Ø§ÛŒ nas','2013-01-30 16:27:01','2013-02-02 01:10:03'),(942,4,4,271,'Select the tag owner','2013-01-30 16:27:54','2013-01-30 16:28:46'),(943,5,5,271,'Kies die etiket se eienaar','2013-01-30 16:27:54','2013-05-25 11:19:42'),(944,18,13,271,'ÛŒÚ© Ù…Ø§Ù„Ú© ØªÚ¯ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-30 16:27:54','2013-02-02 01:09:31'),(945,4,4,272,'Also show to sub providers','2013-01-30 16:30:00','2013-01-30 16:30:31'),(946,5,5,272,'Wys ook aan sub-Voegangsvoorsieners','2013-01-30 16:30:00','2013-05-25 10:57:47'),(947,18,13,272,'Ø¨Ø±Ø§ÛŒ Ø²ÛŒØ± ÙØ±Ø§Ù‡Ù… Ø¢ÙˆØ±Ù†Ø¯Ú©Ø§Ù† Ù‡Ù… Ù†Ù…Ø§ÛŒØ´ Ø¨Ø¯Ù‡','2013-01-30 16:30:00','2013-02-02 01:09:20'),(948,4,4,273,'Edit tag for NAS device','2013-01-30 16:33:03','2013-01-30 16:33:29'),(949,5,5,273,'Redigeer etiket vir NAS-toestel','2013-01-30 16:33:03','2013-05-25 11:04:46'),(950,18,13,273,'ØªÚ¯ Ø¯Ø³ØªÚ¯Ø§Ù‡ nas Ø±Ø§ ÙˆÛŒØ±Ø§ÛŒØ´ Ú©Ù†','2013-01-30 16:33:03','2013-02-02 01:09:51'),(951,4,4,274,'Profile component manager','2013-02-07 14:15:33','2013-02-11 08:46:10'),(952,5,5,274,'Profiel se komponent bestuurder','2013-02-07 14:15:33','2013-05-25 11:15:04'),(953,18,13,274,'(new addition)','2013-02-07 14:15:33','2013-02-07 14:15:33'),(954,4,4,275,'New profile component','2013-02-08 05:33:19','2013-02-11 08:46:01'),(955,5,5,275,'Nuwe profiel se komponent','2013-02-08 05:33:19','2013-05-25 11:12:39'),(956,18,13,275,'(new addition)','2013-02-08 05:33:19','2013-02-08 05:33:19'),(957,4,4,276,'Select the component owner','2013-02-08 05:33:51','2013-02-11 08:45:52'),(958,5,5,276,'Kies die komponent se eienaar','2013-02-08 05:33:51','2013-05-25 11:19:22'),(959,18,13,276,'(new addition)','2013-02-08 05:33:51','2013-02-08 05:33:51'),(960,4,4,277,'Components','2013-02-08 10:37:24','2013-02-11 08:46:20'),(961,5,5,277,'Komponente','2013-02-08 10:37:24','2013-05-25 11:01:14'),(962,18,13,277,'(new addition)','2013-02-08 10:37:24','2013-02-08 10:37:24'),(963,4,4,278,'Vendor','2013-02-08 11:16:58','2013-02-08 11:17:22'),(964,5,5,278,'Plek','2013-02-08 11:16:58','2013-05-25 11:22:32'),(965,18,13,278,'(new addition)','2013-02-08 11:16:58','2013-02-08 11:16:58'),(966,4,4,279,'Check attribute count','2013-02-08 20:11:08','2013-02-08 20:11:39'),(967,5,5,279,'Toets atribuut telling','2013-02-08 20:11:08','2013-05-25 11:00:49'),(968,18,13,279,'(new addition)','2013-02-08 20:11:08','2013-02-08 20:11:08'),(969,4,4,280,'Reply attribute count','2013-02-08 20:11:25','2013-02-08 20:11:56'),(970,5,5,280,'Antwoord attribuut telling','2013-02-08 20:11:25','2013-05-25 11:17:34'),(971,18,13,280,'(new addition)','2013-02-08 20:11:25','2013-02-08 20:11:25'),(972,4,4,281,'Attribute name','2013-02-08 20:12:20','2013-02-08 20:12:33'),(973,5,5,281,'Atribuut se naam','2013-02-08 20:12:20','2013-05-25 10:58:16'),(974,18,13,281,'(new addition)','2013-02-08 20:12:20','2013-02-08 20:12:20'),(975,4,4,282,'Replace this value','2013-02-08 20:12:54','2013-02-11 09:43:22'),(976,5,5,282,'Verander die waarde','2013-02-08 20:12:54','2013-05-25 11:17:05'),(977,18,13,282,'(new addition)','2013-02-08 20:12:54','2013-02-08 20:12:54'),(978,4,4,283,'Units','2013-02-08 20:13:32','2013-02-08 20:13:45'),(979,5,5,283,'Eenhede','2013-02-08 20:13:32','2013-05-25 11:23:25'),(980,18,13,283,'(new addition)','2013-02-08 20:13:32','2013-02-08 20:13:32'),(981,4,4,284,'Check','2013-02-09 12:01:12','2013-02-09 12:01:35'),(982,5,5,284,'Toets','2013-02-09 12:01:12','2013-05-25 11:00:37'),(983,18,13,284,'(new addition)','2013-02-09 12:01:12','2013-02-09 12:01:12'),(984,4,4,285,'Reply','2013-02-09 12:01:23','2013-02-09 12:01:42'),(985,5,5,285,'Antwoord','2013-02-09 12:01:23','2013-05-25 11:17:20'),(986,18,13,285,'(new addition)','2013-02-09 12:01:23','2013-02-09 12:01:23'),(987,4,4,286,'Profiles manager','2013-02-09 20:31:40','2013-02-09 20:32:08'),(988,5,5,286,'Profielle bestuurder','2013-02-09 20:31:40','2013-05-25 11:15:36'),(989,18,13,286,'(new addition)','2013-02-09 20:31:40','2013-02-09 20:31:40'),(990,4,4,287,'Profiles','2013-02-09 20:31:55','2013-02-09 20:32:14'),(991,5,5,287,'Profielle','2013-02-09 20:31:55','2013-05-25 11:15:28'),(992,18,13,287,'(new addition)','2013-02-09 20:31:55','2013-02-09 20:31:55'),(993,4,4,288,'Operator','2013-02-11 09:43:52','2013-02-11 09:44:04'),(994,5,5,288,'Operator','2013-02-11 09:43:52','2013-05-25 11:13:33'),(995,18,13,288,'(new addition)','2013-02-11 09:43:52','2013-02-11 09:43:52'),(996,4,4,289,'Select a vendor','2013-02-11 09:50:34','2013-02-11 09:51:30'),(997,5,5,289,'Kies \'n maak','2013-02-11 09:50:34','2013-05-25 11:18:26'),(998,18,13,289,'(new addition)','2013-02-11 09:50:34','2013-02-11 09:50:34'),(999,4,4,290,'Select an attribute','2013-02-11 09:51:01','2013-02-11 09:51:22'),(1000,5,5,290,'Kies \'n attribuut','2013-02-11 09:51:01','2013-05-25 11:18:55'),(1001,18,13,290,'(new addition)','2013-02-11 09:51:01','2013-02-11 09:51:01'),(1002,4,4,291,'Remove','2013-02-12 13:38:02','2013-02-12 13:38:17'),(1003,5,5,291,'Verwyder','2013-02-12 13:38:02','2013-05-25 10:39:50'),(1004,18,13,291,'(new addition)','2013-02-12 13:38:02','2013-02-12 13:38:02'),(1005,4,4,292,'Add or remove components','2013-02-12 13:52:00','2013-02-12 13:52:16'),(1006,5,5,292,'Komponente byvoeg of verwyder','2013-02-12 13:52:00','2013-05-25 10:56:33'),(1007,18,13,292,'(new addition)','2013-02-12 13:52:00','2013-02-12 13:52:00'),(1008,4,4,293,'Edit profile','2013-02-12 14:03:30','2013-02-12 14:03:54'),(1009,5,5,293,'Redigeer profiel','2013-02-12 14:03:30','2013-05-25 11:04:30'),(1010,18,13,293,'(new addition)','2013-02-12 14:03:30','2013-02-12 14:03:30'),(1011,4,4,294,'Select an action','2013-02-12 14:04:44','2013-02-12 14:58:40'),(1012,5,5,294,'Kies \'n aksie','2013-02-12 14:04:44','2013-05-25 11:18:33'),(1013,18,13,294,'(new addition)','2013-02-12 14:04:44','2013-02-12 14:04:44'),(1014,4,4,295,'Profile component','2013-02-12 14:05:37','2013-02-12 14:05:47'),(1015,5,5,295,'Profiel se komponent','2013-02-12 14:05:37','2013-05-25 11:14:50'),(1016,18,13,295,'(new addition)','2013-02-12 14:05:37','2013-02-12 14:05:37'),(1017,4,4,296,'Priority','2013-02-12 14:06:10','2013-02-12 14:06:18'),(1018,5,5,296,'Voorkeur','2013-02-12 14:06:10','2013-05-25 11:14:09'),(1019,18,13,296,'(new addition)','2013-02-12 14:06:10','2013-02-12 14:06:10'),(1020,4,4,297,'Profiles modified','2013-02-12 14:11:42','2013-02-12 14:11:58'),(1021,5,5,297,'Profielle is gewysig','2013-02-12 14:11:42','2013-05-25 11:15:54'),(1022,18,13,297,'(new addition)','2013-02-12 14:11:42','2013-02-12 14:11:42'),(1023,4,4,298,'Profiles_modified_fine','2013-02-12 14:12:10','2013-02-12 14:12:20'),(1024,5,5,298,'Profielle het mooi gewysig','2013-02-12 14:12:10','2013-05-25 11:16:05'),(1025,18,13,298,'(new addition)','2013-02-12 14:12:10','2013-02-12 14:12:10'),(1026,4,4,299,'Profile components','2013-02-12 14:58:59','2013-02-12 14:59:17'),(1027,5,5,299,'Profiel se komponente','2013-02-12 14:58:59','2013-05-25 11:15:21'),(1028,18,13,299,'(new addition)','2013-02-12 14:58:59','2013-02-12 14:58:59'),(1029,4,4,300,'Add component','2013-02-12 14:59:40','2013-02-12 14:59:52'),(1030,5,5,300,'Voeg komentaar by','2013-02-12 14:59:40','2013-05-25 10:56:04'),(1031,18,13,300,'(new addition)','2013-02-12 14:59:40','2013-02-12 14:59:40'),(1032,4,4,301,'Remove component','2013-02-12 15:00:16','2013-02-12 15:00:28'),(1033,5,5,301,'Verwyder komponent','2013-02-12 15:00:16','2013-05-25 11:16:39'),(1034,18,13,301,'(new addition)','2013-02-12 15:00:16','2013-02-12 15:00:16'),(1035,4,4,302,'Make private','2013-02-12 15:01:53','2013-02-12 15:02:04'),(1036,5,5,302,'Maak privaat','2013-02-12 15:01:53','2013-05-25 11:10:37'),(1037,18,13,302,'(new addition)','2013-02-12 15:01:53','2013-02-12 15:01:53'),(1038,4,4,303,'Select a component to add or remove','2013-02-12 15:13:23','2013-02-12 15:15:24'),(1039,5,5,303,'Kies \'n komponent om by te sit of te verwyder','2013-02-12 15:13:23','2013-05-25 11:18:03'),(1040,18,13,303,'(new addition)','2013-02-12 15:13:23','2013-02-12 15:13:23'),(1041,4,4,304,'Permanent Users','2013-03-04 12:37:28','2013-03-04 12:37:41'),(1042,5,5,304,'Permanente gebruikers','2013-03-04 12:37:28','2013-05-25 10:02:23'),(1043,18,13,304,'(new addition)','2013-03-04 12:37:28','2013-03-04 12:37:28'),(1044,4,4,305,'New permanent user','2013-03-06 08:43:01','2013-03-06 08:43:15'),(1045,5,5,305,'Nuwe permanente gebruiker','2013-03-06 08:43:01','2013-05-25 11:12:15'),(1046,18,13,305,'(new addition)','2013-03-06 08:43:01','2013-03-06 08:43:01'),(1047,4,4,306,'Basic info','2013-03-06 08:45:16','2013-03-06 08:45:30'),(1048,5,5,306,'Basiese inligting','2013-03-06 08:45:16','2013-05-25 10:58:56'),(1049,18,13,306,'(new addition)','2013-03-06 08:45:16','2013-03-06 08:45:16'),(1050,4,4,307,'Profile','2013-03-06 08:46:10','2013-03-06 08:46:20'),(1051,5,5,307,'Profiel','2013-03-06 08:46:10','2013-05-25 11:14:39'),(1052,18,13,307,'(new addition)','2013-03-06 08:46:10','2013-03-06 08:46:10'),(1053,4,4,308,'Cap type','2013-03-06 08:46:48','2013-03-06 08:46:58'),(1054,5,5,308,'Tipe Cap','2013-03-06 08:46:48','2013-05-25 10:59:50'),(1055,18,13,308,'(new addition)','2013-03-06 08:46:48','2013-03-06 08:46:48'),(1056,4,4,309,'Personal info','2013-03-06 08:47:22','2013-03-06 08:47:32'),(1057,5,5,309,'Persoonlike detail','2013-03-06 08:47:22','2013-05-25 11:13:59'),(1058,18,13,309,'(new addition)','2013-03-06 08:47:22','2013-03-06 08:47:22'),(1059,4,4,310,'Activate and Expire','2013-03-06 08:47:57','2013-03-06 08:48:12'),(1060,5,5,310,'Aktiveer en verval','2013-03-06 08:47:57','2013-05-25 10:55:36'),(1061,18,13,310,'(new addition)','2013-03-06 08:47:57','2013-03-06 08:47:57'),(1062,4,4,311,'Always active','2013-03-06 08:48:38','2013-03-11 06:50:43'),(1063,5,5,311,'Vir altyd aktief','2013-03-06 08:48:38','2013-05-25 10:57:57'),(1064,18,13,311,'(new addition)','2013-03-06 08:48:38','2013-03-06 08:48:38'),(1065,4,4,312,'From','2013-03-06 08:49:08','2013-03-06 08:49:16'),(1066,5,5,312,'Van','2013-03-06 08:49:08','2013-05-25 11:06:46'),(1067,18,13,312,'(new addition)','2013-03-06 08:49:08','2013-03-06 08:49:08'),(1068,4,4,313,'To','2013-03-06 08:49:26','2013-03-06 08:49:34'),(1069,5,5,313,'Aan','2013-03-06 08:49:26','2013-05-25 11:27:18'),(1070,18,13,313,'(new addition)','2013-03-06 08:49:26','2013-03-06 08:49:26'),(1071,4,4,314,'Tracking','2013-03-06 08:49:58','2013-03-06 08:50:12'),(1072,5,5,314,'Hou boek','2013-03-06 08:49:58','2013-05-25 11:27:44'),(1073,18,13,314,'(new addition)','2013-03-06 08:49:58','2013-03-06 08:49:58'),(1074,4,4,315,'RADIUS authentication','2013-03-06 08:50:21','2013-03-06 08:50:35'),(1075,5,5,315,'RADIUS geldigheidsvasstelling','2013-03-06 08:50:21','2013-05-25 11:16:29'),(1076,18,13,315,'(new addition)','2013-03-06 08:50:21','2013-03-06 08:50:21'),(1077,4,4,316,'RADIUS accounting','2013-03-06 08:50:52','2013-03-06 08:51:03'),(1078,5,5,316,'RADIUS verbruik','2013-03-06 08:50:52','2013-05-25 11:16:16'),(1079,18,13,316,'(new addition)','2013-03-06 08:50:52','2013-03-06 08:50:52'),(1080,4,4,317,'Hard','2013-03-06 09:36:36','2013-03-06 09:36:56'),(1081,5,5,317,'Harde','2013-03-06 09:36:36','2013-05-25 11:07:17'),(1082,18,13,317,'(new addition)','2013-03-06 09:36:36','2013-03-06 09:36:36'),(1083,4,4,318,'Soft','2013-03-06 09:36:45','2013-03-06 09:37:00'),(1084,5,5,318,'Sagte','2013-03-06 09:36:45','2013-05-25 11:21:35'),(1085,18,13,318,'(new addition)','2013-03-06 09:36:45','2013-03-06 09:36:45'),(1086,4,4,319,'Auth type','2013-03-07 05:10:48','2013-03-07 05:11:21'),(1087,5,5,319,'Auth type','2013-03-07 05:10:48','2013-05-25 10:58:26'),(1088,18,13,319,'(new addition)','2013-03-07 05:10:48','2013-03-07 05:10:48'),(1089,4,4,320,'BYOD manager','2013-03-08 12:33:06','2013-03-08 12:33:24'),(1090,5,5,320,'BYOD','2013-03-08 12:33:06','2013-05-25 11:39:45'),(1091,18,13,320,'(new addition)','2013-03-08 12:33:06','2013-03-08 12:33:06'),(1092,4,4,321,'Vouchers','2013-03-08 12:34:26','2013-03-08 12:34:38'),(1093,5,5,321,'Koeponne','2013-03-08 12:34:26','2013-05-25 10:01:39'),(1094,18,13,321,'(new addition)','2013-03-08 12:34:26','2013-03-08 12:34:26'),(1095,4,4,322,'Activity monitor','2013-03-08 12:34:57','2013-03-08 12:35:12'),(1096,5,5,322,'Aktiviteit','2013-03-08 12:34:57','2013-05-25 11:40:08'),(1097,18,13,322,'(new addition)','2013-03-08 12:34:57','2013-03-08 12:34:57'),(1098,4,4,323,'Registered devices','2013-03-08 14:05:54','2013-03-08 14:06:07'),(1099,5,5,323,'Geregistreerde toestelle','2013-03-08 14:05:54','2013-05-25 10:39:28'),(1100,18,13,323,'(new addition)','2013-03-08 14:05:54','2013-03-08 14:05:54'),(1101,4,4,324,'Unclaimed devices','2013-03-08 14:06:27','2013-03-08 14:06:39'),(1102,5,5,324,'On-opgeeiste toestelle','2013-03-08 14:06:27','2013-05-25 11:23:54'),(1103,18,13,324,'(new addition)','2013-03-08 14:06:27','2013-03-08 14:06:27'),(1104,4,4,325,'MAC Address','2013-03-09 16:02:28','2013-03-09 16:03:25'),(1105,5,5,325,'MAC-adres','2013-03-09 16:02:28','2013-05-25 11:10:30'),(1106,18,13,325,'(new addition)','2013-03-09 16:02:28','2013-03-09 16:02:28'),(1107,4,4,326,'Authentication data','2013-03-11 06:32:34','2013-03-11 15:57:59'),(1108,5,5,326,'Geldigheidsvasstellingdata','2013-03-11 06:32:34','2013-05-25 10:58:46'),(1109,18,13,326,'(new addition)','2013-03-11 06:32:34','2013-03-11 06:32:34'),(1110,4,4,327,'Accounting data','2013-03-11 06:33:13','2013-03-11 15:58:10'),(1111,5,5,327,'Verbruik data','2013-03-11 06:33:13','2013-05-25 10:54:26'),(1112,18,13,327,'(new addition)','2013-03-11 06:33:13','2013-03-11 06:33:13'),(1113,4,4,328,'In {in} Out {out} Total {total}','2013-03-11 13:32:11','2013-03-11 14:02:32'),(1114,5,5,328,'In {in} Uit {out} Totaal {totaal}','2013-03-11 13:32:11','2013-05-25 11:08:15'),(1115,18,13,328,'(new addition)','2013-03-11 13:32:11','2013-03-11 13:32:11'),(1116,4,4,329,'NAS port id','2013-03-11 15:01:29','2013-03-11 15:01:50'),(1117,5,5,329,'NAS poort id','2013-03-11 15:01:29','2013-05-25 11:11:41'),(1118,18,13,329,'(new addition)','2013-03-11 15:01:29','2013-03-11 15:01:29'),(1119,4,4,330,'NAS port type','2013-03-11 15:02:08','2013-03-11 15:02:21'),(1120,5,5,330,'NAS poort tipe','2013-03-11 15:02:08','2013-05-25 11:11:48'),(1121,18,13,330,'(new addition)','2013-03-11 15:02:08','2013-03-11 15:02:08'),(1122,4,4,331,'Start time','2013-03-11 15:02:50','2013-03-11 15:03:10'),(1123,5,5,331,'Begin tyd','2013-03-11 15:02:50','2013-05-25 11:24:24'),(1124,18,13,331,'(new addition)','2013-03-11 15:02:50','2013-03-11 15:02:50'),(1125,4,4,332,'Stop time','2013-03-11 15:03:33','2013-03-11 15:03:46'),(1126,5,5,332,'Stop tyd','2013-03-11 15:03:33','2013-05-25 11:25:32'),(1127,18,13,332,'(new addition)','2013-03-11 15:03:33','2013-03-11 15:03:33'),(1128,4,4,333,'FreeRADIUS info','2013-03-11 16:00:27','2013-03-20 19:58:12'),(1129,5,5,333,'FreeRADIUS inligting','2013-03-11 16:00:27','2013-05-25 11:06:40'),(1130,18,13,333,'(new addition)','2013-03-11 16:00:27','2013-03-11 16:00:27'),(1131,4,4,334,'Devices','2013-03-13 08:15:18','2013-03-13 08:15:57'),(1132,5,5,334,'Toestelle','2013-03-13 08:15:18','2013-05-25 11:03:37'),(1133,18,13,334,'(new addition)','2013-03-13 08:15:18','2013-03-13 08:15:18'),(1134,4,4,335,'Private attributes','2013-03-13 08:15:34','2013-03-13 08:16:12'),(1135,5,5,335,'Privaat attribuut','2013-03-13 08:15:34','2013-05-25 11:14:19'),(1136,18,13,335,'(new addition)','2013-03-13 08:15:34','2013-03-13 08:15:34'),(1137,4,4,336,'Last accept time','2013-03-13 13:22:19','2013-03-13 13:22:39'),(1138,5,5,336,'Laaste aanvaardings tyd','2013-03-13 13:22:19','2013-05-25 11:09:09'),(1139,18,13,336,'(new addition)','2013-03-13 13:22:19','2013-03-13 13:22:19'),(1140,4,4,337,'Last accept nas','2013-03-13 13:23:00','2013-03-13 13:23:17'),(1141,5,5,337,'Laaste NAS wat aanvaar het','2013-03-13 13:23:00','2013-05-25 11:08:59'),(1142,18,13,337,'(new addition)','2013-03-13 13:23:00','2013-03-13 13:23:00'),(1143,4,4,338,'Last reject time','2013-03-13 13:23:34','2013-03-13 13:23:48'),(1144,5,5,338,'Laaste wegwystyd','2013-03-13 13:23:34','2013-05-25 11:09:56'),(1145,18,13,338,'(new addition)','2013-03-13 13:23:34','2013-03-13 13:23:34'),(1146,4,4,339,'Last reject nas','2013-03-13 13:24:13','2013-03-13 13:24:27'),(1147,5,5,339,'Laaste wegwys NAS','2013-03-13 13:24:13','2013-05-25 11:09:34'),(1148,18,13,339,'(new addition)','2013-03-13 13:24:13','2013-03-13 13:24:13'),(1149,4,4,340,'Last reject message','2013-03-13 13:24:52','2013-03-13 13:25:10'),(1150,5,5,340,'Laaste wegwys boodskap','2013-03-13 13:24:52','2013-05-25 11:09:24'),(1151,18,13,340,'(new addition)','2013-03-13 13:24:52','2013-03-13 13:24:52'),(1152,4,4,341,'New device','2013-03-18 13:27:59','2013-03-18 13:28:20'),(1153,5,5,341,'Nuwe toestel','2013-03-18 13:27:59','2013-05-25 11:12:01'),(1154,18,13,341,'(new addition)','2013-03-18 13:27:59','2013-03-18 13:27:59'),(1155,4,4,342,' Enable / Disable','2013-03-18 13:36:41','2013-03-18 13:37:07'),(1156,5,5,342,'Aktiveer / De-aktiveer','2013-03-18 13:36:41','2013-05-25 10:52:43'),(1157,18,13,342,'(new addition)','2013-03-18 13:36:41','2013-03-18 13:36:41'),(1158,4,4,343,'Enable','2013-03-18 13:37:50','2013-03-18 13:37:57'),(1159,5,5,343,'Aktiveer','2013-03-18 13:37:50','2013-05-25 11:04:52'),(1160,18,13,343,'(new addition)','2013-03-18 13:37:50','2013-03-18 13:37:50'),(1161,4,4,344,'Disable','2013-03-18 13:38:08','2013-03-18 13:38:14'),(1162,5,5,344,'De-aktiveer','2013-03-18 13:38:08','2013-05-25 11:03:52'),(1163,18,13,344,'(new addition)','2013-03-18 13:38:08','2013-03-18 13:38:08'),(1164,4,4,345,'First select an item to modify','2013-03-18 13:48:48','2013-03-18 13:49:18'),(1165,5,5,345,'Kies eers \'n ietem on te verander','2013-03-18 13:48:48','2013-05-25 11:06:05'),(1166,18,13,345,'(new addition)','2013-03-18 13:48:48','2013-03-18 13:48:48'),(1167,4,4,346,'Items modified','2013-03-18 13:49:36','2013-03-18 13:49:47'),(1168,5,5,346,'Items is gewysig','2013-03-18 13:49:36','2013-05-25 11:08:30'),(1169,18,13,346,'(new addition)','2013-03-18 13:49:36','2013-03-18 13:49:36'),(1170,4,4,347,'Items modified fine','2013-03-18 13:50:04','2013-03-18 13:50:15'),(1171,5,5,347,'Items het mooi gewysig','2013-03-18 13:50:04','2013-05-25 11:08:40'),(1172,18,13,347,'(new addition)','2013-03-18 13:50:04','2013-03-18 13:50:04'),(1173,4,4,348,'End date wrong','2013-03-18 13:51:18','2013-03-18 13:51:32'),(1174,5,5,348,'Eind-datum verkeerd','2013-03-18 13:51:18','2013-05-25 11:05:03'),(1175,18,13,348,'(new addition)','2013-03-18 13:51:18','2013-03-18 13:51:18'),(1176,4,4,349,'The end date should be after the start_date','2013-03-18 13:51:49','2013-03-18 13:52:12'),(1177,5,5,349,'Die einddatum moet na die begin datum wees','2013-03-18 13:51:49','2013-05-25 11:26:57'),(1178,18,13,349,'(new addition)','2013-03-18 13:51:49','2013-03-18 13:51:49'),(1179,4,4,350,'Start date wrong','2013-03-18 13:52:30','2013-03-18 13:52:40'),(1180,5,5,350,'Verkeerde begin datum','2013-03-18 13:52:30','2013-05-25 11:24:18'),(1181,18,13,350,'(new addition)','2013-03-18 13:52:30','2013-03-18 13:52:30'),(1182,4,4,351,'The start date should be before the end date','2013-03-18 13:53:02','2013-03-18 13:53:27'),(1183,5,5,351,'Die begindatum moet voor die einddatum wees','2013-03-18 13:53:02','2013-05-25 11:27:11'),(1184,18,13,351,'(new addition)','2013-03-18 13:53:02','2013-03-18 13:53:02'),(1185,4,4,352,'Change password','2013-03-18 14:12:20','2013-03-18 14:12:32'),(1186,5,5,352,'Verander wagwoord','2013-03-18 14:12:20','2013-05-25 11:00:15'),(1187,18,13,352,'(new addition)','2013-03-18 14:12:20','2013-03-18 14:12:20'),(1188,4,4,353,'Change password','2013-03-18 14:15:50','2013-03-18 14:16:44'),(1189,5,5,353,'Verander wagwoord','2013-03-18 14:15:50','2013-05-25 11:00:27'),(1190,18,13,353,'(new addition)','2013-03-18 14:15:50','2013-03-18 14:15:50'),(1191,4,4,354,'Wallpaper changed','2013-03-18 14:20:00','2013-03-18 14:20:33'),(1192,5,5,354,'Muurpapier het verander','2013-03-18 14:20:00','2013-05-25 11:22:16'),(1193,18,13,354,'(new addition)','2013-03-18 14:20:00','2013-03-18 14:20:00'),(1194,4,4,355,'Wallpaper changed fine','2013-03-18 14:20:12','2013-03-18 14:20:45'),(1195,5,5,355,'Muurpapier het mooi verander','2013-03-18 14:20:12','2013-05-25 11:22:07'),(1196,18,13,355,'(new addition)','2013-03-18 14:20:12','2013-03-18 14:20:12'),(1197,4,4,356,'Groupname','2013-03-18 15:39:29','2013-03-18 15:39:40'),(1198,5,5,356,'Groepnaam','2013-03-18 15:39:29','2013-05-25 11:07:11'),(1199,18,13,356,'(new addition)','2013-03-18 15:39:29','2013-03-18 15:39:29'),(1200,4,4,357,'NAS IP Address','2013-03-18 15:40:08','2013-03-18 15:40:18'),(1201,5,5,357,'NAS IP-adres','2013-03-18 15:40:08','2013-05-25 11:11:11'),(1202,18,13,357,'(new addition)','2013-03-18 15:40:08','2013-03-18 15:40:08'),(1203,4,4,358,'Session time','2013-03-18 15:41:13','2013-03-18 15:41:22'),(1204,5,5,358,'Sessie se duur','2013-03-18 15:41:13','2013-05-25 11:19:57'),(1205,18,13,358,'(new addition)','2013-03-18 15:41:13','2013-03-18 15:41:13'),(1206,4,4,359,'Account authentic','2013-03-18 15:41:38','2013-03-18 15:41:48'),(1207,5,5,359,'Account authentic','2013-03-18 15:41:38','2013-05-25 10:54:07'),(1208,18,13,359,'(new addition)','2013-03-18 15:41:38','2013-03-18 15:41:38'),(1209,4,4,360,'Connect info start','2013-03-18 15:42:14','2013-03-18 15:42:24'),(1210,5,5,360,'Konnekteer inligting begin','2013-03-18 15:42:14','2013-05-25 11:01:39'),(1211,18,13,360,'(new addition)','2013-03-18 15:42:14','2013-03-18 15:42:14'),(1212,4,4,361,'Connect info stop','2013-03-18 15:42:35','2013-03-18 15:42:52'),(1213,5,5,361,'Konnekteer inligting stop','2013-03-18 15:42:35','2013-05-25 11:01:49'),(1214,18,13,361,'(new addition)','2013-03-18 15:42:35','2013-03-18 15:42:35'),(1215,4,4,362,'Data in','2013-03-18 15:43:15','2013-03-18 15:43:21'),(1216,5,5,362,'Data in','2013-03-18 15:43:15','2013-05-25 11:02:58'),(1217,18,13,362,'(new addition)','2013-03-18 15:43:15','2013-03-18 15:43:15'),(1218,4,4,363,'Data out','2013-03-18 15:43:32','2013-03-18 15:43:40'),(1219,5,5,363,'Data out','2013-03-18 15:43:32','2013-05-25 11:03:04'),(1220,18,13,363,'(new addition)','2013-03-18 15:43:32','2013-03-18 15:43:32'),(1221,4,4,364,'Called station id','2013-03-18 15:44:00','2013-03-18 15:44:10'),(1222,5,5,364,'Called station id','2013-03-18 15:44:00','2013-05-25 10:59:10'),(1223,18,13,364,'(new addition)','2013-03-18 15:44:00','2013-03-18 15:44:00'),(1224,4,4,365,'Calling station id (MAC)','2013-03-18 15:44:31','2013-03-18 15:44:48'),(1225,5,5,365,'Calling station id (MAC)','2013-03-18 15:44:31','2013-05-25 10:59:28'),(1226,18,13,365,'(new addition)','2013-03-18 15:44:31','2013-03-18 15:44:31'),(1227,4,4,366,'Terminate cause','2013-03-18 15:45:12','2013-03-18 15:45:21'),(1228,5,5,366,'Be-eindigings rede','2013-03-18 15:45:12','2013-05-25 11:26:37'),(1229,18,13,366,'(new addition)','2013-03-18 15:45:12','2013-03-18 15:45:12'),(1230,4,4,367,'Service type','2013-03-18 15:45:36','2013-03-18 15:45:45'),(1231,5,5,367,'Tipe diens','2013-03-18 15:45:36','2013-05-25 11:19:48'),(1232,18,13,367,'(new addition)','2013-03-18 15:45:36','2013-03-18 15:45:36'),(1233,4,4,368,'Framed protocol','2013-03-18 15:46:03','2013-03-18 15:46:12'),(1234,5,5,368,'Framed protocol','2013-03-18 15:46:03','2013-05-25 11:06:25'),(1235,18,13,368,'(new addition)','2013-03-18 15:46:03','2013-03-18 15:46:03'),(1236,4,4,369,'Framed IP Address','2013-03-18 15:46:26','2013-03-18 15:46:40'),(1237,5,5,369,'Framed IP Address','2013-03-18 15:46:26','2013-05-25 11:06:16'),(1238,18,13,369,'(new addition)','2013-03-18 15:46:26','2013-03-18 15:46:26'),(1239,4,4,370,'Acct start delay','2013-03-18 15:46:58','2013-03-18 15:47:10'),(1240,5,5,370,'Acct start delay','2013-03-18 15:46:58','2013-05-25 10:54:54'),(1241,18,13,370,'(new addition)','2013-03-18 15:46:58','2013-03-18 15:46:58'),(1242,4,4,371,'Acct stop delay','2013-03-18 15:47:40','2013-03-18 15:47:53'),(1243,5,5,371,'Acct stop delay','2013-03-18 15:47:40','2013-05-25 10:55:02'),(1244,18,13,371,'(new addition)','2013-03-18 15:47:40','2013-03-18 15:47:40'),(1245,4,4,372,'X Ascend session svr key','2013-03-18 15:48:12','2013-03-18 15:48:24'),(1246,5,5,372,'X Ascent session srv key','2013-03-18 15:48:12','2013-05-25 11:23:17'),(1247,18,13,372,'(new addition)','2013-03-18 15:48:12','2013-03-18 15:48:12'),(1248,4,4,373,'Nasname','2013-03-18 15:49:44','2013-03-18 15:49:52'),(1249,5,5,373,'Nasnaam','2013-03-18 15:49:44','2013-05-25 11:11:54'),(1250,18,13,373,'(new addition)','2013-03-18 15:49:44','2013-03-18 15:49:44'),(1251,4,4,374,'Date','2013-03-18 15:50:12','2013-03-18 15:50:19'),(1252,5,5,374,'Datum','2013-03-18 15:50:12','2013-05-25 11:03:10'),(1253,18,13,374,'(new addition)','2013-03-18 15:50:12','2013-03-18 15:50:12'),(1254,4,4,375,'Reload every','2013-03-20 14:37:28','2013-03-20 14:37:48'),(1255,5,5,375,'Verfris elke','2013-03-20 14:37:28','2013-05-25 10:39:41'),(1256,18,13,375,'(new addition)','2013-03-20 14:37:28','2013-03-20 14:37:28'),(1257,4,4,376,'30 seconds','2013-03-20 14:38:07','2013-03-20 14:38:20'),(1258,5,5,376,'30 sekondes','2013-03-20 14:38:07','2013-05-25 10:53:07'),(1259,18,13,376,'(new addition)','2013-03-20 14:38:07','2013-03-20 14:38:07'),(1260,4,4,377,'1 minute','2013-03-20 14:38:38','2013-03-20 14:38:49'),(1261,5,5,377,'1 minuut','2013-03-20 14:38:38','2013-05-25 10:52:57'),(1262,18,13,377,'(new addition)','2013-03-20 14:38:38','2013-03-20 14:38:38'),(1263,4,4,378,'5 minutes','2013-03-20 14:39:08','2013-03-20 14:39:21'),(1264,5,5,378,'5 minute','2013-03-20 14:39:08','2013-05-25 10:53:13'),(1265,18,13,378,'(new addition)','2013-03-20 14:39:08','2013-03-20 14:39:08'),(1266,4,4,379,'Stop auto reload','2013-03-20 14:39:41','2013-03-20 14:40:04'),(1267,5,5,379,'Stop self-herlaai','2013-03-20 14:39:41','2013-05-25 11:24:35'),(1268,18,13,379,'(new addition)','2013-03-20 14:39:41','2013-03-20 14:39:41'),(1269,4,4,380,'Wallpaper','2013-03-20 20:12:16','2013-03-20 20:12:34'),(1270,5,5,380,'Muurpapier','2013-03-20 20:12:16','2013-05-25 11:22:23'),(1271,18,13,380,'(new addition)','2013-03-20 20:12:16','2013-03-20 20:12:16'),(1272,4,4,381,'Acct session id','2013-03-21 04:36:09','2013-03-21 04:36:49'),(1273,5,5,381,'Acct session id','2013-03-21 04:36:09','2013-05-25 10:54:43'),(1274,18,13,381,'(new addition)','2013-03-21 04:36:09','2013-03-21 04:36:09'),(1275,4,4,382,'Acct unique id','2013-03-21 04:36:26','2013-03-21 04:36:42'),(1276,5,5,382,'Acct unique id','2013-03-21 04:36:26','2013-05-25 10:55:12'),(1277,18,13,382,'(new addition)','2013-03-21 04:36:26','2013-03-21 04:36:26'),(1278,4,4,383,'User type','2013-03-21 05:20:28','2013-03-21 05:20:47'),(1279,5,5,383,'Tipe gebruiker','2013-03-21 05:20:28','2013-05-25 11:23:04'),(1280,18,13,383,'(new addition)','2013-03-21 05:20:28','2013-03-21 05:20:28'),(1281,4,4,384,'OpenVPN','2013-03-25 19:39:32','2013-03-25 19:40:24'),(1282,5,5,384,'OpenVPN','2013-03-25 19:39:32','2013-05-25 11:13:08'),(1283,18,13,384,'(new addition)','2013-03-25 19:39:32','2013-03-25 19:39:32'),(1290,4,4,387,'Set by server','2013-03-25 19:49:38','2013-03-25 19:49:54'),(1291,5,5,387,'Voorsien deur die bediener','2013-03-25 19:49:38','2013-05-25 11:20:12'),(1292,18,13,387,'(new addition)','2013-03-25 19:49:38','2013-03-25 19:49:38'),(1293,4,4,388,'NAS','2013-03-25 20:15:52','2013-03-25 20:16:54'),(1294,5,5,388,'NAS','2013-03-25 20:15:52','2013-05-25 11:11:02'),(1295,18,13,388,'(new addition)','2013-03-25 20:15:52','2013-03-25 20:15:52'),(1296,4,4,389,'OpenVPN credentials','2013-03-26 11:32:05','2013-03-26 11:32:21'),(1297,5,5,389,'OpenVPN inligting','2013-03-26 11:32:05','2013-05-25 11:13:25'),(1298,18,13,389,'(new addition)','2013-03-26 11:32:05','2013-03-26 11:32:05'),(1299,4,4,390,'Dynamic AVP detail','2013-03-26 11:37:48','2013-03-26 11:38:07'),(1300,5,5,390,'Dinamiese AVP detail','2013-03-26 11:37:48','2013-05-25 11:04:07'),(1301,18,13,390,'(new addition)','2013-03-26 11:37:48','2013-03-26 11:37:48'),(1302,4,4,391,'Example','2013-03-26 21:15:27','2013-03-26 21:15:39'),(1303,5,5,391,'Voorbeeld','2013-03-26 21:15:27','2013-05-25 11:05:30'),(1304,18,13,391,'(new addition)','2013-03-26 21:15:27','2013-03-26 21:15:27'),(1305,4,4,392,'PPTP credentials','2013-03-26 22:05:12','2013-03-26 22:05:30'),(1306,5,5,392,'PPTP inligting','2013-03-26 22:05:12','2013-05-25 11:13:50'),(1307,18,13,392,'(new addition)','2013-03-26 22:05:12','2013-03-26 22:05:12'),(1308,4,4,393,'PPTP','2013-03-26 22:05:43','2013-03-26 22:05:53'),(1309,5,5,393,'PPTP','2013-03-26 22:05:43','2013-05-25 11:13:40'),(1310,18,13,393,'(new addition)','2013-03-26 22:05:43','2013-03-26 22:05:43'),(1311,4,4,394,'Ignore accounting requests','2013-03-29 17:05:46','2013-03-29 17:06:17'),(1312,5,5,394,'Ignoreer verbruik versoeke','2013-03-29 17:05:46','2013-05-25 11:07:41'),(1313,18,13,394,'(new addition)','2013-03-29 17:05:46','2013-03-29 17:05:46'),(1314,4,4,395,'Google Maps','2013-03-31 14:00:12','2013-03-31 14:00:34'),(1315,5,5,395,'Google-kaarte','2013-03-31 14:00:12','2013-05-25 11:06:58'),(1316,18,13,395,'(new addition)','2013-03-31 14:00:12','2013-03-31 14:00:12'),(1317,4,4,396,'Device info','2013-04-01 13:33:14','2013-04-01 13:33:36'),(1318,5,5,396,'Toestel se inligting','2013-04-01 13:33:14','2013-05-25 11:03:31'),(1319,18,13,396,'(new addition)','2013-04-01 13:33:14','2013-04-01 13:33:14'),(1320,4,4,397,'Cancel','2013-04-02 06:56:59','2013-04-02 06:57:21'),(1321,5,5,397,'Vergeet','2013-04-02 06:56:59','2013-05-25 10:59:41'),(1322,18,13,397,'(new addition)','2013-04-02 06:56:59','2013-04-02 06:56:59'),(1323,4,4,398,'Action required','2013-04-02 06:57:35','2013-04-02 06:58:47'),(1324,5,5,398,'Aksie benodig','2013-04-02 06:57:35','2013-05-25 10:55:25'),(1325,18,13,398,'(new addition)','2013-04-02 06:57:35','2013-04-02 06:57:35'),(1326,4,4,399,'New position','2013-04-02 08:00:23','2013-04-02 08:00:44'),(1327,5,5,399,'Nuwe posisie','2013-04-02 08:00:23','2013-05-25 11:12:25'),(1328,18,13,399,'(new addition)','2013-04-02 08:00:23','2013-04-02 08:00:23'),(1329,4,4,400,'Simply drag a marker to a different postition and click the delete button in the info window','2013-04-02 11:10:04','2013-04-02 11:13:01'),(1330,5,5,400,'Skuif bloot die merker na \'n ander posisie en klik op die verwyder knoppie in die inligtingsvenster','2013-04-02 11:10:04','2013-05-25 11:21:11'),(1331,18,13,400,'(new addition)','2013-04-02 11:10:04','2013-04-02 11:10:04'),(1332,4,4,401,'Delete a marker','2013-04-02 11:13:49','2013-04-02 11:14:07'),(1333,5,5,401,'Verwyder merker','2013-04-02 11:13:49','2013-05-25 11:03:20'),(1334,18,13,401,'(new addition)','2013-04-02 11:13:49','2013-04-02 11:13:49'),(1335,4,4,402,'Edit a marker','2013-04-02 11:15:19','2013-04-02 11:15:32'),(1336,5,5,402,'Wysig \'n merker','2013-04-02 11:15:19','2013-05-25 11:04:18'),(1337,18,13,402,'(new addition)','2013-04-02 11:15:19','2013-04-02 11:15:19'),(1338,4,4,403,'Simply drag a marker to a different postition and click the save button in the info window','2013-04-02 11:16:20','2013-04-02 11:17:06'),(1339,5,5,403,'Skuif bloot die merker na \'n ander posisie en klik op die stoor knoppie in die inligtingsvenster','2013-04-02 11:16:20','2013-05-25 11:21:25'),(1340,18,13,403,'(new addition)','2013-04-02 11:16:20','2013-04-02 11:16:20'),(1341,4,4,404,'Add a marker','2013-04-02 11:41:48','2013-04-02 11:42:05'),(1342,5,5,404,'Voeg \'n merker by','2013-04-02 11:41:48','2013-05-25 09:43:09'),(1343,18,13,404,'(new addition)','2013-04-02 11:41:48','2013-04-02 11:41:48'),(1344,4,4,405,'Select a NAS device','2013-04-02 11:43:30','2013-04-02 11:43:48'),(1345,5,5,405,'Kies \'n NAS-toestel','2013-04-02 11:43:30','2013-05-25 09:42:56'),(1346,18,13,405,'(new addition)','2013-04-02 11:43:30','2013-04-02 11:43:30'),(1347,4,4,406,'Current state','2013-04-03 05:48:15','2013-04-03 05:55:25'),(1348,5,5,406,'Huidige status','2013-04-03 05:48:15','2013-05-25 09:42:43'),(1349,18,13,406,'(new addition)','2013-04-03 05:48:15','2013-04-03 05:48:15'),(1350,4,4,407,'Up','2013-04-03 13:26:16','2013-04-03 13:26:44'),(1351,5,5,407,'Aanlyn','2013-04-03 13:26:16','2013-05-25 09:42:34'),(1352,18,13,407,'(new addition)','2013-04-03 13:26:16','2013-04-03 13:26:16'),(1353,4,4,408,'Down','2013-04-03 13:26:53','2013-04-03 13:27:07'),(1354,5,5,408,'Af','2013-04-03 13:26:53','2013-05-25 09:42:27'),(1355,18,13,408,'(new addition)','2013-04-03 13:26:53','2013-04-03 13:26:53'),(1356,4,4,409,'Unknown','2013-04-03 13:27:22','2013-04-03 13:27:38'),(1357,5,5,409,'Unbekend','2013-04-03 13:27:22','2013-05-25 09:40:06'),(1358,18,13,409,'(new addition)','2013-04-03 13:27:22','2013-04-03 13:27:22'),(1359,4,4,410,'Status','2013-04-03 13:27:53','2013-04-03 13:28:08'),(1360,5,5,410,'Status','2013-04-03 13:27:53','2013-05-25 09:39:58'),(1361,18,13,410,'(new addition)','2013-04-03 13:27:53','2013-04-03 13:27:53'),(1362,4,4,411,'Preferences','2013-04-04 08:15:49','2013-04-04 08:16:06'),(1363,5,5,411,'Voorkeure','2013-04-04 08:15:49','2013-05-25 09:39:51'),(1364,18,13,411,'(new addition)','2013-04-04 08:15:49','2013-04-04 08:15:49'),(1365,4,4,412,'Hybrid','2013-04-04 08:16:23','2013-04-04 08:16:37'),(1366,5,5,412,'Mengsel','2013-04-04 08:16:23','2013-05-25 09:39:44'),(1367,18,13,412,'(new addition)','2013-04-04 08:16:23','2013-04-04 08:16:23'),(1368,4,4,413,'Roadmap','2013-04-04 08:16:54','2013-04-04 08:17:08'),(1369,5,5,413,'Padkaart','2013-04-04 08:16:54','2013-05-25 09:39:38'),(1370,18,13,413,'(new addition)','2013-04-04 08:16:54','2013-04-04 08:16:54'),(1371,4,4,414,'Satellite','2013-04-04 08:17:25','2013-04-04 08:17:34'),(1372,5,5,414,'Sateliet','2013-04-04 08:17:25','2013-05-25 09:39:30'),(1373,18,13,414,'(new addition)','2013-04-04 08:17:25','2013-04-04 08:17:25'),(1374,4,4,415,'Terrain','2013-04-04 08:17:51','2013-04-04 08:18:05'),(1375,5,5,415,'Terein','2013-04-04 08:17:51','2013-05-25 09:39:12'),(1376,18,13,415,'(new addition)','2013-04-04 08:17:51','2013-04-04 08:17:51'),(1377,4,4,416,'Snapshot','2013-04-04 08:18:39','2013-04-04 08:36:23'),(1378,5,5,416,'Grypskoot','2013-04-04 08:18:39','2013-05-25 09:39:03'),(1379,18,13,416,'(new addition)','2013-04-04 08:18:39','2013-04-04 08:18:39'),(1380,4,4,417,'Passwords does not match','2013-04-05 10:02:23','2013-04-05 10:02:50'),(1381,5,5,417,'Wagwoorde kom nie ooreen nie','2013-04-05 10:02:23','2013-05-25 09:38:52'),(1382,18,13,417,'(new addition)','2013-04-05 10:02:23','2013-04-05 10:02:23'),(1383,4,4,418,'State','2013-04-08 14:49:28','2013-04-08 14:49:39'),(1384,5,5,418,'Status','2013-04-08 14:49:28','2013-05-25 09:38:40'),(1385,18,13,418,'(new addition)','2013-04-08 14:49:28','2013-04-08 14:49:28'),(1386,4,4,419,'Duration','2013-04-08 14:49:51','2013-04-08 14:50:04'),(1387,5,5,419,'Tydsduur','2013-04-08 14:49:51','2013-05-25 09:38:30'),(1388,18,13,419,'(new addition)','2013-04-08 14:49:51','2013-04-08 14:49:51'),(1389,4,4,420,'Started','2013-04-08 14:50:20','2013-04-08 14:50:31'),(1390,5,5,420,'Begin','2013-04-08 14:50:20','2013-05-25 09:38:23'),(1391,18,13,420,'(new addition)','2013-04-08 14:50:20','2013-04-08 14:50:20'),(1392,4,4,421,'Ended','2013-04-08 14:50:43','2013-04-08 15:40:30'),(1393,5,5,421,'Be-eindig','2013-04-08 14:50:43','2013-05-25 09:38:11'),(1394,18,13,421,'(new addition)','2013-04-08 14:50:43','2013-04-08 14:50:43'),(1395,4,4,422,'Current logo','2013-04-09 13:18:28','2013-04-09 13:18:52'),(1396,5,5,422,'Huidige logo','2013-04-09 13:18:28','2013-05-25 09:37:56'),(1397,18,13,422,'(new addition)','2013-04-09 13:18:28','2013-04-09 13:18:28'),(1398,4,4,423,'Select an image','2013-04-09 13:20:01','2013-04-09 13:20:23'),(1399,5,5,423,'Kies \'n prentjie','2013-04-09 13:20:01','2013-05-25 09:37:49'),(1400,18,13,423,'(new addition)','2013-04-09 13:20:01','2013-04-09 13:20:01'),(1401,4,4,424,'New logo','2013-04-09 13:23:24','2013-04-09 13:23:46'),(1402,5,5,424,'Nuwe logo','2013-04-09 13:23:24','2013-05-25 09:37:32'),(1403,18,13,424,'(new addition)','2013-04-09 13:23:24','2013-04-09 13:23:24'),(1404,4,4,425,'Logfile viewer','2013-05-09 09:08:14','2013-05-09 09:08:29'),(1405,5,5,425,'LoglÃªer besigtiger','2013-05-09 09:08:14','2013-05-25 09:37:24'),(1406,18,13,425,'(new addition)','2013-05-09 09:08:14','2013-05-09 09:08:14'),(1407,4,4,426,'Debug output','2013-05-09 09:09:01','2013-05-09 09:09:47'),(1408,5,5,426,'Ontfout uitset','2013-05-09 09:09:01','2013-05-25 09:37:07'),(1409,18,13,426,'(new addition)','2013-05-09 09:09:01','2013-05-09 09:09:01'),(1410,4,4,427,'Clear screen','2013-05-09 14:00:32','2013-05-09 14:00:44'),(1411,5,5,427,'Maak skerm skoon','2013-05-09 14:00:32','2013-05-25 09:36:56'),(1412,18,13,427,'(new addition)','2013-05-09 14:00:32','2013-05-09 14:00:32'),(1413,4,4,428,'Stop FreeRADIUS','2013-05-09 14:01:20','2013-05-09 14:01:35'),(1414,5,5,428,'Stop FreeRADIUS','2013-05-09 14:01:20','2013-05-25 09:36:45'),(1415,18,13,428,'(new addition)','2013-05-09 14:01:20','2013-05-09 14:01:20'),(1416,4,4,429,'Start FreeRADIUS','2013-05-09 14:02:04','2013-05-09 14:02:15'),(1417,5,5,429,'Begin FreeRADIUS','2013-05-09 14:02:04','2013-05-25 09:36:33'),(1418,18,13,429,'(new addition)','2013-05-09 14:02:04','2013-05-09 14:02:04'),(1419,4,4,430,' Start / Stop FreeRADIUS','2013-05-09 14:02:35','2013-05-09 17:30:29'),(1420,5,5,430,'Begin / Stop FreeRADIUS','2013-05-09 14:02:35','2013-05-25 09:36:24'),(1421,18,13,430,'(new addition)','2013-05-09 14:02:35','2013-05-09 14:02:35'),(1422,4,4,431,'Receiving new logfile data','2013-05-09 14:14:11','2013-05-09 14:14:27'),(1423,5,5,431,'Ontvang tans loglÃªer data','2013-05-09 14:14:11','2013-05-25 09:36:03'),(1424,18,13,431,'(new addition)','2013-05-09 14:14:11','2013-05-09 14:14:11'),(1425,4,4,432,'Awaiting new logfile data','2013-05-09 14:14:50','2013-05-09 14:15:09'),(1426,5,5,432,'Wag vir nuwe data vanaf die loglÃªer','2013-05-09 14:14:50','2013-05-25 09:35:46'),(1427,18,13,432,'(new addition)','2013-05-09 14:14:50','2013-05-09 14:14:50'),(1428,4,4,433,'Add debug time','2013-05-13 09:40:38','2013-05-13 13:12:07'),(1429,5,5,433,'Nog tyd om the ontfout','2013-05-13 09:40:38','2013-05-25 09:34:19'),(1430,18,13,433,'(new addition)','2013-05-13 09:40:38','2013-05-13 09:40:38'),(1431,4,4,434,'Start debug','2013-05-13 09:41:21','2013-05-13 09:41:34'),(1432,5,5,434,'Begin ontfout','2013-05-13 09:41:21','2013-05-25 09:34:05'),(1433,18,13,434,'(new addition)','2013-05-13 09:41:21','2013-05-13 09:41:21'),(1434,4,4,435,'Stop debug','2013-05-13 09:41:48','2013-05-13 09:41:58'),(1435,5,5,435,'Stop ontfout','2013-05-13 09:41:48','2013-05-25 09:33:57'),(1436,18,13,435,'(new addition)','2013-05-13 09:41:48','2013-05-13 09:41:48'),(1437,4,4,436,'Filters','2013-05-13 09:42:25','2013-05-13 09:42:38'),(1438,5,5,436,'Filtreer','2013-05-13 09:42:25','2013-05-25 09:33:05'),(1439,18,13,436,'(new addition)','2013-05-13 09:42:25','2013-05-13 09:42:25'),(1440,4,4,437,'Any NAS device','2013-05-13 14:24:19','2013-05-13 14:24:36'),(1441,5,5,437,'Enige NAS-toestel','2013-05-13 14:24:19','2013-05-25 09:32:47'),(1442,18,13,437,'(new addition)','2013-05-13 14:24:19','2013-05-13 14:24:19'),(1443,4,4,438,'Any user','2013-05-13 14:35:25','2013-05-13 14:35:41'),(1444,5,5,438,'Enige gebruiker','2013-05-13 14:35:25','2013-05-25 09:32:37'),(1445,18,13,438,'(new addition)','2013-05-13 14:35:25','2013-05-13 14:35:25'),(1446,4,4,439,'RADIUS client','2013-05-14 09:50:29','2013-05-14 09:50:47'),(1447,5,5,439,'RADIUS-klient','2013-05-14 09:50:29','2013-05-25 09:32:22'),(1448,18,13,439,'(new addition)','2013-05-14 09:50:29','2013-05-14 09:50:29'),(1449,4,4,440,'Authentication','2013-05-14 11:17:21','2013-05-14 11:17:38'),(1450,5,5,440,'Geldigvasstelling','2013-05-14 11:17:21','2013-05-25 09:32:12'),(1451,18,13,440,'(new addition)','2013-05-14 11:17:21','2013-05-14 11:17:21'),(1452,4,4,441,'Accounting','2013-05-14 11:18:01','2013-05-14 11:18:12'),(1453,5,5,441,'Verbruik','2013-05-14 11:18:01','2013-05-25 10:54:33'),(1454,18,13,441,'(new addition)','2013-05-14 11:18:01','2013-05-14 11:18:01'),(1455,4,4,442,'Permanent user','2013-05-14 13:12:00','2013-05-14 13:12:17'),(1456,5,5,442,'Permanente gebruiker','2013-05-14 13:12:00','2013-05-25 09:31:44'),(1457,18,13,442,'(new addition)','2013-05-14 13:12:00','2013-05-14 13:12:00'),(1458,4,4,443,'Device','2013-05-14 13:12:27','2013-05-14 13:12:36'),(1459,5,5,443,'Toestel','2013-05-14 13:12:27','2013-05-25 09:31:28'),(1460,18,13,443,'(new addition)','2013-05-14 13:12:27','2013-05-14 13:12:27'),(1461,4,4,444,'Request type','2013-05-14 13:32:58','2013-05-14 13:33:18'),(1462,5,5,444,'Versoek tipe','2013-05-14 13:32:58','2013-05-25 09:31:20'),(1463,18,13,444,'(new addition)','2013-05-14 13:32:58','2013-05-14 13:32:58'),(1464,4,4,445,'Dynamic login pages','2013-05-16 06:03:01','2013-05-16 06:03:18'),(1465,5,5,445,'Dinamiese aantekenblaaie','2013-05-16 06:03:01','2013-05-25 09:31:11'),(1466,18,13,445,'(new addition)','2013-05-16 06:03:01','2013-05-16 06:03:01'),(1467,4,4,446,'Add dynamic page','2013-05-18 06:07:59','2013-05-18 06:08:15'),(1468,5,5,446,'Voeg dinamiese blaai by','2013-05-18 06:07:59','2013-05-25 09:30:56'),(1469,18,13,446,'(new addition)','2013-05-18 06:07:59','2013-05-18 06:07:59'),(1470,4,4,447,'Select an owner for the login page','2013-05-18 06:09:02','2013-05-18 06:09:25'),(1471,5,5,447,'Kies \'n eienaar vir die aanteken blaai','2013-05-18 06:09:02','2013-05-25 09:30:42'),(1472,18,13,447,'(new addition)','2013-05-18 06:09:02','2013-05-18 06:09:02'),(1473,4,4,448,'Photos','2013-05-18 06:50:34','2013-05-18 07:09:26'),(1474,5,5,448,'Foto\'s','2013-05-18 06:50:34','2013-05-25 09:30:19'),(1475,18,13,448,'(new addition)','2013-05-18 06:50:34','2013-05-18 06:50:34'),(1476,4,4,449,'Add photo','2013-05-18 16:26:03','2013-05-18 16:26:18'),(1477,5,5,449,'Voeg foto by','2013-05-18 16:26:03','2013-05-25 09:30:12'),(1478,18,13,449,'(new addition)','2013-05-18 16:26:03','2013-05-18 16:26:03'),(1479,4,4,450,'Title','2013-05-18 16:26:32','2013-05-18 16:26:43'),(1480,5,5,450,'Titel','2013-05-18 16:26:32','2013-05-25 09:29:58'),(1481,18,13,450,'(new addition)','2013-05-18 16:26:32','2013-05-18 16:26:32'),(1482,4,4,451,'Photo','2013-05-18 16:27:00','2013-05-18 16:27:12'),(1483,5,5,451,'Foto','2013-05-18 16:27:00','2013-05-25 09:29:51'),(1484,18,13,451,'(new addition)','2013-05-18 16:27:00','2013-05-18 16:27:00'),(1485,4,4,452,'Edit photo','2013-05-19 15:01:12','2013-05-19 15:01:28'),(1486,5,5,452,'Redigeer foto','2013-05-19 15:01:12','2013-05-25 09:29:43'),(1487,18,13,452,'(new addition)','2013-05-19 15:01:12','2013-05-19 15:01:12'),(1488,4,4,453,'Optional photo','2013-05-19 15:17:43','2013-05-19 15:18:00'),(1489,5,5,453,'Opsionele foto','2013-05-19 15:17:43','2013-05-25 09:29:28'),(1490,18,13,453,'(new addition)','2013-05-19 15:17:43','2013-05-19 15:17:43'),(1491,4,4,454,'Own pages','2013-05-19 20:55:24','2013-05-19 20:55:40'),(1492,5,5,454,'Eie blaaie','2013-05-19 20:55:24','2013-05-25 09:29:15'),(1493,18,13,454,'(new addition)','2013-05-19 20:55:24','2013-05-19 20:55:24'),(1494,4,4,455,'Dynamic keys','2013-05-19 20:56:00','2013-05-19 20:56:12'),(1495,5,5,455,'Dinamiese sleutels','2013-05-19 20:56:00','2013-05-25 09:29:04'),(1496,18,13,455,'(new addition)','2013-05-19 20:56:00','2013-05-19 20:56:00'),(1497,4,4,456,'Content','2013-05-19 22:32:18','2013-05-19 22:32:33'),(1498,5,5,456,'Inhoud','2013-05-19 22:32:18','2013-05-25 09:28:47'),(1499,18,13,456,'(new addition)','2013-05-19 22:32:18','2013-05-19 22:32:18'),(1500,4,4,457,'Edit dynamic pair','2013-05-20 10:03:59','2013-05-20 10:04:19'),(1501,5,5,457,'Wysig dinamiesie paar','2013-05-20 10:03:59','2013-05-25 09:28:38'),(1502,18,13,457,'(new addition)','2013-05-20 10:03:59','2013-05-20 10:03:59'),(1503,4,4,458,'Edit own page','2013-05-20 10:04:44','2013-05-20 10:04:59'),(1504,5,5,458,'Wysig jou eie blaai','2013-05-20 10:04:44','2013-05-25 09:28:17'),(1505,18,13,458,'(new addition)','2013-05-20 10:04:44','2013-05-20 10:04:44'),(1506,4,4,459,'Add dynamic pair','2013-05-20 10:05:29','2013-05-20 10:05:41'),(1507,5,5,459,'Voeg \'n dinamiese paar by','2013-05-20 10:05:29','2013-05-25 09:28:05'),(1508,18,13,459,'(new addition)','2013-05-20 10:05:29','2013-05-20 10:05:29'),(1509,4,4,460,'Add own page','2013-05-20 10:05:58','2013-05-20 10:06:11'),(1510,5,5,460,'Voeg jou eie blaai by','2013-05-20 10:05:58','2013-05-25 09:27:48'),(1511,18,13,460,'(new addition)','2013-05-20 10:05:58','2013-05-20 10:05:58'),(1512,4,4,461,'No images available','2013-05-23 10:54:03','2013-05-23 10:54:25'),(1513,5,5,461,'Geen foto\'s beskibaar nie','2013-05-23 10:54:03','2013-05-25 09:27:37'),(1514,18,13,461,'(new addition)','2013-05-23 10:54:03','2013-05-23 10:54:03'),(1515,4,4,462,'Updated item','2013-05-26 19:15:58','2013-05-26 19:17:32'),(1516,5,5,462,'(new addition)','2013-05-26 19:15:58','2013-05-26 19:15:58'),(1517,18,13,462,'(new addition)','2013-05-26 19:15:58','2013-05-26 19:15:58'),(1518,4,4,463,'Item has been updated','2013-05-26 19:16:19','2013-05-26 19:17:44'),(1519,5,5,463,'(new addition)','2013-05-26 19:16:19','2013-05-26 19:16:19'),(1520,18,13,463,'(new addition)','2013-05-26 19:16:19','2013-05-26 19:16:19'),(1521,4,4,464,'Problems updating item','2013-05-26 19:16:49','2013-05-26 19:17:53'),(1522,5,5,464,'(new addition)','2013-05-26 19:16:49','2013-05-26 19:16:49'),(1523,18,13,464,'(new addition)','2013-05-26 19:16:49','2013-05-26 19:16:49'),(1524,4,4,465,'Item could not be updated','2013-05-26 19:17:05','2013-05-26 19:18:09'),(1525,5,5,465,'(new addition)','2013-05-26 19:17:05','2013-05-26 19:17:05'),(1526,18,13,465,'(new addition)','2013-05-26 19:17:05','2013-05-26 19:17:05'),(1527,4,4,466,'A Modern Webtop front-end to FreeRADIUS','2013-05-29 09:30:06','2013-05-29 09:30:30'),(1528,5,5,466,'(new addition)','2013-05-29 09:30:06','2013-05-29 09:30:06'),(1529,18,13,466,'(new addition)','2013-05-29 09:30:06','2013-05-29 09:30:06'),(1530,4,4,467,'About RADIUSdesk','2013-05-29 09:31:06','2013-05-29 09:31:20'),(1531,5,5,467,'(new addition)','2013-05-29 09:31:06','2013-05-29 09:31:06'),(1532,18,13,467,'(new addition)','2013-05-29 09:31:06','2013-05-29 09:31:06'),(1533,4,4,468,'NAS-Identifier','2013-07-01 06:12:43','2013-07-01 06:13:00'),(1534,5,5,468,'(new addition)','2013-07-01 06:12:43','2013-07-01 06:12:43'),(1535,18,13,468,'(new addition)','2013-07-01 06:12:43','2013-07-01 06:12:43'),(1536,4,4,469,'Command','2013-07-02 19:00:39','2013-07-02 19:01:18'),(1537,5,5,469,'(new addition)','2013-07-02 19:00:39','2013-07-02 19:00:39'),(1538,18,13,469,'(new addition)','2013-07-02 19:00:39','2013-07-02 19:00:39'),(1539,4,4,470,'Created','2013-07-02 19:00:51','2013-07-02 19:01:25'),(1540,5,5,470,'(new addition)','2013-07-02 19:00:51','2013-07-02 19:00:51'),(1541,18,13,470,'(new addition)','2013-07-02 19:00:51','2013-07-02 19:00:51'),(1542,4,4,471,'Modified','2013-07-02 19:01:02','2013-07-02 19:01:39'),(1543,5,5,471,'(new addition)','2013-07-02 19:01:02','2013-07-02 19:01:02'),(1544,18,13,471,'(new addition)','2013-07-02 19:01:02','2013-07-02 19:01:02'),(1545,4,4,472,'Add a command','2013-07-02 19:02:08','2013-07-02 19:02:20'),(1546,5,5,472,'(new addition)','2013-07-02 19:02:08','2013-07-02 19:02:08'),(1547,18,13,472,'(new addition)','2013-07-02 19:02:08','2013-07-02 19:02:08'),(1548,4,4,473,'Awaiting','2013-07-02 20:12:33','2013-07-02 20:13:14'),(1549,5,5,473,'(new addition)','2013-07-02 20:12:33','2013-07-02 20:12:33'),(1550,18,13,473,'(new addition)','2013-07-02 20:12:33','2013-07-02 20:12:33'),(1551,4,4,474,'Fetched','2013-07-02 20:12:45','2013-07-02 20:13:20'),(1552,5,5,474,'(new addition)','2013-07-02 20:12:45','2013-07-02 20:12:45'),(1553,18,13,474,'(new addition)','2013-07-02 20:12:45','2013-07-02 20:12:45'),(1554,4,4,475,'New voucher','2013-07-05 05:00:12','2013-07-05 05:01:55'),(1555,5,5,475,'(new addition)','2013-07-05 05:00:12','2013-07-05 05:00:12'),(1556,18,13,475,'(new addition)','2013-07-05 05:00:12','2013-07-05 05:00:12'),(1557,4,4,476,'Precede string','2013-07-05 05:00:36','2013-07-05 05:01:45'),(1558,5,5,476,'(new addition)','2013-07-05 05:00:36','2013-07-05 05:00:36'),(1559,18,13,476,'(new addition)','2013-07-05 05:00:36','2013-07-05 05:00:36'),(1560,4,4,477,'How many?','2013-07-05 05:00:52','2013-07-05 05:01:36'),(1561,5,5,477,'(new addition)','2013-07-05 05:00:52','2013-07-05 05:00:52'),(1562,18,13,477,'(new addition)','2013-07-05 05:00:52','2013-07-05 05:00:52'),(1563,4,4,478,'Batch name','2013-07-05 05:01:06','2013-07-05 05:01:28'),(1564,5,5,478,'(new addition)','2013-07-05 05:01:06','2013-07-05 05:01:06'),(1565,18,13,478,'(new addition)','2013-07-05 05:01:06','2013-07-05 05:01:06'),(1566,4,4,479,'Activate upon first login','2013-07-05 05:16:51','2013-07-05 09:51:08'),(1567,5,5,479,'(new addition)','2013-07-05 05:16:51','2013-07-05 05:16:51'),(1568,18,13,479,'(new addition)','2013-07-05 05:16:51','2013-07-05 05:16:51'),(1569,4,4,480,'Days available after first login','2013-07-05 09:51:34','2013-07-05 09:51:52'),(1570,5,5,480,'(new addition)','2013-07-05 09:51:34','2013-07-05 09:51:34'),(1571,18,13,480,'(new addition)','2013-07-05 09:51:34','2013-07-05 09:51:34'),(1572,4,4,481,'Never expire','2013-07-05 09:52:12','2013-07-05 09:52:26'),(1573,5,5,481,'(new addition)','2013-07-05 09:52:12','2013-07-05 09:52:12'),(1574,18,13,481,'(new addition)','2013-07-05 09:52:12','2013-07-05 09:52:12'),(1575,4,4,482,'Expire','2013-07-05 09:52:42','2013-07-05 11:07:24'),(1576,5,5,482,'(new addition)','2013-07-05 09:52:42','2013-07-05 09:52:42'),(1577,18,13,482,'(new addition)','2013-07-05 09:52:42','2013-07-05 09:52:42'),(1578,4,4,483,'Password length','2013-07-05 14:15:03','2013-07-05 14:15:39'),(1579,5,5,483,'(new addition)','2013-07-05 14:15:03','2013-07-05 14:15:03'),(1580,18,13,483,'(new addition)','2013-07-05 14:15:03','2013-07-05 14:15:03'),(1581,4,4,484,'Batch','2013-07-05 20:39:53','2013-07-05 20:40:13'),(1582,5,5,484,'(new addition)','2013-07-05 20:39:53','2013-07-05 20:39:53'),(1583,18,13,484,'(new addition)','2013-07-05 20:39:53','2013-07-05 20:39:53'),(1584,4,4,485,'New','2013-07-06 13:10:59','2013-07-06 13:12:01'),(1585,5,5,485,'(new addition)','2013-07-06 13:10:59','2013-07-06 13:10:59'),(1586,18,13,485,'(new addition)','2013-07-06 13:10:59','2013-07-06 13:10:59'),(1587,4,4,486,'Used','2013-07-06 13:11:16','2013-07-06 13:12:43'),(1588,5,5,486,'(new addition)','2013-07-06 13:11:16','2013-07-06 13:11:16'),(1589,18,13,486,'(new addition)','2013-07-06 13:11:16','2013-07-06 13:11:16'),(1590,4,4,487,'Depleted','2013-07-06 13:11:28','2013-07-06 13:12:38'),(1591,5,5,487,'(new addition)','2013-07-06 13:11:28','2013-07-06 13:11:28'),(1592,18,13,487,'(new addition)','2013-07-06 13:11:28','2013-07-06 13:11:28'),(1593,4,4,488,'Expired','2013-07-06 13:11:40','2013-07-06 13:12:33'),(1594,5,5,488,'(new addition)','2013-07-06 13:11:40','2013-07-06 13:11:40'),(1595,18,13,488,'(new addition)','2013-07-06 13:11:40','2013-07-06 13:11:40'),(1596,4,4,489,'(Single voucher)','2013-07-06 13:13:32','2013-07-06 13:13:48'),(1597,5,5,489,'(new addition)','2013-07-06 13:13:32','2013-07-06 13:13:32'),(1598,18,13,489,'(new addition)','2013-07-06 13:13:32','2013-07-06 13:13:32'),(1599,4,4,490,'Time used (%)','2013-07-06 14:46:29','2013-07-06 14:50:03'),(1600,5,5,490,'(new addition)','2013-07-06 14:46:29','2013-07-06 14:46:29'),(1601,18,13,490,'(new addition)','2013-07-06 14:46:29','2013-07-06 14:46:29'),(1602,4,4,491,'Data used (%)','2013-07-06 14:46:41','2013-07-06 14:50:12'),(1603,5,5,491,'(new addition)','2013-07-06 14:46:41','2013-07-06 14:46:41'),(1604,18,13,491,'(new addition)','2013-07-06 14:46:41','2013-07-06 14:46:41'),(1605,4,4,492,'Cap type for data','2013-07-08 09:34:51','2013-08-08 14:32:06'),(1606,5,5,492,'(new addition)','2013-07-08 09:34:51','2013-07-08 09:34:51'),(1607,18,13,492,'(new addition)','2013-07-08 09:34:51','2013-07-08 09:34:51'),(1608,4,4,493,'Cap type for time','2013-07-08 09:35:05','2013-08-08 14:31:59'),(1609,5,5,493,'(new addition)','2013-07-08 09:35:05','2013-07-08 09:35:05'),(1610,18,13,493,'(new addition)','2013-07-08 09:35:05','2013-07-08 09:35:05'),(1611,4,4,494,'Voucher','2013-07-09 22:03:08','2013-07-10 11:05:19'),(1612,5,5,494,'(new addition)','2013-07-09 22:03:08','2013-07-09 22:03:08'),(1613,18,13,494,'(new addition)','2013-07-09 22:03:08','2013-07-09 22:03:08'),(1614,4,4,495,'Output format','2013-08-04 21:16:00','2013-08-04 21:16:17'),(1615,5,5,495,'(new addition)','2013-08-04 21:16:00','2013-08-04 21:16:00'),(1616,18,13,495,'(new addition)','2013-08-04 21:16:00','2013-08-04 21:16:00'),(1617,4,4,496,'Generate PDF','2013-08-04 21:16:43','2013-08-04 21:16:59'),(1618,5,5,496,'(new addition)','2013-08-04 21:16:43','2013-08-04 21:16:43'),(1619,18,13,496,'(new addition)','2013-08-04 21:16:43','2013-08-04 21:16:43'),(1620,4,4,497,'Only selected items','2013-08-04 21:17:40','2013-08-04 21:17:55'),(1621,5,5,497,'(new addition)','2013-08-04 21:17:40','2013-08-04 21:17:40'),(1622,18,13,497,'(new addition)','2013-08-04 21:17:40','2013-08-04 21:17:40'),(1623,4,4,498,'Only Selected','2013-08-04 21:33:01','2013-08-04 21:33:19'),(1624,5,5,498,'(new addition)','2013-08-04 21:33:01','2013-08-04 21:33:01'),(1625,18,13,498,'(new addition)','2013-08-04 21:33:01','2013-08-04 21:33:01'),(1626,4,4,499,'Nothing to export','2013-08-05 09:13:09','2013-08-05 09:13:56'),(1627,5,5,499,'(new addition)','2013-08-05 09:13:09','2013-08-05 09:13:09'),(1628,18,13,499,'(new addition)','2013-08-05 09:13:09','2013-08-05 09:13:09'),(1629,4,4,500,'List is empty','2013-08-05 09:13:26','2013-08-05 09:13:46'),(1630,5,5,500,'(new addition)','2013-08-05 09:13:26','2013-08-05 09:13:26'),(1631,18,13,500,'(new addition)','2013-08-05 09:13:26','2013-08-05 09:13:26'),(1632,4,4,501,'Voucher export to pdf','2013-08-07 14:36:45','2013-08-07 14:37:11'),(1633,5,5,501,'(new addition)','2013-08-07 14:36:45','2013-08-07 14:36:45'),(1634,18,13,501,'(new addition)','2013-08-07 14:36:45','2013-08-07 14:36:45'),(1635,4,4,502,'NAS Identifier','2013-08-24 11:22:41','2013-08-24 11:23:02'),(1636,5,5,502,'(new addition)','2013-08-24 11:22:41','2013-08-24 11:22:41'),(1637,18,13,502,'(new addition)','2013-08-24 11:22:41','2013-08-24 11:22:41'),(1640,19,14,1,'Brazil/Potugal','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1641,19,14,2,'Portugues','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1642,19,14,6,'Username','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1643,19,14,7,'Senha','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1644,19,14,10,'Insira o nome de usuÃ¡rio','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1645,19,14,11,'Digite a senha','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1646,19,14,12,'OK','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1647,19,14,13,'Autenticar por favor','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1648,19,14,14,'Alterando o idioma, por favor, aguarde','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1649,19,14,15,'Novo idioma selecionado','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1650,19,14,16,'Escolha um idioma','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1651,19,14,17,'Sobre','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1652,19,14,18,'Fracasso','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1653,19,14,19,'Recarregar','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1654,19,14,20,'Adicionar','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1655,19,14,21,'Excluir','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1656,19,14,22,'Editar','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1657,19,14,23,'CÃ³pia','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1658,19,14,24,'Editar meta-info','2014-02-11 14:34:30','2014-02-11 14:39:33'),(1659,19,14,25,'Adicionar comentÃ¡rio','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1660,19,14,27,'Principais','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1661,19,14,28,'ComentÃ¡rio','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1662,19,14,29,'Em InglÃªs (use como referÃªncia)','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1663,19,14,30,'Traduzido','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1664,19,14,31,'Javascript Frases','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1665,19,14,32,'Frases PHP','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1666,19,14,34,'HÃ¡ itens {Count}','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1667,19,14,35,'ConexÃ£o','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1668,19,14,36,'AÃ§Ã£o','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1669,19,14,37,'SelecÃ§Ã£o','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1670,19,14,38,'Logout','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1671,19,14,39,'Settings','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1672,19,14,40,'Tile','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1673,19,14,41,'Cascade','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1674,19,14,42,'Restaurar','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1675,19,14,43,'Minimizar','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1676,19,14,44,'Maximizar','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1677,19,14,45,'Fechar','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1678,19,14,46,'Menu','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1679,19,14,47,'No Manager','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1680,19,14,48,'Obtenha Ajuda','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1681,19,14,49,'Translation management','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1682,19,14,50,'Ajuda on-line de traduÃ§Ã£o Manager','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1683,19,14,51,'Selecione um paÃ­s','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1684,19,14,52,'Ã‰ necessÃ¡rio que vocÃª selecione um paÃ­s','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1685,19,14,53,'PaÃ­s adicionado','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1686,19,14,54,'Novo paÃ­s adicionado belas','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1687,19,14,55,'Enviando as informaÃ§Ãµes','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1688,19,14,56,'PaÃ­s','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1689,19,14,57,'Idioma','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1690,19,14,58,'Copiar frases da lÃ­ngua','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1691,19,14,59,'LÃ­ngua do paÃ­s','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1692,19,14,60,'Adicionar chave','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1693,19,14,61,'ForneÃ§a as seguintes informaÃ§Ãµes,','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1694,19,14,62,'Nome Chave','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1695,19,14,63,'Especifique um nome vÃ¡lido para a chave','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1696,19,14,64,'PrÃ³xima','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1697,19,14,65,'Escolher uma chave','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1698,19,14,66,'Eliminar paÃ­s','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1699,19,14,67,'Selecione o paÃ­s para excluir. Certifique-se de que vocÃª sabe exatamente o que estÃ¡ fazendo.','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1700,19,14,68,'Editar PaÃ­ses','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1701,19,14,69,'Selecione um paÃ­s para editar','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1702,19,14,70,'Nome do paÃ­s','2014-02-11 14:34:30','2014-02-11 14:39:34'),(1703,19,14,71,'Especifique um nome vÃ¡lido por favor','2014-02-11 14:34:30','2014-02-11 14:39:35'),(1704,19,14,72,'CÃ³digo ISO','2014-02-11 14:34:30','2014-02-11 14:39:35'),(1705,19,14,73,'Por exemplo ZA ou DE','2014-02-11 14:34:30','2014-02-11 14:39:35'),(1706,19,14,74,'Especifique um cÃ³digo iso do paÃ­s','2014-02-11 14:34:30','2014-02-11 14:39:35'),(1707,19,14,75,'Ãcone da bandeira','2014-02-11 14:34:30','2014-02-11 14:39:35'),(1708,19,14,76,'Selecione o Ã­cone','2014-02-11 14:34:30','2014-02-11 14:39:35'),(1709,19,14,77,'Prevoius','2014-02-11 14:34:30','2014-02-11 14:39:35'),(1710,19,14,78,'Escolha um paÃ­s','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1711,19,14,79,'Adicionar idioma','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1712,19,14,80,'Selecione um paÃ­s existente para acrescentar um idioma.','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1713,19,14,81,'VocÃª tambÃ©m pode optar por criar um novo paÃ­s.','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1714,19,14,82,'Criar um novo paÃ­s','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1715,19,14,84,'Por exemplo pt ou de','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1716,19,14,85,'Especifique um cÃ³digo vÃ¡lido iso idioma','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1717,19,14,86,'Tecla Editar','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1718,19,14,87,'Selecione a chave para editar','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1719,19,14,88,'Escolha um idioma existente para copiar','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1720,19,14,89,'Idiomas disponÃ­veis','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1721,19,14,90,'EliminaÃ§Ã£o do idioma','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1722,19,14,91,'Selecione o idioma que deseja excluir.','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1723,19,14,92,'Certifique-se de que vocÃª sabe exatamente o que estÃ¡ fazendo.','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1724,19,14,93,'Editar Idiomas','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1725,19,14,94,'Selecione um idioma para editar','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1726,19,14,95,'Adicionar Msgid','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1727,19,14,96,'Msgid','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1728,19,14,97,'Msgstr','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1729,19,14,98,'ComentÃ¡rio opcional','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1730,19,14,99,'Remova comentÃ¡rios existentes','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1731,19,14,100,'Adicionar comentÃ¡rio para msgid','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1732,19,14,101,'Copiar de outro idioma','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1733,19,14,102,'Manter as traduÃ§Ãµes existentes','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1734,19,14,103,'Editar Msgid','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1735,19,14,104,'Valor anterior','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1736,19,14,105,'Especificar os Metadados','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1737,19,14,106,'Entrar','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1738,19,14,107,'Fonte','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1739,19,14,108,'Destino','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1740,19,14,109,'Selecione algo','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1741,19,14,110,'Selecione algo para o trabalho na','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1742,19,14,111,'Confirmar','2014-02-11 14:34:31','2014-02-11 14:39:35'),(1743,19,14,112,'VocÃª tem certeza de que quer fazer isso?','2014-02-11 14:34:31','2014-02-11 14:39:36'),(1744,19,14,113,'Item adicionado','2014-02-11 14:34:31','2014-02-11 14:39:36'),(1745,19,14,114,'Novo item acrescentado multa','2014-02-11 14:34:31','2014-02-11 14:39:36'),(1746,19,14,115,'Banco de dados atualizado','2014-02-11 14:34:31','2014-02-11 14:39:36'),(1747,19,14,116,'Banco de dados foi atualizado','2014-02-11 14:34:31','2014-02-11 14:39:36'),(1748,19,14,117,'Selecione apenas um','2014-02-11 14:34:31','2014-02-11 14:39:36'),(1749,19,14,118,'Limitado a uma Ãºnica seleÃ§Ã£o','2014-02-11 14:34:31','2014-02-11 14:39:36'),(1750,19,14,119,'Provedores de Acesso','2014-02-11 14:34:31','2014-02-11 14:39:36'),(1751,19,14,120,'Login do usuÃ¡rio','2014-02-11 14:34:31','2014-02-11 14:39:36'),(1752,19,14,121,'Selecione um proprietÃ¡rio','2014-02-11 14:34:31','2014-02-11 14:39:36'),(1753,19,14,122,'Primeiro, selecione um provedor de acesso que serÃ¡ o dono','2014-02-11 14:34:31','2014-02-11 14:39:36'),(1754,19,14,123,'Novo item criado','2014-02-11 14:34:31','2014-02-11 14:39:36'),(1755,19,14,124,'Item criado belas','2014-02-11 14:34:31','2014-02-11 14:39:36'),(1756,19,14,125,'Selecione um item','2014-02-11 14:34:31','2014-02-11 14:39:36'),(1757,19,14,126,'Primeiro selecione um item','2014-02-11 14:34:31','2014-02-11 14:39:36'),(1758,19,14,127,'Item atualizado','2014-02-11 14:34:31','2014-02-11 14:39:36'),(1759,19,14,128,'Item atualizado multa','2014-02-11 14:34:31','2014-02-11 14:39:36'),(1760,19,14,129,'Item suprimido','2014-02-11 14:34:31','2014-02-11 14:39:37'),(1761,19,14,130,'Item suprimido multa','2014-02-11 14:34:31','2014-02-11 14:39:37'),(1762,19,14,131,'Problemas ao excluir item','2014-02-11 14:34:31','2014-02-11 14:39:37'),(1763,19,14,132,'Selecione o nÃ³','2014-02-11 14:34:31','2014-02-11 14:39:37'),(1764,19,14,133,'Primeiro, selecione o nÃ³ para ampliar','2014-02-11 14:34:31','2014-02-11 14:39:37'),(1765,19,14,134,'Direito mudou','2014-02-11 14:34:31','2014-02-11 14:39:37'),(1766,19,14,136,'Problemas mudando direito','2014-02-11 14:34:31','2014-02-11 14:39:37'),(1767,19,14,137,'Houve alguns problemas que surgiram durante a alteraÃ§Ã£o do direito','2014-02-11 14:34:31','2014-02-11 14:39:37'),(1768,19,14,138,'Selecione um ou mais','2014-02-11 14:34:31','2014-02-11 14:39:37'),(1769,19,14,139,'Selecione uma ou mais colunas por favor','2014-02-11 14:34:31','2014-02-11 14:39:37'),(1770,19,14,140,'Limitar a selecÃ§Ã£o','2014-02-11 14:34:31','2014-02-11 14:39:37'),(1771,19,14,141,'Gerente Direitos','2014-02-11 14:34:31','2014-02-11 14:39:37'),(1772,19,14,142,'Rights Management','2014-02-11 14:34:31','2014-02-11 14:39:37'),(1773,19,14,143,'Comando Ã  DistÃ¢ncia Acesso Objetos','2014-02-11 14:34:31','2014-02-11 14:39:37'),(1774,19,14,144,'Direitos provedor de acesso','2014-02-11 14:34:31','2014-02-11 14:39:37'),(1775,19,14,145,'Direitos de UsuÃ¡rio Permanente','2014-02-11 14:34:31','2014-02-11 14:39:38'),(1776,19,14,146,'Primeiro selecionar um nÃ³ da Ã¡rvore sob a qual a adicionar uma ACO entrada','2014-02-11 14:34:31','2014-02-11 14:39:38'),(1777,19,14,147,'NÃ³ raiz selecionado','2014-02-11 14:34:31','2014-02-11 14:39:38'),(1778,19,14,148,'VocÃª nÃ£o pode editar o nÃ³ raiz','2014-02-11 14:34:31','2014-02-11 14:39:38'),(1779,19,14,149,'Erro encontrado','2014-02-11 14:34:31','2014-02-11 14:39:38'),(1780,19,14,150,'Expandir','2014-02-11 14:34:31','2014-02-11 14:39:38'),(1781,19,14,151,'Nome','2014-02-11 14:34:31','2014-02-11 14:39:38'),(1782,19,14,152,'Acessar objetos de controle (acos)','2014-02-11 14:34:31','2014-02-11 14:39:38'),(1783,19,14,153,'Permitir','2014-02-11 14:34:31','2014-02-11 14:39:38'),(1784,19,14,154,'Adicionar ACO objeto','2014-02-11 14:34:31','2014-02-11 14:39:38'),(1785,19,14,155,'NÃ³ pai','2014-02-11 14:34:31','2014-02-11 14:39:38'),(1786,19,14,156,'Alias','2014-02-11 14:34:31','2014-02-11 14:39:38'),(1787,19,14,157,'DescriÃ§Ã£o opcional','2014-02-11 14:34:31','2014-02-11 14:39:38'),(1788,19,14,158,'Salvar','2014-02-11 14:34:31','2014-02-11 14:39:38'),(1789,19,14,159,'Editar ACO objeto','2014-02-11 14:34:31','2014-02-11 14:39:38'),(1790,19,14,160,'Insira um valor','2014-02-11 14:34:31','2014-02-11 14:39:39'),(1791,19,14,161,'Provedor de acesso padrÃ£o Direitos','2014-02-11 14:34:31','2014-02-11 14:39:39'),(1792,19,14,162,'Problemas ao atualizar a base de dados','2014-02-11 14:34:31','2014-02-11 14:39:39'),(1793,19,14,163,'Banco de dados nÃ£o pÃ´de ser atualizado','2014-02-11 14:34:31','2014-02-11 14:39:39'),(1794,19,14,164,'Registre todos os incubaÃ¯','2014-02-11 14:34:31','2014-02-11 14:39:39'),(1795,19,14,165,'Dono','2014-02-11 14:34:31','2014-02-11 14:39:39'),(1796,19,14,166,'Ativar','2014-02-11 14:34:31','2014-02-11 14:39:39'),(1797,19,14,167,'InformaÃ§Ãµes opcionais','2014-02-11 14:34:31','2014-02-11 14:39:39'),(1798,19,14,168,'Apelido','2014-02-11 14:34:31','2014-02-11 14:39:39'),(1799,19,14,169,'Telefone','2014-02-11 14:34:31','2014-02-11 14:39:39'),(1800,19,14,170,'E-mail','2014-02-11 14:34:31','2014-02-11 14:39:39'),(1801,19,14,171,'EndereÃ§o','2014-02-11 14:34:31','2014-02-11 14:39:39'),(1802,19,14,172,'Monitor','2014-02-11 14:34:31','2014-02-11 14:39:39'),(1803,19,14,173,'Sim','2014-02-11 14:34:31','2014-02-11 14:39:39'),(1804,19,14,174,'N','2014-02-11 14:34:31','2014-02-11 14:39:39'),(1805,19,14,175,'As notas','2014-02-11 14:34:31','2014-02-11 14:39:40'),(1806,19,14,176,'Ativo','2014-02-11 14:34:31','2014-02-11 14:39:40'),(1807,19,14,177,'Notas','2014-02-11 14:34:31','2014-02-11 14:39:40'),(1808,19,14,178,'Criar','2014-02-11 14:34:31','2014-02-11 14:39:40'),(1809,19,14,179,'Realm','2014-02-11 14:34:31','2014-02-11 14:39:40'),(1810,19,14,180,'Leia','2014-02-11 14:34:31','2014-02-11 14:39:40'),(1811,19,14,181,'Update','2014-02-11 14:34:31','2014-02-11 14:39:40'),(1812,19,14,182,'Direito atualizado','2014-02-11 14:34:31','2014-02-11 14:39:40'),(1813,19,14,183,'Direito tem sido atualizado','2014-02-11 14:34:31','2014-02-11 14:39:40'),(1814,19,14,184,'Problemas de atualizaÃ§Ã£o do direito','2014-02-11 14:34:31','2014-02-11 14:39:40'),(1815,19,14,185,'Direito nÃ£o poderia ser atualizado','2014-02-11 14:34:31','2014-02-11 14:39:40'),(1816,19,14,186,'Direitos','2014-02-11 14:34:31','2014-02-11 14:39:40'),(1817,19,14,187,'Atividade','2014-02-11 14:34:31','2014-02-11 14:39:40'),(1818,19,14,188,'Reinos','2014-02-11 14:34:31','2014-02-11 14:39:40'),(1819,19,14,189,'Detalhes','2014-02-11 14:34:31','2014-02-11 14:39:41'),(1820,19,14,190,'Provedor de acesso hierarquia','2014-02-11 14:34:31','2014-02-11 14:39:41'),(1821,19,14,191,'Novo provedor de acesso','2014-02-11 14:34:31','2014-02-11 14:39:41'),(1822,19,14,192,'Selecione o fornecedor de acesso dos pais','2014-02-11 14:34:31','2014-02-11 14:39:41'),(1823,19,14,193,'Gerenciador de Dispositivos NAS','2014-02-11 14:34:31','2014-02-11 14:39:41'),(1824,19,14,194,'Dispositivos NAS','2014-02-11 14:34:31','2014-02-11 14:39:41'),(1825,19,14,195,'Selecione pelo menos um territÃ³rio','2014-02-11 14:34:31','2014-02-11 14:39:41'),(1826,19,14,196,'Selecione um ou mais domÃ­nios','2014-02-11 14:34:31','2014-02-11 14:39:41'),(1827,19,14,197,'Primeiro, selecione um item para a tag','2014-02-11 14:34:31','2014-02-11 14:39:41'),(1828,19,14,198,'Selecione uma tag','2014-02-11 14:34:31','2014-02-11 14:39:41'),(1829,19,14,199,'Selecione uma tag por favor','2014-02-11 14:34:31','2014-02-11 14:39:41'),(1830,19,14,200,'Tags modificado','2014-02-11 14:34:31','2014-02-11 14:39:41'),(1831,19,14,201,'Tags fina modificados','2014-02-11 14:34:31','2014-02-11 14:39:41'),(1832,19,14,202,'Off','2014-02-11 14:34:31','2014-02-11 14:39:41'),(1833,19,14,203,'Ping','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1834,19,14,204,'Heartbeat','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1835,19,14,205,'MÃ©todo Monitor','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1836,19,14,206,'NecessÃ¡rio info','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1837,19,14,207,'EndereÃ§o IP','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1838,19,14,208,'Fornecer um valor','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1839,19,14,209,'Secret','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1840,19,14,210,'Tipo','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1841,19,14,211,'As portas','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1842,19,14,212,'Comunidade','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1843,19,14,213,'Server','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1844,19,14,214,'DescriÃ§Ã£o','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1845,19,14,215,'As definiÃ§Ãµes do Monitor','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1846,19,14,216,'PulsaÃ§Ã£o Ã© morto apÃ³s','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1847,19,14,217,'Heartbeat ID','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1848,19,14,218,'Intervalo de Ping','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1849,19,14,219,'Longitude','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1850,19,14,220,'Latitude','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1851,19,14,221,'Visor de mapas pÃºblicos','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1852,19,14,222,'Registrar pedidos de autenticaÃ§Ã£o','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1853,19,14,223,'As sessÃµes inativas fechamento automÃ¡tico','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1854,19,14,224,'Tempo de activaÃ§Ã£o automÃ¡tica fechar','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1855,19,14,225,'DisponÃ­vel para a sub-fornecedores','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1856,19,14,226,'Tipo de ConexÃ£o','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1857,19,14,227,'Tornar disponÃ­vel para a sub-fornecedores','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1858,19,14,228,'Tornar disponÃ­vel para qualquer domÃ­nio','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1859,19,14,229,'Adicionar dispositivo NAS.','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1860,19,14,230,'Selecione o dispositivo proprietÃ¡rio','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1861,19,14,231,'Escolha o tipo de conexÃ£o','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1862,19,14,232,'As credenciais para tÃºnel OpenVPN','2014-02-11 14:34:32','2014-02-11 14:39:41'),(1863,19,14,233,'AVP COM combinaÃ§Ã£o Ãºnica','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1864,19,14,234,'Atributo','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1865,19,14,235,'Valor','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1866,19,14,236,'Valor para identificar o NAS com','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1867,19,14,237,'A seguir AlimentaÃ§Ã£o','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1868,19,14,238,'LigaÃ§Ã£o','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1869,19,14,239,'Adicionar ou remover tags','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1870,19,14,240,'Selecione uma aÃ§Ã£o e uma etiqueta','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1871,19,14,241,'Aprimoramentos','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1872,19,14,242,'Mapas info','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1873,19,14,243,'Nota','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1874,19,14,244,'Exportar CSV','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1875,19,14,245,'Selecione as colunas que deseja incluir na lista CSV','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1876,19,14,246,'As colunas','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1877,19,14,247,'Ajuda on-line','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1878,19,14,248,'Nota management','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1879,19,14,249,'Adicionar nota','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1880,19,14,251,'Selecione o proprietÃ¡rio','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1881,19,14,252,'Tags','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1882,19,14,253,'Tag','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1883,19,14,254,'DomÃ­nio manager','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1884,19,14,255,'Em primeiro lugar selecione um item para excluir','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1885,19,14,256,'Detalhes do Contato','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1886,19,14,257,'Fax','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1887,19,14,258,'URL','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1888,19,14,259,'NÃºmero de Rua','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1889,19,14,260,'Street','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1890,19,14,261,'Cidade / Bairro','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1891,19,14,262,'Cidade','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1892,19,14,263,'LocalizaÃ§Ã£o','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1893,19,14,264,'Cell','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1894,19,14,265,'Logotipo','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1895,19,14,266,'Adicionar TerritÃ³rio','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1896,19,14,267,'Selecione um proprietÃ¡rio para o realm','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1897,19,14,268,'Tags manager','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1898,19,14,269,'Tags dispositivo NAS.','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1899,19,14,270,'Nova marca para dispositivos NAS','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1900,19,14,271,'Selecione a tag proprietÃ¡rio','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1901,19,14,272,'TambÃ©m mostrar a sub fornecedores','2014-02-11 14:34:32','2014-02-11 14:39:42'),(1902,19,14,273,'Editar tag para dispositivo NAS.','2014-02-11 14:34:33','2014-02-11 14:39:42'),(1903,19,14,274,'Gerenciador de componentes Perfil','2014-02-11 14:34:33','2014-02-11 14:39:42'),(1904,19,14,275,'Novos componentes do perfil','2014-02-11 14:34:33','2014-02-11 14:39:42'),(1905,19,14,276,'Selecione o componente proprietÃ¡rio','2014-02-11 14:34:33','2014-02-11 14:39:42'),(1906,19,14,277,'Os Ã³rgÃ£os','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1907,19,14,278,'Fornecedor','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1908,19,14,279,'Verificar atributo count','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1909,19,14,280,'Responder atributo count','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1910,19,14,281,'Nome do Atributo','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1911,19,14,282,'Substitua esse valor','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1912,19,14,283,'As Unidades','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1913,19,14,284,'Verificar','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1914,19,14,285,'Responder','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1915,19,14,286,'Profiles manager','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1916,19,14,287,'Perfis','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1917,19,14,288,'Operador','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1918,19,14,289,'Selecione um fornecedor','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1919,19,14,290,'Selecione um atributo','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1920,19,14,291,'Retire','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1921,19,14,292,'Adicionar ou remover componentes','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1922,19,14,293,'Editar perfil','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1923,19,14,294,'Selecione uma aÃ§Ã£o','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1924,19,14,295,'Componentes do Perfil','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1925,19,14,296,'Prioridade','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1926,19,14,297,'Perfis modificados','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1927,19,14,298,'Profiles_modified_fine','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1928,19,14,299,'Componentes do Perfil','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1929,19,14,300,'Adicionar componente','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1930,19,14,301,'Remova o componente','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1931,19,14,302,'Tornar privado','2014-02-11 14:34:33','2014-02-11 14:39:43'),(1932,19,14,303,'Selecione um componente para adicionar ou remover','2014-02-11 14:34:33','2014-02-11 14:39:44'),(1933,19,14,304,'Utilizadores permanentes','2014-02-11 14:34:33','2014-02-11 14:39:44'),(1934,19,14,305,'Novo usuÃ¡rio permanente','2014-02-11 14:34:33','2014-02-11 14:39:44'),(1935,19,14,306,'InformaÃ§Ãµes BÃ¡sicas','2014-02-11 14:34:33','2014-02-11 14:39:44'),(1936,19,14,307,'Perfil','2014-02-11 14:34:33','2014-02-11 14:39:44'),(1937,19,14,308,'Tipo Tampa','2014-02-11 14:34:33','2014-02-11 14:39:44'),(1938,19,14,309,'InformaÃ§Ãµes Pessoais','2014-02-11 14:34:33','2014-02-11 14:39:44'),(1939,19,14,310,'Ativar e expirar','2014-02-11 14:34:33','2014-02-11 14:39:44'),(1940,19,14,311,'Sempre ativo','2014-02-11 14:34:33','2014-02-11 14:39:44'),(1941,19,14,312,'De','2014-02-11 14:34:33','2014-02-11 14:39:44'),(1942,19,14,313,'A','2014-02-11 14:34:33','2014-02-11 14:39:44'),(1943,19,14,314,'Tracking','2014-02-11 14:34:33','2014-02-11 14:39:44'),(1944,19,14,315,'AutenticaÃ§Ã£o RADIUS','2014-02-11 14:34:33','2014-02-11 14:39:44'),(1945,19,14,316,'Contabilidade RADIUS','2014-02-11 14:34:33','2014-02-11 14:39:44'),(1946,19,14,317,'Disco','2014-02-11 14:34:33','2014-02-11 14:39:44'),(1947,19,14,318,'Soft','2014-02-11 14:34:33','2014-02-11 14:39:44'),(1948,19,14,319,'Tipo Aut.','2014-02-11 14:34:33','2014-02-11 14:39:45'),(1949,19,14,320,'BYOD manager','2014-02-11 14:34:33','2014-02-11 14:39:45'),(1950,19,14,321,'Os Vouchers','2014-02-11 14:34:33','2014-02-11 14:39:45'),(1951,19,14,322,'Monitor de Atividade','2014-02-11 14:34:33','2014-02-11 14:39:45'),(1952,19,14,323,'Dispositivos Registados','2014-02-11 14:34:33','2014-02-11 14:39:45'),(1953,19,14,324,'Dispositivos nÃ£o reclamados','2014-02-11 14:34:33','2014-02-11 14:39:45'),(1954,19,14,325,'MAC Address','2014-02-11 14:34:33','2014-02-11 14:39:45'),(1955,19,14,326,'Dados de AutenticaÃ§Ã£o','2014-02-11 14:34:33','2014-02-11 14:39:45'),(1956,19,14,327,'Dados contabilÃ­sticos','2014-02-11 14:34:33','2014-02-11 14:39:45'),(1957,19,14,328,'Em {} fora {fora} Total {total}','2014-02-11 14:34:33','2014-02-11 14:39:45'),(1958,19,14,329,'NAS id da porta','2014-02-11 14:34:34','2014-02-11 14:39:45'),(1959,19,14,330,'Tipo de porta NAS','2014-02-11 14:34:34','2014-02-11 14:39:45'),(1960,19,14,331,'Hora de InÃ­cio','2014-02-11 14:34:34','2014-02-11 14:39:45'),(1961,19,14,332,'Tempo de Parada','2014-02-11 14:34:34','2014-02-11 14:39:45'),(1962,19,14,333,'FreeRADIUS info','2014-02-11 14:34:34','2014-02-11 14:39:45'),(1963,19,14,334,'Os dispositivos','2014-02-11 14:34:34','2014-02-11 14:39:46'),(1964,19,14,335,'Atributos Privados','2014-02-11 14:34:34','2014-02-11 14:39:46'),(1965,19,14,336,'Ãšltimo aceitar tempo','2014-02-11 14:34:34','2014-02-11 14:39:46'),(1966,19,14,337,'Nas Ãšltima aceitar','2014-02-11 14:34:34','2014-02-11 14:39:46'),(1967,19,14,338,'Ãšltimo perÃ­odo de rejeiÃ§Ã£o','2014-02-11 14:34:34','2014-02-11 14:39:46'),(1968,19,14,339,'Nas Ãºltima rejeiÃ§Ã£o','2014-02-11 14:34:34','2014-02-11 14:39:46'),(1969,19,14,340,'Ãšltimo rejeitar a mensagem','2014-02-11 14:34:34','2014-02-11 14:39:46'),(1970,19,14,341,'Novo dispositivo','2014-02-11 14:34:34','2014-02-11 14:39:46'),(1971,19,14,342,'Ativar / Desativar','2014-02-11 14:34:34','2014-02-11 14:39:46'),(1972,19,14,343,'Active o','2014-02-11 14:34:34','2014-02-11 14:39:46'),(1973,19,14,344,'Disable','2014-02-11 14:34:34','2014-02-11 14:39:46'),(1974,19,14,345,'Em primeiro lugar selecione um item para modificar','2014-02-11 14:34:34','2014-02-11 14:39:46'),(1975,19,14,346,'Itens modificados','2014-02-11 14:34:34','2014-02-11 14:39:46'),(1976,19,14,347,'Itens modificados multa','2014-02-11 14:34:34','2014-02-11 14:39:46'),(1977,19,14,348,'Data final errado','2014-02-11 14:34:34','2014-02-11 14:39:47'),(1978,19,14,349,'A data final deve ser apÃ³s o start_date','2014-02-11 14:34:34','2014-02-11 14:39:47'),(1979,19,14,350,'Data de InÃ­cio mal','2014-02-11 14:34:34','2014-02-11 14:39:47'),(1980,19,14,351,'A data de inÃ­cio deve ser antes da data final','2014-02-11 14:34:34','2014-02-11 14:39:47'),(1981,19,14,352,'Alterar senha','2014-02-11 14:34:34','2014-02-11 14:39:47'),(1982,19,14,353,'Alterar senha','2014-02-11 14:34:34','2014-02-11 14:39:47'),(1983,19,14,354,'A Wallpaper mudou','2014-02-11 14:34:34','2014-02-11 14:39:47'),(1984,19,14,355,'A Wallpaper mudou multa','2014-02-11 14:34:34','2014-02-11 14:39:47'),(1985,19,14,356,'Groupname','2014-02-11 14:34:34','2014-02-11 14:39:47'),(1986,19,14,357,'EndereÃ§o IP do NAS','2014-02-11 14:34:34','2014-02-11 14:39:47'),(1987,19,14,358,'Tempo de SessÃ£o','2014-02-11 14:34:34','2014-02-11 14:39:47'),(1988,19,14,359,'Conta autÃªntica','2014-02-11 14:34:34','2014-02-11 14:39:47'),(1989,19,14,360,'Connect info inÃ­cio','2014-02-11 14:34:34','2014-02-11 14:39:47'),(1990,19,14,361,'Connect info parar','2014-02-11 14:34:34','2014-02-11 14:39:47'),(1991,19,14,362,'Dados','2014-02-11 14:34:34','2014-02-11 14:39:47'),(1992,19,14,363,'SaÃ­da de Dados','2014-02-11 14:34:34','2014-02-11 14:39:48'),(1993,19,14,364,'EstaÃ§Ã£o chamada id','2014-02-11 14:34:34','2014-02-11 14:39:48'),(1994,19,14,365,'Calling station id (MAC)','2014-02-11 14:34:34','2014-02-11 14:39:48'),(1995,19,14,366,'PÃ´r causa','2014-02-11 14:34:34','2014-02-11 14:39:48'),(1996,19,14,367,'Tipo de ServiÃ§o','2014-02-11 14:34:34','2014-02-11 14:39:48'),(1997,19,14,368,'Emoldurado protocolo','2014-02-11 14:34:34','2014-02-11 14:39:48'),(1998,19,14,369,'EndereÃ§o IP enquadrados','2014-02-11 14:34:34','2014-02-11 14:39:48'),(1999,19,14,370,'Retardo do inÃ­cio da Conta','2014-02-11 14:34:34','2014-02-11 14:39:48'),(2000,19,14,371,'Acct parar demora','2014-02-11 14:34:34','2014-02-11 14:39:48'),(2001,19,14,372,'X sessÃ£o svr chave Subir','2014-02-11 14:34:34','2014-02-11 14:39:48'),(2002,19,14,373,'Nasname','2014-02-11 14:34:34','2014-02-11 14:39:48'),(2003,19,14,374,'Data','2014-02-11 14:34:34','2014-02-11 14:39:48'),(2004,19,14,375,'Recarregar todos os','2014-02-11 14:34:34','2014-02-11 14:39:48'),(2005,19,14,376,'Segundos','2014-02-11 14:34:34','2014-02-11 14:39:48'),(2006,19,14,377,'Minuto','2014-02-11 14:34:34','2014-02-11 14:39:48'),(2007,19,14,378,'Minutos','2014-02-11 14:34:34','2014-02-11 14:39:48'),(2008,19,14,379,'Parar o auto recarregar','2014-02-11 14:34:34','2014-02-11 14:39:48'),(2009,19,14,380,'A Wallpaper','2014-02-11 14:34:34','2014-02-11 14:39:48'),(2010,19,14,381,'ID da sessÃ£o conta','2014-02-11 14:34:34','2014-02-11 14:39:48'),(2011,19,14,382,'ID Ãºnico cheque','2014-02-11 14:34:34','2014-02-11 14:39:48'),(2012,19,14,383,'Tipo de UsuÃ¡rio','2014-02-11 14:34:34','2014-02-11 14:39:48'),(2013,19,14,384,'OpenVPN','2014-02-11 14:34:34','2014-02-11 14:39:48'),(2014,19,14,387,'Definida pelo servidor','2014-02-11 14:34:34','2014-02-11 14:39:48'),(2015,19,14,388,'AN','2014-02-11 14:34:34','2014-02-11 14:39:48'),(2016,19,14,389,'As credenciais OpenVPN','2014-02-11 14:34:35','2014-02-11 14:39:48'),(2017,19,14,390,'Dynamic AVP detalhes','2014-02-11 14:34:35','2014-02-11 14:39:48'),(2018,19,14,391,'Exemplo','2014-02-11 14:34:35','2014-02-11 14:39:48'),(2019,19,14,392,'As credenciais PPTP','2014-02-11 14:34:35','2014-02-11 14:39:48'),(2020,19,14,393,'PPTP','2014-02-11 14:34:35','2014-02-11 14:39:48'),(2021,19,14,394,'Ignorar solicitaÃ§Ãµes de contabilidade','2014-02-11 14:34:35','2014-02-11 14:39:48'),(2022,19,14,395,'O Google Maps','2014-02-11 14:34:35','2014-02-11 14:39:48'),(2023,19,14,396,'Device info','2014-02-11 14:34:35','2014-02-11 14:39:48'),(2024,19,14,397,'Cancelar','2014-02-11 14:34:35','2014-02-11 14:39:48'),(2025,19,14,398,'AÃ§Ã£o necessÃ¡ria','2014-02-11 14:34:35','2014-02-11 14:39:48'),(2026,19,14,399,'Nova posiÃ§Ã£o','2014-02-11 14:34:35','2014-02-11 14:39:48'),(2027,19,14,400,'Basta arrastar um marcador para uma outra posiÃ§Ã£o ficarÃ­a e clique no botÃ£o delete na janela inf','2014-02-11 14:34:35','2014-02-11 14:39:48'),(2028,19,14,401,'Excluir um marcador','2014-02-11 14:34:35','2014-02-11 14:39:48'),(2029,19,14,402,'Editar um marcador','2014-02-11 14:34:35','2014-02-11 14:39:48'),(2030,19,14,403,'Basta arrastar um marcador para uma outra posiÃ§Ã£o ficarÃ­a e clique no botÃ£o Salvar na janela inf','2014-02-11 14:34:35','2014-02-11 14:39:48'),(2031,19,14,404,'Adicionar o marcador','2014-02-11 14:34:35','2014-02-11 14:39:48'),(2032,19,14,405,'Selecione um dispositivo NAS.','2014-02-11 14:34:35','2014-02-11 14:39:48'),(2033,19,14,406,'Estado Atual','2014-02-11 14:34:35','2014-02-11 14:39:48'),(2034,19,14,407,'A','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2035,19,14,408,'Para Baixo','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2036,19,14,409,'Desconhecido','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2037,19,14,410,'O Estado','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2038,19,14,411,'PreferÃªncias','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2039,19,14,412,'Hybrid','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2040,19,14,413,'Roteiro','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2041,19,14,414,'SatÃ©lite','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2042,19,14,415,'O terreno','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2043,19,14,416,'Snapshot','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2044,19,14,417,'As palavras-passe nÃ£o corresponde','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2045,19,14,418,'Estado','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2046,19,14,419,'DuraÃ§Ã£o','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2047,19,14,420,'ComeÃ§ou','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2048,19,14,421,'Terminou','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2049,19,14,422,'Logotipo atual','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2050,19,14,423,'Selecione uma imagem','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2051,19,14,424,'Novo logotipo','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2052,19,14,425,'Log viewer','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2053,19,14,426,'SaÃ­da de depuraÃ§Ã£o (debug)','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2054,19,14,427,'Limpar a tela','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2055,19,14,428,'Parar FreeRADIUS','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2056,19,14,429,'InÃ­cio FreeRADIUS','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2057,19,14,430,'Start / Stop FreeRADIUS','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2058,19,14,431,'Receber novos dados registro','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2059,19,14,432,'Aguardando nova logfile dados','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2060,19,14,433,'Adicionar tempo de depuraÃ§Ã£o','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2061,19,14,434,'InÃ­cio debug','2014-02-11 14:34:35','2014-02-11 14:39:49'),(2062,19,14,435,'Parar debug','2014-02-11 14:34:36','2014-02-11 14:39:49'),(2063,19,14,436,'Os filtros','2014-02-11 14:34:36','2014-02-11 14:39:49'),(2064,19,14,437,'Qualquer dispositivo NAS.','2014-02-11 14:34:36','2014-02-11 14:39:49'),(2065,19,14,438,'Qualquer usuÃ¡rio','2014-02-11 14:34:36','2014-02-11 14:39:49'),(2066,19,14,439,'Cliente RADIUS','2014-02-11 14:34:36','2014-02-11 14:39:49'),(2067,19,14,440,'AutenticaÃ§Ã£o','2014-02-11 14:34:36','2014-02-11 14:39:49'),(2068,19,14,441,'Contabilidade','2014-02-11 14:34:36','2014-02-11 14:39:49'),(2069,19,14,442,'UsuÃ¡rio Permanente','2014-02-11 14:34:36','2014-02-11 14:39:49'),(2070,19,14,443,'Dispositivo','2014-02-11 14:34:36','2014-02-11 14:39:49'),(2071,19,14,444,'Tipo de SolicitaÃ§Ã£o','2014-02-11 14:34:36','2014-02-11 14:39:49'),(2072,19,14,445,'Login pÃ¡ginas dinÃ¢micas','2014-02-11 14:34:36','2014-02-11 14:39:49'),(2073,19,14,446,'Adicionar pÃ¡gina dinÃ¢mica','2014-02-11 14:34:36','2014-02-11 14:39:49'),(2074,19,14,447,'Selecione um proprietÃ¡rio para a pÃ¡gina de login','2014-02-11 14:34:36','2014-02-11 14:39:49'),(2075,19,14,448,'Fotos','2014-02-11 14:34:36','2014-02-11 14:39:49'),(2076,19,14,449,'Adicionar foto','2014-02-11 14:34:36','2014-02-11 14:39:49'),(2077,19,14,450,'TÃ­tulo','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2078,19,14,451,'Foto','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2079,19,14,452,'Editar foto','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2080,19,14,453,'Opcional de fotos','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2081,19,14,454,'PrÃ³prias pÃ¡ginas','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2082,19,14,455,'Chaves dinÃ¢micas','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2083,19,14,456,'ConteÃºdo','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2084,19,14,457,'Editar par dinÃ¢mico','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2085,19,14,458,'Editar a prÃ³pria pÃ¡gina','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2086,19,14,459,'Adicionar dynamic par','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2087,19,14,460,'Adicionar pÃ¡gina','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2088,19,14,461,'NÃ£o hÃ¡ imagens disponÃ­veis','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2089,19,14,462,'Item atualizado','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2090,19,14,463,'Item foi atualizado','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2091,19,14,464,'Problemas de atualizaÃ§Ã£o item','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2092,19,14,465,'Item nÃ£o pÃ´de ser atualizado','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2093,19,14,466,'A Webtop modernos front-end a FreeRADIUS','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2094,19,14,467,'Sobre RADIUSdesk','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2095,19,14,468,'NAS-Identifier','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2096,19,14,469,'Comando','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2097,19,14,470,'Criado','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2098,19,14,471,'Modificados','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2099,19,14,472,'Adicionar um comando','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2100,19,14,473,'Aguardando','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2101,19,14,474,'Buscados','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2102,19,14,475,'Novo voucher','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2103,19,14,476,'Preceder string','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2104,19,14,477,'Quantas vezes?','2014-02-11 14:34:36','2014-02-11 14:39:50'),(2105,19,14,478,'Nome do Lote','2014-02-11 14:34:36','2014-02-11 14:39:51'),(2106,19,14,479,'Ativar login em primeiro lugar','2014-02-11 14:34:36','2014-02-11 14:39:51'),(2107,19,14,480,'Dias disponÃ­veis apÃ³s o primeiro login','2014-02-11 14:34:36','2014-02-11 14:39:51'),(2108,19,14,481,'Nunca expiram','2014-02-11 14:34:36','2014-02-11 14:39:51'),(2109,19,14,482,'Expirar','2014-02-11 14:34:36','2014-02-11 14:39:51'),(2110,19,14,483,'Senha','2014-02-11 14:34:36','2014-02-11 14:39:51'),(2111,19,14,484,'Lote','2014-02-11 14:34:36','2014-02-11 14:39:51'),(2112,19,14,485,'Nova','2014-02-11 14:34:36','2014-02-11 14:39:51'),(2113,19,14,486,'Usados','2014-02-11 14:34:36','2014-02-11 14:39:51'),(2114,19,14,487,'Esgotado','2014-02-11 14:34:36','2014-02-11 14:39:51'),(2115,19,14,488,'Terminou','2014-02-11 14:34:36','2014-02-11 14:39:51'),(2116,19,14,489,'(Voucher Ãšnico)','2014-02-11 14:34:36','2014-02-11 14:39:51'),(2117,19,14,490,'Tempo de uso (em %)','2014-02-11 14:34:36','2014-02-11 14:39:51'),(2118,19,14,491,'Os dados utilizados (em %)','2014-02-11 14:34:36','2014-02-11 14:39:51'),(2119,19,14,492,'O tipo de dados','2014-02-11 14:34:36','2014-02-11 14:39:51'),(2120,19,14,493,'Tipo de tampa do tempo','2014-02-11 14:34:36','2014-02-11 14:39:52'),(2121,19,14,494,'Vale','2014-02-11 14:34:37','2014-02-11 14:39:52'),(2122,19,14,495,'Formato de SaÃ­da','2014-02-11 14:34:37','2014-02-11 14:39:52'),(2123,19,14,496,'Gerar PDF','2014-02-11 14:34:37','2014-02-11 14:39:52'),(2124,19,14,497,'Somente os itens selecionados','2014-02-11 14:34:37','2014-02-11 14:39:52'),(2125,19,14,498,'Apenas Selecionados','2014-02-11 14:34:37','2014-02-11 14:39:52'),(2126,19,14,499,'Nada de exportaÃ§Ã£o','2014-02-11 14:34:37','2014-02-11 14:39:52'),(2127,19,14,500,'Lista estÃ¡ vazia','2014-02-11 14:34:37','2014-02-11 14:39:52'),(2128,19,14,501,'Vale exportar para pdf','2014-02-11 14:34:37','2014-02-11 14:39:52'),(2129,19,14,502,'Identificador NAS','2014-02-11 14:34:37','2014-02-11 14:39:52'),(2130,4,4,503,'Password manager','2014-02-20 10:02:28','2014-02-20 10:03:32'),(2131,5,5,503,'(new addition)','2014-02-20 10:02:28','2014-02-20 10:02:28'),(2132,18,13,503,'(new addition)','2014-02-20 10:02:28','2014-02-20 10:02:28'),(2133,19,14,503,'(new addition)','2014-02-20 10:02:28','2014-02-20 10:02:28'),(2134,4,4,504,'Encryption','2014-02-20 12:51:24','2014-02-20 12:51:50'),(2135,5,5,504,'(new addition)','2014-02-20 12:51:24','2014-02-20 12:51:24'),(2136,18,13,504,'(new addition)','2014-02-20 12:51:24','2014-02-20 12:51:24'),(2137,19,14,504,'(new addition)','2014-02-20 12:51:24','2014-02-20 12:51:24'),(2138,4,4,505,'Connects with','2014-02-20 12:52:50','2014-02-20 12:53:00'),(2139,5,5,505,'(new addition)','2014-02-20 12:52:51','2014-02-20 12:52:51'),(2140,18,13,505,'(new addition)','2014-02-20 12:52:51','2014-02-20 12:52:51'),(2141,19,14,505,'(new addition)','2014-02-20 12:52:51','2014-02-20 12:52:51'),(2142,4,4,506,'Hardware model','2014-02-20 12:54:17','2014-02-20 12:54:56'),(2143,5,5,506,'(new addition)','2014-02-20 12:54:17','2014-02-20 12:54:17'),(2144,18,13,506,'(new addition)','2014-02-20 12:54:17','2014-02-20 12:54:17'),(2145,19,14,506,'(new addition)','2014-02-20 12:54:17','2014-02-20 12:54:17'),(2146,4,4,507,'Static entry points','2014-02-20 12:56:40','2014-02-20 12:56:50'),(2147,5,5,507,'(new addition)','2014-02-20 12:56:40','2014-02-20 12:56:40'),(2148,18,13,507,'(new addition)','2014-02-20 12:56:40','2014-02-20 12:56:40'),(2149,19,14,507,'(new addition)','2014-02-20 12:56:40','2014-02-20 12:56:40'),(2150,4,4,508,'Static exit points','2014-02-20 12:57:52','2014-02-20 12:58:01'),(2151,5,5,508,'(new addition)','2014-02-20 12:57:52','2014-02-20 12:57:52'),(2152,18,13,508,'(new addition)','2014-02-20 12:57:52','2014-02-20 12:57:52'),(2153,19,14,508,'(new addition)','2014-02-20 12:57:52','2014-02-20 12:57:52'),(2154,4,4,509,'WEP','2014-02-20 13:01:16','2014-02-20 13:01:24'),(2155,5,5,509,'(new addition)','2014-02-20 13:01:16','2014-02-20 13:01:16'),(2156,18,13,509,'(new addition)','2014-02-20 13:01:16','2014-02-20 13:01:16'),(2157,19,14,509,'(new addition)','2014-02-20 13:01:16','2014-02-20 13:01:16'),(2158,4,4,510,'WPA Personal','2014-02-20 13:01:58','2014-02-20 13:02:10'),(2159,5,5,510,'(new addition)','2014-02-20 13:01:58','2014-02-20 13:01:58'),(2160,18,13,510,'(new addition)','2014-02-20 13:01:58','2014-02-20 13:01:58'),(2161,19,14,510,'(new addition)','2014-02-20 13:01:58','2014-02-20 13:01:58'),(2162,4,4,511,'WPA2 Personal','2014-02-20 13:02:49','2014-02-20 13:03:01'),(2163,5,5,511,'(new addition)','2014-02-20 13:02:50','2014-02-20 13:02:50'),(2164,18,13,511,'(new addition)','2014-02-20 13:02:50','2014-02-20 13:02:50'),(2165,19,14,511,'(new addition)','2014-02-20 13:02:50','2014-02-20 13:02:50'),(2166,4,4,512,'WPA Enterprise','2014-02-20 13:03:42','2014-02-20 13:03:52'),(2167,5,5,512,'(new addition)','2014-02-20 13:03:42','2014-02-20 13:03:42'),(2168,18,13,512,'(new addition)','2014-02-20 13:03:42','2014-02-20 13:03:42'),(2169,19,14,512,'(new addition)','2014-02-20 13:03:42','2014-02-20 13:03:42'),(2170,4,4,513,'WPA2 Enterprise','2014-02-20 13:04:32','2014-02-20 13:04:45'),(2171,5,5,513,'(new addition)','2014-02-20 13:04:32','2014-02-20 13:04:32'),(2172,18,13,513,'(new addition)','2014-02-20 13:04:32','2014-02-20 13:04:32'),(2173,19,14,513,'(new addition)','2014-02-20 13:04:32','2014-02-20 13:04:32'),(2174,4,4,514,'Hidden','2014-02-20 13:05:56','2014-02-20 13:06:06'),(2175,5,5,514,'(new addition)','2014-02-20 13:05:56','2014-02-20 13:05:56'),(2176,18,13,514,'(new addition)','2014-02-20 13:05:56','2014-02-20 13:05:56'),(2177,19,14,514,'(new addition)','2014-02-20 13:05:56','2014-02-20 13:05:56'),(2178,4,4,515,'Client isolation','2014-02-20 13:06:25','2014-02-20 13:07:07'),(2179,5,5,515,'(new addition)','2014-02-20 13:06:25','2014-02-20 13:06:25'),(2180,18,13,515,'(new addition)','2014-02-20 13:06:25','2014-02-20 13:06:25'),(2181,19,14,515,'(new addition)','2014-02-20 13:06:25','2014-02-20 13:06:25'),(2182,4,4,516,'Apply to all nodes','2014-02-20 13:06:43','2014-02-20 13:06:58'),(2183,5,5,516,'(new addition)','2014-02-20 13:06:43','2014-02-20 13:06:43'),(2184,18,13,516,'(new addition)','2014-02-20 13:06:43','2014-02-20 13:06:43'),(2185,19,14,516,'(new addition)','2014-02-20 13:06:43','2014-02-20 13:06:43'),(2186,4,4,517,'None','2014-02-20 13:07:47','2014-02-20 13:07:56'),(2187,5,5,517,'(new addition)','2014-02-20 13:07:47','2014-02-20 13:07:47'),(2188,18,13,517,'(new addition)','2014-02-20 13:07:47','2014-02-20 13:07:47'),(2189,19,14,517,'(new addition)','2014-02-20 13:07:47','2014-02-20 13:07:47'),(2190,4,4,518,'SSID','2014-02-20 13:09:07','2014-02-20 13:09:16'),(2191,5,5,518,'(new addition)','2014-02-20 13:09:07','2014-02-20 13:09:07'),(2192,18,13,518,'(new addition)','2014-02-20 13:09:07','2014-02-20 13:09:07'),(2193,19,14,518,'(new addition)','2014-02-20 13:09:07','2014-02-20 13:09:07'),(2194,4,4,519,'BSSID','2014-02-20 13:10:41','2014-02-20 13:10:49'),(2195,5,5,519,'(new addition)','2014-02-20 13:10:41','2014-02-20 13:10:41'),(2196,18,13,519,'(new addition)','2014-02-20 13:10:41','2014-02-20 13:10:41'),(2197,19,14,519,'(new addition)','2014-02-20 13:10:41','2014-02-20 13:10:41'),(2198,4,4,520,'Node count','2014-02-20 13:11:35','2014-02-20 13:11:50'),(2199,5,5,520,'(new addition)','2014-02-20 13:11:35','2014-02-20 13:11:35'),(2200,18,13,520,'(new addition)','2014-02-20 13:11:35','2014-02-20 13:11:35'),(2201,19,14,520,'(new addition)','2014-02-20 13:11:35','2014-02-20 13:11:35'),(2202,4,4,521,'Nodes up','2014-02-20 13:12:38','2014-02-20 13:12:48'),(2203,5,5,521,'(new addition)','2014-02-20 13:12:38','2014-02-20 13:12:38'),(2204,18,13,521,'(new addition)','2014-02-20 13:12:38','2014-02-20 13:12:38'),(2205,19,14,521,'(new addition)','2014-02-20 13:12:38','2014-02-20 13:12:38'),(2206,4,4,522,'Nodes down','2014-02-20 13:13:12','2014-02-20 13:13:28'),(2207,5,5,522,'(new addition)','2014-02-20 13:13:12','2014-02-20 13:13:12'),(2208,18,13,522,'(new addition)','2014-02-20 13:13:12','2014-02-20 13:13:12'),(2209,19,14,522,'(new addition)','2014-02-20 13:13:12','2014-02-20 13:13:12'),(2210,4,4,523,'No one','2014-02-20 13:15:51','2014-02-20 13:16:01'),(2211,5,5,523,'(new addition)','2014-02-20 13:15:51','2014-02-20 13:15:51'),(2212,18,13,523,'(new addition)','2014-02-20 13:15:51','2014-02-20 13:15:51'),(2213,19,14,523,'(new addition)','2014-02-20 13:15:52','2014-02-20 13:15:52'),(2214,4,4,524,'Auto detect','2014-02-20 13:16:51','2014-02-20 13:17:02'),(2215,5,5,524,'(new addition)','2014-02-20 13:16:51','2014-02-20 13:16:51'),(2216,18,13,524,'(new addition)','2014-02-20 13:16:51','2014-02-20 13:16:51'),(2217,19,14,524,'(new addition)','2014-02-20 13:16:51','2014-02-20 13:16:51'),(2218,4,4,525,'Hardware','2014-02-20 13:20:23','2014-02-20 13:20:33'),(2219,5,5,525,'(new addition)','2014-02-20 13:20:23','2014-02-20 13:20:23'),(2220,18,13,525,'(new addition)','2014-02-20 13:20:23','2014-02-20 13:20:23'),(2221,19,14,525,'(new addition)','2014-02-20 13:20:24','2014-02-20 13:20:24'),(2222,4,4,526,'Power','2014-02-20 13:20:50','2014-02-20 13:21:00'),(2223,5,5,526,'(new addition)','2014-02-20 13:20:50','2014-02-20 13:20:50'),(2224,18,13,526,'(new addition)','2014-02-20 13:20:50','2014-02-20 13:20:50'),(2225,19,14,526,'(new addition)','2014-02-20 13:20:50','2014-02-20 13:20:50'),(2226,4,4,527,'Static entries','2014-02-20 13:21:34','2014-02-20 13:21:46'),(2227,5,5,527,'(new addition)','2014-02-20 13:21:34','2014-02-20 13:21:34'),(2228,18,13,527,'(new addition)','2014-02-20 13:21:34','2014-02-20 13:21:34'),(2229,19,14,527,'(new addition)','2014-02-20 13:21:34','2014-02-20 13:21:34'),(2230,4,4,528,'Static exits','2014-02-20 13:22:55','2014-02-20 13:23:07'),(2231,5,5,528,'(new addition)','2014-02-20 13:22:55','2014-02-20 13:22:55'),(2232,18,13,528,'(new addition)','2014-02-20 13:22:55','2014-02-20 13:22:55'),(2233,19,14,528,'(new addition)','2014-02-20 13:22:55','2014-02-20 13:22:55'),(2234,4,4,529,'AP isolation','2014-02-20 13:24:15','2014-02-20 13:24:25'),(2235,5,5,529,'(new addition)','2014-02-20 13:24:15','2014-02-20 13:24:15'),(2236,18,13,529,'(new addition)','2014-02-20 13:24:15','2014-02-20 13:24:15'),(2237,19,14,529,'(new addition)','2014-02-20 13:24:15','2014-02-20 13:24:15'),(2238,4,4,530,'Bridge Loop Avoidance','2014-02-20 13:25:07','2014-02-20 13:25:27'),(2239,5,5,530,'(new addition)','2014-02-20 13:25:07','2014-02-20 13:25:07'),(2240,18,13,530,'(new addition)','2014-02-20 13:25:07','2014-02-20 13:25:07'),(2241,19,14,530,'(new addition)','2014-02-20 13:25:07','2014-02-20 13:25:07'),(2242,4,4,531,'Aggregation','2014-02-20 13:26:12','2014-02-20 13:26:47'),(2243,5,5,531,'(new addition)','2014-02-20 13:26:12','2014-02-20 13:26:12'),(2244,18,13,531,'(new addition)','2014-02-20 13:26:12','2014-02-20 13:26:12'),(2245,19,14,531,'(new addition)','2014-02-20 13:26:12','2014-02-20 13:26:12'),(2246,4,4,532,'Bonding','2014-02-20 13:26:33','2014-02-20 13:26:53'),(2247,5,5,532,'(new addition)','2014-02-20 13:26:33','2014-02-20 13:26:33'),(2248,18,13,532,'(new addition)','2014-02-20 13:26:33','2014-02-20 13:26:33'),(2249,19,14,532,'(new addition)','2014-02-20 13:26:33','2014-02-20 13:26:33'),(2250,4,4,533,'Fragmentation','2014-02-20 13:27:35','2014-02-20 13:27:47'),(2251,5,5,533,'(new addition)','2014-02-20 13:27:35','2014-02-20 13:27:35'),(2252,18,13,533,'(new addition)','2014-02-20 13:27:35','2014-02-20 13:27:35'),(2253,19,14,533,'(new addition)','2014-02-20 13:27:35','2014-02-20 13:27:35'),(2254,4,4,534,'OGM interval (ms)','2014-02-20 13:28:27','2014-02-20 13:28:50'),(2255,5,5,534,'(new addition)','2014-02-20 13:28:27','2014-02-20 13:28:27'),(2256,18,13,534,'(new addition)','2014-02-20 13:28:27','2014-02-20 13:28:27'),(2257,19,14,534,'(new addition)','2014-02-20 13:28:27','2014-02-20 13:28:27'),(2258,4,4,535,'Gateway switching','2014-02-20 13:29:30','2014-02-20 13:29:42'),(2259,5,5,535,'(new addition)','2014-02-20 13:29:30','2014-02-20 13:29:30'),(2260,18,13,535,'(new addition)','2014-02-20 13:29:30','2014-02-20 13:29:30'),(2261,19,14,535,'(new addition)','2014-02-20 13:29:30','2014-02-20 13:29:30'),(2262,4,4,536,'Heartbeat interval','2014-02-20 13:30:29','2014-02-20 13:30:42'),(2263,5,5,536,'(new addition)','2014-02-20 13:30:29','2014-02-20 13:30:29'),(2264,18,13,536,'(new addition)','2014-02-20 13:30:29','2014-02-20 13:30:29'),(2265,19,14,536,'(new addition)','2014-02-20 13:30:29','2014-02-20 13:30:29'),(2266,4,4,537,'5G Channel','2014-02-20 13:31:18','2014-02-20 13:31:27'),(2267,5,5,537,'(new addition)','2014-02-20 13:31:18','2014-02-20 13:31:18'),(2268,18,13,537,'(new addition)','2014-02-20 13:31:18','2014-02-20 13:31:18'),(2269,19,14,537,'(new addition)','2014-02-20 13:31:18','2014-02-20 13:31:18'),(2270,4,4,538,'2.4G Channel','2014-02-20 13:32:09','2014-02-20 13:32:30'),(2271,5,5,538,'(new addition)','2014-02-20 13:32:09','2014-02-20 13:32:09'),(2272,18,13,538,'(new addition)','2014-02-20 13:32:09','2014-02-20 13:32:09'),(2273,19,14,538,'(new addition)','2014-02-20 13:32:09','2014-02-20 13:32:09'),(2274,4,4,539,'RADIUS server','2014-02-20 13:35:50','2014-02-20 13:36:00'),(2275,5,5,539,'(new addition)','2014-02-20 13:35:50','2014-02-20 13:35:50'),(2276,18,13,539,'(new addition)','2014-02-20 13:35:50','2014-02-20 13:35:50'),(2277,19,14,539,'(new addition)','2014-02-20 13:35:50','2014-02-20 13:35:50'),(2278,4,4,540,'Shared secret','2014-02-20 13:36:33','2014-02-20 13:36:46'),(2279,5,5,540,'(new addition)','2014-02-20 13:36:33','2014-02-20 13:36:33'),(2280,18,13,540,'(new addition)','2014-02-20 13:36:33','2014-02-20 13:36:33'),(2281,19,14,540,'(new addition)','2014-02-20 13:36:34','2014-02-20 13:36:34'),(2282,4,4,541,'New mesh exit point','2014-02-20 13:37:35','2014-02-20 13:37:54'),(2283,5,5,541,'(new addition)','2014-02-20 13:37:35','2014-02-20 13:37:35'),(2284,18,13,541,'(new addition)','2014-02-20 13:37:35','2014-02-20 13:37:35'),(2285,19,14,541,'(new addition)','2014-02-20 13:37:35','2014-02-20 13:37:35'),(2286,4,4,542,'Ethernet bridge','2014-02-20 13:40:28','2014-02-20 13:40:38'),(2287,5,5,542,'(new addition)','2014-02-20 13:40:28','2014-02-20 13:40:28'),(2288,18,13,542,'(new addition)','2014-02-20 13:40:28','2014-02-20 13:40:28'),(2289,19,14,542,'(new addition)','2014-02-20 13:40:28','2014-02-20 13:40:28'),(2290,4,4,543,'Tagged Ethernet bridge','2014-02-20 13:41:19','2014-02-20 13:41:36'),(2291,5,5,543,'(new addition)','2014-02-20 13:41:19','2014-02-20 13:41:19'),(2292,18,13,543,'(new addition)','2014-02-20 13:41:19','2014-02-20 13:41:19'),(2293,19,14,543,'(new addition)','2014-02-20 13:41:19','2014-02-20 13:41:19'),(2294,4,4,544,'NAT+DHCP','2014-02-20 13:41:59','2014-02-20 13:42:31'),(2295,5,5,544,'(new addition)','2014-02-20 13:41:59','2014-02-20 13:41:59'),(2296,18,13,544,'(new addition)','2014-02-20 13:41:59','2014-02-20 13:41:59'),(2297,19,14,544,'(new addition)','2014-02-20 13:41:59','2014-02-20 13:41:59'),(2298,4,4,545,'Captive Portal','2014-02-20 13:42:57','2014-02-20 13:43:13'),(2299,5,5,545,'(new addition)','2014-02-20 13:42:58','2014-02-20 13:42:58'),(2300,18,13,545,'(new addition)','2014-02-20 13:42:58','2014-02-20 13:42:58'),(2301,19,14,545,'(new addition)','2014-02-20 13:42:58','2014-02-20 13:42:58'),(2302,4,4,546,'Specify exit point type','2014-02-20 13:44:38','2014-02-20 13:44:47'),(2303,5,5,546,'(new addition)','2014-02-20 13:44:38','2014-02-20 13:44:38'),(2304,18,13,546,'(new addition)','2014-02-20 13:44:38','2014-02-20 13:44:38'),(2305,19,14,546,'(new addition)','2014-02-20 13:44:38','2014-02-20 13:44:38'),(2306,4,4,547,'Exit point type','2014-02-20 13:45:44','2014-02-20 13:45:57'),(2307,5,5,547,'(new addition)','2014-02-20 13:45:44','2014-02-20 13:45:44'),(2308,18,13,547,'(new addition)','2014-02-20 13:45:44','2014-02-20 13:45:44'),(2309,19,14,547,'(new addition)','2014-02-20 13:45:44','2014-02-20 13:45:44'),(2310,4,4,548,'Common settings','2014-02-20 13:59:07','2014-02-20 13:59:18'),(2311,5,5,548,'(new addition)','2014-02-20 13:59:07','2014-02-20 13:59:07'),(2312,18,13,548,'(new addition)','2014-02-20 13:59:07','2014-02-20 13:59:07'),(2313,19,14,548,'(new addition)','2014-02-20 13:59:07','2014-02-20 13:59:07'),(2314,4,4,549,'VLAN number','2014-02-20 14:00:19','2014-02-20 14:00:29'),(2315,5,5,549,'(new addition)','2014-02-20 14:00:19','2014-02-20 14:00:19'),(2316,18,13,549,'(new addition)','2014-02-20 14:00:19','2014-02-20 14:00:19'),(2317,19,14,549,'(new addition)','2014-02-20 14:00:19','2014-02-20 14:00:19'),(2318,4,4,550,'Captive Portal settings','2014-02-20 14:02:06','2014-02-20 14:02:16'),(2319,5,5,550,'(new addition)','2014-02-20 14:02:06','2014-02-20 14:02:06'),(2320,18,13,550,'(new addition)','2014-02-20 14:02:06','2014-02-20 14:02:06'),(2321,19,14,550,'(new addition)','2014-02-20 14:02:06','2014-02-20 14:02:06'),(2322,4,4,551,' RADIUS server1','2014-02-20 14:02:55','2014-02-20 14:03:08'),(2323,5,5,551,'(new addition)','2014-02-20 14:02:55','2014-02-20 14:02:55'),(2324,18,13,551,'(new addition)','2014-02-20 14:02:55','2014-02-20 14:02:55'),(2325,19,14,551,'(new addition)','2014-02-20 14:02:55','2014-02-20 14:02:55'),(2326,4,4,552,'RADIUS server2','2014-02-20 14:03:38','2014-02-20 14:03:52'),(2327,5,5,552,'(new addition)','2014-02-20 14:03:38','2014-02-20 14:03:38'),(2328,18,13,552,'(new addition)','2014-02-20 14:03:38','2014-02-20 14:03:38'),(2329,19,14,552,'(new addition)','2014-02-20 14:03:38','2014-02-20 14:03:38'),(2330,4,4,553,'RADIUS secret','2014-02-20 14:04:17','2014-02-20 14:05:43'),(2331,5,5,553,'(new addition)','2014-02-20 14:04:17','2014-02-20 14:04:17'),(2332,18,13,553,'(new addition)','2014-02-20 14:04:17','2014-02-20 14:04:17'),(2333,19,14,553,'(new addition)','2014-02-20 14:04:17','2014-02-20 14:04:17'),(2334,4,4,554,'RADIUS NASID','2014-02-20 14:05:16','2014-02-20 14:05:31'),(2335,5,5,554,'(new addition)','2014-02-20 14:05:16','2014-02-20 14:05:16'),(2336,18,13,554,'(new addition)','2014-02-20 14:05:16','2014-02-20 14:05:16'),(2337,19,14,554,'(new addition)','2014-02-20 14:05:16','2014-02-20 14:05:16'),(2338,4,4,555,'UAM URL','2014-02-20 14:07:29','2014-02-20 14:07:41'),(2339,5,5,555,'(new addition)','2014-02-20 14:07:29','2014-02-20 14:07:29'),(2340,18,13,555,'(new addition)','2014-02-20 14:07:29','2014-02-20 14:07:29'),(2341,19,14,555,'(new addition)','2014-02-20 14:07:29','2014-02-20 14:07:29'),(2342,4,4,556,'UAM Secret','2014-02-20 14:08:11','2014-02-20 14:08:23'),(2343,5,5,556,'(new addition)','2014-02-20 14:08:11','2014-02-20 14:08:11'),(2344,18,13,556,'(new addition)','2014-02-20 14:08:11','2014-02-20 14:08:11'),(2345,19,14,556,'(new addition)','2014-02-20 14:08:11','2014-02-20 14:08:11'),(2346,4,4,557,'Walled garden','2014-02-20 14:08:49','2014-02-20 14:08:59'),(2347,5,5,557,'(new addition)','2014-02-20 14:08:49','2014-02-20 14:08:49'),(2348,18,13,557,'(new addition)','2014-02-20 14:08:49','2014-02-20 14:08:49'),(2349,19,14,557,'(new addition)','2014-02-20 14:08:49','2014-02-20 14:08:49'),(2350,4,4,558,'Swap octets','2014-02-20 14:09:30','2014-02-20 14:09:41'),(2351,5,5,558,'(new addition)','2014-02-20 14:09:30','2014-02-20 14:09:30'),(2352,18,13,558,'(new addition)','2014-02-20 14:09:30','2014-02-20 14:09:30'),(2353,19,14,558,'(new addition)','2014-02-20 14:09:30','2014-02-20 14:09:30'),(2354,4,4,559,'MAC authentication','2014-02-20 14:10:37','2014-02-20 14:10:50'),(2355,5,5,559,'(new addition)','2014-02-20 14:10:37','2014-02-20 14:10:37'),(2356,18,13,559,'(new addition)','2014-02-20 14:10:37','2014-02-20 14:10:37'),(2357,19,14,559,'(new addition)','2014-02-20 14:10:37','2014-02-20 14:10:37'),(2358,4,4,560,'New mesh node','2014-02-20 14:12:55','2014-02-20 14:13:06'),(2359,5,5,560,'(new addition)','2014-02-20 14:12:55','2014-02-20 14:12:55'),(2360,18,13,560,'(new addition)','2014-02-20 14:12:55','2014-02-20 14:12:55'),(2361,19,14,560,'(new addition)','2014-02-20 14:12:55','2014-02-20 14:12:55'),(2362,4,4,561,'TX Power (%)','2014-02-20 14:14:12','2014-02-20 14:14:32'),(2363,5,5,561,'(new addition)','2014-02-20 14:14:12','2014-02-20 14:14:12'),(2364,18,13,561,'(new addition)','2014-02-20 14:14:12','2014-02-20 14:14:12'),(2365,19,14,561,'(new addition)','2014-02-20 14:14:12','2014-02-20 14:14:12'),(2366,4,4,562,'New mesh','2014-02-20 14:15:20','2014-02-20 14:15:33'),(2367,5,5,562,'(new addition)','2014-02-20 14:15:20','2014-02-20 14:15:20'),(2368,18,13,562,'(new addition)','2014-02-20 14:15:20','2014-02-20 14:15:20'),(2369,19,14,562,'(new addition)','2014-02-20 14:15:20','2014-02-20 14:15:20'),(2370,4,4,563,'Entry points','2014-02-20 14:16:43','2014-02-20 14:16:52'),(2371,5,5,563,'(new addition)','2014-02-20 14:16:43','2014-02-20 14:16:43'),(2372,18,13,563,'(new addition)','2014-02-20 14:16:43','2014-02-20 14:16:43'),(2373,19,14,563,'(new addition)','2014-02-20 14:16:43','2014-02-20 14:16:43'),(2374,4,4,564,'Mesh settings','2014-02-20 14:17:21','2014-02-20 14:17:33'),(2375,5,5,564,'(new addition)','2014-02-20 14:17:21','2014-02-20 14:17:21'),(2376,18,13,564,'(new addition)','2014-02-20 14:17:21','2014-02-20 14:17:21'),(2377,19,14,564,'(new addition)','2014-02-20 14:17:21','2014-02-20 14:17:21'),(2378,4,4,565,'Exit points','2014-02-20 14:17:59','2014-02-20 14:18:13'),(2379,5,5,565,'(new addition)','2014-02-20 14:17:59','2014-02-20 14:17:59'),(2380,18,13,565,'(new addition)','2014-02-20 14:17:59','2014-02-20 14:17:59'),(2381,19,14,565,'(new addition)','2014-02-20 14:17:59','2014-02-20 14:17:59'),(2382,4,4,566,'Node settings','2014-02-20 14:18:48','2014-02-20 14:19:38'),(2383,5,5,566,'(new addition)','2014-02-20 14:18:48','2014-02-20 14:18:48'),(2384,18,13,566,'(new addition)','2014-02-20 14:18:48','2014-02-20 14:18:48'),(2385,19,14,566,'(new addition)','2014-02-20 14:18:48','2014-02-20 14:18:48'),(2386,4,4,567,'Nodes','2014-02-20 14:19:15','2014-02-20 14:19:26'),(2387,5,5,567,'(new addition)','2014-02-20 14:19:15','2014-02-20 14:19:15'),(2388,18,13,567,'(new addition)','2014-02-20 14:19:15','2014-02-20 14:19:15'),(2389,19,14,567,'(new addition)','2014-02-20 14:19:15','2014-02-20 14:19:15'),(2390,4,4,568,'Map','2014-02-20 14:20:14','2014-02-20 14:20:24'),(2391,5,5,568,'(new addition)','2014-02-20 14:20:14','2014-02-20 14:20:14'),(2392,18,13,568,'(new addition)','2014-02-20 14:20:14','2014-02-20 14:20:14'),(2393,19,14,568,'(new addition)','2014-02-20 14:20:14','2014-02-20 14:20:14'),(2394,4,4,569,'Edit mesh entry point','2014-02-20 14:21:07','2014-02-20 14:21:22'),(2395,5,5,569,'(new addition)','2014-02-20 14:21:07','2014-02-20 14:21:07'),(2396,18,13,569,'(new addition)','2014-02-20 14:21:07','2014-02-20 14:21:07'),(2397,19,14,569,'(new addition)','2014-02-20 14:21:07','2014-02-20 14:21:07'),(2398,4,4,570,'Edit mesh exit point','2014-02-20 14:23:46','2014-02-20 14:24:04'),(2399,5,5,570,'(new addition)','2014-02-20 14:23:46','2014-02-20 14:23:46'),(2400,18,13,570,'(new addition)','2014-02-20 14:23:46','2014-02-20 14:23:46'),(2401,19,14,570,'(new addition)','2014-02-20 14:23:46','2014-02-20 14:23:46'),(2402,4,4,571,'MESHdesk overview','2014-02-20 14:28:48','2014-02-20 14:28:58'),(2403,5,5,571,'(new addition)','2014-02-20 14:28:48','2014-02-20 14:28:48'),(2404,18,13,571,'(new addition)','2014-02-20 14:28:48','2014-02-20 14:28:48'),(2405,19,14,571,'(new addition)','2014-02-20 14:28:48','2014-02-20 14:28:48'),(2406,4,4,572,'New mesh entry point added','2014-02-20 14:30:22','2014-02-20 14:30:46'),(2407,5,5,572,'(new addition)','2014-02-20 14:30:22','2014-02-20 14:30:22'),(2408,18,13,572,'(new addition)','2014-02-20 14:30:22','2014-02-20 14:30:22'),(2409,19,14,572,'(new addition)','2014-02-20 14:30:22','2014-02-20 14:30:22'),(2410,4,4,573,'New mesh enty point created fine','2014-02-20 14:31:26','2014-02-20 14:31:45'),(2411,5,5,573,'(new addition)','2014-02-20 14:31:26','2014-02-20 14:31:26'),(2412,18,13,573,'(new addition)','2014-02-20 14:31:26','2014-02-20 14:31:26'),(2413,19,14,573,'(new addition)','2014-02-20 14:31:26','2014-02-20 14:31:26'),(2414,4,4,574,'Item added fine','2014-02-20 14:35:25','2014-02-20 14:35:44'),(2415,5,5,574,'(new addition)','2014-02-20 14:35:25','2014-02-20 14:35:25'),(2416,18,13,574,'(new addition)','2014-02-20 14:35:25','2014-02-20 14:35:25'),(2417,19,14,574,'(new addition)','2014-02-20 14:35:25','2014-02-20 14:35:25'),(2418,4,4,575,'No entry points defined','2014-02-20 14:39:48','2014-02-20 14:40:08'),(2419,5,5,575,'(new addition)','2014-02-20 14:39:48','2014-02-20 14:39:48'),(2420,18,13,575,'(new addition)','2014-02-20 14:39:48','2014-02-20 14:39:48'),(2421,19,14,575,'(new addition)','2014-02-20 14:39:48','2014-02-20 14:39:48'),(2422,4,4,576,'Define some entry points first','2014-02-20 14:40:28','2014-02-20 14:40:45'),(2423,5,5,576,'(new addition)','2014-02-20 14:40:28','2014-02-20 14:40:28'),(2424,18,13,576,'(new addition)','2014-02-20 14:40:28','2014-02-20 14:40:28'),(2425,19,14,576,'(new addition)','2014-02-20 14:40:28','2014-02-20 14:40:28'),(2426,4,4,577,'Password changed','2014-02-20 14:45:00','2014-02-20 14:45:17'),(2427,5,5,577,'(new addition)','2014-02-20 14:45:00','2014-02-20 14:45:00'),(2428,18,13,577,'(new addition)','2014-02-20 14:45:00','2014-02-20 14:45:00'),(2429,19,14,577,'(new addition)','2014-02-20 14:45:00','2014-02-20 14:45:00'),(2430,4,4,578,'Password changed fine','2014-02-20 14:45:32','2014-02-20 14:45:48'),(2431,5,5,578,'(new addition)','2014-02-20 14:45:32','2014-02-20 14:45:32'),(2432,18,13,578,'(new addition)','2014-02-20 14:45:32','2014-02-20 14:45:32'),(2433,19,14,578,'(new addition)','2014-02-20 14:45:32','2014-02-20 14:45:32'),(2434,4,4,579,'Fetched password','2014-02-20 14:46:23','2014-02-20 14:46:37'),(2435,5,5,579,'(new addition)','2014-02-20 14:46:23','2014-02-20 14:46:23'),(2436,18,13,579,'(new addition)','2014-02-20 14:46:23','2014-02-20 14:46:23'),(2437,19,14,579,'(new addition)','2014-02-20 14:46:23','2014-02-20 14:46:23'),(2438,4,4,580,'Password fetched for selected user','2014-02-20 14:48:29','2014-02-20 15:28:20'),(2439,5,5,580,'(new addition)','2014-02-20 14:48:29','2014-02-20 14:48:29'),(2440,18,13,580,'(new addition)','2014-02-20 14:48:29','2014-02-20 14:48:29'),(2441,19,14,580,'(new addition)','2014-02-20 14:48:29','2014-02-20 14:48:29'),(2442,20,15,1,'Spain','2014-02-20 22:25:28','2014-02-21 14:43:28'),(2443,20,15,2,'EspaÃ±ol','2014-02-20 22:25:28','2014-02-21 14:00:58'),(2444,20,15,6,'Usuario','2014-02-20 22:25:28','2014-02-21 14:00:59'),(2445,20,15,7,'ContraseÃ±a','2014-02-20 22:25:28','2014-02-21 14:01:00'),(2446,20,15,10,'Introduzca el nombre de usuario','2014-02-20 22:25:28','2014-02-21 14:01:01'),(2447,20,15,11,'Introduzca la contraseÃ±a','2014-02-20 22:25:28','2014-02-21 14:01:03'),(2448,20,15,12,'OK','2014-02-20 22:25:28','2014-02-21 14:01:04'),(2449,20,15,13,'Por favor autenticar','2014-02-20 22:25:28','2014-02-21 14:01:05'),(2450,20,15,14,'Cambio de idioma, por favor, espere','2014-02-20 22:25:28','2014-02-21 14:01:06'),(2451,20,15,15,'Nuevo idioma seleccionado','2014-02-20 22:25:28','2014-02-21 14:01:07'),(2452,20,15,16,'Seleccione un idioma','2014-02-20 22:25:28','2014-02-21 14:01:08'),(2453,20,15,17,'Acerca de','2014-02-20 22:25:28','2014-02-21 14:01:09'),(2454,20,15,18,'Fallo','2014-02-20 22:25:28','2014-02-21 14:01:10'),(2455,20,15,19,'Volver a cargar','2014-02-20 22:25:28','2014-02-21 14:01:11'),(2456,20,15,20,'Agregar','2014-02-20 22:25:28','2014-02-21 14:01:12'),(2457,20,15,21,'Eliminar','2014-02-20 22:25:28','2014-02-21 14:01:13'),(2458,20,15,22,'Editar','2014-02-20 22:25:28','2014-02-21 14:01:14'),(2459,20,15,23,'Copia','2014-02-20 22:25:28','2014-02-21 14:01:15'),(2460,20,15,24,'Editar meta-info','2014-02-20 22:25:28','2014-02-21 14:01:16'),(2461,20,15,25,'Agregar comentario','2014-02-20 22:25:28','2014-02-21 14:01:17'),(2462,20,15,27,'Clave','2014-02-20 22:25:28','2014-02-21 14:01:18'),(2463,20,15,28,'Comentario','2014-02-20 22:25:28','2014-02-21 14:01:19'),(2464,20,15,29,'InglÃ©s (utilizar como referencia)','2014-02-20 22:25:28','2014-02-21 14:01:20'),(2465,20,15,30,'Traducido','2014-02-20 22:25:28','2014-02-21 14:01:21'),(2466,20,15,31,'Frases Javascript','2014-02-20 22:25:28','2014-02-21 14:01:22'),(2467,20,15,32,'PHP Frases','2014-02-20 22:25:28','2014-02-21 14:01:23'),(2468,20,15,34,'Hay elementos {count}','2014-02-20 22:25:28','2014-02-21 14:01:25'),(2469,20,15,35,'ConexiÃ³n','2014-02-20 22:25:28','2014-02-21 14:01:26'),(2470,20,15,36,'AcciÃ³n','2014-02-20 22:25:28','2014-02-21 14:01:27'),(2471,20,15,37,'SelecciÃ³n','2014-02-20 22:25:28','2014-02-21 14:01:28'),(2472,20,15,38,'Cerrar sesiÃ³n','2014-02-20 22:25:28','2014-02-21 14:01:29'),(2473,20,15,39,'Ajustes','2014-02-20 22:25:28','2014-02-21 14:01:30'),(2474,20,15,40,'Mosaico','2014-02-20 22:25:28','2014-02-21 14:01:31'),(2475,20,15,41,'Cascada','2014-02-20 22:25:28','2014-02-21 14:01:32'),(2476,20,15,42,'Restaurar','2014-02-20 22:25:28','2014-02-21 14:01:33'),(2477,20,15,43,'Minimizar','2014-02-20 22:25:28','2014-02-21 14:01:34'),(2478,20,15,44,'Maximizar','2014-02-20 22:25:28','2014-02-21 14:01:35'),(2479,20,15,45,'Cerrar','2014-02-20 22:25:28','2014-02-21 14:01:36'),(2480,20,15,46,'MenÃº','2014-02-20 22:25:28','2014-02-21 14:01:37'),(2481,20,15,47,'I18n Manager','2014-02-20 22:25:28','2014-02-21 14:01:38'),(2482,20,15,48,'Obtener Ayuda','2014-02-20 22:25:28','2014-02-21 14:01:39'),(2483,20,15,49,'GestiÃ³n de traducciÃ³n','2014-02-20 22:25:28','2014-02-21 14:01:41'),(2484,20,15,50,'Ayuda en lÃ­nea para la traducciÃ³n Manager','2014-02-20 22:25:28','2014-02-21 14:01:42'),(2485,20,15,51,'Seleccione un paÃ­s','2014-02-20 22:25:28','2014-02-21 14:01:43'),(2486,20,15,52,'Es necesario seleccionar un paÃ­s','2014-02-20 22:25:28','2014-02-21 14:01:44'),(2487,20,15,53,'PaÃ­s aÃ±adido','2014-02-20 22:25:28','2014-02-21 14:01:45'),(2488,20,15,54,'Nuevo paÃ­s agregado fino','2014-02-20 22:25:28','2014-02-21 14:01:46'),(2489,20,15,55,'EnvÃ­o de la informaciÃ³n','2014-02-20 22:25:28','2014-02-21 14:01:47'),(2490,20,15,56,'PaÃ­s','2014-02-20 22:25:28','2014-02-21 14:01:48'),(2491,20,15,57,'Idioma','2014-02-20 22:25:28','2014-02-21 14:01:49'),(2492,20,15,58,'Copiar frases de idioma','2014-02-20 22:25:28','2014-02-21 14:01:50'),(2493,20,15,59,'Idioma del paÃ­s','2014-02-20 22:25:28','2014-02-21 14:01:51'),(2494,20,15,60,'Agregar clave','2014-02-20 22:25:28','2014-02-21 14:01:52'),(2495,20,15,61,'Suministro la siguiente informaciÃ³n por favor','2014-02-20 22:25:28','2014-02-21 14:01:53'),(2496,20,15,62,'Nombre de la clave','2014-02-20 22:25:28','2014-02-21 14:01:54'),(2497,20,15,63,'Especifique un nombre vÃ¡lido para la clave','2014-02-20 22:25:28','2014-02-21 14:01:55'),(2498,20,15,64,'Siguiente','2014-02-20 22:25:28','2014-02-21 14:01:56'),(2499,20,15,65,'Elija una clave','2014-02-20 22:25:28','2014-02-21 14:01:57'),(2500,20,15,66,'Borrar paÃ­s','2014-02-20 22:25:28','2014-02-21 14:01:58'),(2501,20,15,67,'Seleccione el paÃ­s que desee eliminar. AsegÃºrese de saber quÃ© es lo que estÃ¡n haciendo.','2014-02-20 22:25:28','2014-02-21 14:01:59'),(2502,20,15,68,'Editar PaÃ­ses','2014-02-20 22:25:28','2014-02-21 14:02:00'),(2503,20,15,69,'Seleccione un paÃ­s para editar','2014-02-20 22:25:28','2014-02-21 14:02:01'),(2504,20,15,70,'Nombre del paÃ­s','2014-02-20 22:25:28','2014-02-21 14:02:03'),(2505,20,15,71,'Especifique un nombre vÃ¡lido, por favor','2014-02-20 22:25:28','2014-02-21 14:02:04'),(2506,20,15,72,'CÃ³digo ISO','2014-02-20 22:25:28','2014-02-21 14:02:05'),(2507,20,15,73,'Por ejemplo ZA o DE','2014-02-20 22:25:28','2014-02-21 14:02:06'),(2508,20,15,74,'Especificar un cÃ³digo de paÃ­s iso','2014-02-20 22:25:28','2014-02-21 14:02:07'),(2509,20,15,75,'Icono de bandera','2014-02-20 22:25:28','2014-02-21 14:02:08'),(2510,20,15,76,'Seleccione el icono','2014-02-20 22:25:28','2014-02-21 14:02:09'),(2511,20,15,77,'Monolitico','2014-02-20 22:25:28','2014-02-21 14:02:10'),(2512,20,15,78,'Elija un paÃ­s','2014-02-20 22:25:28','2014-02-21 14:02:11'),(2513,20,15,79,'Agregar idioma','2014-02-20 22:25:28','2014-02-21 14:02:12'),(2514,20,15,80,'Seleccione un paÃ­s para agregar un idioma.','2014-02-20 22:25:28','2014-02-21 14:02:13'),(2515,20,15,81,'TambiÃ©n puede optar por crear un nuevo paÃ­s.','2014-02-20 22:25:29','2014-02-21 14:02:14'),(2516,20,15,82,'Crear un nuevo paÃ­s','2014-02-20 22:25:29','2014-02-21 14:02:16'),(2517,20,15,84,'Por ejemplo pt o de','2014-02-20 22:25:29','2014-02-21 14:02:17'),(2518,20,15,85,'Especificar un cÃ³digo de idioma iso','2014-02-20 22:25:29','2014-02-21 14:02:18'),(2519,20,15,86,'Editar clave','2014-02-20 22:25:29','2014-02-21 14:02:19'),(2520,20,15,87,'Seleccione una clave para editar','2014-02-20 22:25:29','2014-02-21 14:02:20'),(2521,20,15,88,'Elegir un idioma existente para copiar','2014-02-20 22:25:29','2014-02-21 14:02:21'),(2522,20,15,89,'Idiomas disponibles','2014-02-20 22:25:29','2014-02-21 14:02:22'),(2523,20,15,90,'Eliminar idiomas','2014-02-20 22:25:29','2014-02-21 14:02:23'),(2524,20,15,91,'Seleccionar el idioma que se va a eliminar.','2014-02-20 22:25:29','2014-02-21 14:02:24'),(2525,20,15,92,'AsegÃºrese de saber quÃ© es lo que estÃ¡n haciendo.','2014-02-20 22:25:29','2014-02-21 14:02:25'),(2526,20,15,93,'Editar los idiomas','2014-02-20 22:25:29','2014-02-21 14:02:26'),(2527,20,15,94,'Seleccione un idioma para editar','2014-02-20 22:25:29','2014-02-21 14:02:27'),(2528,20,15,95,'Agregar Idmsg','2014-02-20 22:25:29','2014-02-21 14:02:28'),(2529,20,15,96,'Msgid','2014-02-20 22:25:29','2014-02-21 14:02:29'),(2530,20,15,97,'Msgstr','2014-02-20 22:25:29','2014-02-21 14:02:30'),(2531,20,15,98,'Comentario opcional','2014-02-20 22:25:29','2014-02-21 14:02:31'),(2532,20,15,99,'Quitar comentarios existentes','2014-02-20 22:25:29','2014-02-21 14:02:32'),(2533,20,15,100,'AÃ±adir comentario a idmsg','2014-02-20 22:25:29','2014-02-21 14:05:54'),(2534,20,15,101,'Copia de otro idioma','2014-02-20 22:25:29','2014-02-21 14:05:55'),(2535,20,15,102,'Mantener las traducciones existentes','2014-02-20 22:25:29','2014-02-21 14:05:56'),(2536,20,15,103,'Editar Idmsg','2014-02-20 22:25:29','2014-02-21 14:05:57'),(2537,20,15,104,'Valor anterior','2014-02-20 22:25:29','2014-02-21 14:05:58'),(2538,20,15,105,'Especificar los metadatos','2014-02-20 22:25:29','2014-02-21 14:05:59'),(2539,20,15,106,'Introduzca','2014-02-20 22:25:29','2014-02-21 14:06:00'),(2540,20,15,107,'Fuente','2014-02-20 22:25:29','2014-02-21 14:06:01'),(2541,20,15,108,'Destino','2014-02-20 22:25:29','2014-02-21 14:06:02'),(2542,20,15,109,'Seleccione algo','2014-02-20 22:25:29','2014-02-21 14:06:03'),(2543,20,15,110,'Seleccione algo de trabajo a','2014-02-20 22:25:29','2014-02-21 14:06:04'),(2544,20,15,111,'Confirmar','2014-02-20 22:25:29','2014-02-21 14:06:05'),(2545,20,15,112,'EstÃ¡ seguro de que desea hacerlo?','2014-02-20 22:25:29','2014-02-21 14:06:06'),(2546,20,15,113,'Elemento agregado','2014-02-20 22:25:29','2014-02-21 14:06:07'),(2547,20,15,114,'Nuevo elemento agregado fino','2014-02-20 22:25:29','2014-02-21 14:06:08'),(2548,20,15,115,'Base de datos actualizada','2014-02-20 22:25:29','2014-02-21 14:06:09'),(2549,20,15,116,'Base de datos se ha actualizado','2014-02-20 22:25:29','2014-02-21 14:06:10'),(2550,20,15,117,'Seleccione uno sÃ³lo','2014-02-20 22:25:29','2014-02-21 14:06:11'),(2551,20,15,118,'SelecciÃ³n limitada a un','2014-02-20 22:25:29','2014-02-21 14:06:12'),(2552,20,15,119,'Proveedores de Acceso','2014-02-20 22:25:29','2014-02-21 14:06:13'),(2553,20,15,120,'Usuario registrado','2014-02-20 22:25:29','2014-02-21 14:06:15'),(2554,20,15,121,'Seleccione un propietario','2014-02-20 22:25:29','2014-02-21 14:06:16'),(2555,20,15,122,'En primer lugar, seleccione un proveedor de acceso que serÃ¡ el propietario','2014-02-20 22:25:29','2014-02-21 14:06:17'),(2556,20,15,123,'Nuevo tema creado','2014-02-20 22:25:29','2014-02-21 14:06:18'),(2557,20,15,124,'Tema creado correctamente','2014-02-20 22:25:29','2014-02-21 14:06:19'),(2558,20,15,125,'Seleccionar un elemento','2014-02-20 22:25:29','2014-02-21 14:06:20'),(2559,20,15,126,'\"En primer lugar, seleccione un elemento\"','2014-02-20 22:25:29','2014-02-21 14:06:21'),(2560,20,15,127,'Tema actualizado','2014-02-20 22:25:29','2014-02-21 14:06:22'),(2561,20,15,128,'Tema actualizado correctamente','2014-02-20 22:25:29','2014-02-21 14:06:23'),(2562,20,15,129,'Elemento eliminado','2014-02-20 22:25:29','2014-02-21 14:06:24'),(2563,20,15,130,'Elemento eliminado correctamente','2014-02-20 22:25:29','2014-02-21 14:06:25'),(2564,20,15,131,'Problemas para borrar tema','2014-02-20 22:25:29','2014-02-21 14:06:26'),(2565,20,15,132,'Seleccione un nodo','2014-02-20 22:25:29','2014-02-21 14:06:27'),(2566,20,15,133,'En primer lugar, seleccione un nodo para ampliar','2014-02-20 22:25:29','2014-02-21 14:06:28'),(2567,20,15,134,'Derecho Cambiado','2014-02-20 22:25:29','2014-02-21 14:06:29'),(2568,20,15,136,'Problemas en cambio derecho','2014-02-20 22:25:29','2014-02-21 14:06:30'),(2569,20,15,137,'Hubo algunos problemas que se experimentan durante el cambio de derecho','2014-02-20 22:25:29','2014-02-21 14:06:31'),(2570,20,15,138,'Seleccione uno o mÃ¡s','2014-02-20 22:25:29','2014-02-21 14:06:33'),(2571,20,15,139,'Seleccione una o mÃ¡s columnas por favor','2014-02-20 22:25:29','2014-02-21 14:06:34'),(2572,20,15,140,'Limitar la selecciÃ³n','2014-02-20 22:25:29','2014-02-21 14:06:35'),(2573,20,15,141,'Administrador de derechos','2014-02-20 22:25:29','2014-02-21 14:06:36'),(2574,20,15,142,'GestiÃ³n de derechos','2014-02-20 22:25:29','2014-02-21 14:06:37'),(2575,20,15,143,'PodrÃ­ an acceso a objetos','2014-02-20 22:25:29','2014-02-21 14:06:38'),(2576,20,15,144,'Proveedor de acceso derechos','2014-02-20 22:25:29','2014-02-21 14:06:39'),(2577,20,15,145,'Derechos permanentes de los usuarios','2014-02-20 22:25:29','2014-02-21 14:06:40'),(2578,20,15,146,'En primer lugar, seleccione un nodo del Ã¡rbol en que se va a agregar un ACO entrada','2014-02-20 22:25:29','2014-02-21 14:06:41'),(2579,20,15,147,'Nodo raÃ­z seleccionado','2014-02-20 22:25:29','2014-02-21 14:06:42'),(2580,20,15,148,'No puede editar el nodo raÃ­z','2014-02-20 22:25:29','2014-02-21 14:06:43'),(2581,20,15,149,'Se ha producido un error','2014-02-20 22:25:29','2014-02-21 14:06:44'),(2582,20,15,150,'Ampliar','2014-02-20 22:25:29','2014-02-21 14:06:45'),(2583,20,15,151,'Nombre','2014-02-20 22:25:29','2014-02-21 14:06:46'),(2584,20,15,152,'Objetos de control de acceso (acos)','2014-02-20 22:25:29','2014-02-21 14:06:47'),(2585,20,15,153,'Permitir','2014-02-20 22:25:29','2014-02-21 14:06:48'),(2586,20,15,154,'Agregar ACO objeto','2014-02-20 22:25:29','2014-02-21 14:06:49'),(2587,20,15,155,'Nodo principal','2014-02-20 22:25:29','2014-02-21 14:06:50'),(2588,20,15,156,'Alias','2014-02-20 22:25:29','2014-02-21 14:06:51'),(2589,20,15,157,'DescripciÃ³n opcional','2014-02-20 22:25:29','2014-02-21 14:06:52'),(2590,20,15,158,'Guardar','2014-02-20 22:25:29','2014-02-21 14:06:53'),(2591,20,15,159,'Editar ACO objeto','2014-02-20 22:25:29','2014-02-21 14:06:54'),(2592,20,15,160,'Introduzca un valor','2014-02-20 22:25:29','2014-02-21 14:06:55'),(2593,20,15,161,'Proveedor de acceso predeterminado derechos','2014-02-20 22:25:29','2014-02-21 14:06:57'),(2594,20,15,162,'Problemas al actualizar la base de datos','2014-02-20 22:25:29','2014-02-21 14:06:58'),(2595,20,15,163,'Base de datos podrÃ­a no estar actualizada','2014-02-20 22:25:29','2014-02-21 14:06:59'),(2596,20,15,164,'Registre todos actividad','2014-02-20 22:25:29','2014-02-21 14:07:00'),(2597,20,15,165,'Propietario','2014-02-20 22:25:29','2014-02-21 14:07:01'),(2598,20,15,166,'Activar','2014-02-20 22:25:29','2014-02-21 14:07:02'),(2599,20,15,167,'InformaciÃ³n opcional','2014-02-20 22:25:29','2014-02-21 14:07:03'),(2600,20,15,168,'Apellido','2014-02-20 22:25:29','2014-02-21 14:07:04'),(2601,20,15,169,'TelÃ©fono','2014-02-20 22:25:29','2014-02-21 14:07:05'),(2602,20,15,170,'Correo electrÃ³nico','2014-02-20 22:25:29','2014-02-21 14:07:07'),(2603,20,15,171,'DirecciÃ³n','2014-02-20 22:25:29','2014-02-21 14:07:08'),(2604,20,15,172,'Monitor','2014-02-20 22:25:29','2014-02-21 14:07:09'),(2605,20,15,173,'SÃ­','2014-02-20 22:25:29','2014-02-21 14:07:10'),(2606,20,15,174,'No','2014-02-20 22:25:29','2014-02-21 14:07:11'),(2607,20,15,175,'Notas Existentes','2014-02-20 22:25:29','2014-02-21 14:07:12'),(2608,20,15,176,'Activo','2014-02-20 22:25:29','2014-02-21 14:07:13'),(2609,20,15,177,'Notas','2014-02-20 22:25:29','2014-02-21 14:07:14'),(2610,20,15,178,'Crear','2014-02-20 22:25:29','2014-02-21 14:07:15'),(2611,20,15,179,'Reinos','2014-02-20 22:25:29','2014-02-21 14:07:16'),(2612,20,15,180,'Leer','2014-02-20 22:25:29','2014-02-21 14:07:17'),(2613,20,15,181,'Actualizar','2014-02-20 22:25:29','2014-02-21 14:07:18'),(2614,20,15,182,'Actualizado derecho','2014-02-20 22:25:29','2014-02-21 14:07:19'),(2615,20,15,183,'Derecho se ha actualizado','2014-02-20 22:25:29','2014-02-21 14:07:20'),(2616,20,15,184,'Problemas al actualizar el derecho','2014-02-20 22:25:29','2014-02-21 14:07:21'),(2617,20,15,185,'No se puede actualizar','2014-02-20 22:25:29','2014-02-21 14:07:22'),(2618,20,15,186,'Derechos','2014-02-20 22:25:29','2014-02-21 14:07:23'),(2619,20,15,187,'Actividad','2014-02-20 22:25:29','2014-02-21 14:07:25'),(2620,20,15,188,'Reinos','2014-02-20 22:25:29','2014-02-21 14:07:26'),(2621,20,15,189,'Detalle','2014-02-20 22:25:29','2014-02-21 14:07:27'),(2622,20,15,190,'JerarquÃ­a Proveedor de acceso','2014-02-20 22:25:29','2014-02-21 14:07:28'),(2623,20,15,191,'Nuevo proveedor de acceso','2014-02-20 22:25:29','2014-02-21 14:07:29'),(2624,20,15,192,'Seleccione el principal proveedor de acceso','2014-02-20 22:25:29','2014-02-21 14:07:30'),(2625,20,15,193,'Administrador de dispositivos NAS','2014-02-20 22:25:29','2014-02-21 14:07:31'),(2626,20,15,194,'Los dispositivos NAS','2014-02-20 22:25:29','2014-02-21 14:07:32'),(2627,20,15,195,'Seleccione al menos un dominio','2014-02-20 22:25:29','2014-02-21 14:07:33'),(2628,20,15,196,'Seleccione uno o mÃ¡s dominios','2014-02-20 22:25:29','2014-02-21 14:07:34'),(2629,20,15,197,'En primer lugar, seleccione un elemento de etiqueta','2014-02-20 22:25:29','2014-02-21 14:07:35'),(2630,20,15,198,'Seleccionar una etiqueta','2014-02-20 22:25:29','2014-02-21 14:07:36'),(2631,20,15,199,'Seleccionar una etiqueta por favor','2014-02-20 22:25:29','2014-02-21 14:07:37'),(2632,20,15,200,'Modificar las etiquetas','2014-02-20 22:25:29','2014-02-21 14:07:38'),(2633,20,15,201,'Modificar las etiquetas bien','2014-02-20 22:25:29','2014-02-21 14:10:29'),(2634,20,15,202,'Apagado','2014-02-20 22:25:29','2014-02-21 14:10:30'),(2635,20,15,203,'Ping','2014-02-20 22:25:29','2014-02-21 14:10:31'),(2636,20,15,204,'Latido','2014-02-20 22:25:29','2014-02-21 14:10:32'),(2637,20,15,205,'MÃ©todo Monitor','2014-02-20 22:25:29','2014-02-21 14:10:33'),(2638,20,15,206,'InformaciÃ³n Requerida','2014-02-20 22:25:30','2014-02-21 14:10:34'),(2639,20,15,207,'DirecciÃ³n IP','2014-02-20 22:25:30','2014-02-21 14:10:35'),(2640,20,15,208,'Suministrar un valor','2014-02-20 22:25:30','2014-02-21 14:10:36'),(2641,20,15,209,'Secreto','2014-02-20 22:25:30','2014-02-21 14:10:37'),(2642,20,15,210,'Tipo','2014-02-20 22:25:30','2014-02-21 14:10:38'),(2643,20,15,211,'Puertos','2014-02-20 22:25:30','2014-02-21 14:10:39'),(2644,20,15,212,'Comunidad','2014-02-20 22:25:30','2014-02-21 14:10:41'),(2645,20,15,213,'Servidor','2014-02-20 22:25:30','2014-02-21 14:10:42'),(2646,20,15,214,'DescripciÃ³n','2014-02-20 22:25:30','2014-02-21 14:10:43'),(2647,20,15,215,'ConfiguraciÃ³n del Monitor','2014-02-20 22:25:30','2014-02-21 14:10:44'),(2648,20,15,216,'Latido es muerto despuÃ©s','2014-02-20 22:25:30','2014-02-21 14:10:45'),(2649,20,15,217,'ID Latido','2014-02-20 22:25:30','2014-02-21 14:10:46'),(2650,20,15,218,'Intervalo de ping','2014-02-20 22:25:30','2014-02-21 14:10:47'),(2651,20,15,219,'Longitud','2014-02-20 22:25:30','2014-02-21 14:10:48'),(2652,20,15,220,'Latitude','2014-02-20 22:25:30','2014-02-21 14:10:49'),(2653,20,15,221,'VisualizaciÃ³n de mapas','2014-02-20 22:25:30','2014-02-21 14:10:50'),(2654,20,15,222,'Registrar las solicitudes de autenticaciÃ³n','2014-02-20 22:25:30','2014-02-21 14:10:51'),(2655,20,15,223,'Cierre automÃ¡tico sesiones inactivas','2014-02-20 22:25:30','2014-02-21 14:10:52'),(2656,20,15,224,'Cierre automÃ¡tico tiempo de activaciÃ³n','2014-02-20 22:25:30','2014-02-21 14:10:53'),(2657,20,15,225,'Disponible para sub-proveedores','2014-02-20 22:25:30','2014-02-21 14:10:54'),(2658,20,15,226,'Tipo de conexiÃ³n','2014-02-20 22:25:30','2014-02-21 14:10:55'),(2659,20,15,227,'Poner a disposiciÃ³n de los proveedores','2014-02-20 22:25:30','2014-02-21 14:10:56'),(2660,20,15,228,'Poner a disposiciÃ³n de cualquier Ã¡mbito','2014-02-20 22:25:30','2014-02-21 14:10:57'),(2661,20,15,229,'Agregar dispositivo NAS','2014-02-20 22:25:30','2014-02-21 14:10:58'),(2662,20,15,230,'Seleccione el propietario del dispositivo','2014-02-20 22:25:30','2014-02-21 14:10:59'),(2663,20,15,231,'Elija un tipo de conexiÃ³n','2014-02-20 22:25:30','2014-02-21 14:11:00'),(2664,20,15,232,'Las credenciales de tÃºnel en OpenVPN','2014-02-20 22:25:30','2014-02-21 14:11:01'),(2665,20,15,233,'AVP combinaciÃ³n Ãºnica','2014-02-20 22:25:30','2014-02-21 14:11:02'),(2666,20,15,234,'Atributo','2014-02-20 22:25:30','2014-02-21 14:11:03'),(2667,20,15,235,'Valor','2014-02-20 22:25:30','2014-02-21 14:11:05'),(2668,20,15,236,'Valor para identificar el NAS con','2014-02-20 22:25:30','2014-02-21 14:11:06'),(2669,20,15,237,'AlimentaciÃ³n los siguientes','2014-02-20 22:25:30','2014-02-21 14:11:07'),(2670,20,15,238,'ConexiÃ³n','2014-02-20 22:25:30','2014-02-21 14:11:08'),(2671,20,15,239,'Agregar o quitar las etiquetas','2014-02-20 22:25:30','2014-02-21 14:11:09'),(2672,20,15,240,'Seleccione una acciÃ³n y una etiqueta','2014-02-20 22:25:30','2014-02-21 14:11:10'),(2673,20,15,241,'Mejoras','2014-02-20 22:25:30','2014-02-21 14:11:11'),(2674,20,15,242,'Mapas info','2014-02-20 22:25:30','2014-02-21 14:11:12'),(2675,20,15,243,'Nota','2014-02-20 22:25:30','2014-02-21 14:11:13'),(2676,20,15,244,'ExportaciÃ³n a CSV','2014-02-20 22:25:30','2014-02-21 14:11:14'),(2677,20,15,245,'Seleccione las columnas que desea incluir en CSV lista','2014-02-20 22:25:30','2014-02-21 14:11:15'),(2678,20,15,246,'Columnas','2014-02-20 22:25:30','2014-02-21 14:11:16'),(2679,20,15,247,'Ayuda en lÃ­nea','2014-02-20 22:25:30','2014-02-21 14:11:17'),(2680,20,15,248,'GestiÃ³n de Notas','2014-02-20 22:25:30','2014-02-21 14:11:18'),(2681,20,15,249,'Agregar una nota','2014-02-20 22:25:30','2014-02-21 14:11:19'),(2682,20,15,251,'Seleccione el propietario','2014-02-20 22:25:30','2014-02-21 14:11:20'),(2683,20,15,252,'Etiquetas','2014-02-20 22:25:30','2014-02-21 14:11:21'),(2684,20,15,253,'Etiqueta','2014-02-20 22:25:30','2014-02-21 14:11:22'),(2685,20,15,254,'Reinos manager','2014-02-20 22:25:30','2014-02-21 14:11:24'),(2686,20,15,255,'En primer lugar, seleccione un elemento para eliminar','2014-02-20 22:25:30','2014-02-21 14:11:25'),(2687,20,15,256,'Detalles de contacto','2014-02-20 22:25:30','2014-02-21 14:11:26'),(2688,20,15,257,'Fax','2014-02-20 22:25:30','2014-02-21 14:11:27'),(2689,20,15,258,'URL','2014-02-20 22:25:30','2014-02-21 14:11:28'),(2690,20,15,259,'NÃºmero de la calle','2014-02-20 22:25:30','2014-02-21 14:11:29'),(2691,20,15,260,'Calle','2014-02-20 22:25:30','2014-02-21 14:11:30'),(2692,20,15,261,'Ciudad / Barrio','2014-02-20 22:25:30','2014-02-21 14:11:31'),(2693,20,15,262,'Ciudad','2014-02-20 22:25:30','2014-02-21 14:11:32'),(2694,20,15,263,'UbicaciÃ³n','2014-02-20 22:25:30','2014-02-21 14:11:33'),(2695,20,15,264,'Celda','2014-02-20 22:25:30','2014-02-21 14:11:34'),(2696,20,15,265,'Logotipo','2014-02-20 22:25:30','2014-02-21 14:11:35'),(2697,20,15,266,'Agregar rango','2014-02-20 22:25:30','2014-02-21 14:11:36'),(2698,20,15,267,'Seleccione un propietario para el campo','2014-02-20 22:25:30','2014-02-21 14:11:37'),(2699,20,15,268,'Tags manager','2014-02-20 22:25:30','2014-02-21 14:11:38'),(2700,20,15,269,'Etiquetas dispositivo NAS','2014-02-20 22:25:30','2014-02-21 14:11:39'),(2701,20,15,270,'Nueva etiqueta para dispositivos NAS','2014-02-20 22:25:30','2014-02-21 14:11:40'),(2702,20,15,271,'Seleccione la etiqueta propietario','2014-02-20 22:25:30','2014-02-21 14:11:41'),(2703,20,15,272,'TambiÃ©n muestran a los proveedores','2014-02-20 22:25:30','2014-02-21 14:11:42'),(2704,20,15,273,'Para editar una etiqueta dispositivo NAS','2014-02-20 22:25:30','2014-02-21 14:11:43'),(2705,20,15,274,'Componente de Perfil manager','2014-02-20 22:25:30','2014-02-21 14:11:44'),(2706,20,15,275,'Nuevo componente de perfil','2014-02-20 22:25:30','2014-02-21 14:11:45'),(2707,20,15,276,'Seleccione el componente propietario','2014-02-20 22:25:30','2014-02-21 14:11:46'),(2708,20,15,277,'Componentes','2014-02-20 22:25:30','2014-02-21 14:11:47'),(2709,20,15,278,'Proveedor','2014-02-20 22:25:30','2014-02-21 14:11:48'),(2710,20,15,279,'Recuento de atributo','2014-02-20 22:25:30','2014-02-21 14:11:49'),(2711,20,15,280,'Respuesta de atributo','2014-02-20 22:25:30','2014-02-21 14:11:50'),(2712,20,15,281,'Nombre de atributo','2014-02-20 22:25:30','2014-02-21 14:11:51'),(2713,20,15,282,'Sustituir este valor','2014-02-20 22:25:30','2014-02-21 14:11:52'),(2714,20,15,283,'Unidades','2014-02-20 22:25:30','2014-02-21 14:11:53'),(2715,20,15,284,'Verificar','2014-02-20 22:25:30','2014-02-21 14:11:54'),(2716,20,15,285,'Respuesta','2014-02-20 22:25:30','2014-02-21 14:11:55'),(2717,20,15,286,'Perfiles manager','2014-02-20 22:25:30','2014-02-21 14:11:56'),(2718,20,15,287,'Perfiles','2014-02-20 22:25:30','2014-02-21 14:11:57'),(2719,20,15,288,'El Operador','2014-02-20 22:25:30','2014-02-21 14:11:58'),(2720,20,15,289,'Seleccione un proveedor','2014-02-20 22:25:30','2014-02-21 14:11:59'),(2721,20,15,290,'Seleccione un atributo','2014-02-20 22:25:30','2014-02-21 14:12:00'),(2722,20,15,291,'Quitar','2014-02-20 22:25:30','2014-02-21 14:12:01'),(2723,20,15,292,'Agregar o quitar componentes','2014-02-20 22:25:30','2014-02-21 14:12:03'),(2724,20,15,293,'Editar perfil','2014-02-20 22:25:31','2014-02-21 14:12:04'),(2725,20,15,294,'Seleccione una acciÃ³n','2014-02-20 22:25:31','2014-02-21 14:12:05'),(2726,20,15,295,'Componente de perfil','2014-02-20 22:25:31','2014-02-21 14:12:06'),(2727,20,15,296,'Prioridad','2014-02-20 22:25:31','2014-02-21 14:12:07'),(2728,20,15,297,'Modificar perfiles','2014-02-20 22:25:31','2014-02-21 14:12:08'),(2729,20,15,298,'Profiles_modified_fine','2014-02-20 22:25:31','2014-02-21 14:12:09'),(2730,20,15,299,'Componentes del perfil','2014-02-20 22:25:31','2014-02-21 14:12:10'),(2731,20,15,300,'AÃ±adir el componente','2014-02-20 22:25:31','2014-02-21 14:12:11'),(2732,20,15,301,'Retirar el componente','2014-02-20 22:25:31','2014-02-21 14:12:12'),(2733,20,15,302,'Hacer privado','2014-02-20 22:25:31','2014-02-21 14:12:13'),(2734,20,15,303,'Seleccione un elemento para agregar o quitar','2014-02-20 22:25:31','2014-02-21 14:12:14'),(2735,20,15,304,'Los usuarios permanentes','2014-02-20 22:25:31','2014-02-21 14:12:15'),(2736,20,15,305,'Nuevo usuario permanente','2014-02-20 22:25:31','2014-02-21 14:12:16'),(2737,20,15,306,'InformaciÃ³n bÃ¡sica','2014-02-20 22:25:31','2014-02-21 14:12:17'),(2738,20,15,307,'Perfil','2014-02-20 22:25:31','2014-02-21 14:12:18'),(2739,20,15,308,'Tipo de tapa','2014-02-20 22:25:31','2014-02-21 14:12:19'),(2740,20,15,309,'InformaciÃ³n Personal','2014-02-20 22:25:31','2014-02-21 14:12:20'),(2741,20,15,310,'Activar y expiran','2014-02-20 22:25:31','2014-02-21 14:12:21'),(2742,20,15,311,'Siempre activo','2014-02-20 22:25:31','2014-02-21 14:12:22'),(2743,20,15,312,'Desde','2014-02-20 22:25:31','2014-02-21 14:12:23'),(2744,20,15,313,'A','2014-02-20 22:25:31','2014-02-21 14:12:24'),(2745,20,15,314,'Seguimiento','2014-02-20 22:25:31','2014-02-21 14:12:25'),(2746,20,15,315,'AutenticaciÃ³n RADIUS','2014-02-20 22:25:31','2014-02-21 14:12:26'),(2747,20,15,316,'RADIUS','2014-02-20 22:25:31','2014-02-21 14:12:27'),(2748,20,15,317,'Disco duro','2014-02-20 22:25:31','2014-02-21 14:12:28'),(2749,20,15,318,'Suave','2014-02-20 22:25:31','2014-02-21 14:12:29'),(2750,20,15,319,'Tipo de autenticaciÃ³n','2014-02-20 22:25:31','2014-02-21 14:12:30'),(2751,20,15,320,'BYOD manager','2014-02-20 22:25:31','2014-02-21 14:12:31'),(2752,20,15,321,'Vales','2014-02-20 22:25:31','2014-02-21 14:12:32'),(2753,20,15,322,'Monitor de Actividad','2014-02-20 22:25:31','2014-02-21 14:12:33'),(2754,20,15,323,'Dispositivos registrados','2014-02-20 22:25:31','2014-02-21 14:12:34'),(2755,20,15,324,'Dispositivos no reclamados','2014-02-20 22:25:31','2014-02-21 14:12:35'),(2756,20,15,325,'DirecciÃ³n MAC','2014-02-20 22:25:31','2014-02-21 14:12:36'),(2757,20,15,326,'Datos de autenticaciÃ³n','2014-02-20 22:25:31','2014-02-21 14:12:37'),(2758,20,15,327,'Datos de contabilidad','2014-02-20 22:25:31','2014-02-21 14:12:38'),(2759,20,15,328,'En {in} Fuera {out} Total {total}','2014-02-20 22:25:31','2014-02-21 14:12:39'),(2760,20,15,329,'NAS port id','2014-02-20 22:25:31','2014-02-21 14:12:40'),(2761,20,15,330,'Tipo de puerto NAS','2014-02-20 22:25:31','2014-02-21 14:12:41'),(2762,20,15,331,'Hora de inicio','2014-02-20 22:25:31','2014-02-21 14:12:42'),(2763,20,15,332,'Tiempo de parada','2014-02-20 22:25:31','2014-02-21 14:12:43'),(2764,20,15,333,'FreeRADIUS info','2014-02-20 22:25:31','2014-02-21 14:12:44'),(2765,20,15,334,'Dispositivos','2014-02-20 22:25:31','2014-02-21 14:12:45'),(2766,20,15,335,'Atributos privados','2014-02-20 22:25:31','2014-02-21 14:12:46'),(2767,20,15,336,'Aceptar tiempo Pasado','2014-02-20 22:25:31','2014-02-21 14:12:47'),(2768,20,15,337,'Aceptar nas Pasado','2014-02-20 22:25:31','2014-02-21 14:12:48'),(2769,20,15,338,'Rechazar tiempo Pasado','2014-02-20 22:25:31','2014-02-21 14:12:49'),(2770,20,15,339,'Rechazar nas Pasado','2014-02-20 22:25:31','2014-02-21 14:12:50'),(2771,20,15,340,'Ltimo mensaje de rechazo','2014-02-20 22:25:31','2014-02-21 14:12:51'),(2772,20,15,341,'Nuevo dispositivo','2014-02-20 22:25:31','2014-02-21 14:12:52'),(2773,20,15,342,'Activar / Desactivar','2014-02-20 22:25:31','2014-02-21 14:12:53'),(2774,20,15,343,'Habilitar','2014-02-20 22:25:31','2014-02-21 14:12:54'),(2775,20,15,344,'Desactivar','2014-02-20 22:25:31','2014-02-21 14:12:55'),(2776,20,15,345,'En primer lugar, seleccione el elemento que desea modificar','2014-02-20 22:25:31','2014-02-21 14:12:56'),(2777,20,15,346,'Los artÃ­culos modificados','2014-02-20 22:25:31','2014-02-21 14:12:57'),(2778,20,15,347,'Los artÃ­culos modificados correctamente','2014-02-20 22:25:31','2014-02-21 14:12:58'),(2779,20,15,348,'Fecha de FinalizaciÃ³n incorrecta','2014-02-20 22:25:31','2014-02-21 14:12:59'),(2780,20,15,349,'La fecha de finalizaciÃ³n debe ser posterior a la start_date','2014-02-20 22:25:31','2014-02-21 14:13:01'),(2781,20,15,350,'Fecha de inicio incorrecto','2014-02-20 22:25:31','2014-02-21 14:13:02'),(2782,20,15,351,'La fecha de inicio debe ser anterior a la fecha de finalizaciÃ³n','2014-02-20 22:25:31','2014-02-21 14:13:03'),(2783,20,15,352,'Cambiar la contraseÃ±a','2014-02-20 22:25:32','2014-02-21 14:13:04'),(2784,20,15,353,'Cambiar la contraseÃ±a','2014-02-20 22:25:32','2014-02-21 14:13:05'),(2785,20,15,354,'Cambiar fondo','2014-02-20 22:25:32','2014-02-21 14:13:06'),(2786,20,15,355,'Papel tapiz cambiado bien','2014-02-20 22:25:32','2014-02-21 14:13:07'),(2787,20,15,356,'Groupname','2014-02-20 22:25:32','2014-02-21 14:13:08'),(2788,20,15,357,'DirecciÃ³n IP de NAS','2014-02-20 22:25:32','2014-02-21 14:13:09'),(2789,20,15,358,'Tiempo de espera de la sesiÃ³n','2014-02-20 22:25:32','2014-02-21 14:13:10'),(2790,20,15,359,'Cuenta autÃ©nticos','2014-02-20 22:25:32','2014-02-21 14:13:11'),(2791,20,15,360,'Inicio informaciÃ³n de conexiÃ³n','2014-02-20 22:25:32','2014-02-21 14:13:12'),(2792,20,15,361,'Parada informaciÃ³n de conexiÃ³n','2014-02-20 22:25:32','2014-02-21 14:13:13'),(2793,20,15,362,'Los datos de','2014-02-20 22:25:32','2014-02-21 14:13:14'),(2794,20,15,363,'Salida de datos','2014-02-20 22:25:32','2014-02-21 14:13:15'),(2795,20,15,364,'Id de estaciÃ³n de llamada','2014-02-20 22:25:32','2014-02-21 14:13:16'),(2796,20,15,365,'Calling station id (MAC)','2014-02-20 22:25:32','2014-02-21 14:13:17'),(2797,20,15,366,'Terminar causa','2014-02-20 22:25:32','2014-02-21 14:13:18'),(2798,20,15,367,'Tipo de servicio','2014-02-20 22:25:32','2014-02-21 14:13:19'),(2799,20,15,368,'Marco protocolo','2014-02-20 22:25:32','2014-02-21 14:13:20'),(2800,20,15,369,'Enmarcado DirecciÃ³n IP','2014-02-20 22:25:32','2014-02-21 14:13:21'),(2801,20,15,370,'Retardo de arranque Cta.','2014-02-20 22:25:32','2014-02-21 14:13:22'),(2802,20,15,371,'Retardo de parada Cta.','2014-02-20 22:25:32','2014-02-21 14:13:23'),(2803,20,15,372,'X Subir sesiones clave serv.','2014-02-20 22:25:32','2014-02-21 14:13:24'),(2804,20,15,373,'Nasname','2014-02-20 22:25:32','2014-02-21 14:13:25'),(2805,20,15,374,'Fecha','2014-02-20 22:25:32','2014-02-21 14:13:26'),(2806,20,15,375,'Volver a cargar cada','2014-02-20 22:25:32','2014-02-21 14:13:27'),(2807,20,15,376,'30 Segundos','2014-02-20 22:25:32','2014-02-21 14:13:29'),(2808,20,15,377,'1 Minuto','2014-02-20 22:25:32','2014-02-21 14:13:30'),(2809,20,15,378,'5 Minutos','2014-02-20 22:25:32','2014-02-21 14:13:31'),(2810,20,15,379,'Detener recarga automÃ¡tica','2014-02-20 22:25:32','2014-02-21 14:13:32'),(2811,20,15,380,'Papel tapiz','2014-02-20 22:25:32','2014-02-21 14:13:33'),(2812,20,15,381,'Id. de sesiÃ³n Cta.','2014-02-20 22:25:32','2014-02-21 14:13:34'),(2813,20,15,382,'Cta id Ãºnico','2014-02-20 22:25:32','2014-02-21 14:13:35'),(2814,20,15,383,'Tipo de Usuario','2014-02-20 22:25:32','2014-02-21 14:13:36'),(2815,20,15,384,'En OpenVPN','2014-02-20 22:25:32','2014-02-21 14:13:37'),(2816,20,15,387,'Establecida por el servidor','2014-02-20 22:25:32','2014-02-21 14:13:38'),(2817,20,15,388,'NAS','2014-02-20 22:25:32','2014-02-21 14:13:39'),(2818,20,15,389,'En OpenVPN credenciales','2014-02-20 22:25:32','2014-02-21 14:13:40'),(2819,20,15,390,'AVP detalle dinÃ¡mico','2014-02-20 22:25:32','2014-02-21 14:13:41'),(2820,20,15,391,'Ejemplo','2014-02-20 22:25:32','2014-02-21 14:13:42'),(2821,20,15,392,'PPTP credenciales','2014-02-20 22:25:32','2014-02-21 14:13:43'),(2822,20,15,393,'PPTP','2014-02-20 22:25:32','2014-02-21 14:13:44'),(2823,20,15,394,'Ignorar solicitudes de cuentas','2014-02-20 22:25:32','2014-02-21 14:13:45'),(2824,20,15,395,'Google Maps','2014-02-20 22:25:32','2014-02-21 14:13:46'),(2825,20,15,396,'InformaciÃ³n del dispositivo','2014-02-20 22:25:32','2014-02-21 14:13:47'),(2826,20,15,397,'Cancelar','2014-02-20 22:25:32','2014-02-21 14:13:48'),(2827,20,15,398,'AcciÃ³n requerida','2014-02-20 22:25:32','2014-02-21 14:13:49'),(2828,20,15,399,'Nueva posiciÃ³n','2014-02-20 22:25:32','2014-02-21 14:13:50'),(2829,20,15,400,'Basta con arrastrar un marcador a una posicion diferente y haga clic en el botÃ³n eliminar en la ven','2014-02-20 22:25:32','2014-02-21 14:15:07'),(2830,20,15,401,'Eliminar un marcador','2014-02-20 22:25:32','2014-02-21 14:15:09'),(2831,20,15,402,'Editar un marcador','2014-02-20 22:25:32','2014-02-21 14:15:10'),(2832,20,15,403,'Basta con arrastrar un marcador a una posicion diferente y haga clic en el botÃ³n guardar en la vent','2014-02-20 22:25:32','2014-02-21 14:15:11'),(2833,20,15,404,'Agregar un marcador','2014-02-20 22:25:32','2014-02-21 14:15:12'),(2834,20,15,405,'Seleccione un dispositivo NAS','2014-02-20 22:25:32','2014-02-21 14:15:13'),(2835,20,15,406,'Estado Actual','2014-02-20 22:25:32','2014-02-21 14:15:14'),(2836,20,15,407,'Arriba','2014-02-20 22:25:32','2014-02-21 14:15:15'),(2837,20,15,408,'Hacia abajo','2014-02-20 22:25:32','2014-02-21 14:15:16'),(2838,20,15,409,'Desconocido','2014-02-20 22:25:32','2014-02-21 14:15:17'),(2839,20,15,410,'Estado','2014-02-20 22:25:32','2014-02-21 14:15:18'),(2840,20,15,411,'Preferencias','2014-02-20 22:25:32','2014-02-21 14:15:19'),(2841,20,15,412,'HÃ­brido','2014-02-20 22:25:32','2014-02-21 14:15:20'),(2842,20,15,413,'GuÃ­a','2014-02-20 22:25:32','2014-02-21 14:15:21'),(2843,20,15,414,'SatÃ©lite','2014-02-20 22:25:33','2014-02-21 14:15:22'),(2844,20,15,415,'Terreno','2014-02-20 22:25:33','2014-02-21 14:15:23'),(2845,20,15,416,'InstantÃ¡nea','2014-02-20 22:25:33','2014-02-21 14:15:24'),(2846,20,15,417,'Las contraseÃ±as no coinciden','2014-02-20 22:25:33','2014-02-21 14:15:25'),(2847,20,15,418,'Estado','2014-02-20 22:25:33','2014-02-21 14:15:26'),(2848,20,15,419,'DuraciÃ³n','2014-02-20 22:25:33','2014-02-21 14:15:27'),(2849,20,15,420,'Iniciado','2014-02-20 22:25:33','2014-02-21 14:15:28'),(2850,20,15,421,'Terminado','2014-02-20 22:25:33','2014-02-21 14:15:29'),(2851,20,15,422,'Logotipo actual','2014-02-20 22:25:33','2014-02-21 14:15:30'),(2852,20,15,423,'Seleccione una imagen','2014-02-20 22:25:33','2014-02-21 14:15:31'),(2853,20,15,424,'Nuevo logotipo','2014-02-20 22:25:33','2014-02-21 14:15:32'),(2854,20,15,425,'Visor del Archivo','2014-02-20 22:25:33','2014-02-21 14:15:33'),(2855,20,15,426,'Salida de depuraciÃ³n','2014-02-20 22:25:33','2014-02-21 14:15:34'),(2856,20,15,427,'Borrar la pantalla','2014-02-20 22:25:33','2014-02-21 14:15:35'),(2857,20,15,428,'Stop FreeRADIUS','2014-02-20 22:25:33','2014-02-21 14:15:36'),(2858,20,15,429,'FreeRADIUS Inicio','2014-02-20 22:25:33','2014-02-21 14:15:37'),(2859,20,15,430,'Start / Stop FreeRADIUS','2014-02-20 22:25:33','2014-02-21 14:15:38'),(2860,20,15,431,'RecepciÃ³n de nuevos datos del archivo','2014-02-20 22:25:33','2014-02-21 14:15:39'),(2861,20,15,432,'Espera de los nuevos datos del archivo','2014-02-20 22:25:33','2014-02-21 14:15:40'),(2862,20,15,433,'AÃ±adir tiempo de depuraciÃ³n','2014-02-20 22:25:33','2014-02-21 14:15:41'),(2863,20,15,434,'Start debug','2014-02-20 22:25:33','2014-02-21 14:15:42'),(2864,20,15,435,'Detener depuraciÃ³n','2014-02-20 22:25:33','2014-02-21 14:15:43'),(2865,20,15,436,'Los filtros','2014-02-20 22:25:33','2014-02-21 14:15:44'),(2866,20,15,437,'Cualquier dispositivo NAS','2014-02-20 22:25:33','2014-02-21 14:15:45'),(2867,20,15,438,'Cualquier usuario','2014-02-20 22:25:33','2014-02-21 14:15:46'),(2868,20,15,439,'Cliente RADIUS','2014-02-20 22:25:33','2014-02-21 14:15:47'),(2869,20,15,440,'AutenticaciÃ³n','2014-02-20 22:25:33','2014-02-21 14:15:48'),(2870,20,15,441,'Contabilidad','2014-02-20 22:25:33','2014-02-21 14:15:49'),(2871,20,15,442,'Permanentes de los usuarios','2014-02-20 22:25:33','2014-02-21 14:15:50'),(2872,20,15,443,'Dispositivo','2014-02-20 22:25:33','2014-02-21 14:15:51'),(2873,20,15,444,'Tipo de solicitud','2014-02-20 22:25:33','2014-02-21 14:15:52'),(2874,20,15,445,'PÃ¡ginas de inicio dinÃ¡mica','2014-02-20 22:25:33','2014-02-21 14:15:53'),(2875,20,15,446,'Agregar pÃ¡ginas dinÃ¡micas','2014-02-20 22:25:33','2014-02-21 14:15:54'),(2876,20,15,447,'Seleccione un propietario de la pÃ¡gina de inicio','2014-02-20 22:25:33','2014-02-21 14:15:56'),(2877,20,15,448,'Fotos','2014-02-20 22:25:33','2014-02-21 14:15:57'),(2878,20,15,449,'AÃ±adir una foto','2014-02-20 22:25:33','2014-02-21 14:15:58'),(2879,20,15,450,'TÃ­tulo','2014-02-20 22:25:33','2014-02-21 14:15:59'),(2880,20,15,451,'Foto','2014-02-20 22:25:33','2014-02-21 14:16:00'),(2881,20,15,452,'Editar foto','2014-02-20 22:25:33','2014-02-21 14:16:01'),(2882,20,15,453,'Foto opcional','2014-02-20 22:25:33','2014-02-21 14:16:02'),(2883,20,15,454,'Propias pÃ¡ginas','2014-02-20 22:25:33','2014-02-21 14:16:03'),(2884,20,15,455,'Claves dinÃ¡micas','2014-02-20 22:25:33','2014-02-21 14:16:04'),(2885,20,15,456,'Contenido','2014-02-20 22:25:33','2014-02-21 14:16:05'),(2886,20,15,457,'Editar par dinÃ¡mico','2014-02-20 22:25:33','2014-02-21 14:16:06'),(2887,20,15,458,'Editar la propia pÃ¡gina','2014-02-20 22:25:33','2014-02-21 14:16:07'),(2888,20,15,459,'Agregar par dinÃ¡mico','2014-02-20 22:25:33','2014-02-21 14:16:08'),(2889,20,15,460,'Agregar pÃ¡gina web propia','2014-02-20 22:25:33','2014-02-21 14:16:09'),(2890,20,15,461,'No hay imÃ¡genes disponibles','2014-02-20 22:25:33','2014-02-21 14:16:10'),(2891,20,15,462,'Elemento actualizado','2014-02-20 22:25:33','2014-02-21 14:16:11'),(2892,20,15,463,'Tema se ha actualizado','2014-02-20 22:25:33','2014-02-21 14:16:12'),(2893,20,15,464,'Problemas al actualizar tema','2014-02-20 22:25:33','2014-02-21 14:16:13'),(2894,20,15,465,'Tema no se puede actualizar','2014-02-20 22:25:33','2014-02-21 14:16:14'),(2895,20,15,466,'Un moderno basados en web front-end de FreeRADIUS','2014-02-20 22:25:33','2014-02-21 14:16:15'),(2896,20,15,467,'Sobre RADIUSdesk','2014-02-20 22:25:33','2014-02-21 14:16:16'),(2897,20,15,468,'NAS-identificador','2014-02-20 22:25:33','2014-02-21 14:16:17'),(2898,20,15,469,'Comando','2014-02-20 22:25:33','2014-02-21 14:16:18'),(2899,20,15,470,'Creado','2014-02-20 22:25:33','2014-02-21 14:16:19'),(2900,20,15,471,'Modificado','2014-02-20 22:25:33','2014-02-21 14:16:20'),(2901,20,15,472,'Agregar un comando','2014-02-20 22:25:33','2014-02-21 14:16:21'),(2902,20,15,473,'En Espera','2014-02-20 22:25:33','2014-02-21 14:16:22'),(2903,20,15,474,'Obtiene','2014-02-20 22:25:33','2014-02-21 14:16:23'),(2904,20,15,475,'Nuevo asiento','2014-02-20 22:25:33','2014-02-21 14:16:24'),(2905,20,15,476,'Preceden a cadena','2014-02-20 22:25:33','2014-02-21 14:16:25'),(2906,20,15,477,'Â¿CuÃ¡ntos?','2014-02-20 22:25:33','2014-02-21 14:16:26'),(2907,20,15,478,'Nombre del Lote','2014-02-20 22:25:33','2014-02-21 14:16:27'),(2908,20,15,479,'Activarse al iniciar sesiÃ³n por primera vez','2014-02-20 22:25:33','2014-02-21 14:16:28'),(2909,20,15,480,'DÃ­as despuÃ©s de la primera sesiÃ³n','2014-02-20 22:25:33','2014-02-21 14:16:29'),(2910,20,15,481,'No caducan','2014-02-20 22:25:33','2014-02-21 14:16:30'),(2911,20,15,482,'Caducar','2014-02-20 22:25:33','2014-02-21 14:16:31'),(2912,20,15,483,'Longitud de la contraseÃ±a','2014-02-20 22:25:33','2014-02-21 14:16:32'),(2913,20,15,484,'Lote','2014-02-20 22:25:34','2014-02-21 14:16:33'),(2914,20,15,485,'Nuevo','2014-02-20 22:25:34','2014-02-21 14:16:34'),(2915,20,15,486,'Usa','2014-02-20 22:25:34','2014-02-21 14:16:35'),(2916,20,15,487,'Agotado','2014-02-20 22:25:34','2014-02-21 14:16:36'),(2917,20,15,488,'Caducado','2014-02-20 22:25:34','2014-02-21 14:16:37'),(2918,20,15,489,'(Un solo asiento)','2014-02-20 22:25:34','2014-02-21 14:16:38'),(2919,20,15,490,'Tiempo utilizado (%)','2014-02-20 22:25:34','2014-02-21 14:16:39'),(2920,20,15,491,'Los datos utilizados ( %)','2014-02-20 22:25:34','2014-02-21 14:16:40'),(2921,20,15,492,'El tipo de datos','2014-02-20 22:25:34','2014-02-21 14:16:41'),(2922,20,15,493,'Tipo de tapa de tiempo','2014-02-20 22:25:34','2014-02-21 14:16:42'),(2923,20,15,494,'Vale','2014-02-20 22:25:34','2014-02-21 14:16:43'),(2924,20,15,495,'Formato de salida','2014-02-20 22:25:34','2014-02-21 14:16:44'),(2925,20,15,496,'Generar PDF','2014-02-20 22:25:34','2014-02-21 14:16:45'),(2926,20,15,497,'SÃ³lo los elementos seleccionados','2014-02-20 22:25:34','2014-02-21 14:16:47'),(2927,20,15,498,'SÃ³lo los seleccionados','2014-02-20 22:25:34','2014-02-21 14:16:48'),(2928,20,15,499,'Nada para exportar','2014-02-20 22:25:34','2014-02-21 14:16:49'),(2929,20,15,500,'Lista estÃ¡ vacÃ­a','2014-02-20 22:25:34','2014-02-21 14:16:50'),(2930,20,15,501,'Vale exportar a pdf','2014-02-20 22:25:34','2014-02-21 14:16:51'),(2931,20,15,502,'Identificador de NAS','2014-02-20 22:25:34','2014-02-21 14:16:52'),(2932,20,15,503,'Password manager','2014-02-20 22:25:34','2014-02-21 14:16:53'),(2933,20,15,504,'Cifrado','2014-02-20 22:25:34','2014-02-21 14:16:54'),(2934,20,15,505,'Conecta con','2014-02-20 22:25:34','2014-02-21 14:16:55'),(2935,20,15,506,'Modelo de Hardware','2014-02-20 22:25:34','2014-02-21 14:16:56'),(2936,20,15,507,'Puntos de entrada estÃ¡tica','2014-02-20 22:25:34','2014-02-21 14:16:57'),(2937,20,15,508,'Puntos de salida estÃ¡tica','2014-02-20 22:25:34','2014-02-21 14:16:58'),(2938,20,15,509,'WEP','2014-02-20 22:25:34','2014-02-21 14:16:59'),(2939,20,15,510,'WPA Personal','2014-02-20 22:25:34','2014-02-21 14:17:00'),(2940,20,15,511,'WPA2 Personal','2014-02-20 22:25:34','2014-02-21 14:17:01'),(2941,20,15,512,'WPA Enterprise','2014-02-20 22:25:34','2014-02-21 14:17:02'),(2942,20,15,513,'WPA2 Enterprise','2014-02-20 22:25:34','2014-02-21 14:17:03'),(2943,20,15,514,'Oculto','2014-02-20 22:25:34','2014-02-21 14:17:04'),(2944,20,15,515,'Aislamiento de cliente','2014-02-20 22:25:34','2014-02-21 14:17:05'),(2945,20,15,516,'Aplicar a todos los nodos','2014-02-20 22:25:34','2014-02-21 14:17:06'),(2946,20,15,517,'Ninguno','2014-02-20 22:25:34','2014-02-21 14:17:07'),(2947,20,15,518,'SSID','2014-02-20 22:25:34','2014-02-21 14:17:08'),(2948,20,15,519,'BSSID','2014-02-20 22:25:34','2014-02-21 14:17:09'),(2949,20,15,520,'NÃºmero de nodos','2014-02-20 22:25:34','2014-02-21 14:17:10'),(2950,20,15,521,'Los nodos de','2014-02-20 22:25:34','2014-02-21 14:17:11'),(2951,20,15,522,'Nodos','2014-02-20 22:25:34','2014-02-21 14:17:12'),(2952,20,15,523,'Nadie','2014-02-20 22:25:34','2014-02-21 14:17:13'),(2953,20,15,524,'DetecciÃ³n automÃ¡tica','2014-02-20 22:25:34','2014-02-21 14:17:14'),(2954,20,15,525,'Hardware','2014-02-20 22:25:34','2014-02-21 14:17:15'),(2955,20,15,526,'AlimentaciÃ³n','2014-02-20 22:25:34','2014-02-21 14:17:16'),(2956,20,15,527,'Las entradas estÃ¡ticas','2014-02-20 22:25:34','2014-02-21 14:17:17'),(2957,20,15,528,'Salidas EstÃ¡ticas','2014-02-20 22:25:34','2014-02-21 14:17:19'),(2958,20,15,529,'Aislamiento de PA','2014-02-20 22:25:34','2014-02-21 14:17:20'),(2959,20,15,530,'Puente PrevenciÃ³n de bucles','2014-02-20 22:25:34','2014-02-21 14:17:21'),(2960,20,15,531,'AgregaciÃ³n','2014-02-20 22:25:34','2014-02-21 14:17:22'),(2961,20,15,532,'El pegado','2014-02-20 22:25:34','2014-02-21 14:17:23'),(2962,20,15,533,'FragmentaciÃ³n','2014-02-20 22:25:34','2014-02-21 14:17:24'),(2963,20,15,534,'Intervalo OGM (ms)','2014-02-20 22:25:34','2014-02-21 14:17:25'),(2964,20,15,535,'ConmutaciÃ³n de enlace','2014-02-20 22:25:34','2014-02-21 14:17:26'),(2965,20,15,536,'Intervalo de latido','2014-02-20 22:25:34','2014-02-21 14:17:27'),(2966,20,15,537,'Canal 5G','2014-02-20 22:25:34','2014-02-21 14:17:28'),(2967,20,15,538,'\"Canal 2,4 G\"','2014-02-20 22:25:34','2014-02-21 14:17:29'),(2968,20,15,539,'Servidor RADIUS','2014-02-20 22:25:34','2014-02-21 14:17:30'),(2969,20,15,540,'Secreto compartido','2014-02-20 22:25:34','2014-02-21 14:17:31'),(2970,20,15,541,'Nueva malla punto de salida','2014-02-20 22:25:34','2014-02-21 14:17:32'),(2971,20,15,542,'Puente Ethernet','2014-02-20 22:25:34','2014-02-21 14:17:33'),(2972,20,15,543,'Tagged puente Ethernet','2014-02-20 22:25:34','2014-02-21 14:17:34'),(2973,20,15,544,'NAT+DHCP','2014-02-20 22:25:34','2014-02-21 14:17:35'),(2974,20,15,545,'Portal cautivo','2014-02-20 22:25:34','2014-02-21 14:17:36'),(2975,20,15,546,'Especificar punto de salida tipo','2014-02-20 22:25:34','2014-02-21 14:17:37'),(2976,20,15,547,'Punto de salida tipo','2014-02-20 22:25:34','2014-02-21 14:17:39'),(2977,20,15,548,'ConfiguraciÃ³n comÃºn','2014-02-20 22:25:34','2014-02-21 14:17:40'),(2978,20,15,549,'NÃºmero de VLAN','2014-02-20 22:25:34','2014-02-21 14:17:41'),(2979,20,15,550,'Ajustes del Portal cautivo','2014-02-20 22:25:34','2014-02-21 14:17:42'),(2980,20,15,551,'RADIUS server1','2014-02-20 22:25:34','2014-02-21 14:17:43'),(2981,20,15,552,'RADIUS server2','2014-02-20 22:25:34','2014-02-21 14:17:44'),(2982,20,15,553,'RADIO secreto','2014-02-20 22:25:34','2014-02-21 14:17:45'),(2983,20,15,554,'RADIUS NASID','2014-02-20 22:25:34','2014-02-21 14:17:46'),(2984,20,15,555,'UAM URL','2014-02-20 22:25:34','2014-02-21 14:17:47'),(2985,20,15,556,'UAM secreto','2014-02-20 22:25:34','2014-02-21 14:17:48'),(2986,20,15,557,'JardÃ­n amurallado','2014-02-20 22:25:34','2014-02-21 14:17:49'),(2987,20,15,558,'Swap octetos','2014-02-20 22:25:34','2014-02-21 14:17:50'),(2988,20,15,559,'AutenticaciÃ³n de MAC','2014-02-20 22:25:34','2014-02-21 14:17:51'),(2989,20,15,560,'Nuevo nodo en malla','2014-02-20 22:25:34','2014-02-21 14:17:52'),(2990,20,15,561,'De Potencia de TX ( %)','2014-02-20 22:25:34','2014-02-21 14:17:53'),(2991,20,15,562,'Nuevas mallas','2014-02-20 22:25:34','2014-02-21 14:17:54'),(2992,20,15,563,'Puntos de entrada','2014-02-20 22:25:34','2014-02-21 14:17:55'),(2993,20,15,564,'ConfiguraciÃ³n de malla','2014-02-20 22:25:34','2014-02-21 14:17:56'),(2994,20,15,565,'Puntos de Salida','2014-02-20 22:25:34','2014-02-21 14:17:57'),(2995,20,15,566,'ConfiguraciÃ³n del Nodo','2014-02-20 22:25:34','2014-02-21 14:17:58'),(2996,20,15,567,'Los Nodos','2014-02-20 22:25:34','2014-02-21 14:17:59'),(2997,20,15,568,'Mapa','2014-02-20 22:25:34','2014-02-21 14:18:01'),(2998,20,15,569,'Edit mesh punto de entrada','2014-02-20 22:25:34','2014-02-21 14:18:02'),(2999,20,15,570,'Edit mesh punto de salida','2014-02-20 22:25:34','2014-02-21 14:18:03'),(3000,20,15,571,'DescripciÃ³n MESHdesk','2014-02-20 22:25:34','2014-02-21 14:18:04'),(3001,20,15,572,'Malla nuevo aÃ±adido punto de entrada','2014-02-20 22:25:34','2014-02-21 14:18:05'),(3002,20,15,573,'Nueva malla enty punto fino creado','2014-02-20 22:25:34','2014-02-21 14:18:06'),(3003,20,15,574,'Elemento agregado fino','2014-02-20 22:25:34','2014-02-21 14:18:07'),(3004,20,15,575,'No hay puntos de entrada definidos','2014-02-20 22:25:34','2014-02-21 14:18:08'),(3005,20,15,576,'Definir algunos puntos de entrada en primer lugar','2014-02-20 22:25:35','2014-02-21 14:18:09'),(3006,20,15,577,'Cambio de contraseÃ±a','2014-02-20 22:25:35','2014-02-21 14:18:10'),(3007,20,15,578,'Ha cambiado la contraseÃ±a correctamente','2014-02-20 22:25:35','2014-02-21 14:18:11'),(3008,20,15,579,'Obtiene contraseÃ±a','2014-02-20 22:25:35','2014-02-21 14:18:12'),(3009,20,15,580,'ContraseÃ±a obtenido para el usuario seleccionado','2014-02-20 22:25:35','2014-02-21 14:18:13'),(3010,4,4,581,'Right to left','2014-02-20 22:56:49','2014-02-20 22:57:27'),(3011,5,5,581,'(new addition)','2014-02-20 22:56:49','2014-02-20 22:56:49'),(3012,18,13,581,'(new addition)','2014-02-20 22:56:49','2014-02-20 22:56:49'),(3013,19,14,581,'(new addition)','2014-02-20 22:56:49','2014-02-20 22:56:49'),(3014,20,15,581,'Derecha a izquierda','2014-02-20 22:56:49','2014-02-21 14:18:14'),(3015,4,4,582,'Home','2014-02-20 22:57:41','2014-02-20 22:57:54'),(3016,5,5,582,'(new addition)','2014-02-20 22:57:41','2014-02-20 22:57:41'),(3017,18,13,582,'(new addition)','2014-02-20 22:57:41','2014-02-20 22:57:41'),(3018,19,14,582,'(new addition)','2014-02-20 22:57:41','2014-02-20 22:57:41'),(3019,20,15,582,'Casa','2014-02-20 22:57:41','2014-02-21 14:18:15'),(3020,4,4,583,'(select_user_first)','2014-02-21 08:15:13','2014-02-21 08:15:30'),(3021,5,5,583,'(new addition)','2014-02-21 08:15:13','2014-02-21 08:15:13'),(3022,18,13,583,'(new addition)','2014-02-21 08:15:13','2014-02-21 08:15:13'),(3023,19,14,583,'(new addition)','2014-02-21 08:15:13','2014-02-21 08:15:13'),(3024,20,15,583,'(Select_user_first)','2014-02-21 08:15:13','2014-02-21 14:18:16'),(3025,4,4,584,'Current password','2014-02-21 08:17:12','2014-02-21 08:17:23'),(3026,5,5,584,'(new addition)','2014-02-21 08:17:12','2014-02-21 08:17:12'),(3027,18,13,584,'(new addition)','2014-02-21 08:17:12','2014-02-21 08:17:12'),(3028,19,14,584,'(new addition)','2014-02-21 08:17:12','2014-02-21 08:17:12'),(3029,20,15,584,'ContraseÃ±a Actual','2014-02-21 08:17:12','2014-02-21 14:18:17'),(3030,4,4,585,'New password','2014-02-21 08:17:53','2014-02-21 08:18:04'),(3031,5,5,585,'(new addition)','2014-02-21 08:17:53','2014-02-21 08:17:53'),(3032,18,13,585,'(new addition)','2014-02-21 08:17:53','2014-02-21 08:17:53'),(3033,19,14,585,'(new addition)','2014-02-21 08:17:53','2014-02-21 08:17:53'),(3034,20,15,585,'Nueva contraseÃ±a','2014-02-21 08:17:53','2014-02-21 14:18:18'),(3035,4,4,586,'Node settings','2014-02-21 08:19:46','2014-02-21 08:20:04'),(3036,5,5,586,'(new addition)','2014-02-21 08:19:46','2014-02-21 08:19:46'),(3037,18,13,586,'(new addition)','2014-02-21 08:19:46','2014-02-21 08:19:46'),(3038,19,14,586,'(new addition)','2014-02-21 08:19:46','2014-02-21 08:19:46'),(3039,20,15,586,'ConfiguraciÃ³n del Nodo','2014-02-21 08:19:46','2014-02-21 14:18:20'),(3040,4,4,587,'T&C','2014-02-21 08:24:46','2014-02-21 08:24:55'),(3041,5,5,587,'(new addition)','2014-02-21 08:24:46','2014-02-21 08:24:46'),(3042,18,13,587,'(new addition)','2014-02-21 08:24:46','2014-02-21 08:24:46'),(3043,19,14,587,'(new addition)','2014-02-21 08:24:46','2014-02-21 08:24:46'),(3044,20,15,587,'T&C','2014-02-21 08:24:46','2014-02-21 14:18:21'),(3045,4,4,588,'Compulsory','2014-02-21 08:25:27','2014-02-21 08:25:36'),(3046,5,5,588,'(new addition)','2014-02-21 08:25:27','2014-02-21 08:25:27'),(3047,18,13,588,'(new addition)','2014-02-21 08:25:27','2014-02-21 08:25:27'),(3048,19,14,588,'(new addition)','2014-02-21 08:25:27','2014-02-21 08:25:27'),(3049,20,15,588,'Obligatorio','2014-02-21 08:25:27','2014-02-21 14:18:22'),(3050,4,4,589,'Request','2014-02-21 08:30:51','2014-02-21 08:31:00'),(3051,5,5,589,'(new addition)','2014-02-21 08:30:51','2014-02-21 08:30:51'),(3052,18,13,589,'(new addition)','2014-02-21 08:30:51','2014-02-21 08:30:51'),(3053,19,14,589,'(new addition)','2014-02-21 08:30:51','2014-02-21 08:30:51'),(3054,20,15,589,'Solicitud','2014-02-21 08:30:51','2014-02-21 14:18:23'),(3055,4,4,590,'Request Attributes','2014-02-21 08:32:43','2014-02-21 08:32:55'),(3056,5,5,590,'(new addition)','2014-02-21 08:32:43','2014-02-21 08:32:43'),(3057,18,13,590,'(new addition)','2014-02-21 08:32:43','2014-02-21 08:32:43'),(3058,19,14,590,'(new addition)','2014-02-21 08:32:43','2014-02-21 08:32:43'),(3059,20,15,590,'Atributos de solicitud','2014-02-21 08:32:43','2014-02-21 14:18:24'),(3060,4,4,591,'Reply Attributes','2014-02-21 08:33:35','2014-02-21 08:34:12'),(3061,5,5,591,'(new addition)','2014-02-21 08:33:35','2014-02-21 08:33:35'),(3062,18,13,591,'(new addition)','2014-02-21 08:33:35','2014-02-21 08:33:35'),(3063,19,14,591,'(new addition)','2014-02-21 08:33:35','2014-02-21 08:33:35'),(3064,20,15,591,'Respuesta Atributos','2014-02-21 08:33:35','2014-02-21 14:18:25'),(3065,4,4,592,'Clients','2014-02-21 08:37:27','2014-02-21 08:37:37'),(3066,5,5,592,'(new addition)','2014-02-21 08:37:27','2014-02-21 08:37:27'),(3067,18,13,592,'(new addition)','2014-02-21 08:37:27','2014-02-21 08:37:27'),(3068,19,14,592,'(new addition)','2014-02-21 08:37:27','2014-02-21 08:37:27'),(3069,20,15,592,'Clientes','2014-02-21 08:37:27','2014-02-21 14:18:26'),(3070,4,4,593,'Modules','2014-02-21 08:38:10','2014-02-21 08:38:19'),(3071,5,5,593,'(new addition)','2014-02-21 08:38:10','2014-02-21 08:38:10'),(3072,18,13,593,'(new addition)','2014-02-21 08:38:10','2014-02-21 08:38:10'),(3073,19,14,593,'(new addition)','2014-02-21 08:38:10','2014-02-21 08:38:10'),(3074,20,15,593,'MÃ³dulos','2014-02-21 08:38:10','2014-02-21 14:18:27'),(3075,4,4,594,'General','2014-02-21 08:39:09','2014-02-21 08:39:21'),(3076,5,5,594,'(new addition)','2014-02-21 08:39:09','2014-02-21 08:39:09'),(3077,18,13,594,'(new addition)','2014-02-21 08:39:09','2014-02-21 08:39:09'),(3078,19,14,594,'(new addition)','2014-02-21 08:39:09','2014-02-21 08:39:09'),(3079,20,15,594,'General','2014-02-21 08:39:09','2014-02-21 14:18:28'),(3080,4,4,595,'Uptime','2014-02-21 08:40:26','2014-02-21 08:40:36'),(3081,5,5,595,'(new addition)','2014-02-21 08:40:26','2014-02-21 08:40:26'),(3082,18,13,595,'(new addition)','2014-02-21 08:40:26','2014-02-21 08:40:26'),(3083,19,14,595,'(new addition)','2014-02-21 08:40:26','2014-02-21 08:40:26'),(3084,20,15,595,'Actividad','2014-02-21 08:40:26','2014-02-21 14:18:29'),(3085,4,4,596,'Version','2014-02-21 08:40:54','2014-02-21 08:41:05'),(3086,5,5,596,'(new addition)','2014-02-21 08:40:54','2014-02-21 08:40:54'),(3087,18,13,596,'(new addition)','2014-02-21 08:40:54','2014-02-21 08:40:54'),(3088,19,14,596,'(new addition)','2014-02-21 08:40:54','2014-02-21 08:40:54'),(3089,20,15,596,'VersiÃ³n','2014-02-21 08:40:54','2014-02-21 14:18:30'),(3090,4,4,597,'Usage graphs','2014-02-21 09:00:42','2014-02-21 09:00:53'),(3091,5,5,597,'(new addition)','2014-02-21 09:00:42','2014-02-21 09:00:42'),(3092,18,13,597,'(new addition)','2014-02-21 09:00:42','2014-02-21 09:00:42'),(3093,19,14,597,'(new addition)','2014-02-21 09:00:42','2014-02-21 09:00:42'),(3094,20,15,597,'GrÃ¡ficos Uso','2014-02-21 09:00:42','2014-02-21 14:18:31'),(3095,4,4,598,'Daily','2014-02-21 11:31:04','2014-02-21 11:31:53'),(3096,5,5,598,'(new addition)','2014-02-21 11:31:04','2014-02-21 11:31:04'),(3097,18,13,598,'(new addition)','2014-02-21 11:31:04','2014-02-21 11:31:04'),(3098,19,14,598,'(new addition)','2014-02-21 11:31:04','2014-02-21 11:31:04'),(3099,20,15,598,'Diario','2014-02-21 11:31:04','2014-02-21 14:18:32'),(3100,4,4,599,'Weekly','2014-02-21 11:31:19','2014-02-21 11:32:00'),(3101,5,5,599,'(new addition)','2014-02-21 11:31:19','2014-02-21 11:31:19'),(3102,18,13,599,'(new addition)','2014-02-21 11:31:19','2014-02-21 11:31:19'),(3103,19,14,599,'(new addition)','2014-02-21 11:31:19','2014-02-21 11:31:19'),(3104,20,15,599,'Semanalmente','2014-02-21 11:31:19','2014-02-21 14:18:33'),(3105,4,4,600,'Monthly','2014-02-21 11:31:41','2014-02-21 11:32:22'),(3106,5,5,600,'(new addition)','2014-02-21 11:31:41','2014-02-21 11:31:41'),(3107,18,13,600,'(new addition)','2014-02-21 11:31:41','2014-02-21 11:31:41'),(3108,19,14,600,'(new addition)','2014-02-21 11:31:41','2014-02-21 11:31:41'),(3109,20,15,600,'Mensual','2014-02-21 11:31:41','2014-02-21 14:18:34'),(3110,4,4,601,'sDay','2014-02-21 11:53:41','2014-02-21 11:53:55'),(3111,5,5,601,'(new addition)','2014-02-21 11:53:41','2014-02-21 11:53:41'),(3112,18,13,601,'(new addition)','2014-02-21 11:53:41','2014-02-21 11:53:41'),(3113,19,14,601,'(new addition)','2014-02-21 11:53:41','2014-02-21 11:53:41'),(3114,20,15,601,'Sday','2014-02-21 11:53:41','2014-02-21 14:18:35'),(3115,4,4,602,'Apply power to all nodes','2014-02-21 12:00:50','2014-02-21 12:01:17'),(3116,5,5,602,'(new addition)','2014-02-21 12:00:51','2014-02-21 12:00:51'),(3117,18,13,602,'(new addition)','2014-02-21 12:00:51','2014-02-21 12:00:51'),(3118,19,14,602,'(new addition)','2014-02-21 12:00:51','2014-02-21 12:00:51'),(3119,20,15,602,'Aplique la alimentaciÃ³n a todos los nodos','2014-02-21 12:00:51','2014-02-21 14:18:37');
/*!40000 ALTER TABLE `phrase_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pptp_clients`
--

DROP TABLE IF EXISTS `pptp_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pptp_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `na_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pptp_clients`
--

LOCK TABLES `pptp_clients` WRITE;
/*!40000 ALTER TABLE `pptp_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `pptp_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_component_notes`
--

DROP TABLE IF EXISTS `profile_component_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_component_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_component_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_component_notes`
--

LOCK TABLES `profile_component_notes` WRITE;
/*!40000 ALTER TABLE `profile_component_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_component_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_components`
--

DROP TABLE IF EXISTS `profile_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_components`
--

LOCK TABLES `profile_components` WRITE;
/*!40000 ALTER TABLE `profile_components` DISABLE KEYS */;
INSERT INTO `profile_components` VALUES (46,'250M',1,44,'2013-08-24 21:20:20','2013-08-24 21:20:20'),(48,'500M',1,44,'2013-08-24 21:21:09','2013-08-24 21:21:09'),(49,'1G',1,44,'2013-08-24 21:21:23','2013-08-24 21:21:23'),(50,'BW-384Kb',1,44,'2013-08-24 21:22:05','2013-08-24 21:22:05'),(52,'BW-1Gb',1,44,'2013-08-24 21:23:01','2013-08-24 21:23:01'),(53,'1Hour',1,44,'2013-08-24 21:24:08','2013-08-24 21:24:08'),(55,'4Hour',1,44,'2013-08-24 21:42:43','2013-08-24 21:42:43');
/*!40000 ALTER TABLE `profile_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_notes`
--

DROP TABLE IF EXISTS `profile_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_notes`
--

LOCK TABLES `profile_notes` WRITE;
/*!40000 ALTER TABLE `profile_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (7,'Data-Standard-250',1,44,'2013-08-24 21:17:06','2013-08-24 21:17:06'),(8,'Data-Standard-500',1,44,'2013-08-24 21:17:33','2013-08-24 21:17:33'),(9,'Data-Standard-1G',1,44,'2013-08-24 21:17:58','2013-08-24 21:17:58'),(10,'Time-Standard-1Hour',1,44,'2013-08-24 22:08:54','2013-08-24 22:08:54');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radacct`
--

DROP TABLE IF EXISTS `radacct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radacct` (
  `radacctid` bigint(21) NOT NULL AUTO_INCREMENT,
  `acctsessionid` varchar(64) NOT NULL DEFAULT '',
  `acctuniqueid` varchar(32) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `realm` varchar(64) DEFAULT '',
  `nasipaddress` varchar(15) NOT NULL DEFAULT '',
  `nasidentifier` varchar(64) NOT NULL DEFAULT '',
  `nasportid` varchar(15) DEFAULT NULL,
  `nasporttype` varchar(32) DEFAULT NULL,
  `acctstarttime` datetime DEFAULT NULL,
  `acctstoptime` datetime DEFAULT NULL,
  `acctsessiontime` int(12) DEFAULT NULL,
  `acctauthentic` varchar(32) DEFAULT NULL,
  `connectinfo_start` varchar(50) DEFAULT NULL,
  `connectinfo_stop` varchar(50) DEFAULT NULL,
  `acctinputoctets` bigint(20) DEFAULT NULL,
  `acctoutputoctets` bigint(20) DEFAULT NULL,
  `calledstationid` varchar(50) NOT NULL DEFAULT '',
  `callingstationid` varchar(50) NOT NULL DEFAULT '',
  `acctterminatecause` varchar(32) NOT NULL DEFAULT '',
  `servicetype` varchar(32) DEFAULT NULL,
  `framedprotocol` varchar(32) DEFAULT NULL,
  `framedipaddress` varchar(15) NOT NULL DEFAULT '',
  `acctstartdelay` int(12) DEFAULT NULL,
  `acctstopdelay` int(12) DEFAULT NULL,
  `xascendsessionsvrkey` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`radacctid`),
  KEY `username` (`username`),
  KEY `framedipaddress` (`framedipaddress`),
  KEY `acctsessionid` (`acctsessionid`),
  KEY `acctsessiontime` (`acctsessiontime`),
  KEY `acctuniqueid` (`acctuniqueid`),
  KEY `acctstarttime` (`acctstarttime`),
  KEY `acctstoptime` (`acctstoptime`),
  KEY `nasipaddress` (`nasipaddress`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radacct`
--

LOCK TABLES `radacct` WRITE;
/*!40000 ALTER TABLE `radacct` DISABLE KEYS */;
INSERT INTO `radacct` VALUES (2,'1380968512_test','102b5af981558dc8','rviljoen','','Residence Inn','127.0.0.1','Not in request','','','2013-10-05 12:21:53','2013-10-05 12:21:53',10,'','','',10,10,'','','User-Request','','','',0,0,''),(3,'52fd283400000002','24913f6020fcaf8a','dvdwalt','','College','10.1.0.1','cp2','2','Wireless-802.11','2014-02-13 22:17:16','2014-02-13 22:17:26',9,'','','',26546,15717,'06-51-A2-56-3F-3C','00-1e-e5-a5-67-a6','User-Request','','','10.1.0.3',0,0,'');
/*!40000 ALTER TABLE `radacct` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER radacct_after_update
AFTER update ON radacct FOR EACH ROW BEGIN
INSERT INTO user_stats 
  SET 
  radacct_id        = OLD.radacctid,
  username          = OLD.username,
  realm             = OLD.realm,  
  nasipaddress      = OLD.nasipaddress,
  nasidentifier     = OLD.nasidentifier,
  framedipaddress   = OLD.framedipaddress,
  callingstationid  = OLD.callingstationid,
  acctinputoctets   = (NEW.acctinputoctets - OLD.acctinputoctets), 
  acctoutputoctets  = (NEW.acctoutputoctets - OLD.acctoutputoctets);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `radcheck`
--

DROP TABLE IF EXISTS `radcheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radcheck` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '==',
  `value` varchar(253) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `username` (`username`(32))
) ENGINE=InnoDB AUTO_INCREMENT=8925 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radcheck`
--

LOCK TABLES `radcheck` WRITE;
/*!40000 ALTER TABLE `radcheck` DISABLE KEYS */;
INSERT INTO `radcheck` VALUES (8353,'dvdwalt','Rd-User-Type',':=','user'),(8376,'dvdwalt','Rd-Not-Track-Auth',':=','1'),(8377,'dvdwalt','Rd-Auto-Mac',':=','1'),(8471,'rviljoen','Rd-User-Type',':=','user'),(8472,'rviljoen','Rd-Realm',':=','Residence Inn'),(8473,'rviljoen','User-Profile',':=','Data-Standard-1G'),(8474,'rviljoen','Rd-Cap-Type-Data',':=','hard'),(8475,'rviljoen','Rd-Account-Disabled',':=','0'),(8476,'rviljoen','Rd-Not-Track-Auth',':=','1'),(8482,'aa-aa-aa-aa-aa-aa','Rd-User-Type',':=','device'),(8483,'aa-aa-aa-aa-aa-aa','Rd-Realm',':=','Residence Inn'),(8484,'aa-aa-aa-aa-aa-aa','Rd-Device-Owner',':=','dvdwalt'),(8485,'aa-aa-aa-aa-aa-aa','User-Profile',':=','Time-Standard-1Hour'),(8486,'aa-aa-aa-aa-aa-aa','Rd-Cap-Type-Time',':=','hard'),(8488,'aa-aa-aa-aa-aa-aa','Rd-Not-Track-Auth',':=','1'),(8531,'dvdwalt','User-Profile',':=','Data-Standard-1G'),(8532,'dvdwalt','Rd-Realm',':=','College'),(8533,'dvdwalt','Rd-Cap-Type-Data',':=','soft'),(8740,'000032','Cleartext-Password',':=','G1P'),(8741,'000032','Rd-User-Type',':=','voucher'),(8742,'000032','Rd-Realm',':=','Residence Inn'),(8743,'000032','User-Profile',':=','Time-Standard-1Hour'),(8756,'000036','Cleartext-Password',':=','Fc1'),(8757,'000036','Rd-User-Type',':=','voucher'),(8758,'000036','Rd-Realm',':=','Residence Inn'),(8759,'000036','User-Profile',':=','Time-Standard-1Hour'),(8816,'000051','Cleartext-Password',':=','R6d'),(8817,'000051','Rd-User-Type',':=','voucher'),(8818,'000051','Rd-Realm',':=','College'),(8819,'000051','User-Profile',':=','Time-Standard-1Hour'),(8840,'000052','Cleartext-Password',':=','Jcw'),(8841,'000052','Rd-User-Type',':=','voucher'),(8842,'000052','Rd-Realm',':=','Residence Inn'),(8843,'000052','User-Profile',':=','Time-Standard-1Hour'),(8845,'000053','Cleartext-Password',':=','0pd'),(8846,'000053','Rd-User-Type',':=','voucher'),(8847,'000053','Rd-Realm',':=','Residence Inn'),(8848,'000053','User-Profile',':=','Time-Standard-1Hour'),(8849,'000054','Cleartext-Password',':=','hcf'),(8850,'000054','Rd-User-Type',':=','voucher'),(8851,'000054','Rd-Realm',':=','Residence Inn'),(8852,'000054','User-Profile',':=','Time-Standard-1Hour'),(8853,'000055','Cleartext-Password',':=','pwz'),(8854,'000055','Rd-User-Type',':=','voucher'),(8855,'000055','Rd-Realm',':=','Residence Inn'),(8856,'000055','User-Profile',':=','Time-Standard-1Hour'),(8857,'000056','Cleartext-Password',':=','F4t'),(8858,'000056','Rd-User-Type',':=','voucher'),(8859,'000056','Rd-Realm',':=','Residence Inn'),(8860,'000056','User-Profile',':=','Time-Standard-1Hour'),(8861,'000057','Cleartext-Password',':=','w1t'),(8862,'000057','Rd-User-Type',':=','voucher'),(8863,'000057','Rd-Realm',':=','Residence Inn'),(8864,'000057','User-Profile',':=','Time-Standard-1Hour'),(8865,'000058','Cleartext-Password',':=','3w0'),(8866,'000058','Rd-User-Type',':=','voucher'),(8867,'000058','Rd-Realm',':=','Residence Inn'),(8868,'000058','User-Profile',':=','Time-Standard-1Hour'),(8869,'000059','Cleartext-Password',':=','dxh'),(8870,'000059','Rd-User-Type',':=','voucher'),(8871,'000059','Rd-Realm',':=','Residence Inn'),(8872,'000059','User-Profile',':=','Time-Standard-1Hour'),(8873,'000060','Cleartext-Password',':=','05w'),(8874,'000060','Rd-User-Type',':=','voucher'),(8875,'000060','Rd-Realm',':=','Residence Inn'),(8876,'000060','User-Profile',':=','Time-Standard-1Hour'),(8877,'000061','Cleartext-Password',':=','Q81'),(8878,'000061','Rd-User-Type',':=','voucher'),(8879,'000061','Rd-Realm',':=','Residence Inn'),(8880,'000061','User-Profile',':=','Time-Standard-1Hour'),(8881,'000062','Cleartext-Password',':=','Dg4'),(8882,'000062','Rd-User-Type',':=','voucher'),(8883,'000062','Rd-Realm',':=','Residence Inn'),(8884,'000062','User-Profile',':=','Time-Standard-1Hour'),(8885,'000062','Rd-Device-Owner',':=','Replace this value'),(8899,'dvdwalt','Rd-Account-Disabled',':=','0'),(8911,'aa-aa-aa-aa-aa-aa','Rd-Account-Disabled',':=','1'),(8918,'dvdwalt','Cleartext-Password',':=','dvdwalt'),(8922,'rviljoen','Cleartext-Password',':=','rviljoen'),(8923,'rviljoen','Expiration',':=','21 Jan 2014'),(8924,'rviljoen','Rd-Account-Activation-Time',':=','10 Jan 2014');
/*!40000 ALTER TABLE `radcheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radgroupcheck`
--

DROP TABLE IF EXISTS `radgroupcheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radgroupcheck` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '==',
  `value` varchar(253) NOT NULL DEFAULT '',
  `comment` varchar(253) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupname` (`groupname`(32))
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radgroupcheck`
--

LOCK TABLES `radgroupcheck` WRITE;
/*!40000 ALTER TABLE `radgroupcheck` DISABLE KEYS */;
INSERT INTO `radgroupcheck` VALUES (43,'500M','Rd-Reset-Type-Data',':=','never','','2013-08-24 21:34:24','2013-08-24 21:35:25'),(44,'500M','Rd-Cap-Type-Data',':=','hard','','2013-08-24 21:34:34','2013-08-24 21:35:17'),(45,'500M','Rd-Total-Data',':=','500000000','','2013-08-24 21:34:53','2013-08-24 21:35:11'),(49,'250M','Rd-Reset-Type-Data',':=','never','','2013-08-24 21:38:07','2013-08-24 21:38:48'),(50,'250M','Rd-Cap-Type-Data',':=','hard','','2013-08-24 21:38:14','2013-08-24 21:38:42'),(51,'250M','Rd-Total-Data',':=','250000000','','2013-08-24 21:38:21','2013-08-24 21:38:33'),(52,'1Hour','Rd-Total-Time',':=','3600','','2013-08-24 21:39:24','2013-08-24 21:40:04'),(53,'1Hour','Rd-Reset-Type-Time',':=','never','','2013-08-24 21:39:32','2013-08-24 21:39:53'),(55,'1G','Rd-Reset-Type-Data',':=','never','','2013-08-24 21:41:09','2013-08-24 21:41:29'),(57,'1G','Rd-Total-Data',':=','1000000000','','2013-08-24 21:41:22','2013-08-24 21:41:46'),(59,'4Hour','Rd-Reset-Type-Time',':=','never','','2013-08-24 21:43:28','2013-08-24 21:44:02'),(60,'4Hour','Rd-Cap-Type-Time',':=','hard','','2013-08-24 21:43:35','2013-08-24 21:43:55'),(61,'4Hour','Rd-Total-Time',':=','14400','','2013-08-24 21:43:41','2013-08-24 21:43:50'),(62,'1Hour','Rd-Cap-Type-Time',':=','hard','','2013-08-24 21:44:42','2013-08-24 21:44:49');
/*!40000 ALTER TABLE `radgroupcheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radgroupreply`
--

DROP TABLE IF EXISTS `radgroupreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radgroupreply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '=',
  `value` varchar(253) NOT NULL DEFAULT '',
  `comment` varchar(253) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupname` (`groupname`(32))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radgroupreply`
--

LOCK TABLES `radgroupreply` WRITE;
/*!40000 ALTER TABLE `radgroupreply` DISABLE KEYS */;
INSERT INTO `radgroupreply` VALUES (1,'BW-384Kb','Fall-Through',':=','Yes','','2013-08-24 21:25:31','2013-08-24 21:25:31'),(3,'BW-1Gb','Fall-Through',':=','Yes','','2013-08-24 21:27:22','2013-08-24 21:27:22'),(5,'500M','Fall-Through',':=','Yes','','2013-08-24 21:27:46','2013-08-24 21:27:46'),(9,'250M','Fall-Through',':=','Yes','','2013-08-24 21:28:41','2013-08-24 21:28:41'),(10,'1Hour','Fall-Through',':=','Yes','','2013-08-24 21:29:07','2013-08-24 21:29:07'),(12,'1G','Fall-Through',':=','Yes','','2013-08-24 21:29:28','2013-08-24 21:29:28'),(13,'BW-384Kb','WISPr-Bandwidth-Max-Up',':=','384000','','2013-08-24 21:31:51','2013-08-24 21:31:51'),(14,'BW-384Kb','WISPr-Bandwidth-Max-Down',':=','384000','','2013-08-24 21:31:57','2013-08-24 21:31:57'),(15,'BW-1Gb','WISPr-Bandwidth-Max-Up',':=','1000000','','2013-08-24 21:33:24','2013-08-24 21:33:24'),(16,'BW-1Gb','WISPr-Bandwidth-Max-Down',':=','1000000','','2013-08-24 21:33:30','2013-08-24 21:33:30'),(17,'4Hour','Fall-Through',':=','Yes','','2013-08-24 21:44:08','2013-08-24 21:44:08');
/*!40000 ALTER TABLE `radgroupreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radpostauth`
--

DROP TABLE IF EXISTS `radpostauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radpostauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `realm` varchar(64) DEFAULT NULL,
  `pass` varchar(64) NOT NULL DEFAULT '',
  `reply` varchar(32) NOT NULL DEFAULT '',
  `nasname` varchar(128) NOT NULL DEFAULT '',
  `authdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radpostauth`
--

LOCK TABLES `radpostauth` WRITE;
/*!40000 ALTER TABLE `radpostauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `radpostauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radreply`
--

DROP TABLE IF EXISTS `radreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radreply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '=',
  `value` varchar(253) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `username` (`username`(32))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radreply`
--

LOCK TABLES `radreply` WRITE;
/*!40000 ALTER TABLE `radreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `radreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radusergroup`
--

DROP TABLE IF EXISTS `radusergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radusergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `username` (`username`(32))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radusergroup`
--

LOCK TABLES `radusergroup` WRITE;
/*!40000 ALTER TABLE `radusergroup` DISABLE KEYS */;
INSERT INTO `radusergroup` VALUES (13,'Data-Standard-500','BW-384Kb',100),(14,'Data-Standard-500','500M',80),(15,'Data-Standard-250','BW-384Kb',100),(16,'Data-Standard-250','250M',80),(17,'Data-Standard-1G','BW-384Kb',100),(18,'Data-Standard-1G','1G',80),(19,'Time-Standard-1Hour','BW-384Kb',100),(20,'Time-Standard-1Hour','1Hour',80);
/*!40000 ALTER TABLE `radusergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realm_notes`
--

DROP TABLE IF EXISTS `realm_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realm_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realm_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realm_notes`
--

LOCK TABLES `realm_notes` WRITE;
/*!40000 ALTER TABLE `realm_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `realm_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realms`
--

DROP TABLE IF EXISTS `realms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `icon_file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `phone` varchar(14) NOT NULL DEFAULT '',
  `fax` varchar(14) NOT NULL DEFAULT '',
  `cell` varchar(14) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(128) NOT NULL DEFAULT '',
  `street_no` char(10) NOT NULL DEFAULT '',
  `street` char(50) NOT NULL DEFAULT '',
  `town_suburb` char(50) NOT NULL DEFAULT '',
  `city` char(50) NOT NULL DEFAULT '',
  `country` char(50) NOT NULL DEFAULT '',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realms`
--

LOCK TABLES `realms` WRITE;
/*!40000 ALTER TABLE `realms` DISABLE KEYS */;
INSERT INTO `realms` VALUES (34,'Residence Inn',0,'logo.jpg','','','','','','','','','','',0,0,44,'2013-08-24 22:18:31','2014-01-08 15:20:40'),(35,'College',0,'logo.jpg','','','','','','','','','','',0,0,182,'2013-08-28 11:31:47','2013-08-28 11:31:47'),(36,'realm_freddy',1,'logo.jpg','','','','','','','','','','',0,0,190,'2013-10-25 21:15:54','2013-10-25 21:15:54');
/*!40000 ALTER TABLE `realms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_notes`
--

DROP TABLE IF EXISTS `tag_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_notes`
--

LOCK TABLES `tag_notes` WRITE;
/*!40000 ALTER TABLE `tag_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_attributes`
--

DROP TABLE IF EXISTS `template_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) DEFAULT NULL,
  `attribute` varchar(128) NOT NULL,
  `type` enum('Check','Reply') DEFAULT 'Check',
  `tooltip` varchar(200) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_attributes`
--

LOCK TABLES `template_attributes` WRITE;
/*!40000 ALTER TABLE `template_attributes` DISABLE KEYS */;
INSERT INTO `template_attributes` VALUES (2,19,'koos','Check','Gooi hom','text_string','2013-02-09 10:50:35','2013-02-09 12:15:04'),(5,19,'koos','Reply','Hy werk lek','reply','2013-02-09 10:50:44','2013-02-09 16:26:08'),(6,19,'koos','Check','Skipm dit sal bemost wees','text_string','2013-02-09 10:50:45','2013-02-09 12:03:54'),(7,19,'Rd-Tag-A','Check','==Not Defined==','text_string','2013-02-09 16:55:18','2013-02-09 16:55:18'),(8,19,'Rd-Tag-B','Check','==Not Defined==','text_string','2013-02-09 16:55:26','2013-02-09 16:55:26'),(9,19,'Rd-Tag-C','Check','==Not Defined==','text_string','2013-02-09 16:55:32','2013-02-09 16:55:32');
/*!40000 ALTER TABLE `template_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_notes`
--

DROP TABLE IF EXISTS `template_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_notes`
--

LOCK TABLES `template_notes` WRITE;
/*!40000 ALTER TABLE `template_notes` DISABLE KEYS */;
INSERT INTO `template_notes` VALUES (20,18,46,'2013-02-08 06:07:59','2013-02-08 06:07:59'),(21,18,47,'2013-02-08 06:08:47','2013-02-08 06:08:47');
/*!40000 ALTER TABLE `template_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (19,'Lekker',0,58,'2013-02-08 10:22:52','2013-02-08 10:22:52'),(20,'Op die oor',0,44,'2013-02-08 12:55:44','2013-02-08 12:55:44');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notes`
--

DROP TABLE IF EXISTS `user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notes`
--

LOCK TABLES `user_notes` WRITE;
/*!40000 ALTER TABLE `user_notes` DISABLE KEYS */;
INSERT INTO `user_notes` VALUES (1,182,77,'2014-01-07 22:12:23','2014-01-07 22:12:23');
/*!40000 ALTER TABLE `user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
INSERT INTO `user_settings` VALUES (52,44,'map_zoom','18','2013-04-05 11:30:19','2013-04-05 11:55:30'),(53,44,'map_type','ROADMAP','2013-04-05 11:30:19','2013-04-05 11:55:30'),(54,44,'map_lat','-25.737800696372','2013-04-05 11:30:19','2013-04-05 11:55:30'),(55,44,'map_lng','28.30269861188003','2013-04-05 11:30:19','2013-04-05 11:55:30'),(56,44,'wallpaper','14.jpg','2013-04-06 13:51:50','2014-01-19 12:54:12'),(57,182,'map_zoom','18','2013-08-30 07:01:35','2013-08-30 07:01:35'),(58,182,'map_type','ROADMAP','2013-08-30 07:01:35','2013-08-30 07:01:35'),(59,182,'map_lat','42.33821464661343','2013-08-30 07:01:35','2013-08-30 07:01:35'),(60,182,'map_lng','-71.09557402167296','2013-08-30 07:01:35','2013-08-30 07:01:35'),(61,182,'wallpaper','7.jpg','2013-09-06 17:59:42','2013-09-06 17:59:42');
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_stats`
--

DROP TABLE IF EXISTS `user_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `radacct_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `realm` varchar(64) DEFAULT '',
  `nasipaddress` varchar(15) NOT NULL DEFAULT '',
  `nasidentifier` varchar(64) NOT NULL DEFAULT '',
  `framedipaddress` varchar(15) NOT NULL DEFAULT '',
  `callingstationid` varchar(50) NOT NULL DEFAULT '',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `acctinputoctets` bigint(20) NOT NULL,
  `acctoutputoctets` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_stats`
--

LOCK TABLES `user_stats` WRITE;
/*!40000 ALTER TABLE `user_stats` DISABLE KEYS */;
INSERT INTO `user_stats` VALUES (1,2,'rviljoen','Residence Inn','127.0.0.1','Not in request','','','2013-10-05 10:21:53',10,10),(2,3,'dvdwalt','College','10.1.0.1','cp2','10.1.0.3','00-1e-e5-a5-67-a6','2014-02-13 20:17:26',26546,15717);
/*!40000 ALTER TABLE `user_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `token` char(36) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `auth_type` varchar(128) NOT NULL DEFAULT 'sql',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `monitor` tinyint(1) NOT NULL DEFAULT '0',
  `last_accept_time` datetime DEFAULT NULL,
  `last_reject_time` datetime DEFAULT NULL,
  `last_accept_nas` varchar(128) DEFAULT NULL,
  `last_reject_nas` varchar(128) DEFAULT NULL,
  `last_reject_message` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `perc_time_used` int(6) DEFAULT NULL,
  `perc_data_used` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (44,'root','9b2b0416194bfdd0db089b9c09fad3163eae5383','52190fff-a800-48eb-b1f2-478bc0a80167','root','','','','','sql',1,0,NULL,NULL,NULL,NULL,NULL,4,8,4,NULL,1,10,'2012-12-10 13:14:13','2014-02-01 13:33:46',NULL,NULL),(182,'admin_college','b0451947e4b0ee5b5ee981afe174e6630d72ff58','521dc362-81a4-4a34-8a0b-052f03662c24','','','','','','sql',1,1,NULL,NULL,NULL,NULL,NULL,4,9,4,44,2,5,'2013-08-28 11:31:14','2014-02-01 13:33:46',NULL,NULL),(187,'dvdwalt','5db12f09b204bb56b5dac06877550d3c064e4e1a','52cfdc88-0388-44e3-b7b5-3bcfc0a80167','','','','','','sql',1,0,'2014-02-20 23:13:28','2013-10-05 20:39:14','127.0.0.1','127.0.0.1','Most likely PEAP failure. Run in debug',4,10,4,44,6,7,'2013-09-04 10:51:36','2014-02-01 13:33:46',NULL,NULL),(189,'rviljoen','f0fe3454c17b15bcd222188023ecb9fcf1d96b51','52cfdc98-e380-40a6-a67e-3bd3c0a80167','','','','','','sql',1,0,'2013-10-05 12:21:53','2014-01-09 09:36:05','127.0.0.1','127.0.0.1','Your account has expired=2C rviljoen=0D=0A',4,10,4,182,3,4,'2013-09-06 17:55:54','2014-02-01 13:33:46',NULL,NULL),(190,'admin_freddy','d130baf00734e6ea7d6d9333742d11d4f24d7db7','526c074c-1364-4543-93ce-052e03662c24','','','','','','sql',0,1,NULL,NULL,NULL,NULL,NULL,4,9,4,44,8,9,'2013-10-25 11:22:19','2014-02-01 13:33:46',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vouchers`
--

DROP TABLE IF EXISTS `vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `batch` varchar(128) NOT NULL DEFAULT '',
  `status` enum('new','used','depleted','expired') DEFAULT 'new',
  `perc_time_used` int(6) DEFAULT NULL,
  `perc_data_used` int(6) DEFAULT NULL,
  `last_accept_time` datetime DEFAULT NULL,
  `last_reject_time` datetime DEFAULT NULL,
  `last_accept_nas` varchar(128) DEFAULT NULL,
  `last_reject_nas` varchar(128) DEFAULT NULL,
  `last_reject_message` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vouchers`
--

LOCK TABLES `vouchers` WRITE;
/*!40000 ALTER TABLE `vouchers` DISABLE KEYS */;
INSERT INTO `vouchers` VALUES (36,'000032','TT','new',NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,'2014-01-05 23:01:03','2014-01-05 23:01:03'),(40,'000036','TT','new',NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,'2014-01-05 23:01:03','2014-01-05 23:01:03'),(55,'000051','test','new',NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,'2014-01-06 14:32:36','2014-01-06 14:32:36'),(61,'000052','','new',NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,'2014-01-06 14:41:58','2014-01-06 14:41:58'),(62,'000053','b','new',NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,'2014-01-06 21:58:23','2014-01-06 21:58:23'),(63,'000054','b','new',NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,'2014-01-06 21:58:23','2014-01-06 21:58:23'),(64,'000055','b','new',NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,'2014-01-06 21:58:23','2014-01-06 21:58:23'),(65,'000056','b','new',NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,'2014-01-06 21:58:23','2014-01-06 21:58:23'),(66,'000057','b','new',NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,'2014-01-06 21:58:24','2014-01-06 21:58:24'),(67,'000058','b','new',NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,'2014-01-06 21:58:24','2014-01-06 21:58:24'),(68,'000059','b','new',NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,'2014-01-06 21:58:24','2014-01-06 21:58:24'),(69,'000060','b','new',NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,'2014-01-06 21:58:24','2014-01-06 21:58:24'),(70,'000061','b','new',NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,'2014-01-06 21:58:24','2014-01-06 21:58:24'),(71,'000062','b','new',NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,'2014-01-06 21:58:24','2014-01-06 21:58:24');
/*!40000 ALTER TABLE `vouchers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-21 14:44:39
