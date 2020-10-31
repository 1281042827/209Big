/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : blog209

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2020-10-31 11:49:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(10) unsigned DEFAULT '0',
  `power` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '1', '1');
INSERT INTO `admin` VALUES ('2', '35', '2');

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `time` datetime NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES ('61', '32', '一血', '<p><img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/a6/x_thumb.gif\" alt=\"[嘘]\" data-w-e=\"1\"><br></p>', '2020-08-10 13:51:15', '35', '51');
INSERT INTO `content` VALUES ('62', '32', '每日水贴', '<p>每日水贴每日水贴</p>', '2020-08-10 19:04:36', '1', '12');

-- ----------------------------
-- Table structure for father_module
-- ----------------------------
DROP TABLE IF EXISTS `father_module`;
CREATE TABLE `father_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(66) NOT NULL,
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `module_name` (`module_name`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='父版块信息表';

-- ----------------------------
-- Records of father_module
-- ----------------------------
INSERT INTO `father_module` VALUES ('0', '畅所欲言', '2');
INSERT INTO `father_module` VALUES ('1', '技术交流', '1');
INSERT INTO `father_module` VALUES ('2', '球类', '0');
INSERT INTO `father_module` VALUES ('3', '明星', '0');
INSERT INTO `father_module` VALUES ('63', 'aoaoa', '0');
INSERT INTO `father_module` VALUES ('53', '手机', '1');
INSERT INTO `father_module` VALUES ('62', '大大大', '0');
INSERT INTO `father_module` VALUES ('64', '牛逼啊啊啊啊', '0');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL,
  `photo` varchar(255) DEFAULT '0',
  `register_time` datetime NOT NULL,
  `last_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('209', '209天下第一', '209', '0', '2020-10-30 18:26:43', '2020-10-30 18:26:53');
INSERT INTO `member` VALUES ('1', '209', '209', '0', '2020-10-30 18:35:58', null);

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_id` int(10) unsigned NOT NULL,
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0',
  `other_id` int(10) unsigned DEFAULT '0',
  `content` text NOT NULL,
  `time` datetime NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('97', '61', '0', '0', '<p><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/3c/pcmoren_wu_org.png\" alt=\"[污]\" data-w-e=\"1\"><br></p>', '2020-08-10 19:43:51', '1');
INSERT INTO `reply` VALUES ('100', '61', '97', '35', '<p><img src=\"//img.t.sinajs.cn/t4/appstyle/expression/ext/normal/83/2018new_kuxiao_org.png\" alt=\"[允悲]\" data-w-e=\"1\"></p>', '2020-08-11 00:54:36', '35');
INSERT INTO `reply` VALUES ('99', '61', '97', '0', '<p>12312311</p>', '2020-08-11 00:51:13', '35');
INSERT INTO `reply` VALUES ('101', '61', '97', '0', '<p>asdasdasdasdasdasdasdasdasdasdasd<img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/71/2018new_touxiao_org.png\" alt=\"[偷笑]\"> asdasdasdasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdas<img src=\"//img.t.sinajs.cn/t4/appstyle/expression/ext/normal/49/2018new_chijing_org.png\" alt=\"[吃惊]\" data-w-e=\"1\"><br></p>', '2020-08-11 00:55:00', '35');
INSERT INTO `reply` VALUES ('102', '61', '97', '0', '<p>asdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddasdasdassssssssssssssssssssss</p>', '2020-08-11 00:55:23', '35');
INSERT INTO `reply` VALUES ('103', '61', '0', '0', '<p>&nbsp;asdasdasdasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasda sasdasdasdasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdas</p>', '2020-08-11 00:59:26', '35');
INSERT INTO `reply` VALUES ('104', '61', '97', '35', '<p>哈as的接口骑久了温江区来加我了哈as的接口骑久了温江区来加我了哈as的接口骑久了温江区来加我了哈as的接口骑久了温江区来加我了哈as的接口骑久了温江区来加我了哈as的接口骑久了哈as的接口骑久了温江区来加我了asda温江区来加我了哈as的接口骑久了温江区来加我了</p>', '2020-08-11 01:12:08', '35');
INSERT INTO `reply` VALUES ('105', '61', '97', '0', '<p>as的接口骑久了温江区来加我了哈as的接口骑久了温江区来加我了哈as的接口骑久了温江区来加我了哈as的接<img src=\"//img.t.sinajs.cn/t4/appstyle/expression/ext/normal/71/2018new_touxiao_org.png\" alt=\"[偷笑]\" data-w-e=\"1\">口骑久了温江区来加我了哈as的接口骑久了温江区来加我了哈as的接口骑久了哈as的接口骑久了温江区来加我了asda温江区来加我了哈as<img src=\"//img.t.sinajs.cn/t4/appstyle/expression/ext/normal/41/xhrnew_gaoxing_org.png\" alt=\"[小黄人高兴]\" data-w-e=\"1\">的接口骑久了温江区来加我了</p>', '2020-08-11 01:12:27', '35');

-- ----------------------------
-- Table structure for son_module
-- ----------------------------
DROP TABLE IF EXISTS `son_module`;
CREATE TABLE `son_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `father_module_id` int(10) unsigned NOT NULL,
  `module_name` varchar(66) NOT NULL,
  `info` varchar(255) NOT NULL,
  `member_id` int(10) unsigned DEFAULT '0',
  `sort` int(10) unsigned zerofill NOT NULL,
  `father_module_name` varchar(66) NOT NULL,
  `member_name` varchar(66) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of son_module
-- ----------------------------
INSERT INTO `son_module` VALUES ('1', '1', '前端技术', '前端技术交流分享', '0', '0000000001', '', null);
INSERT INTO `son_module` VALUES ('2', '1', '后端技术', '后端技术交流分享', '0', '0000000002', '技术交流', null);
INSERT INTO `son_module` VALUES ('3', '1', '留言交流建议', '留言交流建议', '0', '0000000000', '技术交流', null);
INSERT INTO `son_module` VALUES ('4', '2', '篮球', '篮球真好玩啊', '0', '0000000000', '球类', null);
INSERT INTO `son_module` VALUES ('5', '2', '足球', '足球也不错啊', '0', '0000000000', '球类', null);
INSERT INTO `son_module` VALUES ('6', '3', '菜虚鲲', 'rap', '0', '0000000000', '明显', null);
INSERT INTO `son_module` VALUES ('8', '4', '杜某人', '爱好电子烟', '0', '0000000000', '209', null);
INSERT INTO `son_module` VALUES ('9', '4', '黄某人', '爱好a片', '0', '0000000000', '209', null);
