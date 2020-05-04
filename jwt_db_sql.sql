/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.27 : Database - jwtdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jwtdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jwtdb`;

/*Table structure for table `parameters` */

DROP TABLE IF EXISTS `parameters`;

CREATE TABLE `parameters` (
  `parameter_id` int(11) NOT NULL AUTO_INCREMENT,
  `acronym` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `high_fault` varchar(255) DEFAULT NULL,
  `high_value` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `low_fault` varchar(255) DEFAULT NULL,
  `low_value` varchar(255) DEFAULT NULL,
  `measuring_unit` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  `is_energy_param` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  PRIMARY KEY (`parameter_id`),
  KEY `FKat28ycdy4875x8x4m4hmsddq3` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `parameters` */

insert  into `parameters`(`parameter_id`,`acronym`,`address`,`high_fault`,`high_value`,`label`,`low_fault`,`low_value`,`measuring_unit`,`type`,`site_id`,`is_energy_param`,`active`) values (1,'cu','Indore','1','10','Current','-10','0','ampere','digital',1,NULL,1),(5,'cu','Dewas','12','10','Current','-12','-10','ampere','digital',4,NULL,NULL),(6,'32','323','323','323','23','23','323','232','analog',5,NULL,1),(8,'re','fd','fd','fd','b','fd','fd','d','digital',2,NULL,NULL),(17,'b','Indore','10','10','Bijli','10','0','b','digital',4,NULL,NULL),(11,'v','a','s','a','Voltage','s','a','volts','analog',1,NULL,NULL),(12,'a','s','s','sd','d','s','dd','s','analog',2,NULL,NULL),(13,'ads','asda','asd','dasd','ad','ad','wad','dad','analog',2,NULL,NULL),(15,'ad','ads','ads','asd','Paani','asd','ada','ad','analog',4,NULL,NULL),(18,'n','n','12',NULL,'New','12',NULL,'n','analog',1,NULL,NULL);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`id`,`description`,`name`,`priority`) values (1,'Super Admin','SUPER_ADMIN',1),(4,'Admin role','ADMIN',2),(5,'User role','USER',3),(51,'Dynamic Chart','DYNAMIC_CHART',4),(52,'Static Chart','STATIC_CHART',5),(53,'Reports','REPORTS',6);

/*Table structure for table `sites` */

DROP TABLE IF EXISTS `sites`;

CREATE TABLE `sites` (
  `site_id` int(11) NOT NULL AUTO_INCREMENT,
  `device_address` varchar(255) DEFAULT NULL,
  `device_manuf` varchar(255) DEFAULT NULL,
  `device_model` varchar(255) DEFAULT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `posturl` varchar(255) DEFAULT NULL,
  `schemaurl` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `frequency` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `sites` */

insert  into `sites`(`site_id`,`device_address`,`device_manuf`,`device_model`,`device_name`,`posturl`,`schemaurl`,`site_name`,`user_id`,`organization`,`location`,`latitude`,`longitude`,`frequency`,`status`) values (1,'Indore','Yash','Yash@India','Master','http://microtonik.com/api/sites?site_id','http://microtonik.com/api/sites?site_id=2','Indore',5,'Yash Tech','Indore','123','456',NULL,1),(2,'Ujjain','Yash','Yash@India','Master','Dummy','Dummy','Ujjain',5,'Yash Tech','Ujjain',NULL,NULL,NULL,NULL),(3,'Delhi','Microtonik','M1','Master','Dummy Post URL','Dummy Schema URL','Delhi',9,'Yash Tech','Delhi','1234','1234',NULL,NULL),(4,'Dewas','M','Mq','Master','Dummy','Dummy Schema URL','Dewas',9,'Yash Tech','Dewas','1234','12',NULL,NULL),(5,'23','323','32','23','2','32','Bhubhneshwar',NULL,'Yash Tech','Jammu','1234','4321',NULL,NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `license` int(11) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`email`,`fullname`,`is_active`,`number`,`password`,`contact`,`license`,`organization`,`reg_date`) values (5,'er.aakash24@gmail.com','Aakash Jangid',1,NULL,'$2a$10$.tFhQmXMtK/o16YfJvMLoOhoqeZyptZNX9VrjejAB9pxjR.tlN6MO','8871966618',10,'Yash Tech','2019-03-10 00:00:00'),(12,'juneja414@gmail.com','Juneja Ishan',1,NULL,'$2a$10$1GMGiI/K5aA0cClQKvgcr.LRRkwp0rGmMgEjjw3A/i.jaReIHIz8K','1234567890',NULL,'Yash Tech','2019-04-14 00:00:00'),(9,'iamaakash24@gmail.com','Ishan Juneja',1,NULL,'$2a$10$/0AXy1ClrbheU8x58Vx0heX2J7O4xsGgPzRGTzvY2se2i9uFdIine','8871966618',NULL,'Yash Tech','2019-03-10 00:00:00'),(13,'aakash.smiles4ever@gmail.com','Aakash Jangid',1,NULL,'$2a$10$/0AXy1ClrbheU8x58Vx0heX2J7O4xsGgPzRGTzvY2se2i9uFdIine','1239829812',NULL,'Yash Tech','2019-04-14 00:00:00'),(14,'sandeepg75@gmail.com','Sandeep Gupta',0,NULL,'$2a$10$s3W8A9QE8Qy5xAVj5WNeYeS0qDTutjywc7fHqCA4GyZKIb3e4.zcO','9876454353',NULL,'Yash Tech','2019-04-14 00:00:00');

/*Table structure for table `user_otp` */

DROP TABLE IF EXISTS `user_otp`;

CREATE TABLE `user_otp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `user_otp` */

insert  into `user_otp`(`id`,`email`,`otp`,`password`) values (6,'er.aakash24@gmail.com',422404,NULL);

/*Table structure for table `user_roles` */

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKrhfovtciq1l558cw6udg0h0d3` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `user_roles` */

insert  into `user_roles`(`user_id`,`role_id`) values (5,1),(9,4),(12,5),(13,5),(13,51);

/*Table structure for table `user_site` */

DROP TABLE IF EXISTS `user_site`;

CREATE TABLE `user_site` (
  `user_id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`site_id`),
  KEY `FKnf2jbvhbrr4o1x4jx0omel3lq` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `user_site` */

/*Table structure for table `user_x_site` */

DROP TABLE IF EXISTS `user_x_site`;

CREATE TABLE `user_x_site` (
  `user_id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL,
  KEY `FK8p5wplvb9xh4n6ort5lgftwku` (`site_id`),
  KEY `FKhw0rxa332dvkvam5llvdtbihd` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `user_x_site` */

insert  into `user_x_site`(`user_id`,`site_id`) values (9,1),(13,2),(12,1),(13,1),(13,4);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
