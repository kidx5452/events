/*
Navicat MySQL Data Transfer

Source Server         : Web
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : events

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2016-08-13 21:26:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account_log
-- ----------------------------
DROP TABLE IF EXISTS `account_log`;
CREATE TABLE `account_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `item_key` varchar(45) DEFAULT NULL,
  `create_at` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`item_key`,`userid`,`level`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_log
-- ----------------------------
INSERT INTO `account_log` VALUES ('2', '7119', 'ruong-da', '1471014574', '1');
INSERT INTO `account_log` VALUES ('3', '7119', 'ruong-dong', '1471014595', '1');
INSERT INTO `account_log` VALUES ('4', '7119', 'ruong-dong', '1471014936', '1');
INSERT INTO `account_log` VALUES ('5', '7119', 'ruong-da', '1471019345', '1');
INSERT INTO `account_log` VALUES ('6', '7119', 'ruong-dong', '1471019353', '1');
INSERT INTO `account_log` VALUES ('7', '7119', 'ruong-dong', '1471019356', '1');
INSERT INTO `account_log` VALUES ('8', '7119', 'ruong-dong', '1471019359', '1');
INSERT INTO `account_log` VALUES ('9', '7119', 'ruong-dong', '1471019361', '1');
INSERT INTO `account_log` VALUES ('10', '7119', 'ruong-dong', '1471019364', '1');
INSERT INTO `account_log` VALUES ('11', '7119', 'ruong-dong', '1471019367', '1');
INSERT INTO `account_log` VALUES ('12', '7119', 'ruong-go', '1471019370', '1');
INSERT INTO `account_log` VALUES ('13', '7119', 'ruong-dong', '1471019373', '1');
INSERT INTO `account_log` VALUES ('14', '7119', 'ruong-da', '1471019376', '1');
INSERT INTO `account_log` VALUES ('15', '7119', 'ruong-da', '1471019378', '1');
INSERT INTO `account_log` VALUES ('16', '7119', 'ruong-go', '1471019381', '1');
INSERT INTO `account_log` VALUES ('17', '7119', 'ruong-da', '1471019384', '1');
INSERT INTO `account_log` VALUES ('18', '7119', 'ruong-go', '1471019387', '1');
INSERT INTO `account_log` VALUES ('19', '7119', 'ruong-dong', '1471019391', '1');
INSERT INTO `account_log` VALUES ('20', '7119', 'ruong-dong', '1471019394', '1');
INSERT INTO `account_log` VALUES ('21', '7119', 'ruong-dong', '1471019397', '1');
INSERT INTO `account_log` VALUES ('22', '7119', 'ruong-dong', '1471019400', '1');
INSERT INTO `account_log` VALUES ('23', '7119', 'ruong-dong', '1471019404', '1');
INSERT INTO `account_log` VALUES ('24', '7119', 'the-50', '1471019407', '1');
INSERT INTO `account_log` VALUES ('25', '7119', 'ruong-go', '1471019430', '1');
INSERT INTO `account_log` VALUES ('26', '7119', 'ruong-dong', '1471019433', '1');
INSERT INTO `account_log` VALUES ('27', '7119', 'ruong-dong', '1471019436', '1');
INSERT INTO `account_log` VALUES ('28', '7119', 'ruong-dong', '1471019438', '1');
INSERT INTO `account_log` VALUES ('29', '7119', 'the-20', '1471019441', '1');
INSERT INTO `account_log` VALUES ('30', '7119', 'ruong-dong', '1471019444', '1');
INSERT INTO `account_log` VALUES ('31', '7119', 'ruong-da', '1471019447', '1');
INSERT INTO `account_log` VALUES ('32', '7119', 'ruong-dong', '1471019450', '1');
INSERT INTO `account_log` VALUES ('33', '7119', 'ruong-dong', '1471019453', '1');
INSERT INTO `account_log` VALUES ('34', '7119', 'ruong-dong', '1471019456', '1');
INSERT INTO `account_log` VALUES ('35', '7119', 'ruong-dong', '1471019460', '1');
INSERT INTO `account_log` VALUES ('36', '7119', 'ruong-dong', '1471019487', '1');
INSERT INTO `account_log` VALUES ('37', '7119', 'ruong-da', '1471019532', '1');
INSERT INTO `account_log` VALUES ('38', '7119', 'ruong-go', '1471019537', '1');
INSERT INTO `account_log` VALUES ('39', '7119', 'ruong-dong', '1471019540', '1');
INSERT INTO `account_log` VALUES ('40', '7119', 'ruong-go', '1471019545', '1');
INSERT INTO `account_log` VALUES ('41', '7119', 'ruong-dong', '1471019557', '1');
INSERT INTO `account_log` VALUES ('42', '7119', 'the-20', '1471019568', '1');
INSERT INTO `account_log` VALUES ('43', '7119', 'ruong-dong', '1471019572', '1');
INSERT INTO `account_log` VALUES ('44', '7119', 'ruong-dong', '1471019575', '1');
INSERT INTO `account_log` VALUES ('45', '7119', 'ruong-da', '1471019577', '1');
INSERT INTO `account_log` VALUES ('46', '7119', 'the-20', '1471019581', '1');
INSERT INTO `account_log` VALUES ('47', '7119', 'ruong-dong', '1471019584', '1');
INSERT INTO `account_log` VALUES ('48', '7119', 'ruong-da', '1471019593', '1');
INSERT INTO `account_log` VALUES ('49', '7119', 'ruong-dong', '1471019596', '1');
INSERT INTO `account_log` VALUES ('50', '7119', 'ruong-dong', '1471019598', '1');
INSERT INTO `account_log` VALUES ('51', '7119', 'ruong-dong', '1471019601', '1');
INSERT INTO `account_log` VALUES ('52', '7119', 'ruong-da', '1471019603', '1');
INSERT INTO `account_log` VALUES ('53', '7119', 'ruong-go', '1471019606', '1');
INSERT INTO `account_log` VALUES ('54', '7119', 'ruong-dong', '1471019609', '1');
INSERT INTO `account_log` VALUES ('55', '7119', 'ruong-go', '1471019612', '1');
INSERT INTO `account_log` VALUES ('56', '7119', 'ruong-dong', '1471019615', '1');
INSERT INTO `account_log` VALUES ('57', '7119', 'ruong-da', '1471019618', '1');
INSERT INTO `account_log` VALUES ('58', '7119', 'ruong-dong', '1471019621', '1');
INSERT INTO `account_log` VALUES ('59', '7119', 'the-50', '1471019623', '1');
INSERT INTO `account_log` VALUES ('60', '7119', 'ruong-da', '1471019626', '1');
INSERT INTO `account_log` VALUES ('61', '7119', 'ruong-dong', '1471019635', '1');
INSERT INTO `account_log` VALUES ('62', '7119', 'ruong-dong', '1471019650', '1');
INSERT INTO `account_log` VALUES ('63', '7119', 'ruong-go', '1471019653', '1');
INSERT INTO `account_log` VALUES ('64', '7119', 'ruong-dong', '1471019656', '1');
INSERT INTO `account_log` VALUES ('65', '7119', 'ruong-go', '1471019659', '1');
INSERT INTO `account_log` VALUES ('66', '7119', 'ruong-dong', '1471019662', '1');
INSERT INTO `account_log` VALUES ('67', '7119', 'ruong-dong', '1471019665', '1');
INSERT INTO `account_log` VALUES ('68', '7119', 'ruong-dong', '1471019667', '1');
INSERT INTO `account_log` VALUES ('69', '7119', 'ruong-dong', '1471019670', '1');
INSERT INTO `account_log` VALUES ('70', '7119', 'ruong-dong', '1471019673', '1');
INSERT INTO `account_log` VALUES ('71', '7119', 'ruong-da', '1471019675', '1');
INSERT INTO `account_log` VALUES ('72', '7119', 'ruong-dong', '1471019678', '1');
INSERT INTO `account_log` VALUES ('73', '7119', 'ruong-go', '1471019681', '1');
INSERT INTO `account_log` VALUES ('74', '7119', 'ruong-dong', '1471019684', '1');
INSERT INTO `account_log` VALUES ('75', '7119', 'ruong-da', '1471019687', '1');
INSERT INTO `account_log` VALUES ('76', '7119', 'ruong-da', '1471019690', '1');
INSERT INTO `account_log` VALUES ('77', '7119', 'ruong-da', '1471019692', '1');
INSERT INTO `account_log` VALUES ('78', '7119', 'ruong-dong', '1471019696', '1');
INSERT INTO `account_log` VALUES ('79', '7119', 'ruong-dong', '1471019698', '1');
INSERT INTO `account_log` VALUES ('80', '7119', 'ruong-dong', '1471019703', '1');
INSERT INTO `account_log` VALUES ('81', '7119', 'ruong-dong', '1471019705', '1');
INSERT INTO `account_log` VALUES ('82', '7119', 'ruong-da', '1471019708', '1');
INSERT INTO `account_log` VALUES ('83', '7119', 'the-20', '1471019712', '1');
INSERT INTO `account_log` VALUES ('84', '7119', 'ruong-dong', '1471019716', '1');
INSERT INTO `account_log` VALUES ('85', '7119', 'ruong-dong', '1471019719', '1');
INSERT INTO `account_log` VALUES ('86', '7119', 'ruong-go', '1471019722', '1');
INSERT INTO `account_log` VALUES ('87', '7119', 'ruong-dong', '1471019726', '1');
INSERT INTO `account_log` VALUES ('88', '7119', 'ruong-dong', '1471019728', '1');
INSERT INTO `account_log` VALUES ('89', '7119', 'ruong-dong', '1471019741', '1');
INSERT INTO `account_log` VALUES ('90', '7119', 'ruong-dong', '1471019744', '1');
INSERT INTO `account_log` VALUES ('91', '7119', 'the-20', '1471019747', '1');
INSERT INTO `account_log` VALUES ('92', '7119', 'ruong-go', '1471019750', '1');
INSERT INTO `account_log` VALUES ('93', '7119', 'ruong-dong', '1471019753', '1');
INSERT INTO `account_log` VALUES ('94', '7119', 'ruong-dong', '1471019756', '1');
INSERT INTO `account_log` VALUES ('95', '7119', 'the-20', '1471019759', '1');
INSERT INTO `account_log` VALUES ('96', '7119', 'ruong-go', '1471019762', '1');
INSERT INTO `account_log` VALUES ('97', '7119', 'the-20', '1471019765', '1');
INSERT INTO `account_log` VALUES ('98', '7119', 'ruong-dong', '1471019769', '1');
INSERT INTO `account_log` VALUES ('99', '7119', 'the-50', '1471019771', '1');
INSERT INTO `account_log` VALUES ('100', '7119', 'ruong-da', '1471019774', '1');
INSERT INTO `account_log` VALUES ('101', '7119', 'ruong-dong', '1471019777', '1');
INSERT INTO `account_log` VALUES ('102', '7119', 'ruong-da', '1471064488', '1');

-- ----------------------------
-- Table structure for albummedia
-- ----------------------------
DROP TABLE IF EXISTS `albummedia`;
CREATE TABLE `albummedia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(450) DEFAULT NULL,
  `datecreate` int(11) DEFAULT NULL,
  `usercreate` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `avatar` text,
  `coveravatar` text,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `type` (`status`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of albummedia
-- ----------------------------

-- ----------------------------
-- Table structure for albummedia_detail
-- ----------------------------
DROP TABLE IF EXISTS `albummedia_detail`;
CREATE TABLE `albummedia_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `albumid` int(11) DEFAULT NULL,
  `name` varchar(450) DEFAULT NULL,
  `content` text,
  `avatar` text,
  `datecreate` int(11) DEFAULT NULL,
  `usercreate` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `descriptions` text,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of albummedia_detail
-- ----------------------------

-- ----------------------------
-- Table structure for album_tag
-- ----------------------------
DROP TABLE IF EXISTS `album_tag`;
CREATE TABLE `album_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `classid` int(11) DEFAULT NULL,
  `albumid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `albumtag_fk_userid_idx` (`userid`),
  KEY `albumtag_fk_classid_idx` (`classid`),
  KEY `albumtag_fk_albumid_idx` (`albumid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of album_tag
-- ----------------------------

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(450) DEFAULT NULL,
  `captions` varchar(450) DEFAULT NULL,
  `datecreate` int(11) DEFAULT NULL,
  `usercreate` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `avatar` text,
  `content` text,
  `lang` varchar(20) DEFAULT NULL,
  `coveravatar` text,
  `coverphoto` text,
  `cover_video` text,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `sorts` (`datecreate`)
) ENGINE=MyISAM AUTO_INCREMENT=1470066686 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1469903590', ' Tiêu đề', ' Mô tả', '1469903590', '1', '1', 'uploads/2016/07/30/picture/4b1cab28b90fd19910704241a057a86e_biznetcafeshop2.jpg', '<p>Nội dung</p>', null, 'uploads/2016/07/30/picture/9ee4ca3867fba8fc81c933da3f94ee3d_ccdig7-uuaac-z-.jpg', 'uploads/2016/07/30/picture/78a2d27e101b298ae298a1b2045e9189_biznetcafeshop6.jpg', 'https://www.youtube.com/watch?v=wmxeEbcmnGY');
INSERT INTO `article` VALUES ('1469910097', ' Tiêu đề 02', ' Mô tả', '1469910097', '1', '0', null, '', null, null, null, '');
INSERT INTO `article` VALUES ('1470066424', 'Phim giới thiệu công ty Hà Lâm FURNITURE', 'Đơn vị sản xuất: Thanglong Av', '1470066424', '1', '1', 'uploads/2016/08/01/picture/90b3929592b513f188c19dd1ba511358_tvc1.jpg', '<p>Test</p>', null, null, null, '');
INSERT INTO `article` VALUES ('1470066685', 'Phim giới thiệu công ty Hà Lâm FURNITURE', 'Phim giới thiệu công ty Hà Lâm FURNITURE', '1470066685', '1', '1', 'uploads/2016/08/01/picture/4d0e43c4b8b34fe9ecd69f81f7179643_tvc1.jpg', '<p>Phim giới thiệu c&ocirc;ng ty H&agrave; L&acirc;m FURNITURE</p>', null, null, null, '');

-- ----------------------------
-- Table structure for article_view
-- ----------------------------
DROP TABLE IF EXISTS `article_view`;
CREATE TABLE `article_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `atid` int(11) DEFAULT NULL,
  `avatar` text,
  `sorts` int(11) DEFAULT NULL,
  `poskey` varchar(45) DEFAULT NULL,
  `lang` varchar(45) DEFAULT NULL,
  `captions` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `atid` (`atid`),
  KEY `sort` (`sorts`),
  KEY `poskey` (`poskey`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_view
-- ----------------------------

-- ----------------------------
-- Table structure for at_cat
-- ----------------------------
DROP TABLE IF EXISTS `at_cat`;
CREATE TABLE `at_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) DEFAULT NULL,
  `atid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `atid` (`atid`),
  KEY `catid` (`catid`),
  KEY `at_cat` (`catid`,`atid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of at_cat
-- ----------------------------
INSERT INTO `at_cat` VALUES ('1', '1469629565', '1469903590');
INSERT INTO `at_cat` VALUES ('14', '1469629565', '1469910097');
INSERT INTO `at_cat` VALUES ('2', '1469630127', '1469903590');
INSERT INTO `at_cat` VALUES ('15', '1469630127', '1469910097');
INSERT INTO `at_cat` VALUES ('3', '1469630160', '1469903590');
INSERT INTO `at_cat` VALUES ('16', '1469630160', '1469910097');
INSERT INTO `at_cat` VALUES ('4', '1469630550', '1469903590');
INSERT INTO `at_cat` VALUES ('17', '1469630550', '1469910097');
INSERT INTO `at_cat` VALUES ('5', '1469631468', '1469903590');
INSERT INTO `at_cat` VALUES ('18', '1469631468', '1469910097');
INSERT INTO `at_cat` VALUES ('6', '1469631571', '1469903590');
INSERT INTO `at_cat` VALUES ('19', '1469631571', '1469910097');
INSERT INTO `at_cat` VALUES ('7', '1469631690', '1469903590');
INSERT INTO `at_cat` VALUES ('20', '1469631690', '1469910097');
INSERT INTO `at_cat` VALUES ('8', '1469631705', '1469903590');
INSERT INTO `at_cat` VALUES ('21', '1469631705', '1469910097');
INSERT INTO `at_cat` VALUES ('9', '1469631732', '1469903590');
INSERT INTO `at_cat` VALUES ('22', '1469631732', '1469910097');
INSERT INTO `at_cat` VALUES ('10', '1469631747', '1469903590');
INSERT INTO `at_cat` VALUES ('23', '1469631747', '1469910097');
INSERT INTO `at_cat` VALUES ('11', '1469631762', '1469903590');
INSERT INTO `at_cat` VALUES ('24', '1469631762', '1469910097');
INSERT INTO `at_cat` VALUES ('12', '1469631805', '1469903590');
INSERT INTO `at_cat` VALUES ('25', '1469631805', '1469910097');
INSERT INTO `at_cat` VALUES ('13', '1469802872', '1469903590');
INSERT INTO `at_cat` VALUES ('26', '1470065356', '1470066685');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `caption` varchar(250) DEFAULT NULL,
  `datecreate` int(11) DEFAULT NULL,
  `usercreate` int(11) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `descriptions` varchar(250) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `lang` varchar(20) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `view_type` varchar(50) DEFAULT NULL,
  `layout` varchar(45) DEFAULT NULL,
  `content` text,
  `rightcolcontent` text,
  `coverphoto` text,
  `avatar` text,
  `pintop_atid` int(11) DEFAULT NULL,
  `left_atid` int(11) DEFAULT NULL,
  `center_atid` int(11) DEFAULT NULL,
  `right_atid` int(11) DEFAULT NULL,
  `cover_video` text,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `creator_idx` (`usercreate`),
  KEY `pintop_atid` (`pintop_atid`),
  KEY `left_atid` (`left_atid`),
  KEY `center_atid` (`center_atid`),
  KEY `right_atid` (`right_atid`),
  KEY `view_type` (`view_type`)
) ENGINE=MyISAM AUTO_INCREMENT=1470065376 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1469629565', 'Test Tin tức 1', 'Test Tin tức 1', '1469629565', '1', '0', 'Test Tin tức 1', '1', null, 'news', null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `category` VALUES ('1469630127', 'Tin tức Child 1', 'Tin tức Child 1', '1469630127', '1', '1469629565', 'Tin tức Child 1', '1', null, 'news', null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `category` VALUES ('1469630160', 'Tin tức Child_Child 1.', 'Tin tức Child_Child 1', '1469630160', '1', '1469630127', 'Tin tức Child_Child 1', '1', null, 'news', null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `category` VALUES ('1469630550', 'Tin tức Child 2', 'Tin tức Child 2', '1469630550', '1', '1469629565', 'Tin tức Child 2', '1', null, 'news', null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `category` VALUES ('1469631468', 'Giới thiệu', 'Giới thiệu', '1469631468', '1', '0', 'Giới thiệu', '1', null, 'about', null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `category` VALUES ('1469631571', 'Về chúng tôi', 'Về chúng tôi', '1469631571', '1', '1469631468', 'Về chúng tôi', '1', null, 'about', 'single', null, null, '<p>Một v&agrave;i nội dung ti&ecirc;u biểu</p>', null, null, null, null, null, null, '');
INSERT INTO `category` VALUES ('1469631690', 'Lịch sử hình thành', 'Lịch sử hình thành', '1469631690', '1', '1469631468', 'Lịch sử hình thành', '1', null, 'about', null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `category` VALUES ('1469631705', 'Ban giám đốc', 'Ban giám đốc', '1469631705', '1', '1469631468', 'Ban giám đốc', '1', null, 'about', null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `category` VALUES ('1469631732', 'Bản quyền', 'Bản quyền', '1469631732', '1', '0', 'Bản quyền', '1', null, 'copyright', null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `category` VALUES ('1469631747', 'Đào tạo', 'Đào tạo', '1469631747', '1', '0', 'Đào tạo', '1', null, 'learning', null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `category` VALUES ('1469631762', 'Sản phẩm đặt hàng', 'Sản phẩm đặt hàng', '1469631762', '1', '0', 'Sản phẩm đặt hàng', '1', null, 'product', null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `category` VALUES ('1469631805', 'Youtube Network', 'Youtube Network', '1469631805', '1', '0', 'Youtube Network', '1', null, 'network', null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `category` VALUES ('1469802872', 'Sản xuất - Phát hành', 'Sản xuất - Phát hành', '1469802872', '1', '0', 'Sản xuất - Phát hành', '1', null, 'creator', 'single', null, null, '', null, null, null, null, null, null, '');
INSERT INTO `category` VALUES ('1470065356', 'TVC Quảng cáo', 'TVC Quảng cáo', '1470065356', '1', '1469631762', 'TVC Quảng cáo', '1', null, 'product', 'single', null, null, '', null, null, null, null, null, null, '');
INSERT INTO `category` VALUES ('1470065375', 'Sản xuất theo đơn đặt hàng', 'Sản xuất theo đơn đặt hàng', '1470065375', '1', '1469631762', 'Sản xuất theo đơn đặt hàng', '1', null, 'product', 'single', null, null, '', null, null, null, null, null, null, '');

-- ----------------------------
-- Table structure for category_view
-- ----------------------------
DROP TABLE IF EXISTS `category_view`;
CREATE TABLE `category_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) DEFAULT NULL,
  `poskey` varchar(45) DEFAULT NULL,
  `sorts` int(11) DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `poskey` (`poskey`),
  KEY `sorts` (`sorts`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category_view
-- ----------------------------
INSERT INTO `category_view` VALUES ('2', '1469631468', 'topmenu', '1', null);
INSERT INTO `category_view` VALUES ('3', '1469631732', 'topmenu', '2', null);
INSERT INTO `category_view` VALUES ('4', '1469631747', 'topmenu', '3', null);
INSERT INTO `category_view` VALUES ('5', '1469631762', 'topmenu', '4', null);
INSERT INTO `category_view` VALUES ('22', '1469631468', 'menublockhome', '1', null);
INSERT INTO `category_view` VALUES ('23', '1469631747', 'menublockhome', '2', null);
INSERT INTO `category_view` VALUES ('24', '1469802872', 'menublockhome', '3', null);
INSERT INTO `category_view` VALUES ('25', '1469631805', 'menublockhome', '4', null);
INSERT INTO `category_view` VALUES ('26', '1469629565', 'menublockhome', '5', null);

-- ----------------------------
-- Table structure for chargelog
-- ----------------------------
DROP TABLE IF EXISTS `chargelog`;
CREATE TABLE `chargelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `create_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chargelog
-- ----------------------------
INSERT INTO `chargelog` VALUES ('1', '7119', '10000', '1471015953');

-- ----------------------------
-- Table structure for configs
-- ----------------------------
DROP TABLE IF EXISTS `configs`;
CREATE TABLE `configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `contents` text,
  `create_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of configs
-- ----------------------------
INSERT INTO `configs` VALUES ('1', 'giaithuong', null, 'ádasdasd', '1470647634');
INSERT INTO `configs` VALUES ('2', 'thele', null, 'THỜI GIAN\r\n\r\n		Bắt đầu: 15h00 ngày 15/08/2016.\r\n		Kết thúc: 23h59 ngày 31/08/2016.\r\n		\r\nĐỐI TƯỢNG THAM GIA\r\n\r\n		Tất cả người chơi có tài khoản tại vantiens.com \r\n	\r\nCÁCH THỨC THAM GIA\r\n\r\n		Người chơi cần đạt đủ các điều kiện bên dưới để có thể tham gia đào ở các vùng đất cao hơn \r\n			Vùng Đất 1 : Không có điều kiện\r\n			Vùng Đất 2 : Đạt 100 lần tham gia tại Vùng Đất 1\r\n			Vùng Đất 3 : Đạt 200 lần tham gia tại Vùng Đất 2\r\n		\r\n		Sử dụng điểm Sức Mạnh đổi lượt tham gia:\r\n			Nạp 1000 đồng sẽ nhận được 10.000 điểm sức mạnh\r\n			\r\n			Vùng đất 1 : 100.000 điểm sức mạnh = 1 lượt tham gia\r\n			Vùng đất 2 : 200.000 điểm sức mạnh = 1 lượt tham gia\r\n			Vùng đất 3 : 500.000 điểm sức mạnh = 1 lượt tham gia\r\nLƯU Ý		\r\n			\r\n        Quy đổi điểm Sức Mạnh: Nạp 1000 đồng được 10.000 điểm Sức Mạnh. \r\n        Khi người chơi tham gia đào đạt đủ các mốc tương ứng 1, 100, 200 tại các vùng đất sẽ được phép tham gia đào ở các vùng đất cao hơn\r\n	Điểm sức mạnh sẽ bị trừ khi bạn đổi lượt tham gia \r\n	Tất cả lượt tham gia chỉ có hiệu lực trong thời gian diễn ra chương trình. Nếu không sử dụng, lượt tham gia sẽ mất khi sự kiện kết thúc.\r\n 	Hình ảnh Item ở các vùng đất chỉ là hình ảnh minh họa, các phần thưởng được ghi rõ tại phần \"Giải Thưởng\".\r\n\r\n\r\n', '1471067045');

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `create_at` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `contents` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` text,
  `name` varchar(250) DEFAULT NULL,
  `create_at` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `item_keys` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`,`item_keys`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('29', 'uploads/2016/08/13/picture/39718bea21b24874c3dc37ef57af9936_balo.png', 'Ba Lô', '1471064289', '1', '3', 'ba-lo');
INSERT INTO `items` VALUES ('2', 'uploads/2016/08/12/picture/0ad41f6c9d41c27f48e201125f4992f3_item17.png', 'Rương Gỗ', '1471012800', '1', '1', 'ruong-go');
INSERT INTO `items` VALUES ('3', 'uploads/2016/08/12/picture/53e0ac19b067816ad0965f63a2bb160e_item18.png', 'Rương Đồng', '1471012837', '1', '1', 'ruong-dong');
INSERT INTO `items` VALUES ('4', 'uploads/2016/08/12/picture/836f438ea96b4659b2af7b5d73d9af67_item14.png', 'Rương Đá', '1471012910', '1', '1', 'ruong-da');
INSERT INTO `items` VALUES ('5', 'uploads/2016/08/12/picture/3fcc0d453c02fa0ff99021787311d7dc_item3.png', 'Thẻ Cào 20k', '1471012932', '1', '1', 'the-20');
INSERT INTO `items` VALUES ('6', 'uploads/2016/08/12/picture/1b2650fe36f58aff7fb19fb1a93b4f58_item8.png', 'Thẻ Cào 50k', '1471012948', '1', '1', 'the-50');
INSERT INTO `items` VALUES ('7', 'uploads/2016/08/12/picture/809141df9fb6ce6f01b0ba216542a4ee_item6.png', 'Sạc dự phòng', '1471012967', '1', '1', 'sac');
INSERT INTO `items` VALUES ('8', 'uploads/2016/08/12/picture/3a457e548723984c9b5f9f067a011974_item13.png', 'Chuột', '1471012988', '1', '1', 'chuot');
INSERT INTO `items` VALUES ('9', 'uploads/2016/08/12/picture/a3d0c31fbf8ab2fdf731e1d6a09ce758_item16.png', 'Bàn phím', '1471013007', '1', '1', 'ban-phim');
INSERT INTO `items` VALUES ('10', 'uploads/2016/08/12/picture/330a9a2d2df207412adb160e20792a46_item15.png', 'iPad', '1471013030', '1', '1', 'ipad');
INSERT INTO `items` VALUES ('11', 'uploads/2016/08/13/picture/a4206d6f24cc619b3fc6918299efbb96_item14.png', 'Rương Đá', '1471060882', '1', '2', 'ruong-da');
INSERT INTO `items` VALUES ('12', 'uploads/2016/08/13/picture/da1225acec3b08ac3e5682ce7f650f94_item12.png', 'Rương Bạc', '1471060914', '1', '2', 'ruong-bac');
INSERT INTO `items` VALUES ('13', 'uploads/2016/08/13/picture/8128907df1cd71fda263f40912990cf2_item1.png', 'Rương Vàng', '1471060928', '1', '2', 'ruong-vang');
INSERT INTO `items` VALUES ('14', 'uploads/2016/08/13/picture/440a581fe8c20ae3b2a7ab8687c1e442_item3.png', 'Thẻ Cào 20k', '1471060969', '1', '2', 'the-20');
INSERT INTO `items` VALUES ('15', 'uploads/2016/08/13/picture/474c220713c27c2e235ff89623756e3e_item8.png', 'Thẻ Cào 50k', '1471060984', '1', '2', 'the-50');
INSERT INTO `items` VALUES ('16', 'uploads/2016/08/13/picture/0111215a93c79efb66abb48e6e46249a_item13.png', 'Chuột', '1471061047', '1', '2', 'chuot');
INSERT INTO `items` VALUES ('26', 'uploads/2016/08/13/picture/dfb64596d9330dead208ec6edce789c7_iphone.png', 'iPhone 6', '1471064119', '1', '2', 'iphone');
INSERT INTO `items` VALUES ('18', 'uploads/2016/08/13/picture/7d3e449aa2b521a667f2f9d07165c941_item10.png', 'Tai nghe', '1471061921', '1', '2', 'tai-nghe');
INSERT INTO `items` VALUES ('27', 'uploads/2016/08/13/picture/3eb57c5004bc699017a4c6c2f9fcc19f_balo.png', 'Ba Lô', '1471064146', '1', '2', 'ba-lo');
INSERT INTO `items` VALUES ('20', 'uploads/2016/08/13/picture/639bc1c7ef32c557b0ab0d8e3051bdb8_item1.png', 'Rương Vàng', '1471062203', '1', '3', 'ruong-vang');
INSERT INTO `items` VALUES ('21', 'uploads/2016/08/13/picture/2d2535856e50525530c90ed48de6ebc3_item9.png', 'Chìa khóa vàng', '1471062244', '0', '3', 'chia-khoa');
INSERT INTO `items` VALUES ('28', 'uploads/2016/08/13/picture/63691946df7acc44f7f7c3e56398337d_iphone.png', 'iPhone 6', '1471064273', '1', '3', 'iphone');
INSERT INTO `items` VALUES ('23', 'uploads/2016/08/13/picture/75ef8cf9730f7c6cdcd5785360c256ad_item6.png', 'Sạc dự phòng', '1471062280', '1', '3', 'sac');
INSERT INTO `items` VALUES ('24', 'uploads/2016/08/13/picture/b677ed870b9e633d5755c64a681b5061_item16.png', 'Bàn phím', '1471062314', '1', '3', 'ban-phim');
INSERT INTO `items` VALUES ('25', 'uploads/2016/08/13/picture/9e8adae47cb63cdd6aaa3a264fa1da31_item10.png', 'Tai nghe', '1471062374', '1', '3', 'tai-nghe');
INSERT INTO `items` VALUES ('30', 'uploads/2016/08/13/picture/511125e12b4da294abf63dc198f32e6c_item3.png', 'Thẻ Cào 20k', '1471064346', '1', '3', 'the-20');
INSERT INTO `items` VALUES ('31', 'uploads/2016/08/13/picture/e89d8624c35ffcf0c1131856f5a3b41b_item8.png', 'Thẻ Cào 50k', '1471064360', '1', '3', 'the-50');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `objid` text,
  `parentid` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sorts` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `parentid` (`parentid`),
  KEY `status` (`status`),
  KEY `sorts` (`sorts`)
) ENGINE=MyISAM AUTO_INCREMENT=1469726463 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1469725129', 'Trang chủ', null, '/', '0', '1', '1');
INSERT INTO `menu` VALUES ('1469726238', 'GIới thiệu', null, '/', '0', '1', '2');
INSERT INTO `menu` VALUES ('1469726249', 'Về chúng tôi', null, 'http://demo.thanglongav.vn/ve-chung-toi_c1469631571.html', '1469726238', '1', '1');
INSERT INTO `menu` VALUES ('1469726411', 'Lịch sử hình thành', null, 'http://demo.thanglongav.vn/lich-su-hinh-thanh_c1469631690.html', '1469726238', '1', '2');
INSERT INTO `menu` VALUES ('1469726421', 'Ban giám đốc', null, 'http://demo.thanglongav.vn/ban-giam-doc_c1469631705.html', '1469726238', '1', '3');
INSERT INTO `menu` VALUES ('1469726435', 'Bản quyền', null, 'http://demo.thanglongav.vn/ban-quyen_c1469631732.html', '0', '1', '3');
INSERT INTO `menu` VALUES ('1469726443', 'Đào tạo', null, 'http://demo.thanglongav.vn/dao-tao_c1469631747.html', '0', '1', '4');
INSERT INTO `menu` VALUES ('1469726452', 'Sản phẩm đặt hàng', null, 'http://demo.thanglongav.vn/san-pham-dat-hang_c1469631762.html', '0', '1', '5');
INSERT INTO `menu` VALUES ('1469726462', 'Liên hệ', null, 'http://demo.thanglongav.vn/index/contact', '0', '1', '6');

-- ----------------------------
-- Table structure for partner
-- ----------------------------
DROP TABLE IF EXISTS `partner`;
CREATE TABLE `partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `avatar` text NOT NULL,
  `status` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of partner
-- ----------------------------

-- ----------------------------
-- Table structure for rolegroup
-- ----------------------------
DROP TABLE IF EXISTS `rolegroup`;
CREATE TABLE `rolegroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `datecreate` int(11) DEFAULT NULL,
  `usercreate` int(11) DEFAULT NULL,
  `permissions` text,
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `sort` (`datecreate`),
  KEY `usercreate_idx` (`usercreate`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolegroup
-- ----------------------------
INSERT INTO `rolegroup` VALUES ('1', 'Super Administrator', '1', null, '1', 'loginsystem,news,news_view,news_add,news_update,news_updatestatus,news_delete,albummedia,albummedia_view,albummedia_add,albummedia_update,albummedia_delete,category,category_view,category_add,category_update,category_delete,rolegroup,rolegroup_view,rolegroup_add,rolegroup_update,rolegroup_delete,user,user_view,user_add,user_update,user_delete,user_role,categoryview,categoryview_view,categoryview_add,categoryview_update,categoryview_delete,menuview,menuview_view,menuview_add,menuview_update,menuview_delete,articleview,articleview_view,articleview_add,articleview_update,articleview_delete,config,config_view,config_add,config_update,config_delete,classobj,classobj_view,classobj_add,classobj_update,classobj_delete,pupil,pupil_view,pupil_add,pupil_update,pupil_delete,pupil_report,pupil_reportupdatestatus,pupil_notify,teacher,teacher_view,teacher_add,teacher_update,teacher_delete,rprequestlog,rprequestlog_view,rprequestlog_add,rprequestlog_update,rprequestlog_delete,timetable,timetable_view,timetable_add,timetable_update,timetable_delete,tuition,tuition_view,tuition_add,tuition_update,tuition_delete,event,event_view,event_add,event_update,event_delete,userpostition,userpostition_view,userpostition_add,userpostition_update,userpostition_delete,partner,partner_view,partner_add,partner_update,partner_delete');
INSERT INTO `rolegroup` VALUES ('2', 'Mod', '2', null, '1', null);
INSERT INTO `rolegroup` VALUES ('3', 'Nhóm quyền test', '3', '1461122848', '1', 'loginsystem,categoryview,categoryview_view,categoryview_add,categoryview_update,categoryview_delete,event,event_view,event_add,event_update,event_delete');
INSERT INTO `rolegroup` VALUES ('4', 'Phòng QC', '5', '1466151400', '1', 'loginsystem,news,news_view,albummedia,albummedia_view,category,category_view,rolegroup,rolegroup_view,user,user_view,categoryview,categoryview_view,articleview,articleview_view,config,config_view,classobj,classobj_view,classobj_add,classobj_update,classobj_delete,pupil,pupil_view,pupil_add,pupil_update,pupil_delete,pupil_report,pupil_reportupdatestatus,pupil_notify,teacher,teacher_view,teacher_add,teacher_update,teacher_delete,rprequestlog,rprequestlog_view,timetable,timetable_view,tuition_view,event_view,userpostition,userpostition_view,userpostition_add,userpostition_update,userpostition_delete');
INSERT INTO `rolegroup` VALUES ('5', 'Phòng Brand & Events', '4', '1466475537', '1', 'loginsystem,news,news_view,news_add,news_update,news_updatestatus,news_delete,albummedia,albummedia_view,albummedia_add,albummedia_update,albummedia_delete,category,category_view,category_add,category_update,category_delete,rolegroup,rolegroup_view,rolegroup_add,rolegroup_update,rolegroup_delete,user,user_view,user_add,user_update,user_delete,user_role,categoryview,categoryview_view,categoryview_add,categoryview_update,categoryview_delete,articleview,articleview_view,articleview_add,articleview_update,articleview_delete,config_view,classobj_view,pupil_view,teacher_view,rprequestlog_view,timetable,timetable_view,timetable_add,timetable_update,timetable_delete,tuition,tuition_view,tuition_add,tuition_update,tuition_delete,event,event_view,event_add,event_update,event_delete,userpostition,userpostition_view,userpostition_add,userpostition_update,userpostition_delete');
INSERT INTO `rolegroup` VALUES ('6', 'Phòng Chuyên Môn', '6', '1466479838', '1', 'loginsystem,news,news_view,news_add,news_update,news_updatestatus,news_delete,albummedia,albummedia_view,albummedia_add,albummedia_update,albummedia_delete,category,category_view,category_add,category_update,category_delete,categoryview,categoryview_view,categoryview_add,categoryview_update,categoryview_delete,articleview,articleview_view,articleview_add,articleview_update,articleview_delete,pupil_view,pupil_update,pupil_report,pupil_reportupdatestatus,pupil_notify,teacher,teacher_view,teacher_add,teacher_update,teacher_delete,timetable,timetable_view,timetable_add,timetable_update,timetable_delete,userpostition,userpostition_view,userpostition_add,userpostition_update,userpostition_delete');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `firstname` varchar(65) DEFAULT NULL,
  `lastname` varchar(65) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `avatar` text,
  `dob` int(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `address` text,
  `phone` varchar(20) DEFAULT NULL,
  `datecreate` int(11) DEFAULT NULL,
  `usercreate` int(11) DEFAULT NULL,
  `gender` smallint(6) DEFAULT NULL,
  `private_permission` text,
  `flags` varchar(45) DEFAULT NULL,
  `classid` int(11) DEFAULT NULL,
  `activekey` varchar(45) DEFAULT NULL,
  `fbid` varchar(45) DEFAULT NULL,
  `fbemail` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `active_register` varchar(32) DEFAULT NULL,
  `phone2` varchar(25) DEFAULT NULL,
  `father_name` varchar(150) DEFAULT NULL,
  `mother_name` varchar(150) DEFAULT NULL,
  `captions` text,
  `pos_id` int(11) DEFAULT NULL,
  `fullname_none_utf` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_2` (`username`),
  KEY `login` (`username`,`password`),
  KEY `username` (`username`),
  KEY `type` (`type`),
  KEY `phone` (`phone`),
  KEY `sorts` (`datecreate`),
  KEY `gender` (`gender`),
  KEY `usercreate` (`usercreate`),
  KEY `email` (`email`),
  KEY `sort_firstname` (`firstname`),
  KEY `sort_lastname` (`lastname`),
  KEY `flag` (`flags`),
  KEY `classid` (`classid`),
  KEY `status` (`status`),
  KEY `activeregister` (`active_register`),
  KEY `pos_id` (`pos_id`)
) ENGINE=MyISAM AUTO_INCREMENT=595 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '14e1b600b1fd579f47433b88e8d85291', 'Nguyễn Hoàng', 'Việt', '1', 'uploads/2016/03/16//picture/f3a369bb43b7c13bcc7693250c6c40c5_desert.jpg', '655146000', 'vietpiano@gmail.com', 'Thanh Quang - An Thượng - Hoài Đức - Hà Nội', '0983488938', null, '1', '1', null, 'system', null, null, '', '', '1', null, null, null, null, null, null, 'Nguyen Hoang Viet');
INSERT INTO `user` VALUES ('2', 'spcom', '113969485f92c6e5c66b9e503222d7fd', 'Nguyen The', 'Co', '1', 'uploads/2016/03/17//picture/7e4051c64ba1a14a1f2c04f84f839742_desert.jpg', '709833600', 'nhacdjchamvn@gmail.com', 'Xóm Chợ - An Khánh - Hoài Đức - Hà Nội', '0903430692', '1458199036', null, '1', null, 'system', null, 'EKBw1sU9g9', '', '', '1', null, null, null, null, null, null, 'Nguyen The Co');
INSERT INTO `user` VALUES ('3', 'vietnh', '14e1b600b1fd579f47433b88e8d85291', 'Nguyễn Hoàng', 'Việt', null, null, '655146000', 'vietpiano2@gmail.com', 'Thanh Quang - An Thượng - Hoài Đức - Hà Nội', '0983488938', '1458887064', null, '1', null, 'pupil', '1468896663', null, '804967039637268', 'vietpiano@gmail.com', '1', null, '', '', '', null, '3', 'Nguyen Hoang Viet');
INSERT INTO `user` VALUES ('4', 'anhnv', '14e1b600b1fd579f47433b88e8d85291', 'Nguyễn Văn', 'Anh', null, null, '567968400', null, '', '', '1459066743', '1', '1', null, 'teacher', null, null, '', '', '1', null, null, null, null, '<p>Giới thiệu g&igrave; đ&oacute;</p>', null, 'Nguyen Van Anh');
INSERT INTO `user` VALUES ('5', 'supercom', 'b2e4e43a490cd5f632b1a19b2c5b555a', 'Nguyễn Thế', 'Cơ', null, null, '709837200', 'nhacdjchamvn@gmail.com', '164 Khuất Duy Tiến', '0903430692', '1459247994', null, '1', null, 'pupil', '1468896663', null, '1143800532305944', 'nhacdjchamvn@gmail.com', '1', '6c43b8d08efb4a6bcf2281dad6f8a00b', '', '', '', null, '6', 'Nguyen The Co');
INSERT INTO `user` VALUES ('8', 'viet', '14e1b600b1fd579f47433b88e8d85291', 'AA', 'AAÂ', null, null, '631126800', 'abc@gmail.com', '', '', '1461122878', null, null, null, 'system', null, null, null, null, '1', null, null, null, null, null, null, 'AA AAA');
INSERT INTO `user` VALUES ('436', 'wsi_kimlong', 'b5a93b713601fcc038b12269ac146412', 'Kim', 'Long', null, null, '1466096400', null, null, '01239198203', '1466140390', null, null, null, 'pupil', '1466140390', null, null, null, '1', '821eceae819f91305ee2c9f55d93dddf', '0946889995', 'Mr. Kim Mạnh Tuấn', 'Ms. Đỗ Khánh Phương', null, null, 'Kim Long');
INSERT INTO `user` VALUES ('437', 'wsi_nguyentrungphuc', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Trung Phúc', null, null, '1466096400', null, null, '0987152222', '1466140390', null, null, null, 'pupil', '1466140390', null, null, null, '1', '9d4faa47ed4528b2178b517349b939aa', '0983131003', 'Mr. Nguyễn Phúc Vượng', 'Ms. Trần Yến Phương', null, null, 'Nguyen Trung Phuc');
INSERT INTO `user` VALUES ('438', 'wsi_lekhanhtoan', 'b5a93b713601fcc038b12269ac146412', 'Lê', 'Khánh Toàn', null, null, '1466096400', null, null, '0989281616', '1466140390', null, null, null, 'pupil', '1466140390', null, null, null, '1', '0405166eafc11f08a59908018c157e7a', '0945332999', 'Mr. Lê Khánh Trình', 'Ms. Trần Thị Thu Huyền', null, null, 'Le Khanh Toan');
INSERT INTO `user` VALUES ('439', 'wsi_nguyenthienduong', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Thiên Dương', null, null, '1466096400', null, null, '0902227777', '1466140390', null, null, null, 'pupil', '1466140390', null, null, null, '1', '7218f4ea2189a00230a2638153f29e60', '0912800851', 'Mr. Nguyễn Viết Thêm', 'Ms. Đỗ Thị An', null, null, 'Nguyen Thien Duong');
INSERT INTO `user` VALUES ('440', 'wsi_lenhatquynh', 'b5a93b713601fcc038b12269ac146412', 'Lê', 'Nhật Quỳnh', null, null, '1466096400', null, null, '01297753589', '1466140390', null, null, null, 'pupil', '1466140390', null, null, null, '1', '89b5df30c3a8e5b24b57c017126936c9', '0979731219', 'Mr. Lê Văn Sơn', 'Ms. Phạm Thị Dung', null, null, 'Le Nhat Quynh');
INSERT INTO `user` VALUES ('441', 'wsi_phamminhhoa', 'b5a93b713601fcc038b12269ac146412', 'Phạm', 'Minh Hòa', null, null, '1466096400', null, null, '0903208222', '1466140390', null, null, null, 'pupil', '1466140390', null, null, null, '1', 'fd6b676200d0f8976b7935dcf005efa6', '0906218222', 'Mr. Phạm Quang Huy', 'Ms. Nguyễn Thị Hồng', null, null, 'Pham Minh Hoa');
INSERT INTO `user` VALUES ('442', 'wsi_tranminhquan', 'b5a93b713601fcc038b12269ac146412', 'Trần', 'Minh Quân', null, null, '1466096400', null, null, '0912.029050', '1466140390', null, null, null, 'pupil', '1466140396', null, null, null, '1', '93393eb4146cca2fe3b20b1af775bfc8', '0907.703838', 'Mr. Trần Hoàng Quân', 'Ms. Lê Thị Thúy Nga', null, null, 'Tran Minh Quan');
INSERT INTO `user` VALUES ('443', 'wsi_nguyenthuyanh2002', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Thùy Anh', null, null, '1466096400', null, null, '0912.505105', '1466140390', null, null, null, 'pupil', '1466140396', null, null, null, '1', '4a307cd05e225978d1f6275f6f3ac092', '0916.162986', 'Mr. Nguyễn Thanh Cường', 'Ms. Bùi Thị Mai Oanh', null, null, 'Nguyen Thuy Anh');
INSERT INTO `user` VALUES ('444', 'wsi_leductam', 'b5a93b713601fcc038b12269ac146412', 'Lê', 'Đức Tâm', null, null, '1466096400', null, null, '0903.215581', '1466140390', null, null, null, 'pupil', '1466140396', null, null, null, '1', '44ba46582caa0f444bf0f0194629a367', '0989.955814', 'Mr. Lê Đức Trung', 'Ms. Nguyễn Kim Hải', null, null, 'Le Duc Tam');
INSERT INTO `user` VALUES ('445', 'wsi_dolanphuong', 'b5a93b713601fcc038b12269ac146412', 'Đỗ', 'Lan Phương', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140396', null, null, null, '1', '0814a8aa0e5f9d3005d51abbda7a7afa', '0975.031081', null, 'Ms. Vũ Thị Hưng', null, null, 'Do Lan Phuong');
INSERT INTO `user` VALUES ('446', 'wsi_phamquynhmai', 'b5a93b713601fcc038b12269ac146412', 'Phạm', 'Quỳnh Mai', null, null, '1466096400', null, null, '0985.361111', '1466140390', null, null, null, 'pupil', '1466140396', null, null, null, '1', '3c1d73d84c57c3158717543bb60f6de9', '0986.667879', 'Mr. Phạm Thanh Nghị', 'Ms. Đặng Thị Thu Thủy', null, null, 'Pham Quynh Mai');
INSERT INTO `user` VALUES ('447', 'wsi_hoangnamkhanh', 'b5a93b713601fcc038b12269ac146412', 'Hoàng', 'Nam Khánh', null, null, '1466096400', null, null, '0913.210143', '1466140390', null, null, null, 'pupil', '1466140396', null, null, null, '1', 'd3717b4edfc8de9d7a9fcf44f87f24b9', '0987.899557', 'Mr. Hoàng Văn Bình', 'Ms. Trần Thanh Tâm', null, null, 'Hoang Nam Khanh');
INSERT INTO `user` VALUES ('448', 'wsi_dinhlinhnhi', 'b5a93b713601fcc038b12269ac146412', 'Đinh', 'Linh Nhi', null, null, '1466096400', null, null, '0988.619847', '1466140390', null, null, null, 'pupil', '1466140396', null, null, null, '1', '601465917ed4d49786849e7c23a76195', '0987.373591', 'Mr. Đinh Văn Bính', 'Ms. Trần Thị Tình', null, null, 'Dinh Linh Nhi');
INSERT INTO `user` VALUES ('449', 'wsi_nguyentranglinh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Trang Linh', null, null, '1466096400', null, null, '0903.201468', '1466140390', null, null, null, 'pupil', '1466140396', null, null, null, '1', '346dc5131d0534b8a73506bfa2ce3ade', '0983.201468', 'Mr. Nguyễn Duy Phương', 'Ms. Trương Thị Tuyết Nhung', null, null, 'Nguyen Trang Linh');
INSERT INTO `user` VALUES ('450', 'wsi_phamthihonganh', 'b5a93b713601fcc038b12269ac146412', 'Phạm', 'Thị Hồng Ánh', null, null, '1466096400', null, null, '0903408410', '1466140390', null, null, null, 'pupil', '1466140396', null, null, null, '1', '7470d24c05ee1861037a81f36034582b', '0904.403663', 'Mr. Phạm Hồng Thăng', 'Ms. Nguyễn Thị Thu Hằng', null, null, 'Pham Thi Hong Anh');
INSERT INTO `user` VALUES ('451', 'wsi_luutichkhanhchung', 'b5a93b713601fcc038b12269ac146412', 'Lưu', 'Tích Khánh Chung', null, null, '1466096400', null, null, '0983.651667', '1466140390', null, null, null, 'pupil', '1466140405', null, null, null, '1', '3402e9035be55e073e1afacaf06d5411', '0988.623469', null, 'Ms Linh', null, null, 'Luu Tich Khanh Chung');
INSERT INTO `user` VALUES ('452', 'wsi_nguyenhongduong', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Hồng Dương', null, null, '1466096400', null, null, '0912.118844', '1466140390', null, null, null, 'pupil', '1466140405', null, null, null, '1', '0a312fbb9df61094d87f5b615c994b78', '0982.200088', null, 'Ms Thúy', null, null, 'Nguyen Hong Duong');
INSERT INTO `user` VALUES ('454', 'wsi_vuhienthao', 'b5a93b713601fcc038b12269ac146412', 'Vũ', 'Hiền Thảo', null, null, '1466096400', null, null, '0903.430408', '1466140390', null, null, null, 'pupil', '1466140405', null, null, null, '1', 'a46e768224c6f57c1bc66483384af78c', '0989.357823', 'Mr. Quang', null, null, null, 'Vu Hien Thao');
INSERT INTO `user` VALUES ('455', 'wsi_donamanh', 'b5a93b713601fcc038b12269ac146412', 'Đỗ', 'Nam Anh', null, null, '1466096400', null, null, '0905.221981', '1466140390', null, null, null, 'pupil', '1466140405', null, null, null, '1', 'd824c34a1b5406cd09f5382e59251c16', '0969.578969', null, 'Ms.Hà', null, null, 'Do Nam Anh');
INSERT INTO `user` VALUES ('456', 'wsi_duongthuanvi', 'b5a93b713601fcc038b12269ac146412', 'Dương', 'Thuận Vi', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140405', null, null, null, '1', 'df9478cb585bb05ac8bbdfe8374c5ccb', '0985.916676', null, 'Ms.Hoa', null, null, 'Duong Thuan Vi');
INSERT INTO `user` VALUES ('457', 'wsi_nguyenhamy', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Hà My', null, null, '1466096400', null, null, '0905.381111', '1466140390', null, null, null, 'pupil', '1466140405', null, null, null, '1', '46e781aadfb38fcceeb7cb1bf36c1636', '0912.750598', 'Mr. Tùng', null, null, null, 'Nguyen Ha My');
INSERT INTO `user` VALUES ('458', 'wsi_hoangminhhieu', 'b5a93b713601fcc038b12269ac146412', 'Hoàng', 'Minh Hiếu', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140405', null, null, null, '1', '122da45753e62e11d0e4de2e264fddfb', '0913.232504', null, 'Ms Huyền', null, null, 'Hoang Minh Hieu');
INSERT INTO `user` VALUES ('459', 'wsi_phungnguyennhatminh', 'b5a93b713601fcc038b12269ac146412', 'Phùng', 'Nguyễn Nhật Minh', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140405', null, null, null, '1', 'c2bda1deaf0ffa068a4a489dbf791e32', '0975393939', null, null, null, null, 'Phung Nguyen Nhat Minh');
INSERT INTO `user` VALUES ('460', 'wsi_nguyenhungky', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Hùng Kỳ', null, null, '1466096400', null, null, '0913.225589', '1466140390', null, null, null, 'pupil', '1466140405', null, null, null, '1', '4c4ae88621a597a29d5711e0af75ce08', '0982.321510', null, null, null, null, 'Nguyen Hung Ky');
INSERT INTO `user` VALUES ('461', 'wsi_dinhminhduc', 'b5a93b713601fcc038b12269ac146412', 'Đinh', 'Minh Đức', null, null, '1466096400', null, null, '0988.598989', '1466140390', null, null, null, 'pupil', '1466140405', null, null, null, '1', '9c7f964926750e89201b38dfce106474', '0915.040305', 'Mr. Đinh Tú Anh', 'Ms. Trần Thị Tuyết Lan', null, null, 'Dinh Minh Duc');
INSERT INTO `user` VALUES ('462', 'wsi_daothihongminh', 'b5a93b713601fcc038b12269ac146412', 'Đào', 'Thị Hồng Minh', null, null, '1466096400', null, null, '0912.632969', '1466140390', null, null, null, 'pupil', '1466140405', null, null, null, '1', '920926a7a146af76503b869b3a763907', '0984.130547', 'Mr. Đào Anh Phương', 'Ms. Hương', null, null, 'Dao Thi Hong Minh');
INSERT INTO `user` VALUES ('463', 'wsi_dangchauanh', 'b5a93b713601fcc038b12269ac146412', 'Đặng', 'Châu Anh', null, null, '1466096400', null, null, '0168.9988995', '1466140390', null, null, null, 'pupil', '1466140417', null, null, null, '1', 'b2b5cdcdf4054103de3797b96d9f71a5', '0913.307367', 'Mr. Đặng Hồng Dương', 'Ms. Nguyễn Thanh Hồng', null, null, 'Dang Chau Anh');
INSERT INTO `user` VALUES ('464', 'wsi_phamminhngoc', 'b5a93b713601fcc038b12269ac146412', 'Phạm', 'Minh Ngọc', null, null, '1466096400', '', '', '0904.585628', '1466140390', null, null, null, 'pupil', '1466140405', null, null, null, '1', '491d9f23e8185418f7074f515bab4e8b', '0906.216199', 'Mr. Phạm Văn Cường', 'Ms. Nguyễn Thị Hồng Loan', null, '1', 'Pham Minh Ngoc');
INSERT INTO `user` VALUES ('465', 'wsi_tranminhduc', 'b5a93b713601fcc038b12269ac146412', 'Trần', 'Minh Đức', null, null, '1466096400', null, null, '0903.288848', '1466140390', null, null, null, 'pupil', '1466140417', null, null, null, '1', 'bdc7770f715e68958048dc38eb5db8b6', '0903498089 ', 'Mr. Trần Mạnh Đông', 'Ms. Trịnh Việt Nga', null, null, 'Tran Minh Duc');
INSERT INTO `user` VALUES ('466', 'wsi_nguyenduykien', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Duy Kiên', null, null, '1466096400', null, null, '0913.505518', '1466140390', null, null, null, 'pupil', '1466140417', null, null, null, '1', 'c33a3da94e014ab53acc2c3fb2be3338', '0913.525032', 'Mr. Nguyễn Duy Ký', 'Ms. Nguyễn Thị Tuyết', null, null, 'Nguyen Duy Kien');
INSERT INTO `user` VALUES ('467', 'wsi_nguyenkhanhlinh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Khánh Linh', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140417', null, null, null, '1', '3a5b872c1a3dd6f1805a895742be34b7', '0912.115147', 'Mr. Nguyễn Đình Luật', 'Ms. Đặng Thị Hòa', null, null, 'Nguyen Khanh Linh');
INSERT INTO `user` VALUES ('468', 'wsi_tranthuytien', 'b5a93b713601fcc038b12269ac146412', 'Trần', 'Thủy Tiên', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140417', null, null, null, '1', '654d99d8dc8277030b0507bf99f3d137', '01666258862', null, 'Bà Út', null, null, 'Tran Thuy Tien');
INSERT INTO `user` VALUES ('470', 'wsi_nguyenducminh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Đức Minh', null, null, '1466096400', null, null, '0916.022468', '1466140390', null, null, null, 'pupil', '1466140424', null, null, null, '1', '3ac4286bc53943bd8bacd335c3db023d', '0904130000', 'Mr. Nguyễn Mạnh Cường', 'Ms. Vũ Thị Diễm Thùy', null, null, 'Nguyen Duc Minh');
INSERT INTO `user` VALUES ('471', 'wsi_lemytam', 'b5a93b713601fcc038b12269ac146412', 'Lê', 'Mỹ Tâm', null, null, '1466096400', null, null, '0903.215581', '1466140390', null, null, null, 'pupil', '1466140424', null, null, null, '1', '48ceb1de8848a130a39f4880665e5154', '0989.955814', 'Mr. Lê Đức Trung', 'Ms. Nguyễn Kim Hải', null, null, 'Le My Tam');
INSERT INTO `user` VALUES ('472', 'wsi_nguyenngocbaongan', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Ngọc Bảo Ngân', null, null, '1466096400', null, null, '0903.432230', '1466140390', null, null, null, 'pupil', '1466140424', null, null, null, '1', '1014deda78de261d0d19fbfb5268aed6', '0904032121', 'Mr. Nguyễn Ngọc Khánh', 'Ms. Nguyễn Kim Hạnh', null, null, 'Nguyen Ngoc Bao Ngan');
INSERT INTO `user` VALUES ('473', 'wsi_nguyenthianbinh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Thị An Bình', null, null, '1466096400', null, null, '0912.055576', '1466140390', null, null, null, 'pupil', '1466140424', null, null, null, '1', '403874085eaf3f8cfcf53184738543ee', '0983.663129', 'Mr. Nguyễn Đức Thành', 'Ms. Trần Thi Hồng Hải', null, null, 'Nguyen Thi An Binh');
INSERT INTO `user` VALUES ('474', 'wsi_nguyenlinhdan', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Linh Đan', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140424', null, null, null, '1', 'e0485b1b2b4f0665c95c8abb8220f8cd', '0983210146', null, null, null, null, 'Nguyen Linh Dan');
INSERT INTO `user` VALUES ('475', 'wsi_tranquynhtrang', 'b5a93b713601fcc038b12269ac146412', 'Trần', 'Quỳnh Trang', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140424', null, null, null, '1', '3e9d68b397e3609c6991ea3b3c6567ed', '0983.219979', null, 'Ms. Huyền', null, null, 'Tran Quynh Trang');
INSERT INTO `user` VALUES ('476', 'wsi_nguyenthuyanh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Thùy Anh', null, null, '1466096400', null, null, '0982152867', '1466140390', null, null, null, 'pupil', '1466140424', null, null, null, '1', 'ba1f1406539932bcbed690afb571f991', '0983.448256', 'Mr. Nguyễn Sông Hồng', 'Ms. Đặng Thị Hồng', null, null, 'Nguyen Thuy Anh');
INSERT INTO `user` VALUES ('477', 'wsi_nguyensonvu', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Sơn Vũ', null, null, '1466096400', null, null, '0904.519894', '1466140390', null, null, null, 'pupil', '1466140424', null, null, null, '1', 'b660c79c354898f60dcfb672aed39085', '0904.529893', 'Mr.Nguyễn Xuân Trường', 'Ms. Vũ Hồng Việt', null, null, 'Nguyen Son Vu');
INSERT INTO `user` VALUES ('478', 'wsi_nguyenphuonganh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Phương Anh', null, null, '1466096400', null, null, '0944.838484', '1466140390', null, null, null, 'pupil', '1466140432', null, null, null, '1', 'a3db0a5da05470f901db19601c96544c', '0915.591768', 'Mr. Tùng', null, null, null, 'Nguyen Phuong Anh');
INSERT INTO `user` VALUES ('479', 'wsi_ngongoclinh', 'b5a93b713601fcc038b12269ac146412', 'Ngô', 'Ngọc Linh', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140432', null, null, null, '1', '9aa56de87c81807d0141b387a4e26a8b', '0966.821262', null, 'Ms. Trinh', null, null, 'Ngo Ngoc Linh');
INSERT INTO `user` VALUES ('480', 'wsi_tathuuyen', 'b5a93b713601fcc038b12269ac146412', 'Tạ', 'Thu Uyên', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140432', null, null, null, '1', '25aa19df7b6e1f5fdb993122782f6544', '0936268611', null, null, null, null, 'Ta Thu Uyen');
INSERT INTO `user` VALUES ('481', 'wsi_ngochibach', 'b5a93b713601fcc038b12269ac146412', 'Ngô', 'Chí Bách', null, null, '1466096400', null, null, '0908081689', '1466140390', null, null, null, 'pupil', '1466140432', null, null, null, '1', '3afb2d5edb82fc8907184343015bc9b8', '0904.001068', null, null, null, null, 'Ngo Chi Bach');
INSERT INTO `user` VALUES ('483', 'wsi_nguyenductam', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Đức Tâm', null, null, '1466096400', null, null, '0972.833277', '1466140390', null, null, null, 'pupil', '1466140432', null, null, null, '1', 'ebf4d12b74b5881350e2a23df11bc59d', null, 'Mr. Thắng', null, null, null, 'Nguyen Duc Tam');
INSERT INTO `user` VALUES ('484', 'wsi_nguyenngoclamkhue', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Ngọc Lam Khuê', null, null, '1466096400', null, null, '0988.552599', '1466140390', null, null, null, 'pupil', '1466140432', null, null, null, '1', 'c4a7b0aef3508ad7143f53b0d55cd1aa', '0981.483338', 'Mr. Nguyễn Đỗ Quang Duy', 'Ms. Nguyễn Thị Thủy', null, null, 'Nguyen Ngoc Lam Khue');
INSERT INTO `user` VALUES ('485', 'wsi_nguyenhoangthaonhi', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Hoàng Thảo Nhi', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140432', null, null, null, '1', '7c81284c578c0632b13f32843d5fd4d6', '0982.121604', null, null, null, null, 'Nguyen Hoang Thao Nhi');
INSERT INTO `user` VALUES ('486', 'wsi_nguyenminhkhanhhung', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Minh Khánh Hưng', null, null, '1466096400', null, null, '0983.287980', '1466140390', null, null, null, 'pupil', '1466140440', null, null, null, '1', '21b5ebf9f354a77b0f293e91faa2489f', '0983.387980', 'Mr. Nguyễn Minh Cường', 'Ms. Nguyễn Thị Hương Lan', null, null, 'Nguyen Minh Khanh Hung');
INSERT INTO `user` VALUES ('487', 'wsi_hoangtamnhi', 'b5a93b713601fcc038b12269ac146412', 'Hoàng', 'Tâm Nhi', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140440', null, null, null, '1', '9fa3a41513672b1af9f7113b2eed1c12', '0904.220786', null, 'Ms Loan', null, null, 'Hoang Tam Nhi');
INSERT INTO `user` VALUES ('488', 'wsi_nguyentuanduc', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Tuấn Đức', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140440', null, null, null, '1', '961da89669f72319567c3f08ebbb5670', '0984.831668', null, null, null, null, 'Nguyen Tuan Duc');
INSERT INTO `user` VALUES ('489', 'wsi_vuthanhlam', 'b5a93b713601fcc038b12269ac146412', 'Vũ', 'Thanh Lâm', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140440', null, null, null, '1', '1770d5859eb2622e984c4ce48169c304', '0912.671544', null, null, null, null, 'Vu Thanh Lam');
INSERT INTO `user` VALUES ('490', 'wsi_nguyenngocanh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Ngọc Anh', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140440', null, null, null, '1', '07e7fd90990b44e27fd870ab6825f1d7', '0986.678188', null, 'Ms. Hậu', null, null, 'Nguyen Ngoc Anh');
INSERT INTO `user` VALUES ('491', 'wsi_luongvuanhtu', 'b5a93b713601fcc038b12269ac146412', 'Lương', 'Vũ Anh Tú', null, null, '1466096400', null, null, '0914.578878', '1466140390', null, null, null, 'pupil', '1466140440', null, null, null, '1', '667db443349b5e17c7d5b3b229286872', null, 'Mr. Tú', null, null, null, 'Luong Vu Anh Tu');
INSERT INTO `user` VALUES ('492', 'wsi_ngokhanhquynh', 'b5a93b713601fcc038b12269ac146412', 'Ngô', 'Khánh Quỳnh', null, null, '1466096400', null, null, '0913.011662', '1466140390', null, null, null, 'pupil', '1466140440', null, null, null, '1', '30445445c2bac238a52c42319cb0d70d', '0916.033382', 'Mr. Đức', 'Ms. Hoa', null, null, 'Ngo Khanh Quynh');
INSERT INTO `user` VALUES ('493', 'wsi_dunhabinh', 'b5a93b713601fcc038b12269ac146412', 'Dư', 'Nhã Bình', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140440', null, null, null, '1', '6f610a70aebf1fa0772028447355e6a1', '0913.542981', null, 'Ms. Nhàn', null, null, 'Du Nha Binh');
INSERT INTO `user` VALUES ('494', 'wsi_nguyenquanganh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Quang Anh', null, null, '1466096400', null, null, '0972.833277', '1466140390', null, null, null, 'pupil', '1466140448', null, null, null, '1', 'c4e99e344ac72bd07803320de25dad8b', null, 'Mr. Thắng', null, null, null, 'Nguyen Quang Anh');
INSERT INTO `user` VALUES ('495', 'wsi_dinhminhanh', 'b5a93b713601fcc038b12269ac146412', 'Đinh', 'Minh Anh', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140448', null, null, null, '1', '096c42a1e34889dac7e0c1d0137980d1', '0912.845665', null, null, null, null, 'Dinh Minh Anh');
INSERT INTO `user` VALUES ('496', 'wsi_hoangngocan', 'b5a93b713601fcc038b12269ac146412', 'Hoàng', 'Ngọc An', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140448', null, null, null, '1', '6545fcda3092bfe6dadb62e1b364f5a3', '0903.423106', null, null, null, null, 'Hoang Ngoc An');
INSERT INTO `user` VALUES ('497', 'wsi_leducanh', 'b5a93b713601fcc038b12269ac146412', 'Lê', 'Đức Anh', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140448', null, null, null, '1', '32e7062eb96b05c06874daa98d84e064', '0984.107077', null, null, null, null, 'Le Duc Anh');
INSERT INTO `user` VALUES ('498', 'wsi_dangminhkhoa', 'b5a93b713601fcc038b12269ac146412', 'Đặng', 'Minh Khoa', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140448', null, null, null, '1', 'f938591726b0d42868ac5a4916eb3177', '0934.495099', null, null, null, null, 'Dang Minh Khoa');
INSERT INTO `user` VALUES ('499', 'wsi_nguyenquyquynhanh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Quý Quỳnh Anh', null, null, '1466096400', null, null, '0913.092888', '1466140390', null, null, null, 'pupil', '1466140448', null, null, null, '1', '860ae491233fd43056821a2484cb0ec8', '0982406111', 'Mr. Nguyễn Tuấn Anh', 'Ms. Nguyễn Thị Ngân', null, null, 'Nguyen Quy Quynh Anh');
INSERT INTO `user` VALUES ('500', 'wsi_duonghoangtuan', 'b5a93b713601fcc038b12269ac146412', 'Dương', 'Hoàng Tuấn', null, null, '1466096400', null, null, '0965.903976', '1466140390', null, null, null, 'pupil', '1466140448', null, null, null, '1', 'c173dc8735df0058188e5a26faa145b7', '0966.452921', 'Mr. Dương Tuấn Phương', 'Ms. Hoàng Thị Nguyệt', null, null, 'Duong Hoang Tuan');
INSERT INTO `user` VALUES ('502', 'wsi_taduckien', 'b5a93b713601fcc038b12269ac146412', 'Tạ', 'Đức Kiên', null, null, '1466096400', null, null, '0947.051368', '1466140390', null, null, null, 'pupil', '1466140456', null, null, null, '1', '40db5517b29ddfe0044485708c36da65', '0904881148', 'Mr. Tạ Hồng Sơn', 'Ms. Lưu Quỳnh Trang', null, null, 'Ta Duc Kien');
INSERT INTO `user` VALUES ('503', 'wsi_hoangducminh', 'b5a93b713601fcc038b12269ac146412', 'Hoàng', 'Đức Minh', null, null, '1466096400', null, null, '0913.210143', '1466140390', null, null, null, 'pupil', '1466140456', null, null, null, '1', 'ba429fbe03bc98fc954b814e2ea98b48', '0987.899557', 'Mr. Hoàng Văn Bình', 'Ms. Trần Thanh Tâm', null, null, 'Hoang Duc Minh');
INSERT INTO `user` VALUES ('504', 'wsi_dinhphuongminh', 'b5a93b713601fcc038b12269ac146412', 'Đinh', 'Phương Minh', null, null, '1466096400', null, null, '0988.598989', '1466140390', null, null, null, 'pupil', '1466140456', null, null, null, '1', 'db18bc74bd382d828f6f4075a6a1617f', '0915.040305', 'Mr. Đinh Tú Anh', 'Ms. Trần Thị Tuyết Lan', null, null, 'Dinh Phuong Minh');
INSERT INTO `user` VALUES ('505', 'wsi_nguyenhaphuong', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Hà Phương', null, null, '1466096400', null, null, '0936.686668', '1466140390', null, null, null, 'pupil', '1466140456', null, null, null, '1', '22dc7f8a84b27e09cd15da13becdc6e6', '0983.732008', 'Mr. Nguyễn Sỹ Nghiệp', 'Ms Nguyễn Thu Hạnh', null, null, 'Nguyen Ha Phuong');
INSERT INTO `user` VALUES ('506', 'wsi_nguyenleminh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Lê Minh', null, null, '1466096400', null, null, '0912.646498', '1466140390', null, null, null, 'pupil', '1466140456', null, null, null, '1', 'a5a5050fe79ff97a46532b908568361f', '0915.898432', 'Mr. Nguyễn Tuấn Anh', 'Ms. Lê Kim Dung', null, null, 'Nguyen Le Minh');
INSERT INTO `user` VALUES ('507', 'wsi_nguyenvuminhchau', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Vũ Minh Châu', null, null, '1466096400', null, null, '0916.022468', '1466140390', null, null, null, 'pupil', '1466140456', null, null, null, '1', 'ef626c2230b5ff1f18f3fdd10c3a5c98', '0904130000', 'Mr. Nguyễn Mạnh Cường', 'Ms. Vũ Thị Diễm Thùy', null, null, 'Nguyen Vu Minh Chau');
INSERT INTO `user` VALUES ('508', 'wsi_hoangtuongan', 'b5a93b713601fcc038b12269ac146412', 'Hoàng', 'Tường An', null, null, '1466096400', null, null, '0913.518524', '1466140390', null, null, null, 'pupil', '1466140456', null, null, null, '1', 'b2efbf9949d7f49799638b9a865396b4', '0904.228207', 'Mr. Hoàng Ngọc Dũng', 'Ms. Nguyễn Minh Loan', null, null, 'Hoang Tuong An');
INSERT INTO `user` VALUES ('509', 'wsi_legiahuy', 'b5a93b713601fcc038b12269ac146412', 'Lê', 'Gia Huy', null, null, '1466096400', null, null, '0943.899989', '1466140390', null, null, null, 'pupil', '1466140463', null, null, null, '1', 'e007a64fbb0be858089e47cc0d508146', '0948.181982', 'Mr. Lê Ngọc Dũng', 'Ms. Nguyễn Ngọc Thu', null, null, 'Le Gia Huy');
INSERT INTO `user` VALUES ('510', 'wsi_dohaianh', 'b5a93b713601fcc038b12269ac146412', 'Đỗ', 'Hải Anh', null, null, '1466096400', null, null, '0904.136466', '1466140390', null, null, null, 'pupil', '1466140463', null, null, null, '1', 'c37cc94e0a180b7590071168c7a6ef48', '0936.084848', 'Mr. Đỗ Xuân Hải', 'Ms. Lã Thị Trang Nhung', null, null, 'Do Hai Anh');
INSERT INTO `user` VALUES ('511', 'wsi_nguyenhongson', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Hồng Sơn', null, null, '1466096400', null, null, '0913.030136', '1466140390', null, null, null, 'pupil', '1466140463', null, null, null, '1', 'e8d7601111143239de351a3963233285', '0983.032136', 'Mr. Nguyễn Hồng Đức', 'Ms. Phạm Thị Thu Hà', null, null, 'Nguyen Hong Son');
INSERT INTO `user` VALUES ('512', 'wsi_nguyenngockhanhnhu', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Ngọc Khánh Như', null, null, '1466096400', null, null, '0912.571532', '1466140390', null, null, null, 'pupil', '1466140463', null, null, null, '1', '1d41731d02a95af03792b9379ffc307a', '0983 864 867', 'Mr. Nguyễn Đức Độ', 'Ms. Trần Thu Anh', null, null, 'Nguyen Ngoc Khanh Nhu');
INSERT INTO `user` VALUES ('513', 'wsi_nguyenthienanh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Thiện Anh', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140463', null, null, null, '1', '0cd22bc9108a2e9dea88dd7d7b761c0d', '0983.538878', null, null, null, null, 'Nguyen Thien Anh');
INSERT INTO `user` VALUES ('514', 'wsi_thaihoanganh', 'b5a93b713601fcc038b12269ac146412', 'Thái', 'Hoàng Anh', null, null, '1466096400', null, null, '0913.210557', '1466140390', null, null, null, 'pupil', '1466140463', null, null, null, '1', 'd12361ba1277328061496347b0f2a1d1', '0974.006166', 'Mr. Thái Duy Đô', 'Ms. Hoàng Thị Hồng Liên', null, null, 'Thai Hoang Anh');
INSERT INTO `user` VALUES ('515', 'wsi_nguyenthanhthuy', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Thanh Thủy', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140463', null, null, null, '1', '25c6b329137b82c3ef579b0bed4870ef', '0913.281848', null, 'Ms. Hà', null, null, 'Nguyen Thanh Thuy');
INSERT INTO `user` VALUES ('516', 'wsi_nguyenanhtu', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Anh Tú', null, null, '1466096400', null, null, '0944.838484', '1466140390', null, null, null, 'pupil', '1466140463', null, null, null, '1', '0fd5e0925a1e1325e785e7abcbeef8da', '0915.591768', 'Mr. Nguyễn Văn Tùng', 'Ms. Phương', null, null, 'Nguyen Anh Tu');
INSERT INTO `user` VALUES ('517', 'wsi_luonganhminh', 'b5a93b713601fcc038b12269ac146412', 'Lương', 'Anh Minh', null, null, '1466096400', null, null, '0989.152258', '1466140390', null, null, null, 'pupil', '1466140463', null, null, null, '1', '206545f8845705b63402ecb9f5ea1508', '0989.563899', 'Mr. Lương Quang Đức', 'Ms. Quản Thị Thiện', null, null, 'Luong Anh Minh');
INSERT INTO `user` VALUES ('518', 'phamtrungquan', 'b5a93b713601fcc038b12269ac146412', 'Phạm', 'Trung Quân', null, null, '1466096400', null, null, '0932.328081', '1466140390', null, null, null, 'pupil', '1466140463', null, null, null, '1', '4f75ad58e5c17756336f101b3bc73b45', '0902.050456', 'Mr. Phạm Yến Chung', 'Ms. Nguyễn Thị Thanh Nguyệt', null, null, 'Pham Trung Quan');
INSERT INTO `user` VALUES ('519', 'wsi_nguyenminhhang', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Minh Hằng', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140463', null, null, null, '1', '70014a1b9031a4a4a10096af1816f06b', '0912.218381', null, 'Ms. Ngô Khánh Linh', null, null, 'Nguyen Minh Hang');
INSERT INTO `user` VALUES ('520', 'wsi_ngochihien', 'b5a93b713601fcc038b12269ac146412', 'Ngô', 'Chí Hiển', null, null, '1466096400', null, null, '0908081689', '1466140390', null, null, null, 'pupil', '1466140474', null, null, null, '1', 'a0322161bf58606c05082d0cd958304f', '0904.001068', null, null, null, null, 'Ngo Chi Hien');
INSERT INTO `user` VALUES ('521', 'wsi_luuhuythanh', 'b5a93b713601fcc038b12269ac146412', 'Lưu', 'Huy Thành', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140474', null, null, null, '1', '0882b86b3dd0a8ea35fddf81c2af9c7a', '0914.146050', null, 'Ms. Hương', null, null, 'Luu Huy Thanh');
INSERT INTO `user` VALUES ('522', 'wsi_nguyenbaoduyphong', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Bảo Duy Phong', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140474', null, null, null, '1', 'a5759d67baad4fc067bb7fe8b3b58818', '0916.141977', null, 'Ms. Vân', null, null, 'Nguyen Bao Duy Phong');
INSERT INTO `user` VALUES ('523', 'wsi_nguyentramy', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Trà My', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140474', null, null, null, '1', '962bed512bd0fc449ea45076b23fb49d', '0983655689', null, null, null, null, 'Nguyen Tra My');
INSERT INTO `user` VALUES ('524', 'wsi_nguyenvietanh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Việt Anh', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140474', null, null, null, '1', 'abf752e384bc2410909a4b3a8fe021a4', '0937.156568', 'Mr. Nguyễn Xuân Hùng', 'Ms. Trịnh Thị Hồng Thúy', null, null, 'Nguyen Viet Anh');
INSERT INTO `user` VALUES ('525', 'wsi_buituanhung', 'b5a93b713601fcc038b12269ac146412', 'Bùi', 'Tuấn Hưng', null, null, '1466096400', null, null, '0976.968383', '1466140390', null, null, null, 'pupil', '1466140474', null, null, null, '1', 'f2c2aaea3d099584a0ff1c134768f0cb', '0978.808383', null, null, null, null, 'Bui Tuan Hung');
INSERT INTO `user` VALUES ('526', 'wsi_nguyenthihaianh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Thị Hải Anh', null, null, '1466096400', null, null, '0912.055576', '1466140390', null, null, null, 'pupil', '1466140480', null, null, null, '1', '59999f548575892c6dcf4dd4789e7f6e', '0983.663129', 'Mr. Nguyễn Đức Thành', 'Ms. Trần Thi Hồng Hải', null, null, 'Nguyen Thi Hai Anh');
INSERT INTO `user` VALUES ('527', 'wsi_nguyenhoanganh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Hoàng Anh', null, null, '1466096400', null, null, '0982397568', '1466140390', null, null, null, 'pupil', '1466140480', null, null, null, '1', 'e1d97b14d41ee79af61d43e3fa7b84dd', '0978989158', 'Mr. Nguyễn Viết Cường', 'Ms. Nguyễn Mai Lan', null, null, 'Nguyen Hoang Anh');
INSERT INTO `user` VALUES ('528', 'wsi_nguyenphananh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Phan Anh', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140480', null, null, null, '1', '1c88b3145b767d8705fd5d0549fa3f37', '0904476468', null, 'Ms.Nguyễn Kiều Trang', null, null, 'Nguyen Phan Anh');
INSERT INTO `user` VALUES ('530', 'wsi_nguyenminhkhanhtoan', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Minh Khánh Toàn', null, null, '1466096400', null, null, '0983.287980', '1466140390', null, null, null, 'pupil', '1466140480', null, null, null, '1', 'b777d716562b4b9e64cd2ec67efe9620', '0983.387980', 'Mr. Nguyễn Minh Cường', 'Ms. Nguyễn Thị Hương Lan', null, null, 'Nguyen Minh Khanh Toan');
INSERT INTO `user` VALUES ('531', 'wsi_phamgiaminh', 'b5a93b713601fcc038b12269ac146412', 'Phạm', 'Gia Minh', null, null, '1466096400', null, null, '0903.208222', '1466140390', null, null, null, 'pupil', '1466140480', null, null, null, '1', 'fa23810986cb8c053d3f319b8ce28b5d', '0906.218222', 'Mr. Phạm Quang Huy', 'Ms. Nguyễn Thị Hồng', null, null, 'Pham Gia Minh');
INSERT INTO `user` VALUES ('533', 'wsi_duonghoangtrang', 'b5a93b713601fcc038b12269ac146412', 'Dương', 'Hoàng Trang', null, null, '1466096400', null, null, '0965.903976', '1466140390', null, null, null, 'pupil', '1466140480', null, null, null, '1', 'e376e0c4466250a0d3e0026de1ec8447', '0966.452921', 'Mr. Dương Tuấn Phương', 'Ms. Hoàng Thị Nguyệt', null, null, 'Duong Hoang Trang');
INSERT INTO `user` VALUES ('535', 'wsi_nguyenchaulinh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Châu Linh', null, null, '1466096400', null, null, '0913.225589', '1466140390', null, null, null, 'pupil', '1466140480', null, null, null, '1', 'cb008c6b772994c9d0540f582aa83181', '0982.321510', null, null, null, null, 'Nguyen Chau Linh');
INSERT INTO `user` VALUES ('536', 'wsi_doangiahung', 'b5a93b713601fcc038b12269ac146412', 'Doãn', 'Gia Hưng', null, null, '1466096400', null, null, '0974.312675', '1466140390', null, null, null, 'pupil', '1466140480', null, null, null, '1', '437b105e33e90f9d5ae83b00bf9a6176', '0169.4633701', 'Mr. Doãn Thành Chung', 'Ms. Nguyễn Thị Yến', null, null, 'Doan Gia Hung');
INSERT INTO `user` VALUES ('537', 'wsi_trantuanhai', 'b5a93b713601fcc038b12269ac146412', 'Trần', 'Tuấn Hải', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140491', null, null, null, '1', '02b4e35670ea3f2ca97e56d72df79089', '01655.155459', null, null, null, null, 'Tran Tuan Hai');
INSERT INTO `user` VALUES ('538', 'wsi_nguyennhalinh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Nhã Linh', null, null, '1466096400', null, null, '0913.004782', '1466140390', null, null, null, 'pupil', '1466140491', null, null, null, '1', '79aa29a5e34bd461c9f91e956733a7c2', '0904.211818', null, null, null, null, 'Nguyen Nha Linh');
INSERT INTO `user` VALUES ('539', 'wsi_phanducduy', 'b5a93b713601fcc038b12269ac146412', 'Phan', 'Đức Duy', null, null, '1466096400', null, null, '0912.666685', '1466140390', null, null, null, 'pupil', '1466140491', null, null, null, '1', '527fdf0aeffd7e19a0ba9cd95e1ef9ce', '0914.666686', null, null, null, null, 'Phan Duc Duy');
INSERT INTO `user` VALUES ('540', 'wsi_ngotuannam', 'b5a93b713601fcc038b12269ac146412', 'Ngô', 'Tuấn Nam', null, null, '1466096400', '', '', '0903.146448', '1466140390', null, null, null, 'pupil', '1466140501', null, null, null, '1', '445d06d2133310dc3f0d3e856e9e3937', '0904.712866', '', '', null, '3', 'Ngo Tuan Nam');
INSERT INTO `user` VALUES ('541', 'wsi_luuthinhyenchi', 'b5a93b713601fcc038b12269ac146412', 'Lưu', 'Thịnh Yến Chi', null, null, '1466096400', null, null, '0983.651667', '1466140390', null, null, null, 'pupil', '1466140491', null, null, null, '1', 'fec292802fc48540fde692fc528c2caf', '0988.623469', null, null, null, null, 'Luu Thinh Yen Chi');
INSERT INTO `user` VALUES ('542', 'wsi_nguyenhoangminh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Hoàng Minh', null, null, '1466096400', null, null, '0912.118844', '1466140390', null, null, null, 'pupil', '1466140491', null, null, null, '1', '90e9bce76072dcb32dd706ba0e53d0d0', '0982200088', null, null, null, null, 'Nguyen Hoang Minh');
INSERT INTO `user` VALUES ('543', 'wsi_phamdomaian', 'b5a93b713601fcc038b12269ac146412', 'Phạm', 'Đỗ Mai An', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140491', null, null, null, '1', 'e57f285e4872300bfe83ffa6b8f387a2', '0979270388', null, null, null, null, 'Pham Do Mai An');
INSERT INTO `user` VALUES ('544', 'wsi_vuquangtung', 'b5a93b713601fcc038b12269ac146412', 'Vũ', 'Quang Tùng', null, null, '1466096400', null, null, '0903.430408', '1466140390', null, null, null, 'pupil', '1466140491', null, null, null, '1', '3c0806bc3150e7c76d7031c6a2e4c7e8', '0989.357823', null, null, null, null, 'Vu Quang Tung');
INSERT INTO `user` VALUES ('546', 'wsi_dobaoanh', 'b5a93b713601fcc038b12269ac146412', 'Đỗ', 'Bảo Anh', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140491', null, null, null, '1', '6f839b4053d20be1b8655f16be6b7ea8', '0936.084848', null, null, null, null, 'Do Bao Anh');
INSERT INTO `user` VALUES ('547', 'wsi_phamquynhchi', 'b5a93b713601fcc038b12269ac146412', 'Phạm', 'Quỳnh Chi', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140501', null, null, null, '1', '5433b823d6dfc711816838c18558bbca', '0912.838979', 'Mr. Phạm Minh Hòa', 'Ms. Lê Thị Minh Hằng', null, null, 'Pham Quynh Chi');
INSERT INTO `user` VALUES ('548', 'wsi_nguyenngocnhuy', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Ngọc Như Ý', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140501', null, null, null, '1', '5e18768a1b82d6dbb4d48f181a5df662', '0919.448899', null, null, null, null, 'Nguyen Ngoc Nhu Y');
INSERT INTO `user` VALUES ('549', 'wsi_nguyenlethaonguyen', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Lê Thảo Nguyên', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140501', null, null, null, '1', 'f87af6a07021d9c7b797eeed80b41440', '0936.388990', null, 'Ms. Nội', null, null, 'Nguyen Le Thao Nguyen');
INSERT INTO `user` VALUES ('550', 'wsi_hacamtu', 'b5a93b713601fcc038b12269ac146412', 'Hà', 'Cẩm Tú', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140501', null, null, null, '1', '1b7defd7dd7784d8d02134b04473867d', '0936.268875', null, null, null, null, 'Ha Cam Tu');
INSERT INTO `user` VALUES ('551', 'wsi_daoanhduc', 'b5a93b713601fcc038b12269ac146412', 'Đào', 'Anh Đức', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140501', null, null, null, '1', 'aa73108b08cb3e8e6f6f1b1e2a3282e6', '0984.130547', null, 'Ms. Hương', null, null, 'Dao Anh Duc');
INSERT INTO `user` VALUES ('552', 'wsi_nguyenducanh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Đức Anh', null, null, '1466096400', null, null, '0913.092888', '1466140390', null, null, null, 'pupil', '1466140501', null, null, null, '1', '7c05f53ddf727de6fafe228a78a3661e', '0982406111', 'Mr. Nguyễn Tuấn Anh', 'Ms. Nguyễn Thị Ngân', null, null, 'Nguyen Duc Anh');
INSERT INTO `user` VALUES ('553', 'wsi_nguyenhavy', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Hà Vy', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140501', null, null, null, '1', '03da63368c3726045711fedab7e883fe', '0983.655689', null, null, null, null, 'Nguyen Ha Vy');
INSERT INTO `user` VALUES ('554', 'wsi_vuquynhchi', 'b5a93b713601fcc038b12269ac146412', 'Vũ', 'Quỳnh Chi', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140501', null, null, null, '1', '1194f220c964a376e45d77cf9fab1243', '0983.822802', null, 'Ms. Huyền', null, null, 'Vu Quynh Chi');
INSERT INTO `user` VALUES ('555', 'wsi_latrinhbaotran', 'b5a93b713601fcc038b12269ac146412', 'Lã', 'Trịnh Bảo Trân', null, null, '1466096400', '', '', '0913.551622', '1466140390', null, '2', null, 'pupil', '1466140510', null, null, null, '1', '8e72f40b0d29ee0e41c52ea8c33c7212', '0904.842248', 'Mr. Lã Việt Dũng', 'Ms. Trịnh Thanh Bình', null, '1', 'La Trinh Bao Tran');
INSERT INTO `user` VALUES ('556', 'wsi_phamngocha', 'b5a93b713601fcc038b12269ac146412', 'Phạm', 'Ngọc Hà', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140510', null, null, null, '1', '1c67bce89470a3df12a80377d5f4f345', '0912.838979', 'Mr. Phạm Minh Hòa', 'Ms. Lê Thị Minh Hằng', null, null, 'Pham Ngoc Ha');
INSERT INTO `user` VALUES ('557', 'wsi_phamnguyentramanh', 'b5a93b713601fcc038b12269ac146412', 'Phạm', 'Nguyễn Trâm Anh', null, null, '1466096400', '', '', '0945.101982', '1466140390', null, '2', null, 'pupil', '1466140510', null, null, null, '1', '6a19d4275003fd2a7bbcca049d2b9734', '0986.419836', 'Mr. Phạm Thế Đức', 'Ms. Thị Thúy', null, '1', 'Pham Nguyen Tram Anh');
INSERT INTO `user` VALUES ('558', 'wsi_tieuminhbaotu', 'b5a93b713601fcc038b12269ac146412', 'Tiêu', 'Minh Bảo Tú', null, null, '1466096400', null, null, '01686701901', '1466140390', null, null, null, 'pupil', '1466140510', null, null, null, '1', 'ce47d9bbefb69d00fa3a969085d4c3c4', null, 'Mr. Hưng', null, null, null, 'Tieu Minh Bao Tu');
INSERT INTO `user` VALUES ('559', 'wsi_nguyentrungduc', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Trung Đức', null, null, '1466096400', null, null, '0987.152222', '1466140390', null, null, null, 'pupil', '1466140510', null, null, null, '1', '46ad6d4397719c502730ea89239a2a0e', '0983.131003', null, 'Ms. Phương', null, null, 'Nguyen Trung Duc');
INSERT INTO `user` VALUES ('560', 'wsi_danggiahao', 'b5a93b713601fcc038b12269ac146412', 'Đặng', 'Gia Hào', null, null, '1466096400', null, null, '0909.096336', '1466140390', null, null, null, 'pupil', '1466140510', null, null, null, '1', '6f26d869515f0100e87e7a15f4cee9f0', '0868.410965', 'Mr. Trần Minh Sáng', 'Cô Tươi (bà Hào)', null, null, 'Dang Gia Hao');
INSERT INTO `user` VALUES ('561', 'wsi_dinhquytunglam', 'b5a93b713601fcc038b12269ac146412', 'Đinh', 'Quý Tùng Lâm', null, null, '1466096400', null, null, null, '1466140390', null, null, null, 'pupil', '1466140510', null, null, null, '1', 'c1c4e34f493c8cd25d0792e15224e1a0', '0912.845665', null, null, null, null, 'Dinh Quy Tung Lam');
INSERT INTO `user` VALUES ('562', 'wsi_nguyenxuantienkhang', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Xuân Tiến Khang', null, null, '1466096400', null, null, '0982.234322', '1466140390', null, null, null, 'pupil', '1466140510', null, null, null, '1', '50b655774e75fc7d32c3732c935ce1d8', '0916.068324', 'Mr. Nguyễn Xuân Tiến Hiệp', 'Ms. Đinh Thu Trang', null, null, 'Nguyen Xuan Tien Khang');
INSERT INTO `user` VALUES ('565', 'wsi_qc', 'b5a93b713601fcc038b12269ac146412', 'Phan', 'Mỹ Phượng', null, null, '718218000', 'phuong.ueb.ulis@gmail.com', 'P401, C4, Tập thể Trung Tự, Phường Trung Tự, Quận Đống Đa, Hà Nội', '0964859029', '1466151166', null, '2', null, 'system', null, null, null, null, '1', null, null, null, null, null, null, 'Phan My Phuong');
INSERT INTO `user` VALUES ('566', 'tranminhquan', '4b924f4125655e366a51d75f2c9c421b', 'Trần Minh', 'Quân', null, null, '1076864400', 'minhquangver@gmail.com', 'nha 16 ngo 318/47 duong la thanh', '0907703838', '1466609260', null, '1', null, 'guest', null, null, null, null, null, null, null, null, null, null, null, 'Tran Minh Quan');
INSERT INTO `user` VALUES ('567', 'minhquan', '4b924f4125655e366a51d75f2c9c421b', 'Trần Minh', 'Quân', null, null, '1076864400', 'tranminhquanpro.vn@gmail.com', 'nha 16 ngo 318/47 duong la thanh', '0907703838', '1466759853', null, '1', null, 'guest', null, null, null, null, null, null, null, null, null, null, null, 'Tran Minh Quan');
INSERT INTO `user` VALUES ('568', 'msthuquynhnguyen', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Thu Quỳnh', null, null, '-25200', 'nguyenthuquynh278@gmail.com', '', '', '1467274345', null, '2', null, 'system', null, null, null, null, null, null, null, null, null, null, null, 'Nguyen Thu Quynh');
INSERT INTO `user` VALUES ('571', 'wsi_nguyenthienviet', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Thiên Việt', null, null, '-25200', '', '', '0914886968', '1467367528', '1', '1', null, 'pupil', '1466140501', null, null, null, '1', '025ee98489cc7bb77747486f31ce2658', '0985334086', 'Mr. Nguyễn Quỳnh', 'Ms. Thái Thị Lệ Thủy', null, '3', 'Nguyen Thien Viet');
INSERT INTO `user` VALUES ('572', 'wsi_duvietkhoi', 'b5a93b713601fcc038b12269ac146412', 'Dư', 'Việt Khôi', null, null, '1467824400', null, null, null, '1467888453', null, null, null, 'pupil', '1467888453', null, null, null, '1', '365c7bdc8ab07ff056c709e641548789', '0913542981', null, 'Ms. Nhàn', null, null, 'Du Viet Khoi');
INSERT INTO `user` VALUES ('573', 'wsi_luuhuonggiang', 'b5a93b713601fcc038b12269ac146412', 'Lưu', 'Hương Giang', null, null, '1467824400', null, null, null, '1467888453', null, null, null, 'pupil', '1467888453', null, null, null, '1', '7b9c587a7093d22507b12e2d481fca9e', '0914146050', null, 'Ms. Hương', null, null, 'Luu Huong Giang');
INSERT INTO `user` VALUES ('574', 'wsi_hoangphanbaonhat', 'b5a93b713601fcc038b12269ac146412', 'Hoàng', 'Phan Bảo Nhật', null, null, '1467824400', null, null, '0948577377', '1467888453', null, null, null, 'pupil', '1467888453', null, null, null, '1', '349259a160ab921a92df89bc099c8a2b', '0986882696', 'Mr. Hoàng Cẩm Bình', 'Ms. Phan Thu Thủy', null, null, 'Hoang Phan Bao Nhat');
INSERT INTO `user` VALUES ('575', 'wsi_nguyenphong', 'b5a93b713601fcc038b12269ac146412', 'Nguyên', 'Phong', null, null, '1467824400', null, null, null, '1467888453', null, null, null, 'pupil', '1467888453', null, null, null, '1', '6ec10c3e5cb66737119ca534f761a3df', '0913191976', null, 'Ms. Hoa', null, null, 'Nguyen Phong');
INSERT INTO `user` VALUES ('576', 'wsi_trantuquyen', 'b5a93b713601fcc038b12269ac146412', 'Trần', 'Tú Quyên', null, null, '1467824400', '', '', '', '1467888453', null, null, null, 'pupil', '1467888453', null, null, null, '1', '85629f3fd009b404972ee0f56435db10', '0942585855', '', 'Ms. Thảo', null, '1', 'Tran Tu Quyen');
INSERT INTO `user` VALUES ('577', 'wsi_dotrinhminhngoc', 'b5a93b713601fcc038b12269ac146412', 'Đỗ', 'Trịnh Minh Ngọc', null, null, '1467824400', null, null, null, '1467888453', null, null, null, 'pupil', '1466140510', null, null, null, '1', '7096fbe73f17f9f08de2631c374c3a66', '0915745663', 'Mr. Đỗ Gia Hải', 'Ms. Trịnh Thùy Dương', null, null, 'Do Trinh Minh Ngoc');
INSERT INTO `user` VALUES ('578', 'wsi_tranducdung', 'b5a93b713601fcc038b12269ac146412', 'Trần', 'Đức Dũng', null, null, '1467824400', null, null, null, '1467888453', null, null, null, 'pupil', '1466140510', null, null, null, '1', '9df41753cad7dc28b27e5d5abb5221d5', '0982197820', null, 'Ms. Trần Thị Nguyệt', null, null, 'Tran Duc Dung');
INSERT INTO `user` VALUES ('579', 'wsi_tranducminh', 'b5a93b713601fcc038b12269ac146412', 'Trần', 'Đức Minh', null, null, '1467824400', null, null, null, '1467888453', null, null, null, 'pupil', '1466140510', null, null, null, '1', '3bab594902a20266ad41ada7c76592c0', '0982197820', null, 'Ms. Trần Thị Nguyệt', null, null, 'Tran Duc Minh');
INSERT INTO `user` VALUES ('581', 'wsi_tothebinh', 'b5a93b713601fcc038b12269ac146412', 'Tô', 'Thế Bình', null, null, '1467824400', null, null, '0913542867', '1467888453', null, null, null, 'pupil', '1466140491', null, null, null, '1', '08b646fa7e85d0304c6de7f9f6c3aa5f', '0942686989', null, 'Ngô Thị Mỹ Hương', null, null, 'To The Binh');
INSERT INTO `user` VALUES ('582', 'wsi_vudangkhoi', 'b5a93b713601fcc038b12269ac146412', 'Vũ', 'Đăng Khôi', null, null, '1467824400', null, null, '0913.531603', '1467888453', null, null, null, 'pupil', '1466140448', null, null, null, '1', '10ad0aefd1cafefc62b8cbef39392d02', null, 'Mr. Vũ Anh Minh', null, null, null, 'Vu Dang Khoi');
INSERT INTO `user` VALUES ('583', 'wsi_nguyenthanhtam', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Thanh Tâm', null, null, '1467824400', null, null, null, '1467888453', null, null, null, 'pupil', '1466140417', null, null, null, '1', 'd5ccde60019a5f828d458383d54ef45b', '0979728977', null, null, null, null, 'Nguyen Thanh Tam');
INSERT INTO `user` VALUES ('584', 'wsi_nguyenminhtrang', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Minh Trang', null, null, '1467824400', null, null, '0913546212', '1467888453', null, null, null, 'pupil', '1466140405', null, null, null, '1', 'e60e2855f4f3e354c6066820b9d1383d', '0988265935', 'Mr. Nguyễn Tuấn Anh', 'Ms. Nguyễn Hoài Thu', null, null, 'Nguyen Minh Trang');
INSERT INTO `user` VALUES ('585', 'wsi_quynhlinh', 'b5a93b713601fcc038b12269ac146412', 'Quỳnh', 'Linh', null, null, '1467824400', null, null, null, '1467888453', null, null, null, 'pupil', '1466140405', null, null, null, '1', '651b2a68c61944cefa8c0c57253c6b2f', '0913191976', null, 'Ms. Hoa', null, null, 'Quynh Linh');
INSERT INTO `user` VALUES ('586', 'wsi_nguyenmaiphuong', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Mai Phương', null, null, '-25200', '', '', '0912260840', '1467889207', '1', '2', null, 'pupil', '1466140480', null, null, null, '1', 'c9f145ffdc732aec9ee7c5e7d2b28e17', '0945209954', 'Mr. Nguyễn Mạnh Thắng', 'Ms. Lê Thị Thúy Mai', null, '4', 'Nguyen Mai Phuong');
INSERT INTO `user` VALUES ('587', 'wsi_nguyenminhson', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Minh Sơn', null, null, '1467824400', null, null, null, '1467889521', null, null, null, 'pupil', '1466140480', null, null, null, '1', 'e02f22ab3ee7d33e47b237342e3248c0', null, null, null, null, null, 'Nguyen Minh Son');
INSERT INTO `user` VALUES ('588', 'wsi_lengoctram', 'b5a93b713601fcc038b12269ac146412', 'Lê', 'Ngọc Trâm', null, null, '1467824400', null, null, null, '1467889521', null, null, null, 'pupil', '1466140480', null, null, null, '1', '62b1b2827dd4fc934c7b0f78efaee836', null, null, null, null, null, 'Le Ngoc Tram');
INSERT INTO `user` VALUES ('589', 'wsi_phamdaobaochau', 'b5a93b713601fcc038b12269ac146412', 'Phạm', 'Đào Bảo Châu', null, null, '-25200', '', '', '0912248492', '1467969868', '1', '2', null, 'pupil', '1467888453', null, null, null, '1', '01aedf7ca4216f5eb5fcc95031520be4', '0942585855', 'Mr. Trần Trọng Thưởng', 'Ms. Nguyễn Thị Phương Thảo', null, '1', 'Pham Dao Bao Chau');
INSERT INTO `user` VALUES ('590', 'wsi_tongoclinh', 'b5a93b713601fcc038b12269ac146412', 'Tô', 'Ngọc Linh', null, null, '-25200', '', '', '0913542867', '1467970232', '1', '2', null, 'pupil', '1466140432', null, null, null, '1', '4e85058aea356fde6e6fec94abeb41d2', '0942686989', '', 'Ngô Thị Mỹ Hương', null, '1', 'To Ngoc Linh');
INSERT INTO `user` VALUES ('591', 'wsi_nguyentrunghieu', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Trung Hiếu', null, null, '-25200', '', '', '', '1467970395', '1', '1', null, 'pupil', '1466140448', null, null, null, '1', '8ffe450c030920aaa940f4fe035e2c27', '0904158868', '', 'Ms. Nguyệt Anh', null, '1', 'Nguyen Trung Hieu');
INSERT INTO `user` VALUES ('593', 'phuong_11', '14e1b600b1fd579f47433b88e8d85291', 'Nguyễn', 'Văn A', null, null, '883587600', '', '', '', '1468830939', '565', '1', null, 'pupil', '1468896663', null, null, null, '1', 'b7ed1f59c75eeb2dc4b09baebdcde9e3', '', '', '', null, '8', 'Nguyen Van A');
INSERT INTO `user` VALUES ('594', 'wsi_nguyenngoclamoanh', 'b5a93b713601fcc038b12269ac146412', 'Nguyễn', 'Ngọc Lâm Oanh', null, null, '1019408400', '', 'Tổ 6 - Phường Phú Lương - Quận Hà Đông - Hà Nội', '', '1469093200', '1', '2', null, 'pupil', '1466140501', null, null, null, '1', '7f33316708563b843edc8dee966323a1', '', '', '', null, '1', 'Nguyen Ngoc Lam Oanh');

-- ----------------------------
-- Table structure for user_position
-- ----------------------------
DROP TABLE IF EXISTS `user_position`;
CREATE TABLE `user_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(450) DEFAULT NULL,
  `captions` varchar(450) DEFAULT NULL,
  `sorts` int(11) DEFAULT NULL,
  `contents` text,
  PRIMARY KEY (`id`),
  KEY `sorts` (`sorts`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_position
-- ----------------------------
INSERT INTO `user_position` VALUES ('1', 'Pre HOT', 'Pre-Hot', '1', '<p>Pre-Hot. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.</p>');
INSERT INTO `user_position` VALUES ('2', 'Hot 1', 'Hot 1', '2', '<p>Hot 1. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.</p>');
INSERT INTO `user_position` VALUES ('3', 'Hot 2', 'Hot 2', '3', '<p>Hot 2. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.</p>');
INSERT INTO `user_position` VALUES ('4', 'FAMILY AND FRIENDS 1', 'F&F 1', '4', '<p>Family And Friend 1. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.</p>');
INSERT INTO `user_position` VALUES ('5', 'FAMILY AND FRIENDS 2', 'F&F 2', '5', '<p>Family And Friend 2. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.</p>');
INSERT INTO `user_position` VALUES ('6', 'FAMILY AND FRIENDS 3', 'F&F 3', '6', '<p>Family And Friend 3. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.</p>');
INSERT INTO `user_position` VALUES ('7', 'Pre BA', 'Pre-BA', '7', '<p>Pre- Ba . Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.</p>');
INSERT INTO `user_position` VALUES ('8', 'BA', 'BA', '8', '<p>BA Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.</p>');
INSERT INTO `user_position` VALUES ('9', 'DE', 'DE', '9', '<p>DE Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.</p>');
INSERT INTO `user_position` VALUES ('10', 'EX', 'EX', '10', '<p>EX Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.</p>');
INSERT INTO `user_position` VALUES ('11', 'IELTS', 'IELTS', '11', '<p>IELTS - Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam, quae, temporibus dolores porro doloribus.</p>');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `roleid` (`roleid`),
  KEY `combine` (`userid`,`roleid`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('19', '1', '1');
INSERT INTO `user_role` VALUES ('20', '8', '3');
INSERT INTO `user_role` VALUES ('21', '565', '4');
INSERT INTO `user_role` VALUES ('23', '568', '4');
