/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.45-community-nt : Database - mitienda
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`mitienda` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mitienda`;

/*Table structure for table `material` */

DROP TABLE IF EXISTS `material`;

CREATE TABLE `material` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `price` decimal(10,2) default NULL,
  `image` varchar(100) default NULL,
  `description` text,
  `created_at` timestamp NULL default CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `material` */

insert  into `material`(`id`,`name`,`price`,`image`,`description`,`created_at`,`updated_at`) values (1,'Samsung S8','10000.00',NULL,'Mobile phone','2017-12-12 18:17:35',NULL),(2,'iPhone 10','100000.00',NULL,'Apple phone','2017-12-12 18:18:28',NULL),(3,'Bananas','100.00',NULL,'Yellow Bananas','2017-12-12 18:18:45',NULL);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL auto_increment,
  `store_id` int(11) default NULL,
  `order_state` varchar(110) default NULL,
  `material_id` int(11) default NULL,
  `quantity` int(11) default NULL,
  `created_at` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

/*Table structure for table `store` */

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `id` int(11) NOT NULL auto_increment,
  `store_name` varchar(100) default NULL,
  `description` text,
  `created_at` timestamp NULL default CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `store` */

insert  into `store`(`id`,`store_name`,`description`,`created_at`,`updated_at`) values (1,'Tienda Mobile','Location 1','2017-12-12 18:19:27',NULL),(2,'Tienda Fancy Mobile','Location 2','2017-12-12 18:19:37',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
