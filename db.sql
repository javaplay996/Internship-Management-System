/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shixisheng
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shixisheng` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shixisheng`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1的三大飒飒大高','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (17,'sex_types','性别',1,'男',NULL,NULL,'2023-04-18 10:14:06'),(18,'sex_types','性别',2,'女',NULL,NULL,'2023-04-18 10:14:06'),(19,'jianli_types','求职意向',1,'求职意向1',NULL,NULL,'2023-04-18 10:14:06'),(20,'jianli_types','求职意向',2,'求职意向2',NULL,NULL,'2023-04-18 10:14:06'),(21,'jianli_types','求职意向',3,'求职意向3',NULL,NULL,'2023-04-18 10:14:06'),(22,'zhaopin_toudi_yesno_types','审核状态',1,'待审核',NULL,NULL,'2023-04-18 10:14:06'),(23,'zhaopin_toudi_yesno_types','审核状态',2,'通过',NULL,NULL,'2023-04-18 10:14:06'),(24,'zhaopin_toudi_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2023-04-18 10:14:06'),(25,'qiye_types','企业类型',1,'企业类型1',NULL,NULL,'2023-04-18 10:14:06'),(26,'qiye_types','企业类型',2,'企业类型2',NULL,NULL,'2023-04-18 10:14:06'),(27,'qiye_types','企业类型',3,'企业类型3',NULL,NULL,'2023-04-18 10:14:06'),(28,'shangxia_types','是否上架',1,'上架',NULL,NULL,'2023-04-18 10:14:06'),(29,'shangxia_types','是否上架',2,'下架',NULL,NULL,'2023-04-18 10:14:06'),(30,'zhaopin_types','招聘岗位',1,'招聘岗位1',NULL,NULL,'2023-04-18 10:14:06'),(31,'zhaopin_types','招聘岗位',2,'招聘岗位2',NULL,NULL,'2023-04-18 10:14:06'),(32,'zhaopin_types','招聘岗位',3,'招聘岗位3',NULL,NULL,'2023-04-18 10:14:06'),(33,'zhaopin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-18 10:14:06'),(34,'zhaopin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-18 10:14:06'),(35,'zhaopin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-18 10:14:06'),(36,'gonggao_types','公告类型',1,'招聘情况',NULL,NULL,'2023-04-18 10:14:07'),(37,'gonggao_types','公告类型',2,'校友情况',NULL,NULL,'2023-04-18 10:14:07'),(38,'gonggao_types','公告类型',3,'实习单位推荐',NULL,NULL,'2023-04-18 10:14:07'),(39,'shixishengpeiyang_types','培养类型',1,'培养类型1',NULL,NULL,'2023-04-18 10:14:07'),(40,'shixishengpeiyang_types','培养类型',2,'培养类型2',NULL,NULL,'2023-04-18 10:14:07'),(41,'shixishengpeiyang_types','培养类型',3,'培养类型3',NULL,NULL,'2023-04-18 10:14:07'),(42,'shixishengpeiyang_types','培养类型',4,'培养类型4',NULL,NULL,'2023-04-18 10:14:07'),(43,'shixishengpeiyang_jieguo_types','培养结果',1,'优秀',NULL,NULL,'2023-04-18 10:14:07'),(44,'shixishengpeiyang_jieguo_types','培养结果',2,'一般',NULL,NULL,'2023-04-18 10:14:07'),(45,'shixishengpeiyang_jieguo_types','培养结果',3,'差劲',NULL,NULL,'2023-04-18 10:14:07'),(46,'zhaopin_types','招聘岗位',4,'招聘岗位4',NULL,'','2023-04-18 11:45:23');

/*Table structure for table `fudaoyuan` */

DROP TABLE IF EXISTS `fudaoyuan`;

CREATE TABLE `fudaoyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `fudaoyuan_name` varchar(200) DEFAULT NULL COMMENT '辅导员姓名 Search111 ',
  `fudaoyuan_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `fudaoyuan_phone` varchar(200) DEFAULT NULL COMMENT '辅导员手机号',
  `fudaoyuan_id_number` varchar(200) DEFAULT NULL COMMENT '辅导员身份证号 ',
  `fudaoyuan_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `fudaoyuan_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='辅导员';

/*Data for the table `fudaoyuan` */

insert  into `fudaoyuan`(`id`,`username`,`password`,`fudaoyuan_name`,`fudaoyuan_photo`,`fudaoyuan_phone`,`fudaoyuan_id_number`,`fudaoyuan_email`,`sex_types`,`fudaoyuan_delete`,`create_time`) values (1,'a1','123456','辅导员姓名1','upload/fudaoyuan1.jpg','17703786901','410224199010102001','1@qq.com',2,1,'2023-04-18 10:15:18'),(2,'a2','123456','辅导员姓名2','upload/fudaoyuan2.jpg','17703786902','410224199010102002','2@qq.com',1,1,'2023-04-18 10:15:18'),(3,'a3','123456','辅导员姓名3','upload/fudaoyuan3.jpg','17703786903','410224199010102003','3@qq.com',2,1,'2023-04-18 10:15:18');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-04-18 10:15:18','公告详情1','2023-04-18 10:15:18'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-04-18 10:15:18','公告详情2','2023-04-18 10:15:18'),(3,'公告名称3','upload/gonggao3.jpg',3,'2023-04-18 10:15:18','公告详情3','2023-04-18 10:15:18'),(4,'公告名称4','upload/gonggao4.jpg',3,'2023-04-18 10:15:18','公告详情4','2023-04-18 10:15:18'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-04-18 10:15:18','公告详情5','2023-04-18 10:15:18'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-04-18 10:15:18','公告详情6','2023-04-18 10:15:18'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-04-18 10:15:18','公告详情7','2023-04-18 10:15:18'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-04-18 10:15:18','公告详情8','2023-04-18 10:15:18'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-04-18 10:15:18','公告详情9','2023-04-18 10:15:18'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-04-18 10:15:18','公告详情10','2023-04-18 10:15:18'),(11,'公告名称11','upload/gonggao11.jpg',3,'2023-04-18 10:15:18','公告详情11','2023-04-18 10:15:18'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-04-18 10:15:18','公告详情12','2023-04-18 10:15:18'),(13,'公告名称13','upload/gonggao13.jpg',3,'2023-04-18 10:15:18','公告详情13','2023-04-18 10:15:18'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-04-18 10:15:18','<p>公告详情14和个大师傅大师傅合格</p>','2023-04-18 10:15:18');

/*Table structure for table `jianli` */

DROP TABLE IF EXISTS `jianli`;

CREATE TABLE `jianli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jianli_uuid_number` varchar(200) DEFAULT NULL COMMENT '简历唯一编号 ',
  `jianli_name` varchar(200) DEFAULT NULL COMMENT '简历标题',
  `jianli_xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianli_types` int(11) DEFAULT NULL COMMENT '求职意向 Search111',
  `jianli_xinzi` varchar(200) DEFAULT NULL COMMENT '期望工资 Search111',
  `jianli_xueli` varchar(200) DEFAULT NULL COMMENT '学历 Search111',
  `jianli_jingli` varchar(200) DEFAULT NULL COMMENT '工作经历 Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jianli_file` varchar(200) DEFAULT NULL COMMENT '简历文件',
  `jianli_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jianli_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jianli_address` varchar(200) DEFAULT NULL COMMENT '现在位置',
  `jiaoyu_text` text COMMENT '教育经历',
  `shixi_text` text COMMENT '实习或工作经历',
  `geren_text` text COMMENT '个人介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='简历';

/*Data for the table `jianli` */

insert  into `jianli`(`id`,`yonghu_id`,`jianli_uuid_number`,`jianli_name`,`jianli_xingming`,`jianli_types`,`jianli_xinzi`,`jianli_xueli`,`jianli_jingli`,`sex_types`,`jianli_file`,`jianli_phone`,`jianli_photo`,`jianli_address`,`jiaoyu_text`,`shixi_text`,`geren_text`,`create_time`) values (1,2,'1681784118119','简历标题1','姓名1',3,'期望工资1','学历1','工作经历1',1,'upload/file.rar','17703786901','upload/jianli1.jpg','现在位置1','教育经历1','实习或工作经历1','个人介绍1','2023-04-18 10:15:18'),(2,3,'1681784118104','简历标题2','姓名2',2,'期望工资2','学历2','工作经历2',2,'upload/file.rar','17703786902','upload/jianli2.jpg','现在位置2','教育经历2','实习或工作经历2','个人介绍2','2023-04-18 10:15:18'),(3,3,'1681784118163','简历标题3','姓名3',2,'期望工资3','学历3','工作经历3',1,'upload/file.rar','17703786903','upload/jianli3.jpg','现在位置3','教育经历3','实习或工作经历3','个人介绍3','2023-04-18 10:15:18'),(4,2,'1681784118094','简历标题4','姓名4',3,'期望工资4','学历4','工作经历4',1,'upload/file.rar','17703786904','upload/jianli4.jpg','现在位置4','教育经历4','实习或工作经历4','个人介绍4','2023-04-18 10:15:18'),(5,3,'1681784118128','简历标题5','姓名5',3,'期望工资5','学历5','工作经历5',1,'upload/file.rar','17703786905','upload/jianli5.jpg','现在位置5','教育经历5','实习或工作经历5','个人介绍5','2023-04-18 10:15:18'),(6,1,'1681784118153','简历标题6','姓名6',3,'期望工资6','学历6','工作经历6',2,'upload/file.rar','17703786906','upload/jianli6.jpg','现在位置6','教育经历6','实习或工作经历6','个人介绍6','2023-04-18 10:15:18'),(7,2,'1681784118128','简历标题7','姓名7',2,'期望工资7','学历7','工作经历7',2,'upload/file.rar','17703786907','upload/jianli7.jpg','现在位置7','教育经历7','实习或工作经历7','个人介绍7','2023-04-18 10:15:18'),(8,1,'1681784118150','简历标题8','姓名8',2,'期望工资8','学历8','工作经历8',2,'upload/file.rar','17703786908','upload/jianli8.jpg','现在位置8','教育经历8','实习或工作经历8','个人介绍8','2023-04-18 10:15:18'),(9,1,'1681784118131','简历标题9','姓名9',1,'期望工资9','学历9','工作经历9',2,'upload/file.rar','17703786909','upload/jianli9.jpg','现在位置9','教育经历9','实习或工作经历9','个人介绍9','2023-04-18 10:15:18'),(10,1,'1681784118103','简历标题10','姓名10',1,'期望工资10','学历10','工作经历10',2,'upload/file.rar','17703786910','upload/jianli10.jpg','现在位置10','教育经历10','实习或工作经历10','个人介绍10','2023-04-18 10:15:18'),(11,3,'1681784118125','简历标题11','姓名11',1,'期望工资11','学历11','工作经历11',2,'upload/file.rar','17703786911','upload/jianli11.jpg','现在位置11','教育经历11','实习或工作经历11','个人介绍11','2023-04-18 10:15:18'),(12,1,'1681784118101','简历标题12','姓名12',1,'期望工资12','学历12','工作经历12',2,'upload/file.rar','17703786912','upload/jianli12.jpg','现在位置12','教育经历12','实习或工作经历12','个人介绍12','2023-04-18 10:15:18'),(13,1,'1681784118144','简历标题13','姓名13',2,'期望工资13','学历13','工作经历13',1,'upload/file.rar','17703786913','upload/jianli13.jpg','现在位置13','教育经历13','实习或工作经历13','个人介绍13','2023-04-18 10:15:18'),(14,1,'1681784118182','简历标题14','姓名14',2,'期望工资14','学历14','工作经历14',1,'upload/file.rar','17703786914','upload/jianli14.jpg','现在位置14','教育经历14','实习或工作经历14','个人介绍14','2023-04-18 10:15:18'),(15,4,'1681789096967','简历1111','张三',1,'6000','本科','经历2222',1,'upload/1681789116029.doc','17788885555','upload/1681789123899.jpg','位子1111','郭德纲的三个是','好人法涣发大号','回复的和发的回访电话','2023-04-18 11:38:55');

/*Table structure for table `qiye` */

DROP TABLE IF EXISTS `qiye`;

CREATE TABLE `qiye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `qiye_name` varchar(200) DEFAULT NULL COMMENT '企业名称 Search111 ',
  `qiye_types` int(11) DEFAULT NULL COMMENT '企业类型',
  `qiye_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiye_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `qiye_photo` varchar(200) DEFAULT NULL COMMENT '企业logo',
  `qiye_chenglishijian_time` timestamp NULL DEFAULT NULL COMMENT '企业成立时间',
  `qiye_content` text COMMENT '企业介绍',
  `qiye_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='企业';

/*Data for the table `qiye` */

insert  into `qiye`(`id`,`username`,`password`,`qiye_name`,`qiye_types`,`qiye_phone`,`qiye_email`,`qiye_photo`,`qiye_chenglishijian_time`,`qiye_content`,`qiye_delete`,`create_time`) values (1,'a1','123456','企业名称1',3,'17703786901','1@qq.com','upload/qiye1.jpg','2023-04-18 10:15:18','<p>企业介绍1很多事会更好</p>',1,'2023-04-18 10:15:18'),(2,'a2','123456','企业名称2',3,'17703786902','2@qq.com','upload/qiye2.jpg','2023-04-18 10:15:18','企业介绍2',1,'2023-04-18 10:15:18'),(3,'a3','123456','企业名称3',2,'17703786903','3@qq.com','upload/qiye3.jpg','2023-04-18 10:15:18','企业介绍3',1,'2023-04-18 10:15:18');

/*Table structure for table `shixishengpeiyang` */

DROP TABLE IF EXISTS `shixishengpeiyang`;

CREATE TABLE `shixishengpeiyang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shixishengpeiyang_uuid_number` varchar(200) DEFAULT NULL COMMENT '实习生培养记录编号',
  `shixishengpeiyang_name` varchar(200) DEFAULT NULL COMMENT '实习生培养标题  Search111 ',
  `shixishengpeiyang_address` varchar(200) DEFAULT NULL COMMENT '培养地点',
  `shixishengpeiyang_types` int(11) DEFAULT NULL COMMENT '培养类型 Search111',
  `shixishengpeiyang_time` timestamp NULL DEFAULT NULL COMMENT '培养时间',
  `shixishengpeiyang_content` longtext COMMENT '培养内容',
  `shixishengpeiyang_dafen` decimal(10,2) DEFAULT NULL COMMENT '打分 ',
  `shixishengpeiyang_jieguo_types` int(11) DEFAULT NULL COMMENT '培养结果 Search111',
  `shixishengpeiyang_pingyu_content` longtext COMMENT '培养评语',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='实习生培养记录';

/*Data for the table `shixishengpeiyang` */

insert  into `shixishengpeiyang`(`id`,`yonghu_id`,`shixishengpeiyang_uuid_number`,`shixishengpeiyang_name`,`shixishengpeiyang_address`,`shixishengpeiyang_types`,`shixishengpeiyang_time`,`shixishengpeiyang_content`,`shixishengpeiyang_dafen`,`shixishengpeiyang_jieguo_types`,`shixishengpeiyang_pingyu_content`,`insert_time`,`create_time`) values (1,2,'1681784118185','实习生培养标题1','培养地点1',2,'2023-04-18 10:15:18','培养内容1','335.11',1,'培养评语1','2023-04-18 10:15:18','2023-04-18 10:15:18'),(2,2,'1681784118130','实习生培养标题2','培养地点2',4,'2023-04-18 10:15:18','培养内容2','684.23',2,'培养评语2','2023-04-18 10:15:18','2023-04-18 10:15:18'),(3,2,'1681784118095','实习生培养标题3','培养地点3',3,'2023-04-18 10:15:18','培养内容3','374.81',2,'培养评语3','2023-04-18 10:15:18','2023-04-18 10:15:18'),(4,1,'1681784118114','实习生培养标题4','培养地点4',3,'2023-04-18 10:15:18','培养内容4','101.07',3,'培养评语4','2023-04-18 10:15:18','2023-04-18 10:15:18'),(5,3,'1681784118190','实习生培养标题5','培养地点5',1,'2023-04-18 10:15:18','培养内容5','786.08',2,'培养评语5','2023-04-18 10:15:18','2023-04-18 10:15:18'),(6,2,'1681784118185','实习生培养标题6','培养地点6',1,'2023-04-18 10:15:18','培养内容6','136.52',3,'培养评语6','2023-04-18 10:15:18','2023-04-18 10:15:18'),(7,2,'1681784118166','实习生培养标题7','培养地点7',1,'2023-04-18 10:15:18','培养内容7','340.52',3,'培养评语7','2023-04-18 10:15:18','2023-04-18 10:15:18'),(8,2,'1681784118127','实习生培养标题8','培养地点8',2,'2023-04-18 10:15:18','培养内容8','432.15',2,'培养评语8','2023-04-18 10:15:18','2023-04-18 10:15:18'),(9,3,'1681784118149','实习生培养标题9','培养地点9',2,'2023-04-18 10:15:18','培养内容9','376.54',3,'培养评语9','2023-04-18 10:15:18','2023-04-18 10:15:18'),(10,1,'1681784118126','实习生培养标题10','培养地点10',4,'2023-04-18 10:15:18','培养内容10','250.93',3,'培养评语10','2023-04-18 10:15:18','2023-04-18 10:15:18'),(11,2,'1681784118125','实习生培养标题11','培养地点11',1,'2023-04-18 10:15:18','培养内容11','345.47',1,'培养评语11','2023-04-18 10:15:18','2023-04-18 10:15:18'),(12,2,'1681784118154','实习生培养标题12','培养地点12',2,'2023-04-18 10:15:18','培养内容12','135.22',1,'培养评语12','2023-04-18 10:15:18','2023-04-18 10:15:18'),(13,3,'1681784118144','实习生培养标题13','培养地点13',3,'2023-04-18 10:15:18','<p>培养内容13</p>','23.82',3,'<p>培养评语13</p>','2023-04-18 10:15:18','2023-04-18 10:15:18'),(14,2,'1681784118097','实习生培养标题14','培养地点14',1,'2023-04-18 10:15:18','<p>培养内容14</p>','99.26',1,'<p>固定死培养评语14</p>','2023-04-18 10:15:18','2023-04-18 10:15:18'),(15,4,'1681789273560','标题1111','地点111',2,'2023-04-18 11:41:23','<p>第三个第三个富商大贾</p>','333.00',1,'<p>哼哼唧唧军军军</p>','2023-04-18 11:41:30','2023-04-18 11:41:30');

/*Table structure for table `shixizuoye` */

DROP TABLE IF EXISTS `shixizuoye`;

CREATE TABLE `shixizuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shixizuoye_uuid_number` varchar(200) DEFAULT NULL COMMENT '实习作业编号',
  `shixizuoye_name` varchar(200) DEFAULT NULL COMMENT '实习作业标题  Search111 ',
  `shixizuoye_content` longtext COMMENT '作业描述',
  `shixizuoye_file` varchar(200) DEFAULT NULL COMMENT '作业文件',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `shixizuoye_old_money` decimal(10,2) DEFAULT NULL COMMENT '作业打分 ',
  `shixizuoye_pingyu_content` longtext COMMENT '作业评语 ',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='实习作业';

/*Data for the table `shixizuoye` */

insert  into `shixizuoye`(`id`,`yonghu_id`,`shixizuoye_uuid_number`,`shixizuoye_name`,`shixizuoye_content`,`shixizuoye_file`,`insert_time`,`shixizuoye_old_money`,`shixizuoye_pingyu_content`,`update_time`,`create_time`) values (1,1,'1681784118095','实习作业标题1','作业描述1','upload/file.rar','2023-04-18 10:15:18','687.06','作业评语1','2023-04-18 10:15:18','2023-04-18 10:15:18'),(2,1,'1681784118127','实习作业标题2','作业描述2','upload/file.rar','2023-04-18 10:15:18','637.65','作业评语2','2023-04-18 10:15:18','2023-04-18 10:15:18'),(3,3,'1681784118136','实习作业标题3','作业描述3','upload/file.rar','2023-04-18 10:15:18','998.83','作业评语3','2023-04-18 10:15:18','2023-04-18 10:15:18'),(4,1,'1681784118155','实习作业标题4','作业描述4','upload/file.rar','2023-04-18 10:15:18','500.83','作业评语4','2023-04-18 10:15:18','2023-04-18 10:15:18'),(5,2,'1681784118114','实习作业标题5','作业描述5','upload/file.rar','2023-04-18 10:15:18','808.75','作业评语5','2023-04-18 10:15:18','2023-04-18 10:15:18'),(6,2,'1681784118147','实习作业标题6','作业描述6','upload/file.rar','2023-04-18 10:15:18','969.34','作业评语6','2023-04-18 10:15:18','2023-04-18 10:15:18'),(7,3,'1681784118177','实习作业标题7','作业描述7','upload/file.rar','2023-04-18 10:15:18','657.89','作业评语7','2023-04-18 10:15:18','2023-04-18 10:15:18'),(8,3,'1681784118150','实习作业标题8','作业描述8','upload/file.rar','2023-04-18 10:15:18','856.11','作业评语8','2023-04-18 10:15:18','2023-04-18 10:15:18'),(9,1,'1681784118153','实习作业标题9','作业描述9','upload/file.rar','2023-04-18 10:15:18','701.79','作业评语9','2023-04-18 10:15:18','2023-04-18 10:15:18'),(10,1,'1681784118127','实习作业标题10','作业描述10','upload/file.rar','2023-04-18 10:15:18','694.19','作业评语10','2023-04-18 10:15:18','2023-04-18 10:15:18'),(11,1,'1681784118149','实习作业标题11','作业描述11','upload/file.rar','2023-04-18 10:15:18','834.26','作业评语11','2023-04-18 10:15:18','2023-04-18 10:15:18'),(12,2,'1681784118181','实习作业标题12','作业描述12','upload/file.rar','2023-04-18 10:15:18','582.26','作业评语12','2023-04-18 10:15:18','2023-04-18 10:15:18'),(13,2,'1681784118129','实习作业标题13','作业描述13','upload/file.rar','2023-04-18 10:15:18','902.41','作业评语13','2023-04-18 10:15:18','2023-04-18 10:15:18'),(14,1,'1681784118160','实习作业标题14','作业描述14','upload/file.rar','2023-04-18 10:15:18','591.59','作业评语14','2023-04-18 10:15:18','2023-04-18 10:15:18'),(15,1,'1681786748918','标题1111','郭德纲的三个的是固定死噶十多个','upload/1681786891194.doc','2023-04-18 11:01:33',NULL,NULL,NULL,'2023-04-18 11:01:33'),(16,4,'1681789233083','作业标题111','过大第三个十多个','upload/1681789241356.doc','2023-04-18 11:40:42','80.00','<p>广东省第三个是</p>','2023-04-18 11:44:09','2023-04-18 11:40:42');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','6idjjt5zlbq7z8kh8hkr2vieswwaqc4h','2023-04-18 10:32:15','2023-04-18 12:44:30'),(2,1,'admin','users','管理员','0nolw1prerxgynk9yvdl66401ujuxnjw','2023-04-18 11:03:09','2023-04-18 12:45:10'),(3,1,'a1','qiye','企业','s8dfzhotkehs2l5il316mwpi3or5zygz','2023-04-18 11:26:43','2023-04-18 12:44:43'),(4,4,'a5','yonghu','用户','svkjp124iz2yjgxjvt8ohgg1d7axwexb','2023-04-18 11:36:31','2023-04-18 12:36:31'),(5,1,'a1','fudaoyuan','辅导员','urvfnue2a9u0relwq26h8pmsf31hv64w','2023-04-18 11:41:06','2023-04-18 12:41:07');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-18 10:14:06');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','upload/yonghu1.jpg','17703786901','410224199010102001','1@qq.com',1,1,'2023-04-18 10:15:18'),(2,'a2','123456','用户姓名2','upload/yonghu2.jpg','17703786902','410224199010102002','2@qq.com',1,1,'2023-04-18 10:15:18'),(3,'a3','123456','用户姓名3','upload/yonghu3.jpg','17703786903','410224199010102003','3@qq.com',1,1,'2023-04-18 10:15:18'),(4,'a5','123456','张5','upload/1681788996398.jpg','17788889999','444222111133333333','5@qq.com',2,1,'2023-04-18 11:36:27');

/*Table structure for table `zhaopin` */

DROP TABLE IF EXISTS `zhaopin`;

CREATE TABLE `zhaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiye_id` int(11) DEFAULT NULL COMMENT '企业',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘信息名称  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '招聘信息照片',
  `zhaopin_daiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhaopin_address` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `zhaopin_phone` varchar(200) DEFAULT NULL COMMENT '招聘电话',
  `zhaopin_types` int(11) DEFAULT NULL COMMENT '招聘岗位 Search111',
  `zhaopin_renshu_number` int(11) DEFAULT NULL COMMENT '招聘人数',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `zhaopin_content` text COMMENT '招聘信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='职位招聘';

/*Data for the table `zhaopin` */

insert  into `zhaopin`(`id`,`qiye_id`,`zhaopin_name`,`zhaopin_photo`,`zhaopin_daiyu`,`zhaopin_address`,`lianxiren_name`,`zan_number`,`cai_number`,`zhaopin_phone`,`zhaopin_types`,`zhaopin_renshu_number`,`shangxia_types`,`zhaopin_content`,`create_time`) values (1,2,'招聘信息名称1','upload/zhaopin1.jpg','薪资待遇1','上班地点1','联系人1',64,454,'17703786901',3,173,1,'招聘信息详情1','2023-04-18 10:15:18'),(2,1,'招聘信息名称2','upload/zhaopin2.jpg','薪资待遇2','上班地点2','联系人2',90,162,'17703786902',3,406,1,'招聘信息详情2','2023-04-18 10:15:18'),(3,1,'招聘信息名称3','upload/zhaopin3.jpg','薪资待遇3','上班地点3','联系人3',197,429,'17703786903',2,7,1,'招聘信息详情3','2023-04-18 10:15:18'),(4,3,'招聘信息名称4','upload/zhaopin4.jpg','薪资待遇4','上班地点4','联系人4',310,228,'17703786904',1,130,1,'招聘信息详情4','2023-04-18 10:15:18'),(5,2,'招聘信息名称5','upload/zhaopin5.jpg','薪资待遇5','上班地点5','联系人5',175,320,'17703786905',2,27,1,'招聘信息详情5','2023-04-18 10:15:18'),(6,3,'招聘信息名称6','upload/zhaopin6.jpg','薪资待遇6','上班地点6','联系人6',86,237,'17703786906',2,189,1,'招聘信息详情6','2023-04-18 10:15:18'),(7,1,'招聘信息名称7','upload/zhaopin7.jpg','薪资待遇7','上班地点7','联系人7',430,26,'17703786907',2,313,1,'招聘信息详情7','2023-04-18 10:15:18'),(8,1,'招聘信息名称8','upload/zhaopin8.jpg','薪资待遇8','上班地点8','联系人8',62,157,'17703786908',2,224,1,'招聘信息详情8','2023-04-18 10:15:18'),(9,3,'招聘信息名称9','upload/zhaopin9.jpg','薪资待遇9','上班地点9','联系人9',260,119,'17703786909',1,216,1,'招聘信息详情9','2023-04-18 10:15:18'),(10,1,'招聘信息名称10','upload/zhaopin10.jpg','薪资待遇10','上班地点10','联系人10',202,365,'17703786910',2,12,1,'招聘信息详情10','2023-04-18 10:15:18'),(11,2,'招聘信息名称11','upload/zhaopin11.jpg','薪资待遇11','上班地点11','联系人11',151,100,'17703786911',1,414,1,'招聘信息详情11','2023-04-18 10:15:18'),(12,2,'招聘信息名称12','upload/zhaopin12.jpg','薪资待遇12','上班地点12','联系人12',318,378,'17703786912',3,456,1,'招聘信息详情12','2023-04-18 10:15:18'),(13,3,'招聘信息名称13','upload/zhaopin13.jpg','薪资待遇13','上班地点13','联系人13',104,40,'17703786913',2,334,1,'招聘信息详情13','2023-04-18 10:15:18'),(14,2,'招聘信息名称14','upload/zhaopin14.jpg','薪资待遇14','上班地点14','联系人14',229,338,'17703786914',1,89,1,'招聘信息详情14','2023-04-18 10:15:18');

/*Table structure for table `zhaopin_collection` */

DROP TABLE IF EXISTS `zhaopin_collection`;

CREATE TABLE `zhaopin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '职位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhaopin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='职位收藏';

/*Data for the table `zhaopin_collection` */

insert  into `zhaopin_collection`(`id`,`zhaopin_id`,`yonghu_id`,`zhaopin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-04-18 10:15:18','2023-04-18 10:15:18'),(2,2,1,1,'2023-04-18 10:15:18','2023-04-18 10:15:18'),(3,3,3,1,'2023-04-18 10:15:18','2023-04-18 10:15:18'),(4,4,1,1,'2023-04-18 10:15:18','2023-04-18 10:15:18'),(5,5,3,1,'2023-04-18 10:15:18','2023-04-18 10:15:18'),(6,6,2,1,'2023-04-18 10:15:18','2023-04-18 10:15:18'),(7,7,1,1,'2023-04-18 10:15:18','2023-04-18 10:15:18'),(8,8,2,1,'2023-04-18 10:15:18','2023-04-18 10:15:18'),(9,9,2,1,'2023-04-18 10:15:18','2023-04-18 10:15:18'),(10,10,1,1,'2023-04-18 10:15:18','2023-04-18 10:15:18'),(11,11,2,1,'2023-04-18 10:15:18','2023-04-18 10:15:18'),(12,12,2,1,'2023-04-18 10:15:18','2023-04-18 10:15:18'),(13,13,1,1,'2023-04-18 10:15:18','2023-04-18 10:15:18'),(14,14,1,1,'2023-04-18 10:15:18','2023-04-18 10:15:18'),(15,13,1,2,'2023-04-18 10:41:13','2023-04-18 10:41:13'),(16,8,4,2,'2023-04-18 11:39:52','2023-04-18 11:39:52'),(17,8,4,1,'2023-04-18 11:39:54','2023-04-18 11:39:54'),(18,3,4,2,'2023-04-18 11:40:05','2023-04-18 11:40:05'),(19,11,4,2,'2023-04-18 11:40:13','2023-04-18 11:40:13'),(20,11,4,1,'2023-04-18 11:40:28','2023-04-18 11:40:28');

/*Table structure for table `zhaopin_liuyan` */

DROP TABLE IF EXISTS `zhaopin_liuyan`;

CREATE TABLE `zhaopin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '职位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhaopin_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='职位留言';

/*Data for the table `zhaopin_liuyan` */

insert  into `zhaopin_liuyan`(`id`,`zhaopin_id`,`yonghu_id`,`zhaopin_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,2,'留言内容1','回复信息1','2023-04-18 10:15:18','2023-04-18 10:15:18','2023-04-18 10:15:18'),(2,2,3,'留言内容2','回复信息2','2023-04-18 10:15:18','2023-04-18 10:15:18','2023-04-18 10:15:18'),(3,3,3,'留言内容3','回复信息3','2023-04-18 10:15:18','2023-04-18 10:15:18','2023-04-18 10:15:18'),(4,4,1,'留言内容4','回复信息4','2023-04-18 10:15:18','2023-04-18 10:15:18','2023-04-18 10:15:18'),(5,5,1,'留言内容5','回复信息5','2023-04-18 10:15:18','2023-04-18 10:15:18','2023-04-18 10:15:18'),(6,6,2,'留言内容6','回复信息6','2023-04-18 10:15:18','2023-04-18 10:15:18','2023-04-18 10:15:18'),(7,7,1,'留言内容7','回复信息7','2023-04-18 10:15:18','2023-04-18 10:15:18','2023-04-18 10:15:18'),(8,8,3,'留言内容8','回复信息8','2023-04-18 10:15:18','2023-04-18 10:15:18','2023-04-18 10:15:18'),(9,9,2,'留言内容9','回复信息9','2023-04-18 10:15:18','2023-04-18 10:15:18','2023-04-18 10:15:18'),(10,10,2,'留言内容10','回复信息10','2023-04-18 10:15:18','2023-04-18 10:15:18','2023-04-18 10:15:18'),(11,11,1,'留言内容11','回复信息11','2023-04-18 10:15:18','2023-04-18 10:15:18','2023-04-18 10:15:18'),(12,12,2,'留言内容12','回复信息12','2023-04-18 10:15:18','2023-04-18 10:15:18','2023-04-18 10:15:18'),(13,13,1,'留言内容13','回复信息13','2023-04-18 10:15:18','2023-04-18 10:15:18','2023-04-18 10:15:18'),(14,14,3,'留言内容14','回复信息14','2023-04-18 10:15:18','2023-04-18 10:15:18','2023-04-18 10:15:18'),(15,8,1,'和发的回访电话','很大声的发挥','2023-04-18 11:44:38','2023-04-18 11:44:57','2023-04-18 11:44:38');

/*Table structure for table `zhaopin_toudi` */

DROP TABLE IF EXISTS `zhaopin_toudi`;

CREATE TABLE `zhaopin_toudi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jianli_id` int(11) DEFAULT NULL COMMENT '简历',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '招聘',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投递时间',
  `zhaopin_toudi_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `zhaopin_toudi_yesno_text` text COMMENT '投递回复',
  `zhaopin_toudi_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='简历投递';

/*Data for the table `zhaopin_toudi` */

insert  into `zhaopin_toudi`(`id`,`jianli_id`,`zhaopin_id`,`insert_time`,`zhaopin_toudi_yesno_types`,`zhaopin_toudi_yesno_text`,`zhaopin_toudi_shenhe_time`,`create_time`) values (1,1,1,'2023-04-18 10:15:18',2,'通过','2023-04-18 10:15:18','2023-04-18 10:15:18'),(2,2,2,'2023-04-18 10:15:18',2,'通过','2023-04-18 10:15:18','2023-04-18 10:15:18'),(3,3,3,'2023-04-18 10:15:18',2,'通过','2023-04-18 10:15:18','2023-04-18 10:15:18'),(4,4,4,'2023-04-18 10:15:18',2,'通过','2023-04-18 10:15:18','2023-04-18 10:15:18'),(5,5,5,'2023-04-18 10:15:18',2,'通过','2023-04-18 10:15:18','2023-04-18 10:15:18'),(6,6,6,'2023-04-18 10:15:18',2,'通过','2023-04-18 10:15:18','2023-04-18 10:15:18'),(7,7,7,'2023-04-18 10:15:18',2,'通过','2023-04-18 10:15:18','2023-04-18 10:15:18'),(8,8,8,'2023-04-18 10:15:18',2,'通过','2023-04-18 10:15:18','2023-04-18 10:15:18'),(9,9,9,'2023-04-18 10:15:18',2,'通过','2023-04-18 10:15:18','2023-04-18 10:15:18'),(10,10,10,'2023-04-18 10:15:18',2,'通过','2023-04-18 10:15:18','2023-04-18 10:15:18'),(11,11,2,'2023-04-18 10:15:18',1,NULL,NULL,'2023-04-18 10:15:18'),(12,12,3,'2023-04-18 10:15:18',1,NULL,NULL,'2023-04-18 10:15:18'),(13,13,4,'2023-04-18 10:15:18',1,NULL,NULL,'2023-04-18 10:15:18'),(14,14,6,'2023-04-18 10:15:18',1,NULL,NULL,'2023-04-18 10:15:18'),(29,15,14,'2023-04-18 11:39:10',1,NULL,NULL,'2023-04-18 11:39:10'),(30,15,8,'2023-04-18 11:39:59',1,NULL,NULL,'2023-04-18 11:39:59'),(31,15,3,'2023-04-18 11:40:09',2,'很多分身乏术','2023-04-18 11:45:04','2023-04-18 11:40:09'),(32,15,11,'2023-04-18 11:40:16',1,NULL,NULL,'2023-04-18 11:40:16');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
