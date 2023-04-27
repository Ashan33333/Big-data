/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : lpl

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 12/02/2023 22:15:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for age_group_access_stat
-- ----------------------------
DROP TABLE IF EXISTS `age_group_access_stat`;
CREATE TABLE `age_group_access_stat`  (
  `age_group` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `counts` bigint(24) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of age_group_access_stat
-- ----------------------------
INSERT INTO `age_group_access_stat` VALUES ('老年人', 12937);
INSERT INTO `age_group_access_stat` VALUES ('中年人', 91417);
INSERT INTO `age_group_access_stat` VALUES ('青年', 19589);
INSERT INTO `age_group_access_stat` VALUES ('成年', 176057);

-- ----------------------------
-- Table structure for browser_access_stat
-- ----------------------------
DROP TABLE IF EXISTS `browser_access_stat`;
CREATE TABLE `browser_access_stat`  (
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `counts` bigint(24) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of browser_access_stat
-- ----------------------------
INSERT INTO `browser_access_stat` VALUES ('Windows Internet Explorer Tridentwindows ', 29829);
INSERT INTO `browser_access_stat` VALUES ('OPera blinkMac OS X ', 9986);
INSERT INTO `browser_access_stat` VALUES ('IE Tridentandroid 8.0 ', 8261);
INSERT INTO `browser_access_stat` VALUES ('Mozilla Firefox GeckoMac OS X ', 10098);
INSERT INTO `browser_access_stat` VALUES ('Google Chrome Chromium/Blinkwindows ', 29965);
INSERT INTO `browser_access_stat` VALUES ('Chrome webkitios ', 8342);
INSERT INTO `browser_access_stat` VALUES ('Chrome webkitandroid 8.0 ', 8278);
INSERT INTO `browser_access_stat` VALUES ('QQBrowser Webkit X5ios ', 8301);
INSERT INTO `browser_access_stat` VALUES ('UCBrowser Webkit X3ios ', 8142);
INSERT INTO `browser_access_stat` VALUES ('Opera Webkitios ', 8420);
INSERT INTO `browser_access_stat` VALUES ('OPera blinkwindows ', 30054);
INSERT INTO `browser_access_stat` VALUES ('Firefox android 8.0 ', 8381);
INSERT INTO `browser_access_stat` VALUES ('UCBrowser Webkit X3android 8.0 ', 8283);
INSERT INTO `browser_access_stat` VALUES ('Google Chrome Chromium/BlinkMac OS X ', 10121);
INSERT INTO `browser_access_stat` VALUES ('Safari webkitMac OS X ', 10060);
INSERT INTO `browser_access_stat` VALUES ('Windows Internet Explorer TridentMac OS X ', 9833);
INSERT INTO `browser_access_stat` VALUES ('IE Tridentios ', 8336);
INSERT INTO `browser_access_stat` VALUES ('Firefox ios ', 8354);
INSERT INTO `browser_access_stat` VALUES ('Safari webkitwindows ', 30218);
INSERT INTO `browser_access_stat` VALUES ('Mozilla Firefox Geckowindows ', 30159);
INSERT INTO `browser_access_stat` VALUES ('QQBrowser Webkit X5android 8.0 ', 8180);
INSERT INTO `browser_access_stat` VALUES ('Opera Webkitandroid 8.0 ', 8399);

-- ----------------------------
-- Table structure for day_goods_access_topn_stat
-- ----------------------------
DROP TABLE IF EXISTS `day_goods_access_topn_stat`;
CREATE TABLE `day_goods_access_topn_stat`  (
  `day` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cms_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cms_goods` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `times` bigint(10) NOT NULL,
  PRIMARY KEY (`day`, `cms_type`, `cms_goods`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of day_goods_access_topn_stat
-- ----------------------------
INSERT INTO `day_goods_access_topn_stat` VALUES ('20180101', 'category', 'a', 56);
INSERT INTO `day_goods_access_topn_stat` VALUES ('20180101', 'category', 'b', 43);
INSERT INTO `day_goods_access_topn_stat` VALUES ('20180101', 'category', 'c', 51);
INSERT INTO `day_goods_access_topn_stat` VALUES ('20180101', 'category', 'd', 60);
INSERT INTO `day_goods_access_topn_stat` VALUES ('20180101', 'item', 'a', 53);
INSERT INTO `day_goods_access_topn_stat` VALUES ('20180101', 'item', 'b', 57);
INSERT INTO `day_goods_access_topn_stat` VALUES ('20180101', 'item', 'c', 53);

-- ----------------------------
-- Table structure for day_goods_traffics_topn_stat
-- ----------------------------
DROP TABLE IF EXISTS `day_goods_traffics_topn_stat`;
CREATE TABLE `day_goods_traffics_topn_stat`  (
  `day` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cms_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cms_goods` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `traffics` bigint(20) NOT NULL,
  PRIMARY KEY (`day`, `cms_type`, `cms_goods`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of day_goods_traffics_topn_stat
-- ----------------------------
INSERT INTO `day_goods_traffics_topn_stat` VALUES ('1', 'A', '1', 123);
INSERT INTO `day_goods_traffics_topn_stat` VALUES ('1', 'A', '2', 345);
INSERT INTO `day_goods_traffics_topn_stat` VALUES ('1', 'A', '3', 546);
INSERT INTO `day_goods_traffics_topn_stat` VALUES ('1', 'A', '4', 1234);
INSERT INTO `day_goods_traffics_topn_stat` VALUES ('1', 'B', '1', 1222);
INSERT INTO `day_goods_traffics_topn_stat` VALUES ('1', 'B', '2', 2312);
INSERT INTO `day_goods_traffics_topn_stat` VALUES ('1', 'B', '3', 1200);

-- ----------------------------
-- Table structure for month_user_access_stat
-- ----------------------------
DROP TABLE IF EXISTS `month_user_access_stat`;
CREATE TABLE `month_user_access_stat`  (
  `month` int(10) NOT NULL,
  `counts` bigint(24) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of month_user_access_stat
-- ----------------------------
INSERT INTO `month_user_access_stat` VALUES (12, 25640);
INSERT INTO `month_user_access_stat` VALUES (1, 25726);
INSERT INTO `month_user_access_stat` VALUES (6, 25133);
INSERT INTO `month_user_access_stat` VALUES (3, 25484);
INSERT INTO `month_user_access_stat` VALUES (5, 25226);
INSERT INTO `month_user_access_stat` VALUES (9, 24510);
INSERT INTO `month_user_access_stat` VALUES (4, 24459);
INSERT INTO `month_user_access_stat` VALUES (8, 26014);
INSERT INTO `month_user_access_stat` VALUES (7, 25224);
INSERT INTO `month_user_access_stat` VALUES (10, 25329);
INSERT INTO `month_user_access_stat` VALUES (11, 24520);
INSERT INTO `month_user_access_stat` VALUES (2, 22735);

-- ----------------------------
-- Table structure for quarter_user_access_stat
-- ----------------------------
DROP TABLE IF EXISTS `quarter_user_access_stat`;
CREATE TABLE `quarter_user_access_stat`  (
  `quarter` int(10) NOT NULL,
  `counts` bigint(24) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quarter_user_access_stat
-- ----------------------------
INSERT INTO `quarter_user_access_stat` VALUES (3, 75748);
INSERT INTO `quarter_user_access_stat` VALUES (1, 73945);
INSERT INTO `quarter_user_access_stat` VALUES (4, 75489);
INSERT INTO `quarter_user_access_stat` VALUES (2, 74818);

-- ----------------------------
-- Table structure for time_group_access_stat
-- ----------------------------
DROP TABLE IF EXISTS `time_group_access_stat`;
CREATE TABLE `time_group_access_stat`  (
  `time_group` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `counts` bigint(24) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of time_group_access_stat
-- ----------------------------
INSERT INTO `time_group_access_stat` VALUES ('下午', 74738);
INSERT INTO `time_group_access_stat` VALUES ('凌晨', 74936);
INSERT INTO `time_group_access_stat` VALUES ('上午', 75015);
INSERT INTO `time_group_access_stat` VALUES ('夜晚', 75311);

-- ----------------------------
-- Table structure for year_city_access_stat
-- ----------------------------
DROP TABLE IF EXISTS `year_city_access_stat`;
CREATE TABLE `year_city_access_stat`  (
  `sf` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `counts` bigint(24) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of year_city_access_stat
-- ----------------------------
INSERT INTO `year_city_access_stat` VALUES ('广东', 8715);
INSERT INTO `year_city_access_stat` VALUES ('云南', 8794);
INSERT INTO `year_city_access_stat` VALUES ('内蒙古', 8930);
INSERT INTO `year_city_access_stat` VALUES ('湖北', 8967);
INSERT INTO `year_city_access_stat` VALUES ('新疆', 8843);
INSERT INTO `year_city_access_stat` VALUES ('海南', 8712);
INSERT INTO `year_city_access_stat` VALUES ('西藏', 8864);
INSERT INTO `year_city_access_stat` VALUES ('陕西', 8821);
INSERT INTO `year_city_access_stat` VALUES ('香港', 8782);
INSERT INTO `year_city_access_stat` VALUES ('天津', 8688);
INSERT INTO `year_city_access_stat` VALUES ('广西', 8808);
INSERT INTO `year_city_access_stat` VALUES ('河南', 8695);
INSERT INTO `year_city_access_stat` VALUES ('贵州', 8941);
INSERT INTO `year_city_access_stat` VALUES ('江苏', 8861);
INSERT INTO `year_city_access_stat` VALUES ('宁夏', 8897);
INSERT INTO `year_city_access_stat` VALUES ('青海', 8888);
INSERT INTO `year_city_access_stat` VALUES ('福建', 8877);
INSERT INTO `year_city_access_stat` VALUES ('黑龙江', 8858);
INSERT INTO `year_city_access_stat` VALUES ('辽宁', 8906);
INSERT INTO `year_city_access_stat` VALUES ('重庆', 8825);
INSERT INTO `year_city_access_stat` VALUES ('安徽', 8858);
INSERT INTO `year_city_access_stat` VALUES ('山东', 8865);
INSERT INTO `year_city_access_stat` VALUES ('澳门', 8595);
INSERT INTO `year_city_access_stat` VALUES ('湖南', 8919);
INSERT INTO `year_city_access_stat` VALUES ('台湾', 8867);
INSERT INTO `year_city_access_stat` VALUES ('上海', 8961);
INSERT INTO `year_city_access_stat` VALUES ('山西', 8729);
INSERT INTO `year_city_access_stat` VALUES ('甘肃', 8693);
INSERT INTO `year_city_access_stat` VALUES ('北京', 8644);
INSERT INTO `year_city_access_stat` VALUES ('河北', 9084);
INSERT INTO `year_city_access_stat` VALUES ('江西', 8883);
INSERT INTO `year_city_access_stat` VALUES ('浙江', 8776);
INSERT INTO `year_city_access_stat` VALUES ('吉林', 8714);
INSERT INTO `year_city_access_stat` VALUES ('四川', 8740);

SET FOREIGN_KEY_CHECKS = 1;
