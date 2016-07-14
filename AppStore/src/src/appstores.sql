/*
SQLyog Enterprise v12.12 (64 bit)
MySQL - 5.6.13 : Database - appstores
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`appstores` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `appstores`;

/*Table structure for table `app_cata` */

DROP TABLE IF EXISTS `app_cata`;

CREATE TABLE `app_cata` (
  `appid` varchar(20) NOT NULL DEFAULT '',
  `catalogid` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`appid`,`catalogid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `app_cata` */

/*Table structure for table `app_info` */

DROP TABLE IF EXISTS `app_info`;

CREATE TABLE `app_info` (
  `appid` varchar(20) NOT NULL,
  `score` int(2) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `thumbnail_url` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `developer` varchar(255) DEFAULT NULL,
  `top5App` varchar(110) DEFAULT NULL,
  PRIMARY KEY (`appid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `app_info` */


/*Table structure for table `catalog` */

DROP TABLE IF EXISTS `catalog`;

CREATE TABLE `catalog` (
  `catalogid` varchar(20) NOT NULL,
  `catalogname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`catalogid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `catalog` */

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `commentid` varchar(20) NOT NULL DEFAULT '',
  `content` varchar(50) DEFAULT NULL,
  `rate` float(2,1) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `appid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`commentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `comment` */

insert  into `comment`(`commentid`,`content`,`rate`,`time`,`userid`,`appid`) values ('1','1',1.0,'2014-10-19','wuqun1','wuqun3');

/*Table structure for table `orderdetail` */

DROP TABLE IF EXISTS `orderdetail`;

CREATE TABLE `orderdetail` (
  `detailid` varchar(20) NOT NULL,
  `orderid` varchar(20) DEFAULT NULL,
  `appid` varchar(20) DEFAULT NULL,
  `quantity` int(3) DEFAULT NULL,
  PRIMARY KEY (`detailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orderdetail` */

/*Table structure for table `orderinfo` */

DROP TABLE IF EXISTS `orderinfo`;

CREATE TABLE `orderinfo` (
  `orderID` varchar(20) NOT NULL,
  `userId` varchar(20) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orderinfo` */

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `paymentId` varchar(20) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `midname` varchar(20) DEFAULT NULL,
  `number` varchar(16) DEFAULT NULL,
  `expMonth` varchar(2) DEFAULT NULL,
  `expYear` varchar(4) DEFAULT NULL,
  `CVV` varchar(3) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `holderID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`paymentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` varchar(20) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`userid`,`username`,`password`,`email`) values ('wwang','wwang','123456','wwanglsu@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;