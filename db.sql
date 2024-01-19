/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot482k3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot482k3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot482k3`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652515092063 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-20 16:03:46',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-20 16:03:46',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-20 16:03:46',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-20 16:03:46',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-20 16:03:46',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-20 16:03:46',6,'宇宙银河系月球1号','月某','13823888886','是'),(1616309386438,'2021-03-21 14:49:46',1616309343150,'广东省梅州市梅江区江南街道美凤路10-10号江南阁','王五','12345678900','是'),(1652511242320,'2022-05-14 14:54:01',22,'河南省郑州市二七区解放路街道二七路200-4号麦迪逊城市奥特莱斯金博大店','zhang 1','17703786969','是'),(1652515092062,'2022-05-14 15:58:11',24,'河南省郑州市二七区解放路街道华联商厦','张11','17703787878','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652515140757 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1652511199322,'2022-05-14 14:53:18','shangpinxinxi',21,43,NULL,'http://localhost:8080/springboot482k3/upload/shangpinxinxi_tupian3.jpg',1,99.9,0),(1652515140756,'2022-05-14 15:58:59','shangpinxinxi',24,1652511690055,NULL,'http://localhost:8080/springboot482k3/upload/1652511686366.jpg',1,99,0);

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616309481385 DEFAULT CHARSET=utf8 COMMENT='客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (51,'2021-03-20 16:03:46',1,1,'提问1','回复1',1),(52,'2021-03-20 16:03:46',2,2,'提问2','回复2',2),(53,'2021-03-20 16:03:46',3,3,'提问3','回复3',3),(54,'2021-03-20 16:03:46',4,4,'提问4','回复4',4),(55,'2021-03-20 16:03:46',5,5,'提问5','回复5',5),(56,'2021-03-20 16:03:46',6,6,'提问6','回复6',6),(1616309442656,'2021-03-21 14:50:42',1616309343150,NULL,'测试',NULL,0),(1616309481384,'2021-03-21 14:51:21',1616309343150,1,NULL,'没问题',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot482k3/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot482k3/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot482k3/upload/picture3.jpg'),(6,'homepage',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=1616309430336 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-03-20 16:03:46',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-20 16:03:46',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-20 16:03:46',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-20 16:03:46',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-20 16:03:46',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-20 16:03:46',6,6,'用户名6','评论内容6','回复内容6'),(1616309430335,'2021-03-21 14:50:29',1616309233835,1616309343150,'2','测试',NULL);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `zhanghao` varchar(200) NOT NULL COMMENT '商品id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1652515505752 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`zhanghao`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1616309409403,'2021-03-21 14:50:09','20213211450951911191','shangpinxinxi',1616309343150,'',1616309233835,NULL,'http://localhost:8080/springboot482k3/upload/1616309221691.jpg',2,3,3,6,6,1,'已支付','广东省梅州市梅江区江南街道美凤路10-10号江南阁'),(1652511258492,'2022-05-14 14:54:17','202251414541768101466','shangpinxinxi',22,'',43,NULL,'http://localhost:8080/springboot482k3/upload/shangpinxinxi_tupian3.jpg',2,99.9,99.9,199.8,199.8,1,'未支付','河南省郑州市二七区解放路街道二七路200-4号麦迪逊城市奥特莱斯金博大店'),(1652511275409,'2022-05-14 14:54:34','202251414543443646487','shangpinxinxi',22,'',43,NULL,'http://localhost:8080/springboot482k3/upload/shangpinxinxi_tupian3.jpg',2,99.9,99.9,199.8,199.8,1,'已支付','河南省郑州市二七区解放路街道二七路200-4号麦迪逊城市奥特莱斯金博大店'),(1652511741780,'2022-05-14 15:02:21','20225141522140205677','shangpinxinxi',22,'',1652511690055,NULL,'http://localhost:8080/springboot482k3/upload/1652511686366.jpg',1,99,99,99,99,1,'已支付','河南省郑州市二七区解放路街道二七路200-4号麦迪逊城市奥特莱斯金博大店'),(1652515145273,'2022-05-14 15:59:04','20225141559437949482','shangpinxinxi',24,'a99',1652511690055,NULL,'http://localhost:8080/springboot482k3/upload/1652511686366.jpg',2,99,99,198,198,1,'已退款','河南省郑州市二七区解放路街道华联商厦'),(1652515505751,'2022-05-14 16:05:05','2022514165533050665','shangpinxinxi',24,'a99',1652511690055,'商品11','http://localhost:8080/springboot482k3/upload/1652511686366.jpg',2,99,99,198,198,1,'已发货','河南省郑州市二七区解放路街道华联商厦');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) NOT NULL COMMENT '商家名称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1652511640364 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`addtime`,`zhanghao`,`mima`,`shangjiamingcheng`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`money`) values (12,'2021-03-20 16:03:46','商家2','123456','商家名称2','男','13823888882','773890002@qq.com','440300199202020002',100),(13,'2021-03-20 16:03:46','商家3','123456','商家名称3','男','13823888883','773890003@qq.com','440300199303030003',100),(14,'2021-03-20 16:03:46','商家4','123456','商家名称4','男','13823888884','773890004@qq.com','440300199404040004',100),(15,'2021-03-20 16:03:46','商家5','123456','商家名称5','男','13823888885','773890005@qq.com','440300199505050005',100),(16,'2021-03-20 16:03:46','商家6','123456','商家名称6','男','13823888886','773890006@qq.com','440300199606060006',100),(1616309066516,'2021-03-21 14:44:26','商家','123','李四','男','12345678900',NULL,'440582199905125833',0),(1652511640363,'2022-05-14 15:00:40','a99','123456','123456',NULL,'17703786969','99@qq.com','410224199610232099',0);

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616309124033 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`leibie`) values (31,'2021-03-20 16:03:46','类别1'),(32,'2021-03-20 16:03:46','类别2'),(33,'2021-03-20 16:03:46','类别3'),(34,'2021-03-20 16:03:46','类别4'),(35,'2021-03-20 16:03:46','类别5'),(36,'2021-03-20 16:03:46','类别6'),(1616309114304,'2021-03-21 14:45:14','手机'),(1616309124032,'2021-03-21 14:45:23','电脑');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `leibie` varchar(200) NOT NULL COMMENT '类别',
  `yueshouxiaoliang` varchar(200) DEFAULT NULL COMMENT '月售销量',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiangqing` longtext COMMENT '详情',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `shangjiamingcheng` varchar(200) NOT NULL COMMENT '商家名称',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652511690056 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`leibie`,`yueshouxiaoliang`,`tupian`,`xiangqing`,`zhanghao`,`shangjiamingcheng`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (41,'2021-03-20 16:03:46','商品名称1','类别1','月售销量1','http://localhost:8080/springboot482k3/upload/shangpinxinxi_tupian1.jpg','详情1','商家1','商家名称1','是','',1,1,'2021-03-20 16:03:46',1,99.9),(42,'2021-03-20 16:03:46','商品名称2','类别2','月售销量2','http://localhost:8080/springboot482k3/upload/shangpinxinxi_tupian2.jpg','详情2','商家2','商家名称2','是','',2,2,'2021-03-21 14:47:22',6,99.9),(43,'2021-03-20 16:03:46','商品名称3','类别3','月售销量3','http://localhost:8080/springboot482k3/upload/shangpinxinxi_tupian3.jpg','详情3','商家3','商家名称3','是','',3,3,'2022-05-14 15:48:06',10,99.9),(44,'2021-03-20 16:03:46','商品名称4','类别4','月售销量4','http://localhost:8080/springboot482k3/upload/shangpinxinxi_tupian4.jpg','详情4','商家4','商家名称4','是','',4,4,'2021-03-20 16:03:46',4,99.9),(45,'2021-03-20 16:03:46','商品名称5','类别5','月售销量5','http://localhost:8080/springboot482k3/upload/shangpinxinxi_tupian5.jpg','详情5','商家5','商家名称5','是','',5,5,'2021-03-20 16:03:46',5,99.9),(46,'2021-03-20 16:03:46','商品名称6','类别6','月售销量6','http://localhost:8080/springboot482k3/upload/shangpinxinxi_tupian6.jpg','详情6','商家6','商家名称6','是','',6,6,'2021-03-20 16:03:46',6,99.9),(1616309202714,'2021-03-21 14:46:42','手机','手机','1','http://localhost:8080/springboot482k3/upload/1616309193393.jpg','<p>测试</p>','商家','李四','否',NULL,0,0,NULL,0,12),(1616309233835,'2021-03-21 14:47:12','电脑','电脑','12','http://localhost:8080/springboot482k3/upload/1616309221691.jpg','<p>测试用</p>','商家','李四','是',NULL,1,1,'2021-03-21 14:50:32',5,3),(1652511690055,'2022-05-14 15:01:29','商品11','类别3','33','http://localhost:8080/springboot482k3/upload/1652511686366.jpg','<p>发生的方式</p>','a99','123456','是','dfjdgkj',0,0,'2022-05-14 16:05:13',15,99);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','2i43aski4jvt7dla4zmg3qqohgashzfv','2021-03-21 14:42:58','2022-05-14 16:01:48'),(2,1616309066516,'商家','shangjia','商家','5bmb3p52m0p2b4frg2rrn60hx14owujv','2021-03-21 14:45:53','2021-03-21 15:45:53'),(3,1616309095202,'1','yonghu','用户','lpzccqr7qtvwv9w80nj5i0pmgruzqo9f','2021-03-21 14:48:17','2021-03-21 15:48:18'),(4,1616309343150,'2','yonghu','用户','b8u6emsler0zn8i7dikr0v3u5dfphzpf','2021-03-21 14:49:12','2021-03-21 15:49:13'),(5,21,'用户1','yonghu','用户','n7scpeplb9wmn3a06fe00tygy6nvlx5e','2022-05-14 14:53:00','2022-05-14 16:54:36'),(6,22,'用户2','yonghu','用户','w0at5f2gmikdy9gbsp5k05hgu5ea3ae1','2022-05-14 14:53:36','2022-05-14 15:53:36'),(7,13,'商家3','shangjia','商家','rx60aijp6crxpn7eyn8gitidbuvi241q','2022-05-14 14:56:06','2022-05-14 15:57:34'),(8,1652511640363,'a99','shangjia','商家','fgwvtamaxz5cp0d8rr6vxq81tsbh6taw','2022-05-14 15:00:45','2022-05-14 17:11:55'),(9,24,'用户4','yonghu','用户','5ubo799x14hrhtbg0qcn5y5b8drdz3bh','2022-05-14 15:54:47','2022-05-14 16:54:48');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-20 16:03:46');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616309343151 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`money`) values (21,'2021-03-20 16:03:46','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001',100),(22,'2021-03-20 16:03:46','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002',9801.2),(23,'2021-03-20 16:03:46','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003',100),(24,'2021-03-20 16:03:46','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004',9902),(25,'2021-03-20 16:03:46','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005',100),(1616309095202,'2021-03-21 14:44:55','1','1','张三','男','12345678900',NULL,'440582199905125831',0),(1616309343150,'2021-03-21 14:49:03','2','2','王五',NULL,'12345678900',NULL,'440582199905125833',11105);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
