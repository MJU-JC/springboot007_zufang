/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootjeb55
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootjeb55` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootjeb55`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootjeb55/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springbootjeb55/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springbootjeb55/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdanxinxi` */

DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyuanbianhao` varchar(200) DEFAULT NULL COMMENT '房源编号',
  `fangyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '房源名称',
  `huxing` varchar(200) DEFAULT NULL COMMENT '户型',
  `pingfangshu` varchar(200) DEFAULT NULL COMMENT '平方数',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `xiangguantupian` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `chuzuleixing` varchar(200) DEFAULT NULL COMMENT '出租类型',
  `zujin` int(11) DEFAULT NULL COMMENT '租金',
  `fangdongzhanghao` varchar(200) DEFAULT NULL COMMENT '房东账号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `faburiqi` varchar(200) DEFAULT NULL COMMENT '发布日期',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `gerenzhanghao` varchar(200) DEFAULT NULL COMMENT '个人账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='订单信息';

/*Data for the table `dingdanxinxi` */

insert  into `dingdanxinxi`(`id`,`addtime`,`fangyuanbianhao`,`fangyuanmingcheng`,`huxing`,`pingfangshu`,`weizhi`,`xiangguantupian`,`chuzuleixing`,`zujin`,`fangdongzhanghao`,`fangdongxingming`,`faburiqi`,`lianxidianhua`,`gerenzhanghao`,`xingming`,`shenqingriqi`,`sfsh`,`shhf`,`ispay`) values (51,'2021-04-22 15:06:09','房源编号1','房源名称1','户型1','平方数1','位置1','http://localhost:8080/springbootjeb55/upload/dingdanxinxi_xiangguantupian1.jpg','出租类型1',1,'房东账号1','房东姓名1','发布日期1','联系电话1','个人账号1','姓名1','2021-04-22','是','','未支付'),(52,'2021-04-22 15:06:09','房源编号2','房源名称2','户型2','平方数2','位置2','http://localhost:8080/springbootjeb55/upload/dingdanxinxi_xiangguantupian2.jpg','出租类型2',2,'房东账号2','房东姓名2','发布日期2','联系电话2','个人账号2','姓名2','2021-04-22','是','','未支付'),(53,'2021-04-22 15:06:09','房源编号3','房源名称3','户型3','平方数3','位置3','http://localhost:8080/springbootjeb55/upload/dingdanxinxi_xiangguantupian3.jpg','出租类型3',3,'房东账号3','房东姓名3','发布日期3','联系电话3','个人账号3','姓名3','2021-04-22','是','','未支付'),(54,'2021-04-22 15:06:09','房源编号4','房源名称4','户型4','平方数4','位置4','http://localhost:8080/springbootjeb55/upload/dingdanxinxi_xiangguantupian4.jpg','出租类型4',4,'房东账号4','房东姓名4','发布日期4','联系电话4','个人账号4','姓名4','2021-04-22','是','','未支付'),(55,'2021-04-22 15:06:09','房源编号5','房源名称5','户型5','平方数5','位置5','http://localhost:8080/springbootjeb55/upload/dingdanxinxi_xiangguantupian5.jpg','出租类型5',5,'房东账号5','房东姓名5','发布日期5','联系电话5','个人账号5','姓名5','2021-04-22','是','','未支付'),(56,'2021-04-22 15:06:09','房源编号6','房源名称6','户型6','平方数6','位置6','http://localhost:8080/springbootjeb55/upload/dingdanxinxi_xiangguantupian6.jpg','出租类型6',6,'房东账号6','房东姓名6','发布日期6','联系电话6','个人账号6','姓名6','2021-04-22','是','','未支付');

/*Table structure for table `fangdong` */

DROP TABLE IF EXISTS `fangdong`;

CREATE TABLE `fangdong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangdongzhanghao` varchar(200) NOT NULL COMMENT '房东账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `fangdongxingming` varchar(200) NOT NULL COMMENT '房东姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangdongzhanghao` (`fangdongzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='房东';

/*Data for the table `fangdong` */

insert  into `fangdong`(`id`,`addtime`,`fangdongzhanghao`,`mima`,`fangdongxingming`,`xingbie`,`nianling`,`shenfenzhenghaoma`,`lianxidianhua`,`xiangpian`) values (21,'2021-04-22 15:06:09','房东1','123456','房东姓名1','男',1,'440300199101010001','13823888881','http://localhost:8080/springbootjeb55/upload/fangdong_xiangpian1.jpg'),(22,'2021-04-22 15:06:09','房东2','123456','房东姓名2','男',2,'440300199202020002','13823888882','http://localhost:8080/springbootjeb55/upload/fangdong_xiangpian2.jpg'),(23,'2021-04-22 15:06:09','房东3','123456','房东姓名3','男',3,'440300199303030003','13823888883','http://localhost:8080/springbootjeb55/upload/fangdong_xiangpian3.jpg'),(24,'2021-04-22 15:06:09','房东4','123456','房东姓名4','男',4,'440300199404040004','13823888884','http://localhost:8080/springbootjeb55/upload/fangdong_xiangpian4.jpg'),(25,'2021-04-22 15:06:09','房东5','123456','房东姓名5','男',5,'440300199505050005','13823888885','http://localhost:8080/springbootjeb55/upload/fangdong_xiangpian5.jpg'),(26,'2021-04-22 15:06:09','房东6','123456','房东姓名6','男',6,'440300199606060006','13823888886','http://localhost:8080/springbootjeb55/upload/fangdong_xiangpian6.jpg');

/*Table structure for table `fangyuanxinxi` */

DROP TABLE IF EXISTS `fangyuanxinxi`;

CREATE TABLE `fangyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyuanbianhao` varchar(200) NOT NULL COMMENT '房源编号',
  `fangyuanmingcheng` varchar(200) NOT NULL COMMENT '房源名称',
  `huxing` varchar(200) DEFAULT NULL COMMENT '户型',
  `pingfangshu` varchar(200) DEFAULT NULL COMMENT '平方数',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `jianjie` longtext COMMENT '简介',
  `xiangguantupian` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `chuzuleixing` varchar(200) DEFAULT NULL COMMENT '出租类型',
  `zujin` int(11) DEFAULT NULL COMMENT '租金',
  `zhuangxiuqingkuang` varchar(200) DEFAULT NULL COMMENT '装修情况',
  `qitaxinxi` longtext COMMENT '其它信息',
  `fangdongzhanghao` varchar(200) DEFAULT NULL COMMENT '房东账号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangyuanbianhao` (`fangyuanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='房源信息';

/*Data for the table `fangyuanxinxi` */

insert  into `fangyuanxinxi`(`id`,`addtime`,`fangyuanbianhao`,`fangyuanmingcheng`,`huxing`,`pingfangshu`,`weizhi`,`jianjie`,`xiangguantupian`,`chuzuleixing`,`zujin`,`zhuangxiuqingkuang`,`qitaxinxi`,`fangdongzhanghao`,`fangdongxingming`,`lianxidianhua`,`faburiqi`,`sfsh`,`shhf`) values (41,'2021-04-22 15:06:09','房源编号1','房源名称1','户型1','平方数1','位置1','简介1','http://localhost:8080/springbootjeb55/upload/fangyuanxinxi_xiangguantupian1.jpg','合租',1,'一般','其它信息1','房东账号1','房东姓名1','联系电话1','2021-04-22','是',''),(42,'2021-04-22 15:06:09','房源编号2','房源名称2','户型2','平方数2','位置2','简介2','http://localhost:8080/springbootjeb55/upload/fangyuanxinxi_xiangguantupian2.jpg','合租',2,'一般','其它信息2','房东账号2','房东姓名2','联系电话2','2021-04-22','是',''),(43,'2021-04-22 15:06:09','房源编号3','房源名称3','户型3','平方数3','位置3','简介3','http://localhost:8080/springbootjeb55/upload/fangyuanxinxi_xiangguantupian3.jpg','合租',3,'一般','其它信息3','房东账号3','房东姓名3','联系电话3','2021-04-22','是',''),(44,'2021-04-22 15:06:09','房源编号4','房源名称4','户型4','平方数4','位置4','简介4','http://localhost:8080/springbootjeb55/upload/fangyuanxinxi_xiangguantupian4.jpg','合租',4,'一般','其它信息4','房东账号4','房东姓名4','联系电话4','2021-04-22','是',''),(45,'2021-04-22 15:06:09','房源编号5','房源名称5','户型5','平方数5','位置5','简介5','http://localhost:8080/springbootjeb55/upload/fangyuanxinxi_xiangguantupian5.jpg','合租',5,'一般','其它信息5','房东账号5','房东姓名5','联系电话5','2021-04-22','是',''),(46,'2021-04-22 15:06:09','房源编号6','房源名称6','户型6','平方数6','位置6','简介6','http://localhost:8080/springbootjeb55/upload/fangyuanxinxi_xiangguantupian6.jpg','合租',6,'一般','其它信息6','房东账号6','房东姓名6','联系电话6','2021-04-22','是','');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-22 15:06:09');

/*Table structure for table `xinxishenpi` */

DROP TABLE IF EXISTS `xinxishenpi`;

CREATE TABLE `xinxishenpi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangdongzhanghao` varchar(200) DEFAULT NULL COMMENT '房东账号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `fangchanzheng` varchar(200) DEFAULT NULL COMMENT '房产证',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='信息审批';

/*Data for the table `xinxishenpi` */

insert  into `xinxishenpi`(`id`,`addtime`,`fangdongzhanghao`,`fangdongxingming`,`shenfenzhenghaoma`,`lianxidianhua`,`fangchanzheng`,`shenfenzheng`,`shenqingriqi`,`sfsh`,`shhf`) values (31,'2021-04-22 15:06:09','房东账号1','房东姓名1','身份证号码1','联系电话1','','http://localhost:8080/springbootjeb55/upload/xinxishenpi_shenfenzheng1.jpg','2021-04-22','是',''),(32,'2021-04-22 15:06:09','房东账号2','房东姓名2','身份证号码2','联系电话2','','http://localhost:8080/springbootjeb55/upload/xinxishenpi_shenfenzheng2.jpg','2021-04-22','是',''),(33,'2021-04-22 15:06:09','房东账号3','房东姓名3','身份证号码3','联系电话3','','http://localhost:8080/springbootjeb55/upload/xinxishenpi_shenfenzheng3.jpg','2021-04-22','是',''),(34,'2021-04-22 15:06:09','房东账号4','房东姓名4','身份证号码4','联系电话4','','http://localhost:8080/springbootjeb55/upload/xinxishenpi_shenfenzheng4.jpg','2021-04-22','是',''),(35,'2021-04-22 15:06:09','房东账号5','房东姓名5','身份证号码5','联系电话5','','http://localhost:8080/springbootjeb55/upload/xinxishenpi_shenfenzheng5.jpg','2021-04-22','是',''),(36,'2021-04-22 15:06:09','房东账号6','房东姓名6','身份证号码6','联系电话6','','http://localhost:8080/springbootjeb55/upload/xinxishenpi_shenfenzheng6.jpg','2021-04-22','是','');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gerenzhanghao` varchar(200) NOT NULL COMMENT '个人账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gerenzhanghao` (`gerenzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`gerenzhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shenfenzhenghaoma`,`shoujihaoma`,`xiangpian`) values (11,'2021-04-22 15:06:09','用户1','123456','姓名1','男',1,'440300199101010001','13823888881','http://localhost:8080/springbootjeb55/upload/yonghu_xiangpian1.jpg'),(12,'2021-04-22 15:06:09','用户2','123456','姓名2','男',2,'440300199202020002','13823888882','http://localhost:8080/springbootjeb55/upload/yonghu_xiangpian2.jpg'),(13,'2021-04-22 15:06:09','用户3','123456','姓名3','男',3,'440300199303030003','13823888883','http://localhost:8080/springbootjeb55/upload/yonghu_xiangpian3.jpg'),(14,'2021-04-22 15:06:09','用户4','123456','姓名4','男',4,'440300199404040004','13823888884','http://localhost:8080/springbootjeb55/upload/yonghu_xiangpian4.jpg'),(15,'2021-04-22 15:06:09','用户5','123456','姓名5','男',5,'440300199505050005','13823888885','http://localhost:8080/springbootjeb55/upload/yonghu_xiangpian5.jpg'),(16,'2021-04-22 15:06:09','用户6','123456','姓名6','男',6,'440300199606060006','13823888886','http://localhost:8080/springbootjeb55/upload/yonghu_xiangpian6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
