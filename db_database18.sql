/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : db_database18

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2018-11-14 10:41:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tab_book
-- ----------------------------
DROP TABLE IF EXISTS `tab_book`;
CREATE TABLE `tab_book` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(100) NOT NULL,
  `issuDate` date NOT NULL DEFAULT '0000-00-00',
  `price` float NOT NULL DEFAULT '0',
  `synopsis` mediumtext NOT NULL,
  `Maker` varchar(50) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tab_book
-- ----------------------------
INSERT INTO `tab_book` VALUES ('1', 'ASP程序开发范例宝典', '2006-07-01', '82', '本书精选了400多个范例以快速提高编程者的编程水平', '明日科技', '人民邮电出版社');
INSERT INTO `tab_book` VALUES ('2', 'ASP数据库系统开发案例精选', '2006-05-01', '82', '本书精选了当前比较热门的8个数据库管理系统', '明日科技', '人民邮电出版社');
INSERT INTO `tab_book` VALUES ('5', 'PHP数据库系统开发完全手册', '2006-05-01', '52', '本书是一本既可学习、使用，又可查询参考的数据库类图书', '明日科技', '人民邮电出版社');

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `TrueName` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `pwd` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Sex` char(2) CHARACTER SET latin1 DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `Tel` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `OICQ` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `ICO` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Email` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `homepage` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `Address` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', 'mr', '1', 'mrsoft', '1', '1980-05-29', '0431-84978981', '88998866898586', '12.gif', 'mingrisoft@mingrisoft.com', 'http://www.mingrisoft.com', '1');

-- ----------------------------
-- Table structure for tb_affiche
-- ----------------------------
DROP TABLE IF EXISTS `tb_affiche`;
CREATE TABLE `tb_affiche` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET gb2312 NOT NULL,
  `content` mediumtext CHARACTER SET gb2312 NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_affiche
-- ----------------------------
INSERT INTO `tb_affiche` VALUES ('8', '为提高编程者的编程水平,特推出视频讲解0', '', '2008-04-01 14:14:38');
INSERT INTO `tb_affiche` VALUES ('25', '《PHP项目开发全程实录》即将出版啦！', '广大的读者朋友您好，《PHP项目开发全程实录》08年4月中旬即将出版发行！敬请关注！', '2008-04-02 09:37:43');
INSERT INTO `tb_affiche` VALUES ('2', 'Happy Every Day!', 'Every day ! in Every Day! I am getting better and better!', '2008-04-02 15:41:45');

-- ----------------------------
-- Table structure for tb_book
-- ----------------------------
DROP TABLE IF EXISTS `tb_book`;
CREATE TABLE `tb_book` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(100) DEFAULT NULL,
  `issuDate` date DEFAULT '0000-00-00',
  `price` float DEFAULT '0',
  `maker` varchar(50) DEFAULT NULL,
  `publisher` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tb_book
-- ----------------------------
INSERT INTO `tb_book` VALUES ('9', 'PHP网络编程自学手册', '2008-03-01', '52', '明日科技', '人民邮电出版社');
INSERT INTO `tb_book` VALUES ('5', 'PHP程序开发范例宝典', '2007-06-30', '89', '明日科技', '人民邮电出版社');
INSERT INTO `tb_book` VALUES ('6', 'PHP数据库系统开发完全手册', '2007-06-01', '52', '明日科技', '人民邮电出版社');
INSERT INTO `tb_book` VALUES ('7', 'PHP函数参考大全', '2007-09-01', '99', '明日科技', '人民邮电出版社');
INSERT INTO `tb_book` VALUES ('8', 'PHP项目开发全程实录', '2008-04-01', '65', '明日科技', '清华大学出版社');

-- ----------------------------
-- Table structure for tb_file
-- ----------------------------
DROP TABLE IF EXISTS `tb_file`;
CREATE TABLE `tb_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(30) NOT NULL,
  `file_text` varchar(60) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tb_file
-- ----------------------------
INSERT INTO `tb_file` VALUES ('11', 'file', './upfiles/test2.jpg', '2007-06-12');
INSERT INTO `tb_file` VALUES ('10', 'file', './upfiles/Javascript.chm', '2007-06-12');

-- ----------------------------
-- Table structure for tb_hflb
-- ----------------------------
DROP TABLE IF EXISTS `tb_hflb`;
CREATE TABLE `tb_hflb` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hfzt` varchar(50) CHARACTER SET gb2312 NOT NULL,
  `hfnr` text CHARACTER SET gb2312 NOT NULL,
  `hfsj` date NOT NULL,
  `username` varchar(30) CHARACTER SET gb2312 NOT NULL,
  `ljid` int(10) NOT NULL,
  `zq` varchar(30) CHARACTER SET gb2312 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_hflb
-- ----------------------------
INSERT INTO `tb_hflb` VALUES ('4', 'hgfhfghghgfhgfhg', 'hggfhhhgggggggggggggggggg', '2006-11-30', '9999999', '4', 'asp');
INSERT INTO `tb_hflb` VALUES ('3', 'bvnvnvbn', 'vvbnvbnvbnvbnbvnvbnvbn', '2006-11-30', '2222222', '4', 'asp');
INSERT INTO `tb_hflb` VALUES ('5', 'ghjghjghjghjgh', 'jghjhgjhgjghjhgjghjghj', '2006-11-30', '9999999', '5', 'asp');
INSERT INTO `tb_hflb` VALUES ('17', '明日科技想读者之所想，受益于读者，感激', '明日科技：\r<br>    您好，我是您的忠实的读者，您出版的ASP类图书我都买了，这从中使我从浅入深，学会了很多，现在可以独立开发Web网站，而且可以轻松完成，现在我想学PHP，在网站中看到贵公司要为读者赠送编程词典，我想了解一下，PHP的编程词典有吗，企业版的，我想购买！期盼佳音！\r<br>\r<br>\r<br>                                忠实的读者\r<br>', '2007-04-27', '花之语', '27', 'php');
INSERT INTO `tb_hflb` VALUES ('10', '今天是2007年4月27日', '距五一放假还有三天', '2007-04-27', 'mr', '18', 'asp');
INSERT INTO `tb_hflb` VALUES ('11', '我是王小蒙', '我是大学生', '2007-04-27', 'mr', '19', 'asp');
INSERT INTO `tb_hflb` VALUES ('12', '我是刘一水', '我是小梅', '2007-04-27', 'mr', '19', 'asp');
INSERT INTO `tb_hflb` VALUES ('13', '我们都是影视明星', '我们都是名人', '2007-04-27', 'mr', '19', 'asp');
INSERT INTO `tb_hflb` VALUES ('14', 'rewr', 'fer', '2007-04-27', 'mr', '14', 'asp');

-- ----------------------------
-- Table structure for tb_insert
-- ----------------------------
DROP TABLE IF EXISTS `tb_insert`;
CREATE TABLE `tb_insert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `number` int(11) NOT NULL,
  `tel` int(14) NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tb_insert
-- ----------------------------
INSERT INTO `tb_insert` VALUES ('26', '王**', '1001', '12345645', '吉林');
INSERT INTO `tb_insert` VALUES ('27', '李**', '1002', '1231233', '沈阳');
INSERT INTO `tb_insert` VALUES ('28', '欧阳*', '1006', '12345678', '通化');
INSERT INTO `tb_insert` VALUES ('29', '张**', '1007', '45612312', '大理');

-- ----------------------------
-- Table structure for tb_member
-- ----------------------------
DROP TABLE IF EXISTS `tb_member`;
CREATE TABLE `tb_member` (
  `M_ID` int(4) NOT NULL AUTO_INCREMENT,
  `M_Name` varchar(20) NOT NULL,
  `M_Sex` char(2) NOT NULL,
  `only_you` varchar(100) NOT NULL,
  `IPAddress` varchar(100) NOT NULL,
  `Grade` varchar(100) NOT NULL,
  PRIMARY KEY (`M_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tb_member
-- ----------------------------
INSERT INTO `tb_member` VALUES ('1', '小宝贝', '女', '不告诉你', '192.168.1.42', '冻结');
INSERT INTO `tb_member` VALUES ('2', '纯净水', '女', '保密', '127.0.0.1', '冻结');
INSERT INTO `tb_member` VALUES ('3', '雄心壮志', '男', '壮志雄心', '192.168.1.100', '冻结');
INSERT INTO `tb_member` VALUES ('4', '格格', '女', '雨晴', '192.168.1.32', '冻结');
INSERT INTO `tb_member` VALUES ('5', '天上一只鹰', '男', '老鹰', '127.0.0.1', '激活');

-- ----------------------------
-- Table structure for tb_mrbook
-- ----------------------------
DROP TABLE IF EXISTS `tb_mrbook`;
CREATE TABLE `tb_mrbook` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(100) DEFAULT NULL,
  `issuDate` date DEFAULT '0000-00-00',
  `price` float DEFAULT '0',
  `synopsis` mediumtext,
  `Maker` varchar(50) DEFAULT NULL,
  `pulisher` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tb_mrbook
-- ----------------------------
INSERT INTO `tb_mrbook` VALUES ('3', 'ASP开发技术大全', '2007-03-01', '82', '源于实践，全面系统，快速上手，注重细节，快速方便', '明日科技', '人民邮电出版社');
INSERT INTO `tb_mrbook` VALUES ('5', 'PHP程序开发范例宝典', '2007-06-30', '89', '学习编程的道路是充满艰辛，漫长而曲折的，不可能一朝一夕就能掌握的，衷心希望读者以兴趣为浆，用恒心作船，最终能成为一名开发专家', '明日科技', '人民邮电出版社');
INSERT INTO `tb_mrbook` VALUES ('6', 'PHP数据库系统开发完全手册', '2007-06-01', '52', '希望通过本书，能使开发者少走弯路，快速提高编程经验，体会编程过程中的精髓和乐趣！', '明日科技', '人民邮电出版社');
INSERT INTO `tb_mrbook` VALUES ('7', 'PHP函数参考大全', '2007-09-01', '99', '要成为一个优秀的程序员，不断吸取和借鉴其他开发者的经验是快速提高之道。', '明日科技', '人民邮电出版社');
INSERT INTO `tb_mrbook` VALUES ('108', 'ASP数据库系统开发完全手册', '2006-11-01', '52', '一书在手编程无忧', '明日科技', '人民邮电出版社');

-- ----------------------------
-- Table structure for tb_mruser
-- ----------------------------
DROP TABLE IF EXISTS `tb_mruser`;
CREATE TABLE `tb_mruser` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET gb2312 NOT NULL,
  `zsxm` varchar(30) CHARACTER SET gb2312 NOT NULL,
  `password` varchar(30) CHARACTER SET gb2312 NOT NULL,
  `sex` varchar(10) CHARACTER SET gb2312 NOT NULL,
  `shengri` date NOT NULL,
  `lxdh` varchar(20) NOT NULL,
  `qq` int(20) NOT NULL,
  `email` varchar(30) CHARACTER SET gb2312 NOT NULL,
  `grzy` varchar(30) CHARACTER SET gb2312 NOT NULL,
  `fig` int(1) NOT NULL,
  `lxdz` varchar(50) CHARACTER SET gb2312 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_mruser
-- ----------------------------
INSERT INTO `tb_mruser` VALUES ('12', 'tsoft', 'tsoft', '111', '女', '2008-04-06', '1234567', '1234567', 'tsoft*@tsoft.com', 'dfdsfsfdsfsdfsd', '1', '河东路');
INSERT INTO `tb_mruser` VALUES ('23', '小蒙', '王小蒙', 'mrsoft', '女', '1980-05-29', '0431-84972266', '252252', 'mingrisoft@mingrisoft*.com', 'http://www.mingrisoft.com', '0', '东盛大街89号');
INSERT INTO `tb_mruser` VALUES ('25', 'ddddd', 'dddd', 'dddddd', '男', '1980-05-29', '11111111', '10031006', '111*@sina.com', 'http://www.mingrisoft*.com', '0', '8688');

-- ----------------------------
-- Table structure for tb_mysql
-- ----------------------------
DROP TABLE IF EXISTS `tb_mysql`;
CREATE TABLE `tb_mysql` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tb_mysql
-- ----------------------------
INSERT INTO `tb_mysql` VALUES ('4', '纯净水', 'mrsoft', '吉林省长春市河东路');
INSERT INTO `tb_mysql` VALUES ('3', 'mr', 'mrsoft', '');

-- ----------------------------
-- Table structure for tb_zqfl
-- ----------------------------
DROP TABLE IF EXISTS `tb_zqfl`;
CREATE TABLE `tb_zqfl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tb` varchar(30) CHARACTER SET gb2312 DEFAULT NULL,
  `zq` varchar(30) CHARACTER SET gb2312 NOT NULL,
  `bz` varchar(30) CHARACTER SET gb2312 NOT NULL,
  `cjsj` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_zqfl
-- ----------------------------
INSERT INTO `tb_zqfl` VALUES ('1', 'images/tx/df.gif', 'PHP', 'PHP技术支持', '2006-11-28 06:11:30');
INSERT INTO `tb_zqfl` VALUES ('2', 'images/tx/top.gif', 'asp', 'ASP技术支持', '2006-11-28 06:11:59');
INSERT INTO `tb_zqfl` VALUES ('4', 'images/tx/df.gif', 'JSP', 'JSP技术支持', '2006-11-28 06:13:01');
INSERT INTO `tb_zqfl` VALUES ('5', 'images/tx/top.gif', '.net', '.net技术支持', '2006-11-28 06:13:32');

-- ----------------------------
-- Table structure for tb_zqlb
-- ----------------------------
DROP TABLE IF EXISTS `tb_zqlb`;
CREATE TABLE `tb_zqlb` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `zq` varchar(30) CHARACTER SET gb2312 NOT NULL,
  `zhuti` varchar(50) CHARACTER SET gb2312 NOT NULL,
  `neirong` mediumtext CHARACTER SET gb2312 NOT NULL,
  `username` varchar(30) CHARACTER SET gb2312 NOT NULL,
  `fbsj` date NOT NULL,
  `fwjl` int(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_zqlb
-- ----------------------------
INSERT INTO `tb_zqlb` VALUES ('7', 'asp', 'sdfsdfsfsf', 'fsdfsdfsfsdfsdfsfsdfs', '8888888', '2006-12-14', '25');
INSERT INTO `tb_zqlb` VALUES ('8', 'asp', 'sdfsdfsdfsdfs', 'sdfsfsdfsdfsdfsdfs', '8888888', '2006-12-14', '16');
INSERT INTO `tb_zqlb` VALUES ('27', 'php', '《PHP程序开发范例宝典》一书精彩上市！', '各位读者：\r<br>    您好！首先，感谢您一直对我公司图书市场的关注，也感谢您多年以来一直对我公司出版图书的支持，为答谢广大读者的厚爱与支持，我公司特在五一劳动节来临之季，向广大读者免费赠送“《编程词典》标准版”源码光盘，凡是购买我公司图书产品的读者，均可凭购书小票享受任一语言的光盘一份。\r<br>\r<br>                                      明日科技', '纯净水', '2007-04-27', '162');
