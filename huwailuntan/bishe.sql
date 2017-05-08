/*
Navicat MySQL Data Transfer

Source Server         : chk-company
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : bishe

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2017-05-08 18:46:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(24) NOT NULL auto_increment,
  `title` varchar(30) NOT NULL,
  `userid` int(24) NOT NULL,
  `content` text NOT NULL,
  `createtime` datetime default NULL,
  `provinceid` int(24) NOT NULL,
  `itemid` int(11) NOT NULL,
  `objectid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('5', '测试标题1', '1', '涉及到佛过问佛玩呢访问覅偶降温费怕忘记  \n是对方问饿哦发文', '2017-04-18 15:36:08', '16', '1', null);
INSERT INTO `article` VALUES ('6', '测试标题2', '1', '是打发斯蒂芬', '2017-04-19 14:16:54', '16', '2', null);
INSERT INTO `article` VALUES ('7', '测试标题3', '1', '水电费粉色', '2017-04-19 14:17:17', '16', '3', null);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(24) NOT NULL auto_increment,
  `content` varchar(100) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `createtime` datetime NOT NULL,
  `objectid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '123123123123', 'admin', '1970-01-01 08:00:00', '5');

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `id` int(11) NOT NULL auto_increment,
  `hotel` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotel
-- ----------------------------

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL auto_increment,
  `item` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('1', '酒店');
INSERT INTO `item` VALUES ('2', '旅行社');
INSERT INTO `item` VALUES ('3', '景点');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('1', '北京');
INSERT INTO `province` VALUES ('2', '天津');
INSERT INTO `province` VALUES ('3', '河北');
INSERT INTO `province` VALUES ('4', '山西');
INSERT INTO `province` VALUES ('5', '内蒙古');
INSERT INTO `province` VALUES ('6', '辽宁');
INSERT INTO `province` VALUES ('7', '吉林');
INSERT INTO `province` VALUES ('8', '黑龙江');
INSERT INTO `province` VALUES ('9', '上海');
INSERT INTO `province` VALUES ('10', '江苏');
INSERT INTO `province` VALUES ('11', '浙江');
INSERT INTO `province` VALUES ('12', '安徽');
INSERT INTO `province` VALUES ('13', '福建');
INSERT INTO `province` VALUES ('14', '江西');
INSERT INTO `province` VALUES ('15', '山东');
INSERT INTO `province` VALUES ('16', '河南');
INSERT INTO `province` VALUES ('17', '湖北');
INSERT INTO `province` VALUES ('18', '湖南');
INSERT INTO `province` VALUES ('19', '广东');
INSERT INTO `province` VALUES ('20', '广西');
INSERT INTO `province` VALUES ('21', '海南');
INSERT INTO `province` VALUES ('22', '重庆');
INSERT INTO `province` VALUES ('23', '四川');
INSERT INTO `province` VALUES ('24', '贵州');
INSERT INTO `province` VALUES ('25', '云南');
INSERT INTO `province` VALUES ('26', '西藏');
INSERT INTO `province` VALUES ('27', '陕西');
INSERT INTO `province` VALUES ('28', '甘肃');
INSERT INTO `province` VALUES ('29', '青海');
INSERT INTO `province` VALUES ('30', '宁夏');
INSERT INTO `province` VALUES ('31', '新疆');
INSERT INTO `province` VALUES ('32', '香港');
INSERT INTO `province` VALUES ('33', '澳门');
INSERT INTO `province` VALUES ('34', '台湾');

-- ----------------------------
-- Table structure for scenery
-- ----------------------------
DROP TABLE IF EXISTS `scenery`;
CREATE TABLE `scenery` (
  `id` int(24) NOT NULL,
  `scenery` varchar(24) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scenery
-- ----------------------------

-- ----------------------------
-- Table structure for travel
-- ----------------------------
DROP TABLE IF EXISTS `travel`;
CREATE TABLE `travel` (
  `id` int(11) NOT NULL auto_increment,
  `travel` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travel
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(24) NOT NULL auto_increment,
  `name` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'chk', '111111', 'aaa', '2017-04-12 00:15:53');
INSERT INTO `user` VALUES ('2', 'qqq', '123456', 'cccc', '2017-04-15 20:22:32');
INSERT INTO `user` VALUES ('5', 'admin', '123456', 'changhongkaide@gmail.com', '2017-04-18 10:27:31');
