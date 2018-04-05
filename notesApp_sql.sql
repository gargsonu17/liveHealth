/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_Id` int(11) NOT NULL, AUTO_INCREMENTAL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,

/*Data for the table `users` */

insert  into `users`(`user_Id`,`name`,`email`,`password`) values 
(103,'Alex Pandian','pandian.alex@gmail.com','alexpandian'),
(113,'John Smith','smith.john@yahoo.com','johnsmith'),
(123,'Hebrot Cooper','cooper.hebrot@rediffmail.com','hebrotcooper'),
(133,'Paul Saul','saul.paul@ymail.com','paulsaul'),
(143,'Murphy Diane','diane.murphy@cars.com','murphydiane'),
(153,'John Paul','paul.john@gmail.com','johnpaul'),
(163,'Jeff Kennedy','kennedy.jeff@gmail.com','jeffkennedy'),
(173,'Patterson William','william.patterson@gmail.com','pattersonwilliam'),
(183,'Bondur','Gerard','x5408','gbondur@classicmodelcars.com','4',1056,'Sale Manager (EMEA)'),


/*Table structure for table `notes` */

DROP TABLE IF EXISTS `notes`;

CREATE TABLE `notes` (
  `notesNumber` int(11) NOT NULL,
  `titleName` varchar(255) NOT NULL,
  `keywordName` varchar(50) NOT NULL,
  `authorName` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`name`),
  KEY `name` (`name`),
  CONSTRAINT `titleName_ibfk_1` FOREIGN KEY (`name`) REFERENCES `users` (`user_Id`),
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
