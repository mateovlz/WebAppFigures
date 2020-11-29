/*
SQLyog Community v12.2.5 (32 bit)
MySQL - 5.7.11 : Database - figures
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`figures` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `figures`;

/*Table structure for table `ecuacion` */

DROP TABLE IF EXISTS `ecuacion`;

CREATE TABLE `ecuacion` (
  `CODIGO_ECUACION` int(20) NOT NULL AUTO_INCREMENT COMMENT 'CODIGO_ECUACION',
  `VALOR_A` double DEFAULT NULL COMMENT 'VALOR_A',
  `VALOR_B` double DEFAULT NULL COMMENT 'VALOR_B',
  `VALOR_C` double DEFAULT NULL COMMENT 'VALOR_C',
  `VALOR_D` double DEFAULT NULL COMMENT 'VALOR_D',
  `VALOR_E` double DEFAULT NULL COMMENT 'VALOR_E',
  `RESULTADO` double DEFAULT NULL COMMENT 'RESULTADO',
  `RESULTADO_PARSED` varchar(500) DEFAULT NULL COMMENT 'RESULTADO_PARSED',
  PRIMARY KEY (`CODIGO_ECUACION`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `ecuacion` */

insert  into `ecuacion`(`CODIGO_ECUACION`,`VALOR_A`,`VALOR_B`,`VALOR_C`,`VALOR_D`,`VALOR_E`,`RESULTADO`,`RESULTADO_PARSED`) values 
(9,4,4,4,4,4,0.23374148551069,'((((((4 + 4) / ( 4 + 4))) - (acos(( 4 - 4) / 10))) / (10 * (asin((4 * 1) / 10)))) + ((((asin(4 / (4 * 9))) * sqrt((4 + 4)))) / (acos((sqrt(15 - 4) / 5)))))'),
(10,2,2,2,2,2,0.0074647322361888,'((((((2 + 2) / ( 2 + 2))) - (acos(( 2 - 2) / 10))) / (10 * (asin((2 * 1) / 10)))) + ((((asin(2 / (2 * 9))) * sqrt((2 + 2)))) / (acos((sqrt(15 - 2) / 5)))))');

/*Table structure for table `trapecio` */

DROP TABLE IF EXISTS `trapecio`;

CREATE TABLE `trapecio` (
  `CODIGO_TRAPECIO` int(10) NOT NULL AUTO_INCREMENT,
  `BASE_MAYOR` double DEFAULT NULL,
  `BASE_MENOR` double DEFAULT NULL,
  `ALTURA` double DEFAULT NULL,
  `LADO_DERECHO` double DEFAULT NULL,
  `LADO_IZQUIERDO` double DEFAULT NULL,
  `RESUL_AREA` double DEFAULT NULL,
  `RESUL_PERIMETRO` double DEFAULT NULL,
  PRIMARY KEY (`CODIGO_TRAPECIO`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `trapecio` */

insert  into `trapecio`(`CODIGO_TRAPECIO`,`BASE_MAYOR`,`BASE_MENOR`,`ALTURA`,`LADO_DERECHO`,`LADO_IZQUIERDO`,`RESUL_AREA`,`RESUL_PERIMETRO`) values 
(32,2,2,2,2,2,4,8),
(33,34.2,12,23,12,1,531.3,59.2);

/*Table structure for table `triangulo` */

DROP TABLE IF EXISTS `triangulo`;

CREATE TABLE `triangulo` (
  `CODIGO_TRIANGULO` int(20) NOT NULL AUTO_INCREMENT COMMENT 'CODIGO_TRIANGULO',
  `BASE` double DEFAULT NULL COMMENT 'BASE',
  `ALTURA` double DEFAULT NULL COMMENT 'ALTURA',
  `LADO_DERECHO` double DEFAULT NULL COMMENT 'LADO_DERECHO',
  `LADO_IZQUIERDO` double DEFAULT NULL COMMENT 'LADO_IZQUIERDO',
  `RESUL_AREA` double DEFAULT NULL COMMENT 'RESUL_AREA',
  `RESUL_PERIMETRO` double DEFAULT NULL COMMENT 'RESUL_PERIMETRO',
  PRIMARY KEY (`CODIGO_TRIANGULO`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `triangulo` */

insert  into `triangulo`(`CODIGO_TRIANGULO`,`BASE`,`ALTURA`,`LADO_DERECHO`,`LADO_IZQUIERDO`,`RESUL_AREA`,`RESUL_PERIMETRO`) values 
(16,2,2,2,2,2,6),
(17,1.2,12.2,2.3,2.1,7.32,5.6);

/*Table structure for table `tridimensionales` */

DROP TABLE IF EXISTS `tridimensionales`;

CREATE TABLE `tridimensionales` (
  `CODIGO_TRIDIME` int(20) NOT NULL AUTO_INCREMENT COMMENT 'CODIGO_TRIDIME',
  `ARISTA_ICOSAEDRO` double DEFAULT NULL COMMENT 'ARISTA_ICOSAEDRO',
  `ARISTA_DODECAEDRO` double DEFAULT NULL COMMENT 'ARISTA_DODECAEDRO',
  `RESUL_AREA_ICO` double DEFAULT NULL COMMENT 'RESUL_AREA_ICO',
  `RESUL_VOLUMEN_ICO` double DEFAULT NULL COMMENT 'RESUL_VOLUMEN_IC',
  `RESUL_AREA_DODE` double DEFAULT NULL COMMENT 'RESUL_AREA_DODE',
  `RESUL_VOLUMEN_DODE` double DEFAULT NULL COMMENT 'RESUL_VOLUMEN_DO',
  PRIMARY KEY (`CODIGO_TRIDIME`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tridimensionales` */

insert  into `tridimensionales`(`CODIGO_TRIDIME`,`ARISTA_ICOSAEDRO`,`ARISTA_DODECAEDRO`,`RESUL_AREA_ICO`,`RESUL_VOLUMEN_ICO`,`RESUL_AREA_DODE`,`RESUL_VOLUMEN_DODE`) values 
(9,1,1,8.6602540378444,2.1816949906249,20.645728807068,7.6631189606246);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;