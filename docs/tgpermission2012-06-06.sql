/*
SQLyog Enterprise Trial - MySQL GUI v8.14 
MySQL - 5.1.45-community : Database - tgpermission
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tgpermission` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tgpermission`;

/*Table structure for table `c_action` */

DROP TABLE IF EXISTS `c_action`;

CREATE TABLE `c_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录Id',
  `name` varchar(30) NOT NULL COMMENT '操作名称',
  `enname` varchar(30) NOT NULL COMMENT '英文名称',
  `handler` varchar(100) DEFAULT NULL COMMENT '操作方法',
  `icon` varchar(60) DEFAULT NULL COMMENT '图标',
  `status` varchar(30) NOT NULL COMMENT '状态',
  `orderid` int(10) unsigned DEFAULT NULL COMMENT '排序',
  `memo` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `enname` (`enname`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `c_action` */

insert  into `c_action`(`id`,`name`,`enname`,`handler`,`icon`,`status`,`orderid`,`memo`) values (1,'新增','add','add()','','status100',1,''),(4,'删除','delete','delete()','','status100',2,''),(5,'修改','modify','modify()','','status100',3,''),(7,'查询','query','query()','','status100',7,''),(8,'审核','validate','validate()','','status100',8,''),(10,'刷新','refresh','refresh()','','status100',9,''),(11,'高级查询','advanceQuery','','','status100',10,''),(12,'查看','detail','','','status100',11,''),(13,'添加操作','addOperation','','','status100',12,''),(14,'分配资源','assignResource','','','status100',13,''),(15,'分配操作','assignAction','','','status100',14,''),(16,'添加用户','addUser','','','status100',15,''),(17,'删除组内用户','deleteGroupUser','','','status100',16,''),(18,'组授权角色','groupAuthRole','','','status100',17,''),(19,'查看组拥有的角色','detailGroupRole','','','status100',18,''),(20,'移除组拥有的角色','removeGroupRole','','','status100',19,''),(21,'新增流程','addFlow','','','status100',20,'');

/*Table structure for table `c_arguments` */

DROP TABLE IF EXISTS `c_arguments`;

CREATE TABLE `c_arguments` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `name` varchar(30) DEFAULT NULL COMMENT '参数键名',
  `value` varchar(100) DEFAULT NULL COMMENT '参数键值',
  `memo` varchar(100) DEFAULT NULL COMMENT '备注',
  `orderid` int(10) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `c_arguments` */

insert  into `c_arguments`(`id`,`name`,`value`,`memo`,`orderid`) values (3,'SYSTEM_PASSWORD','123456','',0),(4,'SYSTEM_ICON1','icon','',2),(6,'SYSTEM_VALUE','value','',4);

/*Table structure for table `c_dictionarys` */

DROP TABLE IF EXISTS `c_dictionarys`;

CREATE TABLE `c_dictionarys` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `nickname` varchar(30) DEFAULT NULL COMMENT '昵称',
  `name` varchar(30) DEFAULT NULL COMMENT '常量显示名称',
  `value` varchar(50) DEFAULT NULL COMMENT '常量代码值',
  `createtime` varchar(30) DEFAULT NULL COMMENT '创建日期',
  `type` varchar(30) DEFAULT NULL COMMENT '常量排序值',
  `updatable` varchar(10) DEFAULT NULL COMMENT '是否可编辑',
  `creator` varchar(30) DEFAULT NULL COMMENT '创建人',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `orderid` varchar(10) DEFAULT NULL COMMENT '排序',
  `memo` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

/*Data for the table `c_dictionarys` */

insert  into `c_dictionarys`(`id`,`nickname`,`name`,`value`,`createtime`,`type`,`updatable`,`creator`,`status`,`orderid`,`memo`) values (27,'status','启用','status100','2011-10-08','0','icon101','admin','status100','7',''),(28,'status','禁用','status101','2011-10-08','0','icon101','admin','status100','',''),(29,'icon','是','icon100','2011-10-08','0','icon101','admin','status100','',''),(30,'icon','否','icon101','2011-10-08','0','icon101','admin','status100','',''),(31,'leaf','是','leaf100','2011-10-08','0','icon101','admin','status100','',''),(32,'leaf','否','leaf101','2011-10-08','0','icon101','admin','status100','',''),(33,'open','是','open100','2011-10-08','0','icon101','admin','status100','',''),(34,'open','否','open101','2011-10-08','0','icon101','admin','status100','',''),(35,'education','高中','education100','2011-10-08','0','icon101','admin','status100','',''),(36,'education','大专','education101','2011-10-08','0','icon100','admin','status101','',''),(37,'education','本科','education102','2011-10-08','0','icon101','admin','status100','',''),(38,'education','研究生','education103','2011-10-08','0','icon101','admin','status100','',''),(39,'marriage','已婚','marriage100','2011-10-08','0','icon101','admin','status100','',''),(40,'marriage','未婚','marriage101','2011-10-08','0','icon101','admin','status100','',''),(41,'sex','男','sex100','2011-10-08','0','icon101','admin','status100','',''),(42,'sex','女','sex101','2011-10-08','0','icon101','admin','status100','',''),(46,'priceType','收购价','priceType100','2011-10-02','1','icon101','王明','status100','','价格类型'),(47,'priceType','批发价','priceType101','2011-10-02','1','icon101','王明','status100','','价格类型'),(48,'priceType','零售价','priceType102','2011-10-02','1','icon101','王明','status100','','价格类型'),(49,'telephoneType','手机','telephoneType100','2011-10-09','','icon101','','status100','',''),(50,'telephoneType','固定电话','telephoneType101','2011-10-09','','icon101','','status100','',''),(51,'telephoneType','小灵通','telephoneType102','2011-10-09','','icon101','','status100','',''),(52,'farmertype','散兼小户','farmertype100','2011-10-09','','icon101','','status100','',''),(53,'farmertype','专业大户','farmertype101','2011-10-09','','icon101','','status100','',''),(54,'farmertype','合作组织','farmertype102','2011-10-09','','icon101','','status100','',''),(55,'farmertype','中介经纪','farmertype103','2011-10-09','','icon101','','status100','',''),(56,'farmertype','信息站点','farmertype104','2011-10-09','','icon101','','status100','',''),(57,'farmertype','加工企业','farmertype105','2011-10-09','','icon101','','status100','',''),(58,'farmertype','商贸物流','farmertype106','2011-10-09','','icon101','','status100','',''),(59,'farmertype','消费群团','farmertype107','2011-10-09','','icon100','','status100','',''),(60,'farmertype','涉农公职','farmertype108','2011-10-09','','icon101','','status100','',''),(61,'farmertype','其他人员','farmertype109','2011-10-09','','icon101','','status100','',''),(62,'examinestate','未审','examinestate100','2011-10-03','1','icon101','王明','status100','1','价格库审核状态'),(63,'examinestate','已审','examinestate101','2011-10-03','1','icon101','王明','status100','1',''),(64,'questionnaireType','单选题','questionnaireType100','2011-10-12','1','icon101','王明','status100','1','调查工单问题类型'),(65,'questionnaireType','多选题','questionnaireType101','2011-10-12','1','icon101','王明','status100','1','1'),(66,'questionnaireType','简答题','questionnaireType102','2011-10-12','1','icon101','王明','status100','1','1'),(67,'supplyProducttype','普通','supplyProducttype100','2011-10-12','','icon100','','status100','',''),(68,'supplyProducttype','有机','supplyProductname100','2011-10-12','','icon100','','status100','',''),(69,'supplyProducttype','无公害','supplyProductname101','2011-10-12','','icon100','','status100','',''),(70,'supplyProducttype','绿A','supplyProductname102','2011-10-12','','icon100','','status100','',''),(71,'supplyProducttype','绿AA','supplyProductname103','2011-10-12','','icon100','','status100','',''),(72,'supplyType','预供','supplyType100','2011-10-12','','icon100','','status100','',''),(73,'supplyType','预求','supplyType101','2011-10-12','','icon100','','status100','',''),(74,'supplyType','现供','supplyType102','2011-10-12','','icon100','','status100','',''),(75,'supplyType','现求','supplyType103','2011-10-12','','icon100','','status100','',''),(79,'quesEmergency','平急','quesEmergency100','2011-10-12','1','icon100','admin','status100','1',''),(80,'quesEmergency','加急','quesEmergency101','2011-10-12','2','icon100','admin','status100','2',''),(81,'quesEmergency','特急','quesEmergency102','2011-10-12','3','icon100','admin','status100','3',''),(82,'quesEmergency','特提','quesEmergency103','2011-10-12','4','icon100','admin','status100','4',''),(83,'quesAlarmlevel','无','quesAlarmlevel100','2011-10-12','1','icon100','admin','','1',''),(84,'quesAlarmlevel','蓝','quesAlarmlevel101','2011-10-12','2','icon100','admin','status100','2',''),(85,'quesAlarmlevel','黄','quesAlarmlevel102','2011-10-12','3','icon100','admin','','3',''),(86,'quesAlarmlevel','橙','quesAlarmlevel103','2011-10-12','4','','admin','','4',''),(87,'quesAlarmlevel','红','quesAlarmlevel104','2011-10-12','5','','admin','','5',''),(88,'quesSettingstate','已解决','quesSettingstate103','2011-10-12','1','','admin','status100','1',''),(89,'quesSettingstate','待解决','quesSettingstate104','2011-10-12','2','','admin','status100','2',''),(90,'quesSettingstate','放弃','quesSettingstate105','2011-10-12','3','','admin','status100','3',''),(91,'quesSettingstyle','坐席解决','quesSettingstyle100','2011-10-12','1','','admin','status100','1',''),(92,'quesSettingstyle','资源人员解决','quesSettingstyle101','2011-10-12','2','','admin','status100','2',''),(93,'quesSettingstyle','专家解决','quesSettingstyle102','2011-10-12','3','','admin','status100','3',''),(94,'quesSettingstyle','农友推荐解决','quesSettingstyle103','2011-10-12','4','','admin','status100','4',''),(96,'quesReplystyle','自动发送','quesReplystyle100','2011-10-12','1','','admin','status100','1',''),(97,'quesReplystyle','手动发送','quesReplystyle101','2011-10-12','2','','admin','status100','2',''),(98,'quesAsktype','问询','quesAsktype100','2011-10-12','1','','admin','status100','1',''),(99,'quesAsktype','发布','quesAsktype101','2011-10-12','2','','admin','status100','2',''),(100,'quesAsktype','其他','quesAsktype102','2011-10-12','3 ','icon100','admin','status100','3',''),(101,'surveyInfoState','原始','surveyInfoState100','2011-10-13','','icon100','','status100','',''),(102,'surveyInfoState','待审','surveyInfoState101','2011-10-13','','icon100','','status100','',''),(103,'surveyInfoState','已审','surveyInfoState102','2011-10-13','','icon100','','status100','',''),(104,'surveyInfoState','发布','surveyInfoState103','2011-10-13','','icon100','','status100','',''),(105,'priceunit','元/公斤','priceunit100','2011-10-02','','icon101','王明','status100','',''),(106,'priceunit','元/斤','priceunit101','2011-10-02','','icon101','','status100','',''),(107,'priceunit','元/吨','priceunit102','2011-10-02','','icon101','','status100','',''),(108,'quesTypePart','品种','quesTypePart100','2011-10-18','1','icon100','admin','status100','1',''),(109,'quesTypePart','播种育苗','quesTypePart101','2011-10-18','2','icon100','haoly','status100','2',''),(110,'quesTypePart','栽培管理','quesTypePart102','2011-10-18','3','icon100','','status100','3',''),(111,'quesTypePart','采收贮运','quesTypePart103','2011-10-18','4','icon100','','status100','4',''),(112,'quesTypePart','加工','quesTypePart104','2011-10-18','5','icon100','','status100','',''),(113,'quesTypePart','病虫草害防治','quesTypePart105','2011-10-18','6','icon100','','status100','6',''),(114,'quesTypePart','市场行情','quesTypePart106','2011-10-18','7','icon100','','status100','7',''),(115,'businessPeriodic','按天','businessPeriodic100','2011-10-20','1','icon101','haoly','status100','1',''),(116,'businessPeriodic','按周','businessPeriodic101','2011-10-20','2','icon101','','status100','2',''),(117,'businessPeriodic','按月','businessPeriodic102','2011-10-20','3','icon101','','status100','3',''),(118,'businessType','短信','businessType100','2011-10-20','1','icon101','haoly','status100','1',''),(119,'businessType','彩信','businessType101','2011-10-20','2','icon100','','status100','2',''),(120,'businessType','手机报','businessType102','2011-10-20','3','icon100','','status100','3',''),(121,'productType','初级产品','productType100','2011-10-20','','icon100','','status100','',''),(122,'productType','中级产品','productType101','2011-10-20','','icon100','','status100','',''),(123,'productType','高级产品','productType102','2011-10-20','','icon100','','status100','',''),(124,'productStatus','免费','productStatus100','2011-10-20','','icon100','','status100','',''),(125,'productStatus','收费','productStatus101','2011-10-20','','icon100','','status100','',''),(126,'auditState','初始','auditState100','2011-10-27','1','icon100','haoly','status100','1',''),(127,'auditState','待审','auditState101','2011-10-27','2','icon100','','status100','2',''),(128,'auditState','驳回','auditState102','2011-10-27','3','icon100','','status100','3',''),(129,'auditState','已审','auditState103','2011-10-27','4','icon100','','status100','4',''),(130,'auditState','发布','auditState104','2011-10-27','5','icon100','','status100','5',''),(131,'workordertype','问询工单','workordertype100','2011-11-01','','icon101','','status100','',''),(132,'workordertype','价格工单','workordertype101','2011-11-01','','icon101','','status100','',''),(133,'workordertype','调查工单','workordertype102','2011-11-01','','icon101','','status100','',''),(134,'workordertype','定制工单','workordertype103','2011-11-01','','icon101','','status100','',''),(135,'workordertype','供求工单','workordertype104','2011-11-01','','icon101','','status100','',''),(136,'quesReplystyle','不发送','quesReplystyle102','2011-11-03','3','icon100','','status100','3',''),(137,'kiki','fff','kiki100','2011-11-16','','icon101','','status100','',''),(138,'kiki','ddd','kiki101','2011-11-16','','icon100','','status100','',''),(139,'发给','飞','发给100','2011-11-16','','icon100','','status100','',''),(140,'questionTypeTop','防灾','questionTypeTop100','2011-11-23','1','icon100','haoly','status100','1',''),(141,'questionTypeTop','政策','questionTypeTop101','2011-11-23','2','icon100','','status100','2',''),(142,'questionTypeTop','生产','questionTypeTop102','2011-11-23','3','icon100','','status100','3',''),(143,'questionTypeTop','市场','questionTypeTop103','2011-11-23','4','icon100','','status100','4',''),(144,'questionTypeTop','社会','questionTypeTop104','2011-11-23','5','icon100','','status100','5',''),(145,'stage','立项','stage100','2011-12-12','','icon100','admin','status100','','项目的立项阶段'),(146,'stage','开发','stage101','2011-12-12','','icon100','','status100','','项目的开发阶段'),(147,'stage','测试','stage102','2011-12-12','','icon100','','status100','','项目的测试阶段'),(148,'stage','维护','stage103','2011-12-12','','icon100','','status100','','项目的维护阶段'),(149,'state','激活','state100','2011-12-12','','icon100','','status100','','项目激活状态'),(150,'state','未激活','state101','2011-12-12','','icon100','','status100','','项目未激活状态'),(151,'priority','高','priority100','2011-12-12','','icon100','','status100','','优先级为高'),(152,'priority','中','priority101','2011-12-12','','icon100','','status100','','优先级为中'),(153,'priority','低','priority102','2011-12-12','','icon100','','status100','','优先级为低'),(154,'state','不选','state102','2011-12-13','','icon100','','status100','',''),(155,'demand_State','未激活','demand_State100','2011-12-14','','icon100','jiangqiang','status100','','需求未激活状态'),(156,'demand_state','未完成','demand_state101','2011-12-14','','icon100','jiangqiang','status100','','需求激活但未完成'),(157,'demand_state','已完成','demand_state102','2011-12-14','','icon100','jiangqiang','status100','','需求激活并已完成');

/*Table structure for table `c_flowtype` */

DROP TABLE IF EXISTS `c_flowtype`;

CREATE TABLE `c_flowtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(100) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `list` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `c_flowtype` */

insert  into `c_flowtype`(`id`,`typename`,`parentid`,`sort`,`list`) values (1,'全部类型',NULL,1,1),(4,'权威1',1,4,4),(6,'qq',1,NULL,NULL);

/*Table structure for table `c_group` */

DROP TABLE IF EXISTS `c_group`;

CREATE TABLE `c_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '组记录id',
  `name` varchar(30) NOT NULL COMMENT '组名称',
  `parentid` int(10) unsigned DEFAULT NULL COMMENT '上级组Id',
  `enname` varchar(30) DEFAULT NULL COMMENT '英文名称',
  `grouptype` varchar(20) DEFAULT NULL COMMENT '组类别',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `orderid` varchar(30) DEFAULT NULL COMMENT '排序',
  `memo` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `FK_group_group` (`parentid`),
  CONSTRAINT `FK_group_group` FOREIGN KEY (`parentid`) REFERENCES `c_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

/*Data for the table `c_group` */

insert  into `c_group`(`id`,`name`,`parentid`,`enname`,`grouptype`,`status`,`orderid`,`memo`) values (41,'坐席',NULL,'','','status100','2',''),(44,'坐席班长',41,'as','asa','status101','','as'),(47,'普通坐席',41,'ptzx','','status100','',''),(48,'资源',NULL,'zy','','status100','',''),(49,'资源班长',48,'zybz','','status100','',''),(50,'普通资源',48,'ptzy','','status100','',''),(51,'审核',NULL,'toexamine','','status100','2',''),(68,'班长组',NULL,'','','status100','',''),(71,'农户组',NULL,'custom','农户','status100','3','');

/*Table structure for table `c_grouprole` */

DROP TABLE IF EXISTS `c_grouprole`;

CREATE TABLE `c_grouprole` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录',
  `groupid` int(10) unsigned NOT NULL COMMENT '组id',
  `roleid` int(10) unsigned NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`),
  KEY `FK_grouprole_group` (`groupid`),
  KEY `FK_grouprole_role` (`roleid`),
  CONSTRAINT `FK_grouprole_group` FOREIGN KEY (`groupid`) REFERENCES `c_group` (`id`),
  CONSTRAINT `FK_grouprole_role` FOREIGN KEY (`roleid`) REFERENCES `c_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

/*Data for the table `c_grouprole` */

insert  into `c_grouprole`(`id`,`groupid`,`roleid`) values (17,47,21),(19,51,20),(37,49,15),(44,41,20),(46,41,21),(47,41,15),(48,41,16),(76,48,15),(77,48,16),(78,49,16);

/*Table structure for table `c_operlog` */

DROP TABLE IF EXISTS `c_operlog`;

CREATE TABLE `c_operlog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '操作日志记录id',
  `opertype` varchar(20) DEFAULT NULL COMMENT '操作类型',
  `content` varchar(200) DEFAULT NULL COMMENT '操作内容',
  `cost` int(100) unsigned DEFAULT NULL COMMENT '耗时',
  `createip` varchar(20) DEFAULT NULL COMMENT 'ip地址',
  `createuser` varchar(30) DEFAULT NULL COMMENT '操作用户',
  `createdate` varchar(20) DEFAULT NULL COMMENT '日期',
  `memo` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=827 DEFAULT CHARSET=utf8;

/*Data for the table `c_operlog` */

insert  into `c_operlog`(`id`,`opertype`,`content`,`cost`,`createip`,`createuser`,`createdate`,`memo`) values (5,'delte操作','超级用户执行del方法',51,'192.168.1.105','超级用户','2011-31-29','del方法'),(6,'save操作','超级用户执行save方法',46,'192.168.1.105','超级用户','2011-09-29','save方法'),(7,'delte操作','超级用户执行del方法',51,'192.168.1.105','超级用户','2011-09-29','del方法'),(8,'save操作','执行save方法',51,'192.168.1.105','admin','2011-09-29','save方法'),(9,'delte操作','执行del方法',56,'192.168.1.105','admin','2011-09-29','del方法'),(10,'save操作','admin,用户执行save方法',56,'192.168.1.105','admin','2011-09-29','save方法'),(11,'delte操作','admin,用户执行del方法',76,'192.168.1.105','admin','2011-09-29','del方法'),(12,'save操作','admin,用户执行save方法',56,'192.168.1.105','admin','2011-09-29','save方法'),(13,'update操作','admin,用户执行update方法',56,'192.168.1.105','admin','2011-09-29','update方法'),(14,'delte操作','admin,用户执行delUserFromGroup方法',61,'192.168.1.105','admin','2011-09-29','delUserFromGroup方法'),(15,'delte操作','admin,用户执行delUserFromGroup方法',66,'192.168.1.105','admin','2011-09-29','delUserFromGroup方法'),(16,'delte操作','admin,用户执行delUserFromGroup方法',61,'192.168.1.105','admin','2011-09-29','delUserFromGroup方法'),(17,'delte操作','admin,用户执行delUserFromGroup方法',61,'192.168.1.105','admin','2011-09-29','delUserFromGroup方法'),(18,'update操作','admin,用户执行update方法',95,'192.168.1.105','admin','2011-09-30','update方法'),(19,'update操作','admin,用户执行update方法',79,'192.168.1.105','admin','2011-09-30','update方法'),(20,'update操作','admin,用户执行update方法',64,'192.168.1.105','admin','2011-09-30','update方法'),(21,'save操作','admin,用户执行save方法',47,'192.168.1.105','admin','2011-09-30','save方法'),(22,'save操作','admin,用户执行save方法',48,'192.168.1.105','admin','2011-09-30','save方法'),(23,'update操作','admin,用户执行update方法',64,'192.168.1.105','admin','2011-09-30','update方法'),(24,'save操作','admin,用户执行save方法',48,'192.168.1.105','admin','2011-09-30','save方法'),(25,'save操作','admin,用户执行save方法',48,'192.168.1.105','admin','2011-09-30','save方法'),(26,'save操作','admin,用户执行save方法',48,'192.168.1.105','admin','2011-09-30','save方法'),(27,'save操作','admin,用户执行save方法',32,'192.168.1.105','admin','2011-09-30','save方法'),(28,'delte操作','test,用户执行delUserFromGroup方法',48,'192.168.1.105','test','2011-09-30','delUserFromGroup方法'),(29,'delte操作','test,用户执行delUserFromGroup方法',48,'192.168.1.105','test','2011-09-30','delUserFromGroup方法'),(30,'delte操作','admin,用户执行del方法',79,'192.168.1.105','admin','2011-09-30','del方法'),(31,'delte操作','test,用户执行delUserFromGroup方法',48,'192.168.1.105','test','2011-09-30','delUserFromGroup方法'),(32,'update操作','test,用户执行update方法',16,'192.168.1.105','test','2011-09-30','update方法'),(33,'save操作','admin,用户执行save方法',32,'192.168.1.105','admin','2011-09-30','save方法'),(34,'save操作','admin,用户执行save方法',47,'192.168.1.105','admin','2011-09-30','save方法'),(35,'save操作','test,用户执行save方法',48,'192.168.1.105','test','2011-09-30','save方法'),(36,'update操作','test,用户执行update方法',47,'192.168.1.105','test','2011-09-30','update方法'),(37,'save操作','admin,用户执行save方法',48,'192.168.1.105','admin','2011-09-30','save方法'),(38,'update操作','test,用户执行update方法',48,'192.168.1.105','test','2011-09-30','update方法'),(39,'update操作','test,用户执行update方法',31,'192.168.1.105','test','2011-09-30','update方法'),(40,'update操作','test,用户执行update方法',48,'192.168.1.105','test','2011-09-30','update方法'),(41,'save操作','admin,用户执行save方法',64,'192.168.1.105','admin','2011-09-30','save方法'),(42,'delte操作','admin,用户执行del方法',48,'192.168.1.105','admin','2011-09-30','del方法'),(43,'save操作','admin,用户执行save方法',63,'192.168.1.105','admin','2011-09-30','save方法'),(44,'delte操作','admin,用户执行delete方法',47,'192.168.1.105','admin','2011-09-30','delete方法'),(45,'save操作','admin,用户执行save方法',16,'192.168.1.105','admin','2011-09-30','save方法'),(46,'save操作','admin,用户执行save方法',33,'192.168.1.105','admin','2011-09-30','save方法'),(47,'delte操作','admin,用户执行del方法',47,'192.168.1.105','admin','2011-09-30','del方法'),(48,'update操作','admin,用户执行update方法',46,'192.168.1.105','admin','2011-09-30','update方法'),(49,'save操作','admin,用户执行save方法',46,'192.168.1.105','admin','2011-09-30','save方法'),(50,'delte操作','admin,用户执行delete方法',41,'192.168.1.105','admin','2011-09-30','delete方法'),(51,'update操作','admin,用户执行update方法',41,'192.168.1.105','admin','2011-09-30','update方法'),(52,'save操作','admin,用户执行save方法',41,'192.168.1.105','admin','2011-09-30','save方法'),(53,'save操作','admin,用户执行save方法',50,'192.168.1.105','admin','2011-09-30','save方法'),(54,'delte操作','admin,用户执行delUserFromGroup方法',41,'192.168.1.105','admin','2011-09-30','delUserFromGroup方法'),(55,'save操作','admin,用户执行save方法',46,'192.168.1.105','admin','2011-09-30','save方法'),(56,'save操作','admin,用户执行save方法',41,'192.168.1.105','admin','2011-09-30','save方法'),(57,'delte操作','admin,用户执行delete方法',76,'192.168.1.105','admin','2011-09-30','delete方法'),(58,'update操作','admin,用户执行update方法',61,'192.168.1.105','admin','2011-09-30','update方法'),(59,'save操作','test,用户执行save方法',71,'192.168.1.105','test','2011-09-30','save方法'),(60,'delte操作','test,用户执行delete方法',86,'192.168.1.105','test','2011-09-30','delete方法'),(61,'save操作','test,用户执行save方法',51,'192.168.1.105','test','2011-09-30','save方法'),(62,'delte操作','admin,用户执行delete方法',136,'192.168.1.105','admin','2011-09-30','delete方法'),(63,'save操作','test,用户执行save方法',51,'192.168.1.105','test','2011-09-30','save方法'),(64,'save操作','test,用户执行save方法',61,'192.168.1.105','test','2011-09-30','save方法'),(65,'save操作','test,用户执行save方法',61,'192.168.1.105','test','2011-09-30','save方法'),(66,'delte操作','test,用户执行delete方法',81,'192.168.1.105','test','2011-09-30','delete方法'),(67,'save操作','admin,用户执行save方法',56,'192.168.1.105','admin','2011-09-30','save方法'),(68,'delte操作','admin,用户执行delete方法',51,'192.168.1.105','admin','2011-09-30','delete方法'),(69,'save操作','admin,用户执行save方法',41,'192.168.1.105','admin','2011-09-30','save方法'),(70,'delte操作','admin,用户执行del方法',41,'192.168.1.105','admin','2011-09-30','del方法'),(71,'delte操作','admin,用户执行del方法',41,'192.168.1.105','admin','2011-09-30','del方法'),(72,'save操作','admin,用户执行save方法',41,'192.168.1.105','admin','2011-09-30','save方法'),(73,'delte操作','admin,用户执行delUserFromGroup方法',46,'192.168.1.105','admin','2011-09-30','delUserFromGroup方法'),(74,'delte操作','admin,用户执行del方法',46,'192.168.1.105','admin','2011-09-30','del方法'),(75,'update操作','admin,用户执行update方法',41,'192.168.1.105','admin','2011-09-30','update方法'),(76,'save操作','test,用户执行save方法',73,'192.168.1.105','test','2011-10-05','save方法'),(77,'save操作','test,用户执行save方法',65,'192.168.1.105','test','2011-10-05','save方法'),(78,'delte操作','test,用户执行delete方法',110,'192.168.1.105','test','2011-10-05','delete方法'),(79,'update操作','test,用户执行update方法',44367,'192.168.1.105','test','2011-10-05','update方法'),(80,'delte操作','admin,用户执行del方法',59,'192.168.1.101','admin','2011-10-05','del方法'),(81,'save操作','admin,用户执行save方法',72,'192.168.1.101','admin','2011-10-05','save方法'),(82,'update操作','admin,用户执行update方法',73,'192.168.1.100','admin','2011-10-05','update方法'),(83,'update操作','admin,用户执行update方法',100,'192.168.1.100','admin','2011-10-05','update方法'),(84,'update操作','admin,用户执行update方法',109,'192.168.1.100','admin','2011-10-05','update方法'),(85,'update操作','admin,用户执行update方法',63,'192.168.1.100','admin','2011-10-05','update方法'),(86,'update操作','admin,用户执行update方法',75,'192.168.1.100','admin','2011-10-05','update方法'),(87,'update操作','admin,用户执行update方法',109,'192.168.1.101','admin','2011-10-05','update方法'),(88,'update操作','admin,用户执行update方法',25,'192.168.1.101','admin','2011-10-05','update方法'),(89,'update操作','admin,用户执行update方法',53,'192.168.1.101','admin','2011-10-05','update方法'),(90,'update操作','admin,用户执行update方法',76,'192.168.1.100','admin','2011-10-06','update方法'),(91,'update操作','admin,用户执行update方法',31,'192.168.1.100','admin','2011-10-06','update方法'),(92,'update操作','admin,用户执行update方法',32,'192.168.1.100','admin','2011-10-06','update方法'),(93,'update操作','admin,用户执行update方法',50,'192.168.1.100','admin','2011-10-06','update方法'),(94,'update操作','admin,用户执行update方法',47,'192.168.1.100','admin','2011-10-06','update方法'),(95,'update操作','admin,用户执行update方法',41,'192.168.1.100','admin','2011-10-06','update方法'),(96,'update操作','admin,用户执行update方法',32,'192.168.1.100','admin','2011-10-06','update方法'),(97,'save操作','admin,用户执行save方法',48,'192.168.1.105','admin','2011-10-06','save方法'),(98,'update操作','admin,用户执行update方法',37,'192.168.1.100','admin','2011-10-06','update方法'),(99,'save操作','admin,用户执行save方法',46,'192.168.1.105','admin','2011-10-06','save方法'),(100,'save操作','admin,用户执行save方法',42,'192.168.1.105','admin','2011-10-06','save方法'),(101,'save操作','admin,用户执行save方法',42,'192.168.1.105','admin','2011-10-06','save方法'),(102,'update操作','admin,用户执行update方法',47,'192.168.1.101','admin','2011-10-06','update方法'),(103,'update操作','admin,用户执行update方法',108,'192.168.1.101','admin','2011-10-06','update方法'),(104,'delte操作','admin,用户执行del方法',51,'192.168.1.105','admin','2011-10-06','del方法'),(105,'delte操作','admin,用户执行del方法',37,'192.168.1.105','admin','2011-10-06','del方法'),(106,'delte操作','admin,用户执行del方法',53,'192.168.1.105','admin','2011-10-06','del方法'),(107,'update操作','admin,用户执行update方法',50,'192.168.1.105','admin','2011-10-06','update方法'),(108,'delte操作','admin,用户执行del方法',48,'192.168.1.105','admin','2011-10-06','del方法'),(109,'delte操作','admin,用户执行del方法',46,'192.168.1.105','admin','2011-10-06','del方法'),(110,'save操作','admin,用户执行save方法',43,'192.168.1.105','admin','2011-10-06','save方法'),(111,'delte操作','admin,用户执行delUserFromGroup方法',56,'192.168.1.105','admin','2011-10-06','delUserFromGroup方法'),(112,'delte操作','admin,用户执行delUserFromGroup方法',64,'192.168.1.105','admin','2011-10-06','delUserFromGroup方法'),(113,'delte操作','admin,用户执行del方法',50,'192.168.1.100','admin','2011-10-06','del方法'),(114,'delte操作','admin,用户执行del方法',47,'192.168.1.100','admin','2011-10-06','del方法'),(115,'delte操作','admin,用户执行delUserFromGroup方法',56,'192.168.1.105','admin','2011-10-06','delUserFromGroup方法'),(116,'delte操作','admin,用户执行delUserFromGroup方法',51,'192.168.1.105','admin','2011-10-06','delUserFromGroup方法'),(117,'delte操作','admin,用户执行del方法',63,'192.168.1.105','admin','2011-10-06','del方法'),(118,'save操作','admin,用户执行save方法',47,'192.168.1.105','admin','2011-10-06','save方法'),(119,'delte操作','admin,用户执行del方法',37,'192.168.1.105','admin','2011-10-06','del方法'),(120,'update操作','admin,用户执行update方法',18230,'192.168.1.105','admin','2011-10-06','update方法'),(121,'delte操作','admin,用户执行del方法',48,'192.168.1.105','admin','2011-10-06','del方法'),(122,'delte操作','admin,用户执行delUserFromGroup方法',51,'192.168.1.105','admin','2011-10-06','delUserFromGroup方法'),(123,'update操作','admin,用户执行update方法',116,'192.168.1.100','admin','2011-10-06','update方法'),(124,'update操作','admin,用户执行update方法',69,'192.168.1.100','admin','2011-10-06','update方法'),(125,'update操作','admin,用户执行update方法',71,'192.168.1.100','admin','2011-10-06','update方法'),(126,'update操作','admin,用户执行update方法',67,'192.168.1.100','admin','2011-10-06','update方法'),(127,'update操作','admin,用户执行update方法',64,'192.168.1.100','admin','2011-10-06','update方法'),(128,'update操作','admin,用户执行update方法',87,'192.168.1.100','admin','2011-10-06','update方法'),(129,'save操作','admin,用户执行save方法',66,'192.168.1.105','admin','2011-10-06','save方法'),(130,'update操作','admin,用户执行update方法',63,'192.168.1.123','admin','2011-10-02','update方法'),(131,'update操作','admin,用户执行update方法',63,'192.168.1.101','admin','2011-10-07','update方法'),(132,'delte操作','admin,用户执行del方法',44,'192.168.1.105','admin','2011-10-07','del方法'),(133,'save操作','admin,用户执行save方法',28,'192.168.1.105','admin','2011-10-07','save方法'),(134,'delte操作','admin,用户执行del方法',48,'192.168.1.105','admin','2011-10-07','del方法'),(135,'update操作','admin,用户执行update方法',74,'192.168.1.100','admin','2011-10-07','update方法'),(136,'save操作','admin,用户执行save方法',40,'192.168.1.105','admin','2011-10-07','save方法'),(137,'delte操作','admin,用户执行del方法',53,'192.168.1.105','admin','2011-10-07','del方法'),(138,'save操作','admin,用户执行save方法',33,'192.168.1.105','admin','2011-10-07','save方法'),(139,'save操作','admin,用户执行save方法',4577,'192.168.1.105','admin','2011-10-07','save方法'),(140,'save操作','admin,用户执行save方法',32,'192.168.1.105','admin','2011-10-07','save方法'),(141,'delte操作','admin,用户执行del方法',44,'192.168.1.105','admin','2011-10-07','del方法'),(142,'save操作','admin,用户执行save方法',41,'192.168.1.105','admin','2011-10-07','save方法'),(143,'delte操作','admin,用户执行del方法',51,'192.168.1.105','admin','2011-10-07','del方法'),(144,'save操作','admin,用户执行save方法',42,'192.168.1.105','admin','2011-10-07','save方法'),(145,'delte操作','admin,用户执行del方法',31,'192.168.1.105','admin','2011-10-07','del方法'),(146,'save操作','admin,用户执行save方法',47,'192.168.1.105','admin','2011-10-07','save方法'),(147,'delte操作','admin,用户执行del方法',48,'192.168.1.105','admin','2011-10-07','del方法'),(148,'save操作','admin,用户执行save方法',32,'192.168.1.105','admin','2011-10-07','save方法'),(149,'delte操作','admin,用户执行del方法',46,'192.168.1.105','admin','2011-10-07','del方法'),(150,'save操作','admin,用户执行save方法',31,'192.168.1.105','admin','2011-10-07','save方法'),(151,'save操作','admin,用户执行save方法',32,'192.168.1.105','admin','2011-10-07','save方法'),(152,'delte操作','admin,用户执行del方法',32,'192.168.1.105','admin','2011-10-07','del方法'),(153,'delte操作','admin,用户执行del方法',59,'192.168.1.105','admin','2011-10-07','del方法'),(154,'save操作','admin,用户执行save方法',34,'192.168.1.105','admin','2011-10-07','save方法'),(155,'delte操作','admin,用户执行del方法',48,'192.168.1.105','admin','2011-10-07','del方法'),(156,'save操作','admin,用户执行save方法',33,'192.168.1.105','admin','2011-10-07','save方法'),(157,'delte操作','admin,用户执行del方法',74,'192.168.1.105','admin','2011-10-07','del方法'),(158,'save操作','admin,用户执行save方法',33042,'192.168.1.105','admin','2011-10-07','save方法'),(159,'save操作','admin,用户执行save方法',67193,'192.168.1.105','admin','2011-10-07','save方法'),(160,'delte操作','admin,用户执行del方法',48,'192.168.1.105','admin','2011-10-07','del方法'),(161,'delte操作','admin,用户执行del方法',40,'192.168.1.105','admin','2011-10-07','del方法'),(162,'save操作','admin,用户执行save方法',49,'192.168.1.105','admin','2011-10-07','save方法'),(163,'save操作','admin,用户执行save方法',33,'192.168.1.105','admin','2011-10-07','save方法'),(164,'save操作','admin,用户执行save方法',34,'192.168.1.105','admin','2011-10-07','save方法'),(165,'delte操作','admin,用户执行del方法',157,'192.168.1.105','admin','2011-10-07','del方法'),(166,'delte操作','admin,用户执行del方法',32,'192.168.1.105','admin','2011-10-07','del方法'),(167,'delte操作','admin,用户执行del方法',32,'192.168.1.105','admin','2011-10-07','del方法'),(168,'save操作','admin,用户执行save方法',41,'192.168.1.105','admin','2011-10-07','save方法'),(169,'save操作','admin,用户执行save方法',33,'192.168.1.105','admin','2011-10-07','save方法'),(170,'save操作','admin,用户执行save方法',49,'192.168.1.105','admin','2011-10-07','save方法'),(171,'save操作','admin,用户执行save方法',33,'192.168.1.105','admin','2011-10-07','save方法'),(172,'save操作','admin,用户执行save方法',33,'192.168.1.105','admin','2011-10-07','save方法'),(173,'delte操作','admin,用户执行del方法',48,'192.168.1.105','admin','2011-10-07','del方法'),(174,'delte操作','admin,用户执行del方法',48,'192.168.1.105','admin','2011-10-07','del方法'),(175,'delte操作','admin,用户执行del方法',60,'192.168.1.105','admin','2011-10-08','del方法'),(176,'delte操作','admin,用户执行del方法',40,'192.168.1.105','admin','2011-10-08','del方法'),(177,'delte操作','admin,用户执行del方法',38,'192.168.1.105','admin','2011-10-08','del方法'),(178,'save操作','admin,用户执行save方法',47,'192.168.1.123','admin','2011-10-03','save方法'),(179,'update操作','admin,用户执行update方法',31,'192.168.1.123','admin','2011-10-03','update方法'),(180,'delte操作','admin,用户执行delete方法',47,'192.168.1.123','admin','2011-10-03','delete方法'),(181,'save操作','admin,用户执行save方法',56,'192.168.1.105','admin','2011-10-08','save方法'),(182,'save操作','admin,用户执行save方法',38,'192.168.1.105','admin','2011-10-08','save方法'),(183,'save操作','admin,用户执行save方法',49,'192.168.1.105','admin','2011-10-08','save方法'),(184,'save操作','admin,用户执行save方法',42,'192.168.1.105','admin','2011-10-08','save方法'),(185,'save操作','admin,用户执行save方法',44,'192.168.1.105','admin','2011-10-08','save方法'),(186,'save操作','admin,用户执行save方法',36,'192.168.1.105','admin','2011-10-08','save方法'),(187,'save操作','admin,用户执行save方法',45,'192.168.1.105','admin','2011-10-08','save方法'),(188,'save操作','admin,用户执行save方法',36,'192.168.1.105','admin','2011-10-08','save方法'),(189,'save操作','admin,用户执行save方法',46,'192.168.1.105','admin','2011-10-08','save方法'),(190,'save操作','admin,用户执行save方法',42,'192.168.1.105','admin','2011-10-08','save方法'),(191,'save操作','admin,用户执行save方法',37,'192.168.1.105','admin','2011-10-08','save方法'),(192,'save操作','admin,用户执行save方法',76,'192.168.1.105','admin','2011-10-08','save方法'),(193,'save操作','admin,用户执行save方法',57,'192.168.1.105','admin','2011-10-08','save方法'),(194,'save操作','admin,用户执行save方法',41,'192.168.1.105','admin','2011-10-08','save方法'),(195,'save操作','admin,用户执行save方法',45,'192.168.1.105','admin','2011-10-08','save方法'),(196,'save操作','admin,用户执行save方法',48,'192.168.1.105','admin','2011-10-08','save方法'),(197,'save操作','admin,用户执行save方法',50,'192.168.1.105','admin','2011-10-08','save方法'),(198,'update操作','admin,用户执行update方法',46,'192.168.1.105','admin','2011-10-08','update方法'),(199,'delte操作','admin,用户执行del方法',38,'192.168.1.105','admin','2011-10-08','del方法'),(200,'update操作','admin,用户执行update方法',51,'192.168.1.105','admin','2011-10-08','update方法'),(201,'delte操作','admin,用户执行delUserFrom方法',51,'192.168.1.105','admin','2011-10-08','delUserFrom方法'),(202,'delte操作','admin,用户执行delete方法',47,'192.168.1.111','admin','2011-10-08','delete方法'),(203,'update操作','admin,用户执行update方法',64,'192.168.1.100','admin','2011-10-08','update方法'),(204,'update操作','admin,用户执行update方法',32,'192.168.1.100','admin','2011-10-08','update方法'),(205,'update操作','admin,用户执行update方法',45,'192.168.1.100','admin','2011-10-08','update方法'),(206,'update操作','admin,用户执行update方法',55,'192.168.1.100','admin','2011-10-08','update方法'),(207,'update操作','admin,用户执行update方法',31,'192.168.1.100','admin','2011-10-08','update方法'),(208,'update操作','admin,用户执行update方法',95,'192.168.1.100','admin','2011-10-08','update方法'),(209,'update操作','admin,用户执行update方法',81,'192.168.1.100','admin','2011-10-08','update方法'),(210,'update操作','admin,用户执行update方法',71,'192.168.1.100','admin','2011-10-08','update方法'),(211,'update操作','admin,用户执行update方法',64,'192.168.1.100','admin','2011-10-08','update方法'),(212,'update操作','admin,用户执行update方法',91,'192.168.1.100','admin','2011-10-08','update方法'),(213,'update操作','admin,用户执行update方法',104,'192.168.1.100','admin','2011-10-08','update方法'),(214,'update操作','admin,用户执行update方法',64,'192.168.1.100','admin','2011-10-08','update方法'),(215,'update操作','admin,用户执行update方法',65,'192.168.1.100','admin','2011-10-08','update方法'),(216,'update操作','admin,用户执行update方法',63,'192.168.1.100','admin','2011-10-08','update方法'),(217,'update操作','admin,用户执行update方法',64,'192.168.1.100','admin','2011-10-08','update方法'),(218,'update操作','admin,用户执行update方法',63,'192.168.1.100','admin','2011-10-08','update方法'),(219,'update操作','admin,用户执行update方法',51,'192.168.1.105','admin','2011-10-08','update方法'),(220,'update操作','admin,用户执行update方法',36,'192.168.1.105','admin','2011-10-08','update方法'),(221,'update操作','admin,用户执行update方法',48,'192.168.1.105','admin','2011-10-08','update方法'),(222,'update操作','admin,用户执行update方法',27,'192.168.1.105','admin','2011-10-08','update方法'),(223,'save操作','admin,用户执行save方法',53,'192.168.1.100','admin','2011-10-08','save方法'),(224,'update操作','admin,用户执行update方法',41,'192.168.1.105','admin','2011-10-08','update方法'),(225,'update操作','admin,用户执行update方法',41,'192.168.1.105','admin','2011-10-08','update方法'),(226,'update操作','admin,用户执行update方法',63,'192.168.1.100','admin','2011-10-08','update方法'),(227,'update操作','admin,用户执行update方法',48,'192.168.1.100','admin','2011-10-08','update方法'),(228,'save操作','admin,用户执行save方法',79,'192.168.1.105','admin','2011-10-08','save方法'),(229,'update操作','admin,用户执行update方法',31,'192.168.1.105','admin','2011-10-08','update方法'),(230,'delte操作','admin,用户执行del方法',36,'192.168.1.105','admin','2011-10-08','del方法'),(231,'save操作','admin,用户执行save方法',65,'192.168.1.105','admin','2011-10-09','save方法'),(232,'update操作','admin,用户执行update方法',71,'192.168.1.105','admin','2011-10-09','update方法'),(233,'update操作','admin,用户执行update方法',73,'192.168.1.105','admin','2011-10-09','update方法'),(234,'save操作','admin,用户执行save方法',63,'192.168.1.123','admin','2011-10-02','save方法'),(235,'save操作','admin,用户执行save方法',31,'192.168.1.123','admin','2011-10-02','save方法'),(236,'save操作','admin,用户执行save方法',46,'192.168.1.123','admin','2011-10-02','save方法'),(237,'delte操作','admin,用户执行del方法',47,'192.168.1.123','admin','2011-10-02','del方法'),(238,'delte操作','admin,用户执行del方法',47,'192.168.1.123','admin','2011-10-02','del方法'),(239,'delte操作','admin,用户执行del方法',47,'192.168.1.123','admin','2011-10-02','del方法'),(240,'save操作','admin,用户执行save方法',47,'192.168.1.123','admin','2011-10-02','save方法'),(241,'save操作','admin,用户执行save方法',63,'192.168.1.123','admin','2011-10-02','save方法'),(242,'save操作','admin,用户执行save方法',46,'192.168.1.123','admin','2011-10-02','save方法'),(243,'save操作','admin,用户执行save方法',82,'192.168.1.100','admin','2011-10-09','save方法'),(244,'save操作','admin,用户执行save方法',57,'192.168.1.100','admin','2011-10-09','save方法'),(245,'update操作','admin,用户执行update方法',80,'192.168.1.100','admin','2011-10-09','update方法'),(246,'save操作','admin,用户执行save方法',62,'192.168.1.100','admin','2011-10-09','save方法'),(247,'save操作','admin,用户执行save方法',52,'192.168.1.100','admin','2011-10-09','save方法'),(248,'save操作','admin,用户执行save方法',34,'192.168.1.100','admin','2011-10-09','save方法'),(249,'save操作','admin,用户执行save方法',57,'192.168.1.100','admin','2011-10-09','save方法'),(250,'save操作','admin,用户执行save方法',40,'192.168.1.100','admin','2011-10-09','save方法'),(251,'save操作','admin,用户执行save方法',51,'192.168.1.100','admin','2011-10-09','save方法'),(252,'save操作','admin,用户执行save方法',52,'192.168.1.100','admin','2011-10-09','save方法'),(253,'save操作','admin,用户执行save方法',62,'192.168.1.100','admin','2011-10-09','save方法'),(254,'save操作','admin,用户执行save方法',51,'192.168.1.100','admin','2011-10-09','save方法'),(255,'save操作','admin,用户执行save方法',31,'192.168.1.100','admin','2011-10-09','save方法'),(256,'save操作','admin,用户执行save方法',56,'192.168.1.100','admin','2011-10-09','save方法'),(257,'save操作','admin,用户执行save方法',51,'192.168.1.100','admin','2011-10-09','save方法'),(258,'save操作','admin,用户执行save方法',54,'192.168.1.100','admin','2011-10-09','save方法'),(259,'save操作','admin,用户执行save方法',67,'192.168.1.100','admin','2011-10-09','save方法'),(260,'save操作','admin,用户执行save方法',57,'192.168.1.100','admin','2011-10-09','save方法'),(261,'delte操作','admin,用户执行delete方法',149,'192.168.1.100','admin','2011-10-09','delete方法'),(262,'update操作','admin,用户执行update方法',76,'192.168.1.105','admin','2011-10-09','update方法'),(263,'save操作','admin,用户执行save方法',62,'192.168.1.123','admin','2011-10-03','save方法'),(264,'save操作','admin,用户执行save方法',31,'192.168.1.123','admin','2011-10-03','save方法'),(265,'save操作','admin,用户执行save方法',62,'192.168.1.123','admin','2011-10-03','save方法'),(266,'update操作','admin,用户执行update方法',78,'192.168.1.123','admin','2011-10-03','update方法'),(267,'update操作','admin,用户执行update方法',63,'192.168.1.123','admin','2011-10-03','update方法'),(268,'update操作','admin,用户执行update方法',63,'192.168.1.123','admin','2011-10-03','update方法'),(269,'save操作','admin,用户执行save方法',52,'127.0.0.1','admin','2011-10-11','save方法'),(270,'save操作','admin,用户执行save方法',49,'192.168.1.100','admin','2011-10-11','save方法'),(271,'save操作','admin,用户执行save方法',37,'192.168.1.100','admin','2011-10-11','save方法'),(272,'save操作','admin,用户执行save方法',45,'127.0.0.1','admin','2011-10-11','save方法'),(273,'save操作','admin,用户执行save方法',46,'127.0.0.1','admin','2011-10-11','save方法'),(274,'delte操作','admin,用户执行delete方法',89,'127.0.0.1','admin','2011-10-11','delete方法'),(275,'update操作','admin,用户执行update方法',20,'192.168.1.101','admin','2011-10-11','update方法'),(276,'update操作','admin,用户执行update方法',8,'192.168.1.101','admin','2011-10-11','update方法'),(277,'update操作','admin,用户执行update方法',21,'192.168.1.101','admin','2011-10-11','update方法'),(278,'save操作','admin,用户执行save方法',57,'192.168.1.100','admin','2011-10-11','save方法'),(279,'update操作','admin,用户执行update方法',174,'192.168.1.100','admin','2011-10-11','update方法'),(280,'update操作','admin,用户执行update方法',124,'127.0.0.1','admin','2011-10-11','update方法'),(281,'update操作','admin,用户执行update方法',94,'192.168.1.111','admin','2011-10-11','update方法'),(282,'save操作','admin,用户执行save方法',86,'127.0.0.1','admin','2011-10-12','save方法'),(283,'save操作','admin,用户执行save方法',36,'127.0.0.1','admin','2011-10-12','save方法'),(284,'save操作','admin,用户执行save方法',37,'127.0.0.1','admin','2011-10-12','save方法'),(285,'save操作','admin,用户执行save方法',36,'127.0.0.1','admin','2011-10-12','save方法'),(286,'update操作','admin,用户执行update方法',39,'127.0.0.1','admin','2011-10-12','update方法'),(287,'update操作','admin,用户执行update方法',38,'127.0.0.1','admin','2011-10-12','update方法'),(288,'update操作','admin,用户执行update方法',26,'127.0.0.1','admin','2011-10-12','update方法'),(289,'delte操作','admin,用户执行delete方法',38,'127.0.0.1','admin','2011-10-12','delete方法'),(290,'save操作','admin,用户执行save方法',25,'127.0.0.1','admin','2011-10-12','save方法'),(291,'save操作','admin,用户执行save方法',62,'192.168.1.100','admin','2011-10-12','save方法'),(292,'save操作','admin,用户执行save方法',46,'192.168.1.100','admin','2011-10-12','save方法'),(293,'save操作','admin,用户执行save方法',48,'192.168.1.100','admin','2011-10-12','save方法'),(294,'save操作','admin,用户执行save方法',42,'192.168.1.100','admin','2011-10-12','save方法'),(295,'save操作','admin,用户执行save方法',40,'192.168.1.100','admin','2011-10-12','save方法'),(296,'save操作','admin,用户执行save方法',48,'192.168.1.100','admin','2011-10-12','save方法'),(297,'save操作','admin,用户执行save方法',42,'192.168.1.100','admin','2011-10-12','save方法'),(298,'save操作','admin,用户执行save方法',31,'192.168.1.100','admin','2011-10-12','save方法'),(299,'save操作','admin,用户执行save方法',44,'192.168.1.100','admin','2011-10-12','save方法'),(300,'save操作','admin,用户执行save方法',31,'192.168.1.100','admin','2011-10-12','save方法'),(301,'update操作','admin,用户执行update方法',42,'192.168.1.100','admin','2011-10-12','update方法'),(302,'update操作','admin,用户执行update方法',31,'192.168.1.100','admin','2011-10-12','update方法'),(303,'update操作','admin,用户执行update方法',33,'192.168.1.100','admin','2011-10-12','update方法'),(304,'update操作','admin,用户执行update方法',40,'192.168.1.100','admin','2011-10-12','update方法'),(305,'update操作','admin,用户执行update方法',22,'192.168.1.100','admin','2011-10-12','update方法'),(306,'save操作','admin,用户执行save方法',38,'192.168.1.100','admin','2011-10-12','save方法'),(307,'update操作','admin,用户执行update方法',77,'192.168.1.105','admin','2011-10-12','update方法'),(308,'update操作','admin,用户执行update方法',66,'192.168.1.105','admin','2011-10-12','update方法'),(309,'update操作','admin,用户执行update方法',79,'192.168.1.100','admin','2011-10-12','update方法'),(310,'delte操作','admin,用户执行del方法',50,'127.0.0.1','admin','2011-10-12','del方法'),(311,'delte操作','admin,用户执行del方法',40,'127.0.0.1','admin','2011-10-12','del方法'),(312,'save操作','admin,用户执行save方法',62,'192.168.1.111','admin','2011-10-12','save方法'),(313,'update操作','admin,用户执行update方法',90,'192.168.1.100','admin','2011-10-12','update方法'),(314,'update操作','admin,用户执行update方法',91,'192.168.1.100','admin','2011-10-12','update方法'),(315,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-12','save方法'),(316,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-12','save方法'),(317,'save操作','admin,用户执行save方法',31,'192.168.1.111','admin','2011-10-12','save方法'),(318,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-12','save方法'),(319,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-12','save方法'),(320,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-12','save方法'),(321,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-12','save方法'),(322,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-12','save方法'),(323,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-12','save方法'),(324,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-12','save方法'),(325,'save操作','admin,用户执行save方法',62,'192.168.1.111','admin','2011-10-12','save方法'),(326,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-12','save方法'),(327,'save操作','admin,用户执行save方法',62,'192.168.1.111','admin','2011-10-12','save方法'),(328,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-12','save方法'),(329,'save操作','admin,用户执行save方法',31,'192.168.1.111','admin','2011-10-12','save方法'),(330,'save操作','admin,用户执行save方法',63,'192.168.1.111','admin','2011-10-12','save方法'),(331,'save操作','admin,用户执行save方法',62,'192.168.1.111','admin','2011-10-12','save方法'),(332,'save操作','admin,用户执行save方法',31,'192.168.1.111','admin','2011-10-12','save方法'),(333,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-12','save方法'),(334,'save操作','admin,用户执行save方法',31,'192.168.1.111','admin','2011-10-12','save方法'),(335,'update操作','admin,用户执行update方法',47,'192.168.1.111','admin','2011-10-12','update方法'),(336,'delte操作','admin,用户执行del方法',31,'192.168.1.111','admin','2011-10-12','del方法'),(337,'save操作','admin,用户执行save方法',63,'192.168.1.111','admin','2011-10-12','save方法'),(338,'save操作','admin,用户执行save方法',62,'192.168.1.111','admin','2011-10-12','save方法'),(339,'update操作','admin,用户执行update方法',88,'192.168.1.100','admin','2011-10-12','update方法'),(340,'update操作','admin,用户执行update方法',46,'192.168.1.111','admin','2011-10-12','update方法'),(341,'delte操作','admin,用户执行del方法',47,'192.168.1.111','admin','2011-10-12','del方法'),(342,'delte操作','admin,用户执行del方法',47,'192.168.1.111','admin','2011-10-12','del方法'),(343,'delte操作','admin,用户执行del方法',31,'192.168.1.111','admin','2011-10-12','del方法'),(344,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-12','save方法'),(345,'save操作','admin,用户执行save方法',46,'192.168.1.111','admin','2011-10-12','save方法'),(346,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-12','save方法'),(347,'save操作','admin,用户执行save方法',48,'192.168.1.105','admin','2011-10-12','save方法'),(348,'save操作','admin,用户执行save方法',32,'192.168.1.105','admin','2011-10-12','save方法'),(349,'update操作','admin,用户执行update方法',107,'192.168.1.105','admin','2011-10-12','update方法'),(350,'save操作','admin,用户执行save方法',52,'127.0.0.1','admin','2011-10-13','save方法'),(351,'update操作','admin,用户执行update方法',77,'192.168.1.101','admin','2011-10-13','update方法'),(352,'save操作','admin,用户执行save方法',63,'192.168.1.111','admin','2011-10-13','save方法'),(353,'save操作','admin,用户执行save方法',31,'192.168.1.111','admin','2011-10-13','save方法'),(354,'update操作','admin,用户执行update方法',78,'192.168.1.111','admin','2011-10-13','update方法'),(355,'save操作','admin,用户执行save方法',28,'127.0.0.1','admin','2011-10-13','save方法'),(356,'delte操作','admin,用户执行delUserFrom方法',39,'127.0.0.1','admin','2011-10-13','delUserFrom方法'),(357,'delte操作','admin,用户执行delUserFrom方法',39,'127.0.0.1','admin','2011-10-13','delUserFrom方法'),(358,'save操作','admin,用户执行save方法',38,'127.0.0.1','admin','2011-10-13','save方法'),(359,'delte操作','admin,用户执行del方法',37,'127.0.0.1','admin','2011-10-13','del方法'),(360,'delte操作','admin,用户执行del方法',33,'127.0.0.1','admin','2011-10-13','del方法'),(361,'delte操作','admin,用户执行del方法',46,'127.0.0.1','admin','2011-10-13','del方法'),(362,'delte操作','admin,用户执行delUserFrom方法',47,'127.0.0.1','admin','2011-10-13','delUserFrom方法'),(363,'save操作','admin,用户执行save方法',4,'127.0.0.1','admin','2011-10-13','save方法'),(364,'save操作','admin,用户执行save方法',9,'127.0.0.1','admin','2011-10-13','save方法'),(365,'save操作','admin,用户执行save方法',9,'127.0.0.1','admin','2011-10-13','save方法'),(366,'save操作','test,用户执行save方法',8,'127.0.0.1','test','2011-10-13','save方法'),(367,'save操作','test,用户执行save方法',8,'127.0.0.1','test','2011-10-13','save方法'),(368,'save操作','admin,用户执行save方法',59,'192.168.1.105','admin','2011-10-13','save方法'),(369,'save操作','admin,用户执行save方法',45,'192.168.1.105','admin','2011-10-13','save方法'),(370,'save操作','admin,用户执行save方法',43,'192.168.1.105','admin','2011-10-13','save方法'),(371,'save操作','admin,用户执行save方法',36,'192.168.1.105','admin','2011-10-13','save方法'),(372,'save操作','admin,用户执行save方法',49,'192.168.1.105','admin','2011-10-13','save方法'),(373,'update操作','admin,用户执行update方法',86,'192.168.1.105','admin','2011-10-13','update方法'),(374,'save操作','admin,用户执行save方法',94,'192.168.1.111','admin','2011-10-13','save方法'),(375,'delte操作','admin,用户执行del方法',31,'127.0.0.1','admin','2011-10-14','del方法'),(376,'save操作','admin,用户执行save方法',20,'127.0.0.1','admin','2011-10-14','save方法'),(377,'save操作','admin,用户执行save方法',47,'127.0.0.1','admin','2011-10-14','save方法'),(378,'update操作','admin,用户执行update方法',56,'192.168.1.101','admin','2011-10-14','update方法'),(379,'update操作','admin,用户执行update方法',51,'192.168.1.101','admin','2011-10-14','update方法'),(380,'update操作','admin,用户执行update方法',70,'192.168.1.101','admin','2011-10-14','update方法'),(381,'delte操作','admin,用户执行del方法',26,'192.168.1.108','admin','2011-10-14','del方法'),(382,'delte操作','admin,用户执行del方法',26,'192.168.1.108','admin','2011-10-14','del方法'),(383,'delte操作','admin,用户执行delete方法',68,'192.168.1.108','admin','2011-10-14','delete方法'),(384,'save操作','admin,用户执行save方法',21,'192.168.1.108','admin','2011-10-14','save方法'),(385,'delte操作','admin,用户执行del方法',20,'192.168.1.108','admin','2011-10-14','del方法'),(386,'save操作','admin,用户执行save方法',51,'192.168.1.108','admin','2011-10-14','save方法'),(387,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-14','save方法'),(388,'update操作','admin,用户执行update方法',47,'192.168.1.111','admin','2011-10-14','update方法'),(389,'save操作','admin,用户执行save方法',47,'192.168.1.108','admin','2011-10-14','save方法'),(390,'delte操作','admin,用户执行del方法',44,'192.168.1.108','admin','2011-10-14','del方法'),(391,'save操作','admin,用户执行save方法',46,'192.168.1.108','admin','2011-10-14','save方法'),(392,'delte操作','admin,用户执行del方法',41,'192.168.1.108','admin','2011-10-14','del方法'),(393,'save操作','admin,用户执行save方法',27,'192.168.1.108','admin','2011-10-14','save方法'),(394,'delte操作','admin,用户执行del方法',62,'192.168.1.108','admin','2011-10-14','del方法'),(395,'save操作','admin,用户执行save方法',26,'192.168.1.108','admin','2011-10-14','save方法'),(396,'save操作','admin,用户执行save方法',41,'192.168.1.105','admin','2011-10-15','save方法'),(397,'delte操作','admin,用户执行delete方法',85,'192.168.1.105','admin','2011-10-15','delete方法'),(398,'delte操作','admin,用户执行delete方法',64,'192.168.1.105','admin','2011-10-15','delete方法'),(399,'save操作','admin,用户执行save方法',34,'192.168.1.105','admin','2011-10-15','save方法'),(400,'delte操作','admin,用户执行del方法',33,'192.168.1.105','admin','2011-10-15','del方法'),(401,'save操作','admin,用户执行save方法',17,'192.168.1.105','admin','2011-10-15','save方法'),(402,'delte操作','admin,用户执行del方法',33,'192.168.1.105','admin','2011-10-15','del方法'),(403,'save操作','admin,用户执行save方法',22,'192.168.1.105','admin','2011-10-15','save方法'),(404,'delte操作','admin,用户执行del方法',48,'192.168.1.105','admin','2011-10-15','del方法'),(405,'save操作','admin,用户执行save方法',41,'192.168.1.105','admin','2011-10-15','save方法'),(406,'save操作','admin,用户执行save方法',33,'192.168.1.105','admin','2011-10-15','save方法'),(407,'delte操作','admin,用户执行del方法',33,'192.168.1.105','admin','2011-10-15','del方法'),(408,'delte操作','admin,用户执行del方法',33,'192.168.1.105','admin','2011-10-15','del方法'),(409,'save操作','admin,用户执行save方法',33,'192.168.1.105','admin','2011-10-15','save方法'),(410,'delte操作','admin,用户执行del方法',33,'192.168.1.105','admin','2011-10-15','del方法'),(411,'save操作','admin,用户执行save方法',33,'192.168.1.105','admin','2011-10-15','save方法'),(412,'delte操作','admin,用户执行del方法',33,'192.168.1.105','admin','2011-10-15','del方法'),(413,'save操作','admin,用户执行save方法',32,'192.168.1.105','admin','2011-10-15','save方法'),(414,'delte操作','admin,用户执行del方法',33,'192.168.1.105','admin','2011-10-15','del方法'),(415,'save操作','admin,用户执行save方法',37,'192.168.1.105','admin','2011-10-15','save方法'),(416,'delte操作','admin,用户执行delUserFrom方法',51,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(417,'delte操作','admin,用户执行delUserFrom方法',61,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(418,'delte操作','admin,用户执行delUserFrom方法',48,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(419,'delte操作','admin,用户执行delUserFrom方法',48,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(420,'delte操作','admin,用户执行delUserFrom方法',48,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(421,'delte操作','admin,用户执行delUserFrom方法',51,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(422,'delte操作','admin,用户执行delUserFrom方法',71,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(423,'delte操作','admin,用户执行delUserFrom方法',51,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(424,'delte操作','admin,用户执行delUserFrom方法',51,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(425,'delte操作','admin,用户执行delUserFrom方法',81,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(426,'delte操作','admin,用户执行delUserFrom方法',47,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(427,'delte操作','admin,用户执行delUserFrom方法',48,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(428,'delte操作','admin,用户执行delUserFrom方法',86,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(429,'delte操作','admin,用户执行delUserFrom方法',64,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(430,'delte操作','admin,用户执行delUserFrom方法',63,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(431,'delte操作','admin,用户执行delUserFrom方法',16,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(432,'delte操作','admin,用户执行delUserFrom方法',43,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(433,'delte操作','admin,用户执行delUserFrom方法',64,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(434,'delte操作','admin,用户执行delUserFrom方法',51,'192.168.1.105','admin','2011-10-15','delUserFrom方法'),(435,'save操作','admin,用户执行save方法',47,'192.168.1.123','admin','2011-10-02','save方法'),(436,'save操作','admin,用户执行save方法',31,'192.168.1.123','admin','2011-10-02','save方法'),(437,'save操作','admin,用户执行save方法',31,'192.168.1.123','admin','2011-10-02','save方法'),(438,'delte操作','admin,用户执行delete方法',78,'192.168.1.123','admin','2011-10-02','delete方法'),(439,'save操作','admin,用户执行save方法',46,'192.168.1.123','admin','2011-10-02','save方法'),(440,'update操作','admin,用户执行update方法',78,'192.168.1.123','admin','2011-10-02','update方法'),(441,'update操作','admin,用户执行update方法',78,'192.168.1.123','admin','2011-10-02','update方法'),(442,'update操作','admin,用户执行update方法',62,'192.168.1.123','admin','2011-10-02','update方法'),(443,'update操作','admin,用户执行update方法',34,'192.168.1.105','admin','2011-10-15','update方法'),(444,'update操作','admin,用户执行update方法',46,'192.168.1.105','admin','2011-10-15','update方法'),(445,'update操作','admin,用户执行update方法',56,'192.168.1.105','admin','2011-10-15','update方法'),(446,'update操作','admin,用户执行update方法',41,'192.168.1.105','admin','2011-10-15','update方法'),(447,'update操作','admin,用户执行update方法',46,'192.168.1.105','admin','2011-10-15','update方法'),(448,'update操作','admin,用户执行update方法',36,'192.168.1.105','admin','2011-10-15','update方法'),(449,'update操作','admin,用户执行update方法',42,'192.168.1.105','admin','2011-10-15','update方法'),(450,'save操作','admin,用户执行save方法',23,'192.168.1.105','admin','2011-10-15','save方法'),(451,'save操作','admin,用户执行save方法',56,'192.168.1.105','admin','2011-10-15','save方法'),(452,'delte操作','admin,用户执行del方法',41,'192.168.1.105','admin','2011-10-15','del方法'),(453,'save操作','admin,用户执行save方法',41,'192.168.1.105','admin','2011-10-15','save方法'),(454,'delte操作','admin,用户执行del方法',60,'192.168.1.105','admin','2011-10-15','del方法'),(455,'delte操作','admin,用户执行del方法',49,'192.168.1.105','admin','2011-10-15','del方法'),(456,'save操作','admin,用户执行save方法',44,'192.168.1.105','admin','2011-10-15','save方法'),(457,'save操作','admin,用户执行save方法',37,'192.168.1.105','admin','2011-10-15','save方法'),(458,'update操作','admin,用户执行update方法',53,'192.168.1.105','admin','2011-10-15','update方法'),(459,'update操作','admin,用户执行update方法',53,'192.168.1.105','admin','2011-10-15','update方法'),(460,'update操作','admin,用户执行update方法',37,'192.168.1.105','admin','2011-10-15','update方法'),(461,'save操作','admin,用户执行save方法',42,'192.168.1.105','admin','2011-10-15','save方法'),(462,'update操作','admin,用户执行update方法',47,'192.168.1.105','admin','2011-10-15','update方法'),(463,'save操作','admin,用户执行save方法',56,'192.168.1.105','admin','2011-10-15','save方法'),(464,'delte操作','admin,用户执行del方法',35,'127.0.0.1','admin','2011-10-17','del方法'),(465,'update操作','admin,用户执行update方法',34,'127.0.0.1','admin','2011-10-17','update方法'),(466,'update操作','admin,用户执行update方法',41,'192.168.1.105','admin','2011-10-17','update方法'),(467,'update操作','admin,用户执行update方法',35,'192.168.1.105','admin','2011-10-17','update方法'),(468,'save操作','admin,用户执行save方法',39,'127.0.0.1','admin','2011-10-18','save方法'),(469,'delte操作','admin,用户执行del方法',47,'127.0.0.1','admin','2011-10-18','del方法'),(470,'save操作','admin,用户执行save方法',62,'192.168.1.111','admin','2011-10-18','save方法'),(471,'save操作','admin,用户执行save方法',46,'192.168.1.111','admin','2011-10-18','save方法'),(472,'save操作','admin,用户执行save方法',46,'192.168.1.111','admin','2011-10-18','save方法'),(473,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-18','save方法'),(474,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-18','save方法'),(475,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-18','save方法'),(476,'save操作','admin,用户执行save方法',62,'192.168.1.111','admin','2011-10-18','save方法'),(477,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-20','save方法'),(478,'save操作','admin,用户执行save方法',16,'192.168.1.111','admin','2011-10-20','save方法'),(479,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-20','save方法'),(480,'save操作','admin,用户执行save方法',31,'192.168.1.111','admin','2011-10-20','save方法'),(481,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-20','save方法'),(482,'save操作','admin,用户执行save方法',32,'192.168.1.111','admin','2011-10-20','save方法'),(483,'save操作','admin,用户执行save方法',55,'192.168.1.108','admin','2011-10-20','save方法'),(484,'save操作','admin,用户执行save方法',46,'192.168.1.108','admin','2011-10-20','save方法'),(485,'save操作','admin,用户执行save方法',39,'192.168.1.108','admin','2011-10-20','save方法'),(486,'save操作','admin,用户执行save方法',45,'192.168.1.108','admin','2011-10-20','save方法'),(487,'save操作','admin,用户执行save方法',48,'192.168.1.108','admin','2011-10-20','save方法'),(488,'delte操作','admin,用户执行delete方法',108,'192.168.1.101','admin','2011-10-21','delete方法'),(489,'update操作','admin,用户执行update方法',119,'127.0.0.1','admin','2011-10-21','update方法'),(490,'update操作','admin,用户执行update方法',94,'192.168.1.108','admin','2011-10-21','update方法'),(491,'update操作','admin,用户执行update方法',44,'192.168.1.108','admin','2011-10-21','update方法'),(492,'update操作','admin,用户执行update方法',46,'192.168.1.105','admin','2011-10-21','update方法'),(493,'save操作','admin,用户执行save方法',5,'127.0.0.1','admin','2011-10-21','save方法'),(494,'save操作','admin,用户执行save方法',8,'127.0.0.1','admin','2011-10-21','save方法'),(495,'update操作','admin,用户执行update方法',54,'127.0.0.1','admin','2011-10-21','update方法'),(496,'update操作','admin,用户执行update方法',85,'127.0.0.1','admin','2011-10-24','update方法'),(497,'save操作','admin,用户执行save方法',6,'127.0.0.1','admin','2011-10-24','save方法'),(498,'save操作','admin,用户执行save方法',9,'127.0.0.1','admin','2011-10-24','save方法'),(499,'update操作','admin,用户执行update方法',38,'127.0.0.1','admin','2011-10-24','update方法'),(500,'save操作','admin,用户执行save方法',8,'127.0.0.1','admin','2011-10-24','save方法'),(501,'update操作','admin,用户执行update方法',34,'127.0.0.1','admin','2011-10-24','update方法'),(502,'save操作','admin,用户执行save方法',6,'127.0.0.1','admin','2011-10-24','save方法'),(503,'update操作','admin,用户执行update方法',38,'127.0.0.1','admin','2011-10-24','update方法'),(504,'update操作','admin,用户执行update方法',34,'127.0.0.1','admin','2011-10-24','update方法'),(505,'save操作','admin,用户执行save方法',8,'127.0.0.1','admin','2011-10-24','save方法'),(506,'update操作','admin,用户执行update方法',41,'127.0.0.1','admin','2011-10-24','update方法'),(507,'update操作','admin,用户执行update方法',51,'127.0.0.1','admin','2011-10-24','update方法'),(508,'save操作','admin,用户执行save方法',36,'127.0.0.1','admin','2011-10-24','save方法'),(509,'delte操作','admin,用户执行del方法',43,'127.0.0.1','admin','2011-10-24','del方法'),(510,'delte操作','admin,用户执行del方法',82,'127.0.0.1','admin','2011-10-25','del方法'),(511,'update操作','admin,用户执行update方法',41,'127.0.0.1','admin','2011-10-25','update方法'),(512,'update操作','admin,用户执行update方法',35,'127.0.0.1','admin','2011-10-25','update方法'),(513,'update操作','admin,用户执行update方法',24,'127.0.0.1','admin','2011-10-25','update方法'),(514,'update操作','admin,用户执行update方法',35,'127.0.0.1','admin','2011-10-25','update方法'),(515,'update操作','admin,用户执行update方法',39,'127.0.0.1','admin','2011-10-25','update方法'),(516,'save操作','admin,用户执行save方法',6,'127.0.0.1','admin','2011-10-25','save方法'),(517,'save操作','admin,用户执行save方法',8,'127.0.0.1','admin','2011-10-25','save方法'),(518,'delte操作','admin,用户执行del方法',39,'127.0.0.1','admin','2011-10-25','del方法'),(519,'delte操作','admin,用户执行del方法',38,'127.0.0.1','admin','2011-10-25','del方法'),(520,'save操作','admin,用户执行save方法',36,'127.0.0.1','admin','2011-10-25','save方法'),(521,'save操作','admin,用户执行save方法',39,'127.0.0.1','admin','2011-10-25','save方法'),(522,'save操作','admin,用户执行save方法',37,'127.0.0.1','admin','2011-10-25','save方法'),(523,'save操作','admin,用户执行save方法',66,'192.168.1.101','admin','2011-10-25','save方法'),(524,'update操作','admin,用户执行update方法',71,'192.168.1.101','admin','2011-10-25','update方法'),(525,'save操作','8001@163.com,用户执行save方法',44,'127.0.0.1','8001@163.com','2011-10-25','save方法'),(526,'update操作','8001@163.com,用户执行update方法',40,'127.0.0.1','8001@163.com','2011-10-25','update方法'),(527,'update操作','8001@163.com,用户执行update方法',39,'127.0.0.1','8001@163.com','2011-10-25','update方法'),(528,'delte操作','8001@163.com,用户执行del方法',40,'127.0.0.1','8001@163.com','2011-10-25','del方法'),(529,'save操作','8001@163.com,用户执行save方法',43,'127.0.0.1','8001@163.com','2011-10-25','save方法'),(530,'delte操作','8001@163.com,用户执行del方法',44,'127.0.0.1','8001@163.com','2011-10-25','del方法'),(531,'update操作','8001@163.com,用户执行update方法',38,'127.0.0.1','8001@163.com','2011-10-25','update方法'),(532,'save操作','8001@163.com,用户执行save方法',8,'127.0.0.1','8001@163.com','2011-10-25','save方法'),(533,'save操作','8001@163.com,用户执行save方法',34,'127.0.0.1','8001@163.com','2011-10-25','save方法'),(534,'delte操作','8001@163.com,用户执行del方法',40,'127.0.0.1','8001@163.com','2011-10-25','del方法'),(535,'update操作','admin,用户执行update方法',56,'192.168.1.112','admin','2011-10-25','update方法'),(536,'save操作','admin,用户执行save方法',5,'192.168.1.112','admin','2011-10-25','save方法'),(537,'save操作','admin,用户执行save方法',56,'192.168.1.112','admin','2011-10-25','save方法'),(538,'delte操作','admin,用户执行del方法',45,'192.168.1.112','admin','2011-10-25','del方法'),(539,'save操作','admin,用户执行save方法',53,'192.168.1.112','admin','2011-10-25','save方法'),(540,'update操作','admin,用户执行update方法',46,'192.168.1.112','admin','2011-10-25','update方法'),(541,'update操作','admin,用户执行update方法',47,'192.168.1.112','admin','2011-10-25','update方法'),(542,'update操作','admin,用户执行update方法',20391,'192.168.1.112','admin','2011-10-25','update方法'),(543,'update操作','admin,用户执行update方法',51,'192.168.1.112','admin','2011-10-25','update方法'),(544,'update操作','admin,用户执行update方法',47,'192.168.1.112','admin','2011-10-25','update方法'),(545,'delte操作','admin,用户执行del方法',44,'192.168.1.112','admin','2011-10-25','del方法'),(546,'save操作','admin,用户执行save方法',0,'192.168.1.112','admin','2011-10-25','save方法'),(547,'save操作','admin,用户执行save方法',5,'192.168.1.112','admin','2011-10-25','save方法'),(548,'save操作','admin,用户执行save方法',5,'192.168.1.112','admin','2011-10-25','save方法'),(549,'save操作','admin,用户执行save方法',171,'192.168.1.112','admin','2011-10-25','save方法'),(550,'save操作','admin,用户执行save方法',46,'192.168.1.112','admin','2011-10-25','save方法'),(551,'delte操作','admin,用户执行del方法',46,'192.168.1.112','admin','2011-10-25','del方法'),(552,'delte操作','admin,用户执行del方法',21,'192.168.1.112','admin','2011-10-25','del方法'),(553,'save操作','admin,用户执行save方法',52,'192.168.1.112','admin','2011-10-25','save方法'),(554,'update操作','admin,用户执行update方法',50,'192.168.1.112','admin','2011-10-25','update方法'),(555,'delte操作','admin,用户执行del方法',21,'192.168.1.112','admin','2011-10-25','del方法'),(556,'save操作','admin,用户执行save方法',72,'192.168.1.112','admin','2011-10-25','save方法'),(557,'save操作','admin,用户执行save方法',51,'192.168.1.112','admin','2011-10-26','save方法'),(558,'update操作','admin,用户执行update方法',111,'192.168.1.110','admin','2011-10-26','update方法'),(559,'update操作','admin,用户执行update方法',46,'192.168.1.110','admin','2011-10-26','update方法'),(560,'delte操作','admin,用户执行delete方法',146,'192.168.1.110','admin','2011-10-26','delete方法'),(561,'update操作','admin,用户执行update方法',61,'192.168.1.110','admin','2011-10-26','update方法'),(562,'update操作','admin,用户执行update方法',146,'192.168.1.112','admin','2011-10-26','update方法'),(563,'save操作','admin,用户执行save方法',41,'192.168.1.112','admin','2011-10-26','save方法'),(564,'update操作','admin,用户执行update方法',61,'192.168.1.112','admin','2011-10-26','update方法'),(565,'save操作','admin,用户执行save方法',5,'127.0.0.1','admin','2011-10-26','save方法'),(566,'save操作','admin,用户执行save方法',46,'192.168.1.112','admin','2011-10-26','save方法'),(567,'update操作','admin,用户执行update方法',176,'192.168.1.112','admin','2011-10-26','update方法'),(568,'update操作','admin,用户执行update方法',36,'192.168.1.112','admin','2011-10-26','update方法'),(569,'save操作','admin,用户执行save方法',46,'192.168.1.112','admin','2011-10-26','save方法'),(570,'delte操作','admin,用户执行del方法',46,'192.168.1.112','admin','2011-10-26','del方法'),(571,'delte操作','admin,用户执行del方法',36,'192.168.1.112','admin','2011-10-26','del方法'),(572,'delte操作','admin,用户执行del方法',31,'192.168.1.112','admin','2011-10-26','del方法'),(573,'delte操作','admin,用户执行del方法',36,'192.168.1.112','admin','2011-10-26','del方法'),(574,'delte操作','admin,用户执行delete方法',172,'192.168.1.123','admin','2011-10-01','delete方法'),(575,'update操作','admin,用户执行update方法',41,'192.168.1.112','admin','2011-10-26','update方法'),(576,'save操作','admin,用户执行save方法',44,'192.168.1.112','admin','2011-10-26','save方法'),(577,'save操作','admin,用户执行save方法',56,'192.168.1.112','admin','2011-10-26','save方法'),(578,'save操作','admin,用户执行save方法',94,'192.168.1.111','admin','2011-10-27','save方法'),(579,'save操作','8004@163.com,用户执行save方法',53,'127.0.0.1','8004@163.com','2011-10-27','save方法'),(580,'save操作','8004@163.com,用户执行save方法',48,'127.0.0.1','8004@163.com','2011-10-27','save方法'),(581,'save操作','admin,用户执行save方法',62,'192.168.1.111','admin','2011-10-27','save方法'),(582,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-27','save方法'),(583,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-10-27','save方法'),(584,'save操作','admin,用户执行save方法',62,'192.168.1.111','admin','2011-10-27','save方法'),(585,'save操作','admin,用户执行save方法',32,'192.168.1.111','admin','2011-10-27','save方法'),(586,'save操作','admin,用户执行save方法',47,'127.0.0.1','admin','2011-10-28','save方法'),(587,'update操作','admin,用户执行update方法',34,'127.0.0.1','admin','2011-10-28','update方法'),(588,'delte操作','admin,用户执行del方法',52,'127.0.0.1','admin','2011-10-28','del方法'),(589,'save操作','admin,用户执行save方法',34,'127.0.0.1','admin','2011-10-28','save方法'),(590,'save操作','admin,用户执行save方法',43,'127.0.0.1','admin','2011-10-28','save方法'),(591,'delte操作','admin,用户执行delete方法',34,'127.0.0.1','admin','2011-10-28','delete方法'),(592,'save操作','admin,用户执行save方法',69,'192.168.1.100','admin','2011-10-31','save方法'),(593,'update操作','admin,用户执行update方法',73,'192.168.1.100','admin','2011-10-31','update方法'),(594,'save操作','admin,用户执行save方法',71,'192.168.1.100','admin','2011-11-01','save方法'),(595,'save操作','admin,用户执行save方法',65,'192.168.1.100','admin','2011-11-01','save方法'),(596,'save操作','admin,用户执行save方法',49,'192.168.1.100','admin','2011-11-01','save方法'),(597,'save操作','admin,用户执行save方法',65,'192.168.1.100','admin','2011-11-01','save方法'),(598,'save操作','admin,用户执行save方法',47,'192.168.1.100','admin','2011-11-01','save方法'),(599,'delte操作','admin,用户执行delUserFrom方法',45,'192.168.1.112','admin','2011-11-01','delUserFrom方法'),(600,'delte操作','admin,用户执行delUserFrom方法',46,'192.168.1.112','admin','2011-11-01','delUserFrom方法'),(601,'delte操作','admin,用户执行del方法',36,'192.168.1.112','admin','2011-11-01','del方法'),(602,'update操作','admin,用户执行update方法',110,'192.168.1.102','admin','2011-11-03','update方法'),(603,'save操作','admin,用户执行save方法',57,'192.168.1.102','admin','2011-11-03','save方法'),(604,'update操作','admin,用户执行update方法',65,'192.168.1.102','admin','2011-11-03','update方法'),(605,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-11-03','save方法'),(606,'update操作','8002@163.com,用户执行update方法',52,'192.168.1.102','8002@163.com','2011-11-03','update方法'),(607,'update操作','admin,用户执行update方法',61,'192.168.1.112','admin','2011-11-03','update方法'),(608,'update操作','admin,用户执行update方法',54,'192.168.1.112','admin','2011-11-03','update方法'),(609,'save操作','admin,用户执行save方法',47,'192.168.1.111','admin','2011-11-04','save方法'),(610,'save操作','admin,用户执行save方法',47,'192.168.1.112','admin','2011-11-04','save方法'),(611,'delte操作','admin,用户执行delete方法',91,'192.168.1.105','admin','2011-11-04','delete方法'),(612,'save操作','admin,用户执行save方法',64,'192.168.1.100','admin','2011-11-04','save方法'),(613,'delte操作','admin,用户执行delete方法',127,'192.168.1.100','admin','2011-11-04','delete方法'),(614,'save操作','admin,用户执行save方法',41,'192.168.1.112','admin','2011-11-04','save方法'),(615,'delte操作','admin,用户执行delUserFrom方法',56,'192.168.1.112','admin','2011-11-04','delUserFrom方法'),(616,'delte操作','admin,用户执行delUserFrom方法',52,'192.168.1.112','admin','2011-11-04','delUserFrom方法'),(617,'save操作','admin,用户执行save方法',45,'192.168.1.112','admin','2011-11-04','save方法'),(618,'update操作','admin,用户执行update方法',46,'192.168.1.112','admin','2011-11-04','update方法'),(619,'delte操作','admin,用户执行delete方法',46,'192.168.1.112','admin','2011-11-04','delete方法'),(620,'delte操作','admin,用户执行delete方法',37,'192.168.1.112','admin','2011-11-04','delete方法'),(621,'save操作','admin,用户执行save方法',51,'192.168.1.112','admin','2011-11-04','save方法'),(622,'update操作','admin,用户执行update方法',53,'192.168.1.112','admin','2011-11-04','update方法'),(623,'delte操作','admin,用户执行delete方法',56,'192.168.1.112','admin','2011-11-04','delete方法'),(624,'update操作','admin,用户执行update方法',44,'192.168.1.112','admin','2011-11-04','update方法'),(625,'update操作','admin,用户执行update方法',46,'192.168.1.112','admin','2011-11-04','update方法'),(626,'delte操作','admin,用户执行delUserFrom方法',56,'192.168.1.112','admin','2011-11-04','delUserFrom方法'),(627,'delte操作','admin,用户执行delUserFrom方法',53,'192.168.1.112','admin','2011-11-04','delUserFrom方法'),(628,'save操作','8002@163.com,用户执行save方法',35,'192.168.1.112','8002@163.com','2011-11-04','save方法'),(629,'delte操作','8002@163.com,用户执行del方法',46,'192.168.1.112','8002@163.com','2011-11-04','del方法'),(630,'delte操作','8002@163.com,用户执行del方法',26,'192.168.1.112','8002@163.com','2011-11-04','del方法'),(631,'update操作','8002@163.com,用户执行update方法',33,'192.168.1.112','8002@163.com','2011-11-04','update方法'),(632,'save操作','admin,用户执行save方法',63,'192.168.1.108','admin','2011-11-15','save方法'),(633,'delte操作','admin,用户执行delete方法',103,'192.168.1.108','admin','2011-11-15','delete方法'),(634,'update操作','admin,用户执行update方法',91,'192.168.1.108','admin','2011-11-15','update方法'),(635,'save操作','admin,用户执行save方法',64,'192.168.1.108','admin','2011-11-15','save方法'),(636,'delte操作','admin,用户执行delete方法',141,'192.168.1.108','admin','2011-11-15','delete方法'),(637,'delte操作','admin,用户执行delete方法',81,'192.168.1.108','admin','2011-11-15','delete方法'),(638,'update操作','admin,用户执行update方法',88,'127.0.0.1','admin','2011-11-17','update方法'),(639,'update操作','admin,用户执行update方法',104,'127.0.0.1','admin','2011-11-17','update方法'),(640,'update操作','admin,用户执行update方法',83,'127.0.0.1','admin','2011-11-17','update方法'),(641,'update操作','admin,用户执行update方法',99,'127.0.0.1','admin','2011-11-17','update方法'),(642,'update操作','admin,用户执行update方法',95,'127.0.0.1','admin','2011-11-17','update方法'),(643,'save操作','admin,用户执行save方法',30,'127.0.1.1','admin','2011-11-18','save方法'),(644,'save操作','admin,用户执行save方法',35,'127.0.1.1','admin','2011-11-18','save方法'),(645,'save操作','admin,用户执行save方法',235,'192.168.1.115','admin','2011-11-23','save方法'),(646,'update操作','admin,用户执行update方法',94,'192.168.1.115','admin','2011-11-23','update方法'),(647,'update操作','admin,用户执行update方法',78,'192.168.1.115','admin','2011-11-23','update方法'),(648,'delte操作','admin,用户执行del方法',44,'192.168.1.112','admin','2011-11-23','del方法'),(649,'save操作','admin,用户执行save方法',63,'192.168.1.115','admin','2011-11-23','save方法'),(650,'save操作','admin,用户执行save方法',62,'192.168.1.115','admin','2011-11-23','save方法'),(651,'save操作','admin,用户执行save方法',47,'192.168.1.115','admin','2011-11-23','save方法'),(652,'save操作','admin,用户执行save方法',16,'192.168.1.115','admin','2011-11-23','save方法'),(653,'save操作','admin,用户执行save方法',47,'192.168.1.115','admin','2011-11-23','save方法'),(654,'delte操作','admin,用户执行delete方法',156,'192.168.1.115','admin','2011-11-24','delete方法'),(655,'save操作','admin,用户执行save方法',92,'192.168.1.103','admin','2011-11-26','save方法'),(656,'update操作','admin,用户执行update方法',90,'192.168.1.103','admin','2011-11-26','update方法'),(657,'save操作','admin,用户执行save方法',62,'192.168.1.111','admin','2011-11-28','save方法'),(658,'delte操作','admin,用户执行del方法',31,'192.168.1.111','admin','2011-11-28','del方法'),(659,'save操作','admin,用户执行save方法',46,'192.168.1.111','admin','2011-11-28','save方法'),(660,'delte操作','admin,用户执行del方法',47,'192.168.1.111','admin','2011-11-28','del方法'),(661,'update操作','admin,用户执行update方法',63,'192.168.1.106','admin','2011-11-29','update方法'),(662,'delte操作','admin,用户执行del方法',32,'192.168.1.106','admin','2011-11-29','del方法'),(663,'save操作','admin,用户执行save方法',31,'192.168.1.106','admin','2011-11-29','save方法'),(664,'save操作','admin,用户执行save方法',31,'192.168.1.106','admin','2011-11-29','save方法'),(665,'delte操作','admin,用户执行del方法',46,'192.168.1.106','admin','2011-11-29','del方法'),(666,'save操作','admin,用户执行save方法',80,'127.0.0.1','admin','2011-12-01','save方法'),(667,'update操作','admin,用户执行update方法',98,'127.0.0.1','admin','2011-12-01','update方法'),(668,'update操作','admin,用户执行update方法',103,'192.168.1.158','admin','2011-12-01','update方法'),(669,'update操作','admin,用户执行update方法',85,'192.168.1.158','admin','2011-12-01','update方法'),(670,'update操作','admin,用户执行update方法',57,'192.168.1.158','admin','2011-12-01','update方法'),(671,'update操作','admin,用户执行update方法',78,'192.168.1.158','admin','2011-12-01','update方法'),(672,'update操作','admin,用户执行update方法',78,'192.168.1.158','admin','2011-12-01','update方法'),(673,'delte操作','admin,用户执行del方法',81,'192.168.1.106','admin','2011-12-06','del方法'),(674,'delte操作','admin,用户执行delete方法',128,'192.168.1.105','admin','2011-12-06','delete方法'),(675,'delte操作','admin,用户执行delete方法',184,'192.168.1.105','admin','2011-12-06','delete方法'),(676,'delte操作','admin,用户执行delete方法',101,'192.168.1.105','admin','2011-12-06','delete方法'),(677,'delte操作','admin,用户执行delete方法',93,'192.168.1.105','admin','2011-12-06','delete方法'),(678,'delte操作','admin,用户执行delete方法',95,'192.168.1.105','admin','2011-12-06','delete方法'),(679,'delte操作','admin,用户执行delete方法',84,'192.168.1.105','admin','2011-12-06','delete方法'),(680,'delte操作','admin,用户执行delete方法',72,'192.168.1.105','admin','2011-12-06','delete方法'),(681,'delte操作','admin,用户执行delete方法',76,'192.168.1.105','admin','2011-12-06','delete方法'),(682,'delte操作','admin,用户执行delete方法',81,'192.168.1.105','admin','2011-12-06','delete方法'),(683,'delte操作','admin,用户执行delete方法',63,'192.168.1.102','admin','2011-12-06','delete方法'),(684,'save操作','admin,用户执行save方法',33,'192.168.1.102','admin','2011-12-06','save方法'),(685,'delte操作','admin,用户执行delete方法',47,'192.168.1.102','admin','2011-12-06','delete方法'),(686,'delte操作','admin,用户执行del方法',48,'192.168.1.107','admin','2011-12-07','del方法'),(687,'save操作','admin,用户执行save方法',48,'192.168.1.105','admin','2011-12-08','save方法'),(688,'save操作','admin,用户执行save方法',49,'192.168.1.105','admin','2011-12-08','save方法'),(689,'save操作','admin,用户执行save方法',48,'192.168.1.105','admin','2011-12-08','save方法'),(690,'update操作','admin,用户执行update方法',79,'192.168.1.105','admin','2011-12-08','update方法'),(691,'update操作','admin,用户执行update方法',80,'192.168.1.105','admin','2011-12-08','update方法'),(692,'update操作','admin,用户执行update方法',63,'192.168.1.105','admin','2011-12-08','update方法'),(693,'update操作','admin,用户执行update方法',173,'192.168.1.105','admin','2011-12-09','update方法'),(694,'update操作','admin,用户执行update方法',63,'192.168.1.105','admin','2011-12-09','update方法'),(695,'update操作','admin,用户执行update方法',63,'192.168.1.105','admin','2011-12-09','update方法'),(696,'delte操作','admin,用户执行del方法',64,'192.168.1.105','admin','2011-12-12','del方法'),(697,'delte操作','admin,用户执行del方法',32,'192.168.1.105','admin','2011-12-12','del方法'),(698,'save操作','admin,用户执行save方法',48,'192.168.1.105','admin','2011-12-12','save方法'),(699,'save操作','admin,用户执行save方法',64,'192.168.1.105','admin','2011-12-12','save方法'),(700,'save操作','admin,用户执行save方法',48,'192.168.1.105','admin','2011-12-12','save方法'),(701,'save操作','admin,用户执行save方法',80,'192.168.1.105','admin','2011-12-12','save方法'),(702,'save操作','admin,用户执行save方法',63,'192.168.1.105','admin','2011-12-12','save方法'),(703,'save操作','admin,用户执行save方法',63,'192.168.1.105','admin','2011-12-12','save方法'),(704,'save操作','admin,用户执行save方法',47,'192.168.1.105','admin','2011-12-12','save方法'),(705,'save操作','admin,用户执行save方法',33,'192.168.1.105','admin','2011-12-12','save方法'),(706,'update操作','admin,用户执行update方法',63,'192.168.1.105','admin','2011-12-12','update方法'),(707,'update操作','admin,用户执行update方法',47,'192.168.1.105','admin','2011-12-12','update方法'),(708,'update操作','admin,用户执行update方法',32,'192.168.1.105','admin','2011-12-12','update方法'),(709,'update操作','admin,用户执行update方法',48,'192.168.1.105','admin','2011-12-12','update方法'),(710,'update操作','admin,用户执行update方法',49,'192.168.1.105','admin','2011-12-12','update方法'),(711,'save操作','admin,用户执行save方法',49,'192.168.1.105','admin','2011-12-12','save方法'),(712,'save操作','admin,用户执行save方法',50,'192.168.1.105','admin','2011-12-12','save方法'),(713,'update操作','admin,用户执行update方法',49,'192.168.1.105','admin','2011-12-12','update方法'),(714,'update操作','admin,用户执行update方法',32,'192.168.1.105','admin','2011-12-12','update方法'),(715,'save操作','admin,用户执行save方法',48,'192.168.1.105','admin','2011-12-12','save方法'),(716,'save操作','admin,用户执行save方法',48,'192.168.1.105','admin','2011-12-12','save方法'),(717,'save操作','admin,用户执行save方法',33,'192.168.1.105','admin','2011-12-12','save方法'),(718,'update操作','admin,用户执行update方法',48,'192.168.1.105','admin','2011-12-12','update方法'),(719,'save操作','admin,用户执行save方法',32,'192.168.1.103','admin','2011-12-13','save方法'),(720,'update操作','admin,用户执行update方法',95,'192.168.1.103','admin','2011-12-13','update方法'),(721,'update操作','admin,用户执行update方法',63,'192.168.1.103','admin','2011-12-13','update方法'),(722,'save操作','admin,用户执行save方法',48,'192.168.1.103','admin','2011-12-13','save方法'),(723,'save操作','admin,用户执行save方法',48,'192.168.1.100','admin','2011-12-14','save方法'),(724,'save操作','admin,用户执行save方法',33,'192.168.1.100','admin','2011-12-14','save方法'),(725,'update操作','admin,用户执行update方法',17,'192.168.1.100','admin','2011-12-14','update方法'),(726,'update操作','admin,用户执行update方法',33,'192.168.1.100','admin','2011-12-14','update方法'),(727,'save操作','admin,用户执行save方法',32,'192.168.1.100','admin','2011-12-14','save方法'),(728,'update操作','admin,用户执行update方法',18,'192.168.1.100','admin','2011-12-14','update方法'),(729,'save操作','admin,用户执行save方法',47,'192.168.1.105','admin','2011-12-19','save方法'),(730,'delte操作','admin,用户执行del方法',33,'192.168.1.105','admin','2011-12-19','del方法'),(731,'delte操作','admin,用户执行del方法',31,'192.168.1.158','admin','2012-02-02','del方法'),(732,'delte操作','admin,用户执行del方法',31,'192.168.1.158','admin','2012-02-02','del方法'),(733,'delte操作','admin,用户执行del方法',21,'192.168.1.158','admin','2012-02-02','del方法'),(734,'delte操作','admin,用户执行del方法',31,'192.168.1.158','admin','2012-02-02','del方法'),(735,'delte操作','admin,用户执行del方法',31,'192.168.1.158','admin','2012-02-02','del方法'),(736,'delte操作','admin,用户执行delete方法',62,'192.168.1.158','admin','2012-02-02','delete方法'),(737,'delte操作','admin,用户执行del方法',21,'192.168.1.158','admin','2012-02-02','del方法'),(738,'delte操作','admin,用户执行delete方法',62,'192.168.1.158','admin','2012-02-02','delete方法'),(739,'delte操作','admin,用户执行delete方法',52,'192.168.1.158','admin','2012-02-02','delete方法'),(740,'delte操作','admin,用户执行delete方法',52,'192.168.1.158','admin','2012-02-02','delete方法'),(741,'delte操作','admin,用户执行delete方法',59,'192.168.1.158','admin','2012-02-02','delete方法'),(742,'delte操作','admin,用户执行delete方法',42,'192.168.1.158','admin','2012-02-02','delete方法'),(743,'delte操作','admin,用户执行delete方法',62,'192.168.1.158','admin','2012-02-02','delete方法'),(744,'delte操作','admin,用户执行del方法',31,'192.168.1.158','admin','2012-02-02','del方法'),(745,'delte操作','admin,用户执行del方法',41,'192.168.1.158','admin','2012-02-02','del方法'),(746,'delte操作','admin,用户执行del方法',21,'192.168.1.158','admin','2012-02-02','del方法'),(747,'delte操作','admin,用户执行del方法',21,'192.168.1.158','admin','2012-02-02','del方法'),(748,'delte操作','admin,用户执行del方法',31,'192.168.1.158','admin','2012-02-02','del方法'),(749,'delte操作','admin,用户执行del方法',36,'192.168.1.158','admin','2012-02-02','del方法'),(750,'delte操作','admin,用户执行del方法',31,'192.168.1.158','admin','2012-02-02','del方法'),(751,'delte操作','admin,用户执行delete方法',51,'192.168.1.158','admin','2012-02-02','delete方法'),(752,'delte操作','admin,用户执行delete方法',21,'192.168.1.158','admin','2012-02-02','delete方法'),(753,'delte操作','admin,用户执行delete方法',56,'192.168.1.158','admin','2012-02-02','delete方法'),(754,'delte操作','admin,用户执行delete方法',31,'192.168.1.158','admin','2012-02-02','delete方法'),(755,'delte操作','admin,用户执行delete方法',31,'192.168.1.158','admin','2012-02-02','delete方法'),(756,'delte操作','admin,用户执行delete方法',31,'192.168.1.158','admin','2012-02-02','delete方法'),(757,'delte操作','admin,用户执行delete方法',41,'192.168.1.158','admin','2012-02-02','delete方法'),(758,'delte操作','admin,用户执行delete方法',33,'192.168.1.158','admin','2012-02-02','delete方法'),(759,'delte操作','admin,用户执行delete方法',31,'192.168.1.158','admin','2012-02-02','delete方法'),(760,'delte操作','admin,用户执行delete方法',31,'192.168.1.158','admin','2012-02-02','delete方法'),(761,'delte操作','admin,用户执行delete方法',31,'192.168.1.158','admin','2012-02-02','delete方法'),(762,'delte操作','admin,用户执行delete方法',41,'192.168.1.158','admin','2012-02-02','delete方法'),(763,'delte操作','admin,用户执行delete方法',31,'192.168.1.158','admin','2012-02-02','delete方法'),(764,'delte操作','admin,用户执行delete方法',31,'192.168.1.158','admin','2012-02-02','delete方法'),(765,'delte操作','admin,用户执行delete方法',36,'192.168.1.158','admin','2012-02-02','delete方法'),(766,'save操作','admin,用户执行save方法',61,'192.168.1.199','admin','2012-04-12','save方法'),(767,'save操作','admin,用户执行save方法',70,'192.168.1.158','admin','2012-04-16','save方法'),(768,'update操作','admin,用户执行update方法',56,'192.168.1.158','admin','2012-04-16','update方法'),(769,'save操作','admin,用户执行save方法',40,'192.168.1.102','admin','2012-04-23','save方法'),(770,'delte操作','admin,用户执行del方法',38,'192.168.1.102','admin','2012-04-23','del方法'),(771,'update操作','admin,用户执行update方法',40,'192.168.1.199','admin','2012-04-23','update方法'),(772,'update操作','admin,用户执行update方法',29,'192.168.1.199','admin','2012-04-23','update方法'),(773,'delte操作','admin,用户执行delUserFrom方法',77,'192.168.1.199','admin','2012-04-24','delUserFrom方法'),(774,'save操作','admin,用户执行save方法',328,'192.168.2.109','admin','2012-05-03','save方法'),(775,'update操作','admin,用户执行update方法',250,'192.168.2.109','admin','2012-05-03','update方法'),(776,'save操作','admin,用户执行save方法',125,'192.168.2.109','admin','2012-05-04','save方法'),(777,'update操作','admin,用户执行update方法',282,'192.168.2.109','admin','2012-05-04','update方法'),(778,'update操作','admin,用户执行update方法',266,'192.168.2.109','admin','2012-05-04','update方法'),(779,'update操作','admin,用户执行update方法',234,'192.168.2.109','admin','2012-05-04','update方法'),(780,'update操作','admin,用户执行update方法',62,'192.168.2.109','admin','2012-05-04','update方法'),(781,'update操作','admin,用户执行update方法',125,'192.168.2.109','admin','2012-05-04','update方法'),(782,'delte操作','admin,用户执行delete方法',0,'192.168.2.109','admin','2012-05-04','delete方法'),(783,'delte操作','admin,用户执行delete方法',16,'192.168.2.109','admin','2012-05-04','delete方法'),(784,'delte操作','admin,用户执行delete方法',0,'192.168.2.109','admin','2012-05-04','delete方法'),(785,'delte操作','admin,用户执行delete方法',0,'192.168.2.109','admin','2012-05-04','delete方法'),(786,'delte操作','admin,用户执行delete方法',172,'192.168.2.109','admin','2012-05-04','delete方法'),(787,'save操作','admin,用户执行save方法',156,'192.168.2.109','admin','2012-05-04','save方法'),(788,'delte操作','admin,用户执行delete方法',31,'192.168.2.109','admin','2012-05-04','delete方法'),(789,'save操作','admin,用户执行save方法',47,'192.168.2.109','admin','2012-05-04','save方法'),(790,'delte操作','admin,用户执行delete方法',32,'192.168.2.109','admin','2012-05-04','delete方法'),(791,'save操作','admin,用户执行save方法',172,'192.168.2.109','admin','2012-05-04','save方法'),(792,'update操作','admin,用户执行update方法',141,'192.168.2.109','admin','2012-05-04','update方法'),(793,'delte操作','admin,用户执行delete方法',187,'192.168.2.109','admin','2012-05-04','delete方法'),(794,'save操作','admin,用户执行save方法',889,'192.168.2.102','admin','2012-05-04','save方法'),(795,'save操作','admin,用户执行save方法',421,'192.168.2.109','admin','2012-05-04','save方法'),(796,'save操作','admin,用户执行save方法',125,'192.168.2.109','admin','2012-05-04','save方法'),(797,'update操作','admin,用户执行update方法',610,'192.168.2.109','admin','2012-05-04','update方法'),(798,'update操作','admin,用户执行update方法',297,'192.168.2.109','admin','2012-05-04','update方法'),(799,'delte操作','admin,用户执行delete方法',500,'192.168.2.109','admin','2012-05-04','delete方法'),(800,'update操作','admin,用户执行update方法',140,'192.168.2.109','admin','2012-05-04','update方法'),(801,'update操作','admin,用户执行update方法',328,'192.168.2.109','admin','2012-05-04','update方法'),(802,'save操作','admin,用户执行save方法',156,'192.168.2.109','admin','2012-05-05','save方法'),(803,'delte操作','admin,用户执行delete方法',78,'192.168.2.109','admin','2012-05-05','delete方法'),(804,'delte操作','admin,用户执行delete方法',48,'192.168.1.158','admin','2012-05-30','delete方法'),(805,'update操作','admin,用户执行update方法',32,'192.168.1.158','admin','2012-05-30','update方法'),(806,'save操作','admin,用户执行save方法',48,'192.168.1.158','admin','2012-05-30','save方法'),(807,'save操作','admin,用户执行save方法',15,'192.168.1.158','admin','2012-05-30','save方法'),(808,'delte操作','admin,用户执行delete方法',96,'192.168.1.158','admin','2012-05-30','delete方法'),(809,'delte操作','admin,用户执行delUserFrom方法',40,'192.168.1.158','admin','2012-05-30','delUserFrom方法'),(810,'update操作','admin,用户执行update方法',40,'192.168.1.158','admin','2012-05-30','update方法'),(811,'save操作','admin,用户执行save方法',105,'192.168.1.105','admin','2012-05-31','save方法'),(812,'delte操作','admin,用户执行delete方法',37,'192.168.1.105','admin','2012-05-31','delete方法'),(813,'save操作','admin,用户执行save方法',91,'192.168.1.158','admin','2012-06-05','save方法'),(814,'save操作','admin,用户执行save方法',25,'192.168.1.158','admin','2012-06-05','save方法'),(815,'save操作','admin,用户执行save方法',53,'192.168.1.158','admin','2012-06-05','save方法'),(816,'save操作','admin,用户执行save方法',40,'192.168.1.158','admin','2012-06-05','save方法'),(817,'update操作','admin,用户执行update方法',29,'192.168.1.158','admin','2012-06-05','update方法'),(818,'save操作','admin,用户执行save方法',30,'192.168.1.158','admin','2012-06-05','save方法'),(819,'save操作','admin,用户执行save方法',31,'192.168.1.158','admin','2012-06-05','save方法'),(820,'save操作','admin,用户执行save方法',40,'192.168.1.158','admin','2012-06-05','save方法'),(821,'save操作','admin,用户执行save方法',34,'192.168.1.158','admin','2012-06-05','save方法'),(822,'save操作','admin,用户执行save方法',23,'192.168.1.158','admin','2012-06-05','save方法'),(823,'save操作','admin,用户执行save方法',45,'192.168.1.158','admin','2012-06-05','save方法'),(824,'delte操作','admin,用户执行delete方法',61,'192.168.1.158','admin','2012-06-05','delete方法'),(825,'delte操作','admin,用户执行delete方法',91,'192.168.1.158','admin','2012-06-05','delete方法'),(826,'save操作','admin,用户执行save方法',3,'192.168.1.158','admin','2012-06-05','save方法');

/*Table structure for table `c_resource` */

DROP TABLE IF EXISTS `c_resource`;

CREATE TABLE `c_resource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '资源记录id',
  `name` varchar(30) NOT NULL COMMENT '资源名称',
  `enname` varchar(30) NOT NULL COMMENT '英文名称',
  `systemid` int(10) unsigned NOT NULL COMMENT '所属系统id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT '上级资源记录id',
  `resourcetype` varchar(2) DEFAULT NULL COMMENT '资源类型',
  `link` varchar(100) DEFAULT NULL COMMENT '链接',
  `icon` varchar(30) DEFAULT NULL COMMENT '图标',
  `iconopen` varchar(30) DEFAULT NULL COMMENT '打开图标',
  `isopen` varchar(30) DEFAULT NULL COMMENT '是否打开',
  `isleaf` varchar(30) NOT NULL COMMENT '是否节点',
  `status` varchar(30) NOT NULL COMMENT '状态',
  `orderid` int(10) unsigned DEFAULT NULL COMMENT '排序',
  `memo` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `FK_resource_system` (`systemid`),
  KEY `FK_resource_resource` (`parent_id`),
  CONSTRAINT `FK_resource_resource` FOREIGN KEY (`parent_id`) REFERENCES `c_resource` (`id`),
  CONSTRAINT `FK_resource_system` FOREIGN KEY (`systemid`) REFERENCES `c_system` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `c_resource` */

insert  into `c_resource`(`id`,`name`,`enname`,`systemid`,`parent_id`,`resourcetype`,`link`,`icon`,`iconopen`,`isopen`,`isleaf`,`status`,`orderid`,`memo`) values (5,'系统中心','systemCenter',22,NULL,'','','icon_xtzx.png','open100','open100','leaf100','status100',4,''),(8,'人员管理','users',22,5,'','user/indexUser.tg','icon-nav','open100','open100','leaf100','status100',7,''),(10,'组管理','group',22,5,'','group/indexGroup.tg','icon-nav','open100','open100','leaf100','status100',9,'饿'),(11,'角色管理','role',22,5,'','permissions/role/indexRole.tg','icon-nav','open100','open100','leaf100','status100',8,''),(17,'日志管理','log',22,5,'日志','log/indexLog.tg','','open100','open100','leaf100','status100',1,''),(18,'系统字典','dictionary',22,5,'','dictionary/indexDictionary.tg','','open100','open100','leaf100','status100',10,''),(19,'全局参数','arguments',22,5,'','permissions/arguments/indexArguments.tg','','open100','open100','leaf100','status100',11,''),(20,'操作信息','action',22,5,'','permissions/actions/indexActions.tg','','open100','open100','leaf100','status100',12,''),(21,'资源信息','resource',22,5,'','permissions/resources/indexResources.tg','','open100','open100','leaf100','status100',13,''),(22,'系统信息','system',22,5,'','sys/indexMessage.tg','','open100','open100','leaf100','status100',19,''),(24,'流程定义类型','flowtype',22,5,'','views/workflow/flowtype/flowtype.jsp','','open100','open100','leaf100','status100',21,'');

/*Table structure for table `c_resource_action` */

DROP TABLE IF EXISTS `c_resource_action`;

CREATE TABLE `c_resource_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` int(10) unsigned NOT NULL,
  `action_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_c_resource_action_1` (`action_id`),
  KEY `FK_c_resource_action_2` (`resource_id`),
  CONSTRAINT `FK_c_resource_action_1` FOREIGN KEY (`action_id`) REFERENCES `c_action` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_c_resource_action_2` FOREIGN KEY (`resource_id`) REFERENCES `c_resource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

/*Data for the table `c_resource_action` */

insert  into `c_resource_action`(`id`,`resource_id`,`action_id`) values (72,8,7),(73,8,4),(74,8,5),(75,8,1),(80,10,12),(81,10,5),(82,10,4),(83,10,1),(84,10,16),(85,10,17),(86,10,18),(87,10,19),(88,10,20),(89,11,11),(90,11,1),(91,11,4),(92,11,5),(93,11,10),(94,11,15),(95,11,14),(96,17,12),(97,17,11),(98,18,1),(99,18,4),(100,18,5),(101,18,7),(102,19,1),(103,19,4),(104,19,5),(105,19,10),(106,19,11),(113,20,10),(114,20,4),(115,20,5),(116,20,1),(117,20,11),(118,20,14),(119,21,1),(120,21,4),(121,21,5),(122,21,10),(123,21,13),(124,21,11),(125,22,1),(126,22,5),(127,22,4),(128,22,7),(129,24,1),(130,24,5),(131,24,4),(132,24,21);

/*Table structure for table `c_role` */

DROP TABLE IF EXISTS `c_role`;

CREATE TABLE `c_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色记录id',
  `name` varchar(30) NOT NULL COMMENT '角色名称',
  `enname` varchar(30) DEFAULT NULL COMMENT '英文名称',
  `status` varchar(30) NOT NULL COMMENT '状态，包括：启用，隐藏，冻结，弃用',
  `orderid` int(10) unsigned DEFAULT NULL COMMENT '排序',
  `memo` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `c_role` */

insert  into `c_role`(`id`,`name`,`enname`,`status`,`orderid`,`memo`) values (15,'administrator','','status100',1,'测试信息'),(16,'test','','status100',2,'工作'),(20,'审核','toexamine','status100',5,''),(21,'普通坐席','at','status100',2,''),(22,'普通资源','resource','status100',1,'TEST');

/*Table structure for table `c_roleauth` */

DROP TABLE IF EXISTS `c_roleauth`;

CREATE TABLE `c_roleauth` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `roleid` int(11) NOT NULL COMMENT '角色id',
  `resourceid` int(11) NOT NULL COMMENT '资源id',
  `actions` varchar(500) DEFAULT NULL COMMENT '操作id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=556 DEFAULT CHARSET=utf8;

/*Data for the table `c_roleauth` */

insert  into `c_roleauth`(`id`,`roleid`,`resourceid`,`actions`) values (545,20,18,'dictionary:delete,dictionary:add,dictionary:query,dictionary:modify'),(546,20,17,'log:advanceQuery,log:detail'),(547,20,22,'system:delete,system:add,system:query,system:modify'),(548,20,19,'arguments:delete,arguments:add,arguments:advanceQuery,arguments:refresh,arguments:modify'),(549,20,11,'role:delete,role:assignAction,role:add,role:assignResource,role:advanceQuery,role:refresh,role:modify'),(550,20,5,NULL),(551,20,20,'action:delete,action:add,action:assignResource,action:refresh,action:modify'),(552,20,8,'users:delete,users:add,users:query,users:modify'),(553,20,24,'flowtype:addFlow,flowtype:delete,flowtype:add,flowtype:modify'),(554,20,10,'group:detailGroupRole,group:groupAuthRole,group:delete,group:add,group:removeGroupRole,group:addUser,group:deleteGroupUser,group:detail,group:modify'),(555,20,21,'resource:delete,resource:add,resource:advanceQuery,resource:refresh,resource:modify,resource:addOperation');

/*Table structure for table `c_system` */

DROP TABLE IF EXISTS `c_system`;

CREATE TABLE `c_system` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `name` varchar(30) NOT NULL COMMENT '系统名称',
  `enname` varchar(30) DEFAULT NULL COMMENT '英文名称',
  `contextpath` varchar(50) NOT NULL COMMENT '上下文',
  `tableprefix` varchar(50) NOT NULL COMMENT '表名前缀',
  `logo` varchar(30) DEFAULT NULL COMMENT '系统标志',
  `icon` varchar(30) DEFAULT NULL COMMENT '系统图标',
  `version` varchar(10) DEFAULT NULL COMMENT '版本',
  `builddate` varchar(10) DEFAULT NULL COMMENT '构建日期',
  `status` varchar(10) NOT NULL COMMENT '状态',
  `orderid` int(10) unsigned DEFAULT NULL COMMENT '排序',
  `memo` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `c_system` */

insert  into `c_system`(`id`,`name`,`enname`,`contextpath`,`tableprefix`,`logo`,`icon`,`version`,`builddate`,`status`,`orderid`,`memo`) values (22,'测试系统','test','/test','_test','test','','v1.0','','status100',6,'测试信息');

/*Table structure for table `c_user` */

DROP TABLE IF EXISTS `c_user`;

CREATE TABLE `c_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户记录id',
  `logonid` varchar(30) NOT NULL COMMENT '用户登录名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `name` varchar(30) NOT NULL COMMENT '用户名称',
  `enname` varchar(30) DEFAULT NULL COMMENT '英文名称',
  `usertype` varchar(2) DEFAULT NULL COMMENT '用户类型，1表示系统内建记录，无法删除修改该记录',
  `position` varchar(30) DEFAULT NULL COMMENT '职位',
  `employeddate` varchar(10) DEFAULT NULL COMMENT '入职日期',
  `age` varchar(20) DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(10) DEFAULT NULL COMMENT '出生日期',
  `sex` char(10) DEFAULT NULL COMMENT '性别',
  `marriage` char(20) DEFAULT NULL COMMENT '婚姻状况',
  `education` varchar(20) DEFAULT NULL COMMENT '教育情况',
  `nativeplace` varchar(30) DEFAULT NULL COMMENT '籍贯',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `phone` varchar(30) DEFAULT NULL COMMENT '电话',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `registerdate` varchar(20) DEFAULT NULL COMMENT '注册时间',
  `lastlogondate` varchar(20) DEFAULT NULL COMMENT '上次登录时间',
  `lastlogonip` varchar(20) DEFAULT NULL COMMENT '上次登录IP',
  `lastlogoffdate` varchar(20) DEFAULT NULL COMMENT '上次退出时间',
  `status` varchar(20) NOT NULL COMMENT '状态，包括1启用，2隐藏，3冻结，4弃用',
  `orderid` varchar(10) DEFAULT NULL COMMENT '排序',
  `memo` varchar(50) DEFAULT NULL COMMENT '备注',
  `jobmember` varchar(100) DEFAULT NULL COMMENT '员工工号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_1_c_user` (`logonid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `c_user` */

insert  into `c_user`(`id`,`logonid`,`password`,`name`,`enname`,`usertype`,`position`,`employeddate`,`age`,`birthday`,`sex`,`marriage`,`education`,`nativeplace`,`address`,`phone`,`email`,`registerdate`,`lastlogondate`,`lastlogonip`,`lastlogoffdate`,`status`,`orderid`,`memo`,`jobmember`) values (2,'test','test','测试用户','test','1','工人','','23','','sex100','marriage100','education101','山东青岛','山东青岛','13436521458','test@163.com','','','','','status100','','2112',''),(4,'admin','admin','admin','admin','1','admin','','','','sex100','marriage100','education100','','','','','','','','','status100','','',NULL);

/*Table structure for table `c_usergroup` */

DROP TABLE IF EXISTS `c_usergroup`;

CREATE TABLE `c_usergroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录Id',
  `userid` int(10) unsigned NOT NULL COMMENT '用户id',
  `groupid` int(10) unsigned NOT NULL COMMENT '组id',
  PRIMARY KEY (`id`),
  KEY `FK_groupuser_group` (`groupid`),
  KEY `FK_groupuser_user` (`userid`),
  CONSTRAINT `FK_groupuser_group` FOREIGN KEY (`groupid`) REFERENCES `c_group` (`id`),
  CONSTRAINT `FK_groupuser_user` FOREIGN KEY (`userid`) REFERENCES `c_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

/*Data for the table `c_usergroup` */

insert  into `c_usergroup`(`id`,`userid`,`groupid`) values (47,2,48),(48,2,51),(49,4,51),(50,2,49);

/*Table structure for table `call_cust_info` */

DROP TABLE IF EXISTS `call_cust_info`;

CREATE TABLE `call_cust_info` (
  `CUST_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '农友ID，自增长',
  `CUST_SEX` varchar(30) DEFAULT NULL COMMENT '农友性别',
  `CUST_BIRTHDAY` varchar(20) DEFAULT NULL COMMENT '出生日期',
  `CUST_PROFESSION` varchar(20) DEFAULT NULL COMMENT '职业',
  `CUST_MEMBER` varchar(10) DEFAULT NULL COMMENT '是否会员',
  `CUST_QQ` varchar(15) DEFAULT NULL COMMENT 'QQ',
  `CUST_EMAIL` varchar(50) DEFAULT NULL COMMENT 'Email',
  `CUST_INTEGRAL` int(11) DEFAULT NULL COMMENT '积分',
  `CUST_IDNO` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `CUST_FARMERTYPE` varchar(400) DEFAULT NULL COMMENT '农友类型',
  `CUST_ADDRESSID` varchar(100) DEFAULT NULL COMMENT '地址ID',
  `CUST_FARMERNAME` varchar(15) DEFAULT NULL COMMENT '姓名',
  `CUST_FID` varchar(16) DEFAULT '' COMMENT '外部Id',
  `CUST_ADDRESSDETAIL` varchar(100) DEFAULT '' COMMENT '地址的详细信息',
  PRIMARY KEY (`CUST_ID`),
  KEY `FK_call_cust_info` (`CUST_ADDRESSID`),
  CONSTRAINT `FK_call_cust_info` FOREIGN KEY (`CUST_ADDRESSID`) REFERENCES `call_address` (`ADDRESS_ID`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

/*Data for the table `call_cust_info` */

insert  into `call_cust_info`(`CUST_ID`,`CUST_SEX`,`CUST_BIRTHDAY`,`CUST_PROFESSION`,`CUST_MEMBER`,`CUST_QQ`,`CUST_EMAIL`,`CUST_INTEGRAL`,`CUST_IDNO`,`CUST_FARMERTYPE`,`CUST_ADDRESSID`,`CUST_FARMERNAME`,`CUST_FID`,`CUST_ADDRESSDETAIL`) values (40,'sex100',NULL,'',NULL,'','',0,'','farmertype100',NULL,'牛先生',NULL,NULL),(41,'sex100',NULL,'',NULL,'','',0,'','farmertype109',NULL,'郝路野',NULL,NULL),(42,'sex100',NULL,'',NULL,'','',0,'','farmertype106',NULL,'太古',NULL,NULL),(44,'sex100',NULL,'',NULL,'357454755','sunchaotong18@163.com',0,'','farmertype100',NULL,'孙朝刚',NULL,''),(46,'sex100',NULL,'',NULL,'','',0,'','farmertype100',NULL,'孙朝',NULL,'');

/*Table structure for table `jbpm4_deployment` */

DROP TABLE IF EXISTS `jbpm4_deployment`;

CREATE TABLE `jbpm4_deployment` (
  `DBID_` bigint(20) NOT NULL,
  `NAME_` longtext,
  `TIMESTAMP_` bigint(20) DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbpm4_deployment` */

insert  into `jbpm4_deployment`(`DBID_`,`NAME_`,`TIMESTAMP_`,`STATE_`) values (1,NULL,0,'active');

/*Table structure for table `jbpm4_deployprop` */

DROP TABLE IF EXISTS `jbpm4_deployprop`;

CREATE TABLE `jbpm4_deployprop` (
  `DBID_` bigint(20) NOT NULL,
  `DEPLOYMENT_` bigint(20) DEFAULT NULL,
  `OBJNAME_` varchar(255) DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `STRINGVAL_` varchar(255) DEFAULT NULL,
  `LONGVAL_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_DEPLPROP_DEPL` (`DEPLOYMENT_`),
  KEY `FK_DEPLPROP_DEPL` (`DEPLOYMENT_`),
  CONSTRAINT `FK_DEPLPROP_DEPL` FOREIGN KEY (`DEPLOYMENT_`) REFERENCES `jbpm4_deployment` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbpm4_deployprop` */

insert  into `jbpm4_deployprop`(`DBID_`,`DEPLOYMENT_`,`OBJNAME_`,`KEY_`,`STRINGVAL_`,`LONGVAL_`) values (4,1,'测试流程','langid','jpdl-4.4',NULL),(5,1,'测试流程','pdid','测试流程-1',NULL),(6,1,'测试流程','pdkey','测试流程',NULL),(7,1,'测试流程','pdversion',NULL,1);

/*Table structure for table `jbpm4_execution` */

DROP TABLE IF EXISTS `jbpm4_execution`;

CREATE TABLE `jbpm4_execution` (
  `DBID_` bigint(20) NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `ACTIVITYNAME_` varchar(255) DEFAULT NULL,
  `PROCDEFID_` varchar(255) DEFAULT NULL,
  `HASVARS_` bit(1) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `ID_` varchar(255) DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `SUSPHISTSTATE_` varchar(255) DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `HISACTINST_` bigint(20) DEFAULT NULL,
  `PARENT_` bigint(20) DEFAULT NULL,
  `INSTANCE_` bigint(20) DEFAULT NULL,
  `SUPEREXEC_` bigint(20) DEFAULT NULL,
  `SUBPROCINST_` bigint(20) DEFAULT NULL,
  `PARENT_IDX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  UNIQUE KEY `ID_` (`ID_`),
  KEY `IDX_EXEC_SUBPI` (`SUBPROCINST_`),
  KEY `IDX_EXEC_PARENT` (`PARENT_`),
  KEY `IDX_EXEC_SUPEREXEC` (`SUPEREXEC_`),
  KEY `IDX_EXEC_INSTANCE` (`INSTANCE_`),
  KEY `FK_EXEC_SUBPI` (`SUBPROCINST_`),
  KEY `FK_EXEC_INSTANCE` (`INSTANCE_`),
  KEY `FK_EXEC_SUPEREXEC` (`SUPEREXEC_`),
  KEY `FK_EXEC_PARENT` (`PARENT_`),
  CONSTRAINT `FK_EXEC_INSTANCE` FOREIGN KEY (`INSTANCE_`) REFERENCES `jbpm4_execution` (`DBID_`),
  CONSTRAINT `FK_EXEC_PARENT` FOREIGN KEY (`PARENT_`) REFERENCES `jbpm4_execution` (`DBID_`),
  CONSTRAINT `FK_EXEC_SUBPI` FOREIGN KEY (`SUBPROCINST_`) REFERENCES `jbpm4_execution` (`DBID_`),
  CONSTRAINT `FK_EXEC_SUPEREXEC` FOREIGN KEY (`SUPEREXEC_`) REFERENCES `jbpm4_execution` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbpm4_execution` */

/*Table structure for table `jbpm4_hist_actinst` */

DROP TABLE IF EXISTS `jbpm4_hist_actinst`;

CREATE TABLE `jbpm4_hist_actinst` (
  `DBID_` bigint(20) NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `HPROCI_` bigint(20) DEFAULT NULL,
  `TYPE_` varchar(255) DEFAULT NULL,
  `EXECUTION_` varchar(255) DEFAULT NULL,
  `ACTIVITY_NAME_` varchar(255) DEFAULT NULL,
  `START_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TRANSITION_` varchar(255) DEFAULT NULL,
  `NEXTIDX_` int(11) DEFAULT NULL,
  `HTASK_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_HTI_HTASK` (`HTASK_`),
  KEY `IDX_HACTI_HPROCI` (`HPROCI_`),
  KEY `FK_HACTI_HPROCI` (`HPROCI_`),
  KEY `FK_HTI_HTASK` (`HTASK_`),
  CONSTRAINT `FK_HACTI_HPROCI` FOREIGN KEY (`HPROCI_`) REFERENCES `jbpm4_hist_procinst` (`DBID_`),
  CONSTRAINT `FK_HTI_HTASK` FOREIGN KEY (`HTASK_`) REFERENCES `jbpm4_hist_task` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbpm4_hist_actinst` */

/*Table structure for table `jbpm4_hist_detail` */

DROP TABLE IF EXISTS `jbpm4_hist_detail`;

CREATE TABLE `jbpm4_hist_detail` (
  `DBID_` bigint(20) NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `USERID_` varchar(255) DEFAULT NULL,
  `TIME_` datetime DEFAULT NULL,
  `HPROCI_` bigint(20) DEFAULT NULL,
  `HPROCIIDX_` int(11) DEFAULT NULL,
  `HACTI_` bigint(20) DEFAULT NULL,
  `HACTIIDX_` int(11) DEFAULT NULL,
  `HTASK_` bigint(20) DEFAULT NULL,
  `HTASKIDX_` int(11) DEFAULT NULL,
  `HVAR_` bigint(20) DEFAULT NULL,
  `HVARIDX_` int(11) DEFAULT NULL,
  `MESSAGE_` longtext,
  `OLD_STR_` varchar(255) DEFAULT NULL,
  `NEW_STR_` varchar(255) DEFAULT NULL,
  `OLD_INT_` int(11) DEFAULT NULL,
  `NEW_INT_` int(11) DEFAULT NULL,
  `OLD_TIME_` datetime DEFAULT NULL,
  `NEW_TIME_` datetime DEFAULT NULL,
  `PARENT_` bigint(20) DEFAULT NULL,
  `PARENT_IDX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_HDET_HVAR` (`HVAR_`),
  KEY `IDX_HDET_HACTI` (`HACTI_`),
  KEY `IDX_HDET_HTASK` (`HTASK_`),
  KEY `IDX_HDET_HPROCI` (`HPROCI_`),
  KEY `FK_HDETAIL_HVAR` (`HVAR_`),
  KEY `FK_HDETAIL_HPROCI` (`HPROCI_`),
  KEY `FK_HDETAIL_HTASK` (`HTASK_`),
  KEY `FK_HDETAIL_HACTI` (`HACTI_`),
  CONSTRAINT `FK_HDETAIL_HACTI` FOREIGN KEY (`HACTI_`) REFERENCES `jbpm4_hist_actinst` (`DBID_`),
  CONSTRAINT `FK_HDETAIL_HPROCI` FOREIGN KEY (`HPROCI_`) REFERENCES `jbpm4_hist_procinst` (`DBID_`),
  CONSTRAINT `FK_HDETAIL_HTASK` FOREIGN KEY (`HTASK_`) REFERENCES `jbpm4_hist_task` (`DBID_`),
  CONSTRAINT `FK_HDETAIL_HVAR` FOREIGN KEY (`HVAR_`) REFERENCES `jbpm4_hist_var` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbpm4_hist_detail` */

/*Table structure for table `jbpm4_hist_procinst` */

DROP TABLE IF EXISTS `jbpm4_hist_procinst`;

CREATE TABLE `jbpm4_hist_procinst` (
  `DBID_` bigint(20) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `ID_` varchar(255) DEFAULT NULL,
  `PROCDEFID_` varchar(255) DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `START_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `ENDACTIVITY_` varchar(255) DEFAULT NULL,
  `NEXTIDX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbpm4_hist_procinst` */

/*Table structure for table `jbpm4_hist_task` */

DROP TABLE IF EXISTS `jbpm4_hist_task`;

CREATE TABLE `jbpm4_hist_task` (
  `DBID_` bigint(20) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `EXECUTION_` varchar(255) DEFAULT NULL,
  `OUTCOME_` varchar(255) DEFAULT NULL,
  `ASSIGNEE_` varchar(255) DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `CREATE_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `NEXTIDX_` int(11) DEFAULT NULL,
  `SUPERTASK_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_HSUPERT_SUB` (`SUPERTASK_`),
  KEY `FK_HSUPERT_SUB` (`SUPERTASK_`),
  CONSTRAINT `FK_HSUPERT_SUB` FOREIGN KEY (`SUPERTASK_`) REFERENCES `jbpm4_hist_task` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbpm4_hist_task` */

/*Table structure for table `jbpm4_hist_var` */

DROP TABLE IF EXISTS `jbpm4_hist_var`;

CREATE TABLE `jbpm4_hist_var` (
  `DBID_` bigint(20) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `PROCINSTID_` varchar(255) DEFAULT NULL,
  `EXECUTIONID_` varchar(255) DEFAULT NULL,
  `VARNAME_` varchar(255) DEFAULT NULL,
  `VALUE_` varchar(255) DEFAULT NULL,
  `HPROCI_` bigint(20) DEFAULT NULL,
  `HTASK_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_HVAR_HTASK` (`HTASK_`),
  KEY `IDX_HVAR_HPROCI` (`HPROCI_`),
  KEY `FK_HVAR_HPROCI` (`HPROCI_`),
  KEY `FK_HVAR_HTASK` (`HTASK_`),
  CONSTRAINT `FK_HVAR_HPROCI` FOREIGN KEY (`HPROCI_`) REFERENCES `jbpm4_hist_procinst` (`DBID_`),
  CONSTRAINT `FK_HVAR_HTASK` FOREIGN KEY (`HTASK_`) REFERENCES `jbpm4_hist_task` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbpm4_hist_var` */

/*Table structure for table `jbpm4_id_group` */

DROP TABLE IF EXISTS `jbpm4_id_group`;

CREATE TABLE `jbpm4_id_group` (
  `DBID_` bigint(20) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `ID_` varchar(255) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `TYPE_` varchar(255) DEFAULT NULL,
  `PARENT_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_GROUP_PARENT` (`PARENT_`),
  KEY `FK_GROUP_PARENT` (`PARENT_`),
  CONSTRAINT `FK_GROUP_PARENT` FOREIGN KEY (`PARENT_`) REFERENCES `jbpm4_id_group` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbpm4_id_group` */

/*Table structure for table `jbpm4_id_membership` */

DROP TABLE IF EXISTS `jbpm4_id_membership`;

CREATE TABLE `jbpm4_id_membership` (
  `DBID_` bigint(20) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `USER_` bigint(20) DEFAULT NULL,
  `GROUP_` bigint(20) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_MEM_GROUP` (`GROUP_`),
  KEY `IDX_MEM_USER` (`USER_`),
  KEY `FK_MEM_GROUP` (`GROUP_`),
  KEY `FK_MEM_USER` (`USER_`),
  CONSTRAINT `FK_MEM_GROUP` FOREIGN KEY (`GROUP_`) REFERENCES `jbpm4_id_group` (`DBID_`),
  CONSTRAINT `FK_MEM_USER` FOREIGN KEY (`USER_`) REFERENCES `jbpm4_id_user` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbpm4_id_membership` */

/*Table structure for table `jbpm4_id_user` */

DROP TABLE IF EXISTS `jbpm4_id_user`;

CREATE TABLE `jbpm4_id_user` (
  `DBID_` bigint(20) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `ID_` varchar(255) DEFAULT NULL,
  `PASSWORD_` varchar(255) DEFAULT NULL,
  `GIVENNAME_` varchar(255) DEFAULT NULL,
  `FAMILYNAME_` varchar(255) DEFAULT NULL,
  `BUSINESSEMAIL_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbpm4_id_user` */

/*Table structure for table `jbpm4_job` */

DROP TABLE IF EXISTS `jbpm4_job`;

CREATE TABLE `jbpm4_job` (
  `DBID_` bigint(20) NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `DUEDATE_` datetime DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `ISEXCLUSIVE_` bit(1) DEFAULT NULL,
  `LOCKOWNER_` varchar(255) DEFAULT NULL,
  `LOCKEXPTIME_` datetime DEFAULT NULL,
  `EXCEPTION_` longtext,
  `RETRIES_` int(11) DEFAULT NULL,
  `PROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  `EXECUTION_` bigint(20) DEFAULT NULL,
  `CFG_` bigint(20) DEFAULT NULL,
  `SIGNAL_` varchar(255) DEFAULT NULL,
  `EVENT_` varchar(255) DEFAULT NULL,
  `REPEAT_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_JOBRETRIES` (`RETRIES_`),
  KEY `IDX_JOBDUEDATE` (`DUEDATE_`),
  KEY `IDX_JOBLOCKEXP` (`LOCKEXPTIME_`),
  KEY `IDX_JOB_CFG` (`CFG_`),
  KEY `IDX_JOB_EXE` (`EXECUTION_`),
  KEY `IDX_JOB_PRINST` (`PROCESSINSTANCE_`),
  KEY `FK_JOB_CFG` (`CFG_`),
  CONSTRAINT `FK_JOB_CFG` FOREIGN KEY (`CFG_`) REFERENCES `jbpm4_lob` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbpm4_job` */

/*Table structure for table `jbpm4_lob` */

DROP TABLE IF EXISTS `jbpm4_lob`;

CREATE TABLE `jbpm4_lob` (
  `DBID_` bigint(20) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `BLOB_VALUE_` longblob,
  `DEPLOYMENT_` bigint(20) DEFAULT NULL,
  `NAME_` longtext,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_LOB_DEPLOYMENT` (`DEPLOYMENT_`),
  KEY `FK_LOB_DEPLOYMENT` (`DEPLOYMENT_`),
  CONSTRAINT `FK_LOB_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_`) REFERENCES `jbpm4_deployment` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbpm4_lob` */

insert  into `jbpm4_lob`(`DBID_`,`DBVERSION_`,`BLOB_VALUE_`,`DEPLOYMENT_`,`NAME_`) values (2,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<process name=\"测试流程\" version=\"1\" xmlns=\"http://jbpm.org/4.4/jpdl\">\n  <description>测试流程</description>\n  <start name=\"startNode1\" g=\"74,25,44,55\">\n    <description>开始</description>\n    <transition g=\"0,0\" name=\"连线\" to=\"userTask1\"/>\n  </start>\n  <end name=\"endNode1\" g=\"418,90,44,55\">\n    <description>结束</description>\n  </end>\n  <task candidate-users=\"admin\" name=\"userTask1\" g=\"244,111,44,55\">\n    <description>人工</description>\n    <transition g=\"0,0\" name=\"连线\" to=\"endNode1\"/>\n  </task>\n</process>',1,'测试流程.jpdl.xml'),(3,0,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0@\0\0\0\0\0���\0\0.�IDATx��wt�י��n�Yk��3�dͽ3w�ssg�Lbr�\'N���&��anq#�n��*T�Ի�*�4�\nD7U�(6�؎k���gor���\"T��Z�2}��y�>����o{-Y�D3f̠(��(�\Ze������>���@���?�!�ϸD�~�#��Dh`��~~�C�\r?����~���?���� ����G��\0���~�#�C�x��?��!@�\0~����G \Z~~���DÏ�~��A�h`���~�#\r??��~�C�h`����~��D�~~��� \Z~�#��� ����G�?���������\0\Z~���� B�~�#���@�~����@�?����� ����G��\0���~��� \Z~~���4Hs�ܹ>��/j����J		�JIIW||����U[S�3g�����w�s\0\0��?�!@*@���:u�6m�ԢEo��W&��g^�3��k�&��_֓O�F��xJ���IM~m�����t	\"����G��%@g�\\Y�9Z�p��Ι�իWk��mjn>���2���+!!A�II��ؤ��Ty��֯F��ر�97�V[[D�?��� @�[�>�\r\"m-Y����\"U[[�]�\ZUPX���-\\��^������O�3Ͼ���`���h��\Z��8[��-�ɓ\' ?��~�C��\055�SLL��/_ak�ڵ��К�0�\n�V���琦hmܰ��Ͽ�Y��u�T3D�?��~���C�)++G���={��Y��*�!D��R��_�ʪ\Z�7���#o�ag����e�p|��ю�\'$ي����i3�3o��?�\0��~��48���S�����_���}�12�VfV�rr�T]S����z��]�qC�޼�+W������v^\'N����e�v�}�*((Rxx��N�����:{�,�\0\0��~�C�V�ZΜѡC�#�\0���S�e:ᐣ+W���wo�C~>��]��+@�Rt��E���e]z�m�(�Q��]�ǰ�)-�5s�l��nF�\0�\0?��~�\01\0��~�C��U��O�VS�~͛���:5���^\'N�ҍ��ڵ�jk;�K�޶�S��D�����)OU��u��U�ͧu�9Mvٞ�۴ϖ9��={���E�i�_;vb\0 �����\0\r�\0�v���o����l%%%۵@\'\\��f����J�o��	����Ѣ��J�+z6�Y������Bj3�s�q�ֶ6[�c�9{N������WAA1�\0@�?��\Z :s���̟?���V;�c�����)��[��{=��gZ]�Z�+Ts�F��\n�_��^S��?w�����Ym�yLS��Z�r�\"#���҂\01\0��~�C��_�Ο��#G�($$D���>��c}��\'��a�m�\0��\'艕O�g��SF����&@�I~I��\Z\Zn������?\\��e��Z�QB�\0��?�!@�+@�[Z�M��JNN�g�}f�O�ܮ�1�cG���*�O+T��h;�u8K˫��!?�~�3�c�v��,|6e��<�\'�*,,��jk� \0?��~P�\nЉ�\'�	�����������G}�3�Zm�;C�H~]O�>�\r�6�q�˽z@_Z�]�+\\���[g�q�Ծ��JNJQyy%�\0@�?���_:~�v�iRAA���S�^չ�6[f��ѿ������.�wv����ǌ�x-�����&�,Rss�-�e�κx�]t]V�\01\0��~�C��[������)))ц\r�e�\\�3�_K�l�Ƶ�n��Y�1e��|��M)����Eٹb�ĩSVz�ǿ����\"U��\"@\0~����� sY{vN�6oެU�V�CT�ոg�������7���%�L}^�J�TU]m����j9s���MMMڱc��\\b\0 �����\0��\0=zL)�����l��:�g��SW\Z�-��k߿��C��6lSLL���]�ۏk�\n��ؤ�{�t��A���~��Կd*6>Q		�\Z;v�mw��VZf+!1I�Y����ե\0})�Kz)�e�.��64�UY]�~ܚ�:�	\n�ٳ�t��a���~����������\Z3f��9a�CVL�WT�**٪���J����������?��E����Be��*-��UQY�~\\sO���P��ƾ� \0?��~P�Pî]�=w����j���ڶ}�m��9_�K��f�+�����鯖}]���>+=��Ϳ�?]�d<��9��]���ǎ�Y���[�c9~��8q\\g�&��	���~��4t�t��X\Z�����:u��cb��_x[��g8D(�޼ps^��������O�!��K�S��4���)��\\��g�q�5�!����W������\0@�?��\Z2U�u��?�;���iٲJMۤM��U\\b��R�t���N���g͑���I��h���.���1�u�����n���,�67aD�\0��?�!@&@fG��K�j⤩jh�S|B������x������E��k��5��b��c�k��	w|ߊ���e��uuڹk�j�:��0\00\0��~�C� \0\0?��~P_�)sO�1c\'h��B���*#3�Vt�Cn6F�Qk#6�V�����ĉ�TQQ�-[��d�v+\\��\rfW��\\�ƍ����\0\0��?�!@�V�L�+�~1�)͚3OE����+�����а��%o��g��-[J�\r�bj��XG??$$D^^^���o�V\0\0~����{+@��+��o?��F?�[1�1Y�Ȩh�X�Z��WvX���hcd���_�e˖)\'7�Vhx��St�ȑN�������%�ԣ�>:(g�\0�?��� @�H�L�jܭ_�d�[���7|���L�>]?��O�����OxN�f�ժ�AI�S\\|�|}}�p����j��5Z���Vr�&�+|w~vCC��W	\Z��A\0����G�a&@����JLN��_����^�8YK��5w���/�%D>��)$$T�k�j���zm�L��x^��U�w���61�c��U��ڠ����~��� ro�MS�Sfv�f����mg���7���r��{���~lP�2i��#6�����~�3�ԗ�٠��b\0P���\"�V�\\�Ts�v�ݫ���*1Wu9�����C}�3�cf�\\%h0�1\0�~��A�F�\0�Gy�Y =jԨ;f����\0@�G�?�Or&00��� oo�~�\rb\0���?�\0!@�&@&�f���կ��l\0��?��W213>f�g�f�\0�?��� @P��3f�����J��2�D\0��#���\0\rK2�h6Ȭb\0`\0��� ���)�}�^�3f6����j6�\0~���4��]j:���������\r2��׳A\0����G�a$@���Qyzn_���\n�3�n��A}��*\0��?�h	PG�8]��t����P_��lP_m��\0\0?��~B�:���uRSS�|6��~��A���\0��X_����d���2\00��~�#�0���\0y�zG�4��9��>ԛ�U\0@�?�h��S`w{5ؽ��\r�jOf�\0@�?�h\nPOD�3Q\Z�䌧�U�;�\0�\0\n?��� @#X��Z=�Ȥ��2\00��~�#�0����ܛ��\09�i6���U\0@�?�h	�P���bf��7V�h6��~��A��a!@&m�jc\0`\0��� hX\n�3f��}6�ucU\0P��~B���\0�t4d�1\00��~�#&@� T�5�h��[�l����$�k_��bcc�/��(�ߊ ~@f���ƪ������\0\Z��c�����~��� \Zx���=��������D�<~�6V5�A=�X��#�����\0��C��9�e��n6V����?�!@4���i6����~��DY~�6Ve6�����G \ZxD���ĉ�\r���?����<�u��*���?�!@4���i6�l�1�g��?��~�C�h�a���ƪ��΍U�G�7t����?����t�m55�Scc���+TPP��������;�/���m��H�!@\0��v:�X~~#S��m4�/H��Gj��z�w�h�o�ո����1��_?��F�~J���I͝���B�:Ռ\0!@\r<��y�\r2k�F�l���*@f���q����+63g�Rdd��m۪��k_�^��ש��T��QJKK��@�j��u�QTT�C�.�B� B~�6Vi�A��F�\0������X+W�\nTA~�>���\Z����U����\\o��T3_���^��/&hŊUJII����ƌ�iSg�2\"�\0!@�R�<m�jf�F�ƪ��F�\0�ټ9_AA�\n\r\r��n]���j��P�X���Z�p�BBÔ���I�&�z����g�\"4����>�x�b�\0�+W���O?����?��d�gǎ2��W@@��}�[k#6jcT����4���F��\r����e۔���<SQѱ��O��`�M|�556�F� B=~��A7o޼�:z���;s�\Z�G�����g�j��J�OԢE�5��G�2�۫��D{�6����^�e~��pᢎ�u��ڷ��v���_��|[qqq�3{�=v��I\"4���gN}u%3� �?���_:v����U�7�P��\rںm�Sf�k���{����o����_�~ݭnغ��;�p�jk�m����������еV� ���C����tV]ɑ����A��?��j���\'�$I���H���{ߞ��pEEE�a�.�ܵ۞�2��7oɏ[�x�]�����C�:b�ψЂ�5o����!@����\0u5�ә� @�Xj9s���9 �_�mmv6���l��xO6�?�*��x��۪��A+?��\\Qs�i[�xf6)88D+W����H�9sB�\r<��y:���������?ҿdf�)���t%\'�ح.L]�|Ş�2u��Ue�\r׆o�����M�<��-����ǜ�)+מ3��.^�d�y���6���ѪUk��!JDh�!7��+����G^��O����^�~��I}��G�>��S��?oˈLΚՊ��K�_�kUϜ���:��PM��m=�3�uS�y��?���i2S��ǳ23�:�m�w @����\0u63�e��8:����:�����ӟ���?�\\_|�=5f�\\k��B�X��:�׺T_c�TVz�\0�J��g��_�ŊΙ���L��:k׮F���(/�B�\r<t��W�u�@��y��G�G�>���REDD�>�����?q�����*��?G�պ}�F��&?����+@%�K��k��{RW�\\��<�)s+���4���ɓ� ����w�3��>@�8�ٸ[[�nQBB��^���7nػ�92u��[*����o�r[��e���v�W���8t�����6e������l����@�jQ���?���\0�m,��󕚚޾s��v����ګ-\"��T�?~�\n�)33dk�[d�[YS�Sͧո��}��q/]����P��g?qB�\r<t�Q1S�]��r>ϵ�b�{��2�$�>����H�P�m��ʲ���jn���k�mU9�f{Ԇ��SUM{���ng�9����km����o���ѣھ}��!����Dh����}cUg�#�,@�󋔒���_��Ç��V��*lm+-SYLT��c@;A7�m��={UZ^igxL;v�����5*).ҁ�8�\0\Zx��s�X�Y�>��] 	?����ߑ#G�/�B��J�*2*V�f����+.�*t|�T~Q�*�c��r�~��T��9ĩ\\��:j����ׯ���F�<�C�\r<\"�y�\r2Rd�H���J�����7&N�����>���{��\\K�,���sU]S�^ٛ�mm��Uub|��OyE�\'��)�1ͽ�������Dh����q6���6��N���څ�;w�R���Ŝ�HIIWRR�bb�T_�`7�4��w��迡���t���_��=eܓ�GG�a.C_�\"H�k���~�¢bm�Qj+eS��GP������_��򻽎;�Y^Y��E*,.��<fdd���B����4Dh`�9bs#=�A�T�p #>{��Ubb���yz���k��꫿�k�&��\'i�ӿ��\'���|R�_����B�Q%42߿��;�������d*.!Y���ײe�\n\\�|����ML�U	I�p�z������\"�����۫�X�ٛ����e���2�KMK�3MǏ��d��@� B���1���g�� �k R�N�:e+..A����s�9��ښ\Z;vTMMM���v�N������R�v�s���_�Ѹ�㕛�o���\r\Za�_oo�.��4��<�^��t��a�2q��C´|�\n�\'$*#3K�blEDF;��\r����k��(%���2����SII�Μ9k�?�n�����a6hԨQ>����7l���h�%%%���^�U�����AZ�di{��_����������������h�S�l����=������t*��2�3+��KCW}����q�s�Ǌ���I�I�����ˊW\\B���S����V��*�>}\ZB�\r��b�9x���٠����Z���k��U�֮]+��e�ߴõzMh��wi�bb�YoXo��_ҬY�vF	\Z9�_������[ՙ9N#@�~C,fJ�}�7�@{{5L	PӾ�v�sXh�&Lx��R�@E;��TbR�����a�.>�<�}���!M�w�)gs~�s�b┘�lk�ƍ�>}�||����z���Q����%/��R�{^zu��x�cz衇�{��>1B2w�B=��*//u�n���bmm���u�v�3�rr��cG�J�n�ަ}�ҷ��8��E<��5�r6��dn�c{�B����y��� 0��\"#6�\r�t��9]�|EW�^�e:=zLm��<�>[�%s�u��}�2W�;�;u��ث�����5�����h�n�\"3+d����b���Y���Izz�����VFV�B��{T��L�N��|Me��*%-Cu�\r�6sI�!@|��o���f���f�z#@��3�cn���篂�b�(-�UV^iE�ڵ�~�n���{\'�u㲹B�M--g�Q����1^�u�4H;w5��Tq�-\\�@3g�Vqq	4�߿F�M����+%�/x&�/�,O��\Z\Z��s��	Ͼ����ъ�������E��V����*44\\s��UJJ��Rl���hO}���5��~�*���U1�1\Z�1���蘙N���w�}�Z����3����B̈Lw����Ú�=_����ؚ4y���V����O�WO>��<=N�g�.?sZ7N9���n]�|||�x,VK��S�C�L�����Ջ��8��ė��l�Y+��e��%@ͧO;�m���`ϟ�Dr�9���{����zZ���G����v���I�o�jo/{�D��Ȕ9�9nTT���_����:}�\ZB��N�1���}՛����_攘��DO�^lnnVvn����N���^x�U���w��O�~[�X�\\��!\nX�B��~�f��VBR����@ܿ��C��\0�߰MG�Aw����鴞\n���y��e��D�����8���?Ї~��/�MrL�,�k׮��#i�=����������f�y�s�Z5e�-]\Z��۶#@�Pt�mL/�+�������c�c�c���Y�cf}����1r�\\#w77�42�_X�צ���=6Z�����S���(}k������X?���5n��6s�S�t�ر��9�����jof�������F�̝��,�ϼy:��]�l��wo�2���G볶�;�7�����G[{s��`���\'x�+��~;3t��\r[�c�*,,Қ�5v��3g���4��1rb��}V�\'e���\n9Eǜ��W�2k}�\Z��N	��.��B�����j.s����D����\Z8x��~��\0������l��n����惭�dfv64h��u��P�|�>��n�/���珮�?��o���oz�?���c�W�߿(zDg�}Ş����-��OO�غu�[u��u�\\�R��G�+��{�[��{+:�\']E���=�<�3�u=����������+1鯢� ^\0\Z~}0ԝ�U�?X���D��i���������l}��g�̦�Nr��������W�ӯ{�G���<X��;f��%)�~[�~-�c�����ɶ[l�����Ź��+�z*:�8�x�=�e�\'~�m�a~fo��@��8���l���U;�\r2P�(aaa�� 9v���Y{Ӧt{e�{����>�H_T�h�eۛ���ou(97⾢뙏x���\r2�u���c߼yS;w6(=-��u\Z����Bd3d���̼��-<��H��i��\"��A񴱪��Ю������P�\\�UUU�� Lӕ+Wl}�Z�.1~���P~�z�S��\r��6u��qeff���r˽\\�<w\"7���v]\"��a1��{�\rr�X���Ӈ��]G���=zv�n��Ȩ���LI�w[w#@fQ���-[t����c2W�5v���H�?���w#:��]E�/o�p��<�Tuw�D >���l�ǍU]��p���yEXW$�\n���*,(�����a�~�}��?{%@�qS��5��?�c6�ש��ZM��\rkr]�ܛ+���B����ξ�|��k���]�{2�\0�p���x�X�9�*@��{��~�tvy��Q;!!A>���C냌�ۡ��S\\	��?�UFz��ڷ�6mJ�������\0ug뇞.D�Jfz#@��� ��]-�[2?�;�u�{ ����񴱪뇬����U\\�Xt4`����y��D=��8�j����{�S2��<}m��߰��[GۏUSS���`�a��=Xk���Ȯ���;3E��\Z�?(��\0��uB� B�o���n-`�����7���ĤT����oƌQFF���k�_�T�Ly��O~�[����PZZ�._�baFr_�|7���\'W\\����\'��t�p WY��0��D�o��>���w���l�.-������뫙3g�-*�k_��Nh��/��9��|����㘦��ٜ�o�3w�nn���\\\"��Ww��;���,Ow�i8	���tGl�z�B�\r�{3��I~�ڟȶ[d��>�٠}��I-\\�а��6m�����_p[Ud�u*@3f���&h���\n03�w���+�������E���s������n���VwJw%G��Xg�ҙ\0���Dh`�\r\"�q��g��u5p�l��/N�7D\\�r��7e�Q��_�3;f�S�i/S���o�z��Z�|�bbbt��!�i�g�ݗ$�b!�����t6��+��I���s\Z���~�T|��>������md��g��L{]{��VdT���<�R?{��SO��5�g;|��V�\\���L�����/v����O�{+:�����~���JO������������)0>? >��7H��tM}�/}�_��2e�\09���,���㇜\0�.D��+�����n�0X�����ݽ_�\'9\Z�k��ť��{+=Dh`��q�w����j�ܓg��	�3�G����ʱ�~cd�kɛ����_���Fmٺ][�����`����ЅȃQ�zz5XG3@q�����\ZW�q��݈��@ïb>��f�ýBBB��+�k�\'�Ҍ��UP�o���R��)Z��\n\nբEK�p�B[eeeJNM�k��;Y�c���Y�ܗ[?U�jQ����\0y���u%L�\"40���|�Z#\0�2R`�l��~����߯m۶uk/��ҿ��1����l��D+<<\\6F�SY��WvX��኉��W����)}S����0%�m�T~�3@?�я�X�|���\Z�����_]����ǆ�\0u$4=Y��}���@�h`�\rC~=���_|e����M��맥K�jʔ)��w�Q�������9�Z��0� m���E��H##���o��*(*Vsss�~��C�߽>�^`��\0\n?�2�b*-#SO�z�x�_����\n\\�\\K�x�!D~JKMUTT�,\\���5Z��צ��ˎ�El��ަ}�⃄���f���\0\n?����~��1�l�&������O�Ǐ<fg����Q�ׇ��G~�K��z�,o%$�v��)���� ^\0�!#@�{��;��,?�>H�?�� P�!@#�C� �b\0��\0���� \Z~D��~�C�h`�!@�?�!@\r?\"��Dh`�!@�� B����x ޿~/\0�ߐ���Q��^U�_?���o�	P�� @�	� \Z~��x� @40�D����A�h`��~ ���Dj ���� �C� ޿~/\0��P w��� @���@�7�����?�!%@� E\r�꫅Ϟ䦻Փ��kFQT3@<�F�Pwd��77d��/�ߐ�\"40�F�\0��?�!@���\0��\"40� ��~���\0!@~�C�\r?��� ^\0?��~~/\0���??���~���D��~��A�h`���~�#\r??��~���G�?��� @40��G�?�����??��~\r?���~�C�h`����~�C� \Z~���� B�~�#��Dh`��~~�C�\r?��~���@�?����� ����G��\0���~�#�C�x��?��� @40���?������?�\0���#����G \Z~���?�!@40��G�?�����??��~\r?���~D�~�#��Dh`��~~�C�\r?����~���?���� ����G��\0���~�#�C�x��?��!@�\0~����G \Z~~���DÏ�~��A�h`���~�#\r??��~�C�h`����~��D�~~��� \Z~�#��� ����G�?���������\0\Z~���� B�~�#���@�~����@�?����� ����G��\0���~��� \Z~~���DÏ�~��A�h`���~�#\r??��~�C�h`����~��D�~~��� \Z~�#�����\0������\0?�!@����G�?���������\0\Z~���� B�~����@�?����� ����G��\0���~�#�C�h`���~�#\r??��~���G�?��� @40���?�����??��~\r?���~�C�h`����~��D�~~��Dh`��~~�YdBQEQ5� ~����F����?���\"40��??�!@����G�?��������!@�\0~���� ^\0?��~~/\0���??�&����?�\0���#����G \Z~~���DÏ�~��A�h`����~��D�~~��� \Z~�#�����\0��������\0!@40��??�!@����G�?���������\0\Z~���� ^\0?��~~/\0���??���~����@�?��~���G�?��� @40���?������?�\0������?�����??��~\r?���~�C�h`����~�C��5g����(����P>>>���K���C�\0\0\0\0IEND�B`�',1,'测试流程.png');

/*Table structure for table `jbpm4_participation` */

DROP TABLE IF EXISTS `jbpm4_participation`;

CREATE TABLE `jbpm4_participation` (
  `DBID_` bigint(20) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `GROUPID_` varchar(255) DEFAULT NULL,
  `USERID_` varchar(255) DEFAULT NULL,
  `TYPE_` varchar(255) DEFAULT NULL,
  `TASK_` bigint(20) DEFAULT NULL,
  `SWIMLANE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_PART_TASK` (`TASK_`),
  KEY `FK_PART_SWIMLANE` (`SWIMLANE_`),
  KEY `FK_PART_TASK` (`TASK_`),
  CONSTRAINT `FK_PART_SWIMLANE` FOREIGN KEY (`SWIMLANE_`) REFERENCES `jbpm4_swimlane` (`DBID_`),
  CONSTRAINT `FK_PART_TASK` FOREIGN KEY (`TASK_`) REFERENCES `jbpm4_task` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbpm4_participation` */

/*Table structure for table `jbpm4_property` */

DROP TABLE IF EXISTS `jbpm4_property`;

CREATE TABLE `jbpm4_property` (
  `KEY_` varchar(255) NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `VALUE_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbpm4_property` */

insert  into `jbpm4_property`(`KEY_`,`VERSION_`,`VALUE_`) values ('next.dbid',1,'10001');

/*Table structure for table `jbpm4_swimlane` */

DROP TABLE IF EXISTS `jbpm4_swimlane`;

CREATE TABLE `jbpm4_swimlane` (
  `DBID_` bigint(20) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `ASSIGNEE_` varchar(255) DEFAULT NULL,
  `EXECUTION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_SWIMLANE_EXEC` (`EXECUTION_`),
  KEY `FK_SWIMLANE_EXEC` (`EXECUTION_`),
  CONSTRAINT `FK_SWIMLANE_EXEC` FOREIGN KEY (`EXECUTION_`) REFERENCES `jbpm4_execution` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbpm4_swimlane` */

/*Table structure for table `jbpm4_task` */

DROP TABLE IF EXISTS `jbpm4_task`;

CREATE TABLE `jbpm4_task` (
  `DBID_` bigint(20) NOT NULL,
  `CLASS_` char(1) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `DESCR_` longtext,
  `STATE_` varchar(255) DEFAULT NULL,
  `SUSPHISTSTATE_` varchar(255) DEFAULT NULL,
  `ASSIGNEE_` varchar(255) DEFAULT NULL,
  `FORM_` varchar(255) DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_` datetime DEFAULT NULL,
  `DUEDATE_` datetime DEFAULT NULL,
  `PROGRESS_` int(11) DEFAULT NULL,
  `SIGNALLING_` bit(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(255) DEFAULT NULL,
  `ACTIVITY_NAME_` varchar(255) DEFAULT NULL,
  `HASVARS_` bit(1) DEFAULT NULL,
  `SUPERTASK_` bigint(20) DEFAULT NULL,
  `EXECUTION_` bigint(20) DEFAULT NULL,
  `PROCINST_` bigint(20) DEFAULT NULL,
  `SWIMLANE_` bigint(20) DEFAULT NULL,
  `TASKDEFNAME_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_TASK_SUPERTASK` (`SUPERTASK_`),
  KEY `FK_TASK_SWIML` (`SWIMLANE_`),
  KEY `FK_TASK_SUPERTASK` (`SUPERTASK_`),
  CONSTRAINT `FK_TASK_SUPERTASK` FOREIGN KEY (`SUPERTASK_`) REFERENCES `jbpm4_task` (`DBID_`),
  CONSTRAINT `FK_TASK_SWIML` FOREIGN KEY (`SWIMLANE_`) REFERENCES `jbpm4_swimlane` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbpm4_task` */

/*Table structure for table `jbpm4_variable` */

DROP TABLE IF EXISTS `jbpm4_variable`;

CREATE TABLE `jbpm4_variable` (
  `DBID_` bigint(20) NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `CONVERTER_` varchar(255) DEFAULT NULL,
  `HIST_` bit(1) DEFAULT NULL,
  `EXECUTION_` bigint(20) DEFAULT NULL,
  `TASK_` bigint(20) DEFAULT NULL,
  `LOB_` bigint(20) DEFAULT NULL,
  `DATE_VALUE_` datetime DEFAULT NULL,
  `DOUBLE_VALUE_` double DEFAULT NULL,
  `CLASSNAME_` varchar(255) DEFAULT NULL,
  `LONG_VALUE_` bigint(20) DEFAULT NULL,
  `STRING_VALUE_` varchar(255) DEFAULT NULL,
  `TEXT_VALUE_` longtext,
  `EXESYS_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_VAR_EXESYS` (`EXESYS_`),
  KEY `IDX_VAR_TASK` (`TASK_`),
  KEY `IDX_VAR_EXECUTION` (`EXECUTION_`),
  KEY `IDX_VAR_LOB` (`LOB_`),
  KEY `FK_VAR_EXESYS` (`EXESYS_`),
  KEY `FK_VAR_LOB` (`LOB_`),
  KEY `FK_VAR_TASK` (`TASK_`),
  KEY `FK_VAR_EXECUTION` (`EXECUTION_`),
  CONSTRAINT `FK_VAR_EXECUTION` FOREIGN KEY (`EXECUTION_`) REFERENCES `jbpm4_execution` (`DBID_`),
  CONSTRAINT `FK_VAR_EXESYS` FOREIGN KEY (`EXESYS_`) REFERENCES `jbpm4_execution` (`DBID_`),
  CONSTRAINT `FK_VAR_LOB` FOREIGN KEY (`LOB_`) REFERENCES `jbpm4_lob` (`DBID_`),
  CONSTRAINT `FK_VAR_TASK` FOREIGN KEY (`TASK_`) REFERENCES `jbpm4_task` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbpm4_variable` */

/*Table structure for table `type_flow` */

DROP TABLE IF EXISTS `type_flow`;

CREATE TABLE `type_flow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) DEFAULT NULL,
  `flowid` int(11) DEFAULT NULL,
  `flowname` varchar(100) DEFAULT NULL,
  `flowdescribe` varchar(400) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `type_flow` */

insert  into `type_flow`(`id`,`typeid`,`flowid`,`flowname`,`flowdescribe`,`version`,`flag`) values (8,4,1,'测试流程','测试流程',1,'启用');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
