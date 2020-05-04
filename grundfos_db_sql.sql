/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.27 : Database - grundfosdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`grundfosdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `grundfosdb`;

/*Table structure for table `admin_logs` */

DROP TABLE IF EXISTS `admin_logs`;

CREATE TABLE `admin_logs` (
  `admin_log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `action_date` date NOT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin_logs` */

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` bigint(20) NOT NULL,
  `gst_number` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `sap_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `company` */

insert  into `company`(`id`,`address`,`contact_email`,`contact_number`,`created_by`,`created_date`,`gst_number`,`logo`,`modified_by`,`modified_date`,`name`,`is_active`,`sap_id`) values (1,'Indr','a','a','er.aakash24@gmail.com',1560580836981,'A','A','A',1560580836981,'A',1,NULL),(2,'Indore',NULL,NULL,'er.aakash24@gmail.com',1564668383318,'12345',NULL,'er.aakash24@gmail.com',1564668624335,'Without Status',1,NULL),(3,'Test',NULL,NULL,'er.aakash24@gmail.com',1564668537131,'1234tr',NULL,'er.aakash24@gmail.com',1564668537131,'Second Company',0,NULL),(4,'Indore','aakash.j','8871966618','er.aakash24@gmail.com',1564668877167,'124',NULL,'er.aakash24@gmail.com',1564668931900,'Final Test',0,NULL),(5,'Indore','test@test.com','1234567896','er.aakash24@gmail.com',1566101637118,'12345',NULL,'er.aakash24@gmail.com',1566101793888,'New Comp',0,'SAP Id 2'),(6,'Indore','test@gmail.com','1234567890','er.aakash24@gmail.com',1570107448886,'1234',NULL,'er.aakash24@gmail.com',1570107612124,'Company',0,'Sap');

/*Table structure for table `fcm_details` */

DROP TABLE IF EXISTS `fcm_details`;

CREATE TABLE `fcm_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auth` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endpoint` varchar(255) DEFAULT NULL,
  `p256dh` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fcm_details` */

/*Table structure for table `group_logs` */

DROP TABLE IF EXISTS `group_logs`;

CREATE TABLE `group_logs` (
  `group_log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `action_date` date NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`group_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `group_logs` */

insert  into `group_logs`(`group_log_id`,`action`,`action_date`,`comment`,`group_name`,`user`) values (1,'Disabled','2019-10-02','Disabled Group','Texmo','er.aakash24@gmail.com');

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` bigint(20) NOT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `is_disabled` bit(1) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `groups` */

insert  into `groups`(`group_id`,`created_by`,`created_date`,`modified_by`,`modified_date`,`name`,`region`,`is_disabled`) values (1,'juneja414@gmail.com',1560532156575,'sandeep.gupta@mqbytes.com',1560581730000,'Texmo','Gwalior',''),(2,'juneja414@gmail.com',1560537471973,'er.aakash24@gmail.com',1567368453231,'CRI - Indore','Indore','\0'),(3,'juneja414@gmail.com',1560538319687,'juneja414@gmail.com',1560538319687,'CRI2','Bhopal','\0'),(4,'juneja414@gmail.com',1560580149976,'juneja414@gmail.com',1560580149976,'Microtroniks','Delhi','\0'),(5,'juneja414@gmail.com',1560580457662,'juneja414@gmail.com',1560580457662,'Eicher','Dewas','\0'),(6,'er.aakash24@gmail.com',1564319065062,'er.aakash24@gmail.com',1569957924022,'test',NULL,'');

/*Table structure for table `parameters` */

DROP TABLE IF EXISTS `parameters`;

CREATE TABLE `parameters` (
  `parameter_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `acronym` varchar(255) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` bigint(20) NOT NULL,
  `high_fault` varchar(255) DEFAULT NULL,
  `is_energy_param` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `low_fault` varchar(255) DEFAULT NULL,
  `measuring_unit` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `one_indicates` varchar(255) DEFAULT NULL,
  `zero_indicates` varchar(255) DEFAULT NULL,
  `fault_desc` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `blue` int(11) NOT NULL,
  `green` int(11) NOT NULL,
  `orange` int(11) NOT NULL,
  `red` int(11) NOT NULL,
  PRIMARY KEY (`parameter_id`),
  KEY `FKat28ycdy4875x8x4m4hmsddq3` (`site_id`),
  CONSTRAINT `FKat28ycdy4875x8x4m4hmsddq3` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

/*Data for the table `parameters` */

insert  into `parameters`(`parameter_id`,`acronym`,`active`,`address`,`created_by`,`created_date`,`high_fault`,`is_energy_param`,`label`,`low_fault`,`measuring_unit`,`modified_by`,`modified_date`,`type`,`site_id`,`one_indicates`,`zero_indicates`,`fault_desc`,`priority`,`blue`,`green`,`orange`,`red`) values (1,'V','','Indore','er.aakash24@gmail.com',29,'9',0,'Voltage','0','volt','er.aakash24@gmail.com',1564431924051,'analog',1,NULL,NULL,NULL,0,0,0,0,0),(9,NULL,'',NULL,'er.aakash24@gmail.com',1565600767865,NULL,0,'High Float',NULL,'','er.aakash24@gmail.com',1565600767865,'digital',1,NULL,NULL,NULL,0,0,0,0,0),(10,NULL,'',NULL,'er.aakash24@gmail.com',1565600768185,NULL,0,'Pressure Switch',NULL,'','er.aakash24@gmail.com',1565600768185,'digital',1,NULL,NULL,NULL,0,0,0,0,0),(11,NULL,'',NULL,'er.aakash24@gmail.com',1565600768252,NULL,1,'Total Water Output',NULL,'m3','er.aakash24@gmail.com',1565600768252,'analog',1,NULL,NULL,NULL,0,0,0,0,0),(12,NULL,'',NULL,'er.aakash24@gmail.com',1565600768285,NULL,1,'Daily Water Output',NULL,'m3','er.aakash24@gmail.com',1565600768285,'analog',1,NULL,NULL,NULL,0,0,0,0,0),(13,NULL,'',NULL,'er.aakash24@gmail.com',1565600768318,NULL,1,'Yearly Pump Run Hours',NULL,'h','er.aakash24@gmail.com',1565600768318,'analog',1,NULL,NULL,NULL,0,0,0,0,0),(14,NULL,'',NULL,'er.aakash24@gmail.com',1565600768351,NULL,0,'Total Pump Run Hours',NULL,'h','er.aakash24@gmail.com',1565600768351,'analog',1,NULL,NULL,NULL,0,0,0,0,0),(15,NULL,'',NULL,'er.aakash24@gmail.com',1565600768383,NULL,0,'Total Days Unused',NULL,'days','er.aakash24@gmail.com',1565600768383,'analog',1,NULL,NULL,NULL,0,0,0,0,0),(16,NULL,'',NULL,'er.aakash24@gmail.com',1565600768409,NULL,0,'Flow Processed Value',NULL,'m3/h','er.aakash24@gmail.com',1565600768409,'analog',1,NULL,NULL,NULL,0,0,0,0,0),(17,NULL,'',NULL,'er.aakash24@gmail.com',1565600768492,NULL,0,'Pressure Processed Value',NULL,'bar','er.aakash24@gmail.com',1565600768492,'analog',1,NULL,NULL,NULL,0,0,0,0,0),(18,NULL,'',NULL,'er.aakash24@gmail.com',1565600768517,NULL,0,'Pump Voltage',NULL,'volts','er.aakash24@gmail.com',1565600768517,'analog',1,NULL,NULL,NULL,0,0,0,0,0),(19,NULL,'',NULL,'er.aakash24@gmail.com',1565600768567,NULL,0,'Pump Current',NULL,'ampere','er.aakash24@gmail.com',1565600768567,'analog',1,NULL,NULL,NULL,0,0,0,0,0),(20,NULL,'',NULL,'er.aakash24@gmail.com',1565600768610,NULL,0,'Pump from PV',NULL,'Watt','er.aakash24@gmail.com',1565600768610,'analog',1,NULL,NULL,NULL,0,0,0,0,0),(21,NULL,'',NULL,'er.aakash24@gmail.com',1565600768666,NULL,0,'Pump Power',NULL,'Watt','er.aakash24@gmail.com',1565600768666,'analog',1,NULL,NULL,NULL,0,0,0,0,0),(22,NULL,'',NULL,'er.aakash24@gmail.com',1565600768691,NULL,1,'Energy',NULL,'KWh','er.aakash24@gmail.com',1565600768691,'analog',1,NULL,NULL,NULL,0,0,0,0,0),(23,NULL,'',NULL,'er.aakash24@gmail.com',1565600768724,NULL,0,'Pump Speed',NULL,'rpm','er.aakash24@gmail.com',1565600768724,'analog',1,NULL,NULL,NULL,0,0,0,0,0),(24,NULL,'',NULL,'er.aakash24@gmail.com',1565600768750,NULL,0,'AC/DC',NULL,'','er.aakash24@gmail.com',1565600768750,'digital',1,NULL,NULL,NULL,0,0,0,0,0),(25,NULL,'',NULL,'er.aakash24@gmail.com',1565601218683,NULL,0,'High Float',NULL,'','er.aakash24@gmail.com',1565601218683,'digital',4,NULL,NULL,NULL,0,0,0,0,0),(26,NULL,'',NULL,'er.aakash24@gmail.com',1565601218750,NULL,0,'Pressure Switch',NULL,'','er.aakash24@gmail.com',1565601218750,'digital',4,NULL,NULL,NULL,0,0,0,0,0),(27,NULL,'',NULL,'er.aakash24@gmail.com',1565601218808,NULL,1,'Total Water Output',NULL,'m3','er.aakash24@gmail.com',1565601218808,'analog',4,NULL,NULL,NULL,0,0,0,0,0),(28,NULL,'',NULL,'er.aakash24@gmail.com',1565601218849,NULL,1,'Daily Water Output',NULL,'m3','er.aakash24@gmail.com',1565601218849,'analog',4,NULL,NULL,NULL,0,0,0,0,0),(29,NULL,'',NULL,'er.aakash24@gmail.com',1565601218874,NULL,1,'Yearly Pump Run Hours',NULL,'h','er.aakash24@gmail.com',1565601218874,'analog',4,NULL,NULL,NULL,0,0,0,0,0),(30,NULL,'',NULL,'er.aakash24@gmail.com',1565601218900,NULL,0,'Total Pump Run Hours',NULL,'h','er.aakash24@gmail.com',1565601218900,'analog',4,NULL,NULL,NULL,0,0,0,0,0),(31,NULL,'',NULL,'er.aakash24@gmail.com',1565601218949,NULL,0,'Total Days Unused',NULL,'days','er.aakash24@gmail.com',1565601218949,'analog',4,NULL,NULL,NULL,0,0,0,0,0),(32,NULL,'',NULL,'er.aakash24@gmail.com',1565601219007,NULL,0,'Flow Processed Value',NULL,'m3/h','er.aakash24@gmail.com',1565601219007,'analog',4,NULL,NULL,NULL,0,0,0,0,0),(33,NULL,'',NULL,'er.aakash24@gmail.com',1565601219057,NULL,0,'Pressure Processed Value',NULL,'bar','er.aakash24@gmail.com',1565601219057,'analog',4,NULL,NULL,NULL,0,0,0,0,0),(34,NULL,'',NULL,'er.aakash24@gmail.com',1565601219124,NULL,0,'Pump Voltage',NULL,'volts','er.aakash24@gmail.com',1565601219124,'analog',4,NULL,NULL,NULL,0,0,0,0,0),(35,NULL,'',NULL,'er.aakash24@gmail.com',1565601219173,NULL,0,'Pump Current',NULL,'ampere','er.aakash24@gmail.com',1565601219173,'analog',4,NULL,NULL,NULL,0,0,0,0,0),(36,NULL,'',NULL,'er.aakash24@gmail.com',1565601219198,NULL,0,'Pump from PV',NULL,'Watt','er.aakash24@gmail.com',1565601219198,'analog',4,NULL,NULL,NULL,0,0,0,0,0),(37,NULL,'',NULL,'er.aakash24@gmail.com',1565601219223,NULL,0,'Pump Power',NULL,'Watt','er.aakash24@gmail.com',1565601219223,'analog',4,NULL,NULL,NULL,0,0,0,0,0),(38,NULL,'',NULL,'er.aakash24@gmail.com',1565601219248,NULL,1,'Energy',NULL,'KWh','er.aakash24@gmail.com',1565601219248,'analog',4,NULL,NULL,NULL,0,0,0,0,0),(39,NULL,'',NULL,'er.aakash24@gmail.com',1565601219281,NULL,0,'Pump Speed',NULL,'rpm','er.aakash24@gmail.com',1565601219281,'analog',4,NULL,NULL,NULL,0,0,0,0,0),(40,NULL,'',NULL,'er.aakash24@gmail.com',1565601219306,NULL,0,'AC/DC',NULL,'','er.aakash24@gmail.com',1565601219306,'digital',4,NULL,NULL,NULL,0,0,0,0,0),(41,'flt','',NULL,'er.aakash24@gmail.com',1565630683870,NULL,0,'High Float',NULL,'','er.aakash24@gmail.com',1565630683870,'digital',5,NULL,NULL,NULL,0,0,0,0,0),(42,'psw','',NULL,'er.aakash24@gmail.com',1565630683971,NULL,0,'Pressure Switch',NULL,'','er.aakash24@gmail.com',1565630683971,'digital',5,NULL,NULL,NULL,0,0,0,0,0),(43,'two','',NULL,'er.aakash24@gmail.com',1565630684072,NULL,1,'Total Water Output',NULL,'m3','er.aakash24@gmail.com',1565630684072,'analog',5,NULL,NULL,NULL,0,0,0,0,0),(44,'dwo','',NULL,'er.aakash24@gmail.com',1565630684177,NULL,1,'Daily Water Output',NULL,'m3','er.aakash24@gmail.com',1565630684177,'analog',5,NULL,NULL,NULL,0,0,0,0,0),(45,'ypr','',NULL,'er.aakash24@gmail.com',1565630684285,NULL,1,'Yearly Pump Run Hours',NULL,'h','er.aakash24@gmail.com',1565630684285,'analog',5,NULL,NULL,NULL,0,0,0,0,0),(46,'tpr','',NULL,'er.aakash24@gmail.com',1565630684375,NULL,0,'Total Pump Run Hours',NULL,'h','er.aakash24@gmail.com',1565630684375,'analog',5,NULL,NULL,NULL,0,0,0,0,0),(47,'tdu','',NULL,'er.aakash24@gmail.com',1565630684459,NULL,0,'Total Days Unused',NULL,'days','er.aakash24@gmail.com',1565630684459,'analog',5,NULL,NULL,NULL,0,0,0,0,0),(48,'fpv','',NULL,'er.aakash24@gmail.com',1565630684570,NULL,0,'Flow Processed Value',NULL,'m3/h','er.aakash24@gmail.com',1565630684570,'analog',5,NULL,NULL,NULL,0,0,0,0,0),(49,'ppv','',NULL,'er.aakash24@gmail.com',1565630684675,NULL,0,'Pressure Processed Value',NULL,'bar','er.aakash24@gmail.com',1565630684675,'analog',5,NULL,NULL,NULL,0,0,0,0,0),(50,'pvo','',NULL,'er.aakash24@gmail.com',1565630684820,NULL,0,'Pump Voltage',NULL,'volts','er.aakash24@gmail.com',1565630684820,'analog',5,NULL,NULL,NULL,0,0,0,0,0),(51,'pcu','',NULL,'er.aakash24@gmail.com',1565630684886,NULL,0,'Pump Current',NULL,'ampere','er.aakash24@gmail.com',1565630684886,'analog',5,NULL,NULL,NULL,0,0,0,0,0),(52,'ppv','',NULL,'er.aakash24@gmail.com',1565630684949,NULL,0,'Pump from PV',NULL,'Watt','er.aakash24@gmail.com',1565630684949,'analog',5,NULL,NULL,NULL,0,0,0,0,0),(53,'ppo','',NULL,'er.aakash24@gmail.com',1565630685111,NULL,0,'Pump Power',NULL,'Watt','er.aakash24@gmail.com',1565630685111,'analog',5,NULL,NULL,NULL,0,0,0,0,0),(54,'ene','',NULL,'er.aakash24@gmail.com',1565630685179,NULL,1,'Energy',NULL,'KWh','er.aakash24@gmail.com',1565630685179,'analog',5,NULL,NULL,NULL,0,0,0,0,0),(55,'spe','',NULL,'er.aakash24@gmail.com',1565630685283,NULL,0,'Pump Speed',NULL,'rpm','er.aakash24@gmail.com',1565630685283,'analog',5,NULL,NULL,NULL,0,0,0,0,0),(56,'adc','',NULL,'er.aakash24@gmail.com',1565630685361,NULL,0,'AC/DC',NULL,'','er.aakash24@gmail.com',1565630685361,'digital',5,NULL,NULL,NULL,0,0,0,0,0),(57,'HFL','',NULL,'er.aakash24@gmail.com',1566931871273,NULL,0,'High Float',NULL,'','er.aakash24@gmail.com',1566931871273,'digital',6,NULL,NULL,NULL,0,0,0,0,0),(58,'LFL','',NULL,'er.aakash24@gmail.com',1566931871418,NULL,0,'Low Float',NULL,'','er.aakash24@gmail.com',1566931871418,'digital',6,NULL,NULL,NULL,0,0,0,0,0),(59,'PSW','',NULL,'er.aakash24@gmail.com',1566931871490,NULL,0,'Pressure Switch',NULL,'','er.aakash24@gmail.com',1566931871490,'digital',6,NULL,NULL,NULL,0,0,0,0,0),(60,'TWO','',NULL,'er.aakash24@gmail.com',1566931871525,NULL,1,'Total Water Output',NULL,'m3','er.aakash24@gmail.com',1566931871525,'analog',6,NULL,NULL,NULL,0,0,0,0,0),(61,'DWO','',NULL,'er.aakash24@gmail.com',1566931871573,NULL,1,'Daily Water Output',NULL,'m3','er.aakash24@gmail.com',1566931871573,'analog',6,NULL,NULL,NULL,0,0,0,0,0),(62,'YPR','',NULL,'er.aakash24@gmail.com',1566931871608,NULL,1,'Yearly Pump Run Hours',NULL,'h','er.aakash24@gmail.com',1566931871608,'analog',6,NULL,NULL,NULL,0,0,0,0,0),(63,'TPR','',NULL,'er.aakash24@gmail.com',1566931871658,NULL,0,'Total Pump Run Hours',NULL,'h','er.aakash24@gmail.com',1566931871658,'analog',6,NULL,NULL,NULL,0,0,0,0,0),(64,'TDU','',NULL,'er.aakash24@gmail.com',1566931871690,NULL,0,'Total Days Unused',NULL,'days','er.aakash24@gmail.com',1566931871690,'analog',6,NULL,NULL,NULL,0,0,0,0,0),(65,'FPV','',NULL,'er.aakash24@gmail.com',1566931871724,NULL,0,'Flow Processed Value',NULL,'m3/h','er.aakash24@gmail.com',1566931871724,'analog',6,NULL,NULL,NULL,0,0,0,0,0),(66,'PPV','',NULL,'er.aakash24@gmail.com',1566931871784,NULL,0,'Pressure Processed Value',NULL,'bar','er.aakash24@gmail.com',1566931871784,'analog',6,NULL,NULL,NULL,0,0,0,0,0),(67,'PVL','',NULL,'er.aakash24@gmail.com',1566931871824,NULL,0,'Pump Voltage',NULL,'volts','er.aakash24@gmail.com',1566931871824,'analog',6,NULL,NULL,NULL,0,0,0,0,0),(68,'PCR','',NULL,'er.aakash24@gmail.com',1566931871955,NULL,0,'Pump Current',NULL,'ampere','er.aakash24@gmail.com',1566931871955,'analog',6,NULL,NULL,NULL,0,0,0,0,0),(69,'PVP','',NULL,'er.aakash24@gmail.com',1566931872005,NULL,0,'Pump from PV',NULL,'Watt','er.aakash24@gmail.com',1566931872005,'analog',6,NULL,NULL,NULL,0,0,0,0,0),(70,'PMP','',NULL,'er.aakash24@gmail.com',1566931872045,NULL,0,'Pump Power',NULL,'Watt','er.aakash24@gmail.com',1566931872045,'analog',6,NULL,NULL,NULL,0,0,0,0,0),(71,'PME','',NULL,'er.aakash24@gmail.com',1566931872117,NULL,1,'Energy',NULL,'KWh','er.aakash24@gmail.com',1566931872117,'analog',6,NULL,NULL,NULL,0,0,0,0,0),(72,'PMS','',NULL,'er.aakash24@gmail.com',1566931872154,NULL,0,'Pump Speed',NULL,'rpm','er.aakash24@gmail.com',1566931872154,'analog',6,NULL,NULL,NULL,0,0,0,0,0),(73,'PIN','',NULL,'er.aakash24@gmail.com',1566931872213,NULL,0,'AC/DC',NULL,'','er.aakash24@gmail.com',1566931872213,'digital',6,NULL,NULL,NULL,0,0,0,0,0),(74,'PFC','',NULL,'er.aakash24@gmail.com',1566931872326,NULL,0,'Pump Fault',NULL,'','er.aakash24@gmail.com',1566931872326,'digital',6,NULL,NULL,NULL,0,0,0,0,0),(75,'SFL','',NULL,'er.aakash24@gmail.com',1566931872397,NULL,0,'Sensor Fault',NULL,'','er.aakash24@gmail.com',1566931872397,'digital',6,NULL,NULL,NULL,0,0,0,0,0),(76,'PLC','',NULL,'er.aakash24@gmail.com',1566931872464,NULL,0,'PLC Fault',NULL,'','er.aakash24@gmail.com',1566931872464,'digital',6,NULL,NULL,NULL,0,0,0,0,0),(77,'HFL','',NULL,'er.aakash24@gmail.com',1566931965458,NULL,0,'High Float',NULL,'','er.aakash24@gmail.com',1566931965458,'digital',7,NULL,NULL,NULL,0,0,0,0,0),(78,'LFL','',NULL,'er.aakash24@gmail.com',1566931965511,NULL,0,'Low Float',NULL,'','er.aakash24@gmail.com',1566931965511,'digital',7,NULL,NULL,NULL,0,0,0,0,0),(79,'PSW','',NULL,'er.aakash24@gmail.com',1566931965561,NULL,0,'Pressure Switch',NULL,'','er.aakash24@gmail.com',1566931965561,'digital',7,NULL,NULL,NULL,0,0,0,0,0),(80,'TWO','',NULL,'er.aakash24@gmail.com',1566931965609,NULL,1,'Total Water Output',NULL,'m3','er.aakash24@gmail.com',1566931965609,'analog',7,NULL,NULL,NULL,0,0,0,0,0),(81,'DWO','',NULL,'er.aakash24@gmail.com',1566931965652,NULL,1,'Daily Water Output',NULL,'m3','er.aakash24@gmail.com',1566931965652,'analog',7,NULL,NULL,NULL,0,0,0,0,0),(82,'YPR','',NULL,'er.aakash24@gmail.com',1566931965685,NULL,1,'Yearly Pump Run Hours',NULL,'h','er.aakash24@gmail.com',1566931965685,'analog',7,NULL,NULL,NULL,0,0,0,0,0),(83,'TPR','',NULL,'er.aakash24@gmail.com',1566931965708,NULL,0,'Total Pump Run Hours',NULL,'h','er.aakash24@gmail.com',1566931965708,'analog',7,NULL,NULL,NULL,0,0,0,0,0),(84,'TDU','',NULL,'er.aakash24@gmail.com',1566931965735,NULL,0,'Total Days Unused',NULL,'days','er.aakash24@gmail.com',1566931965735,'analog',7,NULL,NULL,NULL,0,0,0,0,0),(85,'FPV','',NULL,'er.aakash24@gmail.com',1566931965768,NULL,0,'Flow Processed Value',NULL,'m3/h','er.aakash24@gmail.com',1566931965768,'analog',7,NULL,NULL,NULL,0,0,0,0,0),(86,'PPV','',NULL,'er.aakash24@gmail.com',1566931965809,NULL,0,'Pressure Processed Value',NULL,'bar','er.aakash24@gmail.com',1566931965809,'analog',7,NULL,NULL,NULL,0,0,0,0,0),(87,'PVL','',NULL,'er.aakash24@gmail.com',1566931965909,NULL,0,'Pump Voltage',NULL,'volts','er.aakash24@gmail.com',1566931965909,'analog',7,NULL,NULL,NULL,0,0,0,0,0),(88,'PCR','',NULL,'er.aakash24@gmail.com',1566931965959,NULL,0,'Pump Current',NULL,'ampere','er.aakash24@gmail.com',1566931965959,'analog',7,NULL,NULL,NULL,0,0,0,0,0),(89,'PVP','',NULL,'er.aakash24@gmail.com',1566931966001,NULL,0,'Pump from PV',NULL,'Watt','er.aakash24@gmail.com',1566931966001,'analog',7,NULL,NULL,NULL,0,0,0,0,0),(90,'PMP','',NULL,'er.aakash24@gmail.com',1566931966059,NULL,0,'Pump Power',NULL,'Watt','er.aakash24@gmail.com',1566931966059,'analog',7,NULL,NULL,NULL,0,0,0,0,0),(91,'PME','',NULL,'er.aakash24@gmail.com',1566931966091,NULL,1,'Energy',NULL,'KWh','er.aakash24@gmail.com',1566931966091,'analog',7,NULL,NULL,NULL,0,0,0,0,0),(92,'PMS','',NULL,'er.aakash24@gmail.com',1566931966133,NULL,0,'Pump Speed',NULL,'rpm','er.aakash24@gmail.com',1566931966133,'analog',7,NULL,NULL,NULL,0,0,0,0,0),(93,'PIN','',NULL,'er.aakash24@gmail.com',1566931966174,NULL,0,'AC/DC',NULL,'','er.aakash24@gmail.com',1566931966174,'digital',7,NULL,NULL,NULL,0,0,0,0,0),(94,'PFC','',NULL,'er.aakash24@gmail.com',1566931966241,NULL,0,'Pump Fault',NULL,'','er.aakash24@gmail.com',1566931966241,'digital',7,NULL,NULL,NULL,0,0,0,0,0),(95,'SFL','',NULL,'er.aakash24@gmail.com',1566931966333,NULL,0,'Sensor Fault',NULL,'','er.aakash24@gmail.com',1566931966333,'digital',7,NULL,NULL,NULL,0,0,0,0,0),(96,'PLC','',NULL,'er.aakash24@gmail.com',1566931966400,NULL,0,'PLC Fault',NULL,'','er.aakash24@gmail.com',1566931966400,'digital',7,NULL,NULL,NULL,0,0,0,0,0),(97,'dif','\0',NULL,'er.aakash24@gmail.com',1567449739210,NULL,NULL,'Test Digital',NULL,'d','er.aakash24@gmail.com',1567449936967,'digital',1,'High','Low',NULL,0,0,0,0,0),(98,'f','\0',NULL,'er.aakash24@gmail.com',1567968345134,NULL,NULL,'Fault',NULL,'F','er.aakash24@gmail.com',1567968345134,'fault',1,NULL,NULL,'Fault Param',0,0,0,0,0),(99,'2','\0',NULL,'er.aakash24@gmail.com',1567969146938,'2',NULL,'Test','2','2','er.aakash24@gmail.com',1567969146938,'analog',1,NULL,NULL,NULL,0,0,0,0,0),(100,'HFL','\0',NULL,'er.aakash24@gmail.com',1568575134024,'12',NULL,'High Fault Level','12','t','er.aakash24@gmail.com',1568576181117,'analog',2,NULL,NULL,NULL,1,0,0,0,0),(101,'t','\0',NULL,'er.aakash24@gmail.com',1568575177396,'123',NULL,'Test','123','t','er.aakash24@gmail.com',1568575177396,'cumulative',1,NULL,NULL,NULL,1,0,0,0,0),(102,'123','\0',NULL,'er.aakash24@gmail.com',1568575203865,'12',NULL,'Test123','12','312','er.aakash24@gmail.com',1568576199725,'analog',2,NULL,NULL,NULL,2,0,0,0,0),(103,'z','\0',NULL,'er.aakash24@gmail.com',1569135044509,'1234',NULL,'With Zone','12','z','er.aakash24@gmail.com',1569135143743,'analog',1,NULL,NULL,NULL,2,10,20,30,50),(104,'HFL','',NULL,'er.aakash24@gmail.com',1572360015539,'2',0,'High Float','0','','er.aakash24@gmail.com',1572360015539,'digital',9,NULL,NULL,NULL,21,0,0,0,0),(105,'LFL','',NULL,'er.aakash24@gmail.com',1572360015565,'2',0,'Low Float','0','','er.aakash24@gmail.com',1572360015565,'digital',9,NULL,NULL,NULL,22,0,0,0,0),(106,'PSW','',NULL,'er.aakash24@gmail.com',1572360015601,'2',0,'Pressure Switch','0','','er.aakash24@gmail.com',1572360015601,'digital',9,NULL,NULL,NULL,23,0,0,0,0),(107,'TWO','',NULL,'er.aakash24@gmail.com',1572360015664,'100',1,'Total Water Output','0','m3','er.aakash24@gmail.com',1572360015664,'cumulative',9,NULL,NULL,NULL,12,0,0,0,0),(108,'DWO','',NULL,'er.aakash24@gmail.com',1572360015701,'100',1,'Daily Water Output','0','m3','er.aakash24@gmail.com',1572360015701,'cumulative',9,NULL,NULL,NULL,13,0,0,0,0),(109,'YPR','',NULL,'er.aakash24@gmail.com',1572360015739,'100',1,'Yearly Pump Run Hours','0','h','er.aakash24@gmail.com',1572360015739,'cumulative',9,NULL,NULL,NULL,14,0,0,0,0),(110,'TPR','',NULL,'er.aakash24@gmail.com',1572360015796,'500',0,'Total Pump Run Hours','0','h','er.aakash24@gmail.com',1572360015796,'cumulative',9,NULL,NULL,NULL,15,0,0,0,0),(111,'TDU','',NULL,'er.aakash24@gmail.com',1572360015825,'100',0,'Total Days Unused','0','days','er.aakash24@gmail.com',1572360015825,'cumulative',9,NULL,NULL,NULL,16,0,0,0,0),(112,'FPV','',NULL,'er.aakash24@gmail.com',1572360015910,'100',0,'Flow Processed Value','0','m3/h','er.aakash24@gmail.com',1572360015910,'analog',9,NULL,NULL,NULL,17,0,0,0,0),(113,'PPV','',NULL,'er.aakash24@gmail.com',1572360015975,'100',0,'Pressure Processed Value','0','bar','er.aakash24@gmail.com',1572360015975,'analog',9,NULL,NULL,NULL,18,0,0,0,0),(114,'PVL','',NULL,'er.aakash24@gmail.com',1572360016033,'500',0,'Pump Voltage','0','volts','er.aakash24@gmail.com',1572360016033,'analog',9,NULL,NULL,NULL,1,0,0,0,0),(115,'PCR','',NULL,'er.aakash24@gmail.com',1572360016126,'5',0,'Pump Current','0','ampere','er.aakash24@gmail.com',1572360016126,'analog',9,NULL,NULL,NULL,2,0,0,0,0),(116,'PVP','',NULL,'er.aakash24@gmail.com',1572360016173,'5000',0,'Power from PV','0','Watt','er.aakash24@gmail.com',1572360016173,'analog',9,NULL,NULL,NULL,8,0,0,0,0),(117,'PMP','',NULL,'er.aakash24@gmail.com',1572360016225,'5000',0,'Pump Power','0','Watt','er.aakash24@gmail.com',1572360016225,'analog',9,NULL,NULL,NULL,9,0,0,0,0),(118,'PME','',NULL,'er.aakash24@gmail.com',1572360016274,'100',1,'Energy','0','KWh','er.aakash24@gmail.com',1572360016274,'analog',9,NULL,NULL,NULL,10,0,0,0,0),(119,'PMS','',NULL,'er.aakash24@gmail.com',1572360016310,'5000',0,'Pump Speed','0','rpm','er.aakash24@gmail.com',1572360016310,'analog',9,NULL,NULL,NULL,11,0,0,0,0),(120,'PIN','',NULL,'er.aakash24@gmail.com',1572360016364,'2',0,'AC/DC','0','','er.aakash24@gmail.com',1572360016364,'digital',9,NULL,NULL,NULL,19,0,0,0,0),(121,'PFC','',NULL,'er.aakash24@gmail.com',1572360016414,'10',0,'Pump Fault','0','','er.aakash24@gmail.com',1572360016414,'fault',9,NULL,NULL,NULL,24,0,0,0,0),(122,'SFL','',NULL,'er.aakash24@gmail.com',1572360016450,'2',0,'Sensor Fault','0','','er.aakash24@gmail.com',1572360016450,'fault',9,NULL,NULL,NULL,25,0,0,0,0),(123,'PLC','',NULL,'er.aakash24@gmail.com',1572360016508,'2',0,'PLC Fault','0','','er.aakash24@gmail.com',1572360016508,'fault',9,NULL,NULL,NULL,26,0,0,0,0),(124,'HFL','',NULL,'er.aakash24@gmail.com',1572362919723,'2',0,'High Float','0','','er.aakash24@gmail.com',1572362919723,'digital',10,NULL,NULL,NULL,21,0,0,0,0),(125,'LFL','',NULL,'er.aakash24@gmail.com',1572362919769,'2',0,'Low Float','0','','er.aakash24@gmail.com',1572362919769,'digital',10,NULL,NULL,NULL,22,0,0,0,0),(126,'PSW','',NULL,'er.aakash24@gmail.com',1572362919803,'2',0,'Pressure Switch','0','','er.aakash24@gmail.com',1572362919803,'digital',10,NULL,NULL,NULL,23,0,0,0,0),(127,'TWO','',NULL,'er.aakash24@gmail.com',1572362919858,'100',1,'Total Water Output','0','m3','er.aakash24@gmail.com',1572362919858,'cumulative',10,NULL,NULL,NULL,12,0,0,0,0),(128,'DWO','',NULL,'er.aakash24@gmail.com',1572362919886,'100',1,'Daily Water Output','0','m3','er.aakash24@gmail.com',1572362919886,'cumulative',10,NULL,NULL,NULL,13,0,0,0,0),(129,'YPR','',NULL,'er.aakash24@gmail.com',1572362919943,'100',1,'Yearly Pump Run Hours','0','h','er.aakash24@gmail.com',1572362919943,'cumulative',10,NULL,NULL,NULL,14,0,0,0,0),(130,'TPR','',NULL,'er.aakash24@gmail.com',1572362919965,'500',0,'Total Pump Run Hours','0','h','er.aakash24@gmail.com',1572362919965,'cumulative',10,NULL,NULL,NULL,15,0,0,0,0),(131,'TDU','',NULL,'er.aakash24@gmail.com',1572362919993,'100',0,'Total Days Unused','0','days','er.aakash24@gmail.com',1572362919993,'cumulative',10,NULL,NULL,NULL,16,0,0,0,0),(132,'FPV','',NULL,'er.aakash24@gmail.com',1572362920024,'100',0,'Flow Processed Value','0','m3/h','er.aakash24@gmail.com',1572362920024,'analog',10,NULL,NULL,NULL,17,0,0,0,0),(133,'PPV','',NULL,'er.aakash24@gmail.com',1572362920051,'100',0,'Pressure Processed Value','0','bar','er.aakash24@gmail.com',1572362920051,'analog',10,NULL,NULL,NULL,18,0,0,0,0),(134,'PVL','',NULL,'er.aakash24@gmail.com',1572362920073,'500',0,'Pump Voltage','0','volts','er.aakash24@gmail.com',1572362920073,'analog',10,NULL,NULL,NULL,1,0,0,0,0),(135,'PCR','',NULL,'er.aakash24@gmail.com',1572362920102,'5',0,'Pump Current','0','ampere','er.aakash24@gmail.com',1572362920102,'analog',10,NULL,NULL,NULL,2,0,0,0,0),(136,'PVP','',NULL,'er.aakash24@gmail.com',1572362920131,'5000',0,'Power from PV','0','Watt','er.aakash24@gmail.com',1572362920131,'analog',10,NULL,NULL,NULL,8,0,0,0,0),(137,'PMP','',NULL,'er.aakash24@gmail.com',1572362920159,'5000',0,'Pump Power','0','Watt','er.aakash24@gmail.com',1572362920159,'analog',10,NULL,NULL,NULL,9,0,0,0,0),(138,'PME','',NULL,'er.aakash24@gmail.com',1572362920182,'100',1,'Energy','0','KWh','er.aakash24@gmail.com',1572362920182,'analog',10,NULL,NULL,NULL,10,0,0,0,0),(139,'PMS','',NULL,'er.aakash24@gmail.com',1572362920210,'5000',0,'Pump Speed','0','rpm','er.aakash24@gmail.com',1572362920210,'analog',10,NULL,NULL,NULL,11,0,0,0,0),(140,'PIN','',NULL,'er.aakash24@gmail.com',1572362920232,'2',0,'AC/DC','0','','er.aakash24@gmail.com',1572362920232,'digital',10,NULL,NULL,NULL,19,0,0,0,0),(141,'PFC','',NULL,'er.aakash24@gmail.com',1572362920269,'10',0,'Pump Fault','0','','er.aakash24@gmail.com',1572362920269,'fault',10,NULL,NULL,NULL,24,0,0,0,0),(142,'SFL','',NULL,'er.aakash24@gmail.com',1572362920317,'2',0,'Sensor Fault','0','','er.aakash24@gmail.com',1572362920317,'fault',10,NULL,NULL,NULL,25,0,0,0,0),(143,'PLC','',NULL,'er.aakash24@gmail.com',1572362920353,'2',0,'PLC Fault','0','','er.aakash24@gmail.com',1572362920353,'fault',10,NULL,NULL,NULL,26,0,0,0,0);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`id`,`description`,`name`,`priority`) values (1,'SUPER_ADMIN','SUPER_ADMIN',1),(2,'ADMIN','ADMIN',3),(3,'USER','USER',2);

/*Table structure for table `site_logs` */

DROP TABLE IF EXISTS `site_logs`;

CREATE TABLE `site_logs` (
  `site_log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `action_date` bigint(20) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`site_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `site_logs` */

/*Table structure for table `sites` */

DROP TABLE IF EXISTS `sites`;

CREATE TABLE `sites` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` bigint(20) NOT NULL,
  `frequency` bigint(20) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` bigint(20) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `year_cycle` varchar(255) DEFAULT NULL,
  `service_engineer_contact` varchar(255) DEFAULT NULL,
  `service_engineer_email` varchar(255) DEFAULT NULL,
  `service_hours` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgnvft1nosi2esfl6ohn9jfukv` (`company_id`),
  CONSTRAINT `FKgnvft1nosi2esfl6ohn9jfukv` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `sites` */

insert  into `sites`(`id`,`created_by`,`created_date`,`frequency`,`latitude`,`location`,`longitude`,`modified_by`,`modified_date`,`site_name`,`status`,`company_id`,`year_cycle`,`service_engineer_contact`,`service_engineer_email`,`service_hours`) values (1,'er.aakash24@gmail.com',1560580836981,500,'101','Indore','150',NULL,1560580836981,'Aa',1,1,'monthly','8871966618','test@gmail.com',10),(2,'er.aakash24@gmail.com',1564926805081,2,'123','Indore','213','er.aakash24@gmail.com',1564926805081,'Second Site',1,2,'quarterly',NULL,NULL,NULL),(3,'er.aakash24@gmail.com',1564933370906,5,'123','Indore','123','er.aakash24@gmail.com',1564933370906,'Test',1,4,'yearly',NULL,NULL,NULL),(4,'er.aakash24@gmail.com',1565601218568,1,'122','Indore','123','er.aakash24@gmail.com',1565601218568,'Test with Params',1,4,'monthly',NULL,NULL,NULL),(5,'er.aakash24@gmail.com',1565630682787,1,'123','demo','123','er.aakash24@gmail.com',1565630682787,'demo',1,3,'monthly',NULL,NULL,NULL),(6,'er.aakash24@gmail.com',1566931869290,5,'1231','Indore','1221','er.aakash24@gmail.com',1566931869290,'Testing Site',1,4,'quarterly',NULL,NULL,NULL),(7,'er.aakash24@gmail.com',1566931965246,1,'123','Indore','123','er.aakash24@gmail.com',1566931965246,'Event',1,4,'quarterly',NULL,NULL,NULL),(8,'er.aakash24@gmail.com',1572359916436,2,'123','Indore','123','er.aakash24@gmail.com',1572359916436,'Test',1,2,'quarterly','1239829812','engineer@gmail.com',300),(9,'er.aakash24@gmail.com',1572360015477,2,'123','Indore','123','er.aakash24@gmail.com',1572360015477,'Test',1,2,'quarterly','1239829812','engineer@gmail.com',300),(10,'er.aakash24@gmail.com',1572362919589,2,'1234','Indore','123','er.aakash24@gmail.com',1572362919589,'Last Site',1,6,'monthly','1239829812','engineer@gmail.com',100);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` bigint(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `max_sites` int(11) DEFAULT NULL,
  `max_users` int(11) DEFAULT NULL,
  `consultant` bit(1) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`contact`,`created_by`,`created_date`,`email`,`fullname`,`is_active`,`modified_by`,`modified_date`,`password`,`reg_date`,`max_sites`,`max_users`,`consultant`,`tag`) values (1,'8871966618','ME',1560580836981,'er.aakash24@gmail.com','Aakash',1,'er.aakash24@gmail.com',1569955552854,'$2a$10$AKD31ruA8yEjdIzLB40RG.x6Y0j3lJVNanU4vHWQvU/frschuYaoa','2019-06-15',10,6,'\0',NULL),(2,NULL,NULL,1560426940797,'juneja414@gmail.com','Ishan Juneja',1,'er.aakash24@gmail.com',1567368812693,'$2a$10$AKD31ruA8yEjdIzLB40RG.x6Y0j3lJVNanU4vHWQvU/frschuYaoa','2019-06-13',10,10,'\0',NULL),(3,NULL,NULL,1560426956488,'sandeep.gupta@mqbytes.com','Sandeep Gupta',1,'er.aakash24@gmail.com',1567368916993,'$2a$10$AKD31ruA8yEjdIzLB40RG.x6Y0j3lJVNanU4vHWQvU/frschuYaoa','2019-06-13',10,10,'\0',NULL),(4,'123','er.aakash24@gmail.com',1563101983753,'admin','Test',0,'er.aakash24@gmail.com',1563101983753,'$2a$10$AKD31ruA8yEjdIzLB40RG.x6Y0j3lJVNanU4vHWQvU/frschuYaoa',NULL,232,23,'\0',NULL),(5,'123','er.aakash24@gmail.com',1563103312897,'second','Second',1,'er.aakash24@gmail.com',1563103312897,'$2a$10$AKD31ruA8yEjdIzLB40RG.x6Y0j3lJVNanU4vHWQvU/frschuYaoa',NULL,12,12,'\0',NULL),(6,'12313','er.aakash24@gmail.com',1563103972607,'as','Ek or',0,'er.aakash24@gmail.com',1563103972607,'$2a$10$AKD31ruA8yEjdIzLB40RG.x6Y0j3lJVNanU4vHWQvU/frschuYaoa',NULL,21,12,'\0',NULL),(7,'123','er.aakash24@gmail.com',1563104477245,'','test',0,'er.aakash24@gmail.com',1563104477245,'$2a$10$AKD31ruA8yEjdIzLB40RG.x6Y0j3lJVNanU4vHWQvU/frschuYaoa',NULL,123,213,'\0',NULL),(9,'8871966618','er.aakash24@gmail.com',1564319065057,'ad','Babu',0,'er.aakash24@gmail.com',1564319065057,'$2a$10$AKD31ruA8yEjdIzLB40RG.x6Y0j3lJVNanU4vHWQvU/frschuYaoa',NULL,NULL,NULL,'\0',NULL),(11,'1234','er.aakash24@gmail.com',1564319604722,'test','Test',0,'er.aakash24@gmail.com',1564319604722,'$2a$10$AKD31ruA8yEjdIzLB40RG.x6Y0j3lJVNanU4vHWQvU/frschuYaoa',NULL,NULL,NULL,'\0',NULL),(12,'123422312','er.aakash24@gmail.com',1564319992051,'testst','Test',0,'er.aakash24@gmail.com',1564319992051,'$2a$10$AKD31ruA8yEjdIzLB40RG.x6Y0j3lJVNanU4vHWQvU/frschuYaoa',NULL,NULL,NULL,'\0',NULL),(14,'1234567890','er.aakash24@gmail.com',1566103192705,'test@test.com','Consultant',0,'er.aakash24@gmail.com',1570107612124,NULL,NULL,50,50,'',NULL);

/*Table structure for table `user_logs` */

DROP TABLE IF EXISTS `user_logs`;

CREATE TABLE `user_logs` (
  `user_log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `action_date` bigint(20) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_logs` */

/*Table structure for table `user_otp` */

DROP TABLE IF EXISTS `user_otp`;

CREATE TABLE `user_otp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `user_otp` */

insert  into `user_otp`(`id`,`email`,`otp`,`password`) values (1,'er.aakash24@gmail.com',243249,NULL);

/*Table structure for table `user_x_companies` */

DROP TABLE IF EXISTS `user_x_companies`;

CREATE TABLE `user_x_companies` (
  `user_id` bigint(20) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`company_id`),
  KEY `FK2u6en0ikpqnpm9jjvj6rbhpkj` (`company_id`),
  CONSTRAINT `FK2u6en0ikpqnpm9jjvj6rbhpkj` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FKiwyq550rgamhg3dqpw8qk3n2b` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_x_companies` */

insert  into `user_x_companies`(`user_id`,`company_id`) values (2,1),(14,6);

/*Table structure for table `user_x_groups` */

DROP TABLE IF EXISTS `user_x_groups`;

CREATE TABLE `user_x_groups` (
  `user_id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `FKolmtge6qvgiscb1jvupmhnqvj` (`group_id`),
  CONSTRAINT `FKet14ykog5p5un101f2ei8d0mu` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKolmtge6qvgiscb1jvupmhnqvj` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_x_groups` */

insert  into `user_x_groups`(`user_id`,`group_id`) values (14,1),(1,2),(3,2),(3,3),(2,4),(3,4),(1,6),(9,6);

/*Table structure for table `user_x_roles` */

DROP TABLE IF EXISTS `user_x_roles`;

CREATE TABLE `user_x_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKdx0spynefftc5pfnvf6ct8pw5` (`role_id`),
  CONSTRAINT `FKdx0spynefftc5pfnvf6ct8pw5` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKmc7ihdxuc9sy22yalepu7cmpw` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_x_roles` */

insert  into `user_x_roles`(`user_id`,`role_id`) values (1,1),(1,2),(2,2),(3,2),(4,2),(6,2),(14,2),(5,3),(7,3),(9,3),(11,3),(12,3);

/*Table structure for table `user_x_sites` */

DROP TABLE IF EXISTS `user_x_sites`;

CREATE TABLE `user_x_sites` (
  `user_id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`site_id`),
  KEY `FKkaxr4c7qfrpj79ee12oqfk01v` (`site_id`),
  CONSTRAINT `FKkaxr4c7qfrpj79ee12oqfk01v` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`),
  CONSTRAINT `FKo4h8w79dp9f7rj7t6ik8bo7vs` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_x_sites` */

insert  into `user_x_sites`(`user_id`,`site_id`) values (1,1),(11,1),(1,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
