/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.1.56-community : Database - employeedb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`employeedb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `employeedb`;

/*Table structure for table `departments` */

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
  `dept_no` char(4) NOT NULL,
  `dept_name` varchar(40) NOT NULL,
  PRIMARY KEY (`dept_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `departments` */

insert  into `departments`(`dept_no`,`dept_name`) values ('1','Training'),('2','Adminstration'),('3','HR'),('4','Network');

/*Table structure for table `dept_emp` */

DROP TABLE IF EXISTS `dept_emp`;

CREATE TABLE `dept_emp` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  KEY `emp_no` (`emp_no`),
  KEY `dept_no` (`dept_no`),
  CONSTRAINT `dept_emp_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `dept_emp_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dept_emp` */

insert  into `dept_emp`(`emp_no`,`dept_no`,`from_date`,`to_date`) values (36,'1','2018-04-09','2018-04-16');

/*Table structure for table `dept_manager` */

DROP TABLE IF EXISTS `dept_manager`;

CREATE TABLE `dept_manager` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  KEY `emp_no` (`emp_no`),
  KEY `dept_no` (`dept_no`),
  CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dept_manager` */

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `emp_no` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(14) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `hire_date` date NOT NULL,
  PRIMARY KEY (`emp_no`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `employees` */

insert  into `employees`(`emp_no`,`first_name`,`last_name`,`birth_date`,`gender`,`hire_date`) values (1,'Aakash','Jangid','2018-04-04',NULL,'2018-04-04'),(17,'Test','Test','2018-04-17',NULL,'2018-04-06'),(18,'Patient','1','2018-04-01',NULL,'2018-04-02'),(20,'Patient','12','2018-04-01',NULL,'2018-04-02'),(21,'Employee','1','2018-04-14',NULL,'2018-04-09'),(22,'Employee','2','2018-04-18',NULL,'2018-04-08'),(29,'Employee','3','2010-06-16',NULL,'2018-04-17'),(34,'Shyam','Patidar','2018-04-03',NULL,'2018-04-04'),(35,'Aakash','Jangid','2018-04-11',NULL,'2018-04-10'),(36,'Aakash','Jangid','2018-04-11',NULL,'2018-04-10');

/*Table structure for table `salaries` */

DROP TABLE IF EXISTS `salaries`;

CREATE TABLE `salaries` (
  `salary` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `emp_no` int(11) NOT NULL,
  KEY `emp_no` (`emp_no`),
  CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `salaries` */

insert  into `salaries`(`salary`,`from_date`,`to_date`,`emp_no`) values (15000,'2018-04-04','2018-04-04',1),(20000,'2018-04-11','2018-04-16',22),(15873,'2018-04-11','2018-04-16',34),(5000000,'2018-04-18','2018-04-20',35),(5000000,'2018-04-18','2018-04-20',36);

/*Table structure for table `titles` */

DROP TABLE IF EXISTS `titles`;

CREATE TABLE `titles` (
  `emp_no` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  KEY `emp_no` (`emp_no`),
  CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `titles` */

insert  into `titles`(`emp_no`,`title`,`from_date`,`to_date`) values (34,'Trainee','2018-04-17','2018-04-16'),(35,'Tech Lead','2018-04-17','2018-04-24'),(36,'Tech Lead','2018-04-17','2018-04-24');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
