/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmp2t94
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmp2t94` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmp2t94`;

/*Table structure for table `chushoujilu` */

DROP TABLE IF EXISTS `chushoujilu`;

CREATE TABLE `chushoujilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chushoudanhao` varchar(200) NOT NULL COMMENT '出售单号',
  `shangpinbianhao` varchar(200) NOT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinguige` varchar(200) DEFAULT NULL COMMENT '商品规格',
  `shangpinpinpai` varchar(200) DEFAULT NULL COMMENT '商品品牌',
  `xinjiuchengdu` varchar(200) DEFAULT NULL COMMENT '新旧程度',
  `chushoudanjia` int(11) DEFAULT NULL COMMENT '出售单价',
  `chushoushuliang` int(11) DEFAULT NULL COMMENT '出售数量',
  `chushouzongjia` int(11) DEFAULT NULL COMMENT '出售总价',
  `chushoushijian` date DEFAULT NULL COMMENT '出售时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `beizhu` longtext COMMENT '备注',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chushoudanhao` (`chushoudanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617726661023 DEFAULT CHARSET=utf8 COMMENT='出售记录';

/*Data for the table `chushoujilu` */

insert  into `chushoujilu`(`id`,`addtime`,`chushoudanhao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleibie`,`tupian`,`shangpinguige`,`shangpinpinpai`,`xinjiuchengdu`,`chushoudanjia`,`chushoushuliang`,`chushouzongjia`,`chushoushijian`,`yonghuming`,`xingming`,`shouji`,`beizhu`,`userid`) values (61,'2021-04-07 00:23:24','出售单号1','商品编号1','商品名称1','商品类别1','http://localhost:8080/ssmp2t94/upload/chushoujilu_tupian1.jpg','商品规格1','商品品牌1','新旧程度1',1,1,1,'2021-04-07','用户名1','姓名1','手机1','备注1',1),(62,'2021-04-07 00:23:24','出售单号2','商品编号2','商品名称2','商品类别2','http://localhost:8080/ssmp2t94/upload/chushoujilu_tupian2.jpg','商品规格2','商品品牌2','新旧程度2',2,2,2,'2021-04-07','用户名2','姓名2','手机2','备注2',2),(63,'2021-04-07 00:23:24','出售单号3','商品编号3','商品名称3','商品类别3','http://localhost:8080/ssmp2t94/upload/chushoujilu_tupian3.jpg','商品规格3','商品品牌3','新旧程度3',3,3,3,'2021-04-07','用户名3','姓名3','手机3','备注3',3),(64,'2021-04-07 00:23:24','出售单号4','商品编号4','商品名称4','商品类别4','http://localhost:8080/ssmp2t94/upload/chushoujilu_tupian4.jpg','商品规格4','商品品牌4','新旧程度4',4,4,4,'2021-04-07','用户名4','姓名4','手机4','备注4',4),(65,'2021-04-07 00:23:24','出售单号5','商品编号5','商品名称5','商品类别5','http://localhost:8080/ssmp2t94/upload/chushoujilu_tupian5.jpg','商品规格5','商品品牌5','新旧程度5',5,5,5,'2021-04-07','用户名5','姓名5','手机5','备注5',5),(66,'2021-04-07 00:23:24','出售单号6','商品编号6','商品名称6','商品类别6','http://localhost:8080/ssmp2t94/upload/chushoujilu_tupian6.jpg','商品规格6','商品品牌6','新旧程度6',6,6,6,'2021-04-07','用户名6','姓名6','手机6','备注6',6),(1617726342618,'2021-04-07 00:25:42','1617726328278','出售编号1','','商品类别1','','商品规格1','商品品牌1','新旧程度1',1,1,1,NULL,'用户名1','姓名1','13823888881','2',1617726299918),(1617726661022,'2021-04-07 00:31:00','1617726625103','出售编号1','222','商品类别1','','商品规格1','商品品牌1','新旧程度1',1,2,2,NULL,'用户名1','姓名1','13823888881','这里用户可以发布想出售的商品。后台管理员审核。',1617726454413);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmp2t94/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmp2t94/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmp2t94/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617726515289 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-07 00:23:24',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-04-07 00:23:24',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-04-07 00:23:24',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-04-07 00:23:24',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-04-07 00:23:24',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-04-07 00:23:24',6,6,'用户名6','评论内容6','回复内容6'),(1617726515288,'2021-04-07 00:28:34',21,1617726454413,'123','这里可以自由评论留言，后台管理员回复','回复后前台用户可以看到回复信息');

/*Table structure for table `goumaijilu` */

DROP TABLE IF EXISTS `goumaijilu`;

CREATE TABLE `goumaijilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `goumaidanhao` varchar(200) NOT NULL COMMENT '购买单号',
  `shangpinbianhao` varchar(200) NOT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chushoudanjia` int(11) DEFAULT NULL COMMENT '出售单价',
  `goumaishuliang` int(11) DEFAULT NULL COMMENT '购买数量',
  `goumaizongjia` int(11) DEFAULT NULL COMMENT '购买总价',
  `goumaishijian` date DEFAULT NULL COMMENT '购买时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `beizhu` longtext COMMENT '备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `goumaidanhao` (`goumaidanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617726580878 DEFAULT CHARSET=utf8 COMMENT='购买记录';

/*Data for the table `goumaijilu` */

insert  into `goumaijilu`(`id`,`addtime`,`goumaidanhao`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleibie`,`tupian`,`chushoudanjia`,`goumaishuliang`,`goumaizongjia`,`goumaishijian`,`yonghuming`,`xingming`,`beizhu`,`ispay`,`userid`) values (41,'2021-04-07 00:23:24','购买单号1','商品编号1','商品名称1','商品类别1','http://localhost:8080/ssmp2t94/upload/goumaijilu_tupian1.jpg',1,1,1,'2021-04-07','用户名1','姓名1','备注1','未支付',1),(42,'2021-04-07 00:23:24','购买单号2','商品编号2','商品名称2','商品类别2','http://localhost:8080/ssmp2t94/upload/goumaijilu_tupian2.jpg',2,2,2,'2021-04-07','用户名2','姓名2','备注2','未支付',2),(43,'2021-04-07 00:23:24','购买单号3','商品编号3','商品名称3','商品类别3','http://localhost:8080/ssmp2t94/upload/goumaijilu_tupian3.jpg',3,3,3,'2021-04-07','用户名3','姓名3','备注3','未支付',3),(44,'2021-04-07 00:23:24','购买单号4','商品编号4','商品名称4','商品类别4','http://localhost:8080/ssmp2t94/upload/goumaijilu_tupian4.jpg',4,4,4,'2021-04-07','用户名4','姓名4','备注4','未支付',4),(45,'2021-04-07 00:23:24','购买单号5','商品编号5','商品名称5','商品类别5','http://localhost:8080/ssmp2t94/upload/goumaijilu_tupian5.jpg',5,5,5,'2021-04-07','用户名5','姓名5','备注5','未支付',5),(46,'2021-04-07 00:23:24','购买单号6','商品编号6','商品名称6','商品类别6','http://localhost:8080/ssmp2t94/upload/goumaijilu_tupian6.jpg',6,6,6,'2021-04-07','用户名6','姓名6','备注6','未支付',6),(1617726317914,'2021-04-07 00:25:17','1617726312411','商品编号3','商品名称3','商品类别3','http://localhost:8080/ssmp2t94/upload/shangpinxinxi_tupian3.jpg',3,1,3,NULL,'111','1','1','',1617726299918),(1617726580877,'2021-04-07 00:29:40','1617726547933','商品编号1','商品名称1','商品类别1','http://localhost:8080/ssmp2t94/upload/shangpinxinxi_tupian1.jpg',1,1,1,NULL,'123','111','这里下单，看到商品可以下单，在购买记录那付款','已支付',1617726454413);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617726751030 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (91,'2021-04-07 00:23:24',1,'用户名1','留言内容1','回复内容1'),(92,'2021-04-07 00:23:24',2,'用户名2','留言内容2','回复内容2'),(93,'2021-04-07 00:23:24',3,'用户名3','留言内容3','回复内容3'),(94,'2021-04-07 00:23:24',4,'用户名4','留言内容4','回复内容4'),(95,'2021-04-07 00:23:24',5,'用户名5','留言内容5','回复内容5'),(96,'2021-04-07 00:23:24',6,'用户名6','留言内容6','回复内容6'),(1617726744941,'2021-04-07 00:32:24',1617726454413,'123','这里可以留言，后台管理员回复','回复后前台查看'),(1617726751029,'2021-04-07 00:32:30',1617726454413,'123','222','');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='校园资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-04-07 00:23:24','标题1','简介1','http://localhost:8080/ssmp2t94/upload/news_picture1.jpg','内容1'),(82,'2021-04-07 00:23:24','标题2','简介2','http://localhost:8080/ssmp2t94/upload/news_picture2.jpg','内容2'),(83,'2021-04-07 00:23:24','标题3','简介3','http://localhost:8080/ssmp2t94/upload/news_picture3.jpg','内容3'),(84,'2021-04-07 00:23:24','标题4','简介4','http://localhost:8080/ssmp2t94/upload/news_picture4.jpg','内容4'),(85,'2021-04-07 00:23:24','标题5','简介5','http://localhost:8080/ssmp2t94/upload/news_picture5.jpg','内容5'),(86,'2021-04-07 00:23:24','标题6','简介6','http://localhost:8080/ssmp2t94/upload/news_picture6.jpg','内容6');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleibie` varchar(200) NOT NULL COMMENT '商品类别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinleibie` (`shangpinleibie`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinleibie`) values (51,'2021-04-07 00:23:24','商品类别1'),(52,'2021-04-07 00:23:24','商品类别2'),(53,'2021-04-07 00:23:24','商品类别3'),(54,'2021-04-07 00:23:24','商品类别4'),(55,'2021-04-07 00:23:24','商品类别5'),(56,'2021-04-07 00:23:24','商品类别6');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `xinjiuchengdu` varchar(200) DEFAULT NULL COMMENT '新旧程度',
  `yuanjia` int(11) DEFAULT NULL COMMENT '原价',
  `chushoudanjia` int(11) DEFAULT NULL COMMENT '出售单价',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shangpinmiaoshu` longtext COMMENT '商品描述',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleibie`,`tupian`,`maijiazhanghao`,`maijiaxingming`,`guige`,`pinpai`,`xinjiuchengdu`,`yuanjia`,`chushoudanjia`,`shuliang`,`shangpinmiaoshu`,`thumbsupnum`,`crazilynum`,`clicknum`) values (21,'2021-04-07 00:23:24','商品编号1','商品名称1','商品类别1','http://localhost:8080/ssmp2t94/upload/shangpinxinxi_tupian1.jpg','卖家账号1','卖家姓名1','规格1','品牌1','新旧程度1',1,1,1,'商品描述1',2,2,6),(22,'2021-04-07 00:23:24','商品编号2','商品名称2','商品类别2','http://localhost:8080/ssmp2t94/upload/shangpinxinxi_tupian2.jpg','卖家账号2','卖家姓名2','规格2','品牌2','新旧程度2',2,2,2,'商品描述2',2,2,2),(23,'2021-04-07 00:23:24','商品编号3','商品名称3','商品类别3','http://localhost:8080/ssmp2t94/upload/shangpinxinxi_tupian3.jpg','卖家账号3','卖家姓名3','规格3','品牌3','新旧程度3',3,3,3,'商品描述3',3,3,5),(24,'2021-04-07 00:23:24','商品编号4','商品名称4','商品类别4','http://localhost:8080/ssmp2t94/upload/shangpinxinxi_tupian4.jpg','卖家账号4','卖家姓名4','规格4','品牌4','新旧程度4',4,4,4,'商品描述4',4,4,4),(25,'2021-04-07 00:23:24','商品编号5','商品名称5','商品类别5','http://localhost:8080/ssmp2t94/upload/shangpinxinxi_tupian5.jpg','卖家账号5','卖家姓名5','规格5','品牌5','新旧程度5',5,5,5,'商品描述5修改商品内容',5,5,6),(26,'2021-04-07 00:23:24','商品编号6','商品名称6','商品类别6','http://localhost:8080/ssmp2t94/upload/shangpinxinxi_tupian6.jpg','卖家账号6','卖家姓名6','规格6','品牌6','新旧程度6',6,6,6,'商品描述6',6,6,6);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617726490258 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1617726490257,'2021-04-07 00:28:09',1617726454413,21,'shangpinxinxi','商品名称1','http://localhost:8080/ssmp2t94/upload/shangpinxinxi_tupian1.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1617726299918,'111','yonghu','用户','0howjzm766o68dfqmifklxyi19geuium','2021-04-07 00:25:07','2021-04-07 01:25:07'),(2,1617726454413,'123','yonghu','用户','gfusct41sfz7l97sy24bz4wx4xh7832m','2021-04-07 00:27:42','2021-04-07 01:27:43'),(3,1,'abo','users','管理员','h2j2j1is8trtb9ipubpd3madobpneel1','2021-04-07 00:32:48','2021-04-07 01:32:48');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-07 00:23:24');

/*Table structure for table `xinxifabu` */

DROP TABLE IF EXISTS `xinxifabu`;

CREATE TABLE `xinxifabu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chushoubianhao` varchar(200) NOT NULL COMMENT '出售编号',
  `chushoushangpinmingcheng` varchar(200) NOT NULL COMMENT '出售商品名称',
  `shangpinleibie` varchar(200) NOT NULL COMMENT '商品类别',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `shangpinpinpai` varchar(200) DEFAULT NULL COMMENT '商品品牌',
  `shangpinguige` varchar(200) DEFAULT NULL COMMENT '商品规格',
  `xinjiuchengdu` varchar(200) DEFAULT NULL COMMENT '新旧程度',
  `yuanjia` int(11) DEFAULT NULL COMMENT '原价',
  `chushoujiage` int(11) NOT NULL COMMENT '出售价格',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `jiaoyifangshi` varchar(200) NOT NULL COMMENT '交易方式',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='信息发布';

/*Data for the table `xinxifabu` */

insert  into `xinxifabu`(`id`,`addtime`,`chushoubianhao`,`chushoushangpinmingcheng`,`shangpinleibie`,`shangpintupian`,`shangpinpinpai`,`shangpinguige`,`xinjiuchengdu`,`yuanjia`,`chushoujiage`,`shuliang`,`shangpinxiangqing`,`jiaoyifangshi`,`fabushijian`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`clicknum`,`userid`) values (31,'2021-04-07 00:23:24','出售编号1','出售商品名称1','商品类别1','http://localhost:8080/ssmp2t94/upload/xinxifabu_shangpintupian1.jpg','商品品牌1','商品规格1','新旧程度1',1,1,'数量1','商品详情1','线上','2021-04-07','用户名1','姓名1','13823888881','否','可以对出售的商品进行审核，前台用户可以查看',6,1),(32,'2021-04-07 00:23:24','出售编号2','出售商品名称2','商品类别2','http://localhost:8080/ssmp2t94/upload/xinxifabu_shangpintupian2.jpg','商品品牌2','商品规格2','新旧程度2',2,2,'数量2','商品详情2','线上','2021-04-07','用户名2','姓名2','13823888882','是','',2,2),(33,'2021-04-07 00:23:24','出售编号3','出售商品名称3','商品类别3','http://localhost:8080/ssmp2t94/upload/xinxifabu_shangpintupian3.jpg','商品品牌3','商品规格3','新旧程度3',3,3,'数量3','商品详情3','线上','2021-04-07','用户名3','姓名3','13823888883','是','',3,3),(34,'2021-04-07 00:23:24','出售编号4','出售商品名称4','商品类别4','http://localhost:8080/ssmp2t94/upload/xinxifabu_shangpintupian4.jpg','商品品牌4','商品规格4','新旧程度4',4,4,'数量4','商品详情4','线上','2021-04-07','用户名4','姓名4','13823888884','是','',4,4),(35,'2021-04-07 00:23:24','出售编号5','出售商品名称5','商品类别5','http://localhost:8080/ssmp2t94/upload/xinxifabu_shangpintupian5.jpg','商品品牌5','商品规格5','新旧程度5',5,5,'数量5','商品详情5','线上','2021-04-07','用户名5','姓名5','13823888885','是','',5,5),(36,'2021-04-07 00:23:24','出售编号6','出售商品名称6','商品类别6','http://localhost:8080/ssmp2t94/upload/xinxifabu_shangpintupian6.jpg','商品品牌6','商品规格6','新旧程度6',6,6,'数量6','商品详情6','线上','2021-04-07','用户名6','姓名6','13823888886','是','',6,6);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1617726454414 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`zhaopian`,`shouji`) values (11,'2021-04-07 00:23:24','用户1','123456','姓名1','男','http://localhost:8080/ssmp2t94/upload/yonghu_zhaopian1.jpg','13823888881'),(12,'2021-04-07 00:23:24','用户2','123456','姓名2','男','http://localhost:8080/ssmp2t94/upload/yonghu_zhaopian2.jpg','13823888882'),(13,'2021-04-07 00:23:24','用户3','123456','姓名3','男','http://localhost:8080/ssmp2t94/upload/yonghu_zhaopian3.jpg','13823888883'),(14,'2021-04-07 00:23:24','用户4','123456','姓名4','男','http://localhost:8080/ssmp2t94/upload/yonghu_zhaopian4.jpg','13823888884'),(15,'2021-04-07 00:23:24','用户5','123456','姓名5','男','http://localhost:8080/ssmp2t94/upload/yonghu_zhaopian5.jpg','13823888885'),(16,'2021-04-07 00:23:24','用户6','123456','姓名6','男','http://localhost:8080/ssmp2t94/upload/yonghu_zhaopian6.jpg','13823888886'),(1617726299918,'2021-04-07 00:24:59','111','111','1','男',NULL,'11111111111'),(1617726454413,'2021-04-07 00:27:34','123','111','111','男',NULL,'11111111111');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
