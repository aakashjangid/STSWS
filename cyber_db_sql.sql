/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.27 : Database - cyber_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cyber_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cyber_db`;

/*Table structure for table `dummy` */

DROP TABLE IF EXISTS `dummy`;

CREATE TABLE `dummy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `cost` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `dummy` */

insert  into `dummy`(`id`,`name`,`cost`) values (1,'AME',24887900),(2,'AME',92480000),(3,'AME',124824000),(4,'AME',147328000),(5,'AME',167484992),(6,'AME',238559008),(7,'AME',326815008),(8,'AME',344630016),(9,'AME',472486016);

/*Table structure for table `onlineforms` */

DROP TABLE IF EXISTS `onlineforms`;

CREATE TABLE `onlineforms` (
  `onlineFormId` int(11) NOT NULL AUTO_INCREMENT,
  `onlineFormType` varchar(20) NOT NULL,
  `applicantName` varchar(100) DEFAULT NULL,
  `amount` double NOT NULL,
  `onlineFormDate` date NOT NULL,
  `onlineFormTime` time NOT NULL,
  PRIMARY KEY (`onlineFormId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `onlineforms` */

insert  into `onlineforms`(`onlineFormId`,`onlineFormType`,`applicantName`,`amount`,`onlineFormDate`,`onlineFormTime`) values (1,'UPSC','Test',123,'2018-12-31','10:00:00'),(2,'DAVV','1123',133,'2018-12-31','10:00:00'),(3,'UPSC','asd',123,'2018-12-31','10:00:00'),(4,'RGPV','ssdfd',232,'2018-12-31','10:00:00'),(5,'DAVV','Rohan',1000,'2019-01-03','12:00:33'),(6,'DAVV','Aakash',123,'2019-01-10','14:55:36');

/*Table structure for table `onlineworks` */

DROP TABLE IF EXISTS `onlineworks`;

CREATE TABLE `onlineworks` (
  `onlineWorkId` int(11) NOT NULL AUTO_INCREMENT,
  `onlineWorkType` varchar(20) NOT NULL,
  `applicantName` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `onlineWorkDate` date NOT NULL,
  `onlineWorkTime` time NOT NULL,
  PRIMARY KEY (`onlineWorkId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `onlineworks` */

insert  into `onlineworks`(`onlineWorkId`,`onlineWorkType`,`applicantName`,`amount`,`onlineWorkDate`,`onlineWorkTime`) values (1,'Aadhar Card','Mera',123,'2018-12-31','19:21:25');

/*Table structure for table `otherworks` */

DROP TABLE IF EXISTS `otherworks`;

CREATE TABLE `otherworks` (
  `otherWorkId` int(11) NOT NULL AUTO_INCREMENT,
  `otherWorkType` varchar(50) NOT NULL,
  `applicantName` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `otherWorkDate` date NOT NULL,
  `otherWorkTime` time NOT NULL,
  PRIMARY KEY (`otherWorkId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `otherworks` */

insert  into `otherworks`(`otherWorkId`,`otherWorkType`,`applicantName`,`amount`,`otherWorkDate`,`otherWorkTime`) values (1,'Other','other',123,'2018-12-31','19:19:57'),(2,'Yash Form','aakash',123,'2019-01-03','12:04:52'),(3,'CJMP','Shriyanshi',630,'2019-01-05','13:02:01');

/*Table structure for table `tickets` */

DROP TABLE IF EXISTS `tickets`;

CREATE TABLE `tickets` (
  `ticketId` int(11) NOT NULL AUTO_INCREMENT,
  `bookingType` varchar(20) NOT NULL,
  `bookingFor` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `ticketDate` date NOT NULL,
  `ticketTime` time NOT NULL,
  PRIMARY KEY (`ticketId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tickets` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`userId`,`name`,`email`,`password`) values (1,'Aakash Jangid','er.aakash24@gmail.com','123');

/*Table structure for table `works` */

DROP TABLE IF EXISTS `works`;

CREATE TABLE `works` (
  `workId` int(11) NOT NULL AUTO_INCREMENT,
  `workType` varchar(50) NOT NULL,
  `applicantName` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `workDate` date NOT NULL,
  `workTime` time NOT NULL,
  PRIMARY KEY (`workId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `works` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
