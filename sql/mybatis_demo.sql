/*
Navicat MySQL Data Transfer

Source Server         : 172.16.21.10_3306
Source Server Version : 50730
Source Host           : 172.16.21.10:3306
Source Database       : mybatis_demo

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2020-12-02 15:21:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for author
-- ----------------------------
DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `favourite_section` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of author
-- ----------------------------
INSERT INTO `author` VALUES ('301', '克林顿', '123456', ' clinton.begin@gmail.com', 'MyBatis团队成员', '打球');
INSERT INTO `author` VALUES ('302', '布兰登', '123456', ' brandon.goodin@gmail.com', 'MyBatis团队成员', '听歌');
INSERT INTO `author` VALUES ('303', '亚当', '123456', 'adam.gent@evocatus.com', 'MyBatis团队贡献者', '游泳');

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('101', 'MyBatis', '301', 'MyBatis https://mybatis.org/mybatis-3/', 'ACTIVE', '1');
INSERT INTO `blog` VALUES ('102', 'MyBatis Github', '302', 'MyBatis Github https://github.com/mybatis/mybatis-3/tree/master/src/site', 'ACTIVE', '2');
INSERT INTO `blog` VALUES ('103', 'MyBatis Blog', '303', 'MyBatis Blog https://blog.mybatis.org/', 'INACTIVE', '3');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=605 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('601', '501', '好评1', '看起来不错！谢谢@ kazuki43zoo！');
INSERT INTO `comment` VALUES ('602', '502', '好评2', '非常感谢您的帮助@ huan0huan！');
INSERT INTO `comment` VALUES ('603', '503', '差评3', '为什么不保留Java中SQL的灵活性和语法感觉？');
INSERT INTO `comment` VALUES ('604', '504', '好评4', '非常感谢您的解答');

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `update_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('201', 'emacarron', '123456', '爱德华多·马卡龙', '爱德华多', '马卡龙', '2000-01-01', '2020-01-01', '2020-01-02');
INSERT INTO `person` VALUES ('202', 'mnesarco', '123456', '弗兰克·马丁内斯', '弗兰克', '马丁内斯', '2000-01-01', '2020-01-01', '2020-01-02');
INSERT INTO `person` VALUES ('203', 'agustafson', '123456', '安德鲁·古斯塔夫森', '安德鲁', '古斯塔夫森', '2000-01-01', '2020-01-01', '2020-01-02');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `section` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `draft` int(11) DEFAULT NULL,
  `body` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('501', '101', '301', '2020-02-01', '1', 'MyBatis 3.5.1', '1', '以下是用户可见更改的列表。用参数名称指定的keyProperty可能导致ExecutorException。＃1485');
INSERT INTO `post` VALUES ('502', '102', '302', '2020-02-02', '2', 'MyBatis 3.5.2', '1', '以下是用户可见更改的列表。SQL Builder现在支持LIMIT，OFFSET ＃1521和FETCH FIRST ＃1582。');
INSERT INTO `post` VALUES ('503', '103', '303', '2020-02-03', '3', 'MyBatis 3.5.3', '1', '以下是用户可见更改的列表。在包含的<sql />的CDATA中支持变量替换。＃1615');
INSERT INTO `post` VALUES ('504', '101', '301', '2020-02-01', '1', 'MyBatis 3.5.4', '1', '以下是用户可见更改的列表。用参数名称指定的keyProperty可能导致ExecutorException。＃4');

-- ----------------------------
-- Table structure for post_tag
-- ----------------------------
DROP TABLE IF EXISTS `post_tag`;
CREATE TABLE `post_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=805 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post_tag
-- ----------------------------
INSERT INTO `post_tag` VALUES ('801', '501', '701');
INSERT INTO `post_tag` VALUES ('802', '502', '702');
INSERT INTO `post_tag` VALUES ('803', '503', '703');
INSERT INTO `post_tag` VALUES ('804', '504', '704');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=705 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('701', 'Alpha');
INSERT INTO `tag` VALUES ('702', 'Beta');
INSERT INTO `tag` VALUES ('703', 'RC');
INSERT INTO `tag` VALUES ('704', 'GA');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `hashed_password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=413 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('401', 'admin', '123456', 'admin@@gmail.com');
INSERT INTO `users` VALUES ('402', 'user', '123456', 'user@gmail.com');
INSERT INTO `users` VALUES ('403', 'guest', '123456', 'guest@gmail.com');
INSERT INTO `users` VALUES ('411', 'test', '123456', 'test@gmail.com');
INSERT INTO `users` VALUES ('412', 'test2', '123456', 'test2@gmail.com');

-- ----------------------------
-- Table structure for vehicle
-- ----------------------------
DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE `vehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vin` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `make` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `vehicle_type` int(11) DEFAULT NULL,
  `door_count` int(11) DEFAULT NULL,
  `box_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=904 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicle
-- ----------------------------
INSERT INTO `vehicle` VALUES ('901', '奔驰汽车', '1883', '德国奔驰汽车公司', 'AMG GT4', '绿色', '1', '2', null);
INSERT INTO `vehicle` VALUES ('902', '麦克卡车', '1940', '麦克制造公司', 'Mack NR', '白色', '2', null, '4');
INSERT INTO `vehicle` VALUES ('903', '雷诺货车', '1941', '美国雷诺货车公司', 'LCV', '红色', '3', null, null);
