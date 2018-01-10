/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : williamlau

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-01-10 20:20:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article_label_table
-- ----------------------------
DROP TABLE IF EXISTS `article_label_table`;
CREATE TABLE `article_label_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `articleid` int(11) NOT NULL COMMENT '文章id',
  `labelid` int(11) NOT NULL COMMENT '标签id',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_label_table
-- ----------------------------
INSERT INTO `article_label_table` VALUES ('1', '1', '1');
INSERT INTO `article_label_table` VALUES ('2', '1', '2');

-- ----------------------------
-- Table structure for article_table
-- ----------------------------
DROP TABLE IF EXISTS `article_table`;
CREATE TABLE `article_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `time` datetime NOT NULL,
  `read` int(11) NOT NULL,
  `comment` int(11) NOT NULL,
  `content` text NOT NULL,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_table
-- ----------------------------
INSERT INTO `article_table` VALUES ('1', '美娇大好人', '2017-12-29 14:21:26', '0', '0', '哈哈哈哈内容', '');

-- ----------------------------
-- Table structure for label_table
-- ----------------------------
DROP TABLE IF EXISTS `label_table`;
CREATE TABLE `label_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签id',
  `label` varchar(32) NOT NULL COMMENT '标签名',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of label_table
-- ----------------------------
INSERT INTO `label_table` VALUES ('1', '随笔');
INSERT INTO `label_table` VALUES ('2', '笑话');
