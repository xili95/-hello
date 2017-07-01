/*
Navicat MySQL Data Transfer

Source Server         : xili95
Source Server Version : 50703
Source Host           : localhost:3307
Source Database       : test1

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2017-07-01 09:26:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES ('1', '第一篇', '第一篇', '2017-06-21 19:26:21');
INSERT INTO `content` VALUES ('2', '第二篇', '第二篇', '2017-06-21 19:27:17');
INSERT INTO `content` VALUES ('3', '第三篇', '第三篇', '2017-06-22 13:10:48');
INSERT INTO `content` VALUES ('4', '第四篇', '第四篇', '2017-06-22 13:19:51');
INSERT INTO `content` VALUES ('5', '第五篇', '第五篇', '2017-06-22 13:20:31');
INSERT INTO `content` VALUES ('6', '第六篇', '第六篇', '2017-06-22 13:20:51');
INSERT INTO `content` VALUES ('7', '第七篇', '第七篇', '2017-06-22 13:45:42');
INSERT INTO `content` VALUES ('8', '第八篇', '第八篇', '2017-06-22 13:46:17');

-- ----------------------------
-- Table structure for reg
-- ----------------------------
DROP TABLE IF EXISTS `reg`;
CREATE TABLE `reg` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `user` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pw` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `question` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `answer` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `ps` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of reg
-- ----------------------------
INSERT INTO `reg` VALUES ('00000047', 'abc1', '05fe7461c607c33229772d402505601016a7d0ea', '1', 'qwe', '123qwe@qq.com', '2017-10-18', 'sffds');
INSERT INTO `reg` VALUES ('00000048', 'abc2', '05fe7461c607c33229772d402505601016a7d0ea', '1', 'qwe', 'scdfg@sohou.com', '1969-02-18', 'sdfd');
INSERT INTO `reg` VALUES ('00000056', 'abc3', 'c53255317bb11707d0f614696b3ce6f221d0e2f2', '2', 'fsdf', '123234@163.com', '2015-06-16', 'fergrt');
INSERT INTO `reg` VALUES ('00000057', 'abc4', 'c53255317bb11707d0f614696b3ce6f221d0e2f2', '2', 'dsd', 'dfvfdfd@sohou.com', '1970-02-21', 'fbgfbf');
INSERT INTO `reg` VALUES ('00000058', 'abc5', '05fe7461c607c33229772d402505601016a7d0ea', '2', 'qs', 'asc@163.com', '1969-04-21', 'sds');
INSERT INTO `reg` VALUES ('00000059', 'abc6', '05fe7461c607c33229772d402505601016a7d0ea', '2', 'acx', 'qwewd@qq.com', '1969-05-21', 'dwqs');
INSERT INTO `reg` VALUES ('00000060', 'abc7', '05fe7461c607c33229772d402505601016a7d0ea', '1', 'asd', 'dsd@163.com', '1970-03-21', '');
INSERT INTO `reg` VALUES ('00000061', 'abc8', '05fe7461c607c33229772d402505601016a7d0ea', '2', 'sds', 'zxxzc@163.com', '1968-04-21', 'dbfg c');
INSERT INTO `reg` VALUES ('00000062', 'abc9', '05fe7461c607c33229772d402505601016a7d0ea', '1', 'qwe', 'sdcsd@163.com', '1968-04-21', 'xx');
INSERT INTO `reg` VALUES ('00000063', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '0', '', '', '0000-00-00', '');
INSERT INTO `reg` VALUES ('00000064', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '0', '', '', '0000-00-00', '');
INSERT INTO `reg` VALUES ('00000065', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '0', '', '', '0000-00-00', '');
INSERT INTO `reg` VALUES ('00000066', 'abc10', '05fe7461c607c33229772d402505601016a7d0ea', '3', '1wd', '123234ew@163.com', '1970-02-22', 'sdsdf');
INSERT INTO `reg` VALUES ('00000067', 'abc11', '05fe7461c607c33229772d402505601016a7d0ea', '1', 'qwe', 'e33453@163.com', '2015-05-19', 'ewrwer');

-- ----------------------------
-- Table structure for skin
-- ----------------------------
DROP TABLE IF EXISTS `skin`;
CREATE TABLE `skin` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `small_bg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `big_bg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bg_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bg_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bg_flag` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of skin
-- ----------------------------
INSERT INTO `skin` VALUES ('1', 'small1.png', 'big1.jpg', '#8EE5EE', '皮肤1', '0');
INSERT INTO `skin` VALUES ('2', 'small2.png', 'big2.jpg', '#EAEAEA', '皮肤2', '0');
INSERT INTO `skin` VALUES ('3', 'small3.png', 'big3.jpg', '#3fa1d4', '皮肤3', '0');
INSERT INTO `skin` VALUES ('4', 'small4.png', 'big4.jpg', '#c5d7e7', '皮肤4', '0');
INSERT INTO `skin` VALUES ('5', 'small5.png', 'big5.jpg', '#f18bd4', '皮肤5', '1');
INSERT INTO `skin` VALUES ('6', 'small6.png', 'big6.jpg', '#b3c7df', '皮肤6', '0');
