# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: dev.hdcms.com (MySQL 5.5.48)
# Database: hdcms
# Generation Time: 2017-01-19 17:37:11 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table hd_attachment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_attachment`;

CREATE TABLE `hd_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '会员id',
  `siteid` int(11) NOT NULL COMMENT '站点编号',
  `name` varchar(80) NOT NULL,
  `filename` varchar(300) NOT NULL COMMENT '文件名',
  `path` varchar(300) NOT NULL COMMENT '相对路径',
  `extension` varchar(10) NOT NULL DEFAULT '' COMMENT '类型',
  `createtime` int(10) NOT NULL COMMENT '上传时间',
  `size` mediumint(9) NOT NULL COMMENT '文件大小',
  `user_type` char(10) NOT NULL DEFAULT '' COMMENT '用户类型',
  `data` varchar(100) NOT NULL DEFAULT '' COMMENT '辅助信息',
  `hash` char(50) NOT NULL DEFAULT '' COMMENT '标识用于区分资源',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `data` (`data`),
  KEY `extension` (`extension`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='附件';

LOCK TABLES `hd_attachment` WRITE;
/*!40000 ALTER TABLE `hd_attachment` DISABLE KEYS */;

INSERT INTO `hd_attachment` (`id`, `uid`, `siteid`, `name`, `filename`, `path`, `extension`, `createtime`, `size`, `user_type`, `data`, `hash`)
VALUES
	(1,1,13,'1','95131483908487','attachment/2017/01/09/95131483908487.jpg','jpg',1483908487,106826,'admin','',''),
	(2,1,13,'1','90101483908852','attachment/2017/01/09/90101483908852.jpg','jpg',1483908852,106826,'admin','',''),
	(3,1,13,'1','8511483908874','attachment/2017/01/09/8511483908874.jpg','jpg',1483908874,106826,'admin','',''),
	(4,1,13,'1','88961483908883','attachment/2017/01/09/88961483908883.jpg','jpg',1483908883,106826,'admin','',''),
	(5,1,13,'向军','87141483908889','attachment/2017/01/09/87141483908889.jpeg','jpeg',1483908889,150349,'admin','',''),
	(6,1,13,'1','62221483908995','attachment/2017/01/09/62221483908995.jpg','jpg',1483908995,106826,'admin','',''),
	(7,1,13,'向军','46671483909004','attachment/2017/01/09/46671483909004.jpeg','jpeg',1483909004,150349,'admin','',''),
	(8,1,13,'1','15091483944881','attachment/2017/01/09/15091483944881.jpg','jpg',1483944881,106826,'admin','',''),
	(9,1,13,'13848593','98761483944886','attachment/2017/01/09/98761483944886.png','png',1483944886,24423,'admin','',''),
	(10,1,0,'1','19071483985525','attachment/2017/01/10/19071483985525.jpg','jpg',1483985525,106826,'admin','',''),
	(11,1,0,'1','88581483985562','attachment/2017/01/10/88581483985562.jpg','jpg',1483985562,106826,'admin','',''),
	(12,1,0,'1','89611483985628','attachment/2017/01/10/89611483985628.jpg','jpg',1483985628,106826,'admin','',''),
	(13,1,0,'1','84721483985747','attachment/2017/01/10/84721483985747.jpg','jpg',1483985747,106826,'admin','',''),
	(14,1,13,'1','64221484112050','attachment/2017/01/11/64221484112050.jpg','jpg',1484112050,106826,'admin','',''),
	(15,1,13,'向军','13761484112110','attachment/2017/01/11/13761484112110.jpeg','jpeg',1484112110,150349,'admin','',''),
	(16,1,13,'13848593','52951484151583','attachment/2017/01/12/52951484151583.png','png',1484151583,24423,'admin','',''),
	(17,1,13,'qrcode_for_gh_65598c47b2b9_430','20381484576124','attachment/2017/01/16/20381484576124.jpg','jpg',1484576124,41178,'admin','',''),
	(18,1,13,'1','75641484588324','attachment/2017/01/17/75641484588324.jpg','jpg',1484588324,106826,'admin','wechat',''),
	(19,1,13,'1','91711484588580','attachment/2017/01/17/91711484588580.jpg','jpg',1484588580,106826,'admin','',''),
	(20,1,13,'向军','19351484588594','attachment/2017/01/17/19351484588594.jpeg','jpeg',1484588594,150349,'admin','',''),
	(21,1,13,'向军-small','86581484588663','attachment/2017/01/17/86581484588663.jpg','jpg',1484588663,56216,'admin','',''),
	(22,1,13,'后盾人桌面壁纸','1661484588709','attachment/2017/01/17/1661484588709.png','png',1484588709,130921,'admin','',''),
	(23,1,13,'1','10161484588738','attachment/2017/01/17/10161484588738.jpg','jpg',1484588738,106826,'admin','',''),
	(24,1,13,'13848593 (1)','33401484742012','attachment/2017/01/18/33401484742012.png','png',1484742012,24423,'admin','',''),
	(25,1,13,'1','6401484745051','attachment/2017/01/18/6401484745051.jpg','jpg',1484745051,106826,'admin','','');

/*!40000 ALTER TABLE `hd_attachment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hd_balance
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_balance`;

CREATE TABLE `hd_balance` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` int(10) unsigned NOT NULL,
  `uid` int(11) NOT NULL COMMENT '会员编号',
  `tid` varchar(80) NOT NULL,
  `fee` decimal(10,2) NOT NULL COMMENT '金额',
  `status` tinyint(1) NOT NULL COMMENT '状态 0 等待支付 1 支付成功',
  `createtime` int(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`bid`),
  KEY `siteid` (`siteid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员余额充值';



# Dump of table hd_button
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_button`;

CREATE TABLE `hd_button` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `data` varchar(2000) NOT NULL DEFAULT '' COMMENT '菜单数据',
  `createtime` int(10) NOT NULL COMMENT '创建时间',
  `status` tinyint(1) NOT NULL COMMENT '1 在微信生效 0 不在微信生效',
  `siteid` int(11) NOT NULL COMMENT '站点编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信菜单';

LOCK TABLES `hd_button` WRITE;
/*!40000 ALTER TABLE `hd_button` DISABLE KEYS */;

INSERT INTO `hd_button` (`id`, `title`, `data`, `createtime`, `status`, `siteid`)
VALUES
	(1,'默认','{\"button\":[{\"type\":\"view\",\"name\":\"菜单名称\",\"url\":\"\",\"sub_button\":[{\"type\":\"click\",\"name\":\"公众号正在维护\",\"url\":\"\",\"sub_button\":[],\"key\":\"a\"}]}]}',1484692360,1,13);

/*!40000 ALTER TABLE `hd_button` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hd_cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_cache`;

CREATE TABLE `hd_cache` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL DEFAULT '' COMMENT '标识名称',
  `data` mediumtext NOT NULL COMMENT '数据',
  `create_at` int(10) NOT NULL COMMENT '创建时间',
  `expire` int(10) NOT NULL COMMENT '过期时间',
  `siteid` int(11) NOT NULL COMMENT '站点编号 -1为系统配置0为无效 正数为站点编号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `hd_cache` WRITE;
/*!40000 ALTER TABLE `hd_cache` DISABLE KEYS */;

INSERT INTO `hd_cache` (`id`, `name`, `data`, `create_at`, `expire`, `siteid`)
VALUES
	(39,'a','i:9999;',1483870970,0,0),
	(9,'modules:19','a:22:{i:0;a:19:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:24:\"和您进行简单对话\";s:6:\"detail\";s:156:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 将回复文字或链接给用户\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:1:{i:0;s:4:\"text\";}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:1;a:19:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:33:\"为你提供生动的图文资讯\";s:6:\"detail\";s:156:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 将回复文字或链接给用户\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:1:{i:0;s:4:\"text\";}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:2;a:19:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:7:\"article\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"文章系统\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:33:\"发布文章与会员中心管理\";s:6:\"detail\";s:105:\"支持桌面、移动、微信三网的文章系统，同时具有移动、桌面会员中心管理功能\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:3;a:19:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"setting\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"网站配置\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:24:\"网站运行整体配置\";s:6:\"detail\";s:81:\"网站运行配置项，如支付、邮箱、登录等等的全局配置项管理\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:4;a:19:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:6:\"member\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"会员粉丝\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:12:\"会员管理\";s:6:\"detail\";s:75:\"会员与会员组管理，如会员字段，粉丝管理、会员卡设置\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:5;a:19:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:7:\"special\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:18:\"微信默认消息\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:18:\"微信默认消息\";s:6:\"detail\";s:45:\"系统默认消息与关注微信消息处理\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:6;a:19:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"ticket\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"卡券管理\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:18:\"会员卡券管理\";s:6:\"detail\";s:45:\"会员优惠券、代金券、实物券管理\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:7;a:19:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"cover\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"封面回复\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:18:\"封面消息回复\";s:6:\"detail\";s:33:\"用来处理模块的封面消息\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:1:{i:0;s:4:\"text\";}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.png\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:8;a:19:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:2:\"uc\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"会员中心\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:27:\"会员中心的管理操作\";s:6:\"detail\";s:81:\"会员信息的管理，包括收货地址、个人资料、会员卡券等管理\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.png\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:9;a:19:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:6:\"button\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"微信菜单\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:18:\"微信菜单管理\";s:6:\"detail\";s:102:\"用于添加微信菜单，更新菜单后需要取消关注再关注或等微信更新缓存后有效\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:10;a:19:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:8:\"material\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"微信素材\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:12:\"微信素材\";s:6:\"detail\";s:186:\"公众号经常有需要用到一些临时性的多媒体素材的场景，例如在使用接口特别是发送消息时，对多媒体文件、多媒体消息的获取和调用等操作\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:11;a:19:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:24:\"和您进行简单对话\";s:6:\"detail\";s:156:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 将回复文字或链接给用户\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:1:{i:0;s:4:\"text\";}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:12;a:19:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:33:\"为你提供生动的图文资讯\";s:6:\"detail\";s:156:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 将回复文字或链接给用户\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:1:{i:0;s:4:\"text\";}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:13;a:19:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:7:\"article\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"文章系统\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:33:\"发布文章与会员中心管理\";s:6:\"detail\";s:105:\"支持桌面、移动、微信三网的文章系统，同时具有移动、桌面会员中心管理功能\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:14;a:19:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"setting\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"网站配置\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:24:\"网站运行整体配置\";s:6:\"detail\";s:81:\"网站运行配置项，如支付、邮箱、登录等等的全局配置项管理\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:15;a:19:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:6:\"member\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"会员粉丝\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:12:\"会员管理\";s:6:\"detail\";s:75:\"会员与会员组管理，如会员字段，粉丝管理、会员卡设置\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:16;a:19:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:7:\"special\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:18:\"微信默认消息\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:18:\"微信默认消息\";s:6:\"detail\";s:45:\"系统默认消息与关注微信消息处理\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:17;a:19:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"ticket\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"卡券管理\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:18:\"会员卡券管理\";s:6:\"detail\";s:45:\"会员优惠券、代金券、实物券管理\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:18;a:19:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"cover\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"封面回复\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:18:\"封面消息回复\";s:6:\"detail\";s:33:\"用来处理模块的封面消息\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:1:{i:0;s:4:\"text\";}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.png\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:19;a:19:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:2:\"uc\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"会员中心\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:27:\"会员中心的管理操作\";s:6:\"detail\";s:81:\"会员信息的管理，包括收货地址、个人资料、会员卡券等管理\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.png\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:20;a:19:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:6:\"button\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"微信菜单\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:18:\"微信菜单管理\";s:6:\"detail\";s:102:\"用于添加微信菜单，更新菜单后需要取消关注再关注或等微信更新缓存后有效\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}i:21;a:19:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:8:\"material\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"微信素材\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:12:\"微信素材\";s:6:\"detail\";s:186:\"公众号经常有需要用到一些临时性的多媒体素材的场景，例如在使用接口特别是发送消息时，对多媒体文件、多媒体消息的获取和调用等操作\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:21:\"http://open.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:5:\"cover\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";}}',1483809966,0,0),
	(6,'wechat:19','a:0:{}',1483809966,0,0),
	(7,'site:19','a:8:{s:6:\"siteid\";s:2:\"19\";s:4:\"name\";s:9:\"sdfsdffsd\";s:4:\"weid\";s:1:\"0\";s:11:\"allfilesize\";s:3:\"200\";s:10:\"createtime\";s:10:\"1483809966\";s:11:\"description\";s:3:\"sdf\";s:6:\"domain\";s:0:\"\";s:6:\"module\";s:0:\"\";}',1483809966,0,0),
	(8,'setting:19','a:5:{s:11:\"creditnames\";b:0;s:15:\"creditbehaviors\";b:0;s:8:\"register\";b:0;s:4:\"smtp\";b:0;s:3:\"pay\";b:0;}',1483809966,0,0),
	(40,'a:SITEID','i:9999;',1483871030,0,0),
	(41,'e:SITEID','i:9999;',1483871044,0,0),
	(1002,'modules:13:13','a:16:{s:5:\"basic\";a:19:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:24:\"和您进行简单对话\";s:6:\"detail\";s:156:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 将回复文字或链接给用户\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:1:{s:4:\"text\";b:1;}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:4:\"news\";a:19:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:33:\"为你提供生动的图文资讯\";s:6:\"detail\";s:156:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 将回复文字或链接给用户\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:1:{s:4:\"text\";b:1;}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:7:\"article\";a:19:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:7:\"article\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"文章系统\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:33:\"发布文章与会员中心管理\";s:6:\"detail\";s:105:\"支持桌面、移动、微信三网的文章系统，同时具有移动、桌面会员中心管理功能\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:7:\"setting\";a:19:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"setting\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"网站配置\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:24:\"网站运行整体配置\";s:6:\"detail\";s:81:\"网站运行配置项，如支付、邮箱、登录等等的全局配置项管理\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:6:\"member\";a:19:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:6:\"member\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"会员粉丝\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:12:\"会员管理\";s:6:\"detail\";s:75:\"会员与会员组管理，如会员字段，粉丝管理、会员卡设置\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:1:{s:9:\"subscribe\";b:1;}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:7:\"special\";a:19:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:7:\"special\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:18:\"微信默认消息\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:18:\"微信默认消息\";s:6:\"detail\";s:45:\"系统默认消息与关注微信消息处理\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:6:\"ticket\";a:19:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"ticket\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"卡券管理\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:18:\"会员卡券管理\";s:6:\"detail\";s:45:\"会员优惠券、代金券、实物券管理\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:5:\"cover\";a:19:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"cover\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"封面回复\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:18:\"封面消息回复\";s:6:\"detail\";s:33:\"用来处理模块的封面消息\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:1:{s:4:\"text\";b:1;}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.png\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:2:\"uc\";a:19:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:2:\"uc\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"会员中心\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:27:\"会员中心的管理操作\";s:6:\"detail\";s:81:\"会员信息的管理，包括收货地址、个人资料、会员卡券等管理\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.png\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:6:\"button\";a:19:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:6:\"button\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"微信菜单\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:18:\"微信菜单管理\";s:6:\"detail\";s:102:\"用于添加微信菜单，更新菜单后需要取消关注再关注或等微信更新缓存后有效\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:8:\"material\";a:19:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:8:\"material\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"微信素材\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:12:\"微信素材\";s:6:\"detail\";s:186:\"公众号经常有需要用到一些临时性的多媒体素材的场景，例如在使用接口特别是发送消息时，对多媒体文件、多媒体消息的获取和调用等操作\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:7:\"ucenter\";a:19:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:7:\"ucenter\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"会员中心\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:24:\"会员中心管理模块\";s:6:\"detail\";s:54:\"提供移动端与桌面端的会员中心操作功能\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:8:\"navigate\";a:19:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:8:\"navigate\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"菜单管理\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:30:\"页面中的相关菜单设置\";s:6:\"detail\";s:93:\"提供桌面会员中心、移动端会员中心菜单、移动端首页快捷菜单等功能\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:4:\"link\";a:19:{s:3:\"mid\";s:2:\"14\";s:4:\"name\";s:4:\"link\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"链接管理\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:24:\"管理站点中的链接\";s:6:\"detail\";s:63:\"主要用在调用链接组件，选择链接等功能时使用\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:6:\"wechat\";a:19:{s:3:\"mid\";s:2:\"15\";s:4:\"name\";s:6:\"wechat\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:18:\"微信接口对接\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:30:\"与微信服务器沟通接口\";s:6:\"detail\";s:81:\"接收微信服务器发送来的所有消息，并找到相关模块进行处理\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:3:\"tom\";a:20:{s:3:\"mid\";s:5:\"10000\";s:4:\"name\";s:3:\"tom\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:3:\"tom\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:6:\"resume\";s:6:\"detail\";s:6:\"detail\";s:6:\"author\";s:6:\"author\";s:3:\"url\";s:3:\"url\";s:9:\"is_system\";s:1:\"0\";s:10:\"subscribes\";a:13:{s:4:\"text\";b:1;s:5:\"image\";b:1;s:5:\"voice\";b:1;s:5:\"video\";b:1;s:10:\"shortvideo\";b:1;s:8:\"location\";b:1;s:4:\"link\";b:1;s:9:\"subscribe\";b:1;s:11:\"unsubscribe\";b:1;s:4:\"scan\";b:1;s:5:\"track\";b:1;s:5:\"click\";b:1;s:4:\"view\";b:1;}s:10:\"processors\";a:13:{s:4:\"text\";b:1;s:5:\"image\";b:1;s:5:\"voice\";b:1;s:5:\"video\";b:1;s:10:\"shortvideo\";b:1;s:8:\"location\";b:1;s:4:\"link\";b:1;s:9:\"subscribe\";b:1;s:11:\"unsubscribe\";b:1;s:4:\"scan\";b:1;s:5:\"track\";b:1;s:5:\"click\";b:1;s:4:\"view\";b:1;}s:7:\"setting\";s:1:\"1\";s:4:\"rule\";s:1:\"1\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:0:\"\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";s:7:\"budings\";a:6:{s:3:\"web\";a:1:{i:0;a:9:{s:3:\"bid\";s:2:\"50\";s:6:\"module\";s:3:\"tom\";s:5:\"entry\";s:3:\"web\";s:5:\"title\";s:18:\"桌面入口导航\";s:10:\"controller\";s:0:\"\";s:2:\"do\";s:12:\"zuomianrukou\";s:3:\"url\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:7:\"orderby\";s:1:\"0\";}}s:6:\"member\";a:1:{i:0;a:9:{s:3:\"bid\";s:2:\"51\";s:6:\"module\";s:3:\"tom\";s:5:\"entry\";s:6:\"member\";s:5:\"title\";s:18:\"桌面会员中心\";s:10:\"controller\";s:0:\"\";s:2:\"do\";s:13:\"zuomianmember\";s:3:\"url\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:7:\"orderby\";s:1:\"0\";}}s:4:\"home\";a:1:{i:0;a:9:{s:3:\"bid\";s:2:\"52\";s:6:\"module\";s:3:\"tom\";s:5:\"entry\";s:4:\"home\";s:5:\"title\";s:21:\"移动端首页导航\";s:10:\"controller\";s:0:\"\";s:2:\"do\";s:11:\"mobilesouye\";s:3:\"url\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:7:\"orderby\";s:1:\"0\";}}s:7:\"profile\";a:1:{i:0;a:9:{s:3:\"bid\";s:2:\"53\";s:6:\"module\";s:3:\"tom\";s:5:\"entry\";s:7:\"profile\";s:5:\"title\";s:21:\"移动端会员中心\";s:10:\"controller\";s:0:\"\";s:2:\"do\";s:12:\"mobilemember\";s:3:\"url\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:7:\"orderby\";s:1:\"0\";}}s:5:\"cover\";a:2:{i:0;a:9:{s:3:\"bid\";s:2:\"54\";s:6:\"module\";s:3:\"tom\";s:5:\"entry\";s:5:\"cover\";s:5:\"title\";s:13:\"功能封面1\";s:10:\"controller\";s:0:\"\";s:2:\"do\";s:9:\"fengmian1\";s:3:\"url\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:7:\"orderby\";s:1:\"0\";}i:1;a:9:{s:3:\"bid\";s:2:\"55\";s:6:\"module\";s:3:\"tom\";s:5:\"entry\";s:5:\"cover\";s:5:\"title\";s:13:\"功能封面2\";s:10:\"controller\";s:0:\"\";s:2:\"do\";s:9:\"fengmian2\";s:3:\"url\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:7:\"orderby\";s:1:\"0\";}}s:8:\"business\";a:1:{i:0;a:9:{s:3:\"bid\";s:2:\"56\";s:6:\"module\";s:3:\"tom\";s:5:\"entry\";s:8:\"business\";s:5:\"title\";s:15:\"控制器动作\";s:10:\"controller\";s:8:\"business\";s:2:\"do\";s:6:\"action\";s:3:\"url\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:7:\"orderby\";s:1:\"0\";}}}}}',1484844801,0,13),
	(1006,'modules:13','a:16:{s:5:\"basic\";a:19:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:24:\"和您进行简单对话\";s:6:\"detail\";s:156:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 将回复文字或链接给用户\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:1:{s:4:\"text\";b:1;}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:4:\"news\";a:19:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:33:\"为你提供生动的图文资讯\";s:6:\"detail\";s:156:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 将回复文字或链接给用户\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:1:{s:4:\"text\";b:1;}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:7:\"article\";a:19:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:7:\"article\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"文章系统\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:33:\"发布文章与会员中心管理\";s:6:\"detail\";s:105:\"支持桌面、移动、微信三网的文章系统，同时具有移动、桌面会员中心管理功能\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:7:\"setting\";a:19:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"setting\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"网站配置\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:24:\"网站运行整体配置\";s:6:\"detail\";s:81:\"网站运行配置项，如支付、邮箱、登录等等的全局配置项管理\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:6:\"member\";a:19:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:6:\"member\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"会员粉丝\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:12:\"会员管理\";s:6:\"detail\";s:75:\"会员与会员组管理，如会员字段，粉丝管理、会员卡设置\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:1:{s:9:\"subscribe\";b:1;}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:7:\"special\";a:19:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:7:\"special\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:18:\"微信默认消息\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:18:\"微信默认消息\";s:6:\"detail\";s:45:\"系统默认消息与关注微信消息处理\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:6:\"ticket\";a:19:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"ticket\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"卡券管理\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:18:\"会员卡券管理\";s:6:\"detail\";s:45:\"会员优惠券、代金券、实物券管理\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:5:\"cover\";a:19:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"cover\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"封面回复\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:18:\"封面消息回复\";s:6:\"detail\";s:33:\"用来处理模块的封面消息\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:1:{s:4:\"text\";b:1;}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.png\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:2:\"uc\";a:19:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:2:\"uc\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"会员中心\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:27:\"会员中心的管理操作\";s:6:\"detail\";s:81:\"会员信息的管理，包括收货地址、个人资料、会员卡券等管理\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.png\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:6:\"button\";a:19:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:6:\"button\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"微信菜单\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:18:\"微信菜单管理\";s:6:\"detail\";s:102:\"用于添加微信菜单，更新菜单后需要取消关注再关注或等微信更新缓存后有效\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:8:\"material\";a:19:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:8:\"material\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"微信素材\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:12:\"微信素材\";s:6:\"detail\";s:186:\"公众号经常有需要用到一些临时性的多媒体素材的场景，例如在使用接口特别是发送消息时，对多媒体文件、多媒体消息的获取和调用等操作\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:7:\"ucenter\";a:19:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:7:\"ucenter\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"会员中心\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:24:\"会员中心管理模块\";s:6:\"detail\";s:54:\"提供移动端与桌面端的会员中心操作功能\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:8:\"navigate\";a:19:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:8:\"navigate\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"菜单管理\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:30:\"页面中的相关菜单设置\";s:6:\"detail\";s:93:\"提供桌面会员中心、移动端会员中心菜单、移动端首页快捷菜单等功能\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:4:\"link\";a:19:{s:3:\"mid\";s:2:\"14\";s:4:\"name\";s:4:\"link\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:12:\"链接管理\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:24:\"管理站点中的链接\";s:6:\"detail\";s:63:\"主要用在调用链接组件，选择链接等功能时使用\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:6:\"wechat\";a:19:{s:3:\"mid\";s:2:\"15\";s:4:\"name\";s:6:\"wechat\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:18:\"微信接口对接\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:30:\"与微信服务器沟通接口\";s:6:\"detail\";s:81:\"接收微信服务器发送来的所有消息，并找到相关模块进行处理\";s:6:\"author\";s:6:\"后盾\";s:3:\"url\";s:20:\"http://www.hdcms.com\";s:9:\"is_system\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:10:\"processors\";a:0:{}s:7:\"setting\";s:1:\"0\";s:4:\"rule\";s:1:\"0\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:9:\"cover.jpg\";s:8:\"locality\";s:1:\"0\";s:11:\"releaseCode\";s:0:\"\";}s:3:\"tom\";a:20:{s:3:\"mid\";s:5:\"10000\";s:4:\"name\";s:3:\"tom\";s:8:\"industry\";s:8:\"business\";s:5:\"title\";s:3:\"tom\";s:7:\"version\";s:3:\"1.0\";s:6:\"resume\";s:6:\"resume\";s:6:\"detail\";s:6:\"detail\";s:6:\"author\";s:6:\"author\";s:3:\"url\";s:3:\"url\";s:9:\"is_system\";s:1:\"0\";s:10:\"subscribes\";a:13:{s:4:\"text\";b:1;s:5:\"image\";b:1;s:5:\"voice\";b:1;s:5:\"video\";b:1;s:10:\"shortvideo\";b:1;s:8:\"location\";b:1;s:4:\"link\";b:1;s:9:\"subscribe\";b:1;s:11:\"unsubscribe\";b:1;s:4:\"scan\";b:1;s:5:\"track\";b:1;s:5:\"click\";b:1;s:4:\"view\";b:1;}s:10:\"processors\";a:13:{s:4:\"text\";b:1;s:5:\"image\";b:1;s:5:\"voice\";b:1;s:5:\"video\";b:1;s:10:\"shortvideo\";b:1;s:8:\"location\";b:1;s:4:\"link\";b:1;s:9:\"subscribe\";b:1;s:11:\"unsubscribe\";b:1;s:4:\"scan\";b:1;s:5:\"track\";b:1;s:5:\"click\";b:1;s:4:\"view\";b:1;}s:7:\"setting\";s:1:\"1\";s:4:\"rule\";s:1:\"1\";s:11:\"permissions\";a:0:{}s:5:\"thumb\";s:9:\"thumb.jpg\";s:7:\"preview\";s:0:\"\";s:8:\"locality\";s:1:\"1\";s:11:\"releaseCode\";s:0:\"\";s:7:\"budings\";a:6:{s:3:\"web\";a:1:{i:0;a:9:{s:3:\"bid\";s:2:\"50\";s:6:\"module\";s:3:\"tom\";s:5:\"entry\";s:3:\"web\";s:5:\"title\";s:18:\"桌面入口导航\";s:10:\"controller\";s:0:\"\";s:2:\"do\";s:12:\"zuomianrukou\";s:3:\"url\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:7:\"orderby\";s:1:\"0\";}}s:6:\"member\";a:1:{i:0;a:9:{s:3:\"bid\";s:2:\"51\";s:6:\"module\";s:3:\"tom\";s:5:\"entry\";s:6:\"member\";s:5:\"title\";s:18:\"桌面会员中心\";s:10:\"controller\";s:0:\"\";s:2:\"do\";s:13:\"zuomianmember\";s:3:\"url\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:7:\"orderby\";s:1:\"0\";}}s:4:\"home\";a:1:{i:0;a:9:{s:3:\"bid\";s:2:\"52\";s:6:\"module\";s:3:\"tom\";s:5:\"entry\";s:4:\"home\";s:5:\"title\";s:21:\"移动端首页导航\";s:10:\"controller\";s:0:\"\";s:2:\"do\";s:11:\"mobilesouye\";s:3:\"url\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:7:\"orderby\";s:1:\"0\";}}s:7:\"profile\";a:1:{i:0;a:9:{s:3:\"bid\";s:2:\"53\";s:6:\"module\";s:3:\"tom\";s:5:\"entry\";s:7:\"profile\";s:5:\"title\";s:21:\"移动端会员中心\";s:10:\"controller\";s:0:\"\";s:2:\"do\";s:12:\"mobilemember\";s:3:\"url\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:7:\"orderby\";s:1:\"0\";}}s:5:\"cover\";a:2:{i:0;a:9:{s:3:\"bid\";s:2:\"54\";s:6:\"module\";s:3:\"tom\";s:5:\"entry\";s:5:\"cover\";s:5:\"title\";s:13:\"功能封面1\";s:10:\"controller\";s:0:\"\";s:2:\"do\";s:9:\"fengmian1\";s:3:\"url\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:7:\"orderby\";s:1:\"0\";}i:1;a:9:{s:3:\"bid\";s:2:\"55\";s:6:\"module\";s:3:\"tom\";s:5:\"entry\";s:5:\"cover\";s:5:\"title\";s:13:\"功能封面2\";s:10:\"controller\";s:0:\"\";s:2:\"do\";s:9:\"fengmian2\";s:3:\"url\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:7:\"orderby\";s:1:\"0\";}}s:8:\"business\";a:1:{i:0;a:9:{s:3:\"bid\";s:2:\"56\";s:6:\"module\";s:3:\"tom\";s:5:\"entry\";s:8:\"business\";s:5:\"title\";s:15:\"控制器动作\";s:10:\"controller\";s:8:\"business\";s:2:\"do\";s:6:\"action\";s:3:\"url\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:7:\"orderby\";s:1:\"0\";}}}}}',1484844801,0,0),
	(1003,'wechat:13','a:13:{s:4:\"weid\";s:1:\"1\";s:6:\"siteid\";s:2:\"13\";s:6:\"wename\";s:6:\"后盾\";s:7:\"account\";s:8:\"aihoudun\";s:8:\"original\";s:15:\"gh_65598c47b2b9\";s:5:\"level\";s:1:\"4\";s:5:\"appid\";s:18:\"wxc47243ed572e273d\";s:9:\"appsecret\";s:32:\"af4a6cae06eb0ebab1b65ffbf49554a4\";s:6:\"qrcode\";s:40:\"attachment/2017/01/16/20381484576124.jpg\";s:4:\"icon\";s:40:\"attachment/2017/01/12/52951484151583.png\";s:10:\"is_connect\";s:1:\"1\";s:5:\"token\";s:18:\"9b790164e573e4d1b2\";s:14:\"encodingaeskey\";s:43:\"9b790164e573e4d1b2ff34c6db96e5d69b790164e57\";}',1484844801,0,0),
	(1004,'site:13','a:8:{s:6:\"siteid\";s:2:\"13\";s:4:\"name\";s:6:\"测试\";s:4:\"weid\";s:1:\"1\";s:11:\"allfilesize\";s:3:\"200\";s:10:\"createtime\";s:10:\"1483872635\";s:11:\"description\";s:6:\"测试\";s:6:\"domain\";s:0:\"\";s:6:\"module\";s:0:\"\";}',1484844801,0,0),
	(1005,'setting:13','a:11:{s:2:\"id\";s:2:\"14\";s:6:\"siteid\";s:2:\"13\";s:10:\"grouplevel\";s:1:\"1\";s:16:\"default_template\";s:1:\"1\";s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:6:\"status\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:6:\"status\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:6:\"status\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:6:\"status\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:6:\"status\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit2\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:30:\"感谢加入后盾人大家庭\";s:15:\"default_message\";s:67:\"/冷汗你说的我不明白。 可以咨询古老师：13910959565\";s:8:\"register\";a:2:{s:8:\"focusreg\";s:1:\"0\";s:4:\"item\";s:1:\"3\";}s:4:\"smtp\";a:9:{s:4:\"host\";s:9:\"localhost\";s:4:\"port\";s:0:\"\";s:3:\"ssl\";s:1:\"0\";s:8:\"username\";s:5:\"admin\";s:8:\"password\";s:8:\"admin888\";s:8:\"fromname\";s:0:\"\";s:8:\"frommail\";s:0:\"\";s:7:\"testing\";s:1:\"1\";s:12:\"testusername\";s:0:\"\";}s:3:\"pay\";a:1:{s:7:\"weichat\";a:10:{s:4:\"open\";s:1:\"1\";s:7:\"version\";s:1:\"1\";s:6:\"mch_id\";s:0:\"\";s:3:\"key\";s:0:\"\";s:9:\"partnerid\";s:0:\"\";s:10:\"partnerkey\";s:0:\"\";s:10:\"paysignkey\";s:0:\"\";s:14:\"apiclient_cert\";s:0:\"\";s:13:\"apiclient_key\";s:0:\"\";s:6:\"rootca\";s:0:\"\";}}}',1484844801,0,0);

/*!40000 ALTER TABLE `hd_cache` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hd_cloud
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_cloud`;

CREATE TABLE `hd_cloud` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '云帐号用户编号',
  `username` varchar(30) NOT NULL COMMENT '帐号',
  `webname` varchar(200) NOT NULL DEFAULT '' COMMENT '网站名称',
  `AppSecret` varchar(50) NOT NULL DEFAULT '' COMMENT '应用密钥',
  `versionCode` char(30) NOT NULL DEFAULT '' COMMENT '版本',
  `releaseCode` char(16) NOT NULL DEFAULT '' COMMENT '发行版本，补丁版本',
  `createtime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `status` tinyint(1) unsigned NOT NULL COMMENT '与云平台绑定状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='HDCMS版本信息';



# Dump of table hd_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_config`;

CREATE TABLE `hd_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `site` text NOT NULL COMMENT '网站开启/登录等设置',
  `register` text NOT NULL COMMENT '注册配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统配置';

LOCK TABLES `hd_config` WRITE;
/*!40000 ALTER TABLE `hd_config` DISABLE KEYS */;

INSERT INTO `hd_config` (`id`, `site`, `register`)
VALUES
	(1,'{\"is_open\":\"1\",\"enable_code\":\"0\",\"close_message\":\"网站维护中,请稍候访问\",\"upload\":{\"size\":20000,\"type\":\"jpg,jpeg,gif,png,zip,rar,doc,txt,pem\"}}','{\"is_open\":\"1\",\"audit\":\"0\",\"enable_code\":\"0\",\"groupid\":\"1\"}');

/*!40000 ALTER TABLE `hd_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hd_core_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_core_config`;

CREATE TABLE `hd_core_config` (
  `key` varchar(100) NOT NULL COMMENT '配置名称',
  `value` text NOT NULL COMMENT '配置项',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置';



# Dump of table hd_credits_record
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_credits_record`;

CREATE TABLE `hd_credits_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` int(10) unsigned NOT NULL COMMENT '站点编号',
  `uid` int(11) NOT NULL COMMENT '用户编号',
  `credittype` varchar(45) NOT NULL COMMENT '积分类型',
  `num` decimal(10,2) NOT NULL COMMENT '数量',
  `operator` int(10) unsigned NOT NULL COMMENT '操作者编号',
  `module` varchar(45) NOT NULL COMMENT '模块名',
  `createtime` int(10) NOT NULL COMMENT '创建时间',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`),
  KEY `uid` (`uid`),
  KEY `operator` (`operator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='积分变动记录';

LOCK TABLES `hd_credits_record` WRITE;
/*!40000 ALTER TABLE `hd_credits_record` DISABLE KEYS */;

INSERT INTO `hd_credits_record` (`id`, `siteid`, `uid`, `credittype`, `num`, `operator`, `module`, `createtime`, `remark`)
VALUES
	(1,13,1,'',0.00,1,'member',1484631263,'dd'),
	(2,13,1,'',0.00,1,'member',1484631281,'ddfs'),
	(3,13,1,'credit1',0.00,1,'member',1484631491,'ddds'),
	(4,13,1,'credit1',33.00,1,'member',1484631523,'dsdsds'),
	(5,13,1,'credit2',33.00,1,'member',1484650776,'ssds'),
	(6,13,1,'credit1',0.00,1,'member',1484732176,'测试'),
	(7,13,1,'credit1',0.00,1,'member',1484732191,''),
	(8,13,1,'credit1',0.00,1,'member',1484732255,''),
	(9,13,1,'credit1',0.00,1,'member',1484732451,''),
	(10,13,1,'credit1',0.00,1,'member',1484732558,''),
	(11,13,1,'credit1',0.00,1,'member',1484732614,''),
	(12,13,1,'credit1',0.00,1,'member',1484732622,''),
	(13,13,1,'credit1',0.00,1,'member',1484732870,''),
	(14,13,1,'credit1',11.00,1,'member',1484732879,''),
	(15,13,1,'credit1',3.00,1,'member',1484732888,''),
	(16,13,1,'credit1',10.00,1,'member',1484733042,''),
	(17,13,1,'credit1',-20.00,1,'member',1484733091,''),
	(18,13,1,'credit1',-200.00,1,'member',1484733102,'');

/*!40000 ALTER TABLE `hd_credits_record` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hd_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_log`;

CREATE TABLE `hd_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(30) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `record_time` int(10) unsigned DEFAULT NULL,
  `siteid` int(11) unsigned DEFAULT NULL,
  `system_module` tinyint(1) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `hd_log` WRITE;
/*!40000 ALTER TABLE `hd_log` DISABLE KEYS */;

INSERT INTO `hd_log` (`id`, `uid`, `content`, `record_time`, `siteid`, `system_module`, `url`)
VALUES
	(1,0,'添加站点操作员',1483891970,13,1,'http://localhost/hdcms/admin.php?s=system/permission/addOperator&siteid=13'),
	(2,0,'更改了站点管理员角色类型',1483892031,13,1,'http://localhost/hdcms/admin.php?s=system/permission/changeRole&siteid=13'),
	(3,0,'更改了站点管理员角色类型',1483892033,13,1,'http://localhost/hdcms/admin.php?s=system/permission/changeRole&siteid=13'),
	(4,0,'添加了新用户tom',1483893082,0,1,'http://localhost/hdcms/admin.php?s=system/user/add'),
	(5,0,'编辑了用户 [hdxj] 的个人资料',1483893393,0,1,'http://localhost/hdcms/admin.php?s=system/user/edit&uid=3'),
	(6,0,'编辑了用户 [hdxj] 的个人资料',1483893418,0,1,'http://localhost/hdcms/admin.php?s=system/user/edit&uid=3'),
	(7,1,'添加站点操作员',1483894529,13,1,'http://localhost/hdcms/admin.php?s=system/permission/addOperator&siteid=13'),
	(8,1,'更改了站点管理员角色类型',1483998560,13,1,'http://localhost/hdcms/admin.php?s=system/permission/changeRole&siteid=13');

/*!40000 ALTER TABLE `hd_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hd_material
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_material`;

CREATE TABLE `hd_material` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` char(10) NOT NULL DEFAULT '' COMMENT '图片（image）、语音（voice）、视频（video）news (图文)',
  `file` varchar(300) NOT NULL DEFAULT '' COMMENT '文件',
  `media_id` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(300) NOT NULL DEFAULT '' COMMENT '微信url',
  `siteid` int(11) NOT NULL COMMENT '站点编号',
  `createtime` int(10) NOT NULL COMMENT '创建时间',
  `status` tinyint(1) NOT NULL COMMENT '是否推送到微信',
  `data` text NOT NULL COMMENT '图文等JSON数据',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信素材';

LOCK TABLES `hd_material` WRITE;
/*!40000 ALTER TABLE `hd_material` DISABLE KEYS */;

INSERT INTO `hd_material` (`id`, `type`, `file`, `media_id`, `url`, `siteid`, `createtime`, `status`, `data`)
VALUES
	(5,'image','attachment/2017/01/11/13761484112110.jpeg','vwkQqqBXrV7ND7wUu-tCnDQfb8_zfM9oY0gVtEpfydc','http://mmbiz.qpic.cn/mmbiz_jpg/oTR6Ibw5zNGTJe9XL3S4Fvr98JVVYuE0OXc2CbOia2QmlRbB5gLW6PaPic6kBibfWwpuR2vZMF8Ujbcm1laQBvQxg/0?wx_fmt=jpeg',13,1484553384,1,''),
	(18,'image','attachment/2017/01/12/52951484151583.png','vwkQqqBXrV7ND7wUu-tCnIh5wQxq1a-VnFN3EwblItw','http://mmbiz.qpic.cn/mmbiz_png/oTR6Ibw5zNGTJe9XL3S4Fvr98JVVYuE00HDXmiaY4SMA1iaAVk37R11hNrzAFiamRh3aBJrxmFQP0XO0AOGu6ng2w/0?wx_fmt=png',13,1484583732,1,''),
	(20,'image','attachment/2017/01/16/20381484576124.jpg','vwkQqqBXrV7ND7wUu-tCnCs6Q5uhr0526v0K3qnz0jU','http://mmbiz.qpic.cn/mmbiz_jpg/oTR6Ibw5zNGTJe9XL3S4Fvr98JVVYuE0gJs8z4IyWIUMcoSL7INPKQYrwc3INxeR25nick4u3vtmpn1Qu94UvcA/0?wx_fmt=jpeg',13,1484583812,1,''),
	(21,'image','attachment/2017/01/09/15091483944881.jpg','vwkQqqBXrV7ND7wUu-tCnI_UP09UbM2fg-pDnxVTYYw','http://mmbiz.qpic.cn/mmbiz_jpg/oTR6Ibw5zNGTJe9XL3S4Fvr98JVVYuE0WrB3cejkV78U6RicFfibKUeEUJVJo9Gjfmd0nFrJndThB3AYXrV51o5A/0?wx_fmt=jpeg',13,1484583837,1,''),
	(22,'image','attachment/2017/01/11/64221484112050.jpg','vwkQqqBXrV7ND7wUu-tCnOCtX9tDP-hc9hYJEWmSBfw','http://mmbiz.qpic.cn/mmbiz_jpg/oTR6Ibw5zNGTJe9XL3S4Fvr98JVVYuE0WrB3cejkV78U6RicFfibKUeEUJVJo9Gjfmd0nFrJndThB3AYXrV51o5A/0?wx_fmt=jpeg',13,1484584096,1,''),
	(23,'image','attachment/2017/01/09/46671483909004.jpeg','vwkQqqBXrV7ND7wUu-tCnJFD1lHAGQbjBceudVUY1KU','http://mmbiz.qpic.cn/mmbiz_jpg/oTR6Ibw5zNGTJe9XL3S4Fvr98JVVYuE0OXc2CbOia2QmlRbB5gLW6PaPic6kBibfWwpuR2vZMF8Ujbcm1laQBvQxg/0?wx_fmt=jpeg',13,1484584237,1,''),
	(24,'image','attachment/2017/01/17/75641484588324.jpg','vwkQqqBXrV7ND7wUu-tCnCP-_Zg3NLnzqqUmBBsErg8','http://mmbiz.qpic.cn/mmbiz_jpg/oTR6Ibw5zNGTJe9XL3S4Fvr98JVVYuE0WrB3cejkV78U6RicFfibKUeEUJVJo9Gjfmd0nFrJndThB3AYXrV51o5A/0?wx_fmt=jpeg',13,1484588328,1,''),
	(25,'image','attachment/2017/01/17/91711484588580.jpg','vwkQqqBXrV7ND7wUu-tCnFofWKuflc3OAMDaMtgbplA','http://mmbiz.qpic.cn/mmbiz_jpg/oTR6Ibw5zNGTJe9XL3S4Fvr98JVVYuE0WrB3cejkV78U6RicFfibKUeEUJVJo9Gjfmd0nFrJndThB3AYXrV51o5A/0?wx_fmt=jpeg',13,1484588583,1,''),
	(26,'image','attachment/2017/01/17/19351484588594.jpeg','vwkQqqBXrV7ND7wUu-tCnPG-Jxp9gfGp45ogt-GhbFw','http://mmbiz.qpic.cn/mmbiz_jpg/oTR6Ibw5zNGTJe9XL3S4Fvr98JVVYuE0OXc2CbOia2QmlRbB5gLW6PaPic6kBibfWwpuR2vZMF8Ujbcm1laQBvQxg/0?wx_fmt=jpeg',13,1484588597,1,''),
	(27,'image','attachment/2017/01/17/86581484588663.jpg','vwkQqqBXrV7ND7wUu-tCnFW4SZi2LfWTC9rxnH9PFa8','http://mmbiz.qpic.cn/mmbiz_jpg/oTR6Ibw5zNGTJe9XL3S4Fvr98JVVYuE0CssITfVgbaMfUHpWZ2maqJbHCZvYcPZO9qywj8xvABnz3WyP1icNdzQ/0?wx_fmt=jpeg',13,1484588666,1,''),
	(28,'image','attachment/2017/01/17/1661484588709.png','vwkQqqBXrV7ND7wUu-tCnNyDbx9ItSBfQ1_XathBJQ0','http://mmbiz.qpic.cn/mmbiz_png/oTR6Ibw5zNGTJe9XL3S4Fvr98JVVYuE0Ukbrn9YrwTXaic81XAZp1G7TjELz9Y7zWsOlYpiaezdiaQb4Ck7MVFGSA/0?wx_fmt=png',13,1484588712,1,''),
	(29,'image','attachment/2017/01/17/10161484588738.jpg','vwkQqqBXrV7ND7wUu-tCnLlLf6rUJo98ob5uUuDlbI8','http://mmbiz.qpic.cn/mmbiz_jpg/oTR6Ibw5zNGTJe9XL3S4Fvr98JVVYuE0WrB3cejkV78U6RicFfibKUeEUJVJo9Gjfmd0nFrJndThB3AYXrV51o5A/0?wx_fmt=jpeg',13,1484588740,1,''),
	(33,'news','','vwkQqqBXrV7ND7wUu-tCnLyURhbFpcEJaw730LAe9Dg','',13,1484590688,1,'{\"articles\":[{\"title\":\"\\b你好中国\",\"thumb_media_id\":\"vwkQqqBXrV7ND7wUu-tCnLlLf6rUJo98ob5uUuDlbI8\",\"author\":\"测试\",\"digest\":\"dssdsd\",\"show_cover_pic\":1,\"content\":\"<p>大哥大s</p>\",\"content_source_url\":\"\",\"pic\":\"attachment/2017/01/17/10161484588738.jpg\"},{\"title\":\"22中华人民共和国\",\"thumb_media_id\":\"vwkQqqBXrV7ND7wUu-tCnNyDbx9ItSBfQ1_XathBJQ0\",\"author\":\"2\",\"digest\":\"ddsds\",\"show_cover_pic\":1,\"content\":\"<p>ddsdssdds</p>\",\"content_source_url\":\"\",\"pic\":\"attachment/2017/01/17/1661484588709.png\"}]}'),
	(34,'news','','vwkQqqBXrV7ND7wUu-tCnKBaTRpgKAWP4s2qLWKIC_E','',13,1484590697,1,'{\"articles\":[{\"title\":\"aaa向军\",\"thumb_media_id\":\"vwkQqqBXrV7ND7wUu-tCnLlLf6rUJo98ob5uUuDlbI8\",\"author\":\"测试\",\"digest\":\"aaa\",\"show_cover_pic\":1,\"content\":\"<p>aaaaaaa</p>\",\"content_source_url\":\"\",\"pic\":\"attachment/2017/01/17/10161484588738.jpg\"},{\"title\":\"dsdsds\",\"thumb_media_id\":\"vwkQqqBXrV7ND7wUu-tCnNyDbx9ItSBfQ1_XathBJQ0\",\"author\":\"ds\",\"digest\":\"dsdsds\",\"show_cover_pic\":1,\"content\":\"<p>sdfdsffds</p>\",\"content_source_url\":\"\",\"pic\":\"attachment/2017/01/17/1661484588709.png\"}]}');

/*!40000 ALTER TABLE `hd_material` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hd_member
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_member`;

CREATE TABLE `hd_member` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` int(10) unsigned NOT NULL COMMENT '站点编号',
  `mobile` varchar(11) NOT NULL COMMENT '手机号码',
  `email` varchar(45) NOT NULL COMMENT '邮箱',
  `password` varchar(45) NOT NULL COMMENT '密码',
  `openid` varchar(80) NOT NULL DEFAULT '' COMMENT '微信openid',
  `security` varchar(15) NOT NULL COMMENT '安装密钥',
  `access_token` char(100) NOT NULL DEFAULT '' COMMENT '登录授权的access_token',
  `group_id` int(10) unsigned NOT NULL COMMENT '会员组编号',
  `icon` varchar(300) NOT NULL DEFAULT '' COMMENT '头像',
  `credit1` decimal(10,2) NOT NULL COMMENT '积分',
  `credit2` decimal(10,2) NOT NULL COMMENT '余额',
  `credit3` decimal(10,2) NOT NULL,
  `credit4` decimal(10,2) NOT NULL,
  `credit5` decimal(10,2) NOT NULL,
  `credit6` decimal(10,2) NOT NULL,
  `createtime` int(10) NOT NULL COMMENT '创建时间',
  `qq` varchar(15) NOT NULL DEFAULT '' COMMENT 'QQ号',
  `realname` varchar(15) NOT NULL COMMENT '真实姓名',
  `nickname` varchar(45) NOT NULL COMMENT '昵称',
  `telephone` varchar(15) NOT NULL COMMENT '固定电话',
  `vip` tinyint(3) unsigned NOT NULL COMMENT 'VIP级别',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `zipcode` varchar(10) NOT NULL COMMENT '邮编',
  `alipay` varchar(45) NOT NULL COMMENT '阿里帐号',
  `msn` varchar(45) NOT NULL COMMENT 'msn帐号',
  `taobao` varchar(45) NOT NULL COMMENT '淘宝帐号',
  `site` varchar(45) NOT NULL COMMENT '个人站点',
  `nationality` varchar(45) NOT NULL COMMENT '国籍',
  `introduce` varchar(200) NOT NULL COMMENT '自我介绍',
  `gender` tinyint(1) NOT NULL COMMENT '性别',
  `graduateschool` varchar(45) NOT NULL COMMENT '毕业学校',
  `height` varchar(10) NOT NULL COMMENT '身高',
  `weight` varchar(10) NOT NULL COMMENT '体重',
  `bloodtype` varchar(5) NOT NULL COMMENT '血型',
  `birthyear` int(10) unsigned NOT NULL COMMENT '出生年',
  `birthmonth` tinyint(3) unsigned NOT NULL COMMENT '出生月',
  `birthday` tinyint(3) unsigned NOT NULL COMMENT '出生日',
  `resideprovince` varchar(30) NOT NULL DEFAULT '' COMMENT '户籍省',
  `residecity` varchar(30) NOT NULL DEFAULT '' COMMENT '户籍市',
  `residedist` varchar(30) NOT NULL DEFAULT '' COMMENT '户籍区',
  PRIMARY KEY (`uid`),
  KEY `group_id` (`group_id`),
  KEY `siteid` (`siteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员表';

LOCK TABLES `hd_member` WRITE;
/*!40000 ALTER TABLE `hd_member` DISABLE KEYS */;

INSERT INTO `hd_member` (`uid`, `siteid`, `mobile`, `email`, `password`, `openid`, `security`, `access_token`, `group_id`, `icon`, `credit1`, `credit2`, `credit3`, `credit4`, `credit5`, `credit6`, `createtime`, `qq`, `realname`, `nickname`, `telephone`, `vip`, `address`, `zipcode`, `alipay`, `msn`, `taobao`, `site`, `nationality`, `introduce`, `gender`, `graduateschool`, `height`, `weight`, `bloodtype`, `birthyear`, `birthmonth`, `birthday`, `resideprovince`, `residecity`, `residedist`)
VALUES
	(1,13,'','','','oGiQGuMR-fR_WeD6gLRKnqgMxYGo','','',2,'',220.00,55.00,0.00,0.00,0.00,0.00,1484598188,'','sdsd','asdsd','',0,'','','','','','','','',0,'','','','',0,0,0,'','',''),
	(2,13,'18655444464','sdkdsk@fd.com','ca1fdbdacdc9beb2c55dcbf8ae6e63d1','','d4ac5c68fc','',2,'',0.00,0.00,0.00,0.00,0.00,0.00,1484597014,'','sdksdkl','','',0,'','','','','','','','',0,'','','','',0,0,0,'','',''),
	(3,13,'18766666654','ksdkl22@f.com','3e510d35de0beb497bd8d67bb1b6d57d','','d92c53b53a','',2,'',0.00,0.00,0.00,0.00,0.00,0.00,1484597065,'','sdsdf','','',0,'','','','','','','','',0,'','','','',0,0,0,'','','');

/*!40000 ALTER TABLE `hd_member` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hd_member_address
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_member_address`;

CREATE TABLE `hd_member_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` int(10) unsigned NOT NULL COMMENT '站点编号',
  `uid` int(11) NOT NULL COMMENT '用户编号',
  `username` varchar(20) NOT NULL COMMENT '姓名',
  `mobile` varchar(11) NOT NULL COMMENT '手机号',
  `zipcode` varchar(6) NOT NULL COMMENT '邮编',
  `province` varchar(45) NOT NULL COMMENT '省',
  `city` varchar(45) NOT NULL COMMENT '市',
  `district` varchar(45) NOT NULL COMMENT '区/县',
  `address` varchar(45) NOT NULL COMMENT '街道名称',
  `isdefault` tinyint(1) unsigned NOT NULL COMMENT '默认',
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员收货地址';



# Dump of table hd_member_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_member_fields`;

CREATE TABLE `hd_member_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` int(10) unsigned NOT NULL COMMENT '站点编号',
  `field` varchar(45) NOT NULL COMMENT '字段名',
  `title` varchar(45) NOT NULL COMMENT '中文标题',
  `orderby` tinyint(3) unsigned NOT NULL COMMENT '排序',
  `status` tinyint(1) NOT NULL COMMENT '启用',
  `required` tinyint(1) DEFAULT NULL COMMENT '必须填写',
  `showinregister` tinyint(1) DEFAULT NULL COMMENT '注册时显示',
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员字段信息中文名称与状态';

LOCK TABLES `hd_member_fields` WRITE;
/*!40000 ALTER TABLE `hd_member_fields` DISABLE KEYS */;

INSERT INTO `hd_member_fields` (`id`, `siteid`, `field`, `title`, `orderby`, `status`, `required`, `showinregister`)
VALUES
	(22,13,'qq','QQ号',0,1,NULL,NULL),
	(23,13,'realname','真实姓名',0,1,NULL,NULL),
	(24,13,'nickname','昵称',0,1,NULL,NULL),
	(25,13,'mobile','手机号码',0,1,NULL,NULL),
	(26,13,'telephone','固定电话',0,1,NULL,NULL),
	(27,13,'vip','VIP级别',0,1,NULL,NULL),
	(28,13,'address','居住地址',0,1,NULL,NULL),
	(29,13,'zipcode','邮编',0,1,NULL,NULL),
	(30,13,'alipay','阿里帐号',0,1,NULL,NULL),
	(31,13,'msn','msn帐号',0,1,NULL,NULL),
	(32,13,'taobao','淘宝帐号',0,1,NULL,NULL),
	(33,13,'email','邮箱',0,1,NULL,NULL),
	(34,13,'site','个人站点',0,1,NULL,NULL),
	(35,13,'nationality','国籍',0,1,NULL,NULL),
	(36,13,'introduce','自我介绍',0,1,NULL,NULL),
	(37,13,'gender','性别',0,1,NULL,NULL),
	(38,13,'graduateschool','毕业学校',0,1,NULL,NULL),
	(39,13,'height','身高',0,1,NULL,NULL),
	(40,13,'weight','体重',0,1,NULL,NULL),
	(41,13,'bloodtype','血型',0,1,NULL,NULL),
	(42,13,'birthyear','出生日期',0,1,NULL,NULL);

/*!40000 ALTER TABLE `hd_member_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hd_member_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_member_group`;

CREATE TABLE `hd_member_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` int(10) unsigned NOT NULL,
  `title` varchar(45) NOT NULL COMMENT '组名',
  `credit` int(10) unsigned NOT NULL COMMENT '积分',
  `rank` tinyint(3) unsigned NOT NULL COMMENT '排序',
  `isdefault` tinyint(1) unsigned NOT NULL COMMENT '默认会员组',
  `is_system` tinyint(1) unsigned NOT NULL COMMENT '系统组',
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员组';

LOCK TABLES `hd_member_group` WRITE;
/*!40000 ALTER TABLE `hd_member_group` DISABLE KEYS */;

INSERT INTO `hd_member_group` (`id`, `siteid`, `title`, `credit`, `rank`, `isdefault`, `is_system`)
VALUES
	(2,13,'会员',0,0,0,1),
	(3,13,'VIP',10,0,0,0);

/*!40000 ALTER TABLE `hd_member_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hd_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_menu`;

CREATE TABLE `hd_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级',
  `title` varchar(50) NOT NULL COMMENT '中文标题',
  `permission` varchar(100) NOT NULL DEFAULT '' COMMENT '权限标识',
  `url` varchar(100) DEFAULT NULL COMMENT '菜单链接',
  `append_url` varchar(100) NOT NULL COMMENT '右侧图标链接',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '右侧菜单图标',
  `orderby` tinyint(1) NOT NULL DEFAULT '0' COMMENT '排序',
  `is_display` tinyint(1) NOT NULL DEFAULT '1' COMMENT '显示',
  `is_system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '系统菜单',
  `mark` varchar(45) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单';

LOCK TABLES `hd_menu` WRITE;
/*!40000 ALTER TABLE `hd_menu` DISABLE KEYS */;

INSERT INTO `hd_menu` (`id`, `pid`, `title`, `permission`, `url`, `append_url`, `icon`, `orderby`, `is_display`, `is_system`, `mark`)
VALUES
	(1,0,'微信功能','','?s=site/entry/home&p=platform','','fa fa-comments-o',0,1,1,'platform'),
	(2,1,'基本功能','','','','',0,1,1,'platform'),
	(3,2,'文字回复','reply_basic','?s=site/reply/lists&m=basic','?s=site/reply/post&m=basic','fa fa-plus',0,1,1,'platform'),
	(27,10000,'管理','','','','',0,1,1,'package'),
	(30,2,'图文回复','reply_news','?s=site/reply/lists&m=news','?s=site/reply/post&m=news','fa fa-plus',0,1,1,'platform'),
	(32,0,'会员粉丝','','?s=site/entry/home&p=member','','fa fa-cubes',10,1,1,'member'),
	(33,32,'会员中心','','','','fa fa-cubes',0,1,1,'member'),
	(35,33,'会员','users','?m=member&action=site/memberlists','?m=member&action=controller/site/MemberPost','fa fa-cubes',0,1,1,'member'),
	(36,33,'会员组','member_groups','?m=member&action=site/groupLists','?m=member&action=controller/site/groupPost','fa fa-cubes',0,1,1,'member'),
	(38,32,'积分兑换','','','','fa fa-cubes',0,1,1,'member'),
	(39,38,'折扣券','member_coupons','?m=ticket&action=site/lists&type=1','?a=site/post&t=site&type=1&m=ticket','fa fa-cubes',0,1,1,'member'),
	(40,38,'折扣券核销','member_coupons_charge','?m=ticket&action=site/charge&type=1','','fa fa-cubes',0,1,1,'member'),
	(41,38,'代金券','member_cash','?m=ticket&action=site/lists&type=2','?a=site/post&t=site&type=2&m=ticket','fa fa-cubes',0,1,1,'member'),
	(42,38,'代金券核销','member_cash_charge','?m=ticket&action=site/charge&type=2','','fa fa-cubes',0,1,1,'member'),
	(55,2,'系统回复','reply_special','?m=special&action=site/post','','fa fa-cubes',0,1,1,'platform'),
	(63,100,'公众号选项','','','','fa fa-cubes',0,1,1,'feature'),
	(64,63,'支付参数','setting_pay','?m=setting&action=site/pay','','fa fa-cubes',0,1,1,'feature'),
	(66,100,'会员与粉丝选项','','','','fa fa-cubes',0,1,1,'feature'),
	(67,66,'积分设置','setting_credit','?m=setting&action=site/credit','','fa fa-cubes',0,1,1,'feature'),
	(68,66,'注册设置','setting_register','?m=setting&action=site/register','','fa fa-cubes',0,1,1,'feature'),
	(70,66,'邮件通知设置','setting_mail','?m=setting&action=site/mail','','fa fa-cubes',0,1,1,'feature'),
	(71,0,'文章系统','','?s=site/entry/home&p=article','','fa fa-cubes',0,1,1,'article'),
	(72,71,'官网管理','','?s=article/home/welcome','','fa fa-cubes',0,1,1,'article'),
	(73,72,'官网模板','article_site_template','?m=article&action=template/lists','','fa fa-cubes',0,1,1,'article'),
	(74,71,'内容管理','','','','fa fa-cubes',0,1,1,'article'),
	(75,74,'分类管理','category_manage','?a=content/category&t=site&m=article','?a=content/categoryPost&t=site&m=article','fa fa-cubes',0,1,1,'article'),
	(76,74,'文章管理','article_manage','?a=content/article&t=site&m=article','?a=content/articlePost&t=site&m=article','fa fa-cubes',0,1,1,'article'),
	(77,72,'站点管理','site_manage','?m=article&action=site/lists','?m=article&action=site/post','fa fa-cubes',0,1,1,'article'),
	(78,100,'特殊页面管理','','','','fa fa-cubes',0,1,1,'article'),
	(80,78,'手机会员中心','article_ucenter_post','?m=ucenter&action=mobile/post','','fa fa-cubes',0,1,1,'article'),
	(81,27,'扩展功能管理','package_managa','?s=site/entry/package','','fa fa-cubes',0,1,1,'package'),
	(82,1,'高级功能','','','','fa fa-cubes',0,1,1,'platform'),
	(84,33,'会员字段管理','member_fields','?m=member&action=site/fieldlists','','fa fa-cubes',0,1,1,'member'),
	(85,78,'微站快捷导航','article_quick_menu','?a=quickmenu/post&t=site&m=article','','fa fa-cubes',0,1,1,'article'),
	(86,82,'微信菜单','menus_lists','?m=button&action=site/lists','','fa fa-cubes',0,1,1,'platform'),
	(87,1,'微信素材','','','','fa fa-cubes',0,1,1,'platform'),
	(88,87,'素材&群发','material','?m=material&action=site/image','','fa fa-cubes',0,1,1,'platform'),
	(100,0,'系统设置','','?s=site/entry/home&p=feature','','fa fa-comments-o',20,1,1,'feature'),
	(10000,0,'扩展模块','','?s=site/entry/home&p=package','','fa fa-arrows',100,1,1,'package'),
	(10002,74,'模型管理','model_manage','?m=article&action=model/lists','?m=article&action=model/post','fa fa-cubes',0,1,1,NULL),
	(10003,72,'导航菜单','navigate_lists','?s=site/navigate/lists&entry=home','?s=site/navigate/post&entry=home','',0,1,0,NULL);

/*!40000 ALTER TABLE `hd_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hd_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_migrations`;

CREATE TABLE `hd_migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table hd_module_setting
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_module_setting`;

CREATE TABLE `hd_module_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` int(10) unsigned NOT NULL COMMENT '站点名称',
  `module` varchar(45) NOT NULL COMMENT '模块名称',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `setting` text NOT NULL COMMENT '配置',
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='模块配置';



# Dump of table hd_modules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_modules`;

CREATE TABLE `hd_modules` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '英文标识',
  `industry` varchar(45) NOT NULL COMMENT '行业类型 business(主要业务)customer(客户关系)marketing(营销与活动)tools(常用服务与工具)industry(行业解决方案)other(其他)',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '模块名称(中文标题)',
  `version` varchar(45) NOT NULL COMMENT '版本号',
  `resume` varchar(1000) NOT NULL COMMENT '模块简述',
  `detail` varchar(500) NOT NULL DEFAULT '' COMMENT '详细介绍',
  `author` varchar(45) NOT NULL COMMENT '作者',
  `url` varchar(255) NOT NULL COMMENT '发布url',
  `is_system` varchar(45) NOT NULL DEFAULT '' COMMENT '系统模块',
  `subscribes` varchar(500) NOT NULL COMMENT '订阅信息',
  `processors` varchar(500) NOT NULL DEFAULT '' COMMENT '处理消息',
  `setting` tinyint(1) unsigned NOT NULL COMMENT '存在全局设置项',
  `rule` tinyint(1) unsigned NOT NULL COMMENT '需要嵌入规则',
  `permissions` varchar(5000) NOT NULL DEFAULT '' COMMENT '业务规则权限验证标识',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '模块缩略图',
  `preview` varchar(255) NOT NULL DEFAULT '' COMMENT '模块封面图',
  `locality` tinyint(1) unsigned NOT NULL COMMENT '本地应用',
  `releaseCode` varchar(50) NOT NULL DEFAULT '' COMMENT '发行版本号',
  PRIMARY KEY (`mid`),
  UNIQUE KEY `name` (`name`),
  KEY `is_system` (`is_system`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='模块列表';

LOCK TABLES `hd_modules` WRITE;
/*!40000 ALTER TABLE `hd_modules` DISABLE KEYS */;

INSERT INTO `hd_modules` (`mid`, `name`, `industry`, `title`, `version`, `resume`, `detail`, `author`, `url`, `is_system`, `subscribes`, `processors`, `setting`, `rule`, `permissions`, `thumb`, `preview`, `locality`, `releaseCode`)
VALUES
	(1,'basic','business','基本文字回复','1.0','和您进行简单对话','一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 将回复文字或链接给用户','后盾','http://www.hdcms.com','1','','{\"text\":true}',0,0,'','thumb.jpg','cover.jpg',0,''),
	(2,'news','business','基本混合图文回复','1.0','为你提供生动的图文资讯','一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 将回复文字或链接给用户','后盾','http://www.hdcms.com','1','','{\"text\":true}',0,0,'','thumb.jpg','cover.jpg',0,''),
	(3,'article','business','文章系统','1.0','发布文章与会员中心管理','支持桌面、移动、微信三网的文章系统，同时具有移动、桌面会员中心管理功能','后盾','http://www.hdcms.com','1','','',0,0,'','thumb.jpg','cover.jpg',0,''),
	(4,'setting','business','网站配置','1.0','网站运行整体配置','网站运行配置项，如支付、邮箱、登录等等的全局配置项管理','后盾','http://www.hdcms.com','1','','',0,0,'','thumb.jpg','cover.jpg',0,''),
	(5,'member','business','会员粉丝','1.0','会员管理','会员与会员组管理，如会员字段，粉丝管理、会员卡设置','后盾','http://www.hdcms.com','1','','{\"subscribe\":true}',0,0,'','thumb.jpg','cover.jpg',0,''),
	(6,'special','business','微信默认消息','1.0','微信默认消息','系统默认消息与关注微信消息处理','后盾','http://www.hdcms.com','1','','',0,0,'','thumb.jpg','cover.jpg',0,''),
	(7,'ticket','business','卡券管理','1.0','会员卡券管理','会员优惠券、代金券、实物券管理','后盾','http://www.hdcms.com','1','','',0,0,'','thumb.jpg','cover.jpg',0,''),
	(8,'cover','business','封面回复','1.0','封面消息回复','用来处理模块的封面消息','后盾','http://www.hdcms.com','1','','{\"text\":true}',0,0,'','thumb.png','cover.jpg',0,''),
	(9,'uc','business','会员中心','1.0','会员中心的管理操作','会员信息的管理，包括收货地址、个人资料、会员卡券等管理','后盾','http://www.hdcms.com','1','','',0,0,'','thumb.png','cover.jpg',0,''),
	(10,'button','business','微信菜单','1.0','微信菜单管理','用于添加微信菜单，更新菜单后需要取消关注再关注或等微信更新缓存后有效','后盾','http://www.hdcms.com','1','','',0,0,'','thumb.jpg','cover.jpg',0,''),
	(11,'material','business','微信素材','1.0','微信素材','公众号经常有需要用到一些临时性的多媒体素材的场景，例如在使用接口特别是发送消息时，对多媒体文件、多媒体消息的获取和调用等操作','后盾','http://www.hdcms.com','1','','',0,0,'','thumb.jpg','cover.jpg',0,''),
	(12,'ucenter','business','会员中心','1.0','会员中心管理模块','提供移动端与桌面端的会员中心操作功能','后盾','http://www.hdcms.com','1','','',0,0,'','thumb.jpg','cover.jpg',0,''),
	(14,'link','business','链接管理','1.0','管理站点中的链接','主要用在调用链接组件，选择链接等功能时使用','后盾','http://www.hdcms.com','1','','',0,0,'','thumb.jpg','cover.jpg',0,''),
	(10000,'tom','business','tom','1.0','resume','detail','author','url','0','{\"text\":true,\"image\":true,\"voice\":true,\"video\":true,\"shortvideo\":true,\"location\":true,\"link\":true,\"subscribe\":true,\"unsubscribe\":true,\"scan\":true,\"track\":true,\"click\":true,\"view\":true}','{\"text\":true,\"image\":true,\"voice\":true,\"video\":true,\"shortvideo\":true,\"location\":true,\"link\":true,\"subscribe\":true,\"unsubscribe\":true,\"scan\":true,\"track\":true,\"click\":true,\"view\":true}',1,1,'','thumb.jpg','',1,'');

/*!40000 ALTER TABLE `hd_modules` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hd_modules_bindings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_modules_bindings`;

CREATE TABLE `hd_modules_bindings` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(45) NOT NULL DEFAULT '' COMMENT '模块名称',
  `entry` varchar(45) NOT NULL DEFAULT '' COMMENT '类型:封面/规则列表/业务',
  `title` varchar(45) NOT NULL DEFAULT '' COMMENT '中文标题',
  `controller` varchar(50) NOT NULL COMMENT '控制器名只对业务导航有效',
  `do` varchar(45) NOT NULL DEFAULT '' COMMENT '动作方法',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '自定义菜单的url',
  `icon` varchar(80) NOT NULL DEFAULT '' COMMENT '自定义菜单的图标图标',
  `orderby` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='模块动作';

LOCK TABLES `hd_modules_bindings` WRITE;
/*!40000 ALTER TABLE `hd_modules_bindings` DISABLE KEYS */;

INSERT INTO `hd_modules_bindings` (`bid`, `module`, `entry`, `title`, `controller`, `do`, `url`, `icon`, `orderby`)
VALUES
	(1,'','web','桌面入口导航','','zuomianrukou','','',0),
	(2,'','member','桌面会员中心','','zuomianmember','','',0),
	(3,'','home','移动端首页导航','','mobilesouye','','',0),
	(4,'','profile','移动端会员中心','','mobilemember','','',0),
	(5,'','cover','功能封面1','','fengmian1','','',0),
	(6,'','cover','功能封面2','','fengmian2','','',0),
	(7,'','business','控制器动作','business','action','','',0),
	(50,'tom','web','桌面入口导航','','zuomianrukou','','',0),
	(51,'tom','member','桌面会员中心','','zuomianmember','','',0),
	(52,'tom','home','移动端首页导航','','mobilesouye','','',0),
	(53,'tom','profile','移动端会员中心','','mobilemember','','',0),
	(54,'tom','cover','功能封面1','','fengmian1','','',0),
	(55,'tom','cover','功能封面2','','fengmian2','','',0),
	(56,'tom','business','控制器动作','business','action','','',0);

/*!40000 ALTER TABLE `hd_modules_bindings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hd_navigate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_navigate`;

CREATE TABLE `hd_navigate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` int(10) unsigned NOT NULL COMMENT '站点编号',
  `webid` int(10) unsigned NOT NULL COMMENT '微站编号',
  `module` varchar(100) NOT NULL COMMENT '模块',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `url` varchar(100) NOT NULL COMMENT '链接',
  `css` text NOT NULL COMMENT '样式',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `category_cid` int(10) unsigned NOT NULL COMMENT '栏目编号',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `position` tinyint(4) unsigned NOT NULL COMMENT '位置',
  `orderby` tinyint(4) unsigned NOT NULL COMMENT '排序',
  `icontype` tinyint(3) unsigned NOT NULL COMMENT '图标类型 1字体 2 图片',
  `entry` varchar(10) NOT NULL DEFAULT '' COMMENT 'home 微站首页导航  profile 手机会员中心导航 member 桌面会员中心导航',
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`),
  KEY `web_id` (`webid`),
  KEY `category_cid` (`category_cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='导航菜单管理表';

LOCK TABLES `hd_navigate` WRITE;
/*!40000 ALTER TABLE `hd_navigate` DISABLE KEYS */;

INSERT INTO `hd_navigate` (`id`, `siteid`, `webid`, `module`, `name`, `url`, `css`, `status`, `category_cid`, `description`, `position`, `orderby`, `icontype`, `entry`)
VALUES
	(1,13,9,'','sdf','?m=article&action=entry/home&siteid=13','{\"icon\":\"fa fa-anchor\",\"image\":\"attachment\\/2017\\/01\\/17\\/86581484588663.jpg\",\"color\":\"#ff0000\",\"size\":35}',1,0,'dsfdf',2,1,2,'home'),
	(2,13,9,'','dfsf','?m=article&action=entry/home&siteid=13','{\"icon\":\"fa fa-arrows\",\"image\":\"\",\"color\":\"#333333\",\"size\":35}',0,0,'dsfs',5,2,1,'home'),
	(7,13,10,'','3','?m=ucenter&action=entry/home&siteid=13','{\"icon\":\"fa fa-external-link\",\"image\":\"\",\"color\":\"#333333\",\"size\":35}',1,0,'dsdds',2,0,1,'home'),
	(8,13,10,'','sdf','sdf','{\"icon\":\"fa fa-external-link\",\"image\":\"\",\"color\":\"#333333\",\"size\":35}',0,0,'sdf',7,0,1,'home'),
	(9,13,10,'','sd','dfsdsf','{\"icon\":\"fa fa-external-link\",\"image\":\"\",\"color\":\"#333333\",\"size\":35}',0,0,'dssdf',4,0,1,'home'),
	(10,13,9,'','sdf','sdfsdf','{\"icon\":\"fa fa-external-link\",\"image\":\"\",\"color\":\"#333333\",\"size\":35}',1,0,'dssdfsdf',2,0,1,'home'),
	(11,13,9,'','aa','dsds','{\"icon\":\"fa fa-external-link\",\"image\":\"\",\"color\":\"#333333\",\"size\":35}',1,0,'aaaa',4,0,1,'home');

/*!40000 ALTER TABLE `hd_navigate` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hd_package
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_package`;

CREATE TABLE `hd_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL COMMENT '套餐名称',
  `modules` varchar(5000) NOT NULL COMMENT '允许使用的套餐',
  `template` varchar(5000) NOT NULL COMMENT '允许使用的模板',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='套餐';

LOCK TABLES `hd_package` WRITE;
/*!40000 ALTER TABLE `hd_package` DISABLE KEYS */;

INSERT INTO `hd_package` (`id`, `name`, `modules`, `template`)
VALUES
	(7,'sdfsdf','[\"tom\"]','\"\"');

/*!40000 ALTER TABLE `hd_package` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hd_page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_page`;

CREATE TABLE `hd_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` int(10) unsigned NOT NULL COMMENT '站点编号',
  `webid` int(10) unsigned NOT NULL COMMENT '官网编号',
  `title` varchar(150) NOT NULL COMMENT '各称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `params` longtext NOT NULL COMMENT '参数',
  `html` longtext NOT NULL COMMENT 'html页面代码 ',
  `type` char(30) NOT NULL DEFAULT '' COMMENT 'quickmenu快捷导航 profile会员中心',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `createtime` int(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`),
  KEY `web_id` (`webid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微官网页面(快捷导航/专题页面)';



# Dump of table hd_pay
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_pay`;

CREATE TABLE `hd_pay` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '会员编号',
  `tid` varchar(80) NOT NULL COMMENT '定单编号',
  `siteid` int(10) unsigned NOT NULL COMMENT '站点编号',
  `type` varchar(45) NOT NULL COMMENT '支付类型，alipay wechat',
  `fee` decimal(10,2) NOT NULL COMMENT '支付金额',
  `status` tinyint(4) unsigned NOT NULL COMMENT '状态 0 未支付 1 已支付',
  `module` varchar(45) NOT NULL COMMENT '模块名称',
  `use_card` tinyint(3) unsigned NOT NULL COMMENT '使用卡券',
  `card_type` tinyint(3) unsigned NOT NULL COMMENT '卡券类型',
  `card_id` int(10) unsigned NOT NULL COMMENT '卡券编号',
  `card_fee` decimal(10,2) NOT NULL COMMENT '卡券金额',
  `goods_name` varchar(300) NOT NULL COMMENT '商品名称',
  `attach` varchar(300) NOT NULL COMMENT '附加数据',
  `body` varchar(300) NOT NULL COMMENT '商品描述',
  PRIMARY KEY (`pid`),
  KEY `siteid` (`siteid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='支付记录';



# Dump of table hd_profile_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_profile_fields`;

CREATE TABLE `hd_profile_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field` varchar(45) NOT NULL COMMENT '字段名',
  `title` varchar(45) NOT NULL COMMENT '中文标题',
  `orderby` tinyint(3) unsigned NOT NULL COMMENT '排序',
  `status` tinyint(1) NOT NULL COMMENT '启用',
  `required` tinyint(1) NOT NULL COMMENT '必须填写',
  `showinregister` tinyint(1) NOT NULL COMMENT '注册时显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员字段信息使用的基本数据表中文名称与状态';

LOCK TABLES `hd_profile_fields` WRITE;
/*!40000 ALTER TABLE `hd_profile_fields` DISABLE KEYS */;

INSERT INTO `hd_profile_fields` (`id`, `field`, `title`, `orderby`, `status`, `required`, `showinregister`)
VALUES
	(1,'qq','QQ号',0,0,1,1),
	(2,'realname','真实姓名',0,0,1,1),
	(3,'nickname','昵称',0,1,1,1),
	(4,'mobile','手机号码',0,1,1,1),
	(5,'telephone','固定电话',0,1,0,0),
	(6,'vip','VIP级别',0,1,0,0),
	(7,'address','居住地址',0,1,0,0),
	(8,'zipcode','邮编',0,1,0,0),
	(9,'alipay','阿里帐号',0,1,0,0),
	(10,'msn','msn帐号',0,1,0,0),
	(11,'taobao','淘宝帐号',0,1,0,0),
	(12,'email','邮箱',0,1,1,1),
	(13,'site','个人站点',0,1,0,0),
	(14,'nationality','国籍',0,1,0,0),
	(15,'introduce','自我介绍',0,1,0,0),
	(16,'gender','性别',0,1,0,0),
	(17,'graduateschool','毕业学校',0,1,0,0),
	(18,'height','身高',0,1,0,0),
	(19,'weight','体重',0,1,0,0),
	(20,'bloodtype','血型',0,1,0,0),
	(21,'birthyear','出生日期',0,1,0,0);

/*!40000 ALTER TABLE `hd_profile_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hd_reply_basic
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_reply_basic`;

CREATE TABLE `hd_reply_basic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` int(10) unsigned NOT NULL COMMENT '站点编号',
  `rid` int(10) unsigned NOT NULL COMMENT '规则编号',
  `content` varchar(500) NOT NULL COMMENT '回复内容',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`),
  KEY `siteid` (`siteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='普通文本回复';

LOCK TABLES `hd_reply_basic` WRITE;
/*!40000 ALTER TABLE `hd_reply_basic` DISABLE KEYS */;

INSERT INTO `hd_reply_basic` (`id`, `siteid`, `rid`, `content`)
VALUES
	(15,13,4,'cc'),
	(22,13,9,'aaaaa'),
	(23,13,5,'dsfsfd'),
	(24,13,5,'sdffsd');

/*!40000 ALTER TABLE `hd_reply_basic` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of 